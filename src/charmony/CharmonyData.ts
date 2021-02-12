import {IntermediateJson} from "./IntermediateJson";
import {getExecutedCode} from "./code/getExecutedCode";
import {genExecutionPath} from "./new_exec/genExecutionPath";

type thread_id = string;
type variable_name = string;


export default function parseCharmony(json: IntermediateJson): CharmonyTopLevel {
    const executedCode: CharmonyExecutedCode[] = getExecutedCode(json);
    const {idToThreadName, slices, issue, macroSteps, microSteps} = genExecutionPath(json);

    return {
        slices,
        idToThreadName,
        issue,
        macroSteps,
        executedCode,
        microSteps
    };
}

export type CharmonyTopLevel = {
    issue: string;
    idToThreadName: Record<thread_id, string>;
    slices: CharmonySlice[];
    macroSteps: CharmonyMacroStep[];
    executedCode: CharmonyExecutedCode[];
    microSteps: CharmonyMicroStep[];
};

export type CharmonyMacroStep = {
    tid: string;
    name: string;
    duration: number;
    startSliceIdx: number;
    lastSliceIdx: number;  // Exclusive
}

export type CharmonySlice = {
    tid: string;
    name: string;

    macroStepIdx: number;
    duration: number;

    idToStackTrace: Record<thread_id, CharmonyStackTrace>;
    sharedValues: Record<variable_name, unknown>;
};

export type CharmonyMicroStep = {
    time: number;
    sliceIdx: number;
    pc: number;
    npc: number;
};

export type CharmonyStackTrace = {
    tid: string;

    fullStatus: string;
    status: string;
    mode?: string;
    chosen?: unknown;
    failure?: string;
    atomic: number;
    readonly: number;
    interruptLevel: number;
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
