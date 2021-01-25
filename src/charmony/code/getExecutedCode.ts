import {HarmonyAssembly, HarmonyCode} from "../CharmonyJson";
import {IntermediateHarmonyCode, IntermediateJson} from "../IntermediateJson";

export function getExecutedCode(json: IntermediateJson): HarmonyCode[] {
    const {explain, code} = json;
    const locations = Object.entries(json.locations)
        .map(([k, v]) => [Number.parseInt(k), v] as [number, IntermediateHarmonyCode])
        .sort(([k1], [k2]) => k1 - k2);
    const executedCode: HarmonyCode[] = [];
    let firstEvaluatedPc: undefined | number = undefined;

    for (let i = 0; i < locations.length; i++) {
        const [startingPc, sourceCode] = locations[i];
        const {file, line} = sourceCode;
        firstEvaluatedPc = firstEvaluatedPc !== undefined ? Math.min(startingPc, firstEvaluatedPc) : startingPc;

        const lastPc = i < locations.length - 1 ? locations[i + 1][0] : code.length;
        const executedAssembly: HarmonyAssembly[] = [];
        for (let pc = startingPc; pc < lastPc; pc++) {
            const codeAtPc = code[pc].trim();
            const explainAtPc = explain[pc];
            executedAssembly.push({code: codeAtPc, explain: explainAtPc});
        }
        executedCode.push({
            start_pc: startingPc,
            file, line,
            source_code: sourceCode['code'],
            assembly: executedAssembly
        });
    }
    if (firstEvaluatedPc !== undefined && firstEvaluatedPc !== 0) {
        const executedAssembly: HarmonyAssembly[] = [];
        for (let pc = 0; pc < firstEvaluatedPc; pc++) {
            const codeAtPc = code[pc].trim();
            const explainAtPc = explain[pc];
            executedAssembly.push({code: codeAtPc, explain: explainAtPc});
        }
        executedCode.unshift({
            start_pc: 0,
            file: "#internal",
            line: "0",
            source_code: "#internal_setup()",
            assembly: executedAssembly
        });
    }
    return executedCode;
}
