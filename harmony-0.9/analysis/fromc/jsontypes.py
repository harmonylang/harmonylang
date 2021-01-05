from __future__ import annotations
from typing import TypedDict, List, Dict, Optional, Union


class IntermediateJson(TypedDict):
    issue: str
    megasteps: List[Switch]
    code: List[str]


class ValueRep(TypedDict):
    type: str
    value: Union[str, List[ValueRep]]


class Switch(TypedDict):
    tid: str
    name: str
    microsteps: List[MicroStep]
    shared: Dict[str, str]
    contexts: List[Context]


class MicroStep(TypedDict):
    pc: str
    shared: Dict[str, str]
    local: Dict[str, str]
    pop: str
    push: List[str]


class Context:
    tid: str
    name: str
    entry: str
    pc: str
    fp: str
    trace: List[Trace]
    this: str
    stack: List[str]
    failure: Optional[str]
    atomic: Optional[int]
    readonly: Optional[int]


class Trace(TypedDict):
    method: str
    vars: Dict[str, str]
