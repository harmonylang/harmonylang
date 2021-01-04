
type NewHarmonyJson = {
  issue: string;
  megasteps: Switch[];

  /** Missing */
  code: string[]
};

type Switch = {
  tid: string;
  name: string;
  microsteps: MicroStep[];

  /** Maybe the values can be JSON-parse-able strings. */
  shared: Record<string, string>;

  contexts: Context[];
};

/**
 * Describes a “diff” with the previous state
 */
type MicroStep = {
  pc: string;

  /** Maybe the values can be JSON-parse-able strings. */
  shared: Record<string, string>;

  /** Maybe the values can be JSON-parse-able strings. */
  local: Record<string, string>;

  pop: string;
  push: string[];
  [OtherStuff: string]: unknown;
};

type Context = {
  tid: string;
  name: string;
  entry: string;
  pc: string;
  fp: string;
  trace: Trace[];

  /** Not sure what this is for. */
  this: string;

  stack: string[];


  failure?: string;
  atomic?: number;
  readonly?: number;

};


type Trace = {
  method: string;
  vars: Record<string, string>;
}
