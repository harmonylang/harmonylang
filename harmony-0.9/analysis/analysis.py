from pprint import pprint
from typing import List, Optional

from analysis.code import get_code
from analysis.node import full_dump
from analysis.path import get_path
from value import NodeType


def get_html_content(nodes: List[NodeType], bad_node: Optional[NodeType], code, scope, fulldump, files, typings, verbose, novalue):
    """
    :param nodes: A list of all nodes created during execution.
    :param bad_node: A bad node that is encountered when an issue occurs.
    :param code: A list of all executed code, where the index is the PC of that code.
    :param scope:
    :param fulldump:
    :param files: A set of all files used in the Harmony program.
    :param typings: Dictionary of classes for isinstance checks, where the key is the string of the class name, and the value is class constructor.
    :param verbose:
    :param novalue: No dictionary value.
    :return:
    """
    print("Nodes")
    print(nodes)
    print()
    print("Bad Node")
    pprint(get_path(bad_node))
    print()
    print("Print Code")
    pprint(get_code(code, scope, files, typings))
    print()
    print("Print Scope")
    print(scope)
    print()
    print("Print full dump")
    pprint(full_dump(nodes, code, scope, files, verbose, typings, novalue))
    pass
