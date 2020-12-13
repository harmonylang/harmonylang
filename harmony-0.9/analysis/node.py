from typing import List, Optional, TypedDict, Union

from analysis.path import get_path, process_steps
from analysis.util import nametag_to_str, str_of_value, json_valid_value


def get_trace(code, scope, ctx, files, trace_id: List[int], typings, novalue):
    """
    See htmlloc(code, scope, ctx, traceid, f) for the function this is based on.

    Returns:
        A dictionary with two fields:
            - lines: A list whose elements represent each stack trace level in a process, where the details of that
                process are provided in the given [ctx].
            - failure: An optional string which contains the error message if an error occurred at this stack
                during Harmony program execution.
    """
    pc = ctx.pc
    fp = ctx.fp
    location = trace_id[0]
    trace = [(pc, fp)]
    while fp >= 5:
        pc = ctx.stack[fp - 5]
        assert isinstance(pc, typings['PcValue'])
        pc = pc.pc
        fp = ctx.stack[fp - 1]
        trace.append((pc, fp))
    trace.reverse()
    output = []
    for pc, fp in trace:
        initial_pc = pc
        while pc >= 0 and pc not in scope.locations:
            pc -= 1
        file, line = scope.locations[pc]
        scope_name: Optional[str] = None
        while pc >= 0 and not isinstance(code[pc], typings['FrameOp']):
            pc -= 1
        if fp >= 3:
            arg = ctx.stack[fp-3]
            if arg == novalue:
                scope_name = f"{code[pc].name[0]}()"
            else:
                scope_name = f"{code[pc].name[0]}({str_of_value(arg)})"
        lines = files.get(file)
        scope_line: Optional[str] = None
        if lines is not None and line <= len(lines):
            scope_line = lines[line - 1]
        output.append((initial_pc, scope_name, scope_line))
    return {
        'lines': output,
        'failure': ctx.failure
    }


def htmlvars(vars, id, row, trace_id: List[int], typings):
    assert(isinstance(vars, typings['DictValue']))
    display = "block" if row == 0 else "none"
    variables = [{"name": str_of_value(key)[1:], "value": json_valid_value(value, typings)} for key, value in vars.d.items()]
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


def parse_context(ctx, bag, node, code, scope, verbose, files, trace_id: List[int], typings, novalue):
    """
    Read htmlrow for the function this is based on.
    :param ctx:
    :param bag:
    :param node:
    :param code:
    :param scope:
    :param verbose:
    :param files:
    :param trace_id:
    :param typings:
    :param novalue:
    :return:
    """
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

    locs = get_trace(code, scope, ctx, files, trace_id, typings, novalue)

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
            steps_in_ctx = process_steps(steps, typings)
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


def get_node_data(n, code, scope, verbose, files, typings, trace_id, novalue, nodes):
    uid = n.uid
    path_to_n = get_path(n, typings) if verbose else None

    ctxbag = []
    stopbag = []

    # print("Number of context bags", len(n.state.ctxbag.keys()))
    for ctx in sorted(n.state.ctxbag.keys(), key=lambda x: nametag_to_str(x.nametag)):
        ctxbag.append(parse_context(ctx, n.state.ctxbag, n, code, scope, verbose, files, trace_id, typings, novalue))
    for ctx in sorted(n.state.stopbag.keys(), key=lambda x: nametag_to_str(x.nametag)):
        stopbag.append(parse_context(ctx, n.state.stopbag, n, code, scope, verbose, files, trace_id, typings, novalue))
    return {
        'uid': uid,
        'path_to_n': path_to_n,
        'context_bag': ctxbag,
        'stop_bag': stopbag
    }


class HarmonyNode(TypedDict):
    uid: int
    path_to_n: Union[list, None]
    context_bag: list
    stop_bag: list


def full_dump(nodes, code, scope, files, verbose: bool, typings,
              novalue, fulldump: bool, bad_node_id, path) -> List[HarmonyNode]:
    """
    See the htmlnode(n, code, scope, f, verbose) in harmony.py for the basis of this function.
    """
    if fulldump:
        return [get_node_data(n, code, scope, verbose, files, typings, [0], novalue, nodes) for n in nodes]
    else:
        sids = set(s for p in path['processes'] for s in p['states'])
        bad_nodes = filter(lambda n: n.uid == bad_node_id or n.uid in sids, nodes)
        return [get_node_data(n, code, scope, verbose, files, typings, [0], novalue, nodes) for n in bad_nodes]
