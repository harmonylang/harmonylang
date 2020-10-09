import json
from typing import List, Optional, Dict, Any
from value import NodeType, ContextType, StateType


class ValueArray:

    def __init__(self):
        self.array = []
        self.value_to_index: Dict[Any, int] = {}

    def get(self) -> List[Any]:
        return self.array

    def add_value(self, value: Any, type_of_value: str = None) -> int:
        """
        Adds [value] into the value array, if [value] was not previously added.
        :returns the index that points to [value] in the value array.
        """

        # Need a different way to check equality in objects.
        # 1) We could implement __eq__ in all of the value classes
        if type(value) == dict:
            value = frozenset(value.items())
        elif type(value) == set or type(value) == list:
            value = frozenset(value)
        if value in self.value_to_index:
            return self.value_to_index[value]
        else:
            self.array.append({
                'type': str(type(value)) if type_of_value is None else type_of_value,
                'value': value
            })
            index = len(self.array) - 1
            self.value_to_index[value] = index
            return index


class ValueDump:

    def edge_case_default(self, v):
        if type(v) == frozenset:
            return list(v)
        else:
            return str(v)

    def create_json_dump(self) -> str:
        bad_node_dump = self.__dump_node(self.bad_node)
        nodes_dump = [self.__dump_node(n) for n in self.nodes]
        return json.JSONEncoder(default=lambda s: self.edge_case_default(s)).encode({
            'values': self.v_array.get(),
            'bad_node': bad_node_dump,
            'nodes': nodes_dump
        })

    def __insert_value(self, value: Any, type_of_value: str = None) -> int:
        return self.v_array.add_value(value, type_of_value)

    def __init__(self, nodes: List[NodeType], bad_node: Optional[NodeType]):
        self.nodes = nodes
        self.bad_node = bad_node
        self.v_array = ValueArray()

    def __dump_state(self, state: Optional[StateType]) -> Optional[int]:
        if state is None:
            return None
        state_value = {
            "code": self.__insert_value([self.__insert_value(f"{code}") for code in state.code]),
            "labels": self.__insert_value(state.labels),
            "vars": self.__insert_value([self.__insert_value([self.__insert_value(k), self.__insert_value(v)]) for k, v in state.vars.d.items()]),
            "ctxbag": self.__insert_value([self.__dump_context(k) for k in state.ctxbag.keys()]),
            "stopbag": self.__insert_value([self.__dump_context(k) for k in state.stopbag.keys()]),
            "choosing": self.__dump_context(state.choosing),
            "initializing": self.__insert_value(state.initializing)
        }
        return self.__insert_value(state_value, 'state')

    def __dump_context(self, context: Optional[ContextType]) -> Optional[int]:
        if context is None:
            return None
        context_value = {
            # This is a dictValue
            "nametag": self.__insert_value(context.nametag),
            "pc": self.__insert_value(context.pc),
            "atomic": self.__insert_value(context.atomic),
            "interrupt_level": self.__insert_value(context.interruptLevel),
            "fp": self.__insert_value(context.fp),
            "trap": self.__insert_value(context.trap),
            "terminated": self.__insert_value(context.terminated),
            "stopped": self.__insert_value(context.stopped),
            "failure": self.__insert_value(context.failure),

            # This is a dictValue
            "vars": self.__insert_value(context.vars),
            "stack": self.__insert_value([self.__insert_value(f"{s}") for s in context.stack])
        }
        return self.__insert_value(context_value, 'context')

    def __dump_node(self, node: Optional[NodeType]) -> Optional[int]:
        if node is None:
            return None
        node_value = {
            "node_index": self.__insert_value(node.uid),
            "component_id": self.__insert_value(node.cid),
            "length": self.__insert_value(node.len),
            "expanded": self.__insert_value(node.expanded),

            "parent": self.__dump_node(node.parent),
            "blocked": self.__insert_value([self.__dump_context(k) for k, v in node.blocked.items() if v]),
            "after": self.__dump_context(node.after),
            "before": self.__dump_context(node.before),

            "state": self.__dump_state(node.state),

            # List of string issues
            "issues": self.__insert_value([self.__insert_value(s) for s in node.issues]),
        }
        return self.__insert_value(node_value, 'node')


def valuedump(nodes: List[NodeType], bad_node: Optional[NodeType]):
    """
    :param nodes: A list of nodes in the program.
    :param bad_node: The bad node, whose successive parents lead to a base node.
    :return:
    """
    val_dumper = ValueDump(nodes, bad_node)
    dump_str = val_dumper.create_json_dump()
    with open('valuedump.json', 'w') as f:
        f.write(dump_str)
