import * as fs from 'fs';
import {PathLike} from "fs";

type HarmonyNodePath = {
  issues: string[];
  processes: any[];
  shared_vars: string[];
  values_at_process: Record<string, unknown>;
  steps: Record<string, unknown[]>
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

type HarmonyNode = {
  uid: number;
  path_to_n: null | unknown;
  context_bag: string[];
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
    console.log(json);
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


}

const obj = new HarmonyJson("../../harmony-0.9/harmony.json");

console.log(obj);

console.log(obj.getBadNode());

console.log(obj.getIssues());

console.log(obj.getAllCode().map(c => c.code).join("\n"));
