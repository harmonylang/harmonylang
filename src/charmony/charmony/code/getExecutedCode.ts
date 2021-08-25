import {IntermediateHarmonyCode, IntermediateJsonManager} from "../../types/IntermediateJson";
import {CharmonyAssemblyCode, CharmonyExecutedCode} from "../../types/CharmonyJson";
import {entries} from "../../util/object_util";

export function getExecutedCode(json: IntermediateJsonManager): CharmonyExecutedCode[] {
    const allCode = json.getCode();
    const allExplain = json.getExplain();

    if (allCode.length !== allExplain.length) {
        console.warn(
            "The sizes of code and explanations mismatch!",
            `code.length == ${allCode.length}, explain.length == ${allExplain.length}`);
    }

    const locations = entries(json.getLocations())
        .map(([k, v]) => [Number.parseInt(k), v] as [number, IntermediateHarmonyCode])
        .sort(([k1], [k2]) => k1 - k2);
    let firstEvaluatedPc: undefined | number = undefined;

    const executedCode: CharmonyExecutedCode[] = locations.map(([startingPc, sourceCode], idx) => {
        const {file, line, code} = sourceCode;
        firstEvaluatedPc = firstEvaluatedPc !== undefined ?
            Math.min(startingPc, firstEvaluatedPc) : startingPc;

        // If not the last element, then the range is from this startPC to the next startPC (exclusive)
        // Otherwise, the range is from the startPC to the size of the allCode array.
        const lastPc = idx < locations.length - 1 ? locations[idx + 1][0] : allCode.length;

        const executedAssembly: CharmonyAssemblyCode[] = [];
        for (let pc = startingPc; pc < lastPc; ++pc) {
            const codeAtPc = allCode[pc].trim();
            const explainAtPc = allExplain[pc];
            executedAssembly.push({assembly: codeAtPc, explain: explainAtPc});
        }
        return {
            initialPc: startingPc,
            file, line,
            sourceCode: code,
            assembly: executedAssembly
        };
    })

    if (firstEvaluatedPc == null || firstEvaluatedPc === 0) {
        return executedCode;
    }

    // Add any unprocessed assembly code into its own array,
    // based on the smallest processed pc from above.
    const executedAssembly: CharmonyAssemblyCode[] = []; 
    for (let pc = 0; pc < firstEvaluatedPc; ++pc) {
        const codeAtPc = allCode[pc].trim();
        const explainAtPc = allExplain[pc];
        executedAssembly.push({assembly: codeAtPc, explain: explainAtPc});
    }
    // Assume: the first execution block is part of internal model checker setup.
    executedCode.unshift({
        initialPc: 0,
        file: "#internal",
        line: "0",
        sourceCode: "#internal_setup()",
        assembly: executedAssembly
    });
    return executedCode;
}
