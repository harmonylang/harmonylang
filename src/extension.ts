import * as vscode from 'vscode';
import * as path from 'path';
import { ProcessManagerImpl } from './processManager';
import {
    INSTALL_HARMONY_COMMAND
} from './config';
import * as fs from 'fs';
import { IntermediateJson } from './charmony/types/IntermediateJson';
import CharmonyPanelController_v2 from './outputPanel/PanelController_v2';
import { ArgumentParser } from 'argparse';
import stringArgv from 'string-argv';
import Message from './vscode/Message';
import OutputConsole from './vscode/OutputConsole';
import {
    LanguageClient,
    LanguageClientOptions,
    ServerOptions,
    TransportKind
} from 'vscode-languageclient/node';

const processManager = ProcessManagerImpl.init();

function getHarmonyLangConfiguration() {
    return vscode.workspace.getConfiguration('harmonylang');
}

function getPythonPath() {
    const actualPythonPath = vscode.workspace.getConfiguration('python').get('pythonPath');

    const config = getHarmonyLangConfiguration();
    const harmonyPythonPath = config.get('pythonPath');

    return harmonyPythonPath || actualPythonPath;
}

function getWhichCommand() {
    switch (process.platform) {
        case "win32":
            return "where";
        default:
            return "which";
    }
}

async function getHarmonyCommandPath(): Promise<string | null> {
    const config = getHarmonyLangConfiguration();
    const commandPath = config.get('commandPath');
    if (typeof commandPath === 'string' && fs.existsSync(commandPath)) {
        return Promise.resolve(commandPath);
    }
    const whichCmd = getWhichCommand();
    return new Promise<string | null>((resolve, reject) => {
        processManager.startCommand([whichCmd, "harmony"], {}, (err, stdout) => {
            if (err) {
                resolve(null);
            }
            const cmdPath = stdout.trim();
            config.update('commandPath', cmdPath);
            resolve(stdout.trim());
        });
    });
}

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
        () => {
            try {
                installHarmony();
            } catch (e) {
                OutputConsole.println(JSON.stringify(e));
                Message.error('Install Harmony failed. See the console log in the DevTools for more error outputs.');
            }
        }
    );

    const runHarmonyWithFlagsCommand = vscode.commands.registerCommand(
        'harmonylang-flag.run',
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

    const endHarmonyProcessesCommand = vscode.commands.registerCommand(
        'harmonylang.end',
        endHarmonyProcesses
    );

    context.subscriptions.push(runHarmonyCommand);
    context.subscriptions.push(installHarmonyCmd);
    context.subscriptions.push(runHarmonyWithFlagsCommand);
    context.subscriptions.push(endHarmonyProcessesCommand);

    // Create the language client and start the client.
    getHarmonyCommandPath()
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

/**
 * Ends all processes monitored by the Harmony process manager.
 * Emits messages on ending processes.
 */
export async function endHarmonyProcesses() {
    Message.info('Ending all Harmony processes...');
    const count = processManager.endAll();
    Message.info(`${count} Harmony process(es) ended.`);
}

const parser = new ArgumentParser();
parser.add_argument('--const', '-c', { nargs: 1 });
parser.add_argument('--module', '-m', { nargs: 1 });

/**
 * Parses a string which declares options to passed into the Harmony compiler.
 * Returns a cleaned string that can be passed for Harmony.
 * Some options are not supported.
 * Only the following flags are supported: [-C name=value, -m module=version]
 * @param options
 * @throws Error if an error occurs when parsing the options string.
 */
export default function parseOptions(options?: string): string[] {
    if (options == null) return [];
    const optionsArg = stringArgv(options);
    const [ns, oddities] = parser.parse_known_args(optionsArg);
    if (oddities.length > 0) {
        const key = oddities[0];
        throw new Error('Invalid option used: ' + key);
    }
    return Object.entries(ns).filter(([_, v]) => v != null).flatMap(([k, v]) => {
        return [`--${k}`, (v as string[])[0]];
    });
}

function onReceivingIntermediateJSON(results: IntermediateJson) {
    if (results != null && results.issue != null && results.issue != 'No issues') {
        CharmonyPanelController_v2.currentPanel?.updateResults(results);
    } else {
        CharmonyPanelController_v2.currentPanel?.updateMessage('No Errors Found.');
    }
}

export async function buildHarmonyModelChecker() {
    Message.info("Building model checker");
    const cmdPath = await getHarmonyCommandPath();
    if (!cmdPath) {
        Message.error("Failed to find Harmony command");
        return;
    }
    processManager.startCommand([cmdPath, "--build-model-checker"], {}, (err, stdout, stderr) => {
        if (processManager.processesAreKilled) return;
        if (err) {
            OutputConsole.println(err.message);
            Message.error(err.message);
            return;
        }
        if (stdout) {
            OutputConsole.println(stdout);
            Message.info(stdout);
        }
        Message.info("Built model checker");
    })
}

/**
 * This will run the Harmony installation script.
 * If Harmony was already instead in the extension's directory,
 * then delete the existing installation and re-install.
 */
export function installHarmony() {
    Message.info('Starting installation process');
    processManager.startCommand(INSTALL_HARMONY_COMMAND, {}, (err, stdout, stderr) => {
        if (processManager.processesAreKilled) return;
        OutputConsole.clear();
        if (err) {
            OutputConsole.println(err.message);
            Message.error(err.message);
            return;
        }
        // if (stderr) {
        //     OutputConsole.println(stderr);
        //     Message.error(stderr);
        //     return;
        // }
        if (stdout) {
            OutputConsole.println(stdout);
            Message.info(stdout);
        }
        Message.info('Installed Harmony locally');
        buildHarmonyModelChecker();
    });
}

/**
 * Runs Harmony on the program at `fullFileName`.
 * @param context
 * @param fullFileName
 * @param flags Additional flags that are passed into the Harmony compiler.
 * @returns
 */
export async function runHarmony(
    context: vscode.ExtensionContext,
    fullFileName: string,
    flags?: string
) {
    OutputConsole.clear();
    const harmonyScript = await getHarmonyCommandPath();
    if (!harmonyScript || !fs.existsSync(harmonyScript)) {
        Message.error(
            'Cannot find the Harmony script.',
            'Check if you have installed Harmony via [Install Harmony] or',
            'added the path to Harmony via [Add Harmony Library Path].'
        );
        return;
    }
    CharmonyPanelController_v2.currentPanel?.dispose();
    CharmonyPanelController_v2.createOrShow(context.extensionUri);
    let flagArgs: string[];
    try {
        flagArgs = parseOptions(flags);
    } catch (e) {
        if (typeof e === 'object' && e) {
            const msg = (e as Record<string, any>).message;
            OutputConsole.println(msg);
            OutputConsole.show();
            CharmonyPanelController_v2.currentPanel?.startLoading();
            CharmonyPanelController_v2.currentPanel?.updateMessage(msg);
        }
        return;
    }
    const charmonyCompileCommand = [harmonyScript, ...flagArgs, fullFileName];
    Message.info("Running Harmony...");
    processManager.startCommand(charmonyCompileCommand, {}, (error, stdout, stderr) => {
        if (processManager.processesAreKilled) {
            return;
        }
        CharmonyPanelController_v2.currentPanel?.startLoading();
        OutputConsole.clear();
        if (error) {
            OutputConsole.println(error.message);
            Message.error(error.message);
            return;
        }
        OutputConsole.println(stdout);
        if (error) {
            return CharmonyPanelController_v2.currentPanel?.updateMessage(stdout);
        }
        try {
            const dirname = path.dirname(fullFileName);
            const basename = path.basename(fullFileName);
            const extname = path.extname(fullFileName);
            const CHARMONY_JSON_OUTPUT = path.join(
                dirname, basename.slice(0, basename.length - extname.length) + '.hco'
            );
            const results: IntermediateJson = JSON.parse(fs.readFileSync(CHARMONY_JSON_OUTPUT, {
                encoding: 'utf-8'
            }));
            onReceivingIntermediateJSON(results);
        } catch (error) {
            if (typeof error === 'string') {
                OutputConsole.println(error);
                OutputConsole.show();
            }
            CharmonyPanelController_v2.currentPanel?.updateMessage('Could not create analysis file.');
        }
    });
}
