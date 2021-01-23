from __future__ import annotations
from typing import TypedDict, List, Dict, Optional, Union


class IntermediateJson(TypedDict):
    issue: str
    macrosteps: List[Switch]
    code: List[str]
    explain: List[str]
    locations: Dict[str, HarmonyCode]


class HarmonyCode(TypedDict):
    file: str
    line: str
    code: str


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
    trace: Optional[List[Trace]]
    local: Optional[Dict[str, ValueRep]]


class Trace(TypedDict):
    pc: str
    method: str
    calltype: str
    vars: Dict[str, ValueRep]


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
