import * as vscode from 'vscode';
import * as fs from 'fs';
import * as path from 'path';

export default class HarmonyInstallationStatusBar {

    private static _internalStatusBar: HarmonyInstallationStatusBar;
    private statusBar: vscode.StatusBarItem;
    private configSection: string;
    private configKey: string;

    private constructor(configSection: string, key: string) {
        this.statusBar = vscode.window.createStatusBarItem(vscode.StatusBarAlignment.Left);
        this.configSection = configSection;
        this.configKey = key;
        const installationPath = vscode.workspace.getConfiguration(this.configSection).get(this.configKey);
        if (typeof installationPath === 'string') {
            this.setInstallPath(installationPath);
        }
        this.statusBar.tooltip = 'This is the directory where Harmony is located. You can change it via `Set Harmony PATH`';
    }

    static Build(configSection: string, key: string): HarmonyInstallationStatusBar {
        HarmonyInstallationStatusBar._internalStatusBar = new HarmonyInstallationStatusBar(configSection, key);
        return HarmonyInstallationStatusBar._internalStatusBar;
    }

    show() {
        this.statusBar.show();
    }

    dispose() {
        this.statusBar.dispose();
    }

    setInstallPath(installationPath: string): string | null {
        const error = this.installationExists(installationPath);
        if (error) {
            return error;
        } else {
            vscode.workspace.getConfiguration('harmonylang.settings')
                .update('libraryPath', installationPath, vscode.ConfigurationTarget.Global);
            this.statusBar.text = `Harmony at: ${installationPath}`;
        }
        return null;
    }

    private installationExists(installationPath: string): string | null {
        const pathValue = installationPath || this.statusBar.text;
        const script = path.join(pathValue, 'harmony.py');
        if (!fs.existsSync(pathValue)) {
            return `PATH ${pathValue} does not exist`;
        }
        if (!fs.statSync(pathValue).isDirectory()) {
            return `PATH ${pathValue} is not a directory`;
        }
        if (!fs.existsSync(script)) {
            return `Harmony compiler ${script} does not exist`;
        }
        if (!fs.statSync(script).isFile()) {
            return `Harmony compiler ${script} is not a file`;
        }
        return null;
    }
}