import {PathLike} from "fs";
import * as fs from "fs";
import * as zlib from "zlib";

export const parse = (path: PathLike): HarmonyTopLevel => {
  const zippedContent = fs.readFileSync(path);
  const content = zlib.gunzipSync(zippedContent).toString('utf-8');
  return JSON.parse(content);
};

export type HarmonyTopLevel = {
  path_to_bad_node: ProcessPathDetail;
  executed_code: HarmonyCode[];
};

type HarmonyCode = {
  assembly: {
    code: string;
    explain: string;
  }[];
  file: string;
  line: string;
  source_code: string;
  start_pc: number;
};

type ProcessPathDetail = {
  issue: string,
  shared_variable_names: string[];
  processes: HarmonyProcess[]
};

type HarmonyProcess = {
  pid: string;
  name: string;
  final_shared_values: Record<string, unknown>;
  slices: HarmonySlice[];
  duration: number;
  steps: HarmonyStep[];
  context: HarmonyContext[];
}

type HarmonySlice = {
  duration: number;
  shared_values: Record<string, unknown>;
};

type HarmonyStep = {
  choose?: [number, unknown];
  step?: [number, number];
}

type HarmonyContext = {
  pid: string;
  process_name: string;
  failure?: string;
  mode: string;
  traces: HarmonyTrace[];
};

type HarmonyTrace = {
  variables: Record<string, unknown>;
  method: string;
};
