import {
    IntermediateContext,
    IntermediateMicroStep,
    IntermediateTrace,
    IntermediateValueRepresentation
} from "../IntermediateJson";
import {CharmonyStackTrace} from "../CharmonyData";
import {parseIntermediateValueRep, parseVariableSet} from "../execution/values/parser";

type thread_id = string;

/**
 * Stack manager for version 2 of the Charmony visualizer
 */
export default class CharmonyStackManager {
    private readonly stackTrace: Record<thread_id, CharmonyStackTrace>;
    private readonly contexts: Record<thread_id, IntermediateContext>;

    private currentTid: thread_id;
    getCurrentTid() {return this.currentTid;}

    constructor() {
        this.stackTrace = {};
        this.contexts = {};
        this.currentTid = "";
    }

    /**
     * Sets a new set of local variables to the current process's top call stack.
     * @param local
     */
    setLocal(local: undefined | Record<string, IntermediateValueRepresentation>) {
        if (local == null) return;
        const stackTrace = this.stackTrace[this.currentTid];
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
    setCallStack(callStack: undefined | IntermediateTrace[]) {
        if (callStack == null) return;
        this.stackTrace[this.currentTid] = {
            ...this.stackTrace[this.currentTid],
            callStack: callStack.map(cs => {
                return {
                    ...cs,
                    callType: cs.calltype,
                    vars: parseVariableSet(cs.vars)
                };
            })
        };
    }

    /**
     * Sets the status of the current thread.
     */
    setStatus(tid: string, props: IntermediateMicroStep | IntermediateContext) {
        const {
            mode, atomic, failure,
            interruptlevel, readonly, choose
        } = props;
        console.log("Stack", this.stackTrace[tid]);
        let status = mode === undefined ? this.stackTrace[tid].status : mode;
        if (status != "terminated") {
            if (atomic != null && Number.parseInt(atomic) > 0) {
                status += " atomic";
            }
            if (readonly != null && Number.parseInt(readonly) > 0) {
                status += " read-only";
            }
            if (interruptlevel != null && Number.parseInt(interruptlevel) > 0) {
                status += " interrupts-disabled";
            }
        }
        const currentStackTrace = this.stackTrace[tid];
        this.stackTrace[tid] = {
            ...currentStackTrace,
            chosen: choose != null ? parseIntermediateValueRep(choose) : undefined,
            mode: mode,
            status: status,
            failure: failure,
            atomic: atomic != null ? Number.parseInt(atomic) : currentStackTrace.atomic,
            interruptLevel: interruptlevel != null ? Number.parseInt(interruptlevel) : currentStackTrace.interruptLevel,
            readonly: readonly != null ? Number.parseInt(readonly) : currentStackTrace.readonly
        };
    }

    /**
     * Sets the current TID. Makes all other processes runnable if they are not
     * blocked/terminated/failed.
     * @param newTid
     * @param contexts
     */
    setNewTid(newTid: thread_id, contexts: IntermediateContext[]) {
        Object.assign(this.contexts, Object.fromEntries(contexts.map(c => [c.tid, c])));
        this.currentTid = newTid;
        if (this.stackTrace[newTid] != null) {
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
                chosen: undefined,
                augments: []
            };
        } else {
            this.stackTrace[newTid] = {
                ...this.stackTrace[newTid],
                mode: "running",
                status: "running"
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
        return Object.assign({}, this.stackTrace);
    }
}
