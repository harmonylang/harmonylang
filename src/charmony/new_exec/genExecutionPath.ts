import {IntermediateJson, IntermediateMicroStep} from "../IntermediateJson";
import {CharmonyMicroStep, CharmonySlice, CharmonyTopLevel} from "../CharmonyData";
import {parseVariableSet} from "../execution/values/parser";
import CharmonyStackManager from "./CharmonyStackManager";

/**
 * Returns true iff the microStep diff indicates some change in program execution.
 * @param microStep
 */
function processStateChanged(microStep: IntermediateMicroStep) {
    const {
        mode,
        atomic,
        readonly,
        interruptlevel,
        choose,
        failure,
        trace,
        local,
        shared,
    } = microStep;
    return [
        mode, atomic, readonly, interruptlevel,
        choose, failure, trace, local, shared
    ].some(x => x == null);
}

export function genExecutionPath(json: IntermediateJson): Omit<CharmonyTopLevel, 'executedCode'> {
    const stackTraceManager = new CharmonyStackManager();
    const {issue, macrosteps} = json;
    const slices: CharmonySlice[] = [];
    const idToName: Record<string, string> = {};
    const previousSharedValues: Record<string, unknown> = {};

    let overallTime = 0;
    for (const macroStep of macrosteps) {
        let sliceDuration = 0;
        const {tid, name} = macroStep;
        idToName[tid] = name;
        stackTraceManager.setTid(tid);
        const microSteps: CharmonyMicroStep[] = [];

        // For the first step
        if (macroStep.microsteps.length > 0) {
            const firstStep = macroStep.microsteps[0];
            const {pc, npc, atomic, failure, mode, interruptlevel, readonly} = firstStep;
            // Assign any existing shared variables to the sharedVariables map.
            Object.assign(previousSharedValues, parseVariableSet(firstStep.shared));
            stackTraceManager.setCallStack(firstStep.trace);
            stackTraceManager.setStatus({atomic, failure, mode, interruptlevel, readonly });
            stackTraceManager.setLocal(firstStep.local);

            sliceDuration++;
            overallTime++;

            const pcValue = Number.parseInt(pc);
            const npcValue = npc != null ? Number.parseInt(npc) : pcValue;
            microSteps.push({pc: pcValue, npc: npcValue});
        }
        // Repeat for any remaining microsteps.
        for (let i = 1; i < macroStep.microsteps.length; i++) {
            const microStep = macroStep.microsteps[i];
            const pc = Number.parseInt(microStep.pc);
            const npc = microStep.npc ? Number.parseInt(microStep.npc) : pc;
            if (processStateChanged(microStep)) {
                slices.push({
                    duration: sliceDuration,
                    sharedValues: Object.assign({}, previousSharedValues),
                    idToStackTrace: stackTraceManager.clone(),
                    tid: tid,
                    startingTime: overallTime,
                    name: macroStep.name,
                    steps: microSteps
                });
                stackTraceManager.setCallStack(microStep.trace);
                stackTraceManager.setStatus({
                    atomic: microStep.atomic,
                    failure: microStep.failure,
                    mode: microStep.mode,
                    readonly: microStep.readonly,
                    interruptlevel: microStep.interruptlevel
                });
                stackTraceManager.setLocal(microStep.local);

                sliceDuration = 0;
                Object.assign(previousSharedValues, parseVariableSet(microStep.shared));
            }
            sliceDuration++;
            overallTime++;
            microSteps.push({pc, npc});
        }
        slices.push({
            duration: sliceDuration,
            sharedValues: Object.assign({}, previousSharedValues),
            idToStackTrace: stackTraceManager.clone(),
            tid: tid,
            startingTime: overallTime,
            name: macroStep.name,
            steps: microSteps,
        });
    }
    return {
        issue: issue,
        executionPath: slices,
        macroSteps: [],
        idToThreadName: idToName
    };
}
