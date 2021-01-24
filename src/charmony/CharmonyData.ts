
type thread_id = string;
type variable_name = string;

export type CharmonyTopLevel = {
    issue: string;
    idToThreadName: Record<thread_id, string>;
    executionPath: CharmonySlice[];
    macroSteps: CharmonyMacroStep[];
    executedCode: CharmonyExecutedCode[];
};

export type CharmonyMacroStep = {
    tid: string;
    name: string;
    duration: number;
    startingSliceIdx: number;
}

export type CharmonySlice = {
    tid: string;
    name: string;

    startingTime: number;
    steps: CharmonyMicroStep[];
    duration: number;

    idToStackTrace: Record<thread_id, CharmonyStackTrace>;
    sharedValues: Record<variable_name, unknown>;
};

export type CharmonyMicroStep = { pc: number; npc: number; };

export type CharmonyStackTrace = {
    tid: string;

    status: string;
    mode?: string;
    chosen?: unknown;
    failure?: string;
    atomic?: number;
    readonly?: number;
    interruptLevel?: number;

    callStack: CharmonyCallStack[];
}

export type CharmonyCallStack = {
    vars: Record<variable_name, unknown>;
    method: string;
    pc: string;
    callType: string;
};

export type CharmonyExecutedCode = {
    assembly: CharmonyAssemblyCode[];
    file: string;
    line: string;
    sourceCode: string;
    initialPc: number;
};

export type CharmonyAssemblyCode = { assembly: string; explain: string; };
