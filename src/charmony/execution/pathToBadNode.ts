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
        console.log(pid);
        stackTraceManager.setTid(pid);
        const slices: HarmonySlice[] = [];
        let duration = 0;
        let sliceDuration = 0;
        const microSteps: HarmonyStep[] = [];

        // For the first step
        if (macroStep.microsteps.length > 0) {
            const firstStep = macroStep.microsteps[0];
            Object.assign(previousSharedValues, parseSharedValues(firstStep.shared));
            console.log("Setting stack trace values", firstStep.trace);
            stackTraceManager.setCallStack(firstStep.trace);
            console.log("Stack process 1");
            stackTraceManager.setMode({
                atomic: firstStep.atomic,
                choose: firstStep.choose,
                failure: firstStep.failure,
                mode: firstStep.mode
            });
            console.log("Stack process 2");
            stackTraceManager.setLocal(firstStep.local);
            console.log("Stack process 3");
            sliceDuration++;
            duration++;
            console.log(stackTraceManager.clone());
        }
        // For the remaining steps
        for (let i = 1; i < macroStep.microsteps.length; i++) {
            const microStep = macroStep.microsteps[i];
            const pc = Number.parseInt(microStep.pc);
            const npc = microStep.pc === null ? null : Number.parseInt(microStep.npc);
            if (processStateChange(microStep)) {
                slices.push({
                    duration: sliceDuration,
                    shared_values: Object.assign({}, previousSharedValues),
                    trace: stackTraceManager.clone(),
                    mode: stackTraceManager.getCurrentMode(),
                    failure: stackTraceManager.getCurrentFailure()
                });

                console.log("Stack process 2.1");
                stackTraceManager.setCallStack(microStep.trace);
                console.log("Stack process 2.2");
                stackTraceManager.setMode({
                    atomic: microStep.atomic,
                    choose: microStep.choose,
                    failure: microStep.failure,
                    mode: microStep.mode
                });
                console.log("Stack process 2.3");
                stackTraceManager.setLocal(microStep.local);
                console.log("Stack process 2.4");
                sliceDuration = 0;
                Object.assign(previousSharedValues, parseSharedValues(microStep.shared));

                console.log(stackTraceManager.clone());
            }
            duration++;
            sliceDuration++;
            console.log(stackTraceManager.clone());

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
