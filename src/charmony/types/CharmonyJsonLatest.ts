// This file is best-attempt at capturing the types in the hco output from the harmony compiler

import { IntermediateValueRepresentation } from './IntermediateJson';

type Code = {
    op: string;
    name?: string;
    args?: string;
    pc?: string;
    arity?: number;
    value?: IntermediateValueRepresentation;
    result?: string;
    cond?: IntermediateValueRepresentation;    
};

type Location = {
    module: string;
    line: number;
    column: number;
    endline: number;
    endcolumn: number;
    stmt: [number, number, number, number];
};

type Module = {
    file: string;
    lines: string[];
    identifiers: Record<string, string>;
};

type HVM = {
    labels: Record<string, number>;
    modules: Record<string, Module>;
    code: Code[];
    pretty: [string, string][];  // index 0 is the pretty-printed bytecode. index 1 is the explanation.
    locs: Location[];
};

export type ExecutionPath = {
    state: 'Issues found';
    issue: string;
    hvm: HVM;
    macrosteps: CharmonyMacroStep[];
};

type Trace = {
    pc: string;
    xpc: string;
    method: string;
    calltype: string;
    vars: Record<string, IntermediateValueRepresentation>;
    sp: number;
};

type Context = {
    tid: string;
    hvalue: string;
    fp: string;
    name: string;
    entry: string;
    pc: string;
    sp: string;
    stack: IntermediateValueRepresentation[];
    trace: Trace[];
    atomic?: string;
    next: never;
    mode?: 'choosing' | 'blocked' | 'runnable' | 'terminated'; // Mode of process.
    this: string;
};

export type NoIssue = {
    state: 'No issues';
    issue: string;
};

export type CharmonyTopLevelLatest = ExecutionPath | NoIssue;

export type CharmonyMacroStep = {
    id: string;
    len: string;
    tid: string;
    shared: Record<string, string>;
    name: string;

    context: Context;

    microsteps: CharmonyMicroStep[];
    ctxbag: Record<string, string>;
    contexts: Context[];

    duration: number;
    startSliceIdx: number;
    lastSliceIdx: number;  // Exclusive
}

export type CharmonyMicroStep = {
    code: string;
    explain: string;
    npc: string;  // next pc number
    pc: string;   // current pc number
    fp?: string;

    choose?: IntermediateValueRepresentation;
    shared?: Record<string, IntermediateValueRepresentation>;

    trace?: Trace[];
    local?: Record<string, IntermediateValueRepresentation>;

    mode?: 'choosing' | 'blocked' | 'runnable' | 'terminated'; // Mode of process.
    readonly?: string;
    interruptlevel?: string;

    failure?: string; // Failure setting. Non-empty when a failure occurs. Undefined otherwise.
    atomic?: string; // Atomic setting. "1" if set to atomic. "0" if set back to normal.
    push?: IntermediateValueRepresentation[]; // Values pushed up to the expression stack.
    pop?: string  // Number of elements popped from expression stack
};
