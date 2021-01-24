import {TraceData} from "../CharmonyJson";
import {IntermediateTrace, IntermediateValueRepresentation} from "../IntermediateJson";
import {parseVariableSet} from "./values/parser";

type TID = string;
const BAD_STATES = ["blocked", "terminated", "failed"];
export default class StackTraceManager {
    private readonly stackTrace: Record<TID, TraceData>;

    private currentTid: TID;
    getCurrentTid() {return this.currentTid;}
    getCurrentMode() {return this.stackTrace[this.currentTid].mode;}
    getCurrentFailure() {return this.stackTrace[this.currentTid].failure;}

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
        const callStack = this.stackTrace[this.currentTid].traces;
        console.log("Trace", this.stackTrace);
        console.log("Call stack", callStack);
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
            traces: callStack.map(cs => {
                return {
                    ...cs,
                    vars: parseVariableSet(cs.vars)
                };
            })
        };
    }

    /**
     * Sets the mode of the current thread.
     */
    setMode(props: {
        mode: string | undefined;
        atomic: string | undefined;
        failure: string | undefined;
    }) {
        let {mode} = props;
        const {atomic, failure} = props;
        if (atomic == "1") {
            mode = "running atomic";
        }
        if (atomic == "0") {
            mode = "running";
        }
        if (failure != null) {
            mode = "failed";
        }
        if (mode != null) {
            this.stackTrace[this.currentTid] = {
                ...this.stackTrace[this.currentTid],
                mode: mode
            };
        }
    }

    /**
     * Sets the current TID. Makes all other processes runnable if they are not
     * blocked/terminated/failed.
     * @param newTid
     */
    setTid(newTid: TID) {
        this.currentTid = newTid;
        if (this.stackTrace[newTid] != null) {
            this.stackTrace[newTid] = {
                failure: undefined,
                mode: "running",
                traces: []
            };
        } else {
            this.stackTrace[newTid] = {
                ...this.stackTrace[newTid],
                mode: "running"
            };
        }
        Object.entries(this.stackTrace).forEach(([tid, traceData]) => {
            if (tid !== this.currentTid) {
                if (!BAD_STATES.includes(traceData.mode)) {
                    this.stackTrace[tid] = {
                        ...traceData,
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
