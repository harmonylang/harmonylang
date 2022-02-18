import * as fs from 'fs';
import * as vscode from 'vscode';
import * as which from 'which';

export default class SystemCommands {
    public static getHarmonyLangConfiguration() {
        return vscode.workspace.getConfiguration('harmonylang');
    }

    public static async updateHarmonyPythonCommandPath(path: string) {
        const config = SystemCommands.getHarmonyLangConfiguration();
        // Prefer Python configurations for HarmonyLang.
        await config.update('pythonPath', path, true);
    }

    public static async getAllPossiblePythonCommandPaths(): Promise<string[]> {
        const pythonPaths: unknown[] = [];
        pythonPaths.push(
            SystemCommands.getHarmonyLangConfiguration().get('pythonPath'),
            ...await which('python3', { all: true }),
            ...await which('python', { all: true }),
            vscode.workspace.getConfiguration('python').get('pythonPath'),
            vscode.workspace.getConfiguration('python').get('defaultInterpreterPath'),
        );
        return pythonPaths.filter((x): x is string => typeof x === 'string' && fs.existsSync(x));
    }

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
