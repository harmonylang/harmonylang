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
import _fileUriToPath = require('file-uri-to-path');
import * as path from 'path';
import * as fs from 'fs';

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
    libraryPath: string | null;
    commandPath: string | null;
}

// The global settings, used when the `workspace/configuration` request is not supported by the client.
// Please note that this is not the case when using this server with the client provided in this example
// but could happen with other clients.
const defaultSettings: HarmonyExtensionSettings = { libraryPath: null, commandPath: null };
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
            const result = {libraryPath: config.libraryPath, commandPath: config.commandPath};
            documentSettings.set(resource, result);
            return result;
        });
    }
    return Promise.resolve(result);
}

function getHarmonyScriptPath(libraryPath: string): string {
    if (process.platform === 'win32') {
        return path.join(libraryPath, 'harmony.bat');
    }
    return path.join(libraryPath, 'harmony');
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
    const harmonyScript = settings.commandPath;
    if (!harmonyScript) {
        diagnostics.push({
            severity: DiagnosticSeverity.Warning,
            range: {
                start: textDocument.positionAt(0),
                end: textDocument.positionAt(1)
            },
            message: 'Cannot find Harmony',
            source: 'Harmony'
        });
        // Cannot find Harmony command to perform parsing.
        connection.sendDiagnostics({ uri: textDocument.uri, diagnostics });
        return;
    }

    let harmonyFile = fileUriToPath(textDocument.uri);
    if (!fs.existsSync(harmonyFile)) {
        diagnostics.push({
            severity: DiagnosticSeverity.Error,
            range: {
                start: textDocument.positionAt(0),
                end: textDocument.positionAt(1)
            },
            message: `Ooops: ${harmonyFile}`,
            source: 'Harmony'
        });
        connection.sendDiagnostics({ uri: textDocument.uri, diagnostics });
        return;
    }
    // An odd behavior where textDocument.uri gives a path beginning with file:///c%3A/ on windows

    child_process.execFile(harmonyScript, ['-p', harmonyFile], () => {
            // Possibly a parsing error.
        const dirname = path.dirname(harmonyFile);
        const basename = path.basename(harmonyFile, path.extname(harmonyFile));
        const analysisFile = path.join(dirname, basename + '.hvm');
        if (!fs.existsSync(analysisFile) || !fs.statSync(analysisFile).isFile()) {
            // diagnostics.push({
            //     severity: DiagnosticSeverity.Error,
            //     range: {
            //         start: textDocument.positionAt(0),
            //         end: textDocument.positionAt(1)
            //     },
            //     message: 'No analysis file found',
            //     source: 'Harmony'
            // })
            // No analysis file found
            connection.sendDiagnostics({ uri: textDocument.uri, diagnostics });
            return;
        }

        const analysis = JSON.parse(fs.readFileSync(analysisFile, 'utf-8'));
        if (analysis.status !== 'error') {
            // No errors
            connection.sendDiagnostics({ uri: textDocument.uri, diagnostics });
            return;
        }

        for (const {line, column, message, lexeme, is_eof_error} of analysis.errors) {
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
                const initialOffset = textDocument.offsetAt({ line: line - 1, character: column - 1});
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
