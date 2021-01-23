import {HarmonyProcess, HarmonySlice, HarmonyStep, ProcessPathDetail} from "../CharmonyJson";
import {
  IntermediateJson, IntermediateKeyValueRep,
  IntermediateTrace,
  IntermediateValueRepresentation
} from "./IntermediateJson";


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
        const key = parseIntermediateValueRep(e.key);
        dict[JSON.stringify(key)] = e.value;
      }
      return dict;
    }
  }
  throw TypeError("Cannot parse this value");
}

function parseIntermediateTrace(trace: IntermediateTrace) {
  const copiedTrace: Record<string, unknown> = Object.assign({}, trace);
  copiedTrace['vars'] = parseSharedValues(trace.vars);
  return copiedTrace;
}

function parseSharedValues(sharedValues: null | Record<string, IntermediateValueRepresentation>): Record<string, unknown> {
  const result: Record<string, unknown> = {};
  if (sharedValues !== null) {
    Object.entries(sharedValues).forEach(([k, v]) => {
      result[k] = parseIntermediateValueRep(v);
    });
  }
  return result;
}

function parseIntermediateTraceArray(pid: string, traces: null | IntermediateTrace[]): Record<string, unknown> {
  const result: Record<string, unknown> = {};
  if (traces !== null) {
    result[pid] = traces.map(parseIntermediateTrace);
  }
  return result;
}

export function getPathToBadNode(json: IntermediateJson): ProcessPathDetail {
  const {issue, macrosteps} = json;
  const sharedVariableNames = new Set<string>();
  const processes: HarmonyProcess[] = [];
  const previousSharedValues: Record<string, unknown> = {};
  const previousTraces: Record<string, unknown> = {};

  for (const macroStep of macrosteps) {
    const {tid: pid, name} = macroStep;
    const finalValues = parseSharedValues(macroStep.shared);
    Object.keys(finalValues).forEach(sharedVariableNames.add);

    const slices: HarmonySlice[] = [];
    let duration = 0;
    let sliceDuration = 0;
    const microSteps: HarmonyStep[] = [];

    // For the first step
    if (macroStep.microsteps.length > 0) {
      const firstStep = macroStep.microsteps[0];
      Object.entries(parseSharedValues(firstStep.shared)).forEach(([k, v]) => {
        previousSharedValues[k] = v;
      });
      Object.entries(parseIntermediateTraceArray(pid, firstStep.trace)).forEach(([k, v]) => {
        previousTraces[k] = v;
      });
      sliceDuration++;
      duration++;
    }
    // For the remaining steps
    for (let i = 1; i < macroStep.microsteps.length; i++) {
      const microStep = macroStep.microsteps[i];
      const pc = Number.parseInt(microStep.pc);
      const npc = microStep.pc === null ? null : Number.parseInt(microStep.npc);
      if (microStep.shared !== null || microStep.trace !== null) {
        slices.push({
          duration: sliceDuration,
          shared_values: Object.assign({}, previousSharedValues),
          trace: Object.assign({}, previousTraces)
        });
        sliceDuration = 0;
        Object.assign(previousSharedValues, parseSharedValues(microStep.shared));
        Object.assign(previousTraces, parseIntermediateTraceArray(pid, microStep.trace));
      }
      duration++;
      sliceDuration++;

      if (microStep.choose !== null) {
        const chooseValue = parseIntermediateValueRep(microStep.choose);
        microSteps.push({choose: [pc, chooseValue]});
      } else {
        microSteps.push({step: [pc, npc ?? -1]});
      }
    }
    slices.push({
      duration: sliceDuration,
      shared_values: Object.assign({}, previousSharedValues),
      trace: Object.assign({}, previousTraces)
    });
    processes.push({
      pid: pid,
      name: name,
      final_shared_values: finalValues,
      slices: slices,
      duration: duration,
      steps: microSteps,
    });
  }
  return {
    issue: issue,
    shared_variable_names: [...sharedVariableNames],
    processes: processes
  };
}
