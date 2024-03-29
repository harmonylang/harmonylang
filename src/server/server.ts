import {
    createConnection,
    TextDocuments,
    CompletionItem,
    Diagnostic,
    DiagnosticSeverity,
    ProposedFeatures,
    InitializeParams,
    DidChangeConfigurationNotification,
    TextDocumentSyncKind,
    InitializeResult,
    TextDocumentPositionParams,
} from 'vscode-languageserver/node';

import { TextDocument } from 'vscode-languageserver-textdocument';
import * as child_process from 'child_process';
import * as tmp from 'tmp';
import _fileUriToPath = require('file-uri-to-path');
import * as path from 'path';
import * as fs from 'fs';
import { HARMONY_ENTRY_SCRIPT } from '../config';

function fileUriToPath(fileUri: string): string {
    let p = _fileUriToPath(fileUri);
    // Because of an odd behavior in VSCode's URI library,
    // the colon in front of the drive-letter in Windows paths is encoded
    // to %3A. The following is a workaround based on an implementation by [felixfbecker].
    // Source: https://github.com/felixfbecker/php-language-server/commit/66b5176a43e1b2223ac87456e9753fc49692f10b
    if (process.platform === 'win32') {
        if (p.indexOf('%3A\\') >= 0) {
            if (p[0] === '\\') {
                p = p.slice(1);
            }
            p = p.replace('%3A', ':');
        }
    }
    return p;
}

// Create a connection for the server, using Node's IPC as a transport.
// Also include all preview / proposed LSP features.
const connection = createConnection(ProposedFeatures.all);

// Create a simple text document manager.
const documents: TextDocuments<TextDocument> = new TextDocuments(TextDocument);

let hasConfigurationCapability = false;
let hasWorkspaceFolderCapability = false;
let hasDiagnosticRelatedInformationCapability = false;

connection.onInitialize((params: InitializeParams) => {
    const capabilities = params.capabilities;

    // Does the client support the `workspace/configuration` request?
    // If not, we fall back using global settings.
    hasConfigurationCapability = !!(
        capabilities.workspace && !!capabilities.workspace.configuration
    );
    hasWorkspaceFolderCapability = !!(
        capabilities.workspace && !!capabilities.workspace.workspaceFolders
    );
    hasDiagnosticRelatedInformationCapability = !!(
        capabilities.textDocument &&
        capabilities.textDocument.publishDiagnostics &&
        capabilities.textDocument.publishDiagnostics.relatedInformation
    );

    const result: InitializeResult = {
        capabilities: {
            textDocumentSync: TextDocumentSyncKind.Incremental,
            // Tell the client that this server supports code completion.
            completionProvider: {
                resolveProvider: true
            }
        }
    };
    if (hasWorkspaceFolderCapability) {
        result.capabilities.workspace = {
            workspaceFolders: {
                supported: true
            }
        };
    }
    return result;
});

connection.onInitialized(() => {
    if (hasConfigurationCapability) {
        // Register for all configuration changes.
        connection.client.register(DidChangeConfigurationNotification.type, undefined);
    }
    if (hasWorkspaceFolderCapability) {
        connection.workspace.onDidChangeWorkspaceFolders(_event => {
            connection.console.log('Workspace folder change event received.');
        });
    }
});

interface HarmonyExtensionSettings {
    pythonPath: string | null;
}

// The global settings, used when the `workspace/configuration` request is not supported by the client.
// Please note that this is not the case when using this server with the client provided in this example
// but could happen with other clients.
const defaultSettings: HarmonyExtensionSettings = { pythonPath: null };
let globalSettings: HarmonyExtensionSettings = defaultSettings;

// Cache the settings of all open documents
const documentSettings: Map<string, HarmonyExtensionSettings> = new Map();

connection.onDidChangeConfiguration(change => {
    if (hasConfigurationCapability) {
        // Reset all cached document settings
        documentSettings.clear();
    } else {
        globalSettings = <HarmonyExtensionSettings>(
            (change.settings.libraryPath || defaultSettings)
        );
    }

    // Revalidate all open text documents
    documents.all().forEach(validateTextDocument);
});

function getDocumentSettings(resource: string): Thenable<HarmonyExtensionSettings> {
    if (!hasConfigurationCapability) {
        return Promise.resolve(globalSettings);
    }
    const result = documentSettings.get(resource);
    if (!result) {
        const r = connection.workspace.getConfiguration('harmonylang');
        return r.then(config => {
            const result = { pythonPath: config.pythonPath };
            documentSettings.set(resource, result);
            return result;
        });
    }
    return Promise.resolve(result);
}

// Only keep settings for open documents
documents.onDidClose(e => {
    documentSettings.delete(e.document.uri);
});

// The content of a text document has changed. This event is emitted
// when the text document first opened or when its content has changed.
documents.onDidSave(change => {
    validateTextDocument(change.document);
});

documents.onDidOpen(change => {
    validateTextDocument(change.document);
});

async function validateTextDocument(textDocument: TextDocument): Promise<void> {
    const settings = await getDocumentSettings(textDocument.uri);
    const diagnostics: Diagnostic[] = [];
    const pythonPath = settings.pythonPath;
    if (!pythonPath) {
        return;
    }

    const harmonyFile = fileUriToPath(textDocument.uri);
    const tmpFilename = tmp.tmpNameSync();
    const hvmFilename = tmpFilename + '.hvm';
    const hcoFilename = tmpFilename + '.hco';

    const args = [
        '-c',
        HARMONY_ENTRY_SCRIPT,
        '-p',
        '--noweb',
        '-o', hvmFilename,
        '-o', hcoFilename,
        harmonyFile,
    ];

    child_process.execFile(pythonPath, args, () => {
        // Possibly a parsing error.
        if (!fs.existsSync(hvmFilename) || !fs.statSync(hvmFilename).isFile()) {
            // No analysis file found
            connection.sendDiagnostics({ uri: textDocument.uri, diagnostics });
            return;
        }

        const analysis = JSON.parse(fs.readFileSync(hvmFilename, 'utf-8'));
        if (analysis.status !== 'error') {
            // No errors
            connection.sendDiagnostics({ uri: textDocument.uri, diagnostics });
            return;
        }

        for (const { line, column, message, lexeme, is_eof_error, filename } of analysis.errors) {
            if (filename != null && path.resolve(harmonyFile) != path.resolve(filename)) {
                // This is an error caused by some other file. Ignore
                continue;
            }

            let diagnostic: Diagnostic;
            if (line == null || column == null || lexeme == null || is_eof_error) {
                const text = textDocument.getText();
                diagnostic = {
                    severity: DiagnosticSeverity.Error,
                    range: {
                        start: textDocument.positionAt(text.length - 1),
                        end: textDocument.positionAt(text.length)
                    },
                    message: message,
                    source: 'Harmony'
                };
            } else {
                const initialOffset = textDocument.offsetAt({ line: line - 1, character: column - 1 });
                diagnostic = {
                    severity: DiagnosticSeverity.Error,
                    range: {
                        start: textDocument.positionAt(initialOffset),
                        end: textDocument.positionAt(initialOffset + lexeme.length)
                    },
                    message: message,
                    source: 'Harmony'
                };
            }
            diagnostics.push(diagnostic);
        }
        // Send the computed diagnostics to VS Code.
        connection.sendDiagnostics({ uri: textDocument.uri, diagnostics });
    });
}

connection.onDidChangeWatchedFiles(_change => {
    // Monitored files have change in VS Code
    // no-op
    return;
});

// This handler provides the initial list of the completion items.
connection.onCompletion(
    (_textDocumentPosition: TextDocumentPositionParams): CompletionItem[] => {
        // The pass parameter contains the position of the text document in
        // which code complete got requested. For the example we ignore this
        // info and always provide the same completion items.
        return [];
    }
);

// This handler resolves additional information for the item selected in
// the completion list.
connection.onCompletionResolve(
    (item: CompletionItem): CompletionItem => {
        return item;
    }
);

// Make the text document manager listen on the connection
// for open, change and close text document events
documents.listen(connection);

// Listen on the connection
connection.listen();
