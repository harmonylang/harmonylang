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