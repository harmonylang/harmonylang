import { ArgumentParser } from 'argparse';
import stringArgv from 'string-argv';

import * as vscode from 'vscode';
import * as fs from 'fs';
import * as path from 'path';

import * as tmp from 'tmp';
import CharmonyPanelController_v2 from '../outputPanel/PanelController_v2';
import Message from '../vscode/Message';
import OutputConsole from '../vscode/OutputConsole';
import ProcessManager from '../vscode/ProcessManager';
import { CharmonyTopLevelLatest } from '../charmony';
import SystemCommands from '../SystemCommands';
import { HARMONY_ENTRY_SCRIPT } from '../config';


const parser = new ArgumentParser();
parser.add_argument('--const', '-c', { action: 'append' });
parser.add_argument('--module', '-m', { action: 'append' });
parser.add_argument('--intf', '-i', { nargs: 1 });

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
    const flags: string[] = [];
    ns.const?.forEach((arg: string) => {
        flags.push('--const', arg);
    });
    ns.module?.forEach((arg: string) => {
        flags.push('--module', arg);
    });
    if (ns.intf) {
        flags.push('--intf', ns.intf[0]);
    }
    return flags;
}


function onReceivingIntermediateJSON(results: CharmonyTopLevelLatest, defaultHarmonyOutputHtm: string | null = null) {
    if (results != null && results.issue != null && results.issue != 'No issues') {
        CharmonyPanelController_v2.currentPanel?.updateResults(results, defaultHarmonyOutputHtm);
    } else {
        CharmonyPanelController_v2.currentPanel?.updateMessage('No Errors Found.');
    }
}

function onRequestGraphView(generateGVCommand: string[], gvFilename: string) {
    ProcessManager.startCommand(generateGVCommand, {
        cwd: path.dirname(vscode.workspace.textDocuments[0].uri.fsPath)
    }, (error, stdout) => {
        OutputConsole.println(stdout);
        if (error) {
            OutputConsole.println(error.message);
            return;
        }
        let gvOutput = '';
        try {
            gvOutput = fs.readFileSync(gvFilename, 'utf-8');
            CharmonyPanelController_v2.currentPanel?.updateGraphView(gvOutput);
        } catch (err) {
            if (err instanceof Error)
                OutputConsole.println(err.message);
        }
    });
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
    const getPythonCommandPath = await SystemCommands.getPythonCommandPath();

    if (!getPythonCommandPath) {
        Message.error(
            'Cannot find the Python script.',
            'Check if you have installed Python.',
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
        Message.error('No files are opened. Cannot run Harmony.');
        return;
    }
    const tmpFilename = tmp.tmpNameSync();
    const hvmFilename = tmpFilename + '.hvm';
    const hcoFilename = tmpFilename + '.hco';
    const htmFilename = tmpFilename + '.htm';
    const gvFilename = tmpFilename + '.gv';

    const charmonyCompileCommand = [
        getPythonCommandPath,
        '-c',
        HARMONY_ENTRY_SCRIPT,
        ...flagArgs,
        '-o', hvmFilename,
        '-o', hcoFilename,
        '-o', htmFilename,
        '--noweb',
        fullFileName
    ];

    Message.info('Running Harmony...');
    console.log(flagArgs);
    ProcessManager.startCommand(charmonyCompileCommand, {
        cwd: path.dirname(vscode.workspace.textDocuments[0].uri.fsPath)
    }, (error, stdout) => {
        CharmonyPanelController_v2.currentPanel?.startLoading();
        OutputConsole.clear();
        OutputConsole.println(stdout);
        if (error) {
            OutputConsole.println(error.message);
            Message.error(error.message);
            CharmonyPanelController_v2.currentPanel?.updateMessage(stdout);
            return;
        }
        const results: CharmonyTopLevelLatest = JSON.parse(fs.readFileSync(hcoFilename, 'utf-8'));
        try {
            onReceivingIntermediateJSON(results, htmFilename);
            OutputConsole.println(`Output html analysis file found here: ${htmFilename}`);
            CharmonyPanelController_v2.currentPanel?.panel.webview.onDidReceiveMessage(
                message => {
                    switch (message.command) {
                    case 'requestGraph': {
                        const generateGVCommand = [
                            getPythonCommandPath,
                            '-c',
                            HARMONY_ENTRY_SCRIPT,
                            ...flagArgs,
                            '-o', gvFilename,
                            '--noweb',
                            hcoFilename
                        ];
                        Message.info('Generating graph...');
                        onRequestGraphView(generateGVCommand, gvFilename);
                    } break;
                    }
                },
                undefined,
                context.subscriptions
            );
            vscode.window.showInformationMessage('Created HTML analysis file', ...['Open Raw']).then(option => {
                if (option === 'Open Raw') {
                    let command = '';
                    switch (process.platform) {
                    case 'darwin':
                        command = 'open';
                        break;
                    case 'win32':
                        command = 'explorer';
                        break;
                    default:
                        command = 'xdg-open';
                        break;
                    }
                    ProcessManager.startCommand([command, htmFilename], {}, (error, _) => {
                        if (error) {
                            OutputConsole.println(error.message);
                            Message.error(error.message);
                        }
                    });
                }
            });
        } catch (error) {
            console.log(error);
            if (typeof error === 'string') {
                OutputConsole.println(error);
                OutputConsole.show();
            }
            CharmonyPanelController_v2.currentPanel?.updateMessage('Could not create analysis file.');
        }
    });
}
