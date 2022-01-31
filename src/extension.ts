import * as vscode from 'vscode';
import * as path from 'path';
import Message from './vscode/Message';
import OutputConsole from './vscode/OutputConsole';
import {
    LanguageClient,
    LanguageClientOptions,
    ServerOptions,
    TransportKind
} from 'vscode-languageclient/node';
import runHarmony from './vscode-commands/execHarmony';
import runInstall from './vscode-commands/install';
import endHarmonyProcesses from './vscode-commands/endProcesses';


function getActiveFilename() {
    const filename = vscode.window.activeTextEditor?.document?.fileName;
    if (!filename) {
        Message.error('Could not locate target file.');
        return;
    }
    const ext = path.extname(filename);
    if (ext !== '.hny') {
        Message.error('Target file must be an Harmony (.hny) file.');
        return;
    }
    return filename;
}

let client: LanguageClient;
export const activate = (context: vscode.ExtensionContext) => {
    const installHarmonyCmd = vscode.commands.registerCommand(
        'harmonylang.install',
        () => {
            runInstall()
                .then(msg => OutputConsole.println(msg))
                .catch((errMessage: string) => {
                    Message.error('Failed to install Harmony using pip');
                    Message.error(errMessage);
                    OutputConsole.println(errMessage);
                    OutputConsole.show();
                });
        }
    );

    const runHarmonyCommand = vscode.commands.registerCommand(
        'harmonylang.run',
        (file?: any) => {
            const filename = (typeof file == 'string')
                ? file 
                : (file instanceof vscode.Uri)
                    ? (file?.fsPath)
                        ? file.fsPath
                        : getActiveFilename()
                    : getActiveFilename();
            if (!filename) {
                Message.error('No Harmony file opened.');
                return;
            }
            runHarmony(context, filename)
                .catch(err => {
                    const errMessage = JSON.stringify(err);
                    Message.error('Run Harmony failed.');
                    Message.error(errMessage);
                    OutputConsole.println(errMessage);
                    OutputConsole.show();
                });
        }
    );

    const runHarmonyWithFlagsCommand = vscode.commands.registerCommand(
        'harmonylang.run-with-flags',
        (file?: any) => {
            const filename = (typeof file == 'string')
                ? file 
                : (file instanceof vscode.Uri)
                    ? (file?.fsPath)
                        ? file.fsPath
                        : getActiveFilename()
                    : getActiveFilename();
            if (!filename) {
                Message.error('No Harmony file opened.');
                return;
            }
            const options: vscode.InputBoxOptions = {
                prompt: 'Run Harmony With Flags',
                placeHolder: 'flags (e.g. -c name=value, -m module=version, -i expr, --intf expr)',
            };
            vscode.window.showInputBox(options)
                .then(value => {
                    runHarmony(context, filename, value)
                        .catch(err => {
                            const errMessage = JSON.stringify(err);
                            Message.error('Run Harmony failed.');
                            Message.error(errMessage);
                            OutputConsole.println(errMessage);
                            OutputConsole.show();
                        });
                });
        }
    );

    const endHarmonyProcessesCommand = vscode.commands.registerCommand('harmonylang.end', endHarmonyProcesses);

    context.subscriptions.push(runHarmonyCommand);
    context.subscriptions.push(installHarmonyCmd);
    context.subscriptions.push(runHarmonyWithFlagsCommand);
    context.subscriptions.push(endHarmonyProcessesCommand);

    // Install Harmony when the extension is activated.
    // This will either install Harmony fresh or upgrade to the
    // latest version.
    runInstall()
        .then(msg => OutputConsole.println(msg))
        .catch((errMessage: string) => {
            Message.error('Failed to install Harmony using pip');
            Message.error(errMessage);
            OutputConsole.println(errMessage);
            OutputConsole.show();
        });

    // Setup the server client only if Harmony is installed
    // The server is implemented in node
    const serverModule = context.asAbsolutePath(path.join('out', 'server', 'server.js'));

    // If the extension is launched in debug mode then the debug server options are used
    // Otherwise the run options are used
    const serverOptions: ServerOptions = {
        run: { module: serverModule, transport: TransportKind.ipc },
        debug: { module: serverModule, transport: TransportKind.ipc }
    };

    // Create the language client and start the client.
    // Options to control the language client
    const clientOptions: LanguageClientOptions = {
        // Register the server for plain text documents
        documentSelector: [{ scheme: 'file', language: 'harmony' }],
    };
    client = new LanguageClient(
        'harmonyLangServer',
        'Harmony Language Server',
        serverOptions,
        clientOptions
    );
    // Start the client. This will also launch the server
    client.start();
};
