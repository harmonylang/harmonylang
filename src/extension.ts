import * as vscode from 'vscode';
import * as path from 'path';
import CharmonyPanelController from './outputPanel/PanelController';
import {ProcessManagerImpl} from './processManager';
import {CHARMONY_COMPILER_DIR, CHARMONY_SCRIPT_PATH, GENERATED_FILES} from "./config";
import * as rimraf from "rimraf";

const processManager = ProcessManagerImpl.init();

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

export function runHarmony(context: vscode.ExtensionContext, fullFileName: string) {
    // Use python3 by default if configurations are not set.
    // const pythonPath = getPythonPath();
    const charmonyCompileCommand = `${CHARMONY_SCRIPT_PATH} ${fullFileName}`;
    processManager.startCommand(charmonyCompileCommand, {
        cwd: CHARMONY_COMPILER_DIR
    }, (error, stdout) => {
        CharmonyPanelController.currentPanel?.dispose();
        if (processManager.processesAreKilled) return;
        CharmonyPanelController.createOrShow(context.extensionUri);
        if (error) {
            CharmonyPanelController.currentPanel?.updateMessage(stdout);
        } else if (stdout.includes("Safety Violation")) {
            // System errors, includes division by zero.
            CharmonyPanelController.currentPanel?.updateResults();
        } else {
            // Output Panel will include the stdout output.
            CharmonyPanelController.currentPanel?.updateMessage(`No Errors Found`);
            // Show the output panel with the contents of charmony.html because the compilation succeeded.
        }
        GENERATED_FILES.forEach(f => rimraf.sync(f));
    });
}
