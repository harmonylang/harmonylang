import * as vscode from 'vscode';
import * as Path from 'path';
import HarmonyOutputPanel from './outputPanel';
import { ProcessManagerImpl } from './processManager';

const processManager = ProcessManagerImpl.getInstance();
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

    context.subscriptions.push(runHarmonyCommand);
    context.subscriptions.push(endHarmonyProcessesCommand);

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

const showMessage = (main: string, subHeader?: string, subtext?: string) => {
    if (subHeader == null || subtext == null) {
        vscode.window.showInformationMessage(main);
    } else {
        const output = main + (subtext.length > 0 ? `\n${subHeader}: ${subtext}` : '');
        vscode.window.showInformationMessage(output);
    }
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
    processManager.startCommand(compileCommand, processConfig,  (err, stdout, stderr) => {
        if (stderr) {
            // System errors, includes division by zero.
            showMessage('Error!', 'Message', stderr);
        } else if (err) {
            // error is non-null when process exits on code 1, i.e. a parser error.
            // Parse error feedback is also in standard output (it's just outputted by python's print function)
            showMessage('Build Failed!', 'Message', stdout);
        } else {
            const runningInterval = launchRunningMessage(5000);
            // Push the new interval onto the stack.
            // Close the current output for a new run.
            showMessage('Build Succeeded!');
            showMessage(`Starting the Harmony program.`);
            HarmonyOutputPanel.currentPanel?.dispose();
            const runCommand = `${pythonPath} "${compilerPath}" "${fullFileName}"`;
            processManager.startCommand(runCommand, processConfig, (error, stdout, stderr) => {
                if (processManager.processesAreKilled) return;
                if (runningInterval !== undefined) {
                    processManager.end(runningInterval);
                }
                if (stderr || error) {
                    if (activeProcesses.length > 0)
                        showMessage('Execution Failed!', 'Message', stdout);
                    HarmonyOutputPanel.currentPanel?.dispose();
                } else {
                    // Output Panel will include the stdout output.
                    showMessage('Execution Finished!');
                    // Show the output panel with the contents of harmony.html because the compilation succeeded.
                    if (stdout.includes('harmony.html'))
                        HarmonyOutputPanel.createOrShow(context.extensionUri);
                }
            });
        }
    });
}
