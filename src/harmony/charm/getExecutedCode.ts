import {HarmonyAssembly, HarmonyCode} from "../CharmonyJson";
import {IntermediateHarmonyCode, IntermediateJson} from "./IntermediateJson";

export function getExecutedCode(json: IntermediateJson): HarmonyCode[] {
  const {explain, code} = json;
  const locations = Object.entries(json.locations)
    .map(([k, v]) => [Number.parseInt(k), v] as [number, IntermediateHarmonyCode])
    .sort(([k1], [k2]) => k1 - k2);
  const executedCode: HarmonyCode[] = [];

  for (let i = 0; i < locations.length; i++) {
    const [spc, sourceCode] = locations[i];
    const npc = i < locations.length - 1 ? locations[i + 1][0] : code.length;
    const executedAssembly: HarmonyAssembly[] = [];
    for (let pc = spc; pc < npc; pc++) {
      const codeAtPc = code[pc].trim();
      const explainAtPc = explain[pc];
      executedAssembly.push({code: codeAtPc, explain: explainAtPc});
    }
    executedCode.push({
      start_pc: spc,
      file: sourceCode['file'],
      line: sourceCode['line'],
      source_code: sourceCode['code'],
      assembly: executedAssembly
    });
  }
  return executedCode;
}
