import * as fs from 'fs';
import * as vscode from 'vscode';
import * as which from 'which';

export default class SystemCommands {
    private static getHarmonyLangConfiguration() {
        return vscode.workspace.getConfiguration('harmonylang');
    }

    /**
     * Set the extension-configuration of pythonPath.
     */
    public static async updateHarmonyPythonCommandPath(path: string) {
        const config = SystemCommands.getHarmonyLangConfiguration();
        // Prefer Python configurations for HarmonyLang.
        await config.update('pythonPath', path, true);
    }

    /**
     * Returns all possible file paths that 'may' be Python3.
     * If an extension-configuration of pythonPath exists, then it is the first element
     * of the returned array.
     */
    public static async getAllPossiblePythonCommandPaths(): Promise<string[]> {
        const pythonPaths: unknown[] = [];
        // Prefer the extension-set pythonPath first, and then remaining possible paths
        // as fallback.
        pythonPaths.push(
            SystemCommands.getPythonCommandPath(),
            vscode.workspace.getConfiguration('python').get('pythonPath'),
            vscode.workspace.getConfiguration('python').get('defaultInterpreterPath'),
        );
        for (const command of ['python3', 'python']) {
            try {
                pythonPaths.push(...await which(command, { all: true }));
            } catch { /* no command named python3 found using `which` */ }
        }
        // TODO: Convert this array into an iterator that lazily checks if the element is
        // a string & exists (& checks if it is >= python3.6).
        return pythonPaths.filter((x): x is string => typeof x === 'string' && fs.existsSync(x));
    }

    /**
     * Retrieves the extension-set pythonPath, if it exists.
     */
    public static async getPythonCommandPath(): Promise<string | null> {
        const config = SystemCommands.getHarmonyLangConfiguration();
        // Prefer Python configurations for HarmonyLang.
        const harmonyPythonPath = config.get('pythonPath');
        if (typeof harmonyPythonPath === 'string' && fs.existsSync(harmonyPythonPath)) {
            return harmonyPythonPath;
        }
        return null;
    }

}
