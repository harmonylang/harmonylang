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
    if isinstance(v, Value) or isinstance(v, (bool, int, float, dict)):
        return str(v)
    if isinstance(v, str):
        if isname(v):
            return "." + v
        else:
            assert len(v) == 1, v
            return ".0x%02X" % ord(v[0])
    return str(v)


def nametag_to_str(nt):
    return str(nt.d["name"]) + "/" + str(nt.d["tag"])


def json_valid_value(v, typings):
    """
    Converts the Harmony value into a JSON-valid representation.
    :param typings:
    :param v:
    :return:
    """
    if isinstance(v, list):
        return [json_valid_value(z, typings) for z in v]
    elif isinstance(v, (bool, int, str)):
        return v
    elif isinstance(v, typings['SetValue']):
        return [json_valid_value(z, typings) for z in v.s]
    elif isinstance(v, typings['DictValue']):
        dictionary = {k: json_valid_value(v, typings) for k, v in v.d.items()}
        keys = dictionary.keys()
        all_int_keys = all(map(lambda k: isinstance(k, int), keys))
        if all_int_keys and all(map(lambda idx: idx in keys, range(len(keys)))):
            return [dictionary[i] for i in range(len(keys))]
        else:
            return dictionary
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
