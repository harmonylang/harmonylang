import SystemCommands from '../SystemCommands';
import Message from '../vscode/Message';
import OutputConsole from '../vscode/OutputConsole';
import ProcessManager from '../vscode/ProcessManager';


const INSTALL_HARMONY_COMMAND_ARGS = [
    'install',
    '--upgrade',
    '--user',
    'harmony-model-checker'
];

/**
 * This will run the Harmony installation script.
 * If Harmony was already instead in the extension's directory,
 * then update with the latest version from PyPi
 */
export default async function runInstall() {
    const pythonPath = await SystemCommands.getPythonCommandPath();
    return new Promise<string>((resolve, reject) => {
        if (!pythonPath) {
            reject('Could not find a python path. Please install Python3 or report this if you believe it is an error.');
            return;
        }
        ProcessManager.startCommand([pythonPath, '-m', 'pip', ...INSTALL_HARMONY_COMMAND_ARGS], {}, (err, stdout, stderr) => {
            OutputConsole.clear();
            if (err) {
                reject(stdout + '\n\n' + stderr + '\n\n');
                return;
            }
            // Set the pythonPath to the HarmonyLang one if it works.
            SystemCommands.updateHarmonyPythonCommandPath(pythonPath);
            resolve(stdout);
        });
    });
}

/**
 * Parses the output messages from pip to produce
 * user readable output.
 */
export async function printReadableInstallMessage(msgs:string) {
    const msgLines = msgs.trim().split('\n');
    const lastLine = msgLines[msgLines.length - 1];
    if (lastLine.startsWith('Requirement already satisfied: ')){
        Message.info('Harmony already installed.');
    } else {
        if (lastLine.startsWith('ERROR:')){
            Message.error(lastLine);
        } else {
            Message.info(lastLine);
        }
    }
}