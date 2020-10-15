from typing import List

from analysis.path import get_path, process_steps
from analysis.util import nametag_to_str, str_of_value


def htmlloc(code, scope, ctx, files, trace_id: List[int]):
    pc = ctx.pc
    fp = ctx.fp
    print("<table id='loc%d' border='1' width='100%%'>" % trace_id[0], file=f)
    trace = []
    while True:
        trace += [(pc, fp)]
        if fp < 5:
            break
        pc = ctx.stack[fp - 5]
        assert isinstance(pc, PcValue)
        pc = pc.pc
        fp = ctx.stack[fp - 1]
    trace.reverse()
    row = 0
    for (pc, fp) in trace:
        if row == 0:
            print("<tr style='background-color: #A5FF33'>", file=f)
        else:
            print("<tr>", file=f)
        print("<td>", file=f)
        print("<a href='#P%d'>%d</a> "%(pc, pc), file=f)
        print("<a href='javascript:setrow(%d,%d)'>"%(trace_id[0], row), file=f)
        while pc >= 0 and pc not in scope.locations:
            pc -= 1
        (file, line) = scope.locations[pc]
        while pc >= 0 and not isinstance(code[pc], FrameOp):
            pc -= 1
        if fp >= 3:
            arg = ctx.stack[fp-3]
            if arg == novalue:
                print("%s()"%(code[pc].name[0]), end="", file=f)
            else:
                print("%s(%s)"%(code[pc].name[0], str_of_value(arg)), end="", file=f)
        print("</a>:", file=f)
        lines = files.get(file)
        if lines is not None and line <= len(lines):
            print(html.escape(lines[line - 1]), file=f)
        print("</td></tr>", file=f)
        row += 1

    if ctx.failure is not None:
        print("<tr style='color: red'><td>%s</td></tr>"%ctx.failure, file=f)
    print("</table>", file=f)


def htmlvars(vars, id, row, trace_id: List[int]):
    assert(isinstance(vars, DictValue))
    display = "block" if row == 0 else "none"
    print("<div id='vars%d_%d' style='display:%s'>"%(trace_id[0], row, display), file=f)
    if len(vars.d) > 0:
        print("<table>", file=f)
        for (key, value) in vars.d.items():
            print("<tr>", file=f)
            print("<td>%s = %s</td>" % (str_of_value(key)[1:], str_of_value(value)), file=f)
            print("</tr>", file=f)
        print("</table>", file=f)
    print("</div>", file=f)


def htmltrace(code, scope, ctx, trace_id):
    pc = ctx.pc
    fp = ctx.fp
    trace = [ctx.vars]
    while True:
        if fp < 5:
            break
        trace.append(ctx.stack[fp - 2])
        fp = ctx.stack[fp - 1]
    trace.reverse()
    for i in range(len(trace)):
        htmlvars(trace[i], trace_id, i)


def htmlrow(ctx, bag, node, code, scope, verbose, files, trace_id: List[int]):
    trace_id[0] += 1

    print("<tr>", file=f)
    process = nametag_to_str(ctx.nametag)
    copies = bag[ctx]
    stopped = ctx.stopped
    choosing = node.state.choosing
    blocked = False
    failed = False
    if not stopped and not choosing:
        if ctx in node.edges:
            blocked = node.isblocked(ctx)
        else:
            failed = True

    htmlloc(code, scope, ctx, files, trace_id)

    # print variables
    htmltrace(code, scope, ctx, trace_id)

    # print stack
    if verbose:
        print("<td>%d</td>" % ctx.fp, file=f)
        print("<td align='center'>", file=f)
        print("<table border='1'>", file=f)
        for v in ctx.stack:
            print("<tr><td align='center'>", file=f)
            if isinstance(v, PcValue):
                print("<a href='#P%d'>"%v.pc, file=f)
                print("%s" % str_of_value(v), file=f)
                print("</a>", file=f)
            else:
                print("%s" % str_of_value(v), file=f)
            print("</td></tr>", file=f)
        print("</table>", file=f)
        print("</td>", file=f)
        assert not s.choosing
        if ctx in node.edges:
            nn, nc, steps = node.edges[ctx]
            print("<td>%s</td>" % process_steps(steps), file=f)
            print("<td><a href='javascript:show(%d)'>" % nn.uid, file=f)
            print("%d</a></td>" % nn.uid, file=f)
        else:
            print("<td>no steps</td>", file=f)
            print("<td></td>", file=f)
    print("</tr>", file=f)


def htmlnode(n, code, scope, verbose, files, trace_id):
    uid = n.uid
    path_to_n = get_path(n) if verbose else None

    ctxbag = []
    stopbag = []

    for ctx in sorted(n.state.ctxbag.keys(), key=lambda x: nametag_to_str(x.nametag)):
        ctxbag.append(htmlrow(ctx, n.state.ctxbag, n, code, scope, verbose, files, trace_id))
    for ctx in sorted(n.state.stopbag.keys(), key=lambda x: nametag_to_str(x.nametag)):
        stopbag.append(htmlrow(ctx, n.state.stopbag, n, code, scope, verbose, files, trace_id))
    return {
        'uid': uid,
        'path_to_n': path_to_n,
        'context_bag': ctxbag,
        'stop_bag': stopbag
    }

def full_dump(nodes, code, scope, files, verbose):
    return [htmlnode(n, code, scope, verbose, files, trace_id=[0]) for n in nodes]
