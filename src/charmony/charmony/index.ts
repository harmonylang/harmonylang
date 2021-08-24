import { IntermediateJson } from "../types/IntermediateJson";
import { CharmonyExecutedCode, CharmonyTopLevel } from "../types/CharmonyJson";
import { IntermediateJsonManager } from "../types/IntermediateJson";
import { getExecutedCode } from "./code/getExecutedCode";
import { genExecutionPath } from "./new_exec/genExecutionPath";

export default function parseCharmony(json: IntermediateJson): CharmonyTopLevel {
    const jsonManager = new IntermediateJsonManager(json);
    const executedCode: CharmonyExecutedCode[] = getExecutedCode(jsonManager);
    const execution = genExecutionPath(jsonManager);

    return {
        executedCode,
        ...execution
    };
}
