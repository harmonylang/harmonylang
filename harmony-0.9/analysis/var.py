import queue
from typing import Tuple

from analysis.util import str_of_value


def vardim(d) -> Tuple[int, int]:
    """
    Based on vardim(d)
    :param d:
    :return:
    """
    totalwidth = 0
    maxheight = 0
    if isinstance(d, dict):
        for k in sorted(d.keys()):
            w, h = vardim(d[k])
            totalwidth += w
            if h + 1 > maxheight:
                maxheight = h + 1
    else:
        return 1, 0
    return totalwidth, maxheight


def varhdr(d, name, nrows):
    """
    Based on varhdr(d, name, nrows, f)
    :param d:
    :param name:
    :param nrows:
    :return:
    """
    q = queue.Queue()
    level = 0
    q.put((d, level))
    while not q.empty():
        nd, nl = q.get()
        if nl > level:
            level = nl
        if isinstance(nd, dict):
            for k in sorted(nd.keys()):
                w, h = vardim(nd[k])
                q.put((nd[k], nl+1))


def vardump_rec(d, vars, f):
    if isinstance(d, dict):
        for k in sorted(d.keys()):
            if vars is not None and k in vars.d:
                vardump_rec(d[k], vars.d[k], f)
            else:
                vardump_rec(d[k], None, f)
    elif vars is None:
        print("<td></td>", file=f)
    else:
        print("<td align='center'>%s</td>" % str_of_value(vars), file=f)


def vardump(d, vars, f):
    for k in sorted(d.keys()):
        vardump_rec(d[k], vars.d[k], f)


def varvisit(d, vars, name, r):
    if isinstance(d, dict):
        for k in sorted(d.keys()):
            if isinstance(k, str):
                nn = name + "." + k
            else:
                nn = name + "[" + str_of_value(k) + "]"
            if k in vars.d:
                varvisit(d[k], vars.d[k], nn, r)
            else:
                r.append("%s: ---"%nn)
    else:
        r.append("%s: %s"%(name, str_of_value(vars)))


def strvars(d, vars):
    r = []
    for k in sorted(d.keys()):
        varvisit(d[k], vars.d[k], k, r)
    return "{ " + ", ".join(r) + " }"


def varmerge(d, vars, typings):
    DictValue = typings['DictValue']
    assert isinstance(d, dict)
    assert isinstance(vars, DictValue)
    for (k, v) in vars.d.items():
        if k in d and isinstance(d[k], dict) and isinstance(v, DictValue):
            varmerge(d[k], v, typings)
        elif k not in d and isinstance(v, DictValue):
            d[k] = {}
            varmerge(d[k], v, typings)
        elif k not in d:
            d[k] = {v}
        elif isinstance(d[k], set):
            d[k] |= {v}
        else:
            assert isinstance(d[k], dict)
            d[k] = {v}


def vartrim(d):
    pairs = list(d.items())
    for (k, v) in pairs:
        if v == {}:
            del d[k]
        elif isinstance(d[k], dict):
            vartrim(d[k])


def pathvars(path, typings):
    d = {}
    for (fctx, ctx, steps, states, vars) in path:
        varmerge(d, vars, typings)
    vartrim(d)
    return d
