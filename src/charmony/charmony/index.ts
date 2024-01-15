import { IntermediateJson } from '../types/IntermediateJson';
import { CharmonyExecutedCode, CharmonyTopLevel } from '../types/CharmonyJson';
import { getExecutedCode } from './code/getExecutedCode';
// import { genExecutionPath } from './new_exec/genExecutionPath';
import { CharmonyTopLevelLatest } from '../types/CharmonyJsonLatest';
import { genExecutionPath } from './new_exec/genExecutionPath';

export default function parseCharmony(json: CharmonyTopLevelLatest): CharmonyTopLevel {
    if (json.issue == 'No issues') {
        // For compatibility purposes:
        // 'state' field was removed, so we'll forcefully set it here
        json.state = 'No issues';
    }
    const executedCode: CharmonyExecutedCode[] = getExecutedCode(json);
    const execution = genExecutionPath(json);

    return {
        ...execution,
        executedCode,
    };
}
