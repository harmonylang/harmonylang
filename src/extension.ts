import * as vscode from 'vscode';
import * as path from 'path';
import { ProcessManagerImpl } from './processManager';
import {
    EXTENSION_DIR,
    CHARMONY_COMPILER_DIR,
    CHARMONY_INSTALLER
} from './config';
import * as fs from 'fs';
import { IntermediateJson } from './charmony/IntermediateJson';
import CharmonyPanelController_v2 from './outputPanel/PanelController_v2';
import * as commandExists from 'command-exists';
import { ArgumentParser } from 'argparse';
import stringArgv from 'string-argv';

const processManager = ProcessManagerImpl.init();
const harmonyLangConfig = vscode.workspace.getConfiguration('harmonylang');
const hlConsole = vscode.window.createOutputChannel('HarmonyLang');
const pythonPath = harmonyLangConfig.get('pythonPath');
const ccPath = harmonyLangConfig.get('ccPath');

function getHarmonyLangConfiguration() {
    return vscode.workspace.getConfiguration('harmonylang');
}

function getHarmonyLibraryPath(): string | null {
    const config = getHarmonyLangConfiguration();
    const libPath = config.get('libraryPath');
    return typeof libPath === 'string' ? libPath : null;
}
function setHarmonyLibraryPath(path: string) {
    const config = getHarmonyLangConfiguration();
    return config.update('libraryPath', path);
}

function getHarmonyScriptPath() {
    const libraryPath = getHarmonyLibraryPath();
    if (!libraryPath) {
        return null;
    }
    if (process.platform === 'win32') {
        return path.join(libraryPath, 'harmony.bat');
    }
    return path.join(libraryPath, 'harmony');
}

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

    const addHarmonyLibraryCommand = vscode.commands.registerCommand(
        'harmonylang.addLibrary',
        () => {
            const options: vscode.OpenDialogOptions = {
                canSelectMany: false,
                canSelectFiles: false,
                canSelectFolders: true,
                openLabel: 'Open'
            };
            vscode.window.showOpenDialog(options).then(fileUri => {
                if (fileUri && fileUri[0]) {
                    const filename = fileUri[0].fsPath;
                    setHarmonyLibraryPath(filename);
                    console.log('Selected file: ' + filename);
                }
            });
        }
    );

    const installHarmonyCmd = vscode.commands.registerCommand(
        'harmonylang.install',
        () => {
            try {
                installHarmony();
            } catch (e) {
                console.error('Install Harmony failed:', e);
                vscode.window.showInformationMessage('Install Harmony failed. See the console log in the DevTools.');
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

    const endHarmonyProcessesCommand = vscode.commands.registerCommand(
        'harmonylang.end',
        () => {
            endHarmonyProcesses();
        }
    );

    context.subscriptions.push(runHarmonyCommand);
    context.subscriptions.push(installHarmonyCmd);
    context.subscriptions.push(addHarmonyLibraryCommand);
    context.subscriptions.push(runHarmonyWithFlagsCommand);
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

/**
 * This will run the Harmony installation script.
 */
export function installHarmony() {
    if (!fs.existsSync(CHARMONY_COMPILER_DIR)) {
        fs.mkdirSync(CHARMONY_COMPILER_DIR);
    }
    fs.copyFileSync(
        path.join(EXTENSION_DIR, 'install.py'),
        path.join(CHARMONY_COMPILER_DIR, 'install.py'),
    );
    const PYTHON_PATH = (() => {
        if (pythonPath && typeof pythonPath === 'string') return pythonPath as string;
        return 'python3';
    })();
    const cmd = `${PYTHON_PATH} ${CHARMONY_INSTALLER}`;
    processManager.startCommand(cmd,
        {cwd: CHARMONY_COMPILER_DIR},
        (err, stdout, stderr) => {
            if (processManager.processesAreKilled) return;
            hlConsole.clear();
            if (err) {
                hlConsole.appendLine(err.message);
                return;
            }
            if (stderr) {
                hlConsole.appendLine(stderr);
                return;
            }
            if (stdout) {
                hlConsole.appendLine(stdout);
            }
            showVscodeMessage(false, 'Installed Harmony locally');
            setHarmonyLibraryPath(CHARMONY_COMPILER_DIR);
        }
    );
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
    hlConsole.clear();
    const harmonyScript = getHarmonyScriptPath();
    const charmonyCompileCommand = `${harmonyScript} ${flags} ${fullFileName}`;
    processManager.startCommand(charmonyCompileCommand, {
        cwd: CHARMONY_COMPILER_DIR
    }, (error, stdout, stderr) => {
        if (processManager.processesAreKilled) {
            return;
        }
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
            hlConsole.appendLine(error);
            hlConsole.show();
            CharmonyPanelController_v2.currentPanel?.updateMessage('Could not create analysis file.');
        }
    });
}
