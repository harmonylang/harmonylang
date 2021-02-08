import * as vscode from 'vscode';
import * as Path from 'path';
import HarmonyOutputPanel from './outputPanel';
import { install, uninstall } from './feature/install';
import { ProcessManagerImpl } from './processManager';

const processManager = ProcessManagerImpl.init();
const processConfig = { cwd: Path.join(__dirname, '..', 'harmony-0.9') };
const compilerPath = Path.join(__dirname, '..', 'harmony-0.9', 'harmony.py');

export const activate = (context: vscode.ExtensionContext) => {
    const runHarmonyCommand = vscode.commands.registerCommand('harmonylang.run', () => {
        const editor = vscode.window.activeTextEditor;
        const doc = editor != null ? editor.document : null;
        const path = doc != null ? doc.fileName : null;
        const ext = Path.extname(path || '');
        const harmonyExt = ".hny .sab";
        if (harmonyExt.indexOf(ext) < 0) {
            vscode.window.showInformationMessage('Target file must be an Harmony (.hmy) file');
            return;
        }
        if (path === null) {
            vscode.window.showInformationMessage('Could not locate target file.');
            return;
        }
        runHarmony(context, path);
    });

    const endHarmonyProcessesCommand = vscode.commands.registerCommand('harmonylang.end', () => {
        endHarmonyProcesses();
    });

    const installHarmony = vscode.commands.registerCommand('harmonylang.install', () => {
        install(() => showVscodeMessage(false, 'Added Harmony locally to the device. Run with the command `harmony`'),
            () => showVscodeMessage(true, 'Harmony could not be added locally to the device.'),
            () => showVscodeMessage(false, 'File already exists'));
    });

    const uninstallHarmony = vscode.commands.registerCommand('harmonylang.uninstall', () => {
        uninstall(
            () => showVscodeMessage(false, 'Removed Harmony from this device.'),
            () => showVscodeMessage(true, 'Could not remove Harmony from this device'),
            () => showVscodeMessage(false, 'File does not exist'));
    });

    context.subscriptions.push(runHarmonyCommand);
    context.subscriptions.push(endHarmonyProcessesCommand);
    context.subscriptions.push(installHarmony);
    context.subscriptions.push(uninstallHarmony);

    if (vscode.window.registerWebviewPanelSerializer) {
        vscode.window.registerWebviewPanelSerializer(HarmonyOutputPanel.viewType, {
            async deserializeWebviewPanel(webviewPanel: vscode.WebviewPanel, state: any) {
                HarmonyOutputPanel.revive(webviewPanel, context.extensionUri);
            }
        });
    }
};

export function endHarmonyProcesses() {
    showMessage('Ending all Harmony processes...');
    processManager.endAll();
    showMessage('All Harmony processes have ended.');
}

const launchRunningMessage = (msLag: number): string => {
    const startTime = Date.now();
    return processManager.startInterval(() => {
        const elapsed = (Date.now() - startTime) / 1000;
        vscode.window.showInformationMessage(
            `Running the Harmony program...\n${elapsed.toFixed()} seconds have elapsed.`
        );
    }, msLag);
};


const showVscodeMessage = (isError: boolean, main: string, subHeader?: string, subtext?: string) => {
    const show = isError ? vscode.window.showErrorMessage : vscode.window.showInformationMessage;
    if (subHeader == null || subtext == null) {
        show(main);
    } else {
        show(main + (subtext.length > 0 ? `\n${subHeader}: ${subtext}` : ''));
    }
};

const showMessage = (main: string, subHeader?: string, subtext?: string) => {
    return showVscodeMessage(false, main, subHeader, subtext);
};

const getPythonPath = (): string => {
    // Same configuration for vscode's Python extension
    const config = vscode.workspace.getConfiguration('python').get('pythonPath');
    // Use python3 by default if configurations are not set.
    return config === undefined || typeof config !== 'string' ? 'python3' : config;
};

export function runHarmony(context: vscode.ExtensionContext, fullFileName: string) {
    // Use python3 by default if configurations are not set.
    const pythonPath = getPythonPath();
    const compileCommand = `${pythonPath} "${compilerPath}" -A "${fullFileName}"`;
    processManager.startCommand(compileCommand, processConfig, (err, stdout, stderr) => {
        HarmonyOutputPanel.currentPanel?.dispose();
        HarmonyOutputPanel.createOrShow(context.extensionUri);
        if (stderr) {
            // System errors, includes division by zero.
            HarmonyOutputPanel.currentPanel?.updateMessage(`Error: ${stderr}`);
        } else if (err) {
            // error is non-null when process exits on code 1, i.e. a parser error.
            // Parse error feedback is also in standard output (it's just outputted by python's print function)
            HarmonyOutputPanel.currentPanel?.updateMessage(`Error: ${stdout}`);
        } else {
            const runCommand = `${pythonPath} "${compilerPath}" "${fullFileName}"`;
            processManager.startCommand(runCommand, processConfig, (error, stdout, stderr) => {
                console.log(stdout, stderr, error);
                if (processManager.processesAreKilled) return;
                if (stderr || error) {
                    HarmonyOutputPanel.currentPanel?.updateResults();
                } else {
                    // Output Panel will include the stdout output.
                    HarmonyOutputPanel.currentPanel?.updateMessage(`No Errors Found`);
                    // Show the output panel with the contents of harmony.html because the compilation succeeded.
                }
            });
        }
    });
}
