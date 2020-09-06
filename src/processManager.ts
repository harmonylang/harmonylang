import * as child_process from "child_process";

export interface ProcessManager {
  startCommand(
    cmd: string,
    options: child_process.ExecOptions,
    callback: (
      error: child_process.ExecException | null,
      stdout: string,
      stderr: string
    ) => void
  ): string;

  startInterval(callback: (...args: any[]) => void, ms: number): string;

  end(id: string): void;

  endAll(): void;

  readonly processesAreKilled: boolean;
}

/**
 * An API for managing event-loop and concurrent processes.
 */
export class ProcessManagerImpl implements ProcessManager {
  private constructor() {
    this.processesAreKilled = false;
    this.runningIntervals = {};
    this.intervalCount = 0;

    this.runningCommands = {};
    this.commandCount = 0;
  }

  private static instance: ProcessManager | undefined = undefined;
  /**
   * Creates a new instance of a process manager if an instance does not exist,
   * or returns the existing instance.
   */
  static init(): ProcessManager {
    if (this.instance === undefined) {
      this.instance = new ProcessManagerImpl();
    }
    return this.instance;
  }

  /**
   * If true, then processes are being killed.
   */
  processesAreKilled: boolean;

  private readonly runningIntervals: Record<string, NodeJS.Timeout>;
  private intervalCount: number;

  private readonly runningCommands: Record<string, child_process.ChildProcess>;
  private commandCount: number;

  /**
   * Starts and runs a command on a separate process, and returns the id associated with that process.
   * @param cmd
   * @param options
   * @param callback
   */
  startCommand(
    cmd: string,
    options: child_process.ExecOptions,
    callback: (
      error: child_process.ExecException | null,
      stdout: string,
      stderr: string
    ) => void
  ): string {
    this.processesAreKilled = false;
    const id = `command_${this.runningCommands}`;
    this.runningCommands[id] = child_process.exec(cmd, options, callback);
    this.commandCount++;
    return id;
  }

  /**
   * Runs a callback function at every given interval, and returns the id associated with that interval.
   * @param callback
   * @param ms Number of milliseconds for the interval
   */
  startInterval(callback: (...args: any[]) => void, ms: number): string {
    this.processesAreKilled = false;
    const id = `interval_${this.runningIntervals}`;
    this.runningIntervals[id] = setInterval(callback, ms);
    this.intervalCount++;
    return id;
  }

  private endInterval(id: string) {
    if (this.runningIntervals[id] != null) {
      clearInterval(this.runningIntervals[id]);
      delete this.runningIntervals[id];
      this.intervalCount--;
    }
  }

  private endCommand(id: string) {
    if (this.runningCommands[id] != null) {
      if (!this.runningCommands[id].killed) {
        this.runningCommands[id].kill();
      }
      delete this.runningCommands[id];
      this.commandCount--;
    }
  }

  /**
   * Ends a command or interval given the id.
   * @param id
   */
  end(id: string): void {
    const processType = id.substring(0, id.indexOf('_'));
    switch (processType) {
      case 'interval': return this.endInterval(id);
      case 'command': return this.endCommand(id);
    }
  }

  /**
   * Ends all running commands and intervals.
   */
  endAll(): void {
    this.processesAreKilled = true;
    Object.keys(this.runningCommands).forEach(cmdId => {
      if (!this.runningCommands[cmdId].killed) this.runningCommands[cmdId].kill();
    });
    Object.keys(this.runningIntervals).forEach(intervalId => {
      clearInterval(this.runningIntervals[intervalId]);
    });
    this.commandCount = 0;
    this.intervalCount = 0;
  }
}
