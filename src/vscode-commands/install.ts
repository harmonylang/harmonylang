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
    try {
        Message.info('Starting installation process');
        ProcessManager.startCommand(INSTALL_HARMONY_COMMAND, {}, (err, stdout) => {
            OutputConsole.clear();
            if (err) {
                OutputConsole.println(err.message);
                Message.error(err.message);
                return;
            }
            if (stdout) {
                OutputConsole.println(stdout);
                Message.info(stdout);
            }
            Message.info('Installed Harmony locally');
        });
    } catch (e) {
        OutputConsole.println(JSON.stringify(e));
        Message.error('Install Harmony failed. See the console log in the DevTools for more error outputs.');
    }
}