import {HarmonyProcess, HarmonySlice, HarmonyStep, HarmonyTrace, ProcessPathDetail} from "../CharmonyJson";
import {
  IntermediateJson, IntermediateKeyValueRep,
  IntermediateTrace,
  IntermediateValueRepresentation
} from "./IntermediateJson";


function parseIntermediateValueRep(v: IntermediateValueRepresentation): unknown {
  const {value, type} = v;
  console.log("Parse rep value", v);
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
  console.log("Parse Trace Value");
  const copiedTrace: IntermediateTrace = Object.assign({}, trace);
  return {
    ...copiedTrace,
    vars: parseSharedValues(trace.vars)
  };
}

function parseSharedValues(sharedValues: null | Record<string, IntermediateValueRepresentation>): Record<string, unknown> {
  const result: Record<string, unknown> = {};
  console.log("Parse Shared Values", sharedValues);
  if (sharedValues != null) {
    console.log("Pass");
    Object.entries(sharedValues).forEach(([k, v]) => {
      result[k] = parseIntermediateValueRep(v);
    });
    console.log("Yes");
  }
  console.log(result);
  return result;
}

function parseIntermediateTraceArray(pid: string, traces: null | IntermediateTrace[]): Record<string, HarmonyTrace[]> {
  const result: Record<string, HarmonyTrace[]> = {};
  console.log("Parse Trace Array");
  if (traces != null) {
    result[pid] = traces.map(parseIntermediateTrace);
  }
  return result;
}

export function getPathToBadNode(json: IntermediateJson): ProcessPathDetail {
  const {issue, macrosteps} = json;
  const processes: HarmonyProcess[] = [];

  const previousSharedValues: Record<string, unknown> = {};
  const previousTraces: Record<string, HarmonyTrace[]> = {};
  let previousMode = "running";
  let previousFailure = null;

  console.log("1.1.1");
  for (const macroStep of macrosteps) {
    const {tid: pid, name} = macroStep;
    const slices: HarmonySlice[] = [];
    let duration = 0;
    let sliceDuration = 0;
    const microSteps: HarmonyStep[] = [];

    // For the first step
    console.log("1.1.2");
    if (macroStep.microsteps.length > 0) {
      const firstStep = macroStep.microsteps[0];
      Object.assign(previousSharedValues, parseSharedValues(firstStep.shared));
      Object.assign(previousTraces, parseIntermediateTraceArray(pid, firstStep.trace));
      sliceDuration++;
      duration++;
    }
    console.log("1.1.3");
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
        console.log("1.1.7", previousTraces, previousSharedValues);
        slices.push({
          duration: sliceDuration,
          shared_values: Object.assign({}, previousSharedValues),
          trace: Object.assign({}, previousTraces),
          mode: previousMode,
          failure: previousFailure
        });
        sliceDuration = 0;
        Object.assign(previousSharedValues, parseSharedValues(microStep.shared));
        Object.assign(previousTraces, parseIntermediateTraceArray(pid, microStep.trace));
        previousMode = microStep.mode ?? previousMode;
        previousFailure = microStep.failure;
      }
      duration++;
      sliceDuration++;

      console.log("1.1.6");
      if (microStep.choose != null) {
        const chooseValue = parseIntermediateValueRep(microStep.choose);
        microSteps.push({choose: [pc, chooseValue]});
      } else {
        microSteps.push({step: [pc, npc ?? -1]});
      }
    }
    console.log("1.1.4");
    slices.push({
      duration: sliceDuration,
      shared_values: Object.assign({}, previousSharedValues),
      trace: Object.assign({}, previousTraces),
      mode: previousMode,
      failure: previousFailure
    });
    console.log("1.1.5");
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
    processes: processes
  };
}
