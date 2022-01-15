import Message from "../vscode/Message";
import ProcessManager from "../vscode/ProcessManager";

/**
 * Ends all processes monitored by the Harmony process manager.
 * Emits messages on ending processes.
 */
export default async function endHarmonyProcesses() {
    Message.info('Ending all Harmony processes...');
    const count = ProcessManager.endAll();
    Message.info(`${count} Harmony process(es) ended.`);
}