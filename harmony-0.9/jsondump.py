from json import JSONEncoder
from typing import Dict


def jsonify_dict_value(nametag) -> Dict[str, any]:
    if isinstance(nametag, (int, str, float)):
        return {"value": f"{nametag}"}
    if nametag is None:
        return {}
    dict_rep = {}
    if 'tag' in nametag.d:
        dict_rep["tag"] = jsonify_dict_value(nametag.d["tag"])
    return dict_rep


def jsonify_context(context) -> Dict[str, any]:
    if context is None:
        return {}
    return {
        "nametag": jsonify_dict_value(context.nametag),
        "pc": context.pc,
        "atomic": context.atomic,
        "interrupt_level": context.interruptLevel,
        "fp": context.fp,
        "trap": context.trap,
        "terminated": context.terminated,
        "stopped": context.stopped,
        "failure": context.failure,
        "vars": jsonify_dict_value(context.vars),
        "stack": [f"{s}" for s in context.stack]
    }


def jsonify_state(state) -> Dict[str, any]:
    if state is None:
        return {}
    # print(state.vars.d)
    for k, v in state.vars.d.items():
        pass
        # print(f"Type of value with key '{k}': ", end='')
        # print(type(v))
    # print(type(list(state.vars.d.items())[0][1]) if len(state.vars.d) > 0 else "")
    return {
        "code": [f"{i}" for i in state.code],
        "labels": state.labels,
        "vars": {f"{k}": f"{v}" for k, v in state.vars.d.items()},
        "ctxbag": [jsonify_context(k) for k in state.ctxbag.keys()],
        "stopbag": [jsonify_context(k) for k in state.stopbag.keys()],
        "choosing": jsonify_context(state.choosing),
        "initializing": state.initializing
    }


def jsonify_node(node) -> Dict[str, any]:
    if node is None:
        return {}
    return {
        "node_index": node.uid,
        "component_id": node.cid,
        "length": node.len,
        "steps": node.steps,
        "issues": list(node.issues),
        "expanded": node.expanded,

        "parent": jsonify_node(node.parent),
        "blocked": [jsonify_context(k) for k, v in node.blocked.items() if v],
        "after": jsonify_context(node.after),
        "before": jsonify_context(node.before),

        "state": jsonify_state(node.state),
    }


def jsondump(nodes, bad_node) -> None:
    """
    nodes: Node list,
    nodes: Optional<Node>
    """
    bad_node_json = jsonify_node(bad_node)
    nodes_json = [jsonify_node(n) for n in nodes]
    encoded = JSONEncoder().encode({
        "nodes": nodes_json,
        "badNode": bad_node_json
    })
    with open('jsondump.json', 'w') as f:
        f.write(encoded)
