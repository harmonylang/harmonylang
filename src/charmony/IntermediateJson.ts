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
    type: string;
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
};


export type IntermediateMicroStep = {
    npc: string;
    pc: string;

    choose?: IntermediateValueRepresentation;
    shared?: Record<string, IntermediateValueRepresentation>;
    trace?: IntermediateTrace[];
    local?: Record<string, IntermediateValueRepresentation>;

    mode?: string;
    failure?: string;
};


export type IntermediateTrace = {
    pc: string;
    method: string;
    calltype: string;
    vars: Record<string, IntermediateValueRepresentation>;
};


export type IntermediateContext = {
    tid: string;
    name: string;
    entry: string;
    pc: string;
    fp: string;
    trace: IntermediateTrace[];
    this: string;
    mode: string;
    failure: string | null;
    atomic: number | null;
    readonly: number | null;
}
