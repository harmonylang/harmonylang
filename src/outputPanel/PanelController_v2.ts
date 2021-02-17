import * as vscode from 'vscode';
import {Webview} from 'vscode';
import * as fs from 'fs';
import {createStandaloneHtml} from "../feature/standaloneHtml";
import {CHARMONY_HTML_FILE, DEBUG_DIR, RESOURCE_DIR} from "../config";
import {IntermediateJson} from "../charmony/IntermediateJson";
import parseCharmony from "../charmony/CharmonyData";
import * as path from "path";

export default class CharmonyPanelController_v2 {
    public static currentPanel: CharmonyPanelController_v2 | undefined;
    public static readonly viewType = 'harmonyOutput';

    private readonly panel: vscode.WebviewPanel;
    private readonly extensionUri: vscode.Uri;
    private disposables: vscode.Disposable[] = [];

    public static createOrShow(extensionUri: vscode.Uri) {
        const column = vscode.ViewColumn.Beside;

        // If we already have a panel, show it.
        if (CharmonyPanelController_v2.currentPanel) {
            CharmonyPanelController_v2.currentPanel.panel.reveal(column);
            return;
        }

        // Otherwise, create a new panel.
        const panel = vscode.window.createWebviewPanel(
            CharmonyPanelController_v2.viewType,
            'Harmony Output',
            column,
            {
                // Enable javascript in the webview
                enableScripts: true,
                localResourceRoots: [vscode.Uri.file(RESOURCE_DIR)]
            }
        );
        CharmonyPanelController_v2.currentPanel = new CharmonyPanelController_v2(panel, extensionUri);
    }

    public static revive(panel: vscode.WebviewPanel, extensionUri: vscode.Uri) {
        CharmonyPanelController_v2.currentPanel = new CharmonyPanelController_v2(panel, extensionUri);
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

    public updateResults(data: IntermediateJson) {
        // Send a message to the webview webview.
        // You can send any JSON serializable data.
        console.log("Presenting the webview");
        this.update(data);
    }

    public startLoading() {
        const webview = this.panel.webview;
        webview.postMessage({ command: 'start', jsonData: null });
    }

    public updateMessage(message: string) {
        const webview = this.panel.webview;
        webview.postMessage({ command: 'message', jsonData: message });
    }

    public dispose() {
        CharmonyPanelController_v2.currentPanel = undefined;

        // Clean up our resources
        this.panel.dispose();

        while (this.disposables.length) {
            const x = this.disposables.pop();
            if (x) {
                x.dispose();
            }
        }
    }

    private update(data?: IntermediateJson) {
        const webview = this.panel.webview;
        const harmonyPanel = this.panel;

        if (data == null){
            console.log("Looking for data");
            try {
                harmonyPanel.webview.html = fs.readFileSync(CHARMONY_HTML_FILE, 'utf-8');
            } catch (err) {
                console.log(err);
                vscode.window.showInformationMessage(err.message);
            }
        }
        if (data != null) {
            this.loadData(data, webview);
        }
    }

    private loadData(data: IntermediateJson, webview: Webview) {
        const harmonyJsonData = parseCharmony(data);

        if (fs.existsSync(DEBUG_DIR)) {
            fs.writeFileSync(path.join(DEBUG_DIR, "visual.json"),
                JSON.stringify(harmonyJsonData, undefined, 4));
        }

        // if (vscode.workspace.workspaceFolders) {
            // console.log("Creating a standalone HTML file");
            // createStandaloneHtml(vscode.workspace.workspaceFolders[0].uri.path, harmonyJsonData);
        // }
        webview.postMessage({ command: 'load', jsonData: harmonyJsonData });
        webview.onDidReceiveMessage( message => {
            switch (message.command) {
                case 'alert':
                    vscode.window.showErrorMessage(message.text);
                    return;
            }
        }, undefined, undefined);
    }
}
