import * as vscode from 'vscode';
import * as path from 'path';
import CharmonyPanelController from './outputPanel/PanelController';
import {install, uninstall} from './feature/install';
import {ProcessManagerImpl} from './processManager';
import HarmonyOutputPanel from "./outputPanel";
import {HARMONY_COMPILER_DIR, HARMONY_COMPILER_PATH} from "./config";

const processManager = ProcessManagerImpl.init();
const processConfig = {cwd: HARMONY_COMPILER_DIR};

export const activate = (context: vscode.ExtensionContext) => {
    const runHarmonyCommand = vscode.commands.registerCommand('harmonylang.run', () => {
        const filename = vscode.window.activeTextEditor?.document?.fileName;
        const ext = path.extname(filename || '');
        const harmonyExt = [".hny", ".sab"];
        if (!harmonyExt.includes(ext)) {
            vscode.window.showInformationMessage('Target file must be an Harmony (.hny) file.');
            return;
        }
        if (filename == null) {
            vscode.window.showInformationMessage('Could not locate target file.');
            return;
        }
        runHarmony(context, filename);
    });

    const endHarmonyProcessesCommand = vscode.commands.registerCommand('harmonylang.end', () => {
        endHarmonyProcesses();
    });

    context.subscriptions.push(runHarmonyCommand);
    context.subscriptions.push(endHarmonyProcessesCommand);

    if (vscode.window.registerWebviewPanelSerializer) {
        vscode.window.registerWebviewPanelSerializer(CharmonyPanelController.viewType, {
            async deserializeWebviewPanel(webviewPanel: vscode.WebviewPanel, state: any) {
                CharmonyPanelController.revive(webviewPanel, context.extensionUri);
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
    CharmonyPanelController.currentPanel?.dispose();
    CharmonyPanelController.createOrShow(context.extensionUri);
    CharmonyPanelController.currentPanel?.updateResults();

    const pythonPath = getPythonPath();
    const compileCommand = `${pythonPath} "${HARMONY_COMPILER_PATH}" -A "${fullFileName}"`;
    processManager.startCommand(compileCommand, processConfig, (err, stdout, stderr) => {
        HarmonyOutputPanel.currentPanel?.dispose();
        HarmonyOutputPanel.createOrShow(context.extensionUri);
        console.log(stderr, err);
        if (stderr) {
            // System errors, includes division by zero.
            HarmonyOutputPanel.currentPanel?.updateMessage(`Error: ${stderr}`);
        } else if (err) {
            // error is non-null when process exits on code 1, i.e. a parser error.
            // Parse error feedback is also in standard output (it's just outputted by python's print function)
            HarmonyOutputPanel.currentPanel?.updateMessage(`Error: ${stdout}`);
        } else {
            const runCommand = `${pythonPath} "${HARMONY_COMPILER_PATH}" "${fullFileName}"`;
            processManager.startCommand(runCommand, processConfig, (error, stdout, stderr) => {
                if (processManager.processesAreKilled) return;
                if (stderr || error) {
                    console.log("Print the errors");
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
