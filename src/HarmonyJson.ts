import * as fs from 'fs';
import {PathLike} from "fs";

type HarmonyNodePath = {
  issues: string[];
  processes: any[];
  shared_vars: string[];
  values_at_process: Record<string, unknown>;
  steps: Record<string, unknown[]>
};

type MacroStep = {
  filename: string;
  line_number: number;
  executed_line: string;
  first_pc: string;
  code: string[]
}

type HarmonyNode = {
  uid: number;
  path_to_n: null | unknown;
  context_bag: string[];
  stop_bag: string[];
};

class HarmonyJson {

  private json: {
    bad_node: number | null;
    path_to_bad_node: HarmonyNodePath;
    executed_code: MacroStep[];
    nodes: HarmonyNode[];
  }

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
  }
}

const obj = new HarmonyJson("../harmony-0.9/harmony.json");


console.log(obj);
