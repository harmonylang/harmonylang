import * as vscode from 'vscode';
import * as fs from 'fs';
import * as path from 'path';

/**
 * A VsCode status bar that displays the path of the registered current Harmony library.
 */
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

    /**
     * Builds the singleton status bar.
     * @param configSection The configuration section with the pathname to Harmony.
     * @param key The key value mapped to the pathname to Harmony.
     * @returns 
     */
    static Build(configSection: string, key: string): HarmonyInstallationStatusBar {
        HarmonyInstallationStatusBar._internalStatusBar = new HarmonyInstallationStatusBar(configSection, key);
        return HarmonyInstallationStatusBar._internalStatusBar;
    }

    /**
     * Displays the status bar.
     */
    show() {
        this.statusBar.show();
    }

    /**
     * Removes the status bar.
     */
    dispose() {
        this.statusBar.dispose();
    }

    /**
     * Updates the Harmony installation path in the status bar and in the configuration globally,
     * if and only if installation path is a directory that contains the "harmony.py" compiler.
     * 
     * @param installationPath 
     * @returns An error message if the installation path is invalid. Otherwise, null.
     */
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

    /**
     * Checks if the installation path exists and contains the Harmony compiler file.
     * @param installationPath 
     * @returns An error message if the installation path is invalid. Otherwise, null.
     */
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