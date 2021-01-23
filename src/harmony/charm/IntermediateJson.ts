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
  shared: Record<string, IntermediateValueRepresentation>;
  contexts: IntermediateContext[];
};


export type IntermediateMicroStep = {
  npc: string;
  pc: string;
  choose: IntermediateValueRepresentation | null;

  shared: Record<string, IntermediateValueRepresentation> | null;
  trace: IntermediateTrace[] | null;
  local: Record<string, IntermediateValueRepresentation> | null;
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
