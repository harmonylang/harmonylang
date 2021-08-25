import {
    IntermediateContext,
    IntermediateMicroStep,
    IntermediateTrace,
    IntermediateValueRepresentation
} from "../../types/IntermediateJson";
import {CharmonyStackTrace} from "../../types/CharmonyJson";
import {parseIntermediateValueRep, parseVariableSet} from "./valueParser";
import {fromEntries, shallowClone} from "../../util/object_util";

type thread_id = string;

/**
 * Stack manager for version 2 of the Charmony visualizer
 */
export default class CharmonyStackManager {
    private readonly stackTrace: Record<thread_id, CharmonyStackTrace>;
    private readonly contexts: Record<thread_id, IntermediateContext>;

    private currentTid: thread_id;

    constructor() {
        this.stackTrace = {};
        this.contexts = {};
        this.currentTid = "";
    }

    /**
     * Sets a new set of local variables to the current process's top call stack.
     * @param local
     */
    private setLocal(local: undefined | Record<string, IntermediateValueRepresentation>) {
        if (local == null) return;
        const stackTrace = this.stackTrace[this.currentTid];
        if (stackTrace.callStack.length === 0) return;
        const [toReplace, ...rest] = stackTrace.callStack;

        this.stackTrace[this.currentTid] = {
            ...stackTrace,
            callStack: [{
                ...toReplace,
                vars: parseVariableSet(local),
            }, ...rest]
        };
    }

    /**
     * Sets the current call stack for the current thread.
     * @param callStack
     */
    private setCallStack(callStack: undefined | IntermediateTrace[]) {
        if (callStack == null) return;
        this.stackTrace[this.currentTid] = {
            ...this.stackTrace[this.currentTid],
            callStack: callStack.map(cs => {
                return {
                    method: cs.method,
                    pc: cs.pc,
                    callType: cs.calltype,
                    vars: parseVariableSet(cs.vars)
                };
            })
        };
    }

    updateStack(tid: string, props: IntermediateMicroStep, isLastMicroStep: boolean) {
        if (isLastMicroStep) {
            const {
                atomic, fullStatus,
                interruptLevel, readonly, status
            } = this.getFullStatus(tid, this.contexts[tid]);
            const {trace, mode, choose, failure} = this.contexts[tid];
            this.stackTrace[tid] = {
                atomic, fullStatus,
                interruptLevel, readonly, status,
                mode, failure, tid,
                callStack: trace.map(t => {
                    return {
                        callType: t.calltype,
                        method: t.method,
                        vars: parseVariableSet(t.vars),
                        pc: t.pc
                    };
                }),
                chosen: choose != null ? parseIntermediateValueRep(choose) : undefined,
            };
        } else {
            this.setCallStack(props.trace);
            this.setStatus(tid, props);
            this.setLocal(props.local);
        }
    }

    private getFullStatus(tid: string, props: IntermediateMicroStep | IntermediateContext) {
        const {
            mode, atomic, failure,
            interruptlevel, readonly, choose
        } = props;
        const ongoingTrace = this.stackTrace[tid];
        const status = mode === undefined ? ongoingTrace.status : mode;
        const augments: string[] = [];
        const atomicLevel = atomic != null ? Number.parseInt(atomic): ongoingTrace.atomic;
        const readLevel = readonly != null ? Number.parseInt(readonly): ongoingTrace.readonly;
        const interruptLevelValue = interruptlevel != null ? Number.parseInt(interruptlevel) : ongoingTrace.interruptLevel;
        if (status != "terminated") {
            if (atomicLevel > 0) {
                augments.push("atomic");
            }
            if (readLevel > 0) {
                augments.push("read-only");
            }
            if (interruptLevelValue > 0) {
                augments.push("interrupts-disabled");
            }
        }
        const fullStatus = status + (augments.length > 0 ? " " + augments.join(" ") : "");

        return {
            fullStatus,
            status,
            atomic: atomicLevel,
            interruptLevel: interruptLevelValue,
            readonly: readLevel,
            failure,
            choose
        };
    }

    /**
     * Sets the status of the current thread.
     */
    private setStatus(tid: string, props: IntermediateMicroStep | IntermediateContext) {
        const {mode, failure, choose} = props;
        const ongoingTrace = this.stackTrace[tid];
        const {
            fullStatus, status, readonly,
            atomic, interruptLevel
        } = this.getFullStatus(tid, props);
        this.stackTrace[tid] = {
            ...ongoingTrace,
            callStack: ongoingTrace.callStack.map(x => {
                return {...x};
            }),
            chosen: choose != null ? parseIntermediateValueRep(choose) : undefined,
            fullStatus: fullStatus,
            status: status,
            mode: mode,
            failure: failure,
            atomic, interruptLevel, readonly
        };
    }

    /**
     * Sets the current TID. Makes all other processes runnable if they are not
     * blocked/terminated/failed.
     * @param newTid
     * @param contexts
     */
    setNewTid(newTid: thread_id, contexts: IntermediateContext[]) {
        Object.assign(this.contexts, fromEntries(contexts.map(c => [c.tid, c])));
        this.currentTid = newTid;
        if (this.stackTrace[newTid] == null) {
            this.stackTrace[newTid] = {
                failure: undefined,
                mode: "running",
                fullStatus: "running",
                status: "running",
                callStack: [],
                tid: newTid,
                readonly: 0,
                interruptLevel: 0,
                atomic: 0,
                chosen: undefined
            };
        } else {
            this.stackTrace[newTid] = {
                ...this.stackTrace[newTid],
                mode: "running",
                status: "running",
                fullStatus: "running"
            };
        }
        Object.keys(this.stackTrace).forEach(tid => {
            if (tid !== this.currentTid && this.contexts[tid] != null) {
                this.setStatus(tid, this.contexts[tid]);
            }
        });
    }

    /**
     * Creates a shallow copy of the current stack trace.
     */
    clone() {
        return shallowClone(this.stackTrace);
    }
}
