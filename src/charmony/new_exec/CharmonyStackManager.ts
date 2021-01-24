import {IntermediateTrace, IntermediateValueRepresentation} from "../IntermediateJson";
import {CharmonyStackTrace} from "../CharmonyData";
import {parseVariableSet} from "../execution/values/parser";

type thread_id = string;
const BAD_STATES = ["blocked", "terminated", "failed"];
export default class StackTraceManager {
    private readonly stackTrace: Record<thread_id, CharmonyStackTrace>;

    private currentTid: thread_id;
    getCurrentTid() {return this.currentTid;}

    constructor() {
        this.stackTrace = {};
        this.currentTid = "";
    }

    /**
     * Sets a new set of local variables to the current process's top call stack.
     * @param local
     */
    setLocal(local: undefined | Record<string, IntermediateValueRepresentation>) {
        if (local == null) return;
        const callStack = this.stackTrace[this.currentTid].callStack;
        callStack[callStack.length - 1] = {
            ...callStack[callStack.length - 1],
            vars: parseVariableSet(local)
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
    setStatus(props: {
        mode: string | undefined;
        atomic: string | undefined;
        failure: string | undefined;
        interruptlevel: string | undefined;
        readonly: string | undefined;
    }, tid?: string) {
        const {mode, atomic, failure, interruptlevel, readonly} = props;
        let status: string = mode ?? "running";
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
        this.stackTrace[tid ?? this.currentTid] = {
            ...this.stackTrace[tid ?? this.currentTid],
            mode: mode,
            status: status,
            atomic: atomic != null ? Number.parseInt(atomic) : undefined,
            failure: failure,
            interruptLevel: interruptlevel != null ? Number.parseInt(interruptlevel) : undefined,
            readonly: readonly != null ? Number.parseInt(readonly) : undefined
        };
    }

    /**
     * Sets the current TID. Makes all other processes runnable if they are not
     * blocked/terminated/failed.
     * @param newTid
     */
    setTid(newTid: thread_id) {
        this.currentTid = newTid;
        if (this.stackTrace[newTid] != null) {
            this.stackTrace[newTid] = {
                failure: undefined,
                mode: "running",
                callStack: [],
                tid: newTid,
                readonly: undefined,
                interruptLevel: undefined,
                atomic: undefined,
                status: "running",
                chosen: undefined,
            };
        } else {
            this.stackTrace[newTid] = {
                ...this.stackTrace[newTid],
                mode: "running"
            };
        }
        Object.entries(this.stackTrace).forEach(([tid, trace]) => {
            if (tid !== this.currentTid) {
                if (!BAD_STATES.includes(trace.status)) {
                    this.stackTrace[tid] = {
                        ...trace,
                        mode: "runnable"
                    };
                }
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
