import * as vscode from 'vscode';
import * as fs from 'fs';
import { Webview } from "vscode";
import {createStandaloneHtml} from "../feature/standaloneHtml";
import {parse} from "../harmony/CharmonyJson";
import {CHARMONY_HTML_FILE, EXAMPLE_CHARM_JSON, RESOURCE_DIR} from "../config";

export default class CharmonyPanelController {
    public static currentPanel: CharmonyPanelController | undefined;
    public static readonly viewType = 'harmonyOutput';

    private readonly panel: vscode.WebviewPanel;
    private readonly extensionUri: vscode.Uri;
    private disposables: vscode.Disposable[] = [];

    public static createOrShow(extensionUri: vscode.Uri) {
        const column = vscode.ViewColumn.Beside;

        // If we already have a panel, show it.
        if (CharmonyPanelController.currentPanel) {
            CharmonyPanelController.currentPanel.panel.reveal(column);
            return;
        }

        // Otherwise, create a new panel.
        const panel = vscode.window.createWebviewPanel(
            CharmonyPanelController.viewType,
            'Harmony Output',
            column,
            {
                // Enable javascript in the webview
                enableScripts: true,
                localResourceRoots: [vscode.Uri.file(RESOURCE_DIR)]
            }
        );
        CharmonyPanelController.currentPanel = new CharmonyPanelController(panel, extensionUri);
    }

    public static revive(panel: vscode.WebviewPanel, extensionUri: vscode.Uri) {
        CharmonyPanelController.currentPanel = new CharmonyPanelController(panel, extensionUri);
    }

    private constructor(panel: vscode.WebviewPanel, extensionUri: vscode.Uri) {
        this.panel = panel;
        this.extensionUri = extensionUri;

        // Set the resource-view's initial html content
        this.update();

        // Listen for when the panel is disposed
        // This happens when the user closes the panel or when the panel is closed programatically
        this.panel.onDidDispose(() => this.dispose(), null, this.disposables);
    }

    public updateResults() {
        // Send a message to the webview webview.
        // You can send any JSON serializable data.
        console.log("Presenting the webview");
        this.update(true);
    }

    public updateMessage(message: string) {
        const webview = this.panel.webview;
        webview.postMessage({ command: 'message', jsonData: message });
    }

    public dispose() {
        CharmonyPanelController.currentPanel = undefined;

        // Clean up our resources
        this.panel.dispose();

        while (this.disposables.length) {
            const x = this.disposables.pop();
            if (x) {
                x.dispose();
            }
        }
    }

    private update(hasData = false) {
        const webview = this.panel.webview;
        const harmonyPanel = this.panel;

        const dataPath = EXAMPLE_CHARM_JSON;
        if (!hasData){
            console.log("Looking for data");
            fs.readFile(CHARMONY_HTML_FILE, 'utf-8', function (err, data) {
                if (err) {
                    console.log(err);
                    vscode.window.showInformationMessage(err.message);
                } else {
                    harmonyPanel.webview.html = data;
                }
            });
        }
        if (hasData){
            console.log(CHARMONY_HTML_FILE, dataPath);
            this.loadData(dataPath, webview);
        }
    }

    private loadData(dataPath: string, webview: Webview) {
        console.log("Step 1");
        const jsonData = parse(dataPath);
        console.log("Step 2");
        if (vscode.workspace.workspaceFolders) {
            console.log("Creating a standalone HTML file");
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
