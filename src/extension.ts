import * as vscode from 'vscode';
import * as child_process from 'child_process';
import * as Path from 'path';
import * as Fs from 'fs';

export const activate = (context: vscode.ExtensionContext) => {
    const disposable = vscode.commands.registerCommand('harmonylang.run', () => {
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

    context.subscriptions.push(disposable);

    if (vscode.window.registerWebviewPanelSerializer) {
        vscode.window.registerWebviewPanelSerializer(HarmonyOutputPanel.viewType, {
            async deserializeWebviewPanel(webviewPanel: vscode.WebviewPanel, state: any) {
                HarmonyOutputPanel.revive(webviewPanel, context.extensionUri);
            }
        });
    }
};

export function runHarmony(context: vscode.ExtensionContext, fullFileName: string) {

    // Same configuration for vscode's Python extension
    const config = vscode.workspace.getConfiguration('python').get('pythonPath');

    // Use python3 by default if configurations are not set.
    const pythonPath = config === undefined || typeof config !== 'string' ? 'python3': config;

    const compilerPath = Path.join(__dirname, '..', 'compiler', 'harmony.py');
    const cmd = `${pythonPath} "${compilerPath}" "${fullFileName}"`;
    const process = child_process.exec(cmd, { cwd: Path.dirname(fullFileName) }, (error, stdout, stderr) => {
        let output: string | null = null;
        if (stderr) {
            vscode.window.showInformationMessage('Could not reach Harmony compiler.\n' + stderr);
        } else if (error) {
            // error is non-null when process exits on code 1, i.e. a parser error.
            // Parse error feedback is also in standard output (it's just outputted by python's print function)
            output = 'Build Failed!' + ((stdout.length > 0) ? '\nMessage: ' + stdout : '');
            // Close the current output panel, if it exists, to avoid misinterpretation of output.
            HarmonyOutputPanel.currentPanel?.dispose();
        } else {
            // Show the output panel with the contents of harmony.html because the compilation succeeded.
            output = 'Build Success!' + ((stdout.length > 0) ? '\nOutput: ' + stdout : '');
            if (stdout.includes('harmony.html')) {
                HarmonyOutputPanel.createOrShow(context.extensionUri);
            }
        }
        if (output != null)
            vscode.window.showInformationMessage(output);
    });
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
            const path = Path.dirname(harmonyPath) + "//harmony.html";

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
