import {IntermediateJson, IntermediateMicroStep} from "../IntermediateJson";
import {CharmonyMacroStep, CharmonyMicroStep, CharmonySlice, CharmonyTopLevel} from "../CharmonyData";
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
    const idToThreadName: Record<string, string> = {};
    const previousSharedValues: Record<string, unknown> = {};

    let overallTime = 0;
    const microSteps: CharmonyMicroStep[] = [];
    const macroSteps: CharmonyMacroStep[] =  [];

    macrosteps.forEach((macroStep, macroIdx) => {
        let sliceDuration = 0;
        const {tid, name, contexts} = macroStep;
        idToThreadName[tid] = name;
        stackTraceManager.setNewTid(tid, contexts);
        const firstSliceIdx = slices.length;

        const tidContext = contexts.find(x => x.tid === tid);
        if (tidContext != null) {
            stackTraceManager.setCallStack(tidContext.trace);
            stackTraceManager.setStatus(tid, tidContext);
        }
        // For the first step
        if (macroStep.microsteps.length > 0) {
            const firstStep = macroStep.microsteps[0];
            const {pc, npc} = firstStep;
            // Assign any existing shared variables to the sharedVariables map.
            Object.assign(previousSharedValues, parseVariableSet(firstStep.shared));
            stackTraceManager.setCallStack(firstStep.trace);
            stackTraceManager.setStatus(tid, firstStep);
            stackTraceManager.setLocal(firstStep.local);
            const pcValue = Number.parseInt(pc);
            const npcValue = npc != null ? Number.parseInt(npc) : pcValue;
            microSteps.push({
                pc: pcValue,
                npc: npcValue,
                sliceIdx: slices.length,
                time: overallTime
            });
            sliceDuration++;
            overallTime++;
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
                    name: macroStep.name,
                    macroStepIdx: 0
                });
                stackTraceManager.setCallStack(microStep.trace);
                stackTraceManager.setStatus(tid, microStep);
                stackTraceManager.setLocal(microStep.local);

                sliceDuration = 0;
                Object.assign(previousSharedValues, parseVariableSet(microStep.shared));
            }
            microSteps.push({
                sliceIdx: slices.length,
                time: overallTime,
                pc, npc
            });
            sliceDuration++;
            overallTime++;
        }
        slices.push({
            duration: sliceDuration,
            sharedValues: Object.assign({}, previousSharedValues),
            idToStackTrace: stackTraceManager.clone(),
            tid: tid,
            name: macroStep.name,
            macroStepIdx: macroIdx
        });
        macroSteps.push({
            tid, name,
            duration: overallTime,
            startSliceIdx: firstSliceIdx,
            lastSliceIdx: slices.length
        });
    });
    return {
        issue, slices,
        microSteps, macroSteps,
        idToThreadName
    };
}
