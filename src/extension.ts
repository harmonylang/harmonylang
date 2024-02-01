import * as vscode from 'vscode';
import * as path from 'path';
import * as fs from 'fs';
import Message from './vscode/Message';
import OutputConsole from './vscode/OutputConsole';
import {
    LanguageClient,
    LanguageClientOptions,
    ServerOptions,
    TransportKind
} from 'vscode-languageclient/node';
import runHarmony from './vscode-commands/execHarmony';
import runInstall, { printReadableInstallMessage } from './vscode-commands/install';
import endHarmonyProcesses from './vscode-commands/endProcesses';
import SystemCommands from './SystemCommands';
import { HARMONY_ENTRY_SCRIPT } from './config';
import ProcessManager from './vscode/ProcessManager';

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

    // Install Harmony when the extension is activated.
    // This will either install Harmony fresh or upgrade to the
    // latest version.
    runInstall()
        .then(result => {
            OutputConsole.println(result.state);
            OutputConsole.println(result.message);
        })
        .catch((err: unknown) => {
            Message.error('Encountered an unexpected error during installation. See logs for more details and contact developers.');
            OutputConsole.println(String(err));
            OutputConsole.show();
        });

    const installHarmonyCmdWithPythonEnvironment = vscode.commands.registerCommand(
        'harmonylang.install',
        async () => {
            const options: vscode.InputBoxOptions = {
                prompt: 'Python Executable Path. Enter nothing for an auto-detected Python path.',
                placeHolder: 'Optional full path to Python executable (e.g. /usr/bin/python3).',
            };
            let value = await vscode.window.showInputBox(options);
            if (value == null) {
                // User cancelled action
                return;
            }
            value = value.trim();
            if (value === '') {
                value = undefined;
            } else if (fs.existsSync(value)) {
                Message.info(`Installing Harmony using ${value}`);
            } else {
                Message.error(`The given path ${value} is not executable. It may not exist or is a system-level executable that cannot be used. Please install a new/different Python3 environment`);
                return;
            }

            await runInstall(value)
                .then(result => {
                    switch (result.state) {
                    case 'success': {
                        const msg = result.message;
                        printReadableInstallMessage(msg);
                        OutputConsole.println(msg);
                        Message.info(`Successfully installed Harmony using ${result.pythonPath}`);
                        break;
                    }
                    case 'failure': {
                        const errMessage = result.message;
                        printReadableInstallMessage(errMessage);
                        OutputConsole.println(errMessage);
                        OutputConsole.show();
                        break;
                    }
                    }
                })
                .catch((err: unknown) => {
                    Message.error('Encountered an unexpected error during installation. See logs for more details and contact developers.');
                    OutputConsole.println(String(err));
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
                placeHolder: 'flags (e.g. -c name=value, -m module=version)',
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

    // priority=100 is arbitrary
    const harmonyStatusBar = vscode.window.createStatusBarItem(vscode.StatusBarAlignment.Right, 100);
    const onStatusBarClick = async () => {
        Message.info(`Harmony is using Python environment ${await SystemCommands.getPythonCommandPath()}`);
    };
    const onStatusBarClickCommandId = 'harmonylang.on-status-bar-click';
    harmonyStatusBar.command = onStatusBarClickCommandId;
    const updateHarmonyStatusBar = async (): Promise<void> => {
        const pythonCommandPath = await SystemCommands.getPythonCommandPath();
        if (!pythonCommandPath) {
            harmonyStatusBar.text = 'Harmony: missing Python env';
            return;
        }

        const cmdArgs = [pythonCommandPath, '-c', HARMONY_ENTRY_SCRIPT, '--version'];
        const result = await ProcessManager.startCommandAsync(cmdArgs, {});
        if (result.error) {
            OutputConsole.println(result.error.message);
            harmonyStatusBar.text = 'Harmony: process error';
            return;
        }
        harmonyStatusBar.text = `${result.stdout}`;
    };

    context.subscriptions.push(runHarmonyCommand);
    context.subscriptions.push(installHarmonyCmdWithPythonEnvironment);
    context.subscriptions.push(runHarmonyWithFlagsCommand);
    context.subscriptions.push(endHarmonyProcessesCommand);
    context.subscriptions.push(harmonyStatusBar);
    context.subscriptions.push(vscode.commands.registerCommand(onStatusBarClickCommandId, onStatusBarClick));
    context.subscriptions.push(vscode.window.onDidChangeActiveTextEditor(updateHarmonyStatusBar));
    context.subscriptions.push(vscode.window.onDidChangeTextEditorSelection(updateHarmonyStatusBar));
    updateHarmonyStatusBar();
    harmonyStatusBar.show();

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
