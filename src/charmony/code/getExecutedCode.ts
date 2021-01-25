import {IntermediateHarmonyCode, IntermediateJson} from "../IntermediateJson";
import {CharmonyAssemblyCode, CharmonyExecutedCode} from "../CharmonyData";

export function getExecutedCode(json: IntermediateJson): CharmonyExecutedCode[] {
    const {explain, code} = json;
    const locations = Object.entries(json.locations)
        .map(([k, v]) => [Number.parseInt(k), v] as [number, IntermediateHarmonyCode])
        .sort(([k1], [k2]) => k1 - k2);
    const executedCode: CharmonyExecutedCode[] = [];
    let firstEvaluatedPc: undefined | number = undefined;

    for (let i = 0; i < locations.length; i++) {
        const [startingPc, sourceCode] = locations[i];
        const {file, line} = sourceCode;
        firstEvaluatedPc = firstEvaluatedPc !== undefined ? Math.min(startingPc, firstEvaluatedPc) : startingPc;

        const lastPc = i < locations.length - 1 ? locations[i + 1][0] : code.length;
        const executedAssembly: CharmonyAssemblyCode[] = [];
        for (let pc = startingPc; pc < lastPc; pc++) {
            const codeAtPc = code[pc].trim();
            const explainAtPc = explain[pc];
            executedAssembly.push({assembly: codeAtPc, explain: explainAtPc});
        }
        executedCode.push({
            initialPc: startingPc,
            file, line,
            sourceCode: sourceCode['code'],
            assembly: executedAssembly
        });
    }
    if (firstEvaluatedPc !== undefined && firstEvaluatedPc !== 0) {
        const executedAssembly: CharmonyAssemblyCode[] = [];
        for (let pc = 0; pc < firstEvaluatedPc; pc++) {
            const codeAtPc = code[pc].trim();
            const explainAtPc = explain[pc];
            executedAssembly.push({assembly: codeAtPc, explain: explainAtPc});
        }
        executedCode.unshift({
            initialPc: 0,
            file: "#internal",
            line: "0",
            sourceCode: "#internal_setup()",
            assembly: executedAssembly
        });
    }
    return executedCode;
}
