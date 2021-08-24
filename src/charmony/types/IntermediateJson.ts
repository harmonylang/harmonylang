export type IntermediateJson = {
    code: string[];   // A list of all Harmony bytecode.
    explain: string[]  // A list of explanations for each Harmony bytecode.
    locations: Record<string, IntermediateHarmonyCode>;  // A map from code index to corresponding source code.
    issue: string;
    macrosteps?: IntermediateSwitch[];
};

export class IntermediateJsonManager {
    private readonly json: IntermediateJson;
    constructor(json: IntermediateJson) {
        this.json = json;
    }
    getCode(): string[] { return this.json.code; }
    getExplain(): string[] { return this.json.explain; }
    getLocations(): Record<string, IntermediateHarmonyCode> { return this.json.locations; }
    getIssue(): string { return this.json.issue; }

    getMacrosteps(): IntermediateSwitch[] | null {
        if (this.json.issue === "No issues") { return null; }
        if (!this.json.macrosteps) {
            console.warn("No macrosteps found in intermediate json despite the existence of an issue")
            return null;
        }
        return this.json.macrosteps;
    }
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
