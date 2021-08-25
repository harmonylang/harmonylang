
export function fromEntries<V>(entries: [string, V][]): Record<string, V> {
    const obj: Record<string, V> = {};
    for (const [k, v] of entries) {
        obj[k] = v;
    }
    return obj;
}

export function entries<V>(obj: Record<string, V>): [string, V][] {
    const entries: [string, V][] = [];
    Object.keys(obj).forEach(k => {
        entries.push([k, obj[k]]);
    });
    return entries;
}

export function shallowClone<V>(obj: Record<string, V>): Record<string, V> {
    return Object.assign({}, obj);
}
