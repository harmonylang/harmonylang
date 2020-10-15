from pprint import pprint
from typing import List, Optional

from analysis.code import get_code
from analysis.path import get_path
from value import NodeType


def get_html_content(nodes: List[NodeType], bad_node: Optional[NodeType], code, scope, fulldump, files, typings):
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
    print(fulldump)
    pass
