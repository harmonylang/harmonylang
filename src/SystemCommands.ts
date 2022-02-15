import * as fs from 'fs';
import * as vscode from 'vscode';
import * as which from 'which';
import * as path from 'path';
import ProcessManager from './vscode/ProcessManager';

export default class SystemCommands {
    public static getHarmonyLangConfiguration() {
        return vscode.workspace.getConfiguration('harmonylang');
    }

    public static async getHarmonyCommandPath(): Promise<string | null> {
        const config = SystemCommands.getHarmonyLangConfiguration();
        const commandPath = config.get('commandPath');
        if (typeof commandPath === 'string' && fs.existsSync(commandPath)) {
            return commandPath;
        }
        try {
            const cmdPath = await which('harmony');
            config.update('commandPath', cmdPath, true);
            return cmdPath;
        } catch {
            const installPath = await SystemCommands.getPythonInstallScriptPath();
            if (!installPath) {
                return null;
            }
            const possibleHarmonyPath = path.join(installPath, 'harmony');
            if (fs.existsSync(possibleHarmonyPath)) {
                config.update('commandPath', possibleHarmonyPath, true);
                return possibleHarmonyPath;
            }
            return null;
        }
    }

    public static async updateHarmonyPythonCommandPath(path: string) {
        const config = SystemCommands.getHarmonyLangConfiguration();
        // Prefer Python configurations for HarmonyLang.
        await config.update('pythonPath', path, true);
    }

    public static async getPythonCommandPath(): Promise<string | null> {
        const config = SystemCommands.getHarmonyLangConfiguration();
        // Prefer Python configurations for HarmonyLang.
        const harmonyPythonPath = config.get('pythonPath');
        if (typeof harmonyPythonPath === 'string' && fs.existsSync(harmonyPythonPath)) {
            return harmonyPythonPath;
        }

        const actualPythonPath = vscode.workspace.getConfiguration('python').get('pythonPath');
        if (typeof actualPythonPath === 'string' && fs.existsSync(actualPythonPath)) {
            return actualPythonPath;
        }

        const anotherPossiblePythonPath = vscode.workspace.getConfiguration('python').get('defaultInterpreterPath');
        if (typeof anotherPossiblePythonPath === 'string' && fs.existsSync(anotherPossiblePythonPath)) {
            return anotherPossiblePythonPath;
        }
        return which('python3')
            .catch(() => which('python'))
            .catch(() => null);
    }

    public static async getPythonInstallScriptPath(): Promise<string | null> {
        const pythonCommand = await SystemCommands.getPythonCommandPath();
        if (!pythonCommand) return null;
    
        const command = [pythonCommand, '-c', 'import os,sysconfig;print(sysconfig.get_path("scripts",f"{os.name}_user"))'];
        return new Promise((resolve) => {
            ProcessManager.startCommand(command, {}, (err, stdout) => {
                if (err) {
                    return resolve(null);
                }
                const possibleInstallPath = stdout.trim();
                if (!fs.existsSync(possibleInstallPath)) {
                    return resolve(null);
                }
                return resolve(possibleInstallPath);
            });
        });
    }
}
