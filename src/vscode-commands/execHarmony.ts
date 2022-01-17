import { ArgumentParser } from 'argparse';
import stringArgv from 'string-argv';
import * as vscode from 'vscode';
import * as fs from 'fs';
import * as path from 'path';
import CharmonyPanelController_v2 from '../outputPanel/PanelController_v2';
import Message from '../vscode/Message';
import OutputConsole from '../vscode/OutputConsole';
import ProcessManager from '../vscode/ProcessManager';
import { IntermediateJson } from '../charmony';
import SystemCommands from '../SystemCommands';


const parser = new ArgumentParser();
parser.add_argument('--const', '-c', { nargs: 1 });
parser.add_argument('--module', '-m', { nargs: 1 });

/**
 * Parses a string which declares options to passed into the Harmony compiler.
 * Returns a cleaned string that can be passed for Harmony.
 * Some options are not supported.
 * Only the following flags are supported: [-C name=value, -m module=version]
 * @param options
 * @throws Error if an error occurs when parsing the options string.
 */
function parseOptions(options?: string): string[] {
    if (options == null) return [];
    const optionsArg = stringArgv(options);
    const [ns, oddities] = parser.parse_known_args(optionsArg);
    if (oddities.length > 0) {
        const key = oddities[0];
        throw new Error('Invalid option used: ' + key);
    }
    return Object.entries(ns).filter(([_, v]) => v != null).flatMap(([k, v]) => {
        return [`--${k}`, (v as string[])[0]];
    });
}


function onReceivingIntermediateJSON(results: IntermediateJson, gvOutput: string) {
    if (results != null && results.issue != null && results.issue != 'No issues') {
        CharmonyPanelController_v2.currentPanel?.updateResults(results);
    } else {
        CharmonyPanelController_v2.currentPanel?.updateMessage('No Errors Found.');
        if (gvOutput != '')
            CharmonyPanelController_v2.currentPanel?.updateGraphView(gvOutput);
    }
}


/**
 * Runs Harmony on the program at `fullFileName`.
 * @param context
 * @param fullFileName
 * @param flags Additional flags that are passed into the Harmony compiler.
 * @returns
 */
 export default async function runHarmony(
    context: vscode.ExtensionContext,
    fullFileName: string,
    flags?: string
): Promise<void> {
    OutputConsole.clear();
    const harmonyScript = await SystemCommands.getHarmonyCommandPath();
    if (!harmonyScript || !fs.existsSync(harmonyScript)) {
        Message.error(
            'Cannot find the Harmony script.',
            'Check if you have installed Harmony via [Install Harmony] or',
            'added the path to Harmony via [Add Harmony Library Path].'
        );
        return;
    }
    CharmonyPanelController_v2.currentPanel?.dispose();
    CharmonyPanelController_v2.createOrShow(context.extensionUri);
    let flagArgs: string[];
    try {
        flagArgs = parseOptions(flags);
    } catch (e) {
        if (typeof e === 'object' && e) {
            const msg = (e as Record<string, any>).message;
            OutputConsole.println(msg);
            OutputConsole.show();
            CharmonyPanelController_v2.currentPanel?.startLoading();
            CharmonyPanelController_v2.currentPanel?.updateMessage(msg);
        }
        return;
    }
    if (vscode.workspace.textDocuments.length === 0) {
        Message.error("No files are opened. Cannot run Harmony.");
        return;
    }
    const charmonyCompileCommand = [harmonyScript, ...flagArgs, fullFileName, '--noweb'];
    Message.info("Running Harmony...");
    ProcessManager.startCommand(charmonyCompileCommand, {
        cwd: path.dirname(vscode.workspace.textDocuments[0].uri.fsPath)
    }, (error, stdout, stderr) => {
        CharmonyPanelController_v2.currentPanel?.startLoading();
        OutputConsole.clear();
        if (error) {
            OutputConsole.println(error.message);
            Message.error(error.message);
            return;
        }
        OutputConsole.println(stdout);
        if (error) {
            return CharmonyPanelController_v2.currentPanel?.updateMessage(stdout);
        }
        try {
            const dirname = path.dirname(fullFileName);
            const basename = path.basename(fullFileName);
            const extname = path.extname(fullFileName);
            const CHARMONY_JSON_OUTPUT = path.join(
                dirname, basename.slice(0, basename.length - extname.length) + '.hco'
            );
            const CHARMONY_GV_OUTPUT = path.join(
                dirname, basename.slice(0, basename.length - extname.length) + '.gv'
            );
            const results: IntermediateJson = JSON.parse(fs.readFileSync(CHARMONY_JSON_OUTPUT, {
                encoding: 'utf-8'
            }));
            let gvOutput = '';
            try {
                gvOutput = fs.readFileSync(CHARMONY_GV_OUTPUT, {
                    encoding: 'utf-8'
                });
            } catch (err) {
                if (err instanceof Error)
                    OutputConsole.println(err.message);
            }
            onReceivingIntermediateJSON(results, gvOutput);
        } catch (error) {
            if (typeof error === 'string') {
                OutputConsole.println(error);
                OutputConsole.show();
            }
            CharmonyPanelController_v2.currentPanel?.updateMessage('Could not create analysis file.');
        }
    });
    return;
}
