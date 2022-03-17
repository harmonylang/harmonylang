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
    const pythonPaths = await SystemCommands.getAllPossiblePythonCommandPaths();
    if (pythonPaths.length === 0) {
        throw 'Could not find a python path. Please install Python3 or report this if you believe it is an error.';
    }

    OutputConsole.println('Attempting to install harmony-model-checker via the following:');
    pythonPaths.forEach(p => OutputConsole.println(`\t${p}`));

    const errorMessages: string[] = [];
    for (const p of pythonPaths) {
        const {error, stdout, stderr} = await ProcessManager.startCommandAsync([p, '-m', 'pip', ...INSTALL_HARMONY_COMMAND_ARGS], {});
        if (error) {
            errorMessages.push(`Failed to install harmony-model-checker via ${p}`);
            errorMessages.push(error.message);
            errorMessages.push(stdout);
            errorMessages.push(stderr);
            continue;
        }
        // Write any error messages encountered.
        OutputConsole.println(errorMessages.join('\n'));

        // Set the pythonPath to the HarmonyLang one if it works.
        SystemCommands.updateHarmonyPythonCommandPath(p);
        return stdout;
    }
    throw errorMessages.join('\n');
}

/**
 * Parses the output messages from pip to produce
 * user readable output.
 */
export async function printReadableInstallMessage(msgs:string) {
    const MAX_MESSAGES = 3;
    // Reversing the message order, as higher priority errors are ordered closer to the bottom.
    const msgLines = msgs.trim().split('\n').reverse();
    let highestOutputLevel = 0;
    let harmonyInstalled = false;
    let totalMessages = 0;

    for (const msg of msgLines){
        // We cap the number of messages at 3 to avoid overloading the notification tray
        if (totalMessages < MAX_MESSAGES){
            if (msg.startsWith('ERROR:')){
                highestOutputLevel = 2;
                totalMessages++;
                Message.error(msg);
            } else if (msg.startsWith('WARNING:')) {
                highestOutputLevel = 1;
                totalMessages++;
                Message.warn(msg);
            }
        }

        if (msg.includes('Requirement already satisfied: harmony-model-checker')){
            harmonyInstalled = true;
        }
    }

    if (harmonyInstalled){
        // If Harmony is already installed, that's all they need to know.
        Message.info('Harmony already installed.');
    } else if (highestOutputLevel == 0) {
        // If Harmony isn't installed, this is either a successful install or a non-pip error.
        Message.info(msgLines[0]);
    }
}