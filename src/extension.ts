import * as vscode from 'vscode';
import * as path from 'path';
import {ProcessManagerImpl} from './processManager';
import {CHARMONY_COMPILER_DIR, CHARMONY_JSON_OUTPUT, CHARMONY_SCRIPT_PATH, GENERATED_FILES} from "./config";
import * as rimraf from "rimraf";
import { LOG } from './debug/io';
import * as fs from "fs";
import {IntermediateJson} from "./charmony/IntermediateJson";
import CharmonyPanelController_v2 from "./outputPanel/PanelController_v2";

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
        vscode.window.registerWebviewPanelSerializer(CharmonyPanelController_v2.viewType, {
            async deserializeWebviewPanel(webviewPanel: vscode.WebviewPanel, state: any) {
                CharmonyPanelController_v2.revive(webviewPanel, context.extensionUri);
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
        CharmonyPanelController_v2.currentPanel?.dispose();
        if (processManager.processesAreKilled) return;
        CharmonyPanelController_v2.createOrShow(context.extensionUri);
        LOG("finished processing", {error, stdout});
        if (error) {
            CharmonyPanelController_v2.currentPanel?.updateMessage(stdout);
        }
        try {
            const results: IntermediateJson = JSON.parse(fs.readFileSync(CHARMONY_JSON_OUTPUT, {encoding: 'utf-8'}));
            LOG("Opened charm.json", {results});
            if (results != null && results.issue != null && results.issue != "No issues") {
                CharmonyPanelController_v2.currentPanel?.updateResults(results);
            } else {
                CharmonyPanelController_v2.currentPanel?.updateMessage(`No Errors Found.`);
            }
            GENERATED_FILES.forEach(f => rimraf.sync(f));
        } catch (error) {
            LOG("error when trying to open charm.json", {error, CHARMONY_JSON_OUTPUT});
            CharmonyPanelController_v2.currentPanel?.updateMessage(`Could not create analysis file.`);
        }
    });
}
