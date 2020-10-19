from value import Value


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
    if isinstance(v, Value) or isinstance(v, bool) or isinstance(v, int) or isinstance(v, float):
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
