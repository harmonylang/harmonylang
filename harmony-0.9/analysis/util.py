from value import Value
from collections import Hashable


def key_value(v):
    if isinstance(v, bool):
        return 0, v
    if isinstance(v, int) or isinstance(v, float):
        return 1, v
    if isinstance(v, str):
        return 2, v
    return v.key()


RESERVED_KEYWORDS = {
        "all",
        "and",
        "any",
        "as",
        "assert",
        "atLabel",
        "atomic",
        "await",
        "bagsize",
        "call",
        "choose",
        "const",
        "def",
        "del",
        "dict",
        "elif",
        "else",
        "end",
        "False",
        "fun",
        "for",
        "from",
        "go",
        "hash",
        "if",
        "import",
        "in",
        "inf",
        "keys",
        "lambda",
        "len",
        "let",
        "max",
        "min",
        "nametag",
        "None",
        "not",
        "or",
        "pass",
        "processes",
        "setintlevel",
        "spawn",
        "stop",
        "such",
        "that",
        "trap",
        "True",
        "while"
}


def is_reserved(s: str):
    """
    :param s: any string
    :return: True if s is a reserved word in Harmony. Otherwise, False.
    """
    return s in RESERVED_KEYWORDS


def isname(s):
    return not is_reserved(s) and (s[0].isalpha() or s[0] == "_") and all(c.isalnum() or c == '_' for c in s)


def str_of_value(v):
    if isinstance(v, Value) or isinstance(v, (bool, int, float, dict)):
        return str(v)
    if isinstance(v, str):
        if isname(v):
            return "." + v
        else:
            assert len(v) == 1, v
            return ".0x%02X" % ord(v[0])
    assert False, v


def nametag_to_str(nt):
    return str(nt.d["name"]) + "/" + str(nt.d["tag"])


def json_valid_value(v, typings):
    """
    Converts the Harmony value into a JSON-valid representation.
    It performs the following checks:
        - If it is a boolean, integer, or string, then it is returned as is.
        - If it is a list or set, return that as a list with all of its elements mapped to a JSON-valid representation.
        - If it is a SetValue, convert the set inside the value to a list, with all of its elements also
            mapped to a JSON-valid representation.
        - If it is a dictionary value:
            - Check if any of its keys JSON-mapped value are not hashable,
                convert the dictionary into an association list.
            - Otherwise, convert the DictValue dictionary into a literal dictionary with
                JSON-valid values.
    """
    if isinstance(v, (bool, int, str)):
        return v
    elif isinstance(v, (list, set)):
        return [json_valid_value(z, typings) for z in v]
    elif isinstance(v, typings['SetValue']):
        return [json_valid_value(z, typings) for z in v.s]
    elif isinstance(v, typings['DictValue']):
        if any(not isinstance(json_valid_value(k, typings), Hashable) for k in v.d.keys()):
            return [(json_valid_value(k, typings), json_valid_value(v, typings)) for k, v in v.d.items()]
        else:
            return {json_valid_value(k, typings): json_valid_value(v, typings) for k, v in v.d.items()}
    else:
        return str(v)


def str_of_steps(steps):
    """
    Returns a string representation of a list of steps.
    :param steps:
    :return:
    """
    if steps is None:
        return "[]"
    result = ""
    i = 0
    while i < len(steps):
        if result != "":
            result += ","
        (pc, choice) = steps[i]
        if pc is None:
            result += "Interrupt"
        else:
            result += str(pc)
        j = i + 1
        if choice is not None:
            result += "(choose %s)" % str_of_value(choice)
        else:
            while j < len(steps):
                (pc2, choice2) = steps[j]
                if pc is None or pc2 != pc + 1 or choice2 is not None:
                    break
                (pc, choice) = (pc2, choice2)
                j += 1
            if j > i + 1:
                result += "-%d" % pc
        i = j
    return "[" + result + "]"
