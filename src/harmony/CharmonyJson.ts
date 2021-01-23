import {PathLike} from "fs";
import {getHtmlContent} from "./charm/analysis";

export const parse = (path: PathLike): HarmonyTopLevel => {
  return getHtmlContent(path);
};

export type HarmonyTopLevel = {
  path_to_bad_node: ProcessPathDetail;
  executed_code: HarmonyCode[];
};

export type HarmonyCode = {
  assembly: HarmonyAssembly[];
  file: string;
  line: string;
  source_code: string;
  start_pc: number;
};

export type HarmonyAssembly = {
  code: string;
  explain: string;
};

export type ProcessPathDetail = {
  issue: string,
  shared_variable_names: string[];
  processes: HarmonyProcess[]
};

export type HarmonyProcess = {
  pid: string;
  name: string;
  final_shared_values: Record<string, unknown>;
  slices: HarmonySlice[];
  duration: number;
  steps: HarmonyStep[];
}

export type HarmonySlice = {
  duration: number;
  shared_values: Record<string, unknown>;
  trace: Record<string, unknown>
};

export type HarmonyStep = {
  choose?: [number, unknown];
  step?: [number, number];
}

export type HarmonyContext = {
  pid: string;
  process_name: string;
  failure?: string;
  mode: string;
  traces: HarmonyTrace[];
};

export type HarmonyTrace = {
  variables: Record<string, unknown>;
  method: string;
};
