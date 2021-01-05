from typing import List

from analysis.fromc.jsontypes import Context, get_value


def parse_context(contexts: List[Context]):
    parsed_context = []
    for c in contexts:
        pid = c['tid']
        process_name = c['name']
        failure = 'failure' in c
        mode = c['mode']
        traces = []
        for t in c['trace']:
            display = "block"
            variables = {k: get_value(v) for k, v in t['vars'].items()}
            method = t['method']
            traces.append({
                "display": display,
                "variables": variables,
                "method": method
            })
        parsed_context.append({
            "pid": pid,
            "process_name": process_name,
            "failure": failure,
            "mod": mode,
            "traces": traces
        })
    return parsed_context
