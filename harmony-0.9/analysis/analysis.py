from json import JSONEncoder
import gzip
from typing import List, Optional

from analysis.code import get_code
from analysis.node import full_dump
from analysis.path import get_path
from value import NodeType


def get_html_content(nodes: List[NodeType], bad_node: Optional[NodeType], code,
                     scope, fulldump, files, typings, verbose, novalue, cwd):
    """
    :param cwd: The current working directory of this process.
    :param nodes: A list of all nodes created during execution.
    :param bad_node: A bad node that is encountered when an issue occurs.
    :param code: A list of all executed code, where the index is the PC of that code.
    :param scope:
    :param fulldump:
    :param files: A set of all files used in the Harmony program.
    :param typings: Dictionary of classes for isinstance checks, where the key is the string of the class name, and
    the value is class constructor.
    :param verbose:
    :param novalue: No dictionary value.
    :return:
    """
    dump_name = "harmony.json"
    nodes = sorted(nodes, key=lambda n: n.uid)
    path_to_node = get_path(bad_node, typings, nodes, code)
    data = {
        'bad_node': None if bad_node is None else bad_node.uid,
        'path_to_bad_node': path_to_node,
        'executed_code': get_code(code, scope, files, typings),
        'nodes': full_dump(nodes, code, scope, files, verbose, typings, novalue, fulldump, bad_node.uid, path_to_node)
    }

    def default_encoder(v):
        if isinstance(v, set):
            return list(v)
        else:
            return vars(v)

    json_encoded = JSONEncoder(default=default_encoder).encode(data)
    with gzip.open(dump_name + '.gzip', 'w') as f:
        f.write(json_encoded.encode('utf-8'))
        print(f"Open file://{cwd}/{dump_name}.gzip for more information in json format")
