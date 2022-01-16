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
import SystemCommands from './SystemCommands';
import runBuildHarmonyModelChecker from './vscode-commands/buildModelChecker';


function getActiveFilename() {
    const filename = vscode.window.activeTextEditor?.document?.fileName;
    if (!filename) {
        vscode.window.showInformationMessage('Could not locate target file.');
        return;
    }
    const ext = path.extname(filename);
    if (ext !== '.hny') {
        vscode.window.showInformationMessage('Target file must be an Harmony (.hny) file.');
        return;
    }
    return filename;
}

let client: LanguageClient;
export const activate = (context: vscode.ExtensionContext) => {
    const runHarmonyCommand = vscode.commands.registerCommand(
        'harmonylang.run',
        () => {
            const filename = getActiveFilename();
            if (!filename) {
                Message.error("No Harmony file opened.");
                return;
            }
            try {
                runHarmony(context, filename);
            } catch (e) {
                OutputConsole.println(JSON.stringify(e));
                Message.error('Run Harmony failed. See the console log in the DevTools.');
            }
        }
    );

    const installHarmonyCmd = vscode.commands.registerCommand(
        'harmonylang.install',
        async () => {
            try {
                await runInstall();
                await runBuildHarmonyModelChecker();
            } catch (e) {
                OutputConsole.println(JSON.stringify(e));
                Message.error('Install Harmony failed. See the console log in the DevTools for more error outputs.');
            }
        }
    );

    const buildModelCheckerCmd = vscode.commands.registerCommand(
        'harmonylang.build-model-checker',
        async () => {
            runBuildHarmonyModelChecker()
                .then(() => Message.info('Model Checker Built'))
                .catch(e => {
                    OutputConsole.println(JSON.stringify(e));
                    Message.error('Build Model Checker failed. See the console log in the DevTools for more error outputs.');
                })
        }
    );

    const runHarmonyWithFlagsCommand = vscode.commands.registerCommand(
        'harmonylang.run-with-flags',
        async () => {
            const filename = getActiveFilename();
            if (!filename) {
                Message.error("No Harmony file opened.");
                return;
            }
            const options: vscode.InputBoxOptions = {
                prompt: 'Run Harmony With Flags',
                placeHolder: 'flags (e.g. -c name=value, -m module=version)',
            };
            const value = await vscode.window.showInputBox(options);
            try {
                runHarmony(context, filename, value);
            } catch (e) {
                OutputConsole.println(JSON.stringify(e));
                Message.error('Run Harmony failed. See the console log in the DevTools.');
            }
        }
    );

    const endHarmonyProcessesCommand = vscode.commands.registerCommand('harmonylang.end', endHarmonyProcesses);

    context.subscriptions.push(runHarmonyCommand);
    context.subscriptions.push(installHarmonyCmd);
    context.subscriptions.push(buildModelCheckerCmd);
    context.subscriptions.push(runHarmonyWithFlagsCommand);
    context.subscriptions.push(endHarmonyProcessesCommand);

    // Create the language client and start the client.
    SystemCommands.getHarmonyCommandPath()
        .catch(() => {
            OutputConsole.println('A path to the Harmony compiler cannot be found.');
            OutputConsole.println('This will prevent the [Run Harmony] command from working.');
            OutputConsole.println('This will also prevent parsing error messages from appearing.');
            OutputConsole.println('You can add the Harmony compiler path via the [Install Harmony] command.');
            OutputConsole.println('Syntax highlighting will still be enabled.');
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
