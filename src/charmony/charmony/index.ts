import { IntermediateJson } from '../types/IntermediateJson';
import { CharmonyExecutedCode, CharmonyTopLevel } from '../types/CharmonyJson';
import { getExecutedCode } from './code/getExecutedCode';
// import { genExecutionPath } from './new_exec/genExecutionPath';
import { CharmonyTopLevelLatest } from '../types/CharmonyJsonLatest';
import { genExecutionPath } from './new_exec/genExecutionPath';

export default function parseCharmony(json: CharmonyTopLevelLatest): CharmonyTopLevel {
    const executedCode: CharmonyExecutedCode[] = getExecutedCode(json);
    console.log('Executed code', executedCode);
    const execution = genExecutionPath(json);

    // execution.executedCode = executedCode;
    // return execution;

    return {
        ...execution,
        executedCode,
    };
}
