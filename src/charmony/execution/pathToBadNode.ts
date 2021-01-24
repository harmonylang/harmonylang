import {HarmonyProcess, HarmonySlice, HarmonyStep, HarmonyTrace, ProcessPathDetail, TraceData} from "../CharmonyJson";
import {
    IntermediateJson, IntermediateKeyValueRep,
    IntermediateTrace,
    IntermediateValueRepresentation
} from "../IntermediateJson";


function parseIntermediateValueRep(v: IntermediateValueRepresentation): unknown {
    const {value, type} = v;
    switch (type) {
        case "int": return Number.parseInt(value as string);
        case "atom": return value;
        case "bool": return value === 'True';
        case "pc": return value;
        case "address": return (value as IntermediateValueRepresentation[]).map(v => parseIntermediateValueRep(v));
        case "set": return (value as IntermediateValueRepresentation[]).map(v => parseIntermediateValueRep(v));
        case "dict": {
            const dict: Record<string, unknown> = {};
            for (const e of value as IntermediateKeyValueRep[]) {
                const key = JSON.stringify(parseIntermediateValueRep(e.key));
                if (!key.startsWith("__")) {
                    dict[key] = parseIntermediateValueRep(e.value);
                }
            }
            return dict;
        }
    }
    throw TypeError("Cannot parse this value");
}

function parseIntermediateTrace(trace: IntermediateTrace): HarmonyTrace {
    const copiedTrace: IntermediateTrace = Object.assign({}, trace);
    return {
        ...copiedTrace,
        vars: parseSharedValues(trace.vars)
    };
}

function parseSharedValues(sharedValues: undefined | Record<string, IntermediateValueRepresentation>): Record<string, unknown> {
    const result: Record<string, unknown> = {};
    if (sharedValues != null) {
        Object.entries(sharedValues).forEach(([k, v]) => {
            if (!k.startsWith("__")) {
                result[k] = parseIntermediateValueRep(v);
            }
        });
    }
    return result;
}

function parseIntermediateTraceArray(mode: string,
                                     failure: string | undefined,
                                     traces: undefined | IntermediateTrace[]): Omit<TraceData, 'traces'> & {traces?: HarmonyTrace[]} {
    const result: Omit<TraceData, 'traces'> & {traces?: HarmonyTrace[]} = {failure, mode};
    if (traces != null) {
        result.traces = traces.map(parseIntermediateTrace);
    }
    return result;
}

export function getPathToBadNode(json: IntermediateJson): ProcessPathDetail {
    const {issue, macrosteps} = json;
    const processes: HarmonyProcess[] = [];
    const pidToName: Record<string, string> = {};

    const previousSharedValues: Record<string, unknown> = {};
    const previousTraces: Record<string, TraceData> = {};

    for (const macroStep of macrosteps) {
        let previousMode = "running";
        let previousFailure = undefined;
        const {tid: pid, name} = macroStep;
        pidToName[pid] = name;
        const slices: HarmonySlice[] = [];
        let duration = 0;
        let sliceDuration = 0;
        const microSteps: HarmonyStep[] = [];

        // For the first step
        if (macroStep.microsteps.length > 0) {
            const firstStep = macroStep.microsteps[0];
            Object.assign(previousSharedValues, parseSharedValues(firstStep.shared));
            const trace = parseIntermediateTraceArray(firstStep.mode ?? previousMode, firstStep.failure, firstStep.trace);
            if (trace.traces == null) {
                if (previousTraces[pid] != null)
                    trace.traces = previousTraces[pid].traces;
                else
                    trace.traces = [];
            }
            Object.assign(previousTraces, {[pid]: trace});
            sliceDuration++;
            duration++;
        }
        // For the remaining steps
        for (let i = 1; i < macroStep.microsteps.length; i++) {
            const microStep = macroStep.microsteps[i];
            const pc = Number.parseInt(microStep.pc);
            const npc = microStep.pc === null ? null : Number.parseInt(microStep.npc);
            if (microStep.shared != null
                || microStep.trace != null
                || microStep.mode != null
                || microStep.failure != null
            ) {
                if (microStep.failure != null) {
                    microStep.mode = "failed";
                }
                slices.push({
                    duration: sliceDuration,
                    shared_values: Object.assign({}, previousSharedValues),
                    trace: Object.assign({}, previousTraces),
                    mode: previousMode,
                    failure: previousFailure
                });
                sliceDuration = 0;
                Object.assign(previousSharedValues, parseSharedValues(microStep.shared));

                const trace = parseIntermediateTraceArray(
                    microStep.mode ?? previousMode,
                    microStep.failure, microStep.trace);
                if (trace.traces == null) {
                    if (previousTraces[pid] != null)
                        trace.traces = previousTraces[pid].traces;
                    else
                        trace.traces = [];
                }
                Object.assign(previousTraces, {[pid]: trace});
                previousMode = microStep.mode ?? previousMode;
                previousFailure = microStep.failure;
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
            trace: Object.assign({}, previousTraces),
            mode: previousMode,
            failure: previousFailure
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
