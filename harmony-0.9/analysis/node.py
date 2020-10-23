from typing import List

from analysis.path import get_path, process_steps
from analysis.util import nametag_to_str, str_of_value


def htmlloc(code, scope, ctx, files, trace_id: List[int], typings, novalue):
    pc = ctx.pc
    fp = ctx.fp
    location = trace_id[0]
    # print("<table id='loc%d' border='1' width='100%%'>" % trace_id[0], file=f)
    trace = []
    while True:
        trace += [(pc, fp)]
        if fp < 5:
            break
        pc = ctx.stack[fp - 5]
        assert isinstance(pc, typings['PcValue'])
        pc = pc.pc
        fp = ctx.stack[fp - 1]
    trace.reverse()
    row = 0
    output = []
    for (pc, fp) in trace:
        while pc >= 0 and pc not in scope.locations:
            pc -= 1
        (file, line) = scope.locations[pc]
        while pc >= 0 and not isinstance(code[pc], typings['FrameOp']):
            pc -= 1
        if fp >= 3:
            arg = ctx.stack[fp-3]
            if arg == novalue:
                output.append(f"{code[pc].name[0]}()")
            else:
                output.append(f"{code[pc].name[0]}({str_of_value(arg)})")
        lines = files.get(file)
        if lines is not None and line <= len(lines):
            output.append(lines[line - 1])
        row += 1
    if ctx.failure is not None:
        return {
            'lines': output,
            'failure': ctx.failure
        }
    else:
        return {
            'lines': output,
            'failure': None
        }


def htmlvars(vars, id, row, trace_id: List[int], typings):
    assert(isinstance(vars, typings['DictValue']))
    display = "block" if row == 0 else "none"
    variables = [{"name": str_of_value(key)[1:], "value": str_of_value(value)} for key, value in vars.d.items()]
    return {
        'variables': variables,
        'display': display
    }


def htmltrace(code, scope, ctx, trace_id, typings) -> list:
    pc = ctx.pc
    fp = ctx.fp
    trace = [ctx.vars]
    variables = []
    while fp >= 5:
        # print("Frame pointer", fp)
        trace.append(ctx.stack[fp - 2])
        fp = ctx.stack[fp - 1]
    trace.reverse()
    for i in range(len(trace)):
        variables.append(htmlvars(trace[i], trace_id[0], i, trace_id, typings))
    return variables


def htmlrow(ctx, bag, node, code, scope, verbose, files, trace_id: List[int], typings, novalue):
    trace_id[0] += 1

    process = nametag_to_str(ctx.nametag)
    copies = bag[ctx]
    stopped = ctx.stopped
    choosing = node.state.choosing
    blocked = not stopped and not choosing and ctx in node.edges and node.isblocked(ctx)
    failed = not stopped and not choosing and ctx not in node.edges
    if not stopped and not choosing:
        if ctx in node.edges:
            blocked = node.isblocked(ctx)
        else:
            failed = True

    locs = htmlloc(code, scope, ctx, files, trace_id, typings, novalue)

    # print variables
    traces = htmltrace(code, scope, ctx, trace_id, typings)

    # print stack
    context_details = {}
    if verbose:
        context_details['fp'] = ctx.fp
        stack = []
        for v in ctx.stack:
            if isinstance(v, typings['PcValue']):
                stack.append((v.pc, str_of_value(v)))
            else:
                stack.append((None, str_of_value(v)))
        context_details['stack'] = stack
        assert not choosing
        steps_in_ctx = []
        uid = None
        if ctx in node.edges:
            nn, nc, steps = node.edges[ctx]
            steps_in_ctx = process_steps(steps)
            uid = nn.uid
        context_details['steps'] = steps_in_ctx
        context_details['uid'] = uid
    return {
        'stopped': stopped,
        'blocked': blocked,
        'failed': failed,
        'choosing': choosing,
        'process_name': process,
        'number_of_copies': copies,
        'traces': traces,
        'context_details': context_details,
        'locs': locs
    }


def get_node_data(n, code, scope, verbose, files, typings, trace_id, novalue):
    uid = n.uid
    path_to_n = get_path(n) if verbose else None

    ctxbag = []
    stopbag = []

    # print("Number of context bags", len(n.state.ctxbag.keys()))
    for ctx in sorted(n.state.ctxbag.keys(), key=lambda x: nametag_to_str(x.nametag)):
        ctxbag.append(htmlrow(ctx, n.state.ctxbag, n, code, scope, verbose, files, trace_id, typings, novalue))
    for ctx in sorted(n.state.stopbag.keys(), key=lambda x: nametag_to_str(x.nametag)):
        stopbag.append(htmlrow(ctx, n.state.stopbag, n, code, scope, verbose, files, trace_id, typings, novalue))
    return {
        'uid': uid,
        'path_to_n': path_to_n,
        'context_bag': ctxbag,
        'stop_bag': stopbag
    }


def full_dump(nodes, code, scope, files, verbose, typings, novalue, fulldump: bool, bad_node_id: int, path):
    nodes = sorted(nodes, key=lambda n: n.uid)
    if fulldump:
        return [get_node_data(n, code, scope, verbose, files, typings, [0], novalue) for n in nodes]
    else:
        sids = set(map(lambda p: p['sid'], path['processes']))
        bad_nodes = filter(lambda n: n.uid == bad_node_id or n.uid in sids, nodes)
        return [get_node_data(n, code, scope, verbose, files, typings, [0], novalue) for n in bad_nodes]
