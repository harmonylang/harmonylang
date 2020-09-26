def islower(c):
    return c in "abcdefghijklmnopqrstuvwxyz"


def isupper(c):
    return c in "ABCDEFGHIJKLMNOPQRSTUVWXYZ"


def isletter(c):
    return islower(c) or isupper(c)


def isnumeral(c):
    return c in "0123456789"


def isalnum(c):
    return isletter(c) or isnumeral(c)


def isnamechar(c):
    return isalnum(c) or c == "_"


def isprint(c):
    return isinstance(c, str) and len(c) == 1 and (
        isalnum(c) or c in " ~`!@#$%^&*()-_=+[{]}\\|;:'\",<.>/?")


def isnumber(s):
    return all(isnumeral(c) for c in s)


def isreserved(s):
    return s in {
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


def isname(s):
    return (not isreserved(s)) and (isletter(s[0]) or s[0] == "_") and \
                    all(isnamechar(c) for c in s)


def strValue(v):
    if isinstance(v, Value) or isinstance(v, bool) or isinstance(v, int) or isinstance(v, float):
        return str(v)
    if isinstance(v, str):
        if isname(v):
            return "." + v
        else:
            assert len(v) == 1, v
            return ".0x%02X"%ord(v[0])
    assert False, v


def strVars(v):
    assert isinstance(v, DictValue)
    result = ""
    for (var, val) in v.d.items():
        if result != "":
            result += ", "
        result += strValue(var)[1:] + "=" + strValue(val)
    return "{" + result + "}"


def keyValue(v):
    if isinstance(v, bool):
        return 0, v
    if isinstance(v, int) or isinstance(v, float):
        return 1, v
    if isinstance(v, str):
        return 2, v
    assert isinstance(v, Value), v
    return v.key()


class Value:
    def __str__(self):
        return self.__repr__()


class PcValue(Value):
    def __init__(self, pc):
        self.pc = pc

    def __repr__(self):
        return "PC(" + str(self.pc) + ")"

    def __hash__(self):
        return self.pc.__hash__()

    def __eq__(self, other):
        return isinstance(other, PcValue) and other.pc == self.pc

    def key(self):
        return 3, self.pc


class DictValue(Value):
    def __init__(self, d):
        self.d = d

    def __repr__(self):
        if len(self.d) == 0:
            return "()"
        result = ""
        if set(self.d.keys()) == set(range(len(self.d))):
            for k in range(len(self.d)):
                if result != "":
                    result += ", "
                result += strValue(self.d[k])
            return "[" + result + "]"
        keys = sorted(self.d.keys(), key=keyValue)
        for k in keys:
            if result != "":
                result += ", "
            result += strValue(k) + ":" + strValue(self.d[k])
        return "dict{ " + result + " }"

    def __hash__(self):
        hash = 0
        for x in self.d.items():
            hash ^= x.__hash__()
        return hash

    def __eq__(self, other):
        if not isinstance(other, DictValue):
            return False
        if len(self.d.keys()) != len(other.d.keys()):   # for efficiency
            return False
        return self.d == other.d

    def __len__(self):
        return len(self.d.keys())

    # Dictionary ordering generalizes lexicographical ordering when the dictionary
    # represents a list or tuple
    def key(self):
        return 5, [(keyValue(v), keyValue(self.d[v])) for v in sorted(self.d.keys(), key=keyValue)]


class SetValue(Value):
    def __init__(self, s):
        self.s = s

    def __repr__(self):
        if len(self.s) == 0:
            return "{}"
        result = ""
        vals = sorted(self.s, key=keyValue)
        for v in vals:
            if result != "":
                result += ", "
            result += strValue(v)
        return "{ " + result + " }"

    def __hash__(self):
        return frozenset(self.s).__hash__()

    def __eq__(self, other):
        if not isinstance(other, SetValue):
            return False
        return self.s == other.s

    def key(self):
        return 6, [keyValue(v) for v in sorted(self.s, key=keyValue)]


class AddressValue(Value):
    def __init__(self, indexes):
        self.indexes = indexes

    def __repr__(self):
        if len(self.indexes) == 0:
            return "None"
        result = "?" + self.indexes[0]
        for index in self.indexes[1:]:
            if isinstance(index, str):
                result = result + strValue(index)
            else:
                result += "[" + strValue(index) + "]"
        return result

    def __hash__(self):
        hash = 0
        for x in self.indexes:
            hash ^= x.__hash__()
        return hash

    def __eq__(self, other):
        if not isinstance(other, AddressValue):
            return False
        return self.indexes == other.indexes

    def key(self):
        return 7, self.indexes


class ContextValue(Value):
    def __init__(self, nametag, pc):
        self.nametag = nametag
        self.pc = pc
        self.atomic = 0
        self.interruptLevel = False
        self.stack = []     # collections.deque() seems slightly slower
        self.fp = 0         # frame pointer
        self.vars = novalue
        self.trap = None
        self.terminated = False
        self.stopped = False
        self.failure = None

    def __repr__(self):
        return "ContextValue(" + str(self.nametag) + ", " + str(self.pc) + ")"

    def __str__(self):
        return self.__repr__()

    def __hash__(self):
        h = (self.nametag, self.pc, self.atomic, self.interruptLevel, self.vars,
            self.trap, self.terminated, self.stopped, self.failure).__hash__()
        for v in self.stack:
            h ^= v.__hash__()
        return h

    def __eq__(self, other):
        if not isinstance(other, ContextValue):
            return False
        if self.nametag != other.nametag:
            return False
        if self.pc != other.pc:
            return False
        if self.atomic != other.atomic:
            return False
        if self.interruptLevel != other.interruptLevel:
            return False
        if self.terminated != other.terminated:
            return False
        if self.stopped != other.stopped:
            return False
        if self.fp != other.fp:
            return False
        if self.trap != other.trap:
            return False
        if self.failure != other.failure:
            return False
        return self.stack == other.stack and self.vars == other.vars

    def copy(self):
        c = ContextValue(self.nametag, self.pc)
        c.atomic = self.atomic
        c.interruptLevel = self.interruptLevel
        c.stack = self.stack.copy()
        c.fp = self.fp
        c.trap = self.trap
        c.vars = self.vars
        c.terminated = self.terminated
        c.stopped = self.stopped
        c.failure = self.failure
        return c

    def get(self, var):
        return self.vars.d[var]

    def iget(self, indexes):
        v = self.vars
        while indexes != []:
            v = v.d[indexes[0]]
            indexes = indexes[1:]
        return v

    def update(self, record, indexes, val):
        if len(indexes) > 1:
            v = self.update(record.d[indexes[0]], indexes[1:], val)
        else:
            v = val
        d = record.d.copy()
        d[indexes[0]] = v
        return DictValue(d)

    def doDelete(self, record, indexes):
        if len(indexes) > 1:
            d = record.d.copy()
            d[indexes[0]] = self.doDelete(record.d[indexes[0]], indexes[1:])
        else:
            d = record.d.copy()
            if indexes[0] in d:
                del d[indexes[0]]
        return DictValue(d)

    def set(self, indexes, val):
        self.vars = self.update(self.vars, indexes, val)

    def delete(self, indexes):
        self.vars = self.doDelete(self.vars, indexes)

    def push(self, val):
        assert val != None
        self.stack.append(val)

    def pop(self):
        return self.stack.pop()

    def key(self):
        return 100, (key(self.nametag), self.pc, self.__hash__())
