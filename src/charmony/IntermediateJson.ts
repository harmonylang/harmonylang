export type IntermediateJson = {
    issue: string;
    macrosteps: IntermediateSwitch[];
    code: string[];
    explain: string[];
    locations: Record<string, IntermediateHarmonyCode>;
};


export type IntermediateHarmonyCode = {
    file: string;
    line: string;
    code: string;
};


export type IntermediateValueRepresentation = {
    type: "bool" | "int" | "atom" | "dict" | "set" | "pc" | "address";
    value: string | IntermediateValueRepresentation[] | IntermediateKeyValueRep[];
}


export type IntermediateKeyValueRep = {
    key: IntermediateValueRepresentation;
    value: IntermediateValueRepresentation;
};


export type IntermediateSwitch = {
    tid: string;
    name: string;
    microsteps: IntermediateMicroStep[];
    contexts: IntermediateContext[];
};

type VariableName = string;
export type IntermediateMicroStep = {
    npc: string;
    pc: string;

    choose?: IntermediateValueRepresentation;
    shared?: Record<string, IntermediateValueRepresentation>;
    trace?: IntermediateTrace[];
    local?: Record<VariableName, IntermediateValueRepresentation>; // Local variables at the end of micro-step

    mode?: "choosing" | "blocked" | "runnable" | "terminated"; // Mode of process.
    readonly?: string;
    interruptlevel?: string;
    failure?: string; // Failure setting. Non-empty when a failure occurs. Undefined otherwise.
    atomic?: string; // Atomic setting. "1" if set to atomic. "0" if set back to normal.
    push?: IntermediateValueRepresentation[]; // Values pushed up to the expression stack.
    pop?: string  // Number of elements popped from expression stack
};


export type IntermediateTrace = {
    pc: string;
    method: string;
    calltype: string;
    vars: Record<VariableName, IntermediateValueRepresentation>;
};


export type IntermediateContext = {
    tid: string;
    name: string;
    entry: string;
    pc: string;
    fp: string;
    trace: IntermediateTrace[];
    this: string;
    mode?: "choosing" | "blocked" | "runnable" | "terminated"; // Mode of process.
    readonly?: string;
    choose?: IntermediateValueRepresentation;
    interruptlevel?: string;
    failure?: string; // Failure setting. Non-empty when a failure occurs. Undefined otherwise.
    atomic?: string; // Atomic setting. "1" if set to atomic. "0" if set back to normal.
}
