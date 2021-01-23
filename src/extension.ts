import * as vscode from 'vscode';
import * as path from 'path';
import CharmonyPanelController from './outputPanel/PanelController';
import {install, uninstall} from './feature/install';
import {ProcessManagerImpl} from './processManager';

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
}
