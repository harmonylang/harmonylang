import * as child_process from 'child_process';

export default class ProcessManager {
    private static runningIntervals: Record<string, NodeJS.Timeout> = {};
    private static intervalCount = 0;
    private static runningCommands: Record<string, child_process.ChildProcess> = {};
    private static commandCount = 0;
    private static processesAreKilled = false;

    public static startCommandAsync(
        cmd: string[],
        options: child_process.ExecOptions,
    ): Thenable<{error: child_process.ExecException | null; stdout: string; stderr: string}> {
        return new Promise(resolve => {
            this.startCommand(cmd, options, (error, stdout, stderr) => {
                resolve({error, stdout, stderr});
            });
        });
    }

    public static startCommand(
        cmd: string[],
        options: child_process.ExecOptions,
        callback: (
            error: child_process.ExecException | null,
            stdout: string,
            stderr: string
        ) => void
    ): string {
        ProcessManager.processesAreKilled = false;
        const id = `command_${ProcessManager.commandCount}`;
        const process = child_process.execFile(cmd[0], cmd.slice(1), options, (err, stdout, stderr) => {
            if (ProcessManager.processesAreKilled) return;

            delete ProcessManager.runningCommands[id];
            ProcessManager.commandCount--;
            callback(err, stdout, stderr);
        });
        ProcessManager.runningCommands[id] = process;
        ProcessManager.commandCount++;
        return id;
    }

    public static startInterval(callback: (...args: any[]) => void, ms: number, ...args: any[]): string {
        ProcessManager.processesAreKilled = false;
        const id = `interval_${ProcessManager.intervalCount}`;
        ProcessManager.runningIntervals[id] = setInterval(callback, ms, ...args);
        ProcessManager.intervalCount++;
        return id;
    }

    public static end(id: string) {
        const processType = id.substring(0, id.indexOf('_'));
        switch (processType) {
        case 'interval':
            return ProcessManager.endInterval(id);
        case 'command':
            return ProcessManager.endCommand(id);
        }
    }

    private static endInterval(id: string) {
        if (ProcessManager.runningIntervals[id] != null) {
            clearInterval(ProcessManager.runningIntervals[id]);
            delete ProcessManager.runningIntervals[id];
            ProcessManager.intervalCount--;
        }
    }
    private static endCommand(id: string) {
        if (ProcessManager.runningCommands[id] != null) {
            if (ProcessManager.runningCommands[id].exitCode == null) {
                process.kill(ProcessManager.runningCommands[id].pid);
            }
            delete ProcessManager.runningCommands[id];
            ProcessManager.commandCount--;
        }
    }

    /**
     * Kills/Stops all commands/intervals managed by ProcessManager.
     * @returns The number of commands/intervals ended by ProcessManager
     */
    public static endAll(): number {
        ProcessManager.processesAreKilled = true;
        const commandIds = [
            ...Object.keys(ProcessManager.runningCommands),
            ...Object.keys(ProcessManager.runningIntervals)
        ];
        commandIds.forEach(cmdId => this.end(cmdId));
        ProcessManager.runningIntervals = {};
        ProcessManager.runningCommands = {};
        ProcessManager.commandCount = 0;
        ProcessManager.intervalCount = 0;

        return commandIds.length;
    }
}
