import * as vscode from 'vscode';
import * as Path from 'path';
import * as Fs from 'fs';
import HarmonyJson from './harmony/HarmonyJson';
import { Webview } from "vscode";
import {createStandaloneHtml} from "./feature/standaloneHtml";
import {parse} from "./harmony/IntermediateHarmonyJson";

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
        this._update_c();

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
        console.log("Presenting the webview");
        this._update_c(true);
    }

    public updateMessage(message: string) {
        const webview = this._panel.webview;
        webview.postMessage({ command: 'message', jsonData: message });
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

    private _update_c(hasData = false) {
        const webview = this._panel.webview;
        const harmonyPanel = this._panel;

        const uiPath = Path.join(__dirname, '..', 'harmony-0.9', 'web', 'charmony.html');
        const dataPath = Path.join(__dirname, '..', 'harmony-0.9', 'harmony.json.gz');
        if (!hasData){
            Fs.readFile(uiPath, 'utf-8', function (err, data) {
                if (err) {
                    vscode.window.showInformationMessage(err.message);
                } else {
                    harmonyPanel.webview.html = data;
                }
            });
        }
        if (hasData){
            console.log(uiPath, dataPath);
            this._loadData_c(dataPath, webview);
        }
    }

    private _loadData_c(dataPath: string, webview: Webview) {
        const jsonData = parse(dataPath);
        if (vscode.workspace.workspaceFolders) {
            console.log("Creating standadlone file");
            createStandaloneHtml(vscode.workspace.workspaceFolders[0].uri.path, jsonData);
        }
        console.log(jsonData);
        webview.postMessage({ command: 'load', jsonData });
        webview.onDidReceiveMessage( message => {
            switch (message.command) {
                case 'alert':
                    vscode.window.showErrorMessage(message.text);
                    return;
            }
        }, undefined, undefined);
    }
}
