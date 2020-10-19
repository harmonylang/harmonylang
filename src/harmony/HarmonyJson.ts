import * as fs from 'fs';
import {PathLike} from "fs";

type Step = {
  steps?: [number, number];
  error?: null | string;
  choose?: null | string;
};

type HarmonyProcess = {
  name: string;
  sid: number;
  values: Record<string, string>;
  steps: Step[]
};

type HarmonyNodePath = {
  issues: string[];
  processes: HarmonyProcess[];
  shared_vars: string[];
};

type Code = {
  "code": string,
  "explanation": string,
  "jump_target": number | null
};

type MacroStep = {
  filename: string;
  line_number: number;
  executed_line: string;
  first_pc: string;
  code: Code[]
};

type ContextBag = {
  stopped: boolean;
  blocked: boolean;
  failed: boolean;
  choosing: string | null;
  process_name: string;
  number_of_copies: number;
  variables: string[];
  context_details: Record<string, unknown>;
  locs: {
    lines: string[];
    failure: boolean | null;
  };
};

type HarmonyNode = {
  uid: number;
  path_to_n: null | unknown;
  context_bag: ContextBag[];
  stop_bag: string[];
};

class HarmonyJson {

  private readonly json: {
    bad_node: number | null;
    path_to_bad_node: HarmonyNodePath;
    executed_code: MacroStep[];
    nodes: HarmonyNode[];
  }

  private readonly allCode: Code[];

  constructor(filename: PathLike) {
    const file = fs.readFileSync(filename);
    const content = file.toString();
    const json = JSON.parse(content);
    this.json = {
      bad_node: json.bad_node,
      path_to_bad_node: json.path_to_bad_node,
      executed_code: json.executed_code,
      nodes: json.nodes
    };
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

  getBadNode(): HarmonyNode | null {
    if (this.json.bad_node != null) {
      return this.json.nodes[this.json.bad_node];
    } else {
      return null;
    }
  }

  getIssues(): string[] {
    return this.json.path_to_bad_node.issues;
  }

  getAllCode(): Code[] {
    return this.allCode;
  }

  getProcesses(): HarmonyProcess[] {
    return this.json.path_to_bad_node.processes;
  }

  getNodeOfProcess(process: HarmonyProcess | number): HarmonyNode {
    if (typeof process === 'number') {
      return this.json.nodes[process];
    } else {
      return this.json.nodes[process.sid];
    }
  }

}

const obj = new HarmonyJson("../../harmony-0.9/harmony.json");
