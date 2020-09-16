from json import dumps, loads, JSONEncoder, JSONDecoder
# from harmony import ContextValue, Node, State


def jsonify_dict_value(nametag) -> dict:
    dict_rep = {}
    if 'tag' in nametag.d:
        dict_rep["tag"] = jsonify_dict_value(nametag.d["tag"])
    return dict_rep


def jsonify_context(context) -> dict:
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
        # "stack": context.stack
    }


def jsonify_state(state) -> dict:
    # code = state.code
    # labels = state.labels
    # vars = state.vars
    # context_bag = [jsonify_context(k) for k in state.ctxbag.keys()]
    # stopbag = [jsonify_context(k) for k in state.stopbag.keys()]
    # choosing = state.choosing
    # initializing = state.initializing
    state_dict = state.__dict__.copy()
    state_dict["stopbag"] = [jsonify_context(k) for k in state.stopbag.keys()]
    state_dict["ctxbag"] = [jsonify_context(k) for k in state.ctxbag.keys()]
    return state_dict


def jsonify_node(node) -> dict:
    if node is None:
        return {}
    node_index = node.uid
    component_id = node.cid
    # length = node.len
    # steps = node.steps
    # issues = node.issues
    # expanded = node.expanded

    # parent = node.parent
    # blocked = [jsonify_context(k) for k, v in node.blocked.items() if v]
    # after = jsonify_context(node.after)
    # before = jsonify_context(node.before)
    # steps = node.steps

    # state = jsonify_state(node.state)
    return {
        "node_index": node_index,
        "component_id": component_id,
        "length": node.len,
        "steps": node.steps,
        "issues": list(node.issues),
        "expanded": node.expanded,

        "parent": jsonify_node(node.parent),
        "steps": node.steps,

        "blocked": [jsonify_context(k) for k, v in node.blocked.items() if v],
        "after": jsonify_context(node.after),
        "before": jsonify_context(node.before)
    }
    # node_dict = node.__dict__.copy()
    # node_dict["blocked"] = [jsonify_context(
    #     k) for k, v in node.blocked.items() if v]
    # node_dict["after"] = jsonify_context(node.after)
    # node_dict["before"] = jsonify_context(node.before)
    # node_dict["state"] = jsonify_state(node.state)
    # return node_dict


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
