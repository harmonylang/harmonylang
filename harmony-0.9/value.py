from __future__ import annotations

from typing import List, Dict, Any, Optional

"""
These are all just type definitions.
"""


class NodeType:
    uid: int
    cid: int
    len: int
    expanded: bool
    parent: NodeType
    issues: List[str]
    before: ContextType
    after: ContextType
    blocked: Dict[ContextType, bool]
    state: StateType


class Value:
    def __str__(self):
        return self.__repr__()


class NameTagType:
    tag: Any


class ContextType:
    nametag: NameTagType
    pc: int
    atomic: int
    interruptLevel: bool
    fp: int
    trap: Optional[Any]
    terminated: bool
    stopped: bool
    failure: Optional[Any]
    vars: Dict[str, Value]
    stack: List[str]


class DictValueType:
    d: Dict


class StateType:
    code: List[str]
    labels: List[str]
    vars: DictValueType
    ctxbag: Dict[ContextType, Any]
    stopbag: Dict[ContextType, Any]
    choosing: ContextType
    initializing: bool


