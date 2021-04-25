import * as vscode from 'vscode';
import * as path from 'path';
import { ProcessManagerImpl } from './processManager';
import {
    CHARMONY_COMPILER_DIR,
    CHARMONY_JSON_OUTPUT,
    CHARMONY_SCRIPT_PATH,
    GENERATED_FILES
} from './config';
import * as rimraf from 'rimraf';
import * as fs from 'fs';
import { IntermediateJson } from './charmony/IntermediateJson';
import CharmonyPanelController_v2 from './outputPanel/PanelController_v2';
import * as commandExists from 'command-exists';
import { runServerAnalysis } from './feature/runServerAnalysis';
import { ArgumentParser } from 'argparse';
import stringArgv from 'string-argv';

const processManager = ProcessManagerImpl.init();
const harmonyLangConfig = vscode.workspace.getConfiguration('harmonylang');
const hlConsole = vscode.window.createOutputChannel('HarmonyLang');
const pythonPath = harmonyLangConfig.get('pythonPath');
const ccPath = harmonyLangConfig.get('ccPath');

const parser = new ArgumentParser();
parser.add_argument('--const','-c', {nargs: 1});
parser.add_argument('--module', '-m', {nargs: 1});

export const activate = (context: vscode.ExtensionContext) => {
    const getFileName = () => {
        const filename = vscode.window.activeTextEditor?.document?.fileName;
        const ext = path.extname(filename || '');
        const harmonyExt = ['.hny', '.sab'];
        if (!harmonyExt.includes(ext)) {
            vscode.window.showInformationMessage(
                'Target file must be an Harmony (.hny) file.'
            );
            return;
        }
        if (filename == null) {
            vscode.window.showInformationMessage('Could not locate target file.');
            return;
        }
        return filename;
    };

    const runHarmonyCommand = vscode.commands.registerCommand(
        'harmonylang.run',
        () => {
            try {
                const filename = getFileName();
                if (filename) runHarmony(context, filename);
            } catch (e) {
                console.error('Run Harmony failed:', e);
                vscode.window.showInformationMessage('(Server) Run Harmony failed. See the console log in the DevTools.');  
            }
        }
    );

    const runHarmonyServerCommand = vscode.commands.registerCommand(
        'harmonylang-server.run',
        () => {
            try {
                const filename = getFileName();
                if (filename) runHarmonyServer(context, filename);
            } catch (e) {
                console.error('(Server) Run Harmony failed:', e);
                vscode.window.showInformationMessage('(Server) Run Harmony failed. See the console log in the DevTools.');  
            }
        }
    );

    const runHarmonyWithFlagsCommand = vscode.commands.registerCommand(
        'harmonylang-flag.run',
        () => {
            try {
                const filename = getFileName();
                const options: vscode.InputBoxOptions = {
                    prompt: 'Run Harmony With Flags',
                    placeHolder: 'flags (e.g. -c name=value, -m module=version)',
                };
                if (filename)
                    vscode.window.showInputBox(options).then((value) => {
                        runHarmony(context, filename, value);
                    });
            } catch (e) {
                console.error('Run Harmony failed:', e);
                vscode.window.showInformationMessage('Run Harmony failed. See the console log in the DevTools.');  
            }
        }
    );

    const runHarmonyServerWithFlagsCommand = vscode.commands.registerCommand(
        'harmonylang-server-flag.run',
        () => {
            try {
                const filename = getFileName();
                const options: vscode.InputBoxOptions = {
                    prompt: '(Server) Run Harmony With Flags',
                    placeHolder: 'flags (e.g. -c name=value, -m module=version)',
                };
                if (filename)
                    vscode.window.showInputBox(options).then((value) => {
                        runHarmonyServer(context, filename, value);
                    });
            } catch (e) {
                console.error('(Server) Run Harmony failed:', e);
                vscode.window.showInformationMessage('(Server) Run Harmony failed. See the console log in the DevTools.');  
            }
        }
    );

    const endHarmonyProcessesCommand = vscode.commands.registerCommand(
        'harmonylang.end',
        () => {
            endHarmonyProcesses();
        }
    );

    context.subscriptions.push(runHarmonyCommand);
    context.subscriptions.push(runHarmonyServerCommand);
    context.subscriptions.push(runHarmonyWithFlagsCommand);
    context.subscriptions.push(runHarmonyServerWithFlagsCommand);
    context.subscriptions.push(endHarmonyProcessesCommand);
};

export function endHarmonyProcesses() {
    showMessage('Ending all Harmony processes...');
    processManager.endAll();
    showMessage('All Harmony processes have ended.');
}

const showVscodeMessage = (
    isError: boolean,
    main: string,
    subHeader?: string,
    subtext?: string
) => {
    const show = isError
        ? vscode.window.showErrorMessage
        : vscode.window.showInformationMessage;
    if (subHeader == null || subtext == null) {
        show(main);
    } else {
        show(main + (subtext.length > 0 ? `\n${subHeader}: ${subtext}` : ''));
    }
};

function checkIfPython3Exists(ifItExists: () => void, otherwise: () => void) {
    const command = pythonPath ? (pythonPath as string) : 'python3';
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
    otherwise: () => void
): void {
    const command = ccPath ? (ccPath as string) : 'cc';
    commandExists(command, (err, exists) => {
        if (exists) ifItExists();
        else otherwise();
    });
}

/**
 * Parses a string which declares options to passed into the Harmony compiler.
 * Returns a cleaned string that can be passed for Harmony.
 * Some options are not supported.
 * Only the following are supported: [-C name=value, -m module=version]
 * @param options
 * @throws Error if an error occurs when parsing the options string.
 */
export default function parseOptions(options?: string): string {
    if (options == null) return '';
    const optionsArg = stringArgv(options);
    const [ns, oddities] = parser.parse_known_args(optionsArg);
    if (oddities.length > 0) {
        const key = oddities[0];
        throw new Error('Invalid option used: ' + key);
    }
    return Object.entries(ns).filter(([_, v]) => v != null).map(([k, v]) => {
        return `--${k} ${JSON.stringify((v as string[])[0])}`;
    }).join(' ');
}

const showMessage = (main: string, subHeader?: string, subtext?: string) => {
    return showVscodeMessage(false, main, subHeader, subtext);
};

function onReceivingIntermediateJSON(results: IntermediateJson) {
    if (results != null && results.issue != null && results.issue != 'No issues') {
        CharmonyPanelController_v2.currentPanel?.updateResults(results);
    } else {
        CharmonyPanelController_v2.currentPanel?.updateMessage('No Errors Found.');
    }
}

function runHarmonyServer(
    context: vscode.ExtensionContext,
    fullFileName: string,
    flags = ''
) {
    CharmonyPanelController_v2.currentPanel?.dispose();
    CharmonyPanelController_v2.createOrShow(context.extensionUri);
    const workspace = vscode.workspace.workspaceFolders;
    if (workspace == null || workspace[0] == null) {
        return showVscodeMessage(true, 'Cannot find current project workspace');
    }
    const rootDirectory = workspace[0].uri.fsPath;
    CharmonyPanelController_v2.currentPanel?.startLoading();
    runServerAnalysis(rootDirectory, fullFileName, flags, (json, staticHtmlUrl, duration) => {
        if (staticHtmlUrl && duration) {
            hlConsole.appendLine(`Harmony HTML can be found here: ${staticHtmlUrl}`);
            hlConsole.show();
            showMessage('Download HTML file.', `Link lasts for ${duration / 60 / 1000} minute(s)`, staticHtmlUrl);
        }
        onReceivingIntermediateJSON(json);
    }, (msg) => {
        hlConsole.clear();
        hlConsole.appendLine(msg);
        hlConsole.show();
        CharmonyPanelController_v2.currentPanel?.updateMessage(msg);
    });
}

export function runHarmony(
    context: vscode.ExtensionContext, 
    fullFileName: string, 
    flags = ''
) {
    CharmonyPanelController_v2.currentPanel?.dispose();
    CharmonyPanelController_v2.createOrShow(context.extensionUri);
    try {
        flags = parseOptions(flags);
    } catch (e) {
        hlConsole.clear();
        hlConsole.appendLine(e.message);
        hlConsole.show();
        CharmonyPanelController_v2.currentPanel?.startLoading();
        CharmonyPanelController_v2.currentPanel?.updateMessage(e.message);
        return;
    }
    checkIfPython3Exists(() => {
        hlConsole.clear();
        hlConsole.appendLine('Check for Python3');
        checkIfCompilerForCExists(() => {
            hlConsole.appendLine('Check for CC');
            const osAlias = (process.platform === 'win32') ? 'doskey' : 'alias';
            let charmonyCompileCommand = '';
            if (pythonPath != 'python3') { charmonyCompileCommand += `${osAlias} python3=${pythonPath} && `; }
            if (ccPath != 'cc') { charmonyCompileCommand += `${osAlias} cc=${ccPath} && `; }
            charmonyCompileCommand += `${CHARMONY_SCRIPT_PATH} ${flags} ${fullFileName}`;
            processManager.startCommand(charmonyCompileCommand, {
                cwd: CHARMONY_COMPILER_DIR
            }, (error, stdout, stderr) => {
                if (processManager.processesAreKilled) return;
                CharmonyPanelController_v2.currentPanel?.startLoading();
                hlConsole.clear();
                if (stderr) {
                    hlConsole.appendLine(stderr);
                    CharmonyPanelController_v2.currentPanel?.updateMessage('See Output Panel for details.');
                    hlConsole.show();
                    return;
                }
                hlConsole.appendLine(stdout);
                if (error) {
                    return CharmonyPanelController_v2.currentPanel?.updateMessage(stdout);
                }
                try {
                    const results: IntermediateJson = JSON.parse(fs.readFileSync(CHARMONY_JSON_OUTPUT, {
                        encoding: 'utf-8'
                    }));
                    onReceivingIntermediateJSON(results);
                    GENERATED_FILES.forEach(f => rimraf.sync(f));
                } catch (error) {
                    hlConsole.appendLine(error);
                    hlConsole.show();
                    CharmonyPanelController_v2.currentPanel?.updateMessage('Could not create analysis file.');
                }
            });
        }, () => {
            showVscodeMessage(true,
                'Missing dependency',
                'Target for cc C-compiler cannot be found. Attempting to run server compiler',
                'The model checker requires a C-compiler. Please check you have a C-compiler before continuing.'
            );
            runHarmonyServer(context, fullFileName, flags);
        });
    }, () => {
        showVscodeMessage(true,
            'Missing dependency',
            'Target for python3 cannot be found. Attempting to run server compiler',
            'The model checker requires Python3. Please install Python3 and to run compiler locally.');
        runHarmonyServer(context, fullFileName, flags);
    });
}