import json
from typing import List, Optional, Dict, Any
from harmony import Value, Node, AddressValue, PcValue, ContextValue, State


class ValueArray:

    def __init__(self):
        self.array = []
        self.value_to_index: Dict[Any, int] = {}

    def add_value(self, value: Any) -> int:
        """
        Adds [value] into the value array, if [value] was not previously added.
        :returns the index that points to [value] in the value array.
        """
        pass


class ValueDump:

    def create_json_dump(self):
        dump = {}
        return json.JSONEncoder().encode(dump)

    def _insert_value(self, value: Any) -> int:
        return self.v_array.add_value(value)

    def __init__(self, nodes: List[Node], bad_node: Optional[Node]):
        self.nodes = nodes
        self.bad_node = bad_node
        self.v_array = ValueArray()

    def dump_state(self, state: Optional[State]) -> Optional[int]:
        if state is None:
            return None
        state_value = {
            "code": [f"{i}" for i in state.code],
            "labels": self._insert_value(state.labels),
            "vars": {f"{k}": f"{v}" for k, v in state.vars.d.items()},
            "ctxbag": [self.dump_context(k) for k in state.ctxbag.keys()],
            "stopbag": [self.dump_context(k) for k in state.stopbag.keys()],
            "choosing": self.dump_context(state.choosing),
            "initializing": self._insert_value(state.initializing)
        }
        return self._insert_value(state_value)

    def dump_context(self, context: Optional[ContextValue]) -> Optional[int]:
        if context is None:
            return None
        context_value = {
            # This is a dictValue
            "nametag": self._insert_value(context.nametag),
            "pc": self._insert_value(context.pc),
            "atomic": self._insert_value(context.atomic),
            "interrupt_level": self._insert_value(context.interruptLevel),
            "fp": self._insert_value(context.fp),
            "trap": self._insert_value(context.trap),
            "terminated": self._insert_value(context.terminated),
            "stopped": self._insert_value(context.stopped),
            "failure": self._insert_value(context.failure),

            # This is a dictValue
            "vars": self._insert_value(context.vars),
            "stack": [f"{s}" for s in context.stack]
        }
        return self._insert_value(context_value)

    def dump_node(self, node: Optional[Node]) -> Optional[int]:
        if node is None:
            return None
        node_value = {
            "node_index": self._insert_value(node.uid),
            "component_id": self._insert_value(node.cid),
            "length": self._insert_value(node.len),
            "expanded": self._insert_value(node.expanded),

            "parent": self.dump_node(node.parent),
            "blocked": [self.dump_context(k) for k, v in node.blocked.items() if v],
            "after": self.dump_context(node.after),
            "before": self.dump_context(node.before),

            "state": self.dump_state(node.state),

            # List of string issues
            "issues": list(node.issues),
        }
        return self._insert_value(node_value)


def valuedump(nodes: List[Node], bad_node: Optional[Node]):
    """
    :param nodes: A list of nodes in the program.
    :param bad_node: The bad node, whose successive parents lead to a base node.
    :return:
    """
    pass