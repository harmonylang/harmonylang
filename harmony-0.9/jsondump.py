from json import JSONEncoder


def jsonify_dict_value(nametag) -> dict:
    dict_rep = {}
    if 'tag' in nametag.d:
        dict_rep["tag"] = jsonify_dict_value(nametag.d["tag"])
    return dict_rep


def jsonify_context(context) -> dict:
    if context is None:
        return {}
    print(context.stack)
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


def jsonify_state(state) -> dict:
    return {
        "stopbag": [jsonify_context(k) for k in state.stopbag.keys()],
        "ctxbag": [jsonify_context(k) for k in state.ctxbag.keys()],
        "code": [f"{i}" for i in state.code],
        "labels": state.labels,
        "vars": {f"{k}": v for k, v in state.vars.d.items()},
        "choosing": jsonify_context(state.choosing),
        "initializing": state.initializing
    }


def jsonify_node(node) -> dict:
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
    encoded = JSONEncoder(indent=4).encode({
        "nodes": nodes_json,
        "badNode": bad_node_json
    })
    with open('jsondump.json', 'w') as f:
        f.write(encoded)
