import {CharmonyAssemblyCode, CharmonyExecutedCode} from '../../types/CharmonyJson';
import { CharmonyTopLevelLatest } from '../../types/CharmonyJsonLatest';

export function getExecutedCode(json: CharmonyTopLevelLatest): CharmonyExecutedCode[] {
    if (json.state === 'No issues') return [];
    const allCode: string[] = json.hvm.pretty.map(x => x[0]);
    const allExplain: string[] = json.hvm.pretty.map(x => x[1]);

    if (allCode.length !== allExplain.length) {
        console.warn(
            'The sizes of code and explanations mismatch!',
            `code.length == ${allCode.length}, explain.length == ${allExplain.length}`);
    }

    type IntermediateHarmonyCode = {
        file: string;
        line: string;
        code: string;
    };

    // const locations = entries(json.hvm.locs)
    //     .map(([k, v]) => [Number.parseInt(k), v] as [number, IntermediateHarmonyCode])
    //     .sort(([k1], [k2]) => k1 - k2);
    const locations: [number, IntermediateHarmonyCode][] = json.hvm.locs.map((v, idx) => {
        // Assuming that the index of the array is the pc number
        const pc = idx;
        const module = v.module;
        const filename = json.hvm.modules[module].file;
        const line = v.line;
        const code = json.hvm.modules[module].lines[line-1]; // the line number is 1-indexed

        const locData: IntermediateHarmonyCode = {
            file: filename,
            line: line.toString(),
            code: code,
        };
        return [pc, locData];
    });
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
            sourceCode: code || '',
            assembly: executedAssembly
        };
    });

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
        file: '#internal',
        line: '0',
        sourceCode: '#internal_setup()',
        assembly: executedAssembly
    });
    return executedCode;
}
