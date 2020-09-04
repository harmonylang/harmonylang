import * as vscode from 'vscode';
import * as child_process from 'child_process';
import * as Path from 'path';

export const activate = (context: vscode.ExtensionContext) => {
    const disposable = vscode.commands.registerCommand('harmonylang.run', () => {
        const editor = vscode.window.activeTextEditor;
        const doc = editor != null ? editor.document : null;
        const path = doc != null ? doc.fileName : null;
        const ext = Path.extname(path || '');
        const harmonyExt = ".hny .sab";

        if (harmonyExt.indexOf(ext) < 0) {
            vscode.window.showInformationMessage('Target file must be an OCaml signature or implementation file');
            return;
        }

        if (path === null) {
            vscode.window.showInformationMessage('Could not locate target file.');
            return;
        }

        runHarmony(path);
    });

    context.subscriptions.push(disposable);
};

export function runHarmony(fullFileName: string) {
    const harmonyPython = vscode.workspace.getConfiguration('harmonylang').get('location');
    if (harmonyPython === undefined) {
        vscode.window.showInformationMessage('Please set your Harmony compiler path at Preferences > Extensions > HarmonyLang > Location');
        return;
    }
    const cmd = "python3 \"" + harmonyPython + "\\harmony.py\" \"" + fullFileName + "\"";
    child_process.exec(cmd, (error, stdout, stderr) => {
        if (stderr) {
            vscode.window.showInformationMessage('Build Failed. ' + error);
        } else {
            vscode.window.showInformationMessage('Build Success! Output: ' + stdout);
        }
    });
    return;
}