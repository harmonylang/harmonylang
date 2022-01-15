import SystemCommands from "../SystemCommands";
import Message from "../vscode/Message";
import OutputConsole from "../vscode/OutputConsole";
import ProcessManager from "../vscode/ProcessManager";

export default async function runBuildHarmonyModelChecker() {
    Message.info("Building model checker");
    const cmdPath = await SystemCommands.getHarmonyCommandPath();
    if (!cmdPath) {
        Message.error("Failed to find Harmony command. Check that the `harmony` command is available in PATH.");
        return;
    }
    ProcessManager.startCommand([cmdPath, "--build-model-checker"], {}, (err, stdout) => {
        if (err) {
            OutputConsole.println(err.message);
            Message.error(err.message);
            return;
        }
        if (stdout) {
            OutputConsole.println(stdout);
            Message.info(stdout);
        }
        Message.info("Built model checker");
    })
}