import * as fs from 'fs';
import * as zlib from 'zlib';
import {PathLike} from "fs";

type Step = {
  steps?: Readonly<[number, number]>;
  error?: null | string;
  choose?: null | string;
};

type ProcessMegaStep = {
  name: string;
  sid: number;
  values: Record<string, unknown>;
  steps: Readonly<Step>[]
};

/**
 * Contains the main information about the Harmony execution.
 * 1) The issues from the execution
 * 2) The path of processes that led to a bad node or terminating node.
 * 3) The set of shared variables in the program.
 */
type HarmonyNodePath = {
  issues: Readonly<string>[];
  processes: Readonly<ProcessMegaStep>[];
  shared_vars: Readonly<string>[];
};

/**
 * Contains information about the executed Harmony code, an explanation
 * of that code does internally, and an optional jump_target PC-value
 * if the code refers to another PC value, such as PUSH <PC> or JUMP <PC>.
 */
type HarmonyCode = {
  "code": string,
  "explanation": string,
  "jump_target": number | null
};

/**
 * Represents a block of code, i.e. a macro-step. For each code in the block, its
 * PC is the first_pc value added to the index of that code value.
 */
type MacroStep = {
  filename: string;
  line_number: number;
  executed_line: string;
  first_pc: number;
  code: Readonly<HarmonyCode>[]
};

type VariableBlock = {
  name: string;
  value: Readonly<unknown>;
};

/**
 * Contains trace information of a process, i.e. different stack frames.
 */
type TraceStruct = {
  variables: Readonly<VariableBlock>[];
  display: "block" | "none";
};

type ContextBag = {
  stopped: boolean;
  blocked: boolean;
  failed: boolean;
  choosing: string | null;
  process_name: string;
  number_of_copies: number;
  traces: Readonly<TraceStruct>[];
  context_details: Readonly<Record<string, unknown>>;
  locs: Readonly<{
    lines: Readonly<string>[];
    failure: boolean | null;
  }>;
};

type StopBag = ContextBag;

/**
 * A node in Harmony. Contains a unique identifier, a list of context bags and
 * stop bags.
 *
 * If the JSON was produced when verbose was set True in the Harmony compiler,
 * then [path_to_n] is a path that leads to this node.
 */
type HarmonyNode = {
  uid: number;
  path_to_n: null | unknown;
  context_bag: ContextBag[];
  stop_bag: StopBag[];
};

function deepFreeze<T extends Record<string, any>>(o: T): T {
  Object.freeze(o);
  if (o === undefined) {
    return o;
  }
  Object.getOwnPropertyNames(o).forEach(function (prop) {
    if (o[prop] !== null
      && (typeof o[prop] === "object" || typeof o[prop] === "function")
      && !Object.isFrozen(o[prop])) {
      deepFreeze(o[prop]);
    }
  });
  return o;
}

export default class HarmonyJson {

  private readonly json: {
    bad_node: number | null;
    path_to_bad_node: HarmonyNodePath;
    executed_code: MacroStep[];
    nodes: Record<number, HarmonyNode>;
  }

  private readonly allCode: HarmonyCode[];

  /**
   * Constructs a interface with the Harmony JSON data.
   * @param filename A path to a zipped
   */
  constructor(filename: PathLike) {

    const zippedContent = fs.readFileSync(filename);
    const content = zlib.gunzipSync(zippedContent).toString('utf-8');
    const json = JSON.parse(content);
    const nodes: Record<number, HarmonyNode> = {};
    for (const n of json.nodes) {
      nodes[n.uid] = n;
    }
    this.json = deepFreeze({
      bad_node: json.bad_node,
      path_to_bad_node: json.path_to_bad_node,
      executed_code: json.executed_code,
      nodes: nodes
    });
    this.allCode = [];
    this.json.executed_code.forEach(step => {
      step.code.forEach(c => {
        this.allCode.push(c);
      });
    });
  }

  hasBadNode(): boolean {
    return this.json.bad_node != null;
  }

  getBadNode(): Readonly<HarmonyNode> | null {
    if (this.json.bad_node != null) {
      return this.json.nodes[this.json.bad_node];
    } else {
      return null;
    }
  }

  getIssues(): Readonly<string>[] {
    return this.json.path_to_bad_node.issues;
  }

  getAllCode(): Readonly<HarmonyCode>[] {
    return this.allCode;
  }

  getAllNodes(): Readonly<HarmonyNode>[] {
    return Object.values(this.json.nodes);
  }

  getAllMacroSteps(): Readonly<MacroStep>[] {
    return this.json.executed_code;
  }

  getSharedVariables(): Readonly<string>[] {
    return this.json.path_to_bad_node.shared_vars;
  }

  getProcesses(): Readonly<ProcessMegaStep>[] {
    return this.json.path_to_bad_node.processes;
  }

  getNodeOfProcess(process: ProcessMegaStep | number): Readonly<HarmonyNode> {
    if (typeof process === 'number') {
      return this.json.nodes[process];
    } else {
      return this.json.nodes[process.sid];
    }
  }

  macroStepAtPc(pc: number): Readonly<MacroStep> | undefined {
    return this.json.executed_code.find((m, i) => {
      return i + 1 >= this.json.executed_code.length
        || (m.first_pc <= pc && this.json.executed_code[i + 1].first_pc > pc);
    });
  }

  codeAtPC(pc: number): Readonly<HarmonyCode> | undefined {
    return this.allCode[pc];
  }

}
