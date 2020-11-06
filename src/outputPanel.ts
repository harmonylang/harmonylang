import * as vscode from 'vscode';
import * as Path from 'path';
import * as Fs from 'fs';
import * as zlib from 'zlib';
import HarmonyJson from './harmony/HarmonyJson';
import { Webview } from "vscode";

export default class HarmonyOutputPanel {
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
                enableScripts: true,
                localResourceRoots: [vscode.Uri.file(Path.join(__dirname, '..', 'harmony-0.9', 'web'))]
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
        // this._panel.onDidChangeViewState(
        //     e => {
        //         if (this._panel.visible) {
        //             this._update();
        //         }
        //     },
        //     null,
        //     this._disposables
        // );

        // Handle messages from the webview
        // this._panel.webview.onDidReceiveMessage(
        //     message => {
        //         this._update();
        //     },
        //     null,
        //     this._disposables
        // );
    }

    public updateResults() {
        // Send a message to the webview webview.
        // You can send any JSON serializable data.
        this._panel.webview.postMessage({ command: 'load', jsonData: "Put on screen" });
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
            const uiPath = Path.join(__dirname, '..', 'harmony-0.9', 'web', 'index.html');
            const dataPath = Path.join(__dirname, '..', 'harmony-0.9', 'harmony.json.gzip');

            Fs.readFile(uiPath, 'utf-8', function (err, data) {
                if (err) {
                    vscode.window.showInformationMessage(err.message);
                }
                harmonyPanel.webview.html = data;
            });

            this._loadData(dataPath, webview);
        }
    }

    private _loadData(dataPath: string, webview: Webview) {
        const dataInterface = new HarmonyJson(dataPath);
        const inOrderCode = dataInterface.getInOrderCode();
        const codeBlock = dataInterface.getAllMacroSteps();
        const processes = dataInterface.getProcesses();
        const sharedVariables = dataInterface.getSharedVariables();
        const nodes = dataInterface.getAllNodes();
        const allCode = dataInterface.getAllCode();
        const issues = dataInterface.getIssues();

        const jsonData = {
            processes,
            sharedVariables,
            inOrderCode,
            codeBlock,
            nodes,
            allCode,
            issues
        };

        console.log(dataInterface);
        webview.postMessage({ command: 'load', jsonData: jsonData });
    }
}
