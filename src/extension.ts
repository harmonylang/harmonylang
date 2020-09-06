import * as vscode from 'vscode';
import * as child_process from 'child_process';
import * as Path from 'path';
import * as Fs from 'fs';

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

const activeProcesses: child_process.ChildProcess[] = [];
export function endHarmonyProcesses() {
    showMessage('Ending all Harmony processes...');
    activeProcesses.forEach(p => {
        if (!p.killed) p.kill();
    });
    activeProcesses.length = 0;
    showMessage('All Harmony processes have ended.');
}

const launchRunningMessage = (msLag: number) => {
    const startTime = Date.now();
    return setInterval(() => {
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
        const output = main + (subtext.length > 0 ? `\n${subHeader}: ${subtext}`: '');
        vscode.window.showInformationMessage(output);
    }
};

const processConfig = { cwd: Path.join(__dirname, '..', 'harmony-0.9') };
export function runHarmony(context: vscode.ExtensionContext, fullFileName: string) {

    // Same configuration for vscode's Python extension
    const config = vscode.workspace.getConfiguration('python').get('pythonPath');

    // Use python3 by default if configurations are not set.
    const pythonPath = config === undefined || typeof config !== 'string' ? 'python3' : config;
    const compilerPath = Path.join(__dirname, '..', 'harmony-0.9', 'harmony.py');
    const compileCommand = `${pythonPath} "${compilerPath}" -A "${fullFileName}"`;

    const buildProcess = child_process.exec(compileCommand, processConfig, (err, stdout, stderr) => {
        if (stderr) {
            // System errors, includes division by zero.
            showMessage('Error!', 'Message', stderr);
        } else if (err) {
            // error is non-null when process exits on code 1, i.e. a parser error.
            // Parse error feedback is also in standard output (it's just outputted by python's print function)
            showMessage('Build Failed!', 'Message', stdout);
        } else {
            const runningInterval = launchRunningMessage(5000);
            // Close the current output for a new run.
            showMessage('Build Succeeded!');
            showMessage(`Starting the Harmony program.`);
            HarmonyOutputPanel.currentPanel?.dispose();
            const runCommand = `${pythonPath} "${compilerPath}" "${fullFileName}"`;
            const runProcess = child_process.exec(runCommand, processConfig, (error, stdout, stderr) => {
                if (runningInterval !== undefined) {
                    clearInterval(runningInterval);
                }
                if (stderr || error) {
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
            activeProcesses.push(runProcess);
        }
    });
    activeProcesses.push(buildProcess);
    return;
}

class HarmonyOutputPanel {
    public static currentPanel: HarmonyOutputPanel | undefined;

    public static readonly viewType = 'harmonyOutput';

    private readonly _panel: vscode.WebviewPanel;
    private readonly _extensionUri: vscode.Uri;
    private _disposables: vscode.Disposable[] = [];

    public static createOrShow(extensionUri: vscode.Uri) {
        const column = vscode.ViewColumn.Beside;

        // If we already have a panel, show it.
        if (HarmonyOutputPanel.currentPanel) {
            HarmonyOutputPanel.currentPanel._panel.reveal(column);
            return;
        }

        // Otherwise, create a new panel.
        const panel = vscode.window.createWebviewPanel(
            HarmonyOutputPanel.viewType,
            'Harmony Output',
            column,
            {
                // Enable javascript in the webview
                enableScripts: true
            }
        );

        HarmonyOutputPanel.currentPanel = new HarmonyOutputPanel(panel, extensionUri);
    }

    public static revive(panel: vscode.WebviewPanel, extensionUri: vscode.Uri) {
        HarmonyOutputPanel.currentPanel = new HarmonyOutputPanel(panel, extensionUri);
    }

    private constructor(panel: vscode.WebviewPanel, extensionUri: vscode.Uri) {
        this._panel = panel;
        this._extensionUri = extensionUri;

        // Set the webview's initial html content
        this._update();

        // Listen for when the panel is disposed
        // This happens when the user closes the panel or when the panel is closed programatically
        this._panel.onDidDispose(() => this.dispose(), null, this._disposables);

        // Update the content based on view changes
        this._panel.onDidChangeViewState(
            e => {
                if (this._panel.visible) {
                    this._update();
                }
            },
            null,
            this._disposables
        );

        // Handle messages from the webview
        this._panel.webview.onDidReceiveMessage(
            message => {
                this._update();
            },
            null,
            this._disposables
        );
    }

    public updateResults() {
        // Send a message to the webview webview.
        // You can send any JSON serializable data.
        this._panel.webview.postMessage({ command: 'update' });
    }

    public dispose() {
        HarmonyOutputPanel.currentPanel = undefined;

        // Clean up our resources
        this._panel.dispose();

        while (this._disposables.length) {
            const x = this._disposables.pop();
            if (x) {
                x.dispose();
            }
        }
    }

    private _update() {
        const webview = this._panel.webview;
        const harmonyPanel = this._panel;

        const harmonyPath = vscode.window.activeTextEditor?.document.fileName;
        if (typeof harmonyPath === 'string') {
            const path = Path.join(__dirname, '..', 'harmony-0.9', 'harmony.html');

            Fs.readFile(path, 'utf-8', function (err, data) {
                if (err) {
                    vscode.window.showInformationMessage(err.message);
                }
                const injectableCSS = `\n
                * {
                    font-size: 1rem;
                }
                html, * {
                    font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Ubuntu, "Helvetica Neue", Helvetica, sans-serif;
                    line-height: 1.5;
                }
                body {
                    background-color: #fafafa;
                }
                #table-scroll {
                    height: 80vh !important;
                }
                \n`;
                const injectionPoint = data.indexOf('</style>');
                const formattedHtml = data.substring(0, injectionPoint) + injectableCSS + data.substring(injectionPoint);
                harmonyPanel.webview.html = formattedHtml;
            });
        }
    }
}
