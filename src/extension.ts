import * as vscode from 'vscode';
import * as path from 'path';
import { ProcessManagerImpl } from './processManager';
import { CHARMONY_COMPILER_DIR, CHARMONY_JSON_OUTPUT, CHARMONY_SCRIPT_PATH, GENERATED_FILES } from "./config";
import * as rimraf from "rimraf";
import { LOG } from './debug/io';
import * as fs from "fs";
import { IntermediateJson } from "./charmony/IntermediateJson";
import CharmonyPanelController_v2 from "./outputPanel/PanelController_v2";
import * as commandExists from "command-exists";

const processManager = ProcessManagerImpl.init();
const harmonyLangConfig = vscode.workspace.getConfiguration('harmonylang-beta');
const pythonPath = harmonyLangConfig.get('pythonPath');
const ccPath = harmonyLangConfig.get('ccPath');

export const activate = (context: vscode.ExtensionContext) => {
    const runHarmonyCommand = vscode.commands.registerCommand('harmonylang-beta.run', () => {
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

    const endHarmonyProcessesCommand = vscode.commands.registerCommand('harmonylang-beta.end', () => {
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

const showVscodeMessage = (isError: boolean, main: string, subHeader?: string, subtext?: string) => {
    const show = isError ? vscode.window.showErrorMessage : vscode.window.showInformationMessage;
    if (subHeader == null || subtext == null) {
        show(main);
    } else {
        show(main + (subtext.length > 0 ? `\n${subHeader}: ${subtext}` : ''));
    }
};

function checkIfPython3Exists(
    ifItExists: () => void,
    otherwise: () => void,
) {
    const command = (pythonPath) ? pythonPath as string : "python3";
    commandExists(command, (err, exists) => {
        if (exists) ifItExists();
        else otherwise();
    });
}

/**
 * Based on the following answer:
 * Source: https://stackoverflow.com/questions/34953168/node-check-existence-of-command-in-path
 */
function checkIfCompilerForCExists(
    ifItExists: () => void,
    otherwise: () => void,
): void {
    const command = (ccPath) ? ccPath as string : "cc";
    commandExists(command, (err, exists) => {
        if (exists) ifItExists();
        else otherwise();
    });
}

const showMessage = (main: string, subHeader?: string, subtext?: string) => {
    return showVscodeMessage(false, main, subHeader, subtext);
};

export function runHarmony(context: vscode.ExtensionContext, fullFileName: string) {
    checkIfPython3Exists(() => {
        console.log("Check for Python3");
        checkIfCompilerForCExists(() => {
            console.log("Check for CC");
            let osAlias = (process.platform === "win32") ? "doskey" : "alias";
            let charmonyCompileCommand = "";
            if (pythonPath != "python3") { charmonyCompileCommand += `${osAlias} python3=${pythonPath} & `; }
            if (ccPath != "cc") { charmonyCompileCommand += `${osAlias} cc=${ccPath} & `; }
            charmonyCompileCommand += `${CHARMONY_SCRIPT_PATH} ${fullFileName}`;
            processManager.startCommand(charmonyCompileCommand, {
                cwd: CHARMONY_COMPILER_DIR
            }, (error, stdout) => {
                CharmonyPanelController_v2.currentPanel?.dispose();
                if (processManager.processesAreKilled) return;
                CharmonyPanelController_v2.createOrShow(context.extensionUri);
                LOG("finished processing", { error, stdout });
                console.log(stdout);
                if (error) { CharmonyPanelController_v2.currentPanel?.updateMessage(stdout); }
                try {
                    const results: IntermediateJson = JSON.parse(fs.readFileSync(CHARMONY_JSON_OUTPUT, {
                        encoding: 'utf-8'
                    }));
                    if (results != null && results.issue != null && results.issue != "No issues") {
                        CharmonyPanelController_v2.currentPanel?.updateResults(results);
                    } else {
                        CharmonyPanelController_v2.currentPanel?.updateMessage(`No Errors Found.`);
                    }
                    // GENERATED_FILES.forEach(f => rimraf.sync(f));
                } catch (error) {
                    console.log(error);
                    CharmonyPanelController_v2.currentPanel?.updateMessage(`Could not create analysis file.`);
                }
            });
        }, () => {
            showVscodeMessage(true,
                "Missing dependency",
                "Target for cc C-compiler cannot be found",
                "The model checker requires C. Please check you have a C-compiler before continuing.");
        });
    }, () => {
        showVscodeMessage(true,
            "Missing dependency",
            "Target for python3 cannot be found",
            "The model checker requires Python3. Please install Python3 and try again.");
    });
}
