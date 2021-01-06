from typing import List

from analysis.fromc.jsontypes import Context, get_value


def parse_context(contexts: List[Context]):
    parsed_context = []
    for c in contexts:
        pid = c['tid']
        process_name = c['name']
        failure = c['failure'] if 'failure' in c else None
        mode = c['mode']
        traces = []
        for t in c['trace']:
            variables = {k: get_value(v) for k, v in t['vars'].items()}
            method = t['method']
            traces.append({
                "variables": variables,
                "method": method
            })
        parsed_context.append({
            "pid": pid,
            "process_name": process_name,
            "failure": failure,
            "mode": mode,
            "traces": traces
        })
    return parsed_context
