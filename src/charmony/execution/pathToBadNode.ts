import {HarmonyProcess, HarmonySlice, HarmonyStep, HarmonyTrace, ProcessPathDetail, TraceData} from "../CharmonyJson";
import {IntermediateJson, IntermediateMicroStep} from "../IntermediateJson";
import {parseIntermediateValueRep, parseSharedValues} from "./values/parser";
import StackTraceManager from "./StackTraceManager";


function processStateChange(microStepDiff: IntermediateMicroStep) {
    const {shared, trace, mode, failure} = microStepDiff;
    return shared != null || trace != null || mode != null || failure != null;
}


export function getPathToBadNode(json: IntermediateJson): ProcessPathDetail {
    const stackTraceManager = new StackTraceManager();
    const {issue, macrosteps} = json;
    const processes: HarmonyProcess[] = [];
    const pidToName: Record<string, string> = {};
    const previousSharedValues: Record<string, unknown> = {};

    for (const macroStep of macrosteps) {
        const {tid: pid, name} = macroStep;
        pidToName[pid] = name;
        stackTraceManager.setTid(pid);
        const slices: HarmonySlice[] = [];
        let duration = 0;
        let sliceDuration = 0;
        const microSteps: HarmonyStep[] = [];

        // For the first step
        if (macroStep.microsteps.length > 0) {
            const firstStep = macroStep.microsteps[0];
            Object.assign(previousSharedValues, parseSharedValues(firstStep.shared));
            stackTraceManager.setCallStack(firstStep.trace);
            stackTraceManager.setMode({
                atomic: firstStep.atomic,
                choose: firstStep.choose,
                failure: firstStep.failure,
                mode: firstStep.mode
            });
            stackTraceManager.setLocal(firstStep.local);
            sliceDuration++;
            duration++;
        }
        // For the remaining steps
        for (let i = 1; i < macroStep.microsteps.length; i++) {
            const microStep = macroStep.microsteps[i];
            const pc = Number.parseInt(microStep.pc);
            const npc = microStep.pc === null ? null : Number.parseInt(microStep.npc);
            if (processStateChange(microStep)) {
                stackTraceManager.setCallStack(microStep.trace);
                stackTraceManager.setMode({
                    atomic: microStep.atomic,
                    choose: microStep.choose,
                    failure: microStep.failure,
                    mode: microStep.mode
                });
                stackTraceManager.setLocal(microStep.local);
                slices.push({
                    duration: sliceDuration,
                    shared_values: Object.assign({}, previousSharedValues),
                    trace: stackTraceManager.clone(),
                    mode: stackTraceManager.getCurrentMode(),
                    failure: stackTraceManager.getCurrentFailure()
                });
                sliceDuration = 0;
                Object.assign(previousSharedValues, parseSharedValues(microStep.shared));
            }
            duration++;
            sliceDuration++;

            if (microStep.choose != null) {
                const chooseValue = parseIntermediateValueRep(microStep.choose);
                microSteps.push({choose: [pc, chooseValue]});
            } else {
                microSteps.push({step: [pc, npc ?? -1]});
            }
        }
        slices.push({
            duration: sliceDuration,
            shared_values: Object.assign({}, previousSharedValues),
            trace: stackTraceManager.clone(),
            mode: stackTraceManager.getCurrentMode(),
            failure: stackTraceManager.getCurrentFailure()
        });
        processes.push({
            pid: pid,
            name: name,
            slices: slices,
            duration: duration,
            steps: microSteps,
        });
    }
    return {
        issue: issue,
        processes: processes,
        pid_to_name: pidToName
    };
}
