from __future__ import annotations
from typing import TypedDict, List, Dict, Optional, Union


def get_value(v: ValueRep):
    value_type = v['type']
    if value_type == 'int':
        return int(v['value'])
    elif value_type == 'atom':
        return v['value']
    elif value_type == 'bool':
        return v['value'] == "True"
    elif value_type == 'pc':
        return v['value']
    elif value_type == 'address':
        return list(map(get_value, v['value']))
    elif value_type == 'set':
        return list(map(get_value, v['value']))
    elif value_type == 'dict':
        return {str(get_value(e['key'])): get_value(e['value']) for e in v['value']}
    else:
        raise ValueError("Cannot parse this value")


class IntermediateJson(TypedDict):
    issue: str
    megasteps: List[Switch]
    code: List[str]
    explain: List[str]


class ValueRep(TypedDict):
    type: str
    value: Union[str, List[ValueRep], List[KeyValueRep]]


class KeyValueRep(TypedDict):
    key: ValueRep
    value: ValueRep


class Switch(TypedDict):
    tid: str
    name: str
    microsteps: List[MicroStep]
    shared: Dict[str, ValueRep]
    contexts: List[Context]


class MicroStep(TypedDict):
    npc: str
    pc: str
    choose: Optional[ValueRep]

    shared: Optional[Dict[str, ValueRep]]
    local: Optional[Dict[str, ValueRep]]


class Context(TypedDict):
    tid: str
    name: str
    entry: str
    pc: str
    fp: str
    trace: List[Trace]
    this: str
    mode: str
    failure: Optional[str]
    atomic: Optional[int]
    readonly: Optional[int]


class Trace(TypedDict):
    method: str
    vars: Dict[str, ValueRep]