"""
	This is the Harmony compiler and model checker.

    Copyright (C) 2020, 2021  Robbert van Renesse

    Redistribution and use in source and binary forms, with or without
    modification, are permitted provided that the following conditions
    are met:

    1. Redistributions of source code must retain the above copyright
    notice, this list of conditions and the following disclaimer.

    2. Redistributions in binary form must reproduce the above copyright
    notice, this list of conditions and the following disclaimer in the
    documentation and/or other materials provided with the distribution.

    3. Neither the name of the copyright holder nor the names of its
    contributors may be used to endorse or promote products derived
    from this software without specific prior written permission.

    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
    "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
    LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
    FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
    COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
    INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
    BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
    LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
    CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
    LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
    ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
    POSSIBILITY OF SUCH DAMAGE.
"""

version = [
m4_include(buildversion)
]

internal_modules = {
#############################
#     START OF MODULES      #
#############################

m4_include(modules)

#############################
#      END OF MODULES       #
#############################
}

charm_src = r"""
#define _GNU_SOURCE

m4_include(../charm/hashdict.h)
m4_include(../charm/json.h)
m4_include(../charm/global.h)
m4_include(../charm/charm.c)
m4_include(../charm/global.c)
m4_include(../charm/hashdict.c)
m4_include(../charm/json.c)
m4_include(../charm/ops.c)
m4_include(../charm/queue.c)
m4_include(../charm/value.c)
"""

import sys
import os
import pathlib
import tempfile
import getopt
import traceback
import collections
import time
import math
import html
import queue
import functools
import json

# TODO.  These should not be global ideally
files = {}              # files that have been read already
constants = {}          # constants modified with -c
modules = {}            # modules modified with -m
namestack = []          # stack of module names being compiled
node_uid = 1            # unique node identifier
silent = False          # not printing periodic status updates
lasttime = 0            # last time status update was printed
imported = {}           # imported modules

m4_include(brief.py)

m4_include(genhtml.py)

def bag_add(bag, item):
    cnt = bag.get(item)
    if cnt == None:
        bag[item] = 1
    else:
        bag[item] = cnt + 1

def bag_remove(bag, item):
    cnt = bag[item]
    assert cnt > 0
    if cnt == 1:
        del bag[item]
    else:
        bag[item] = cnt - 1

def doImport(scope, code, module):
    (lexeme, file, line, column) = module
    # assert lexeme not in scope.names        # TODO
    if lexeme not in imported:
        # TODO.  Only do the following if the modules have variables?
        code.append(PushOp((novalue, file, line, column)))
        code.append(StoreOp(module, module, []))

        # module name replacement with -m flag
        modname = modules[lexeme] if lexeme in modules \
                            else lexeme

        # create a new scope
        scope2 = Scope(None)
        scope2.prefix = [lexeme]
        scope2.locations = scope.locations
        scope2.labels = scope.labels

        found = False
        for dir in [ os.path.dirname(namestack[-1]), "modules", "." ]:
            filename = dir + "/" + modname + ".hny"
            if os.path.exists(filename):
                with open(filename) as f:
                    load(f, filename, scope2, code)
                found = True
                break
        if not found:
            if modname in internal_modules:
                load_string(internal_modules[lexeme],
                    "<internal>/" + modname + ".hny", scope2, code)
            else:
                print("Can't find module", modname, "imported from", namestack)
                sys.exit(1)
        
        imported[lexeme] = scope2

    scope.names[lexeme] = ("module", imported[lexeme])

def load_string(all, filename, scope, code):
    files[filename] = all.split("\n")
    tokens = lexer(all, filename)
    if tokens == []:
        print("Empty file:", filename)
        sys.exit(1)

    try:
        (ast, rem) = StatListRule(-1).parse(tokens)
    except IndexError:
        # best guess...
        print("Parsing", filename, "hit EOF")
        sys.exit(1)

    if rem != []:
        print("Parsing: unexpected tokens remaining at end of program:", rem[0])
        sys.exit(1)

    for mod in ast.getImports():
        doImport(scope, code, mod)

    # method names and label names get a temporary value
    # they are filled in with their actual values after compilation
    # TODO.  Look for duplicates?
    tmp = PcValue(-1)
    for (lexeme, file, line, column) in ast.getLabels():
        scope.names[lexeme] = ("constant", (tmp, file, line, column))

    # Compile the first time, only to figure out the values of
    # method and label constants
    before = len(code)
    ast.compile(scope, code)
    del code[before:]

    # Compile again with the real values of the methods and label constants
    ast.compile(scope, code)

    for (lexeme, file, line, column) in ast.getLabels():
        (t, v) = scope.names[lexeme]
        (pc, file, line, columv) = v
        assert pc != tmp, ("not all labels have been filled", lexeme, v)

def load(f, filename, scope, code):
    if filename in files:
        return
    namestack.append(filename)
    all = ""
    for line in f:
        all += line
    load_string(all, filename, scope, code)
    namestack.pop()

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
        "as",
        "assert",
        "atLabel",
        "atomic",
        "await",
        # "call",
        "choose",
        "const",
        "contexts",
        "def",
        "del",
        "elif",
        "else",
        "end",
        "except",
        "False",
        # "fun",
        "for",
        "from",
        "get_context",
        "go",
        "hash",
        "if",
        "import",
        "in",
        "inf",
        "invariant",
        "keys",
        "lambda",
        "len",
        "let",
        "max",
        "min",
        "None",
        "not",
        "or",
        "pass",
        "print",
        "sequential",
        "setintlevel",
        "spawn",
        "stop",
        "trap",
        "try",
        "True",
        "where",
        "while"
        "with"
    }

def isname(s):
    return (not isreserved(s)) and (isletter(s[0]) or s[0] == "_") and \
                    all(isnamechar(c) for c in s)

def isunaryop(s):
    return s in { "!", "-", "~", "abs", "all", "any", "atLabel", "choose",
        "contexts", "get_context", "min", "max", "not", "keys", "hash", "len",
        "print"
    }

def isxbinop(s):
    return s in {
        "and", "or", "=>", "&", "|", "^", "-", "+", "*", "/", "//", "%", "mod",
        "**", "<<", ">>"
    }

def iscmpop(s):
    return s in { "==", "!=", "<", "<=", ">", ">=" }

assignops = {
    "and=", "or=", "=>=", "&=", "|=", "^=", "-=", "+=", "*=", "/=", "//=",
    "%=", "mod=", "**=", "<<=", ">>="
}

def isbinaryop(s):
    return isxbinop(s) or iscmpop(s) or s == "in"

tokens = { "{", "==", "!=", "<=", ">=", "=>",
                        "//", "**", "<<", ">>", "..", "->" } | assignops

def lexer(s, file):
    result = []
    line = 1
    column = 1
    cont = 1
    s = s.replace('\\r', '')        # MS-DOS...
    indentChars = set()
    indent = True
    while s != "":
        # see if it's a blank
        if s[0] in { " ", "\t" }:
            if indent:
                indentChars.add(s[0])
            s = s[1:]
            column += 1
            continue

        # backslash at end of line: glue on the next line
        if s[0] == "\\":
            if len(s) == 1:
                break
            if s[1] == "\n":
                s = s[2:]
                column += 2
                cont += 1
                continue

        if s[0] == "\n":
            s = s[1:]
            line += cont
            cont = 1
            column = 1
            indent = True
            continue

        indent = False

        # skip over line comments
        if s.startswith("#"):
            s = s[1:]
            while len(s) > 0 and s[0] != '\n':
                s = s[1:]
            continue

        # skip over nested comments
        if s.startswith("(*"):
            count = 1
            s = s[2:]
            column += 2
            while count != 0 and s != "":
                if s.startswith("(*"):
                    count += 1
                    s = s[2:]
                    column += 2
                elif s.startswith("*)"):
                    count -= 1
                    s = s[2:]
                    column += 2
                elif s[0] == "\n":
                    s = s[1:]
                    line += cont
                    cont = 1
                    column = 1
                else:
                    s = s[1:]
                    column += 1
            continue

        # see if it's a multi-character token.  Match with the longest one
        found = ""
        for t in tokens:
            if s.startswith(t) and len(t) > len(found):
                found = t
        if found != "":
            result += [ (found, file, line, column) ]
            s = s[len(found):]
            column += len(found)
            continue

        # see if a sequence of letters and numbers
        if isnamechar(s[0]):
            i = 0
            while i < len(s) and isnamechar(s[i]):
                i += 1
            result += [ (s[:i], file, line, column) ]
            s = s[i:]
            column += i
            continue

        # string
        if s[0] == '"' or s[0] == "'":
            start_col = column
            if s.startswith('"""'):
                term = '"""'
            elif s.startswith("'''"):
                term = "'''"
            elif s[0] == '"':
                term = '"'
            else:
                assert s[0] == "'", s[0]
                term = "'"
            column += len(term)
            s = s[len(term):]
            str = '"'
            while s != "" and not s.startswith(term):
                if s[0] == '\\':
                    s = s[1:]
                    if s == "":
                        break
                    column += 1
                    if s[0] == 'a':
                        str += '\a'; column += 1; s = s[1:]
                    elif s[0] == 'b':
                        str += '\b'; column += 1; s = s[1:]
                    elif s[0] == 'f':
                        str += '\f'; column += 1; s = s[1:]
                    elif s[0] == 'n':
                        str += '\n'; column += 1; s = s[1:]
                    elif s[0] == 'r':
                        str += '\r'; column += 1; s = s[1:]
                    elif s[0] == 't':
                        str += '\t'; column += 1; s = s[1:]
                    elif s[0] == 'v':
                        str += '\v'; column += 1; s = s[1:]
                    elif s[0] in "01234567":
                        total = 0
                        for i in range(3):
                            if s[0] not in "01234567":
                                break
                            total *= 8
                            total += ord(s[0]) - ord("0")
                            column += 1
                            s = s[1:]
                        str += chr(total)
                    elif s[0] in { 'x', "X" }:
                        column += 1
                        s = s[1:]
                        total = 0
                        while s != "" and s[0] in "0123456789abcdefABCDEF":
                            total *= 16;
                            if s[0] in "0123456789":
                                total += ord(s[0]) - ord("0")
                            elif s[0] in "abcdef":
                                total += 10 + (ord(s[0]) - ord("a"))
                            else:
                                assert s[0] in "ABCDEF", s[0]
                                total += 10 + (ord(s[0]) - ord("A"))
                            column += 1
                            s = s[1:]
                        str += chr(total)
                    else:
                        str += s[0]
                        if s[0] == '\n':
                            line += cont
                            cont = 1
                        column += 1
                        s = s[1:]
                else:
                    str += s[0]
                    if s[0] == '\n':
                        line += cont
                        cont = 1
                    column += 1
                    s = s[1:]
            result += [ (str, file, line, start_col) ]
            column += len(term)
            s = s[len(term):]
            continue

        # everything else is a single character token
        result += [ (s[0], file, line, column) ]
        s = s[1:]
        column += 1

    if len(indentChars) > 1:
        print("WARNING: do not mix tabs in spaces for indentation")
        print("It is likely to lead to incorrect parsing and code generation")

    return result

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

def jsonValue(v):
    if isinstance(v, Value):
        return v.jdump()
    if isinstance(v, bool):
        return '{ "type": "bool", "value": "%s" }'%str(v)
    if isinstance(v, int) or isinstance(v, float):
        return '{ "type": "int", "value": "%s" }'%str(v)
    if isinstance(v, str):
        if isname(v):
            return '{ "type": "atom", "value": "%s" }'%str(v)
        else:
            assert len(v) == 1, v
            return '{ "type": "char", "value": "%02X" }'%ord(v[0])
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
        return (0, v)
    if isinstance(v, int) or isinstance(v, float):
        return (1, v)
    if isinstance(v, str):
        return (2, v)
    assert isinstance(v, Value), v
    return v.key()

class Value:
    def __str__(self):
        return self.__repr__()

    def jdump(self):
        assert False

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
        return (3, self.pc)

    def jdump(self):
        return '{ "type": "pc", "value": "%d" }'%self.pc

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
                    result += ", ";
                result += strValue(self.d[k])
            return "[" + result + "]"
        keys = sorted(self.d.keys(), key=keyValue)
        for k in keys:
            if result != "":
                result += ", ";
            result += strValue(k) + ":" + strValue(self.d[k])
        return "{ " + result + " }"

    def jdump(self):
        result = ""
        keys = sorted(self.d.keys(), key=keyValue)
        for k in keys:
            if result != "":
                result += ", ";
            result += '{ "key": %s, "value": %s }'%(jsonValue(k), jsonValue(self.d[k]))
        return '{ "type": "dict", "value": [%s] }'%result

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
        return (5, [ (keyValue(v), keyValue(self.d[v]))
                        for v in sorted(self.d.keys(), key=keyValue)])

# TODO.  Is there a better way than making this global?
novalue = DictValue({})

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
                result += ", ";
            result += strValue(v)
        return "{ " + result + " }"

    def jdump(self):
        result = ""
        vals = sorted(self.s, key=keyValue)
        for v in vals:
            if result != "":
                result += ", ";
            result += jsonValue(v)
        return '{ "type": "set", "value": [%s] }'%result

    def __hash__(self):
        return frozenset(self.s).__hash__()

    def __eq__(self, other):
        if not isinstance(other, SetValue):
            return False
        return self.s == other.s

    def key(self):
        return (6, [keyValue(v) for v in sorted(self.s, key=keyValue)])

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

    def jdump(self):
        result = ""
        for index in self.indexes:
            if result != "":
                result += ", "
            result = result + jsonValue(index)
        return '{ "type": "address", "value": [%s] }'%result

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
        return (7, self.indexes)

class Op:
    def jdump(self):
        return '{ "op": "XXX %s" }'%str(self)

    def explain(self):
        return "no explanation yet"

    def sametype(x, y):
        return type(x) == type(y)

    def convert(self, x):
        if isinstance(x, tuple):
            return x[0]
        else:
            assert isinstance(x, list)
            result = "";
            for v in x:
                if result != "":
                    result += ", "
                result += self.convert(v)
            return "(" + result + ")"

    def store(self, context, var, val):
        if isinstance(var, tuple):
            (lexeme, file, line, column) = var
            context.set([lexeme], val)
        else:
            assert isinstance(var, list)
            if not isinstance(val, DictValue):
                context.failure = "Error: pc = %d: tried to assign %s to %s"%(
                    context.pc, val, self.convert(var))
            elif len(var) != len(val.d):
                context.failure = "Error: pc = %d: cannot assign %s to %s"%(
                    context.pc, val, self.convert(var))
            else:
                for i in range(len(var)):
                    self.store(context, var[i], val.d[i])

    def load(self, context, var):
        if isinstance(var, tuple):
            (lexeme, file, line, column) = var
            return context.get(lexeme)
        else:
            assert isinstance(var, list)
            d = { i:self.load(context, var[i]) for i in range(len(var)) }
            return DictValue(d)

class SetIntLevelOp(Op):
    def __repr__(self):
        return "SetIntLevel"

    def jdump(self):
        return '{ "op": "SetIntLevel" }'

    def explain(self):
        return "pops new boolean interrupt level and pushes old one"

    def eval(self, state, context):
        before = context.interruptLevel
        v = context.pop()
        assert isinstance(v, bool), v
        context.interruptLevel = v
        context.push(before)
        context.pc += 1

# Splits a non-empty set or dict in its minimum element and its remainder
class CutOp(Op):
    def __init__(self, s, v):
        self.s = s
        self.v = v

    def __repr__(self):
        return "Cut(" + self.s[0] + ", " + self.v[0] + ")"

    def jdump(self):
        return '{ "op": "Cut", "set": \"%s\", "var": \"%s\" }'%(self.s[0], self.v[0])

    def explain(self):
        return "remove smallest element from %s and assign to %s"%(self.s[0], self.v[0])

    def eval(self, state, context):
        v = self.load(context, self.s)
        if isinstance(v, DictValue):
            if v.d == {}:
                context.failure = "pc = " + str(context.pc) + \
                    ": Error: expected non-empty dict value"
            else:
                select = min(v.d.keys(), key=keyValue)
                self.store(context, self.v, v.d[select])
                copy = v.d.copy()
                del copy[select]
                self.store(context, self.s, DictValue(copy))
                context.pc += 1
        else:
            if not isinstance(v, SetValue):
                context.failure = "pc = " + str(context.pc) + \
                    ": Error: expected set value, got " + str(v)
            elif v.s == set():
                context.failure = "pc = " + str(context.pc) + \
                    ": Error: expected non-empty set value"
            else:
                lst = sorted(v.s, key=keyValue)
                self.store(context, self.v, lst[0])
                self.store(context, self.s, SetValue(set(lst[1:])))
                context.pc += 1

# Splits a tuple into its elements
class SplitOp(Op):
    def __init__(self, n):
        self.n = n

    def __repr__(self):
        return "Split %d"%self.n

    def jdump(self):
        return '{ "op": "Split", "count": "%d" }'%self.n

    def explain(self):
        return "splits a tuple value into its elements"

    def eval(self, state, context):
        v = context.pop()
        assert isinstance(v, DictValue), v
        assert len(v.d) == self.n, (self.n, len(v.d))
        for i in range(len(v.d)):
            context.push(v.d[i])
        context.pc += 1

# Move an item in the stack to the top
class MoveOp(Op):
    def __init__(self, offset):
        self.offset = offset

    def __repr__(self):
        return "Move %d"%self.offset

    def jdump(self):
        return '{ "op": "Move", "offset": "%d" }'%self.offset

    def explain(self):
        return "move stack element to top"

    def eval(self, state, context):
        v = context.stack.pop(len(context.stack) - self.offset)
        context.push(v)
        context.pc += 1

class DupOp(Op):
    def __repr__(self):
        return "Dup"

    def jdump(self):
        return '{ "op": "Dup" }'

    def explain(self):
        return "push a copy of the top value on the stack"

    def eval(self, state, context):
        v = context.pop()
        context.push(v)
        context.push(v)
        context.pc += 1

class GoOp(Op):
    def __repr__(self):
        return "Go"

    def jdump(self):
        return '{ "op": "Go" }'

    def explain(self):
        return "pops a context and a value, restores the corresponding thread, and pushes the value on its stack"

    def eval(self, state, context):
        ctx = context.pop()
        if not isinstance(ctx, ContextValue):
            context.failure = "pc = " + str(context.pc) + \
                ": Error: expected context value, got " + str(ctx)
        else:
            if ctx in state.stopbag:
                cnt = state.stopbag[ctx]
                assert cnt > 0
                if cnt == 1:
                    del state.stopbag[ctx]
                else:
                    state.stopbag[ctx] = cnt - 1
            result = context.pop();
            copy = ctx.copy()
            copy.push(result)
            copy.stopped = False
            bag_add(state.ctxbag, copy)
            context.pc += 1

class LoadVarOp(Op):
    def __init__(self, v):
        self.v = v

    def __repr__(self):
        if self.v == None:
            return "LoadVar"
        else:
            return "LoadVar " + self.convert(self.v)

    def jdump(self):
        if self.v == None:
            return '{ "op": "LoadVar" }'
        else:
            return '{ "op": "LoadVar", "value": "%s" }'%self.convert(self.v)

    def explain(self):
        if self.v == None:
            return "pop the address of a method variable and push the value of that variable"
        else:
            return "push the value of " + self.convert(self.v)

    def eval(self, state, context):
        if self.v == None:
            av = context.pop()
            assert isinstance(av, AddressValue)
            context.push(context.iget(av.indexes))
        else:
            context.push(self.load(context, self.v))
        context.pc += 1

class IncVarOp(Op):
    def __init__(self, v):
        self.v = v

    def __repr__(self):
        return "IncVar " + self.convert(self.v)

    def jdump(self):
        return '{ "op": "IncVar", "value": "%s" }'%self.convert(self.v)

    def explain(self):
        return "increment the value of " + self.convert(self.v)

    def eval(self, state, context):
        v = self.load(context, self.v)
        self.store(context, self.v, v + 1)
        context.pc += 1

class PushOp(Op):
    def __init__(self, constant):
        self.constant = constant

    def __repr__(self):
        (lexeme, file, line, column) = self.constant
        return "Push " + strValue(lexeme)

    def jdump(self):
        (lexeme, file, line, column) = self.constant
        return '{ "op": "Push", "value": %s }'%jsonValue(lexeme)

    def explain(self):
        return "push constant " + strValue(self.constant[0])

    def eval(self, state, context):
        (lexeme, file, line, column) = self.constant
        context.push(lexeme)
        context.pc += 1

class LoadOp(Op):
    def __init__(self, name, token, prefix):
        self.name = name
        self.token = token
        self.prefix = prefix

    def __repr__(self):
        if self.name == None:
            return "Load"
        else:
            (lexeme, file, line, column) = self.name
            return "Load " + ".".join(self.prefix + [lexeme])

    def jdump(self):
        if self.name == None:
            return '{ "op": "Load" }'
        else:
            (lexeme, file, line, column) = self.name
            result = ""
            for n in self.prefix + [lexeme]:
                if result != "":
                    result += ", "
                result += jsonValue(n)
            return '{ "op": "Load", "value": [%s] }'%result

    def explain(self):
        if self.name == None:
            return "pop an address and push the value at the address"
        else:
            return "push value of shared variable " + self.name[0]

    def eval(self, state, context):
        if self.name == None:
            av = context.pop()
            if not isinstance(av, AddressValue):
                context.failure = "Error: not an address " + \
                                    str(self.token) + " -> " + str(av)
                return
            context.push(state.iget(av.indexes))
        else:
            (lexeme, file, line, column) = self.name
            # TODO
            if False and lexeme not in state.vars.d:
                context.failure = "Error: no variable " + str(self.token)
                return
            context.push(state.iget(self.prefix + [lexeme]))
        context.pc += 1

class StoreOp(Op):
    def __init__(self, name, token, prefix):
        self.name = name
        self.token = token  # for error reporting
        self.prefix = prefix

    def __repr__(self):
        if self.name == None:
            return "Store"
        else:
            (lexeme, file, line, column) = self.name
            return "Store " + ".".join(self.prefix + [lexeme])

    def jdump(self):
        if self.name == None:
            return '{ "op": "Store" }'
        else:
            (lexeme, file, line, column) = self.name
            result = ""
            for n in self.prefix + [lexeme]:
                if result != "":
                    result += ", "
                result += jsonValue(n)
            return '{ "op": "Store", "value": [%s] }'%result

    def explain(self):
        if self.name == None:
            return "pop a value and an address and store the value at the address"
        else:
            return "pop a value and store it in shared variable " + self.name[0]

    def eval(self, state, context):
        if context.readonly > 0:
            context.failure = "Error: no update allowed in assert " + str(self.token)
            return
        v = context.pop()
        if self.name == None:
            av = context.pop()
            if not isinstance(av, AddressValue):
                context.failure = "Error: not an address " + \
                                    str(self.token) + " -> " + str(av)
                return
            lv = av.indexes
            if len(lv) == 0:
                context.failure = "Error: bad address " + str(self.token)
                return
            name = lv[0]
        else:
            (lexeme, file, line, column) = self.name
            lv = self.prefix + [lexeme]
            name = lexeme

        # TODO
        if False and not state.initializing and (name not in state.vars.d):
            context.failure = "Error: using an uninitialized shared variable " \
                    + name + ": " + str(self.token)
        else:
            try:
                state.set(lv, v)
                context.pc += 1
            except AttributeError:
                context.failure = "Error: " + name + " is not a dictionary " + str(self.token)

class DelOp(Op):
    # TODO: prefix
    def __init__(self, name):
        self.name = name

    def __repr__(self):
        if self.name != None:
            (lexeme, file, line, column) = self.name
            return "Del " + lexeme
        else:
            return "Del"

    def jdump(self):
        if self.name == None:
            return '{ "op": "Del" }'
        else:
            (lexeme, file, line, column) = self.name
            return '{ "op": "Del", "value": "%s" }'%lexeme

    def explain(self):
        if self.name == None:
            return "pop an address and delete the shared variable at the address"
        else:
            return "delete the shared variable " + self.name[0]

    def eval(self, state, context):
        if self.name == None:
            av = context.pop()
            if not isinstance(av, AddressValue):
                context.failure = "Error: not an address " + \
                                    str(self.token) + " -> " + str(av)
                return
            lv = av.indexes
            name = lv[0]
        else:
            (lexeme, file, line, column) = self.name
            lv = [lexeme]
            name = lexeme

        if not state.initializing and (name not in state.vars.d):
            context.failure = "Error: deleting an uninitialized shared variable " \
                    + name + ": " + str(self.token)
        else:
            state.delete(lv)
            context.pc += 1

class StopOp(Op):
    def __init__(self, name):
        self.name = name

    def __repr__(self):
        if self.name != None:
            (lexeme, file, line, column) = self.name
            return "Stop " + lexeme
        else:
            return "Stop"

    def jdump(self):
        if self.name != None:
            (lexeme, file, line, column) = self.name
            return '{ "op": "Stop", "value": %s }'%lexeme
        else:
            return '{ "op": "Stop" }'

    def explain(self):
        if self.name == None:
            return "pop an address and store context at that address"
        else:
            return "store context at " + self.name[0]

    def eval(self, state, context):
        if self.name == None:
            av = context.pop()
            if not isinstance(av, AddressValue):
                context.failure = "Error: not an address " + \
                                    str(self.name) + " -> " + str(av)
                return
            lv = av.indexes
            name = lv[0]
        else:
            (lexeme, file, line, column) = self.name
            lv = [lexeme]
            name = lexeme

        if not state.initializing and (name not in state.vars.d):
            context.failure = "Error: using an uninitialized shared variable " \
                    + name + ": " + str(self.name)
        else:
            # Update the context before saving it
            context.stopped = True
            context.pc += 1
            assert isinstance(state.code[context.pc], ContinueOp)

            # Save the context
            state.stop(lv, context)

class SequentialOp(Op):
    def __init__(self):
        pass

    def __repr__(self):
        return "Sequential"

    def jdump(self):
        return '{ "op": "Sequential" }'

    def explain(self):
        return "sequential consistency for variable on top of stack"

    def eval(self, state, context):
        # TODO
        context.pop()

class ContinueOp(Op):
    def __repr__(self):
        return "Continue"

    def explain(self):
        return "a no-op, must follow a Stop operation"

    def jdump(self):
        return '{ "op": "Continue" }'

    def eval(self, state, context):
        context.pc += 1

class AddressOp(Op):
    def __repr__(self):
        return "Address"

    def jdump(self):
        return '{ "op": "Address" }'

    def explain(self):
        return "combine the top two values on the stack into an address and push the result"

    def eval(self, state, context):
        index = context.pop()
        av = context.pop()
        assert isinstance(av, AddressValue), av
        context.push(AddressValue(av.indexes + [index]))
        context.pc += 1

class StoreVarOp(Op):
    def __init__(self, v):
        self.v = v

    def __repr__(self):
        if self.v == None:
            return "StoreVar"
        else:
            return "StoreVar " + self.convert(self.v)

    def jdump(self):
        if self.v == None:
            return '{ "op": "StoreVar" }'
        else:
            return '{ "op": "StoreVar", "value": "%s" }'%self.convert(self.v)

    def explain(self):
        if self.v == None:
            return "pop a value and the address of a method variable and store the value at that address"
        else:
            return "pop a value and store in " + self.convert(self.v)

    # TODO.  Check error message.  Doesn't seem right
    def eval(self, state, context):
        if self.v == None:
            value = context.pop()
            av = context.pop();
            assert isinstance(av, AddressValue)
            try:
                context.set(av.indexes, value)
                context.pc += 1
            except AttributeError:
                context.failure = "Error: " + str(av.indexes) + " not a dictionary"
        else:
            try:
                self.store(context, self.v, context.pop())
                context.pc += 1
            except AttributeError:
                context.failure = "Error: " + str(self.v) + " -- not a dictionary"

class DelVarOp(Op):
    def __init__(self, v):
        self.v = v

    def __repr__(self):
        if self.v == None:
            return "DelVar"
        else:
            (lexeme, file, line, column) = self.v
            return "DelVar " + str(lexeme)

    def jdump(self):
        if self.v == None:
            return '{ "op": "DelVar" }'
        else:
            return '{ "op": "DelVar", "value": "%s" }'%self.convert(self.v)

    def explain(self):
        if self.v == None:
            return "pop an address of a method variable and delete that variable"
        else:
            return "delete method variable " + self.v[0]

    def eval(self, state, context):
        if self.v == None:
            av = context.pop();
            assert isinstance(av, AddressValue)
            context.delete(av.indexes)
        else:
            (lexeme, file, line, column) = self.v
            context.delete([lexeme])
        context.pc += 1

class ChooseOp(Op):
    def __repr__(self):
        return "Choose"

    def jdump(self):
        return '{ "op": "Choose" }'

    def explain(self):
        return "pop a set value and push one of its elements"

    def eval(self, state, context):
        v = context.pop()
        assert isinstance(v, SetValue), v
        assert len(v.s) == 1, v
        for e in v.s:
            context.push(e)
        context.pc += 1

class AssertOp(Op):
    def __init__(self, token, exprthere):
        self.token = token
        self.exprthere = exprthere

    def __repr__(self):
        return "Assert2" if self.exprthere else "Assert"

    def jdump(self):
        if self.exprthere:
            return '{ "op": "Assert2" }'
        else:
            return '{ "op": "Assert" }'

    def explain(self):
        if self.exprthere:
            return "pop a value and a condition and raise exception if condition is false"
        else:
            return "pop a condition and raise exception if condition is false"

    def eval(self, state, context):
        if self.exprthere:
            expr = context.pop()
        cond = context.pop()
        if not isinstance(cond, bool):
            context.failure = "Error: argument to " + str(self.token) + \
                        " must be a boolean: " + strValue(cond)
            return
        if not cond:
            (lexeme, file, line, column) = self.token
            context.failure = "Harmony Assertion (file=%s, line=%d) failed"%(file, line)
            if self.exprthere:
                context.failure += ": " + strValue(expr)
            return
        context.pc += 1

class PopOp(Op):
    def __init__(self):
        pass

    def __repr__(self):
        return "Pop"

    def jdump(self):
        return '{ "op": "Pop" }'

    def explain(self):
        return "discard the top value on the stack"

    def eval(self, state, context):
        context.pop()
        context.pc += 1

class FrameOp(Op):
    def __init__(self, name, args):
        self.name = name
        self.args = args

    def __repr__(self):
        (lexeme, file, line, column) = self.name
        return "Frame " + str(lexeme) + " " + self.convert(self.args)

    def jdump(self):
        (lexeme, file, line, column) = self.name
        return '{ "op": "Frame", "name": "%s", "args": "%s" }'%(lexeme, self.convert(self.args))

    def explain(self):
        return "start of method " + str(self.name[0])

    def eval(self, state, context):
        arg = context.pop()
        context.push(arg)               # restore for easier debugging
        context.push(context.vars)
        context.push(context.fp)
        context.fp = len(context.stack) # points to old fp, old vars, and return address
        context.vars = DictValue({ "result": novalue })
        self.store(context, self.args, arg)
        context.pc += 1

class ReturnOp(Op):
    def __repr__(self):
        return "Return"

    def jdump(self):
        return '{ "op": "Return" }'

    def explain(self):
        return "restore caller method state and push result"

    def eval(self, state, context):
        if len(context.stack) == 0:
            context.phase = "end"
            return
        result = context.get("result")
        context.fp = context.pop()
        context.vars = context.pop()
        context.pop()       # argument saved for stack trace
        assert isinstance(context.vars, DictValue)
        if len(context.stack) == 0:
            context.phase = "end"
            return
        calltype = context.pop()
        if calltype == "normal":
            pc = context.pop()
            assert isinstance(pc, PcValue)
            assert pc.pc != context.pc
            context.pc = pc.pc
            context.push(result)
        elif calltype == "interrupt":
            assert context.interruptLevel
            context.interruptLevel = False
            pc = context.pop()
            assert isinstance(pc, PcValue)
            assert pc.pc != context.pc
            context.pc = pc.pc
        elif calltype == "process":
            context.phase = "end"
        else:
            assert False, calltype

class SpawnOp(Op):
    def __repr__(self):
        return "Spawn"

    def jdump(self):
        return '{ "op": "Spawn" }'

    def explain(self):
        return "pop a pc, argument, and tag and spawn a new thread"

    def eval(self, state, context):
        if context.readonly > 0:
            context.failure = "Error: no spawn allowed in assert"
            return
        method = context.pop()
        assert isinstance(method, PcValue)
        arg = context.pop()
        this = context.pop()
        frame = state.code[method.pc]
        assert isinstance(frame, FrameOp)
        ctx = ContextValue(frame.name, method.pc, arg, this)
        ctx.push("process")
        ctx.push(arg)
        bag_add(state.ctxbag, ctx)
        context.pc += 1

class TrapOp(Op):
    def __repr__(self):
        return "Trap"

    def explain(self):
        return "pop a pc and argument and set trap"

    def jdump(self):
        return '{ "op": "Trap" }'

    def eval(self, state, context):
        method = context.pop()
        assert isinstance(method, PcValue)
        arg = context.pop()
        frame = state.code[method.pc]
        assert isinstance(frame, FrameOp)
        context.trap = (method, arg)
        context.pc += 1

class AtomicIncOp(Op):
    def __repr__(self):
        return "AtomicInc"

    def jdump(self):
        return '{ "op": "AtomicInc" }'

    def explain(self):
        return "increment atomic counter of context; thread runs uninterrupted if larger than 0"

    def eval(self, state, context):
        context.atomic += 1
        context.pc += 1

class AtomicDecOp(Op):
    def __repr__(self):
        return "AtomicDec"

    def jdump(self):
        return '{ "op": "AtomicDec" }'

    def explain(self):
        return "decrement atomic counter of context"

    def eval(self, state, context):
        assert context.atomic > 0
        context.atomic -= 1
        context.pc += 1

class ReadonlyIncOp(Op):
    def __repr__(self):
        return "ReadonlyInc"

    def jdump(self):
        return '{ "op": "ReadonlyInc" }'

    def explain(self):
        return "increment readonly counter of context; thread cannot mutate shared variables if > 0"

    def eval(self, state, context):
        context.readonly += 1
        context.pc += 1

class ReadonlyDecOp(Op):
    def __repr__(self):
        return "ReadonlyDec"

    def jdump(self):
        return '{ "op": "ReadonlyDec" }'

    def explain(self):
        return "decrement readonly counter of context"

    def eval(self, state, context):
        assert context.readonly > 0
        context.readonly -= 1
        context.pc += 1

class InvariantOp(Op):
    def __init__(self, cnt, token):
        assert cnt > 0
        self.cnt = cnt
        self.token = token

    def __repr__(self):
        return "Invariant " + str(self.cnt)

    def jdump(self):
        return '{ "op": "Invariant", "cnt": "%d" }'%self.cnt

    def explain(self):
        return "test invariant in next " + str(self.cnt) + " instructions"

    def eval(self, state, context):
        assert self.cnt > 0
        state.invariants |= {context.pc}
        context.pc += (self.cnt + 1)

class JumpOp(Op):
    def __init__(self, pc):
        self.pc = pc

    def __repr__(self):
        return "Jump " + str(self.pc)

    def jdump(self):
        return '{ "op": "Jump", "pc": "%d" }'%self.pc

    def explain(self):
        return "set program counter to " + str(self.pc)

    def eval(self, state, context):
        assert self.pc != context.pc
        context.pc = self.pc

class JumpCondOp(Op):
    def __init__(self, cond, pc):
        self.cond = cond
        self.pc = pc

    def __repr__(self):
        return "JumpCond " + str(self.cond) + " " + str(self.pc)

    def jdump(self):
        return '{ "op": "JumpCond", "pc": "%d", "cond": %s }'%(self.pc, jsonValue(self.cond))

    def explain(self):
        return "pop a value and jump to " + str(self.pc) + \
            " if the value is " + strValue(self.cond)

    def eval(self, state, context):
        c = context.pop()
        if c == self.cond:
            assert self.pc != context.pc
            context.pc = self.pc
        else:
            context.pc += 1

class NaryOp(Op):
    def __init__(self, op, n):
        self.op = op
        self.n = n

    def __repr__(self):
        (lexeme, file, line, column) = self.op
        return "%d-ary "%self.n + str(lexeme)

    def jdump(self):
        (lexeme, file, line, column) = self.op
        return '{ "op": "Nary", "arity": %d, "value": "%s" }'%(self.n, lexeme)

    def explain(self):
        return "pop " + str(self.n) + \
            (" value" if self.n == 1 else " values") + \
            " and push the result of applying " + self.op[0]

    def atLabel(self, state, pc):
        bag = {}
        for (ctx, cnt) in state.ctxbag.items():
            if ctx.pc == pc:
                nametag = DictValue({ 0: PcValue(ctx.entry), 1: ctx.arg })
                c = bag.get(nametag)
                bag[nametag] = cnt if c == None else (c + cnt)
        return DictValue(bag)

    def contexts(self, state):
        return DictValue({ **state.ctxbag, **state.termbag, **state.stopbag })

    def concat(self, d1, d2):
        result = []
        keys = sorted(d1.d.keys(), key=keyValue)
        for k in keys:
            result.append(d1.d[k])
        keys = sorted(d2.d.keys(), key=keyValue)
        for k in keys:
            result.append(d2.d[k])
        return DictValue({ i:result[i] for i in range(len(result)) })

    def checktype(self, state, context, args, chk):
        assert len(args) == self.n, (self, args)
        if not chk:
            context.failure = "Error: unexpected types in " + str(self.op) + \
                        " operands: " + str(list(reversed(args)))
            return False
        return True

    def checkdmult(self, state, context, args, d, e):
        if not self.checktype(state, context, args, type(e) == int):
            return False
        keys = set(range(len(d.d)))
        if d.d.keys() != keys:
            context.failure = "Error: one operand in " + str(self.op) + \
                        " must be a list: " + str(list(reversed(args)))
            return False
        return True

    def dmult(self, d, e):
        n = len(d.d)
        lst = { i:d.d[i % n] for i in range(e * n) }
        return DictValue(lst)

    def eval(self, state, context):
        (op, file, line, column) = self.op
        assert len(context.stack) >= self.n
        sa = context.stack[-self.n:]
        if op in { "+", "*", "&", "|", "^" }:
            assert self.n > 1
            e2 = context.pop()
            for i in range(1, self.n):
                e1 = context.pop()
                if op == "+":
                    if type(e1) == int:
                        if not self.checktype(state, context, sa, type(e2) == int):
                            return
                        e2 += e1
                    else:
                        if not self.checktype(state, context, sa, isinstance(e1, DictValue)):
                            return
                        if not self.checktype(state, context, sa, isinstance(e2, DictValue)):
                            return
                        e2 = self.concat(e1, e2)
                elif op == "*":
                    if isinstance(e1, DictValue) or isinstance(e2, DictValue):
                        if isinstance(e1, DictValue) and not self.checkdmult(state, context, sa, e1, e2):
                            return
                        if isinstance(e2, DictValue) and not self.checkdmult(state, context, sa, e2, e1):
                            return
                        e2 = self.dmult(e1, e2) if isinstance(e1, DictValue) else self.dmult(e2, e1)
                    else:
                        if not self.checktype(state, context, sa, type(e1) == int):
                            return
                        if not self.checktype(state, context, sa, type(e2) == int):
                            return
                        e2 *= e1
                elif op == "&":
                    if type(e1) == int:
                        if not self.checktype(state, context, sa, type(e2) == int):
                            return
                        e2 &= e1
                    elif type(e1) == SetValue:
                        if not self.checktype(state, context, sa, isinstance(e2, SetValue)):
                            return
                        e2 = SetValue(e1.s & e2.s)
                    else:
                        if not self.checktype(state, context, sa, isinstance(e1, DictValue)):
                            return
                        if not self.checktype(state, context, sa, isinstance(e2, DictValue)):
                            return
                        d = {}
                        for (k1, v1) in e1.d.items():
                            if k1 in e2.d:
                                v2 = e2.d[k1]
                                d[k1] = v1 if keyValue(v1) < keyValue(v2) else v2
                        e2 = DictValue(d)
                elif op == "|":
                    if type(e1) == int:
                        if not self.checktype(state, context, sa, type(e2) == int):
                            return
                        e2 |= e1
                    elif type(e1) == SetValue:
                        if not self.checktype(state, context, sa, isinstance(e2, SetValue)):
                            return
                        e2 = SetValue(e1.s | e2.s)
                    else:
                        if not self.checktype(state, context, sa, isinstance(e1, DictValue)):
                            return
                        if not self.checktype(state, context, sa, isinstance(e2, DictValue)):
                            return
                        d = {}
                        for (k1, v1) in e1.d.items():
                            if k1 in e2.d:
                                v2 = e2.d[k1]
                                d[k1] = v1 if keyValue(v1) > keyValue(v2) else v2
                            else:
                                d[k1] = v1
                        for (k2, v2) in e2.d.items():
                            if k2 not in e1.d:
                                d[k2] = v2
                        e2 = DictValue(d)
                elif op == "^": 
                    if type(e1) == int:
                        if not self.checktype(state, context, sa, type(e2) == int):
                            return
                        e2 ^= e1
                    else:
                        if not self.checktype(state, context, sa, isinstance(e1, SetValue)):
                            return
                        if not self.checktype(state, context, sa, isinstance(e2, SetValue)):
                            return
                        e2 = SetValue(e2.s.union(e1.s).difference(e2.s.intersection(e1.s)))
                else:
                    assert False, op
            context.push(e2)
        elif self.n == 1:
            e = context.pop()
            if op == "-":
                if not self.checktype(state, context, sa, type(e) == int or isinstance(e, float)):
                    return
                context.push(-e)
            elif op == "~":
                if not self.checktype(state, context, sa, type(e) == int):
                    return
                context.push(~e)
            elif op == "not":
                if not self.checktype(state, context, sa, isinstance(e, bool)):
                    return
                context.push(not e)
            elif op == "abs":
                if not self.checktype(state, context, sa, type(e) == int):
                    return
                context.push(abs(e))
            elif op == "atLabel":
                if not context.atomic:
                    context.failure = "not in atomic block: " + str(self.op)
                    return
                if not self.checktype(state, context, sa, isinstance(e, PcValue)):
                    return
                context.push(self.atLabel(state, e.pc))
            elif op == "get_context":
                # if not self.checktype(state, context, sa, isinstance(e, int)):
                #   return
                context.push(context.copy())
            elif op == "contexts":
                if not context.atomic:
                    context.failure = "not in atomic block: " + str(self.op)
                    return
                # if not self.checktype(state, context, sa, isinstance(e, str)):
                #     return
                context.push(self.contexts(state))
            elif op == "print":
                print("PRINT", e, "TNIRP")
                context.push(e)
            elif op == "IsEmpty":
                if isinstance(e, DictValue):
                    context.push(e.d == {})
                elif self.checktype(state, context, sa, isinstance(e, SetValue)):
                    context.push(e.s == set())
            elif op == "min":
                if isinstance(e, DictValue):
                    if len(e.d) == 0:
                        context.failure = "Error: min() invoked with empty dict: " + str(self.op)
                    else:
                        context.push(min(e.d.values(), key=keyValue))
                else:
                    if not self.checktype(state, context, sa, isinstance(e, SetValue)):
                        return
                    if len(e.s) == 0:
                        context.failure = "Error: min() invoked with empty set: " + str(self.op)
                    else:
                        context.push(min(e.s, key=keyValue))
            elif op == "max":
                if isinstance(e, DictValue):
                    if len(e.d) == 0:
                        context.failure = "Error: max() invoked with empty dict: " + str(self.op)
                    else:
                        context.push(max(e.d.values(), key=keyValue))
                else:
                    if not self.checktype(state, context, sa, isinstance(e, SetValue)):
                        return
                    if len(e.s) == 0:
                        context.failure = "Error: max() invoked with empty set: " + str(self.op)
                    else:
                        context.push(max(e.s, key=keyValue))
            elif op == "len":
                if isinstance(e, SetValue):
                    context.push(len(e.s))
                else:
                    if not self.checktype(state, context, sa, isinstance(e, DictValue)):
                        return
                    context.push(len(e.d))
            elif op == "any":
                if isinstance(e, SetValue):
                    context.push(any(e.s))
                else:
                    if not self.checktype(state, context, sa, isinstance(e, DictValue)):
                        return
                    context.push(any(e.d.values()))
            elif op == "all":
                if isinstance(e, SetValue):
                    context.push(all(e.s))
                else:
                    if not self.checktype(state, context, sa, isinstance(e, DictValue)):
                        return
                    context.push(all(e.d.values()))
            elif op == "keys":
                if not self.checktype(state, context, sa, isinstance(e, DictValue)):
                    return
                context.push(SetValue(set(e.d.keys())))
            elif op == "hash":
                context.push((e,).__hash__())
            else:
                assert False, self
        elif self.n == 2:
            e2 = context.pop()
            e1 = context.pop()
            if op == "==":
                # if not self.checktype(state, context, sa, type(e1) == type(e2)):
                #     return
                context.push(e1 == e2)
            elif op == "!=":
                # if not self.checktype(state, context, sa, type(e1) == type(e2)):
                #     return
                context.push(e1 != e2)
            elif op == "<":
                context.push(keyValue(e1) < keyValue(e2))
            elif op == "<=":
                context.push(keyValue(e1) <= keyValue(e2))
            elif op == ">":
                context.push(keyValue(e1) > keyValue(e2))
            elif op == ">=":
                context.push(keyValue(e1) >= keyValue(e2))
            elif op == "-":
                if type(e1) == int or isinstance(e1, float):
                    if not self.checktype(state, context, sa, type(e2) == int or isinstance(e2, float)):
                        return
                    context.push(e1 - e2)
                else:
                    if not self.checktype(state, context, sa, isinstance(e1, SetValue)):
                        return
                    if not self.checktype(state, context, sa, isinstance(e2, SetValue)):
                        return
                    context.push(SetValue(e1.s.difference(e2.s)))
            elif op in { "/", "//" }:
                if not self.checktype(state, context, sa, type(e1) == int or isinstance(e1, float)):
                    return
                if not self.checktype(state, context, sa, type(e2) == int or isinstance(e2, float)):
                    return
                if type(e1) == int and (e2 == math.inf or e2 == -math.inf):
                    context.push(0)
                else:
                    context.push(e1 // e2)
            elif op in { "%", "mod" }:
                if not self.checktype(state, context, sa, type(e1) == int):
                    return
                if not self.checktype(state, context, sa, type(e2) == int):
                    return
                context.push(e1 % e2)
            elif op == "**":
                if not self.checktype(state, context, sa, type(e1) == int):
                    return
                if not self.checktype(state, context, sa, type(e2) == int):
                    return
                context.push(e1 ** e2)
            elif op == "<<":
                if not self.checktype(state, context, sa, type(e1) == int):
                    return
                if not self.checktype(state, context, sa, type(e2) == int):
                    return
                context.push(e1 << e2)
            elif op == ">>":
                if not self.checktype(state, context, sa, type(e1) == int):
                    return
                if not self.checktype(state, context, sa, type(e2) == int):
                    return
                context.push(e1 >> e2)
            elif op == "..":
                if not self.checktype(state, context, sa, type(e1) == int):
                    return
                if not self.checktype(state, context, sa, type(e2) == int):
                    return
                context.push(SetValue(set(range(e1, e2+1))))
            elif op == "in":
                if isinstance(e2, SetValue):
                    context.push(e1 in e2.s)
                elif not self.checktype(state, context, sa, isinstance(e2, DictValue)):
                    return
                else:
                    context.push(e1 in e2.d.values())
            elif op == "SetAdd":
                assert isinstance(e1, SetValue)
                context.push(SetValue(e1.s | {e2}))
            elif op == "BagAdd":
                assert isinstance(e1, DictValue)
                d = e1.d.copy()
                if e2 in d:
                    assert isinstance(d[e2], int)
                    d[e2] += 1
                else:
                    d[e2] = 1
                context.push(DictValue(d))
            else:
                assert False, self
        elif self.n == 3:
            e3 = context.pop()
            e2 = context.pop()
            e1 = context.pop()
            if op == "DictAdd":
                assert isinstance(e1, DictValue)
                d = e1.d.copy()
                if e2 in d:
                    if keyValue(d[e2]) >= keyValue(e3):
                        context.push(e1)
                    else:
                        d[e2] = e3
                        context.push(DictValue(d))
                else:
                    d[e2] = e3
                    context.push(DictValue(d))
            else:
                assert False, self
        else:
            assert False, self
        context.pc += 1

class ApplyOp(Op):
    def __init__(self, token):
        self.token = token

    def __repr__(self):
        return "Apply"

    def jdump(self):
        return '{ "op": "Apply" }'

    def explain(self):
        return "pop a pc or dictionary f and an index i and push f(i)"

    def eval(self, state, context):
        method = context.pop()
        e = context.pop()
        if isinstance(method, DictValue):
            try:
                context.push(method.d[e])
            except KeyError:
                context.failure = "Error: no entry " + str(e) + " in " + \
                        str(self.token) + " = " + str(method)
                return
            context.pc += 1
        elif isinstance(method, ContextValue):
            if e == "this":
                context.push(method.this)
            elif e == "name":
                context.push(method.name)
            elif e == "entry":
                context.push(method.entry)
            elif e == "arg":
                context.push(method.arg)
            elif e == "mode":
                if method.failure != None:
                    context.push("failed")
                elif method.phase == "end":
                    context.push("terminated")
                elif method.stopped:
                    context.push("stopped")
                else:
                    context.push("normal")
            context.pc += 1
        else:
            # TODO.  Need a token to have location
            if not isinstance(method, PcValue):
                context.failure = "pc = " + str(context.pc) + \
                    ": Error: must be either a method or a dictionary"
                return
            context.push(PcValue(context.pc + 1))
            context.push("normal")
            context.push(e)
            assert method.pc != context.pc
            context.pc = method.pc

class AST:
    def assign(self, scope, var):
        if isinstance(var, tuple):
            scope.checkUnused(var)
            (lexeme, file, line, column) = var
            scope.names[lexeme] = ("local", var)
        else:
            assert isinstance(var, list)
            for v in var:
                self.assign(scope, v)

    def delete(self, scope, code, var):
        if isinstance(var, tuple):
            code.append(DelVarOp(var))  # remove variable
            (lexeme, file, line, column) = var
            del scope.names[lexeme]
        else:
            assert isinstance(var, list)
            assert len(var) > 0
            for v in var:
                self.delete(scope, code, v)

    def isConstant(self, scope):
        return False

    def eval(self, scope, code):
        state = State(code, scope.labels)
        ctx = ContextValue(("__eval__", None, None, None), 0, novalue, novalue)
        ctx.atomic = 1
        while ctx.pc != len(code) and ctx.failure == None:
            code[ctx.pc].eval(state, ctx)
        if ctx.failure != None:
            print("constant evaluation failed: ", self, ctx.failure)
            sys.exit(1)
        return ctx.pop()

    def compile(self, scope, code):
        if self.isConstant(scope):
            code2 = []
            self.gencode(scope, code2)
            v = self.eval(scope, code2)
            code.append(PushOp((v, None, None, None)))
        else:
            self.gencode(scope, code)

    # Return if this lvalue refers to a local or a shared variable
    def isShared(self, scope):
        return True

    # This is supposed to push the address of an lvalue
    def ph1(self, scope, code):
        print("Cannot use in left-hand side expression:", self)
        sys.exit(1)

    def rec_comprehension(self, scope, code, iter, pc, N, vars, ctype):
        if iter == []:
            (lexeme, file, line, column) = self.token
            if ctype == "list":
                code.append(LoadVarOp(N))
            elif ctype == "dict":
                # code.append(LoadVarOp(vars[0] if len(vars) == 1 else vars))
                self.key.compile(scope, code)
            self.value.compile(scope, code)
            if ctype == "set":
                code.append(NaryOp(("SetAdd", file, line, column), 2))
            elif ctype == "dict":
                code.append(NaryOp(("DictAdd", file, line, column), 3))
            elif ctype == "list":
                code.append(NaryOp(("DictAdd", file, line, column), 3))
                code.append(IncVarOp(N))
            elif ctype == "bag":
                code.append(NaryOp(("BagAdd", file, line, column), 2))
                code.append(IncVarOp(N))
            return

        (type, rest) = iter[0]
        assert type == "for" or type == "where", type

        if type == "for":
            (var, expr) = rest

            self.assign(scope, var)
            uid = len(code)
            (lexeme, file, line, column) = self.token

            # Evaluate the set and store in a temporary variable
            expr.compile(scope, code)
            S = ("$s"+str(uid), file, line, column)
            code.append(StoreVarOp(S))

            # Now generate the code:
            #   while X != {}:
            #       var := oneof X
            #       X := X - var
            #       push value
            pc = len(code)
            code.append(LoadVarOp(S))
            code.append(NaryOp(("IsEmpty", file, line, column), 1))
            tst = len(code)
            code.append(None)       # going to plug in a Jump op here
            code.append(CutOp(S, var))  
            self.rec_comprehension(scope, code, iter[1:], pc, N, vars + [var], ctype)
            code.append(JumpOp(pc))
            code[tst] = JumpCondOp(True, len(code))
            self.delete(scope, code, var)
            code.append(DelVarOp(S))

        else:
            assert type == "where"
            negate = isinstance(rest, NaryAST) and rest.op[0] == "not"
            cond = rest.args[0] if negate else rest
            cond.compile(scope, code)
            code.append(JumpCondOp(negate, pc))
            self.rec_comprehension(scope, code, iter[1:], pc, N, vars, ctype)

    def comprehension(self, scope, code, ctype):
        # Keep track of the size
        uid = len(code)
        (lexeme, file, line, column) = self.token
        N = ("$n"+str(uid), file, line, column)
        if ctype == "set":
            code.append(PushOp((SetValue(set()), file, line, column)))
        elif ctype == "dict":
            code.append(PushOp((novalue, file, line, column)))
        elif ctype in { "bag", "list" }:
            code.append(PushOp((0, file, line, column)))
            code.append(StoreVarOp(N))
            code.append(PushOp((novalue, file, line, column)))
        self.rec_comprehension(scope, code, self.iter, None, N, [], ctype)
        if ctype == { "bag", "list" }:
            code.append(DelVarOp(N))

    def doImport(self, scope, code, module):
        (lexeme, file, line, column) = module
        # assert lexeme not in scope.names        # TODO
        if lexeme not in imported:
            code.append(PushOp((novalue, file, line, column)))
            code.append(StoreOp(module, module, []))

            # module name replacement with -m flag
            modname = modules[lexeme] if lexeme in modules \
                                else lexeme

            # create a new scope
            scope2 = Scope(None)
            scope2.prefix = [lexeme]
            scope2.locations = scope.locations
            scope2.labels = scope.labels

            found = False
            for dir in [ os.path.dirname(namestack[-1]), "modules", "." ]:
                filename = dir + "/" + modname + ".hny"
                if os.path.exists(filename):
                    with open(filename) as f:
                        load(f, filename, scope2, code)
                    found = True
                    break
            if not found:
                if modname in internal_modules:
                    load_string(internal_modules[lexeme],
                        "<internal>/" + modname + ".hny", scope2, code)
                else:
                    print("Can't find module", modname, "imported from", namestack)
                    sys.exit(1)
            
            imported[lexeme] = scope2

        scope.names[lexeme] = ("module", imported[lexeme])

    def getLabels(self):
        return set()

    def getImports(self):
        return []

class ConstantAST(AST):
    def __init__(self, const):
        self.const = const

class ConstantAST(AST):
    def __init__(self, const):
        self.const = const

    def __repr__(self):
        return "ConstantAST" + str(self.const)

    def compile(self, scope, code):
        code.append(PushOp(self.const))

    def isConstant(self, scope):
        return True

class NameAST(AST):
    def __init__(self, name):
        self.name = name

    def __repr__(self):
        return "NameAST" + str(self.name)

    def compile(self, scope, code):
        (t, v) = scope.lookup(self.name)
        if t == "local":
            code.append(LoadVarOp(self.name))
        elif t == "constant":
            (lexeme, file, line, column) = self.name
            code.append(PushOp(v))
        else:
            assert t in { "global", "module" }
            code.append(LoadOp(self.name, self.name, scope.prefix))

    def isShared(self, scope):
        (t, v) = scope.find(self.name)
        assert t in { "constant", "local", "global", "module" }
        return t != "local"

    def ph1(self, scope, code):
        (t, v) = scope.lookup(self.name)
        if t == "local":
            (lexeme, file, line, column) = v
            code.append(PushOp((AddressValue([lexeme]), file, line, column)))
        elif t == "constant":
            print("constant cannot be an lvalue:", self.name)
            sys.exit(1)
        else:
            (lexeme, file, line, column) = self.name
            code.append(PushOp((AddressValue(scope.prefix + [lexeme]), file, line, column)))

    def ph2(self, scope, code, skip):
        if skip > 0:
            code.append(MoveOp(skip + 2))
            code.append(MoveOp(2))
        (t, v) = scope.lookup(self.name)
        if t == "local":
            code.append(StoreVarOp(None))
        else:
            assert t == "global", (t, v)
            code.append(StoreOp(None, self.name, None))

    def isConstant(self, scope):
        (lexeme, file, line, column) = self.name
        (t, v) = scope.lookup(self.name)
        if t in { "local", "global", "module" }:
            return False
        elif t == "constant":
            return True
        else:
            assert False, (t, v, self.name)

class SetAST(AST):
    def __init__(self, collection):
        self.collection = collection

    def __repr__(self):
        return str(self.collection)

    def isConstant(self, scope):
        return all(x.isConstant(scope) for x in self.collection)

    def gencode(self, scope, code):
        code.append(PushOp((SetValue(set()), None, None, None)))
        for e in self.collection:
            e.compile(scope, code)
            code.append(NaryOp(("SetAdd", None, None, None), 2))

class BagAST(AST):
    def __init__(self, collection):
        self.collection = collection

    def __repr__(self):
        return "Bag(" + str(self.collection) + ")"

    def isConstant(self, scope):
        return all(x.isConstant(scope) for x in self.collection)

    def gencode(self, scope, code):
        code.append(PushOp((novalue, None, None, None)))
        for e in self.collection:
            e.compile(scope, code)
            code.append(NaryOp(("BagAdd", None, None, None), 2))

class RangeAST(AST):
    def __init__(self, lhs, rhs, token):
        self.lhs = lhs
        self.rhs = rhs
        self.token = token

    def __repr__(self):
        return "Range(%s,%s)"%(self.lhs, self.rhs)

    def isConstant(self, scope):
        return self.lhs.isConstant(scope) and self.rhs.isConstant(scope)

    def gencode(self, scope, code):
        self.lhs.compile(scope, code)
        self.rhs.compile(scope, code)
        (lexeme, file, line, column) = self.token
        code.append(NaryOp(("..", file, line, column), 2))

class TupleAST(AST):
    def __init__(self, list, token):
        self.list = list
        self.token = token

    def __repr__(self):
        return "TupleAST" + str(self.list)

    def isConstant(self, scope):
        return all(v.isConstant(scope) for v in self.list)

    def gencode(self, scope, code):
        (lexeme, file, line, column) = self.token
        code.append(PushOp((novalue, file, line, column)))
        for (i, v) in enumerate(self.list):
            code.append(PushOp((i, file, line, column)))
            v.compile(scope, code)
            code.append(NaryOp(("DictAdd", file, line, column), 3))

    def isShared(self, scope):
        assert False

    def ph1(self, scope, code):
        for lv in self.list:
            lv.ph1(scope, code)

    def ph2(self, scope, code, skip):
        n = len(self.list)
        code.append(SplitOp(n))
        for lv in reversed(self.list):
            n -= 1
            lv.ph2(scope, code, skip + n)

class DictAST(AST):
    def __init__(self, record):
        self.record = record

    def __repr__(self):
        return "DictAST" + str(self.record)

    def isConstant(self, scope):
        return all(k.isConstant(scope) and v.isConstant(scope)
                        for (k, v) in self.record)

    def gencode(self, scope, code):
        code.append(PushOp((novalue, None, None, None)))
        for (k, v) in self.record:
            k.compile(scope, code)
            v.compile(scope, code)
            code.append(NaryOp(("DictAdd", None, None, None), 3))

class SetComprehensionAST(AST):
    def __init__(self, value, iter, token):
        self.value = value
        self.iter = iter
        self.token = token

    def __repr__(self):
        return "SetComprehension(" + str(self.var) + ")"

    def compile(self, scope, code):
        self.comprehension(scope, code, "set")

class BagComprehensionAST(AST):
    def __init__(self, value, iter, token):
        self.value = value
        self.iter = iter
        self.token = token

    def __repr__(self):
        return "BagComprehension(" + str(self.var) + ")"

    def compile(self, scope, code):
        self.comprehension(scope, code, "bag")

class DictComprehensionAST(AST):
    def __init__(self, key, value, iter, token):
        self.key = key
        self.value = value
        self.iter = iter
        self.token = token

    def __repr__(self):
        return "DictComprehension(" + str(self.key) + ")"

    def compile(self, scope, code):
        self.comprehension(scope, code, "dict")

class ListComprehensionAST(AST):
    def __init__(self, value, iter, token):
        self.value = value
        self.iter = iter
        self.token = token

    def __repr__(self):
        return "ListComprehension(" + str(self.var) + ")"

    def compile(self, scope, code):
        self.comprehension(scope, code, "list")

# N-ary operator
class NaryAST(AST):
    def __init__(self, op, args):
        self.op = op
        self.args = args
        assert all(isinstance(x, AST) for x in args), args

    def __repr__(self):
        return "NaryOp(" + str(self.op) + ", " + str(self.args) + ")"

    def isConstant(self, scope):
        (op, file, line, column) = self.op
        if op in { "atLabel", "choose", "contexts", "get_context" }:
            return False
        return all(x.isConstant(scope) for x in self.args)

    def gencode(self, scope, code):
        (op, file, line, column) = self.op
        n = len(self.args)
        if op == "and" or op == "or":
            self.args[0].compile(scope, code)
            pcs = []
            for i in range(1, n):
                pcs.append(len(code))
                code.append(None)
                self.args[i].compile(scope, code)
            code.append(JumpOp(len(code) + 2))
            for pc in pcs:
                code[pc] = JumpCondOp(op == "or", len(code))
            code.append(PushOp((op == "or", file, line, column)))
        elif op == "=>":
            assert n == 2, n
            self.args[0].compile(scope, code)
            pc = len(code)
            code.append(None)
            self.args[1].compile(scope, code)
            code.append(JumpOp(len(code) + 2))
            code[pc] = JumpCondOp(False, len(code))
            code.append(PushOp((True, file, line, column)))
        elif op == "if":
            assert n == 3, n
            negate = isinstance(self.args[1], NaryAST) and self.args[1].op[0] == "not"
            cond = self.args[1].args[0] if negate else self.args[1]
            cond.compile(scope, code)
            pc1 = len(code)
            code.append(None)
            self.args[0].compile(scope, code)
            pc2 = len(code)
            code.append(None)
            self.args[2].compile(scope, code)
            code[pc1] = JumpCondOp(negate, pc2 + 1)
            code[pc2] = JumpOp(len(code))
        elif op == "choose":
            assert n == 1
            self.args[0].compile(scope, code)
            code.append(ChooseOp())
        else:
            for i in range(n):
                self.args[i].compile(scope, code)
            code.append(NaryOp(self.op, n))

class CmpAST(AST):
    def __init__(self, ops, args):
        self.ops = ops
        self.args = args
        assert len(ops) == len(args) - 1
        assert all(isinstance(x, AST) for x in args), args

    def __repr__(self):
        return "CmpOp(" + str(self.ops) + ", " + str(self.args) + ")"

    def isConstant(self, scope):
        return all(x.isConstant(scope) for x in self.args)

    def gencode(self, scope, code):
        n = len(self.args)
        self.args[0].compile(scope, code)
        pcs = []
        (lexeme, file, line, column) = self.ops[0]
        T = ("__cmp__"+str(len(code)), file, line, column)
        for i in range(1, n-1):
            self.args[i].compile(scope, code)
            code.append(DupOp())
            code.append(StoreVarOp(T))
            code.append(NaryOp(self.ops[i-1], 2))
            code.append(DupOp())
            pcs.append(len(code))
            code.append(None)
            code.append(PopOp())
            code.append(LoadVarOp(T))
        self.args[n-1].compile(scope, code)
        code.append(NaryOp(self.ops[n-2], 2))
        for pc in pcs:
            code[pc] = JumpCondOp(False, len(code))
        if n > 2:
            code.append(DelVarOp(T))

class ApplyAST(AST):
    def __init__(self, method, arg, token):
        self.method = method
        self.arg = arg
        self.token = token

    def __repr__(self):
        return "ApplyAST(" + str(self.method) + ", " + str(self.arg) + ")"

    def varCompile(self, scope, code):
        if isinstance(self.method, NameAST):
            (t, v) = scope.lookup(self.method.name)
            if t == "global":
                self.method.ph1(scope, code)
                self.arg.compile(scope, code)
                code.append(AddressOp())
                return True
            else:
                return False

        if isinstance(self.method, PointerAST):
            self.method.expr.compile(scope, code)
            self.arg.compile(scope, code)
            code.append(AddressOp())
            return True

        if isinstance(self.method, ApplyAST):
            if self.method.varCompile(scope, code):
                self.arg.compile(scope, code)
                code.append(AddressOp())
                return True;
            else:
                return False

        return False

    def compile(self, scope, code):
        if isinstance(self.method, NameAST):
            (t, v) = scope.lookup(self.method.name)
            # See if it's of the form "module.constant":
            if t == "module" and isinstance(self.arg, ConstantAST) and isinstance(self.arg.const[0], str):
                (t2, v2) = v.lookup(self.arg.const)
                if t2 == "constant":
                    code.append(PushOp(v2))
                    return
            # Decrease chances of data race
            if t == "global":
                self.method.ph1(scope, code)
                self.arg.compile(scope, code)
                code.append(AddressOp())
                code.append(LoadOp(None, self.token, None))
                return

        # Decrease chances of data race
        if self.varCompile(scope, code):
            code.append(LoadOp(None, self.token, None))
            return

        # TODO: is there an issue below with evaluation order
        #       not being the same as program order?
        self.arg.compile(scope, code)
        self.method.compile(scope, code)
        code.append(ApplyOp(self.token))

    def isShared(self, scope):
        return self.method.isShared(scope)

    def ph1(self, scope, code):
        # See if it's of the form "module.constant":
        if isinstance(self.method, NameAST):
            (t, v) = scope.lookup(self.method.name)
            if t == "module" and isinstance(self.arg, ConstantAST) and isinstance(self.arg.const[0], str):
                (t2, v2) = v.lookup(self.arg.const)
                if t2 == "constant":
                    print("Cannot assign to constant", self.method.name, self.arg.const)
                    sys.exit(1)
        self.method.ph1(scope, code)
        self.arg.compile(scope, code)
        code.append(AddressOp())

    def ph2(self, scope, code, skip):
        if skip > 0:
            code.append(MoveOp(skip + 2))
            code.append(MoveOp(2))
        shared = self.method.isShared(scope)
        st = StoreOp(None, self.token, None) if shared else StoreVarOp(None)
        code.append(st)

class Rule:
    def expect(self, rule, b, got, want):
        if not b:
            print("Parse error in %s."%rule, "Got", got, ":", want)
            sys.exit(1)

    def forParse(self, t, closers):
        (bv, t) = BoundVarRule().parse(t)
        (lexeme, file, line, column) = token = t[0]
        self.expect("for expression", lexeme == "in", t[0], "expected 'in'")
        (expr, t) = NaryRule(closers | { "where", "for" }).parse(t[1:])
        return ((bv, expr), t)

    def whereParse(self, t, closers):
        return NaryRule(closers | { "for", "where" }).parse(t)

    def iterParse(self, t, closers):
        (ve, t) = self.forParse(t, closers)
        lst = [("for", ve)]
        (lexeme, file, line, column) = t[0]
        while lexeme not in closers:
            self.expect("for expression", lexeme == "for" or lexeme == "where",
                            lexeme, "expected 'for' or 'where'")
            if lexeme == "for":
                (ve, t) = self.forParse(t[1:], closers)
                lst.append(("for", ve))
            else:
                assert lexeme == "where"
                (st, t) = self.whereParse(t[1:], closers)
                lst.append(("where", st))
            (lexeme, file, line, column) = t[0]
        return (lst, t)

class NaryRule(Rule):
    def __init__(self, closers):
        self.closers = closers

    def parse(self, t):
        (ast, t) = ExpressionRule().parse(t)
        if ast == False or t == []:
            return (ast, t)
        (lexeme, file, line, column) = t[0]
        if lexeme in self.closers:
            return (ast, t)
        args = [ast]
        op = t[0]
        invert = None
        if isunaryop(op[0]) and op[0] != '-':  # mostly for use in "a not in s", but more general
            invert = op
            t = t[1:]
            op = t[0]
        self.expect("n-ary operation", isbinaryop(op[0]) or op[0] == "if", op,
                    "expected binary operation or 'if'")
        if iscmpop(op[0]):
            assert invert == None           # TODO
            ops = []
            while iscmpop(lexeme):
                ops.append(t[0])
                (ast3, t) = ExpressionRule().parse(t[1:])
                if ast3 == False:
                    print("expected an expression after n-ary comparison operation in", op)
                    sys.exit(1)
                args.append(ast3)
                if t == []:
                    break
                (lexeme, file, line, column) = t[0]
            if t != []:
                self.expect("n-ary operation", lexeme in self.closers,
                        t[0], "expected one of %s"%self.closers)
            return (CmpAST(ops, args), t)
        if op[0] == "if":
            (ast2, t) = NaryRule({"else"}).parse(t[1:])
        else:
            (ast2, t) = ExpressionRule().parse(t[1:])
        if ast2 == False:
            print("expected an expression after operation", op)
            sys.exit(1)
        args.append(ast2)
        if t != []:
            (lexeme, file, line, column) = t[0]
            if op[0] == "if":
                self.expect("n-ary operation", lexeme == "else", t[0], "expected 'else'")
                (ast3, t) = ExpressionRule().parse(t[1:])
                if ast3 == False:
                    print("expected an expression after else in", op)
                    sys.exit(1)
                args.append(ast3)
                if t != []:
                    (lexeme, file, line, column) = t[0]
            elif (op[0] == lexeme) and (lexeme in { "+", "*", "|", "&", "^", "and", "or" }):
                while lexeme == op[0]:
                    (ast3, t) = ExpressionRule().parse(t[1:])
                    if ast3 == False:
                        print("expected an expression after n-ary operation in", op)
                        sys.exit(1)
                    args.append(ast3)
                    if t == []:
                        break
                    (lexeme, file, line, column) = t[0]
            if t != []:
                self.expect("n-ary operation", lexeme in self.closers, t[0],
                                "expected one of %s"%self.closers)
        ast = NaryAST(op, args)
        if invert != None:
            return (NaryAST(invert, [ast]), t)
        else:
            return (ast, t)

class SetComprehensionRule(Rule):
    def __init__(self, value):
        self.value = value

    def parse(self, t):
        token = t[0]
        (lst, t) = self.iterParse(t[1:], {"}"})
        return (SetComprehensionAST(self.value, lst, token), t[1:])

class BagComprehensionRule(Rule):
    def __init__(self, value):
        self.value = value

    def parse(self, t):
        token = t[0]
        (lst, t) = self.iterParse(t[1:], {"}"})
        return (BagComprehensionAST(self.value, lst, token), t[1:])

class DictComprehensionRule(Rule):
    def __init__(self, key, value):
        self.key = key
        self.value = value

    def parse(self, t):
        token = t[0]
        (lst, t) = self.iterParse(t[1:], {"}"})
        return (DictComprehensionAST(self.key, self.value, lst, token), t[1:])

class ListComprehensionRule(Rule):
    def __init__(self, value, closers):
        self.value = value
        self.closers = closers

    def parse(self, t):
        token = t[0]
        (lst, t) = self.iterParse(t[1:], self.closers) 
        return (ListComprehensionAST(self.value, lst, token), t)

class SetRule(Rule):
    def parse(self, t):
        (lexeme, file, line, column) = t[0]
        self.expect("set expression", lexeme == "{", t[0], "expected '{'")
        (lexeme, file, line, column) = t[1]
        if lexeme == "}":
            return (SetAST([]), t[2:])
        s = []
        while True:
            (next, t) = NaryRule({":", "for", "..", ",", "}"}).parse(t[1:])
            if next == False:
                return (False, t)
            s.append(next)
            (lexeme, file, line, column) = t[0]
            if lexeme == ":":
                self.expect("set/dict", len(s) == 1, t[0],
                            "cannot mix set values and value maps")
                return DictSuffixRule(s[0]).parse(t[1:])
            if lexeme == "for":
                self.expect("set comprehension", len(s) == 1, t[0],
                    "can have only one expression")
                return SetComprehensionRule(s[0]).parse(t)
            if lexeme == "..":
                self.expect("range", len(s) == 1, t[0],
                    "can have only two expressions")
                token = t[0]
                (ast, t) = NaryRule({"}"}).parse(t[1:])
                return (RangeAST(next, ast, token), t[1:])
            if lexeme == "}":
                return (SetAST(s), t[1:])
            self.expect("set expression", lexeme == ",", t[0],
                    "expected a comma")

class BagRule(Rule):
    def parse(self, t):
        (lexeme, file, line, column) = t[0]
        self.expect("bag expression", lexeme == "bag{", t[0], "expected '{'")
        (lexeme, file, line, column) = t[1]
        if lexeme == "}":
            return (BagAST([]), t[2:])
        s = []
        while True:
            (next, t) = NaryRule({"for", "..", ",", "}"}).parse(t[1:])
            if next == False:
                return (next, t)
            s.append(next)
            (lexeme, file, line, column) = t[0]
            if lexeme == "for":
                self.expect("bag comprehension", len(s) == 1, t[0],
                    "can have only one expression")
                return BagComprehensionRule(s[0]).parse(t)
            if lexeme == "..":
                self.expect("range", len(s) == 1, t[0],
                    "can have only two expressions")
                token = t[0]
                (ast, t) = NaryRule({"}"}).parse(t[1:])
                return (RangeAST(next, ast, token), t[1:])
            if lexeme == "}":
                return (BagAST(s), t[1:])
            self.expect("bag expression", lexeme == ",", t[0],
                    "expected a comma")

class DictSuffixRule(Rule):
    def __init__(self, first):
        self.first = first

    def parse(self, t):
        key = self.first
        d = []
        while True:
            (value, t) = NaryRule({",", "}", "for"}).parse(t)
            (lexeme, file, line, column) = t[0]
            self.expect("dict expression", lexeme in { ",", "}", "for" }, t[0],
                                    "expected a comma or '}'")
            if lexeme == "for":
                self.expect("dict comprehension", d == [], t[0],
                    "expected single expression")
                return DictComprehensionRule(key, value).parse(t)

            d.append((key, value))
            if lexeme == "}":
                return (DictAST(d), t[1:])

            (key, t) = NaryRule({":"}).parse(t[1:])
            if key == False:
                return (key, t)
            (lexeme, file, line, column) = t[0]
            self.expect("dict expression", lexeme == ":", t[0],
                                        "expected a colon")
            t = t[1:]

class TupleRule(Rule):
    def __init__(self, closers):
        self.closers = closers

    def parse(self, t):
        (lexeme, file, line, column) = t[0]
        if lexeme in self.closers:
            return (ConstantAST(
                (novalue, file, line, column)), t)
        (ast, t) = NaryRule(self.closers.union({",", "for"})).parse(t)
        if not ast or t == []:
            return (ast, t)
        (lexeme, file, line, column) = token = t[0]
        if lexeme in self.closers:
            return (ast, t)
        if lexeme == "for":
            return ListComprehensionRule(ast, self.closers).parse(t)
        d = [ ast ]
        while lexeme == ",":
            (lexeme, file, line, column) = t[1]
            if lexeme in self.closers:
                return (TupleAST(d, token), t[1:])
            (next, t) = NaryRule(self.closers.union({ "," })).parse(t[1:])
            d.append(next)
            if t == []:
                break
            (lexeme, file, line, column) = token = t[0]
        if t != []:
            self.expect("tuple expression", lexeme in self.closers, t[0],
                "expected %s"%self.closers)
        return (TupleAST(d, token), t)

class BasicExpressionRule(Rule):
    def parse(self, t):
        (lexeme, file, line, column) = token = t[0]
        if isnumber(lexeme):
            return (ConstantAST((int(lexeme), file, line, column)), t[1:])
        if lexeme == "False":
            return (ConstantAST((False, file, line, column)), t[1:])
        if lexeme == "True":
            return (ConstantAST((True, file, line, column)), t[1:])
        if lexeme == "None":
            return (ConstantAST((AddressValue([]), file, line, column)), t[1:])
        if lexeme == "inf":
            return (ConstantAST((math.inf, file, line, column)), t[1:])
        if lexeme[0] == '"':
            return (TupleAST([ ConstantAST((c, file, line, column))
                                for c in lexeme[1:] ], token), t[1:])
        if lexeme == ".": 
            (lexeme, file, line, column) = t[1]
            if lexeme.startswith("0x"):
                return (ConstantAST((chr(int(lexeme, 16)), file, line, column)), t[2:])
            else:
                self.expect("dot expression", isname(lexeme), t[1],
                    "expected a name after .")
                return (ConstantAST((lexeme, file, line, column)), t[2:])
        if isname(lexeme):
            return (NameAST(t[0]), t[1:])
        if lexeme == "{":
            return SetRule().parse(t)
        # if lexeme == "bag{":
        #     return BagRule().parse(t)
        if lexeme == "(" or lexeme == "[":
            closer = ")" if lexeme == "(" else "]"
            (ast, t) = TupleRule({closer}).parse(t[1:])
            return (ast, t[1:])
        if lexeme == "?":
            (ast, t) = ExpressionRule().parse(t[1:])
            return (AddressAST(ast), t)
        return (False, t)

class PointerAST(AST):
    def __init__(self, expr, token):
        self.expr = expr
        self.token = token

    def __repr__(self):
        return "PointerAST(" + str(self.expr) + ")"

    def compile(self, scope, code):
        self.expr.compile(scope, code)
        code.append(LoadOp(None, self.token, None))

    def ph1(self, scope, code):
        self.expr.compile(scope, code)

    def ph2(self, scope, code, skip):
        if skip > 0:
            code.append(MoveOp(skip + 2))
            code.append(MoveOp(2))
        code.append(StoreOp(None, self.token, None))

class ExpressionRule(Rule):
    def parse(self, t):
        func = t[0]
        (lexeme, file, line, column) = func
        if lexeme == "lambda":
            (bv, t) = BoundVarRule().parse(t[1:])
            (lexeme, file, line, column) = t[0]
            self.expect("lambda expression", lexeme == ":", t[0], "expected ':'")
            (ast, t) = NaryRule(["end"]).parse(t[1:])
            return (LambdaAST(bv, ast, func), t[1:])
        if lexeme == "setintlevel":
            (ast, t) = ExpressionRule().parse(t[1:])
            return (SetIntLevelAST(ast), t)
        if lexeme == "stop":
            (ast, t) = ExpressionRule().parse(t[1:])
            return (StopAST(ast), t)
        if isunaryop(lexeme):
            (ast, t) = ExpressionRule().parse(t[1:])
            if lexeme == "!":
                return (PointerAST(ast, func), t)
            else:
                return (NaryAST(func, [ast]), t)

        # Example:
        # a b c -> d e -> f
        # (a b c -> d e) -> f
        # ((a b c -> d) e) -> f
        # (((a b c) -> d) e) -> f
        # ((((a b) c) -> d) e) -> f
        (ast, t) = BasicExpressionRule().parse(t)
        while t != []:
            (lexeme, file, line, column) = t[0]
            if lexeme == "->":
                (lexeme, file, line, column) = t[1]
                self.expect("-> expression", isname(lexeme), t[1],
                        "expected a name after ->")
                ast = ApplyAST(PointerAST(ast, t[1]), ConstantAST(t[1]), t[1])
                t = t[2:]
                if t == []:
                    break
            else:
                (arg, t) = BasicExpressionRule().parse(t)
                if arg == False:
                    break
                ast = ApplyAST(ast, arg, func)
        return (ast, t)

class AssignmentAST(AST):
    def __init__(self, lhslist, rv, op):
        self.lhslist = lhslist      # a, b = c, d = e = ...
        self.rv = rv                # rhs expression
        self.op = op                # ... op= ...

    def __repr__(self):
        return "Assign(" + str(self.lhslist) + ", " + str(self.rv) + \
                            ", " + str(self.op) + ")"

    # handle an "x op= y" assignment
    def opassign(self, lv, scope, code):
        shared = lv.isShared(scope)
        if isinstance(lv, NameAST):
            # handled separately for assembly code readability
            (t, v) = scope.find(lv.name)
            if t == "module":
                print("Cannot operate on module", lv.name)
                sys.exit(1)
            if t == "constant":
                print("Cannot operate on constant", lv.name)
                sys.exit(1)
            assert t in { "local", "global" }
            ld = LoadOp(lv.name, lv.name, scope.prefix) if t == "global" else LoadVarOp(lv.name)
        else:
            lv.ph1(scope, code)
            code.append(DupOp())                  # duplicate the address
            ld = LoadOp(None, self.op, None) if shared else LoadVarOp(None)
        code.append(ld)                       # load the value
        self.rv.compile(scope, code)          # compile the rhs
        (lexeme, file, line, column) = self.op
        code.append(NaryOp((lexeme[:-1], file, line, column), 2))
        if isinstance(lv, NameAST):
            st = StoreOp(lv.name, lv.name, scope.prefix) if shared else StoreVarOp(lv.name)
        else:
            st = StoreOp(None, self.op, None) if shared else StoreVarOp(None)
        code.append(st)

    def compile(self, scope, code):
        (lexeme, file, line, column) = self.op
        if lexeme != '=':
            assert len(self.lhslist) == 1, self.lhslist
            lv = self.lhslist[0]
            self.opassign(lv, scope, code)
            return

        # Compute the addresses of lhs expressions
        for lvs in self.lhslist:
            # handled separately for better assembly code readability
            if not isinstance(lvs, NameAST):
                lvs.ph1(scope, code)

        # Compute the right-hand side
        self.rv.compile(scope, code)

        # Make enough copies for each left-hand side
        for i in range(len(self.lhslist) - 1):
            code.append(DupOp())

        # Now assign to the left-hand side in reverse order
        skip = len(self.lhslist)
        for lvs in reversed(self.lhslist):
            skip -= 1
            if isinstance(lvs, NameAST):
                (t, v) = scope.find(lvs.name)
                if t == "module":
                    print("Cannot assign to module", lvs.name)
                    sys.exit(1)
                if t == "constant":
                    print("Cannot assign to constant", lvs.name)
                    sys.exit(1)
                assert t in { "local", "global" }, (t, lvs.name)
                st = StoreOp(lvs.name, lvs.name, scope.prefix) if t == "global" else StoreVarOp(lvs.name)
                code.append(st)
            else:
                lvs.ph2(scope, code, skip)

class DelAST(AST):
    def __init__(self, lv):
        self.lv = lv

    def __repr__(self):
        return "Del(" + str(self.lv) + ")"

    def compile(self, scope, code):
        self.lv.ph1(scope, code)
        shared = self.lv.isShared(scope)
        op = DelOp(None) if shared else DelVarOp(None)
        code.append(op)

class SetIntLevelAST(AST):
    def __init__(self, arg):
        self.arg = arg

    def __repr__(self):
        return "SetIntLevel " + str(self.arg)

    def compile(self, scope, code):
        self.arg.compile(scope, code)
        code.append(SetIntLevelOp())

class StopAST(AST):
    def __init__(self, lv):
        self.lv = lv

    def __repr__(self):
        return "Stop " + str(self.lv)

    def compile(self, scope, code):
        self.lv.ph1(scope, code)
        code.append(StopOp(None))
        code.append(ContinueOp())

class AddressAST(AST):
    def __init__(self, lv):
        self.lv = lv

    def __repr__(self):
        return "Address(" + str(self.lv) + ")"

    def isConstant(self, scope):
        return self.lv.isConstant(scope)

    def check(self, lv, scope):
        if isinstance(lv, NameAST):
            (t, v) = scope.lookup(lv.name)
            if t == "local":
                print("can't take address of local variable", lv)
                sys.exit(1)
            if t == "constant":
                print("can't take address of constant", lv)
                sys.exit(1)
            if t == "module":
                print("can't take address of imported", lv)
                sys.exit(1)
        elif isinstance(lv, ApplyAST):
            self.check(lv.method, scope)
        elif isinstance(lv, PointerAST):
            pass
        else:
            print("can't take address of", lv)
            sys.exit(1)

    def gencode(self, scope, code):
        self.check(self.lv, scope)
        self.lv.ph1(scope, code)

class PassAST(AST):
    def __repr__(self):
        return "Pass"

    def compile(self, scope, code):
        pass

class BlockAST(AST):
    def __init__(self, b):
        assert len(b) > 0
        self.b = b

    def __repr__(self):
        return "Block(" + str(self.b) + ")"

    def compile(self, scope, code):
        for s in self.b:
            s.compile(scope, code)

    def getLabels(self):
        labels = [ x.getLabels() for x in self.b ]
        return functools.reduce(lambda x,y: x|y, labels)

    def getImports(self):
        imports = [ x.getImports() for x in self.b ]
        return functools.reduce(lambda x,y: x+y, imports)

class IfAST(AST):
    def __init__(self, alts, stat):
        self.alts = alts        # alternatives
        self.stat = stat        # else statement

    def __repr__(self):
        return "If(" + str(self.alts) + ", " + str(self.what) + ")"

    def compile(self, scope, code):
        jumps = []
        for alt in self.alts:
            (rest, stat) = alt
            negate = isinstance(rest, NaryAST) and rest.op[0] == "not"
            cond = rest.args[0] if negate else rest
            cond.compile(scope, code)
            pc = len(code)
            code.append(None)
            stat.compile(scope, code)
            jumps += [len(code)]
            code.append(None)
            code[pc] = JumpCondOp(negate, len(code))
        if self.stat != None:
            self.stat.compile(scope, code)
        for pc in jumps:
            code[pc] = JumpOp(len(code))

    def getLabels(self):
        labels = [ x.getLabels() for (c, x) in self.alts ]
        if self.stat != None:
            labels += [ self.stat.getLabels() ]
        return functools.reduce(lambda x,y: x|y, labels)

    def getImports(self):
        imports = [ x.getImports() for (c, x) in self.alts ]
        if self.stat != None:
            imports += [ self.stat.getImports() ]
        return functools.reduce(lambda x,y: x+y, imports)

class WhileAST(AST):
    def __init__(self, cond, stat):
        self.cond = cond
        self.stat = stat

    def __repr__(self):
        return "While(" + str(self.cond) + ", " + str(self.stat) + ")"

    def compile(self, scope, code):
        negate = isinstance(self.cond, NaryAST) and self.cond.op[0] == "not"
        cond = self.cond.args[0] if negate else self.cond
        pc1 = len(code)
        cond.compile(scope, code)
        pc2 = len(code)
        code.append(None)
        self.stat.compile(scope, code)
        code.append(JumpOp(pc1))
        code[pc2] = JumpCondOp(negate, len(code))

    def getLabels(self):
        return self.stat.getLabels()

    def getImports(self):
        return self.stat.getImports()

class AwaitAST(AST):
    def __init__(self, cond):
        self.cond = cond

    def __repr__(self):
        return "Await(" + str(self.cond) + ")"

    def compile(self, scope, code):
        negate = isinstance(self.cond, NaryAST) and self.cond.op[0] == "not"
        cond = self.cond.args[0] if negate else self.cond
        pc1 = len(code)
        cond.compile(scope, code)
        code.append(JumpCondOp(negate, pc1))

class InvariantAST(AST):
    def __init__(self, cond, token):
        self.cond = cond
        self.token = token

    def __repr__(self):
        return "Invariant(" + str(self.cond) + ")"

    def compile(self, scope, code):
        pc = len(code)
        code.append(None)
        self.cond.compile(scope, code)
        code[pc] = InvariantOp(len(code) - pc, self.token);
        code.append(ReturnOp())

class LetAST(AST):
    def __init__(self, vars, stat):
        self.vars = vars
        self.stat = stat

    def __repr__(self):
        return "Let(" + str(self.vars) + ", " + str(self.stat) + ")"

    def compile(self, scope, code):
        for (var, expr) in self.vars:
            expr.compile(scope, code)
            code.append(StoreVarOp(var))
            self.assign(scope, var)

        # Run the body
        self.stat.compile(scope, code)

        # Restore the old variable state
        for (var, expr) in self.vars:
            self.delete(scope, code, var)

class ForAST(AST):
    def __init__(self, iter, stat, token):
        self.value = stat
        self.iter = iter
        self.token = token

    def __repr__(self):
        return "For(" + str(self.iter) + ", " + str(self.stat) + ")"

    def compile(self, scope, code):
        self.comprehension(scope, code, "for")

    def getLabels(self):
        return self.value.getLabels()

    def getImports(self):
        return self.value.getImports()

class AtomicAST(AST):
    def __init__(self, stat):
        self.stat = stat

    def __repr__(self):
        return "Atomic(" + str(self.stat) + ")"

    def compile(self, scope, code):
        code.append(AtomicIncOp())
        self.stat.compile(scope, code)
        code.append(AtomicDecOp())

    # TODO.  Is it ok to define labels within an atomic block?
    def getLabels(self):
        return self.stat.getLabels()

    def getImports(self):
        return self.stat.getImports()

class AssertAST(AST):
    def __init__(self, token, cond, expr):
        self.token = token
        self.cond = cond
        self.expr = expr

    def __repr__(self):
        return "Assert(" + str(self.token) + str(self.cond) + ", " + str(self.expr) + ")"

    def compile(self, scope, code):
        code.append(ReadonlyIncOp())
        code.append(AtomicIncOp())
        self.cond.compile(scope, code)
        if self.expr != None:
            self.expr.compile(scope, code)
        code.append(AssertOp(self.token, self.expr != None))
        code.append(AtomicDecOp())
        code.append(ReadonlyDecOp())

class MethodAST(AST):
    def __init__(self, name, args, stat):
        self.name = name
        self.args = args
        self.stat = stat

    def __repr__(self):
        return "Method(" + str(self.name) + ", " + str(self.args) + ", " + str(self.stat) + ")"

    def compile(self, scope, code):
        pc = len(code)
        code.append(None)       # going to plug in a Jump op here
        code.append(FrameOp(self.name, self.args))
        (lexeme, file, line, column) = self.name
        scope.names[lexeme] = ("constant", (PcValue(pc + 1), file, line, column))

        ns = Scope(scope)
        tmp = PcValue(-1)
        for (lexeme, file, line, column) in self.stat.getLabels():
            ns.names[lexeme] = ("constant", (tmp, file, line, column))
        self.assign(ns, self.args)
        ns.names["result"] = ("local", ("result", file, line, column))
        before = len(code)
        self.stat.compile(ns, code)
        del code[before:]
        self.stat.compile(ns, code)
        code.append(ReturnOp())
        code[pc] = JumpOp(len(code))

        # promote global variables
        for name, (t, v) in ns.names.items():
            if t == "global" and name not in scope.names:
                scope.names[name] = (t, v)

    def getLabels(self):
        return { self.name }

    def getImports(self):
        return self.stat.getImports()

class LambdaAST(AST):
    def __init__(self, args, stat, token):
        self.args = args
        self.stat = stat
        self.token = token

    def __repr__(self):
        return "Lambda " + str(self.args) + ", " + str(self.stat) + ")"

    def isConstant(self, scope):
        return True

    def compile_body(self, scope, code):
        pc = len(code)
        code.append(None)       # going to plug in a Jump op here
        code.append(FrameOp(self.token, self.args))

        (lexeme, file, line, column) = self.token
        ns = Scope(scope)
        self.assign(ns, self.args)
        R = ("result", file, line, column)
        ns.names["result"] = ("local", R)
        self.stat.compile(ns, code)
        code.append(StoreVarOp(R))
        code.append(ReturnOp())
        code[pc] = JumpOp(len(code))
        return pc + 1

    def compile(self, scope, code):
        pc = self.compile_body(scope, code)
        (lexeme, file, line, column) = self.token
        code.append(PushOp((PcValue(pc), file, line, column)))

class CallAST(AST):
    def __init__(self, expr):
        self.expr = expr

    def __repr__(self):
        return "Call(" + str(self.expr) + ")"

    def compile(self, scope, code):
        if not self.expr.isConstant(scope):
            self.expr.compile(scope, code)
            code.append(PopOp())

class SpawnAST(AST):
    def __init__(self, method, arg, this):
        self.method = method
        self.arg = arg
        self.this = this

    def __repr__(self):
        return "Spawn(" + str(self.method) + ", " + str(self.arg) + ", "  + str(self.this) + ")"

    def compile(self, scope, code):
        if self.this == None:
            code.append(PushOp((novalue, None, None, None)))
        else:
            self.this.compile(scope, code)
        self.arg.compile(scope, code)
        self.method.compile(scope, code)
        code.append(SpawnOp())

class TrapAST(AST):
    def __init__(self, method, arg):
        self.method = method
        self.arg = arg

    def __repr__(self):
        return "Trap(" + str(self.method) + ", " + str(self.arg) + ")"

    def compile(self, scope, code):
        self.arg.compile(scope, code)
        self.method.compile(scope, code)
        code.append(TrapOp())

class GoAST(AST):
    def __init__(self, ctx, result):
        self.ctx = ctx
        self.result = result

    def __repr__(self):
        return "Spawn(" + str(self.tag) + ", " + str(self.ctx) + ", " + str(self.result) + ")"

    def compile(self, scope, code):
        self.result.compile(scope, code)
        self.ctx.compile(scope, code)
        code.append(GoOp())

class ImportAST(AST):
    def __init__(self, modlist):
        self.modlist = modlist

    def __repr__(self):
        return "Import(" + str(self.modlist) + ")"

    def compile(self, scope, code):
        for module in self.modlist:
            self.doImport(scope, code, module)

    def getImports(self):
        return self.modlist

class FromAST(AST):
    def __init__(self, module, items):
        self.module = module
        self.items = items

    def __repr__(self):
        return "FromImport(" + str(self.module) + ", " + str(self.items) + ")"

    def compile(self, scope, code):
        self.doImport(scope, code, self.module)
        (lexeme, file, line, column) = self.module
        names = imported[lexeme].names
        # TODO.  Check for overlap, existence, etc.
        if self.items == []:  # from module import *
            for (item, (t, v)) in names.items():
                if t == "constant":
                    scope.names[item] = (t, v)
        else:
            for (lexeme, file, line, column) in self.items:
                if lexeme not in names:
                    print("%s line %d: can't import %s from module %s"%(
                        file, line, lexeme, self.module[0]))
                    sys.exit(1)
                (t, v) = names[lexeme]
                assert t == "constant", (lexeme, t, v)
                scope.names[lexeme] = (t, v)

    def getImports(self):
        return [self.module]

class LabelStatAST(AST):
    def __init__(self, labels, ast, file, line):
        self.labels = labels
        self.ast = ast
        self.file = file
        self.line = line

    def __repr__(self):
        return "LabelStat(" + str(self.labels) + ", " + str(self.ast) + ")"

    def compile(self, scope, code):
        scope.location(len(code), self.file, self.line, self.labels)
        if self.labels == []:
            self.ast.compile(scope, code)
        else:
            root = scope
            # while root.parent != None:
            #     root = root.parent
            for (lexeme, file, line, column) in self.labels:
                root.names[lexeme] = \
                    ("constant", (PcValue(len(code)), file, line, column))
            code.append(AtomicIncOp())
            self.ast.compile(scope, code)
            code.append(AtomicDecOp())

    def getLabels(self):
        return set(self.labels) | self.ast.getLabels();

    def getImports(self):
        return self.ast.getImports();

class SequentialAST(AST):
    def __init__(self, vars):
        self.vars = vars
    
    def __repr__(self):
        return "Sequential(" + str(self.vars) + ")"

    def compile(self, scope, code):
        for lv in self.vars:
            lv.ph1(scope, code)
            code.append(SequentialOp())

class ConstAST(AST):
    def __init__(self, const, expr):
        self.const = const
        self.expr = expr

    def __repr__(self):
        return "Const(" + str(self.const) + ", " + str(self.expr) + ")"

    def set(self, scope, const, v):
        if isinstance(const, tuple):
            (lexeme, file, line, column) = const
            if lexeme in constants:
                value = constants[lexeme]
            else:
                value = v
            scope.names[lexeme] = ("constant", (value, file, line, column))
        else:
            assert isinstance(const, list), const
            assert isinstance(v, DictValue), v
            assert len(const) == len(v.d), (const, v)
            for i in range(len(const)):
                self.set(scope, const[i], v.d[i])

    def compile(self, scope, code):
        if not self.expr.isConstant(scope):
            print(self.const, ": Parse error: expression not a constant", str(self.expr))
            sys.exit(1)
        if isinstance(self.expr, LambdaAST):
            pc = self.expr.compile_body(scope, code)
            self.set(scope, self.const, PcValue(pc))
        else:
            code2 = []
            self.expr.compile(scope, code2)
            state = State(code2, scope.labels)
            ctx = ContextValue(("__const__", None, None, None), 0, novalue, novalue)
            ctx.atomic = 1
            while ctx.pc != len(code2):
                code2[ctx.pc].eval(state, ctx)
            v = ctx.pop()
            self.set(scope, self.const, v)

class AssignmentRule(Rule):
    def __init__(self, lhslist, op):
        self.lhslist = lhslist
        self.op = op

    def parse(self, t):
        (ast, t) = TupleRule({";"}).parse(t)
        return (AssignmentAST(self.lhslist, ast, self.op), t)

# Zero or more labels, then a statement, then a semicolon
class LabelStatRule(Rule):
    def parse(self, t):
        (lexeme, thefile, theline, column) = t[0]
        labels = []
        while True:
            (lexeme, file, line, column) = t[0]
            if lexeme != "@":
                break
            label = t[1]
            (lexeme, file, line, column) = label
            self.expect("label", isname(lexeme), t[1], "expected name after @")
            labels.append(label)
            (lexeme, file, line, column) = t[2]
            self.expect("label", lexeme == ":", t[2], "expected ':' after label")
            t = t[3:]

        (ast, t) = StatementRule().parse(t)
        return (LabelStatAST(labels, ast, thefile, theline), t)

class StatListRule(Rule):
    def __init__(self, indent):
        self.indent = indent

    def parse(self, t):
        if t == []:
            print("Unexpected EOF")
            return (BlockAST([]), [])

        # find all the tokens that are indented more than self.indent
        slice = []
        (lexeme, file, line, column) = t[0]
        while column > self.indent:
            slice.append(t[0])
            t = t[1:]
            if t == []:
                break
            (lexeme, file, line, column) = t[0]
        if slice == []:
            print("Parse error: no statements in indented block:", t[0])
            sys.exit(1)

        b = []
        while slice != []:
            try:
                (ast, slice) = LabelStatRule().parse(slice)
                b.append(ast)
            except IndexError:
                print("Parsing: incomplete statement starting at ", slice[0])
                sys.exit(1)

        return (BlockAST(b), t)

class BlockRule(Rule):
    def __init__(self, indent):
        self.indent = indent

    def parse(self, t):
        (lexeme, file, line, column) = t[0]
        self.expect("block statement", lexeme == ":", t[0], "missing ':'")
        return StatListRule(self.indent).parse(t[1:])

# This parses the lefthand side of an assignment in a let expression.  Grammar:
#   lhs = (tuple ",")* [tuple]
#   tuple = name | "(" lhs ")"
# TODO: also use this for def arguments and for
class BoundVarRule(Rule):
    def parse(self, t):
        tuples = []
        while True:
            (lexeme, file, line, column) = t[0]
            if (isname(lexeme)):
                tuples.append(t[0])
            elif lexeme == "(":
                (nest, t) = BoundVarRule().parse(t[1:])
                (lexeme, file, line, column) = t[0]
                self.expect("let statement", lexeme == ")", t[0], "expected ')'")
                tuples.append(nest)
            elif lexeme == "[":
                (nest, t) = BoundVarRule().parse(t[1:])
                (lexeme, file, line, column) = t[0]
                self.expect("let statement", lexeme == "]", t[0], "expected ']'")
                tuples.append(nest)
            else:
                return (tuples, t)
            (lexeme, file, line, column) = t[1]
            if lexeme != ",":
                if len(tuples) == 1:
                    return (tuples[0], t[1:])
                else:
                    return (tuples, t[1:])
            t = t[2:]

class StatementRule(Rule):
    def rec_slice(self, t):
        (lexeme, file, line, column) = first = t[0]
        if lexeme == '(':
            bracket = ')'
        elif lexeme == '[':
            bracket = ']'
        else:
            assert lexeme == '{'
            bracket = '}'
        t = t[1:]
        tokens = []
        while t != []:
            tokens.append(t[0])
            (lexeme, file, line, column) = t[0]
            if lexeme == bracket:
                return (tokens, t[1:])
            if lexeme in [')', ']', '}']:
                print("unmatched bracket:", t[0])
                sys.exit(1)
            if lexeme in ['(', '[', '{']:
                (more, t) = self.rec_slice(t)
                tokens += more
                if t == []:
                    break
            else:
                t = t[1:]
        print("closing bracket missing:", first, tokens, t)
        sys.exit(1)

    def slice(self, t, indent):
        if t == []:
            return ([], [])
        tokens = []
        (lexeme, file, line, column) = t[0]
        if lexeme in ['(', '[', '{']:
            tokens.append(t[0])
            (more, t) = self.rec_slice(t)
            tokens += more
            if t == []:
                return (tokens, [])
            (lexeme, file, line, column) = t[0]
        while column > indent and lexeme != ";":
            tokens.append(t[0])
            t = t[1:]
            if t == []:
                break
            (lexeme, file, line, column) = t[0]
            if lexeme in ['(', '[', '{']:
                tokens.append(t[0])
                (more, t) = self.rec_slice(t)
                tokens += more
                if t == []:
                    break
                (lexeme, file, line, column) = t[0]
        return (tokens, t)

    def parse(self, t):
        token = t[0]
        (lexeme, file, line, column) = token
        if lexeme == ";":
            return (PassAST(), t[1:])
        if lexeme == "const":
            (tokens, t) = self.slice(t[1:], column)
            (const, tokens) = BoundVarRule().parse(tokens)
            (lexeme, file, line, column) = tokens[0]
            self.expect("constant definition", lexeme == "=", tokens[0], "expected '='")
            (ast, tokens) = TupleRule(set()).parse(tokens[1:])
            if tokens != []:
                print("constant definition: unexpected token:", tokens[0])
                sys.exit(1)
            return (ConstAST(const, ast), t)
        if lexeme == "if":
            alts = []
            while True:
                (cond, t) = NaryRule({":"}).parse(t[1:])
                (stat, t) = StatListRule(column).parse(t[1:])
                alts += [(cond, stat)]
                if t == []:
                    nextColumn = column
                    break
                (lexeme, file, line, nextColumn) = t[0]
                assert nextColumn <= column
                if nextColumn < column:
                    break
                if lexeme != "elif":
                    break
            if nextColumn == column and lexeme == "else":
                (stat, t) = BlockRule(column).parse(t[1:])
            else:
                stat = None
            return (IfAST(alts, stat), t)
        if lexeme == "while":
            (cond, t) = NaryRule({":"}).parse(t[1:])
            (stat, t) = StatListRule(column).parse(t[1:])
            return (WhileAST(cond, stat), t)
        if lexeme == "await":
            (tokens, t) = self.slice(t[1:], column)
            (cond, tokens) = NaryRule(set()).parse(tokens)
            if tokens != []:
                print("await: unexpected token:", tokens[0])
                sys.exit(1)
            return (AwaitAST(cond), t)
        if lexeme == "invariant":
            (tokens, t) = self.slice(t[1:], column)
            (cond, tokens) = NaryRule(set()).parse(tokens)
            if tokens != []:
                print("invariant: unexpected token:", tokens[0])
                sys.exit(1)
            return (InvariantAST(cond, token), t)
        if lexeme == "for":
            (lst, t) = self.iterParse(t[1:], {":"})
            (stat, t) = StatListRule(column).parse(t[1:])
            return (ForAST(lst, stat, token), t)
        if lexeme == "let":
            vars = []
            while True:
                (bv, t) = BoundVarRule().parse(t[1:])
                (lexeme, file, line, nextColumn) = t[0]
                self.expect("let statement", lexeme == "=", t[0], "expected '='")
                (ast, t) = TupleRule({":", "let"}).parse(t[1:])
                vars.append((bv, ast))
                (lexeme, file, line, nextColumn) = t[0]
                if lexeme == ":":
                    break
                self.expect("let statement", lexeme == "let", t[0], "expected 'let' or ':'")
            (stat, t) = StatListRule(column).parse(t[1:])
            return (LetAST(vars, stat), t)
        if lexeme == "atomic":
            (stat, t) = BlockRule(column).parse(t[1:])
            return (AtomicAST(stat), t)
        if lexeme == "del":
            (tokens, t) = self.slice(t[1:], column)
            (ast, tokens) = ExpressionRule().parse(tokens)
            if tokens != []:
                print("del: unexpected token:", tokens[0])
                sys.exit(1)
            return (DelAST(ast), t)
        if lexeme == "def":
            name = t[1]
            (lexeme, file, line, nextColumn) = name
            self.expect("method definition", isname(lexeme), name, "expected name")
            (bv, t) = BoundVarRule().parse(t[2:])
            (stat, t) = BlockRule(column).parse(t)
            return (MethodAST(name, bv, stat), t)
        if lexeme == "spawn":
            (tokens, t) = self.slice(t[1:], column)
            (func, tokens) = NaryRule({","}).parse(tokens)
            if not isinstance(func, ApplyAST):
                print("spawn: expected method application", token)
                sys.exit(1)
            if tokens == []:
                this = None
            else:
                (lexeme, file, line, column) = tokens[0]
                assert lexeme == ","
                (this, tokens) = NaryRule(set()).parse(tokens[1:])
                if tokens != []:
                    print("spawn: unexpected token:", tokens[0])
                    sys.exit(1)
            return (SpawnAST(func.method, func.arg, this), t)
        if lexeme == "trap":
            (tokens, t) = self.slice(t[1:], column)
            (func, tokens) = NaryRule(set()).parse(tokens)
            if not isinstance(func, ApplyAST):
                print("trap: expected method application", token)
                sys.exit(1)
            if tokens != []:
                print("trap: unexpected token:", tokens[0])
                sys.exit(1)
            return (TrapAST(func.method, func.arg), t)
        if lexeme == "go":
            (tokens, t) = self.slice(t[1:], column)
            (func, tokens) = NaryRule(set()).parse(tokens)
            if not isinstance(func, ApplyAST):
                print("go: expected method application", token)
                sys.exit(1)
            if tokens != []:
                print("go: unexpected token:", tokens[0])
                sys.exit(1)
            return (GoAST(func.method, func.arg), t)
        if lexeme == "pass":
            return (PassAST(), t[1:])
        if lexeme == "sequential":
            (tokens, t) = self.slice(t[1:], column)
            (ast, tokens) = ExpressionRule().parse(tokens)
            vars = [ast]
            if tokens != []:
                (lexeme, file, line, column) = tokens[0]
                while lexeme == ',':
                    (ast, tokens) = ExpressionRule().parse(tokens[1:])
                    vars.append(ast)
                    if tokens == []:
                        break
                    (lexeme, file, line, column) = tokens[0]
                if tokens != []:
                    print("sequential: unexpected token:", tokens[0])
                    sys.exit(1)
            return (SequentialAST(vars), t)
        if lexeme == "import":
            (tokens, t) = self.slice(t[1:], column)
            mods = [tokens[0]]
            tokens = tokens[1:]
            if tokens != []:
                (lexeme, file, line, column) = tokens[0]
                while lexeme == ',':
                    mods.append(tokens[1])
                    tokens = tokens[2:]
                    if tokens == []:
                        break
                    (lexeme, file, line, column) = tokens[0]
                if tokens != []:
                    print("import: unexpected token:", tokens[0])
                    sys.exit(1)
            return (ImportAST(mods), t)
        if lexeme == "from":
            (tokens, t) = self.slice(t[1:], column)
            (lexeme, file, line, column) = module = tokens[0]
            self.expect("from statement", isname(lexeme), module, "expected module name")
            (lexeme, file, line, column) = tokens[1]
            self.expect("from statement", lexeme == "import", tokens[1], "expected 'import'")
            (lexeme, file, line, column) = tokens[2]
            if lexeme == '*':
                assert len(tokens) == 3, tokens
                return (FromAST(module, []), t)
            items = [tokens[2]]
            tokens = tokens[3:]
            if tokens != []:
                (lexeme, file, line, column) = tokens[0]
                while lexeme == ',':
                    items.append(tokens[1])
                    tokens = tokens[2:]
                    if tokens == []:
                        break;
                    (lexeme, file, line, column) = tokens[0]
            if tokens != []:
                print("from: unexpected token:", tokens[0])
                sys.exit(1)
            return (FromAST(module, items), t)
        if lexeme == "assert":
            (tokens, t) = self.slice(t[1:], column)
            (cond, tokens) = NaryRule({","}).parse(tokens)
            if tokens == []:
                expr = None
            else:
                (lexeme, file, line, column) = tokens[0]
                assert lexeme == ","
                (expr, tokens) = NaryRule(set()).parse(tokens[1:])
                if tokens != []:
                    print("assert: unexpected token:", tokens[0])
                    sys.exit(1)
            return (AssertAST(token, cond, expr), t)
        
        # If we get here, the next statement is either an expression
        # or an assignment.  The assignment grammar is either
        #   (tuple_expression '=')* tuple_expression
        # or
        #   tuple_expression 'op=' tuple_expression
        (lexeme, file, line, column) = t[0]
        if lexeme in ['(', '[', '{']:
            (tokens, t) = self.slice(t, column)
        else:
            (tokens, t) = self.slice(t[1:], column)
            tokens = [token] + tokens
        exprs = []
        assignop = None
        while tokens != []:
            tk = tokens[0]
            (ast, tokens) = TupleRule({ "=" } | assignops).parse(tokens)
            self.expect("statement", ast != False, tk, "expected expression")
            exprs.append(ast)
            if tokens == []:
                break
            (lexeme, file, line, column) = tokens[0]
            assert assignop == None or assignop[0] == "="
            assignop = tokens[0]
            tokens = tokens[1:]
        if len(exprs) == 1:
            return (CallAST(exprs[0]), t)
        else:
            return (AssignmentAST(exprs[:-1], exprs[-1], assignop), t)

class ContextValue(Value):
    def __init__(self, name, entry, arg, this):
        self.name = name
        self.entry = entry
        self.arg = arg
        self.pc = entry
        self.this = this
        self.atomic = 0
        self.readonly = 0
        self.interruptLevel = False
        self.stack = []     # collections.deque() seems slightly slower
        self.fp = 0         # frame pointer
        self.vars = novalue
        self.trap = None
        self.phase = "start"        # start, middle, or end
        self.stopped = False
        self.failure = None

    def __repr__(self):
        return "ContextValue(" + str(self.name) + ", " + str(self.arg) + ", " + str(self.this) + ")"

    def __str__(self):
        return self.__repr__()

    def nametag(self):
        if self.arg == novalue:
            return self.name[0] + "()"
        return self.name[0] + "(" + str(self.arg) + ")"

    def __hash__(self):
        h = (self.name, self.entry, self.arg, self.pc, self.this, self.atomic, self.readonly, self.interruptLevel, self.vars,
            self.trap, self.phase, self.stopped, self.failure).__hash__()
        for v in self.stack:
            h ^= v.__hash__()
        return h

    def __eq__(self, other):
        if not isinstance(other, ContextValue):
            return False
        if self.name != other.name:
            return False
        if self.entry != other.entry:
            return False
        if self.arg != other.arg:
            return False
        if self.pc != other.pc:
            return False
        if self.this != other.this:
            return False
        if self.atomic != other.atomic:
            return False
        if self.readonly != other.readonly:
            return False
        if self.interruptLevel != other.interruptLevel:
            return False
        if self.phase != other.phase:
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
        c = ContextValue(self.name, self.entry, self.arg, self.this)
        c.pc = self.pc
        c.atomic = self.atomic
        c.readonly = self.readonly
        c.interruptLevel = self.interruptLevel
        c.stack = self.stack.copy()
        c.fp = self.fp
        c.trap = self.trap
        c.vars = self.vars
        c.phase = self.phase
        c.stopped = self.stopped
        c.failure = self.failure
        return c

    def get(self, var):
        return self.this if var == "this" else self.vars.d[var]

    def iget(self, indexes):
        assert indexes[0] != "this"
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
        if indexes[0] == "this":
            if len(indexes) == 1:
                self.this = val
            else:
                self.this = self.update(self.this, indexes[1:], val)
        else:
            self.vars = self.update(self.vars, indexes, val)

    def delete(self, indexes):
        self.vars = self.doDelete(self.vars, indexes)

    def push(self, val):
        assert val != None
        self.stack.append(val)

    def pop(self):
        return self.stack.pop()

    def key(self):
        return (100, (self.pc, self.__hash__()))

class State:
    def __init__(self, code, labels):
        self.code = code
        self.labels = labels
        self.vars = novalue
        self.ctxbag = {}        # running contexts
        self.stopbag = {}       # stopped contexts
        self.termbag = {}       # terminated contexts
        self.choosing = None
        self.invariants = set()
        self.initializing = True

    def __repr__(self):
        return "State(" + str(self.vars) + ", " + str(self.ctxbag) + ", " + \
            str(self.stopbag) + ", " + str(self.invariants) + ")"

    def __hash__(self):
        h = self.vars.__hash__()
        for c in self.ctxbag.items():
            h ^= c.__hash__()
        for c in self.stopbag.items():
            h ^= c.__hash__()
        for c in self.termbag.items():
            h ^= c.__hash__()
        for i in self.invariants:
            h ^= i
        return h

    def __eq__(self, other):
        if not isinstance(other, State):
            return False
        assert self.code == other.code and self.labels == other.labels
        if self.vars != other.vars:
            return False
        if self.ctxbag != other.ctxbag:
            return False
        if self.stopbag != other.stopbag:
            return False
        if self.termbag != other.termbag:
            return False
        if self.choosing != other.choosing:
            return False
        if self.invariants != other.invariants:
            return False
        if self.initializing != self.initializing:
            return False
        return True

    def copy(self):
        s = State(self.code, self.labels)
        s.vars = self.vars      # no need to copy as store operations do it
        s.ctxbag = self.ctxbag.copy()
        s.stopbag = self.stopbag.copy()
        s.termbag = self.termbag.copy()
        s.choosing = self.choosing
        s.invariants = self.invariants.copy()
        s.initializing = self.initializing
        return s

    def get(self, var):
        return self.vars.d[var]

    def iget(self, indexes):
        path = indexes
        v = self.vars
        while indexes != []:
            try:
                v = v.d[indexes[0]]
            except KeyError:
                print()
                print("no index", indexes[0], "in variable", path)
                sys.exit(1)
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
        d = record.d.copy()
        if len(indexes) > 1:
            d[indexes[0]] = self.doDelete(record.d[indexes[0]], indexes[1:])
        else:
            del d[indexes[0]]
        return DictValue(d)

    def doStop(self, record, indexes, ctx):
        d = record.d.copy()
        if len(indexes) > 1:
            d[indexes[0]] = self.doStop(record.d[indexes[0]], indexes[1:], ctx)
        else:
            # TODO.  Should be print + set failure
            list = d[indexes[0]]
            assert(isinstance(list, DictValue))
            d2 = list.d.copy()
            d2[len(d2)] = ctx
            d[indexes[0]] = DictValue(d2)
        return DictValue(d)

    def set(self, indexes, val):
        self.vars = self.update(self.vars, indexes, val)

    def delete(self, indexes):
        self.vars = self.doDelete(self.vars, indexes)

    def stop(self, indexes, ctx):
        self.vars = self.doStop(self.vars, indexes, ctx)
        cnt = self.stopbag.get(ctx)
        if cnt == None:
            self.stopbag[ctx] = 1
        else:
            self.stopbag[ctx] = cnt + 1

class Node:
    def __init__(self, state, uid, parent, before, after, steps, len):
        self.state = state      # State associated with this node
        self.uid = uid          # index into 'nodes' array
        self.parent = parent    # next hop on way to initial state
        self.len = len          # length of path to initial state
        self.before = before    # the context that made the hop from the parent state
        self.after = after      # the resulting context
        self.steps = steps      # list of microsteps

        # if state.choosing, maps choice, else context
        self.edges = {}         # map to <nextNode, nextContext, steps>

        self.sources = set()    # backward edges
        self.expanded = False   # lazy deletion
        self.issues = set()     # set of problems with this state
        self.cid = 0            # strongly connected component id
        self.blocked = {}       # map of context -> boolean

    def __hash__(self):
        return self.uid

    def __eq__(self, other):
        return isinstance(other, Node) and other.uid == self.uid

    def rec_isblocked(self, ctx, vars, seen):
        if self.uid in seen:
            return True
        seen.add(self.uid)
        if ctx in self.blocked:
            return self.blocked[ctx]
        s = self.state
        if s.choosing == ctx:
            for (choice, next) in self.edges.items():
                (nn, nc, steps) = next
                ns = nn.state
                if ns.vars != vars or not nn.rec_isblocked(nc, vars, seen):
                    self.blocked[ctx] = False
                    return False
        elif ctx in self.edges:
            next = self.edges[ctx]
            (nn, nc, steps) = next
            ns = nn.state
            if ns.vars != vars or not nn.rec_isblocked(nc, vars, seen):
                self.blocked[ctx] = False
                return False
        else:
            self.blocked[ctx] = False
            return False
        self.blocked[ctx] = True
        return True

    # See if the given process is "blocked", i.e., it cannot change
    # the shared state (the state variables), terminate, or stop unless
    # some other process changes the shared state first
    def isblocked(self, ctx):
        return self.rec_isblocked(ctx, self.state.vars, set())

def strsteps(steps):
    if steps == None:
        return "[]"
    result = ""
    i = 0
    while i < len(steps):
        if result != "":
            result += ","
        (pc, choice) = steps[i]
        if pc == None:
            result += "Interrupt"
        else:
            result += str(pc)
        j = i + 1
        if choice != None:
            result += "(choose %s)"%strValue(choice)
        else:
            while j < len(steps):
                (pc2, choice2) = steps[j]
                if pc == None or pc2 != pc + 1 or choice2 != None:
                    break
                (pc, choice) = (pc2, choice2)
                j += 1
            if j > i + 1:
                result += "-%d"%pc
        i = j
    return "[" + result + "]"

def find_shortest(bad):
    best_node = None
    best_len = 0
    for node in bad:
        if best_node == None or node.len < best_len:
            best_node = node
            best_len = node.len
    return best_node

def varvisit(d, vars, name, r):
    if isinstance(d, dict):
        for k in sorted(d.keys()):
            if isinstance(k, str):
                nn = name + "." + k
            else:
                nn = name + "[" + strValue(k) + "]"
            if k in vars.d:
                varvisit(d[k], vars.d[k], nn, r)
            else:
                r.append("%s: ---"%nn)
    else:
        r.append("%s: %s"%(name, strValue(vars)))

def strvars(d, vars):
    r = [];
    for k in sorted(d.keys()):
        varvisit(d[k], vars.d[k], k, r)
    return "{ " + ", ".join(r) + " }"

def varmerge(d, vars):
    assert isinstance(d, dict)
    assert isinstance(vars, DictValue)
    for (k, v) in vars.d.items():
        if k in d and isinstance(d[k], dict) and isinstance(v, DictValue):
            varmerge(d[k], v)
        elif k not in d and isinstance(v, DictValue):
            d[k] = {}
            varmerge(d[k], v)
        elif k not in d:
            d[k] = {v}
        elif isinstance(d[k], set):
            d[k] |= {v}
        else:
            assert isinstance(d[k], dict)
            d[k] = { v }

def vartrim(d):
    pairs = list(d.items())
    for (k, v) in pairs:
        if v == {}:
            del d[k]
        elif isinstance(d[k], dict):
            vartrim(d[k])

def pathvars(path):
    d = {}
    for (fctx, ctx, steps, states, vars) in path:
        varmerge(d, vars)
    vartrim(d)
    return d

def print_path(bad_node):
    path = genpath(bad_node)
    d = pathvars(path)
    pids = []
    for (fctx, ctx, steps, states, vars) in path:
        try:
            pid = pids.index(fctx)
            pids[pid] = ctx
        except ValueError:
            pids.append(ctx)
            pid = len(pids) - 1
        print("T%d:"%pid, ctx.nametag(), strsteps(steps), ctx.pc, strvars(d, vars))
    if len(path) > 0:
        (fctx, ctx, steps, states, vars) = path[-1]
        if ctx.failure != None:
            print(">>>", ctx.failure)

class Scope:
    def __init__(self, parent):
        self.parent = parent               # parent scope
        self.names = { "this": ("local", ("this", "NOFILE", 0, 0)) }   # name to (type, x) map
        self.locations = {} if parent == None else parent.locations
        self.labels = {} if parent == None else parent.labels
        self.prefix = [] if parent == None else parent.prefix

    def copy(self):
        c = Scope(self.parent)
        c.names = self.names.copy()
        c.locations = self.locations.copy()
        c.labels = self.labels.copy()
        c.prefix = self.prefix.copy()
        return c

    def checkUnused(self, name):
        (lexeme, file, line, column) = name
        tv = self.names.get(lexeme)
        if tv != None:
            (t, v) = tv
            assert t != "variable", ("variable name in use", name, v)

    def lookup(self, name):
        (lexeme, file, line, column) = name
        tv = self.names.get(lexeme)
        if tv != None:
            return tv
        ancestor = self.parent
        while ancestor != None:
            tv = ancestor.names.get(lexeme)
            if tv != None:
                # (t, v) = tv
                # if t == "local":
                #    return None
                return tv
            ancestor = ancestor.parent
        # print("Warning: unknown name:", name, " (assuming global variable)")
        self.names[lexeme] = ("global", name)
        return ("global", lexeme)

    def find(self, name):
        (lexeme, file, line, column) = name
        tv = self.names.get(lexeme)
        if tv != None:
            return tv
        self.names[lexeme] = ("global", name)
        # print("Warning: unknown name:", name, " (find)")
        return ("global", lexeme)

    def location(self, pc, file, line, labels):
        if self.parent == None:
            self.locations[pc] = (file, line)
            for (label, file, line, column) in labels:
                self.labels[label] = pc
        else:
            self.parent.location(pc, file, line, labels)

def optjump(code, pc):
    while pc < len(code):
        op = code[pc]
        if not isinstance(op, JumpOp):
            break
        pc = op.pc
    return pc

def optimize(code):
    for i in range(len(code)):
        op = code[i]
        if isinstance(op, JumpOp):
            code[i] = JumpOp(optjump(code, op.pc))
        elif isinstance(op, JumpCondOp):
            code[i] = JumpCondOp(op.cond, optjump(code, op.pc))

def invcheck(state, inv):
    assert isinstance(state.code[inv], InvariantOp)
    op = state.code[inv]
    ctx = ContextValue(("__invariant__", None, None, None), 0, novalue, novalue)
    ctx.atomic = ctx.readonly = 1
    ctx.pc = inv + 1
    while ctx.pc != inv + op.cnt:
        old = ctx.pc
        state.code[ctx.pc].eval(state, ctx)
        assert ctx.pc != old, old
    assert len(ctx.stack) == 1;
    assert isinstance(ctx.stack[0], bool)
    return ctx.stack[0]

class Pad:
    def __init__(self, descr):
        self.descr = descr
        self.value = ""
        self.lastlen = 0
    
    def __repr__(self):
        return self.descr + " = " + self.value

    def pad(self, v):
        if len(v) < len(self.value):
            self.value = " " * (len(self.value) - len(v))
        else:
            self.value = ""
        self.value += v

p_ctx = Pad("ctx")
p_pc  = Pad("pc")
p_ns  = Pad("#states")
p_dia = Pad("diameter")
p_ql  = Pad("#queue")

# Have context ctx make one (macro) step in the given state
def onestep(node, ctx, choice, interrupt, nodes, visited, todo):
    assert ctx.failure == None, ctx.failure

    # Keep track of whether this is the same context as the parent context
    samectx = ctx == node.after

    # Copy the state before modifying it
    sc = node.state.copy()   # sc is "state copy"
    sc.choosing = None

    # Make a copy of the context before modifying it (cc is "context copy")
    cc = ctx.copy()

    # Copy the choice as well
    choice_copy = choice

    steps = []

    if interrupt:
        assert not cc.interruptLevel
        (method, arg) = ctx.trap
        cc.push(PcValue(cc.pc))
        cc.push("interrupt")
        cc.push(arg)
        cc.pc = method.pc
        cc.trap = None
        cc.interruptLevel = True
        steps.append((None, None))      # indicates an interrupt

    localStates = set() # used to detect infinite loops
    loopcnt = 0         # only check for infinite loops after a while
    while cc.phase != "end":
        # execute one microstep
        steps.append((cc.pc, choice_copy))

        # print status update
        global lasttime, silent
        if not silent and time.time() - lasttime > 0.3:
            p_ctx.pad(cc.nametag())
            p_pc.pad(str(cc.pc))
            p_ns.pad(str(len(visited)))
            p_dia.pad(str(node.len))
            p_ql.pad(str(len(todo)))
            print(p_ctx, p_pc, p_ns, p_dia, p_ql, len(localStates), end="\r")
            lasttime = time.time()

        # If the current instruction is a "choose" instruction,
        # make the specified choice
        if isinstance(sc.code[cc.pc], ChooseOp):
            assert choice_copy != None;
            cc.stack[-1] = choice_copy
            cc.pc += 1
            choice_copy = None
        else:
            assert choice_copy == None
            if type(sc.code[cc.pc]) in { LoadOp, StoreOp, AtomicIncOp }:
                assert cc.phase != "end"
                cc.phase = "middle"
            try:
                sc.code[cc.pc].eval(sc, cc)
            except Exception as e:
                traceback.print_exc()
                sys.exit(1)
                cc.failure = "Python assertion failed"

        if cc.failure != None or cc.stopped:
            break

        # See if this process is making a nondeterministic choice.
        # If so, we break out of the microstep loop.  However, only
        # this process is scheduled from this state.
        if isinstance(sc.code[cc.pc], ChooseOp):
            v = cc.stack[-1]
            if (not isinstance(v, SetValue)) or v.s == set():
                # TODO.  Need the location of the choose operation in the file
                cc.failure = "pc = " + str(cc.pc) + \
                    ": Error: choose can only be applied to non-empty sets"
                break

            # if there is only one choice, we can just keep on going
            if len(v.s) > 1:
                sc.choosing = cc
                break
            else:
                choice_copy = list(v.s)[0]

        # if we're about to access shared state, let other processes
        # go first assuming there are other processes and we're not
        # in "atomic" mode
        # TODO.  IS THIS CHECK RIGHT?
        if cc.phase != "start" and cc.atomic == 0 and type(sc.code[cc.pc]) in { LoadOp, StoreOp }: # TODO  and len(sc.ctxbag) > 1:
            break
        # TODO.  WHY NOT HAVE THE SAME CHECK HERE?
        if cc.phase != "start" and cc.atomic == 0 and type(sc.code[cc.pc]) in { AtomicIncOp }:
            break

        # ContinueOp always causes a break
        if isinstance(sc.code[cc.pc], ContinueOp):
            break

        # Detect infinite loops if there's a suspicion
        loopcnt += 1
        if loopcnt > 200:
            if (sc, cc) in localStates:
                cc.failure = "infinite loop"
                break
            localStates.add((sc.copy(), cc.copy()))

    # Remove original context from bag
    bag_remove(sc.ctxbag, ctx)

    # Put the resulting context into the bag unless it's done
    if cc.phase == "end":
        sc.initializing = False     # initializing ends when __init__ finishes
        bag_add(sc.termbag, cc)
    elif not cc.stopped:
        bag_add(sc.ctxbag, cc)

    length = node.len if samectx else (node.len + 1)
    next = visited.get(sc)
    if next == None:
        next = Node(sc, len(nodes), node, ctx, cc, steps, length)
        nodes.append(next)
        visited[sc] = next
        if samectx:
            todo.insert(0, next)
        else:
            todo.append(next)
    elif next.len > length:
        assert length == node.len and next.len == node.len + 1 and not next.expanded, (node.len, length, next.len, next.expanded)
        # assert not next.expanded, (node.len, length, next.len, next.expanded)
        next.len = length
        next.parent = node
        next.before = ctx
        next.after = cc
        next.steps = steps
        todo.insert(0, next)
    node.edges[choice if node.state.choosing else ctx] = (next, cc, steps)
    next.sources.add(node)
    if cc.failure != None:
        next.issues.add("Thread Failure")

def parseConstant(c, v):
    tokens = lexer(v, "<constant argument>")
    if tokens == []:
        print("Empty constant")
        sys.exit(1)
    try:
        (ast, rem) = ExpressionRule().parse(tokens)
    except IndexError:
        # best guess...
        print("Parsing constant", v, "hit end of string")
        sys.exit(1)
    scope = Scope(None)
    code = []
    ast.compile(scope, code)
    state = State(code, scope.labels)
    ctx = ContextValue(("__arg__", None, None, None), 0, novalue, novalue)
    ctx.atomic = 1
    while ctx.pc != len(code):
        code[ctx.pc].eval(state, ctx)
    constants[c] = ctx.pop()

def doCompile(filenames, consts, mods):
    for c in consts:
        try:
            i = c.index("=")
            parseConstant(c[0:i], c[i+1:])
        except IndexError:
            print("Usage: -c C=V to define a constant")
            sys.exit(1)

    global modules
    for m in mods:
        try:
            i = m.index("=")
            modules[m[0:i]] = m[i+1:]
        except IndexError:
            print("Usage: -m module=version to specify a module version")
            sys.exit(1)

    scope = Scope(None)
    code = [
        FrameOp(("__init__", None, None, None), [])
    ]
    if filenames == []:
        usage()
    else:
        for fname in filenames:
            try:
                with open(fname) as fd:
                    load(fd, fname, scope, code)
            except IOError:
                print("harmony: can't open", fname, file=sys.stderr)
                sys.exit(1)
    code.append(ReturnOp())     # to terminate "__init__" process
    optimize(code)
    return (code, scope)

def kosaraju1(nodes, stack):
    seen = set()
    for node in nodes:
        if node.uid in seen:
            continue
        seen.add(node.uid)
        S = [node]
        while S:
            u = S[-1]
            done = True
            for (nn, nc, steps) in u.edges.values():
                if nn.uid not in seen:
                    seen.add(nn.uid)
                    done = False
                    S.append(nn)
                    break
            if done:
                S.pop()
                stack.append(u)

def kosaraju2(nodes, node, seen, scc):
    stack2 = [node]
    while stack2 != []:
        node = stack2.pop()
        if node.uid in seen:
            continue
        seen.add(node.uid)
        node.cid = scc.cid
        scc.nodes.add(node)
        for nn in node.sources:
            if nn.uid not in seen:
                stack2.append(nn)

class SCC:
    def __init__(self, cid):
        self.cid = cid
        self.nodes = set()      # set of nodes in this component
        self.edges = set()      # edges to other components
        self.good = False

# Find strongly connected components using Kosaraju's algorithm
def find_scc(nodes):
    stack = []
    kosaraju1(nodes, stack)
    seen = set()
    components = []
    while stack != []:
        next = stack.pop()
        if next.uid not in seen:
            scc = SCC(len(components))
            components.append(scc)
            kosaraju2(nodes, next, seen, scc)
    return components

def run(code, labels, blockflag):
    state = State(code, labels)
    ctx = ContextValue(("__init__", None, None, None), 0, novalue, novalue)
    ctx.atomic = 1
    ctx.push("process")
    ctx.push(novalue)
    bag_add(state.ctxbag, ctx)
    node = Node(state, 0, None, None, None, [], 0)

    nodes = [node]

    # For traversing Kripke graph
    visited = { state: node }
    todo = collections.deque([node])
    bad = set()

    faultyState = False
    maxdiameter = 0
    while todo:
        node = todo.popleft()

        # check the invariants
        if len(node.issues) == 0 and node.state.choosing == None:
            for inv in node.state.invariants:
                if not invcheck(node.state, inv):
                    (lexeme, file, line, column) = code[inv].token
                    node.issues.add("Invariant file=%s line=%d failed"%(file, line))

        if len(node.issues) > 0:
            bad.add(node)
            faultyState = True
            break

        if node.expanded:
            continue
        node.expanded = True
        if node.len > maxdiameter:
            maxdiameter = node.len

        if node.state.choosing != None:
            ctx = node.state.choosing
            assert ctx in node.state.ctxbag, ctx
            choices = ctx.stack[-1]
            assert isinstance(choices, SetValue), choices
            assert len(choices.s) > 0
            for choice in choices.s:
                onestep(node, ctx, choice, False, nodes, visited, todo)
        else:
            for (ctx, _) in node.state.ctxbag.items():
                onestep(node, ctx, None, False, nodes, visited, todo)
                if ctx.trap != None and not ctx.interruptLevel:
                    onestep(node, ctx, None, True, nodes, visited, todo)

    if not silent:
        print("#states =", len(visited), "diameter =", maxdiameter,
                                " "*100 + "\b"*100)

    todump = set()

    # See if there has been a safety violation
    issues_found = False
    if len(bad) > 0:
        print("==== Safety violation ====")
        bad_node = find_shortest(bad)
        print_path(bad_node)
        todump.add(bad_node)
        for issue in bad_node.issues:
            print(issue)
        issues_found = True

    if not faultyState:
        # Determine the strongly connected components
        components = find_scc(nodes)
        if not silent:
            print("#components:", len(components))

        # Figure out which strongly connected components are "good".
        # These are non-sink components or components that have
        # a terminated state.
        bad = set()
        for (s, n) in visited.items():
            if len(s.ctxbag) == 0 and len(s.stopbag) == 0:
                assert len(n.edges) == 0
                components[n.cid].good = True
                if blockflag:
                    bad.add(n)
                    n.issues.add("Terminating State")
            else:
                # assert len(n.edges) != 0, n.edges         TODO
                for (nn, nc, steps) in n.edges.values():
                    if nn.cid != n.cid:
                        components[n.cid].edges.add(nn.cid)
                    if nn.cid != n.cid:
                        components[n.cid].good = True
                        break

        nbadc = sum(not scc.good for scc in components)
        if nbadc != 0:
            if not blockflag:
                print("#bad components:", nbadc)
            for n in nodes:
                if components[n.cid].good:
                    continue
                if blockflag:
                    # see if all processes are blocked or stopped
                    s = n.state
                    for ctx in s.ctxbag.keys():
                        assert isinstance(ctx, ContextValue)
                        if not n.isblocked(ctx):
                            n.issues.add("Non-terminating State")
                            bad.add(n)
                            break
                else:
                    n.issues.add("Non-terminating State")
                    bad.add(n)

        if len(bad) > 0:
            bad_node = find_shortest(bad)
            issues = ""
            for issue in bad_node.issues:
                if issues != "":
                    issues += ", "
                issues += issue
            print("====", issues, "===")
            print_path(bad_node)
            todump.add(bad_node)
            issues_found = True

            # See which processes are blocked
            assert not bad_node.state.choosing
            running = 0
            blocked = 0
            stopped = 0
            for ctx in bad_node.state.ctxbag.keys():
                assert isinstance(ctx, ContextValue)
                if bad_node.isblocked(ctx):
                    blocked += 1
                    print("blocked process:", ctx.nametag(), "pc =", ctx.pc)
                else:
                    running += 1
                    print("running process:", ctx.nametag(), "pc =", ctx.pc)
            for ctx in bad_node.state.stopbag.keys():
                print("stopped process:", ctx.nametag(), "pc =", ctx.pc)
                stopped += 1
            print("#blocked:", blocked, "#stopped:", stopped, "#running:", running)

    if not issues_found:
        print("no issues found")
        n = None
    else:
        n = find_shortest(todump)
    return (nodes, n)

def htmlstrsteps(steps):
    if steps == None:
        return "[]"
    result = ""
    i = 0
    while i < len(steps):
        if result != "":
            result += " "
        (pc, choice) = steps[i]
        j = i + 1
        if pc == None:
            result += "Interrupt"
        else:
            result += "<a href='#P%d'>%d"%(pc, pc)
        if choice != None:
            result += "</a>(choose %s)"%strValue(choice)
        else:
            while j < len(steps):
                (pc2, choice2) = steps[j]
                if pc == None or pc2 != pc + 1 or choice2 != None:
                    break
                (pc, choice) = (pc2, choice2)
                j += 1
            if j > i + 1:
                result += "-%d"%pc
            result += "</a>"
        i = j
    return result

def genpath(n):
    # Extract the path to node n
    path = []
    while n != None:
        if n.after == None:
            break
        path = [n] + path
        n = n.parent

    # Now compress the path, combining macrosteps by the same context
    path2 = []
    lastctx = firstctx = None
    laststeps = []
    laststates = []
    lastvars = DictValue({})
    for n in path:
        if firstctx == None:
            firstctx = n.before
        if lastctx == None or lastctx == n.before:
            laststeps += n.steps
            lastctx = n.after
            laststates.append(n.uid)
            lastvars = n.state.vars
            continue
        path2.append((firstctx, lastctx, laststeps, laststates, lastvars))
        firstctx = n.before
        lastctx = n.after
        laststeps = n.steps.copy()
        laststates = [n.uid]
        lastvars = n.state.vars
    path2.append((firstctx, lastctx, laststeps, laststates, lastvars))
    return path2

def vardim(d):
    totalwidth = 0
    maxheight = 0
    if isinstance(d, dict):
        for k in sorted(d.keys()):
            (w, h) = vardim(d[k])
            totalwidth += w
            if h + 1 > maxheight:
                maxheight = h + 1
    else:
        return (1, 0)
    return (totalwidth, maxheight)

def varhdr(d, name, nrows, f):
    q = queue.Queue()
    level = 0
    q.put((d, level))
    while not q.empty():
        (nd, nl) = q.get()
        if nl > level:
            print("</tr><tr>", file=f)
            level = nl
        if isinstance(nd, dict):
            for k in sorted(nd.keys()):
                (w,h) = vardim(nd[k])
                if h == 0:
                    print("<td align='center' style='font-style: italic' colspan=%d rowspan=%d>%s</td>"%(w,nrows-nl,k), file=f)
                else:
                    print("<td align='center' style='font-style: italic' colspan=%d>%s</td>"%(w,k), file=f)
                q.put((nd[k], nl+1))

def vardump_rec(d, vars, f):
    if isinstance(d, dict):
        for k in sorted(d.keys()):
            if vars != None and k in vars.d:
                vardump_rec(d[k], vars.d[k], f)
            else:
                vardump_rec(d[k], None, f)
    elif vars == None:
        print("<td></td>", file=f)
    else:
        print("<td align='center'>%s</td>"%strValue(vars), file=f)

def vardump(d, vars, f):
    for k in sorted(d.keys()):
        vardump_rec(d[k], vars.d[k], f)

def htmlpath(n, color, f):
    # Generate a label for the path table
    issues = n.issues
    if len(issues) == 0:
        issues = { "no issues" }
    label = ""
    for issue in issues:
        if label != "":
            label += ", "
        label += issue
    label = "Issue: " + label
    # keys = sorted(n.state.vars.d.keys(), key=keyValue)
    path = genpath(n)
    d = pathvars(path)
    (width, height) = vardim(d)
    print("<table id='issuestbl' border='1' width='100%%'><tr><th colspan='2' align='left' style='color: %s'>%s</th><th></th>"%(color, html.escape(label)), file=f)
    if width == 1:
        print("<th>Shared Variable</th>", file=f)
    else:
        print("<th colspan='%d'>Shared Variables</th>"%width, file=f)
    print("<col style='width:15%'>", file=f)
    print("<tr><th rowspan=%d>Process</th><th rowspan=%d>Steps</th><th rowspan=%d></th>"%(height, height, height), file=f)
    varhdr(d, "", height, f)
    print("</tr><tr><td></td></tr>", file=f)
    row = height + 1
    pids = []
    for (fctx, ctx, steps, states, vars) in path:
        row += 1
        if len(states) > 0:
            sid = states[-1]
        else:
            sid = n.uid
        try:
            pid = pids.index(fctx)
            pids[pid] = ctx
        except ValueError:
            pids.append(ctx)
            pid = len(pids) - 1
        print("<tr><td>T%d: <a href='javascript:rowshow(%d,%d)'>%s</a></td>"%(pid, row, sid, ctx.nametag()), file=f)
        print("<td>%s</td><td></td>"%htmlstrsteps(steps), file=f)
        vardump(d, vars, f)
        print("</tr>", file=f)
    print("</table>", file=f)
    return height

def htmlloc(code, scope, ctx, traceid, f):
    pc = ctx.pc
    fp = ctx.fp
    print("<table id='loc%d' border='1' width='100%%'>"%traceid, file=f)
    trace = []
    while True:
        trace += [(pc, fp)]
        if fp < 5:
            break
        pc = ctx.stack[fp - 5]
        assert isinstance(pc, PcValue)
        pc = pc.pc
        fp = ctx.stack[fp - 1]
    trace.reverse()
    row = 0
    for (pc, fp) in trace:
        if row == 0:
            print("<tr style='background-color: #A5FF33'>", file=f)
        else:
            print("<tr>", file=f)
        print("<td>", file=f)
        print("<a href='#P%d'>%d</a> "%(pc, pc), file=f)
        print("<a href='javascript:setrow(%d,%d)'>"%(traceid,row), file=f)
        origpc = pc
        while pc >= 0 and pc not in scope.locations:
            pc -= 1
        if pc in scope.locations:
            (file, line) = scope.locations[pc]
        else:
            (file, line) = ("NOFILE", 0)
        # TODO.  Should skip over nested methods
        while pc >= 0 and not isinstance(code[pc], FrameOp):
            pc -= 1
        if fp >= 3:
            arg = ctx.stack[fp-3]
            if arg == novalue:
                print("%s()"%(code[pc].name[0]), end="", file=f)
            else:
                print("%s(%s)"%(code[pc].name[0], strValue(arg)), end="", file=f)
        print("</a>:", file=f)
        lines = files.get(file)
        if lines != None and line <= len(lines):
            print(html.escape(lines[line - 1]), file=f)
        print("</td></tr>", file=f)
        row += 1

    if ctx.failure != None:
        print("<tr style='color: red'><td>%s</td></tr>"%ctx.failure, file=f)
    print("</table>", file=f)

def htmlvars(vars, id, row, f):
    assert(isinstance(vars, DictValue))
    display = "block" if row == 0 else "none"
    print("<div id='vars%d_%d' style='display:%s'>"%(traceid, row, display), file=f)
    if len(vars.d) > 0:
        print("<table>", file=f)
        for (key, value) in vars.d.items():
            print("<tr>", file=f)
            print("<td>%s = %s</td>"%(strValue(key)[1:], strValue(value)), file=f)
            print("</tr>", file=f)
        print("</table>", file=f)
    print("</div>", file=f)

# print the variables on the stack
def htmltrace(code, scope, ctx, traceid, f):
    pc = ctx.pc
    fp = ctx.fp
    trace = [ctx.vars]
    while True:
        if fp < 5:
            break
        trace.append(ctx.stack[fp - 2])
        fp = ctx.stack[fp - 1]
    trace.reverse()
    for i in range(len(trace)):
        htmlvars(trace[i], traceid, i, f)

traceid = 0

def htmlrow(ctx, bag, node, code, scope, f, verbose):
    global traceid
    traceid += 1

    print("<tr>", file=f)
    if bag[ctx] > 1:
        print("<td>%s [%d copies]</td>"%(ctx.nametag(), bag[ctx]), file=f)
    else:
        print("<td>%s</td>"%ctx.nametag(), file=f)
    if ctx.stopped:
        print("<td>stopped</td>", file=f)
    else:
        if node.state.choosing:
            print("<td>choosing</td>", file=f)
        else:
            if ctx in node.edges:
                if node.isblocked(ctx):
                    print("<td>blocked</td>", file=f)
                else:
                    print("<td>running</td>", file=f)
            else:
                print("<td>failed</td>", file=f)

    print("<td>", file=f)
    htmlloc(code, scope, ctx, traceid, f)
    print("</td>", file=f)

    # print variables
    print("<td>", file=f)
    htmltrace(code, scope, ctx, traceid, f)
    print("</td>", file=f)

    # print stack
    if verbose:
        print("<td>%d</td>"%ctx.fp, file=f)
        print("<td align='center'>", file=f)
        print("<table border='1'>", file=f)
        for v in ctx.stack:
            print("<tr><td align='center'>", file=f)
            if isinstance(v, PcValue):
                print("<a href='#P%d'>"%v.pc, file=f)
                print("%s"%strValue(v), file=f)
                print("</a>", file=f)
            else:
                print("%s"%strValue(v), file=f)
            print("</td></tr>", file=f)
        print("</table>", file=f)
        print("</td>", file=f)
        assert not s.choosing
        if ctx in n.edges:
            (nn, nc, steps) = n.edges[ctx]
            print("<td>%s</td>"%htmlstrsteps(steps), file=f)
            print("<td><a href='javascript:show(%d)'>"%nn.uid, file=f)
            print("%d</a></td>"%nn.uid, file=f)
        else:
            print("<td>no steps</td>", file=f)
            print("<td></td>", file=f)
    print("</tr>", file=f)

def htmlstate(f):
    print("<table border='1' width='90%'>", file=f)
    print("<col style='width:20%'>", file=f)
    print("<col style='width:80%'>", file=f)

    print("<tr><td>state id</td><td>%d</td></tr>"%n.uid, file=f)
    # if s.failure != None:
    #     print("<tr><td>status</td><td>failure</td></tr>", file=f)
    if s.initializing:
        print("<tr><td>status</td><td>initializing</td></tr>", file=f)
    elif len(s.ctxbag) == 0:
        if len(s.stopbag) == 0:
            print("<tr><td>status</td><td>terminal</td></tr>", file=f)
        else:
            print("<tr><td>status</td><td>stopped</td></tr>", file=f)
    else:
        print("<tr><td>status</td><td>normal</td></tr>", file=f)

    if verbose:
        print("<tr><td>from</td>", file=f)
        print("<td><table><tr>", file=f)
        for src in sorted(n.sources, key=lambda x: (x.len, x.uid)):
            print("<td><a href='javascript:show(%d)'>%d</td>"%(src.uid, src.uid), file=f)
        print("</tr></table></td></tr>", file=f)

    if s.choosing != None:
        print("<tr><td>choosing</td><td>%s</td></tr>"%s.choosing.nametag(), file=f)

    print("</table>", file=f)

def htmlnode(n, code, scope, f, verbose):
    print("<div id='div%d' style='display:none'>"%n.uid, file=f);
    print("<div class='container'>", file=f)

    print("<a name='N%d'/>"%n.uid, file=f)

    if verbose:
        print("<td>", file=f)
        height = htmlpath(n, "black", f)
        print("</td>", file=f)

    # if n.state.failure != None:
    #     print("<table border='1' style='color: red'><tr><td>Failure:</td>", file=f)
    #     print("<td>%s</td>"%n.state.failure, file=f)
    #     print("</tr></table>", file=f)

    print("<table border='1'>", file=f)
    print("<tr><th>Process</th><th>Status</th><th>Stack Trace</th><th>Variables</th>", file=f)
    if verbose:
        print("<th>FP</th><th>Stack</th>", file=f)
        print("<th>Steps</th><th>Next State</th></tr>", file=f)
    else:
        print("</tr>", file=f)
        print("<tr><td></td><td></td><td></td><td></td></tr>", file=f)
    for ctx in sorted(n.state.ctxbag.keys(), key=lambda x: x.nametag()):
        htmlrow(ctx, n.state.ctxbag, n, code, scope, f, verbose)
    for ctx in sorted(n.state.stopbag.keys(), key=lambda x: x.nametag()):
        htmlrow(ctx, n.state.stopbag, n, code, scope, f, verbose)

    print("</table>", file=f)
    print("</div>", file=f);
    print("</div>", file=f);

def htmlcode(code, scope, f):
    print("<div id='table-wrapper'>", file=f)
    print("<div id='table-scroll'>", file=f)
    print("<table border='1'>", file=f)
    print("<tbody>", file=f)
    lastloc = None
    for pc in range(len(code)):
        print("<tr>", file=f)
        if scope.locations.get(pc) != None:
            (file, line) = scope.locations[pc]
            if (file, line) != lastloc:
                lines = files.get(file)
                if lines != None and line <= len(lines):
                    print("<th colspan='3' align='left' style='background-color: yellow'>%s:%d"%(html.escape(os.path.basename(file)), line),
                        html.escape(lines[line - 1]), "</th>", file=f)
                else:
                    print("<th colspan='2' align='left'>Line", line, "</th>", file=f)
                print("</tr><tr>", file=f)
            lastloc = (file, line)
        print("<td><a name='P%d'>"%pc, pc, "</a></td><td>", file=f)
        print("<span title='%s'>"%html.escape(code[pc].explain()), file=f)
        if isinstance(code[pc], JumpOp) or isinstance(code[pc], JumpCondOp):
            print("<a href='#P%d'>"%code[pc].pc, code[pc], "</a>", file=f)
        elif isinstance(code[pc], PushOp) and isinstance(code[pc].constant[0], PcValue):
            print("Push <a href='#P%d'>"%code[pc].constant[0].pc, strValue(code[pc].constant[0]), "</a>", file=f)
        else:
            print(html.escape(str(code[pc])), file=f)
        print("</span></td></tr>", file=f)
    print("</tbody>", file=f)
    print("</table>", file=f)
    print("</div>", file=f)
    print("</div>", file=f)

def htmldump(nodes, code, scope, node, fulldump, verbose):
    with open("harmony.html", "w") as f:
        print("""
<html>
  <head>
    <style>
#table-wrapper {
  position:relative;
}
#table-scroll {
  height:200px;
  overflow:auto;  
}
#table-wrapper table {
  width:100%;
}
#table-wrapper table * {
  color:black;
}
#table-wrapper table thead th .text {
  position:absolute;   
  top:-20px;
  z-index:2;
  height:20px;
  width:35%;
  border:1px solid red;
}
table {
    border-collapse: collapse;
    border-style: hidden;
}
table td, table th {
    border: 1px solid black;
}
    </style>
  </head>
  <body>
        """, file=f)

        print("<table>", file=f)
        print("<col style='width:50%'>", file=f)
        print("<col style='width:50%'>", file=f)

        if node != None:
            print("<tr><td colspan='2'>", file=f)
            height = htmlpath(node, "red", f)
            print("</td></tr>", file=f)
            print("<tr><td></td></tr>", file=f)

        print("<tr>", file=f)

        print("<td valign='top'>", file=f)
        htmlcode(code, scope, f)
        print("</td>", file=f)

        print("<td valign='top'>", file=f)
        if fulldump:
            for n in nodes:
                htmlnode(n, code, scope, f, verbose)
        else:
            if node == None:
                cnt = 0
                for n in nodes:
                    htmlnode(n, code, scope, f, verbose)
                    cnt += 1
                    if not fulldump and cnt > 100:
                        break
            else:
                n = node
                while n != None:
                    htmlnode(n, code, scope, f, verbose)
                    n = n.parent
        print("</td>", file=f)
        print("</tr>", file=f)
        print("</table>", file=f)

        if node == None:
            row = 0
            sid = 1
        else:
            row = node.len + height + 1
            sid = node.uid
        print(
            """
                <div id='divNone' style='display:none';>
                  <div class='container'>
                    <p>
                        State information not available.
                        Use harmony -d for a complete htmldump.
                    </p>
                  </div>
                </div>

                <script>
                  var current = 1;

                  function show(id) {
                      x = document.getElementById('div' + current);
                      if (x == null) {
                          x = document.getElementById('divNone')
                      }
                      x.style.display = 'none';
                      x = document.getElementById('div' + id)
                      if (x == null) {
                          x = document.getElementById('divNone')
                      }
                      x.style.display = 'block';
                      current = id;
                  }

                  function rowshow(row, id) {
                    show(id);
                    var tbl = document.getElementById("issuestbl");
                    for (var i = 1; i < tbl.rows.length; i++) {
                        if (i == row + 1) {
                            tbl.rows[i].style.backgroundColor = "#A5FF33";
                        }
                        else {
                            tbl.rows[i].style.backgroundColor = "";
                        }
                    }
                  }

                  function setrow(tblid, row) {
                    var tbl = document.getElementById('loc' + tblid);
                    for (var i = 0; i < tbl.rows.length; i++) {
                        var div = document.getElementById('vars' + tblid + '_' + i);
                        if (i == row) {
                            tbl.rows[i].style.backgroundColor = "#A5FF33";
                            div.style.display = 'block';
                        }
                        else {
                            tbl.rows[i].style.backgroundColor = "";
                            div.style.display = 'none';
                        }
                    }
                  }

                  rowshow(%d, %d)
                </script>
            """%(row, sid), file=f)
        print("</body>", file=f)
        print("</html>", file=f)
    print("open file://" + os.getcwd() + "/harmony.html for more information")

def dumpCode(printCode, code, scope, f=sys.stdout):
    lastloc = None
    if printCode == "json":
        print("{", file=f);
        print('  "labels": {', file=f);
        for (k, v) in scope.labels.items():
            print('    "%s": "%d",'%(k, v), file=f)
        print('    "__end__": "%d"'%len(code), file=f)
        print('  },', file=f);
        print('  "code": [', file=f);
    for pc in range(len(code)):
        if printCode == "verbose":
            if scope.locations.get(pc) != None:
                (file, line) = scope.locations[pc]
                if (file, line) != lastloc:
                    lines = files.get(file)
                    if lines != None and line <= len(lines):
                        print("%s:%d"%(file, line), lines[line - 1], file=f)
                    else:
                        print(file, ":", line, file=f)
                lastloc = (file, line)
            print("  ", pc, code[pc], file=f)
        elif printCode == "json":
            if pc < len(code) - 1:
                print("    %s,"%code[pc].jdump(), file=f)
            else:
                print("    %s"%code[pc].jdump(), file=f)
        else:
            print(code[pc], file=f)
    if printCode == "json":
        print("  ],", file=f);
        print('  "pretty": [', file=f)
        for pc in range(len(code)):
            if pc < len(code) - 1:
                print('    ["%s","%s"],'%(code[pc], code[pc].explain()), file=f)
            else:
                print('    ["%s","%s"]'%(code[pc], code[pc].explain()), file=f)
        print("  ],", file=f);
        print("  \"locations\": {", file=f, end="");
        firstTime = True
        for pc, (file, line) in scope.locations.items():
            if firstTime:
                firstTime = False
                print(file=f)
            else:
                print(",", file=f)
            print("    \"%d\": { \"file\": \"%s\", \"line\": \"%d\", \"code\": %s }"%(pc, file, line, json.dumps(files[file][line-1])), file=f, end="")
        print(file=f)
        print("  }", file=f);
        print("}", file=f);

config = {
    "infile": "$$home$$/.charm.c",
    "outfile": "$$home$$/.charm.exe",
    "compile": "gcc -O3 -std=c99 $$infile$$ -m64 -o $$outfile$$"
}

def usage():
    print("Usage: harmony [options] harmony-file ...")
    print("  options: ")
    print("    -a: list machine code")
    print("    -c name=value: define a constant")
    print("    -d: htmldump full state into html file")
    print("    -f: run with internal model checker (not supported)")
    print("    -h: help")
    print("    -m module=version: select a module version")
    print("    -s: silent (do not print periodic status updates)")
    print("    -v: print version number")
    exit(1)

def main():
    global silent

    # Get options.  First set default values
    consts = []
    mods = []
    printCode = None
    blockflag = False
    charmflag = True
    fulldump = False
    testflag = False
    suppressOutput = False
    charmoptions = []
    try:
        opts, args = getopt.getopt(sys.argv[1:], "Aabc:dfhjm:stv",
                ["const=", "cf=", "help", "module=", "suppress", "version"])
    except getopt.GetoptError as err:
        print(str(err))
        usage()
    for o, a in opts:
        if o == "-a":
            printCode = "verbose"
            charmflag = False
        elif o == "--cf":
            charmoptions += [a]
        elif o == "-A":
            printCode = "terse"
            charmflag = False
        elif o == "-j":
            printCode = "json"
            charmflag = False
        elif o == "-f":
            charmflag = False
        elif o == "-b":
            blockflag = True
        elif o in { "-c", "--const" }:
            consts.append(a)
        elif o == "-d":
            fulldump = True
        elif o in { "-m", "--module" }:
            mods.append(a)
        elif o == "-s":
            silent = True
        elif o == "-t":
            testflag = True
        elif o in { "-h", "--help" }:
            usage()
        elif o == "--suppress":
            suppressOutput = True
        elif o in { "-v", "--version" }:
            print("Version", ".".join([str(v) for v in version]))
            sys.exit(0)
        else:
            assert False, "unhandled option"

    (code, scope) = doCompile(args, consts, mods)

    if charmflag:
        # see if there is a configuration file
        global config
        conffile = "%s/.harmony.json"%pathlib.Path.home()
        if os.path.exists(conffile):
            with open(conffile) as f:
                config = json.load(f)
        else:
            config["infile"] = "%s/.charm.c"%pathlib.Path.home()
            config["outfile"] = "%s/.charm.exe"%pathlib.Path.home()
            config["compile"] = "gcc -O3 -std=c99 %s -m64 -o %s"%(config["infile"], config["outfile"])
        if testflag:
            tmpfile = "harmony.json"
        else:
            fd, tmpfile = tempfile.mkstemp(".json", prefix="harmony", text=True)
            os.close(fd)
        with open(tmpfile, "w") as fd:
            dumpCode("json", code, scope, f=fd)
        path = pathlib.Path(config["outfile"])
        rebuild = testflag or not path.exists()
        if not rebuild:
            st = path.stat()
            now = time.time()
            if now - st.st_mtime > 15 * 60:
                rebuild = True
        if rebuild:
            with open(config["infile"], "w") as fd:
                if not testflag:
                    print("#define NDEBUG", file=fd)
                print("#define HARMONY_COMBINE", file=fd)
                print(charm_src, file=fd)
            if testflag:
                # if os.name == "nt":
                #     r = os.system("cl %s /link /out:%s"%(config["infile"], config["outfile"]))
                # else:
                    r = os.system("gcc -g -std=c99 %s -m64 -o %s"%(config["infile"], config["outfile"]))
            else:
                # if os.name == "nt":
                #     r = os.system("cl %s /link /out:%s"%(config["infile"], config["outfile"]))
                # else:
                    r = os.system(config["compile"]);
            if r != 0:
                print("can't create charm model checker")
                sys.exit(r);
        r = os.system("%s %s %s"%(config["outfile"], " ".join(charmoptions), tmpfile));
        if not testflag:
            os.remove(tmpfile)
        if r != 0:
            print("charm model checker failed")
            sys.exit(r);
        b = Brief()
        if not b.run():
            gh = GenHTML()
            gh.run()
            if not suppressOutput:
                print("open file://" + os.getcwd() + "/harmony.html for more information")
        sys.exit(0);

    if printCode == None:
        (nodes, bad_node) = run(code, scope.labels, blockflag)
        if bad_node != None:
            if not silent:
                htmldump(nodes, code, scope, bad_node, fulldump, False)
            sys.exit(1)
    else:
        dumpCode(printCode, code, scope)

if __name__ == "__main__":
    main()
