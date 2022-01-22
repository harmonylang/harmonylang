import { INSTALL_HARMONY_COMMAND } from '../config';
import Message from '../vscode/Message';
import OutputConsole from '../vscode/OutputConsole';
import ProcessManager from '../vscode/ProcessManager';

/**
 * This will run the Harmony installation script.
 * If Harmony was already instead in the extension's directory,
 * then delete the existing installation and re-install.
 */
export default async function runInstall() {
    return new Promise<string>((resolve, reject) => {
        ProcessManager.startCommand(INSTALL_HARMONY_COMMAND, {}, (err, stdout, stderr) => {
            OutputConsole.clear();
            if (err) {
                reject(stdout + "\n\n" + stderr);
                return;
            }
            resolve(stdout);
        });
    });
}
