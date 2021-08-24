import {IntermediateKeyValueRep, IntermediateValueRepresentation} from "../../types/IntermediateJson";
import {entries} from "../../util/object_util";

export function parseIntermediateValueRep(v: IntermediateValueRepresentation): unknown {
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

export function parseVariableSet(sharedValues: undefined | Record<string, IntermediateValueRepresentation>): Record<string, unknown> {
    const result: Record<string, unknown> = {};
    if (sharedValues != null) {
        entries(sharedValues).forEach(([k, v]) => {
            if (!k.startsWith("__")) {
                result[k] = parseIntermediateValueRep(v);
            }
        });
    }
    return result;
}
