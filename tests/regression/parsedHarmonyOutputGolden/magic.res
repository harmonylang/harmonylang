{
  "state": "Issues found",
  "issue": "Safety violation",
  "slices": [
    {
      "duration": 2,
      "sharedValues": {},
      "idToStackTrace": {
        "0": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "__init__()",
              "pc": "1",
              "callType": "process",
              "vars": {}
            }
          ],
          "tid": "0",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 0
        }
      },
      "tid": "0",
      "name": "__init__()",
      "macroStepIdx": 0
    },
    {
      "duration": 9,
      "sharedValues": {},
      "idToStackTrace": {
        "0": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "__init__()",
              "pc": "1",
              "callType": "process",
              "vars": {
                "$accu1": []
              }
            }
          ],
          "tid": "0",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 0
        }
      },
      "tid": "0",
      "name": "__init__()",
      "macroStepIdx": 0
    },
    {
      "duration": 6,
      "sharedValues": {},
      "idToStackTrace": {
        "0": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "__init__()",
              "pc": "1",
              "callType": "process",
              "vars": {}
            }
          ],
          "tid": "0",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 0
        }
      },
      "tid": "0",
      "name": "__init__()",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {},
      "idToStackTrace": {
        "0": {
          "atomic": 1,
          "fullStatus": "failed atomic",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "failed",
          "mode": "failed",
          "failure": "Load ?permuted[{ 1, 2, 3, 4 }]: can't load",
          "tid": "0",
          "callStack": [
            {
              "callType": "process",
              "method": "__init__()",
              "vars": {},
              "pc": "17"
            }
          ]
        }
      },
      "tid": "0",
      "name": "__init__()",
      "macroStepIdx": 0
    }
  ],
  "microSteps": [
    {
      "pc": 0,
      "npc": 1,
      "sliceIdx": 0,
      "time": 0
    },
    {
      "sliceIdx": 0,
      "time": 1,
      "pc": 1,
      "npc": 2
    },
    {
      "sliceIdx": 1,
      "time": 2,
      "pc": 2,
      "npc": 3
    },
    {
      "sliceIdx": 1,
      "time": 3,
      "pc": 3,
      "npc": 4
    },
    {
      "sliceIdx": 1,
      "time": 4,
      "pc": 4,
      "npc": 5
    },
    {
      "sliceIdx": 1,
      "time": 5,
      "pc": 5,
      "npc": 6
    },
    {
      "sliceIdx": 1,
      "time": 6,
      "pc": 6,
      "npc": 7
    },
    {
      "sliceIdx": 1,
      "time": 7,
      "pc": 7,
      "npc": 8
    },
    {
      "sliceIdx": 1,
      "time": 8,
      "pc": 8,
      "npc": 9
    },
    {
      "sliceIdx": 1,
      "time": 9,
      "pc": 9,
      "npc": 10
    },
    {
      "sliceIdx": 1,
      "time": 10,
      "pc": 10,
      "npc": 11
    },
    {
      "sliceIdx": 2,
      "time": 11,
      "pc": 11,
      "npc": 12
    },
    {
      "sliceIdx": 2,
      "time": 12,
      "pc": 12,
      "npc": 13
    },
    {
      "sliceIdx": 2,
      "time": 13,
      "pc": 13,
      "npc": 14
    },
    {
      "sliceIdx": 2,
      "time": 14,
      "pc": 14,
      "npc": 15
    },
    {
      "sliceIdx": 2,
      "time": 15,
      "pc": 15,
      "npc": 16
    },
    {
      "sliceIdx": 2,
      "time": 16,
      "pc": 16,
      "npc": 17
    },
    {
      "sliceIdx": 3,
      "time": 17,
      "pc": 17,
      "npc": 17
    }
  ],
  "macroSteps": [
    {
      "tid": "0",
      "name": "__init__()",
      "duration": 18,
      "startSliceIdx": 0,
      "lastSliceIdx": 4
    }
  ],
  "idToThreadName": {
    "0": "__init__()"
  },
  "executedCode": [
    {
      "initialPc": 0,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "1",
      "sourceCode": "const N = 4",
      "assembly": [
        {
          "assembly": "Frame __init__()",
          "explain": "start of method __init__"
        }
      ]
    },
    {
      "initialPc": 1,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "3",
      "sourceCode": "sq = [ permuted({ 1 .. N }) for _ in { 1 .. N } ]",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "initialize accumulator for list comprehension: push constant ()"
        }
      ]
    },
    {
      "initialPc": 2,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "3",
      "sourceCode": "sq = [ permuted({ 1 .. N }) for _ in { 1 .. N } ]",
      "assembly": [
        {
          "assembly": "StoreVar $accu1",
          "explain": "initialize accumulator for list comprehension: pop a value and store in $accu1"
        }
      ]
    },
    {
      "initialPc": 3,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "3",
      "sourceCode": "sq = [ permuted({ 1 .. N }) for _ in { 1 .. N } ]",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 4,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "3",
      "sourceCode": "sq = [ permuted({ 1 .. N }) for _ in { 1 .. N } ]",
      "assembly": [
        {
          "assembly": "Push 4",
          "explain": "push constant 4"
        }
      ]
    },
    {
      "initialPc": 5,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "3",
      "sourceCode": "sq = [ permuted({ 1 .. N }) for _ in { 1 .. N } ]",
      "assembly": [
        {
          "assembly": "2-ary ..",
          "explain": "pop 2 values and push the result of applying .."
        }
      ]
    },
    {
      "initialPc": 6,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "3",
      "sourceCode": "sq = [ permuted({ 1 .. N }) for _ in { 1 .. N } ]",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 7,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "3",
      "sourceCode": "sq = [ permuted({ 1 .. N }) for _ in { 1 .. N } ]",
      "assembly": [
        {
          "assembly": "Cut(_)",
          "explain": "get next element and assign to _; push False or True depending on success"
        }
      ]
    },
    {
      "initialPc": 8,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "3",
      "sourceCode": "sq = [ permuted({ 1 .. N }) for _ in { 1 .. N } ]",
      "assembly": [
        {
          "assembly": "DelVar _",
          "explain": "delete method variable _"
        }
      ]
    },
    {
      "initialPc": 9,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "3",
      "sourceCode": "sq = [ permuted({ 1 .. N }) for _ in { 1 .. N } ]",
      "assembly": [
        {
          "assembly": "JumpCond False 21",
          "explain": "check if loop is done: pop a value and jump to 21 if the value is False"
        }
      ]
    },
    {
      "initialPc": 10,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "3",
      "sourceCode": "sq = [ permuted({ 1 .. N }) for _ in { 1 .. N } ]",
      "assembly": [
        {
          "assembly": "LoadVar $accu1",
          "explain": "load accumulator: push the value of $accu1"
        }
      ]
    },
    {
      "initialPc": 11,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "3",
      "sourceCode": "sq = [ permuted({ 1 .. N }) for _ in { 1 .. N } ]",
      "assembly": [
        {
          "assembly": "DelVar $accu1",
          "explain": "delete method variable $accu1"
        }
      ]
    },
    {
      "initialPc": 12,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "3",
      "sourceCode": "sq = [ permuted({ 1 .. N }) for _ in { 1 .. N } ]",
      "assembly": [
        {
          "assembly": "Push ?permuted",
          "explain": "push constant ?permuted"
        }
      ]
    },
    {
      "initialPc": 13,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "3",
      "sourceCode": "sq = [ permuted({ 1 .. N }) for _ in { 1 .. N } ]",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 14,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "3",
      "sourceCode": "sq = [ permuted({ 1 .. N }) for _ in { 1 .. N } ]",
      "assembly": [
        {
          "assembly": "Push 4",
          "explain": "push constant 4"
        }
      ]
    },
    {
      "initialPc": 15,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "3",
      "sourceCode": "sq = [ permuted({ 1 .. N }) for _ in { 1 .. N } ]",
      "assembly": [
        {
          "assembly": "2-ary ..",
          "explain": "pop 2 values and push the result of applying .."
        }
      ]
    },
    {
      "initialPc": 16,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "3",
      "sourceCode": "sq = [ permuted({ 1 .. N }) for _ in { 1 .. N } ]",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 17,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "3",
      "sourceCode": "sq = [ permuted({ 1 .. N }) for _ in { 1 .. N } ]",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 18,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "3",
      "sourceCode": "sq = [ permuted({ 1 .. N }) for _ in { 1 .. N } ]",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 19,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "3",
      "sourceCode": "sq = [ permuted({ 1 .. N }) for _ in { 1 .. N } ]",
      "assembly": [
        {
          "assembly": "StoreVar $accu1",
          "explain": "update accumulator: pop a value and store in $accu1"
        }
      ]
    },
    {
      "initialPc": 20,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "3",
      "sourceCode": "sq = [ permuted({ 1 .. N }) for _ in { 1 .. N } ]",
      "assembly": [
        {
          "assembly": "Jump 7",
          "explain": "set program counter to 7"
        }
      ]
    },
    {
      "initialPc": 21,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "3",
      "sourceCode": "sq = [ permuted({ 1 .. N }) for _ in { 1 .. N } ]",
      "assembly": [
        {
          "assembly": "LoadVar $accu1",
          "explain": "load final accumulator result: push the value of $accu1"
        }
      ]
    },
    {
      "initialPc": 22,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "3",
      "sourceCode": "sq = [ permuted({ 1 .. N }) for _ in { 1 .. N } ]",
      "assembly": [
        {
          "assembly": "DelVar $accu1",
          "explain": "delete method variable $accu1"
        }
      ]
    },
    {
      "initialPc": 23,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "3",
      "sourceCode": "sq = [ permuted({ 1 .. N }) for _ in { 1 .. N } ]",
      "assembly": [
        {
          "assembly": "Store sq",
          "explain": "pop a value and store it in shared variable sq"
        }
      ]
    },
    {
      "initialPc": 24,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "5",
      "sourceCode": "def is_a_solution() returns good:",
      "assembly": [
        {
          "assembly": "Jump 118",
          "explain": "jump over method definition: set program counter to 118"
        }
      ]
    },
    {
      "initialPc": 25,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "5",
      "sourceCode": "def is_a_solution() returns good:",
      "assembly": [
        {
          "assembly": "Frame is_a_solution()",
          "explain": "start of method is_a_solution"
        }
      ]
    },
    {
      "initialPc": 26,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "6",
      "sourceCode": "    good = True",
      "assembly": [
        {
          "assembly": "Push True",
          "explain": "push constant True"
        }
      ]
    },
    {
      "initialPc": 27,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "6",
      "sourceCode": "    good = True",
      "assembly": [
        {
          "assembly": "StoreVar good",
          "explain": "pop a value and store in good"
        }
      ]
    },
    {
      "initialPc": 28,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "7",
      "sourceCode": "    for i in { 0 .. N-1 }:",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 29,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "7",
      "sourceCode": "    for i in { 0 .. N-1 }:",
      "assembly": [
        {
          "assembly": "Push 4",
          "explain": "push constant 4"
        }
      ]
    },
    {
      "initialPc": 30,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "7",
      "sourceCode": "    for i in { 0 .. N-1 }:",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 31,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "7",
      "sourceCode": "    for i in { 0 .. N-1 }:",
      "assembly": [
        {
          "assembly": "2-ary -",
          "explain": "pop 2 values and push the result of applying -"
        }
      ]
    },
    {
      "initialPc": 32,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "7",
      "sourceCode": "    for i in { 0 .. N-1 }:",
      "assembly": [
        {
          "assembly": "2-ary ..",
          "explain": "pop 2 values and push the result of applying .."
        }
      ]
    },
    {
      "initialPc": 33,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "7",
      "sourceCode": "    for i in { 0 .. N-1 }:",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 34,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "7",
      "sourceCode": "    for i in { 0 .. N-1 }:",
      "assembly": [
        {
          "assembly": "Cut(i)",
          "explain": "get next element and assign to i; push False or True depending on success"
        }
      ]
    },
    {
      "initialPc": 35,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "7",
      "sourceCode": "    for i in { 0 .. N-1 }:",
      "assembly": [
        {
          "assembly": "JumpCond False 71",
          "explain": "check if loop is done: pop a value and jump to 71 if the value is False"
        }
      ]
    },
    {
      "initialPc": 36,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "8",
      "sourceCode": "        if { sq[i][j] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "Push {}",
          "explain": "initialize accumulator for set comprehension: push constant {}"
        }
      ]
    },
    {
      "initialPc": 37,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "8",
      "sourceCode": "        if { sq[i][j] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "StoreVar $accu33",
          "explain": "initialize accumulator for set comprehension: pop a value and store in $accu33"
        }
      ]
    },
    {
      "initialPc": 38,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "8",
      "sourceCode": "        if { sq[i][j] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 39,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "8",
      "sourceCode": "        if { sq[i][j] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "Push 4",
          "explain": "push constant 4"
        }
      ]
    },
    {
      "initialPc": 40,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "8",
      "sourceCode": "        if { sq[i][j] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 41,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "8",
      "sourceCode": "        if { sq[i][j] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "2-ary -",
          "explain": "pop 2 values and push the result of applying -"
        }
      ]
    },
    {
      "initialPc": 42,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "8",
      "sourceCode": "        if { sq[i][j] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "2-ary ..",
          "explain": "pop 2 values and push the result of applying .."
        }
      ]
    },
    {
      "initialPc": 43,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "8",
      "sourceCode": "        if { sq[i][j] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 44,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "8",
      "sourceCode": "        if { sq[i][j] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "Cut(j)",
          "explain": "get next element and assign to j; push False or True depending on success"
        }
      ]
    },
    {
      "initialPc": 45,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "8",
      "sourceCode": "        if { sq[i][j] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "JumpCond False 58",
          "explain": "check if loop is done: pop a value and jump to 58 if the value is False"
        }
      ]
    },
    {
      "initialPc": 46,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "8",
      "sourceCode": "        if { sq[i][j] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "LoadVar $accu33",
          "explain": "load accumulator: push the value of $accu33"
        }
      ]
    },
    {
      "initialPc": 47,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "8",
      "sourceCode": "        if { sq[i][j] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "DelVar $accu33",
          "explain": "delete method variable $accu33"
        }
      ]
    },
    {
      "initialPc": 48,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "8",
      "sourceCode": "        if { sq[i][j] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "Push ?sq",
          "explain": "push constant ?sq"
        }
      ]
    },
    {
      "initialPc": 49,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "8",
      "sourceCode": "        if { sq[i][j] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "LoadVar i",
          "explain": "push the value of i"
        }
      ]
    },
    {
      "initialPc": 50,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "8",
      "sourceCode": "        if { sq[i][j] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 51,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "8",
      "sourceCode": "        if { sq[i][j] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "LoadVar j",
          "explain": "push the value of j"
        }
      ]
    },
    {
      "initialPc": 52,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "8",
      "sourceCode": "        if { sq[i][j] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "DelVar j",
          "explain": "delete method variable j"
        }
      ]
    },
    {
      "initialPc": 53,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "8",
      "sourceCode": "        if { sq[i][j] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 54,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "8",
      "sourceCode": "        if { sq[i][j] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 55,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "8",
      "sourceCode": "        if { sq[i][j] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "2-ary SetAdd",
          "explain": "pop 2 values and push the result of applying SetAdd"
        }
      ]
    },
    {
      "initialPc": 56,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "8",
      "sourceCode": "        if { sq[i][j] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "StoreVar $accu33",
          "explain": "update accumulator: pop a value and store in $accu33"
        }
      ]
    },
    {
      "initialPc": 57,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "8",
      "sourceCode": "        if { sq[i][j] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "Jump 44",
          "explain": "set program counter to 44"
        }
      ]
    },
    {
      "initialPc": 58,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "8",
      "sourceCode": "        if { sq[i][j] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "DelVar i",
          "explain": "delete method variable i"
        }
      ]
    },
    {
      "initialPc": 59,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "8",
      "sourceCode": "        if { sq[i][j] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "DelVar j",
          "explain": "delete method variable j"
        }
      ]
    },
    {
      "initialPc": 60,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "8",
      "sourceCode": "        if { sq[i][j] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "LoadVar $accu33",
          "explain": "load final accumulator result: push the value of $accu33"
        }
      ]
    },
    {
      "initialPc": 61,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "8",
      "sourceCode": "        if { sq[i][j] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "DelVar $accu33",
          "explain": "delete method variable $accu33"
        }
      ]
    },
    {
      "initialPc": 62,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "8",
      "sourceCode": "        if { sq[i][j] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 63,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "8",
      "sourceCode": "        if { sq[i][j] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "Push 4",
          "explain": "push constant 4"
        }
      ]
    },
    {
      "initialPc": 64,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "8",
      "sourceCode": "        if { sq[i][j] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "2-ary ..",
          "explain": "pop 2 values and push the result of applying .."
        }
      ]
    },
    {
      "initialPc": 65,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "8",
      "sourceCode": "        if { sq[i][j] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "2-ary !=",
          "explain": "pop 2 values and push the result of applying !="
        }
      ]
    },
    {
      "initialPc": 66,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "8",
      "sourceCode": "        if { sq[i][j] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "JumpCond False 34",
          "explain": "pop a value and jump to 34 if the value is False"
        }
      ]
    },
    {
      "initialPc": 67,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "9",
      "sourceCode": "            good = False",
      "assembly": [
        {
          "assembly": "DelVar good",
          "explain": "delete method variable good"
        }
      ]
    },
    {
      "initialPc": 68,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "9",
      "sourceCode": "            good = False",
      "assembly": [
        {
          "assembly": "Push False",
          "explain": "push constant False"
        }
      ]
    },
    {
      "initialPc": 69,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "9",
      "sourceCode": "            good = False",
      "assembly": [
        {
          "assembly": "StoreVar good",
          "explain": "pop a value and store in good"
        }
      ]
    },
    {
      "initialPc": 70,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "7",
      "sourceCode": "    for i in { 0 .. N-1 }:",
      "assembly": [
        {
          "assembly": "Jump 34",
          "explain": "set program counter to 34"
        }
      ]
    },
    {
      "initialPc": 71,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "10",
      "sourceCode": "    for i in { 0 .. N-1 }:",
      "assembly": [
        {
          "assembly": "DelVar i",
          "explain": "delete method variable i"
        }
      ]
    },
    {
      "initialPc": 72,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "10",
      "sourceCode": "    for i in { 0 .. N-1 }:",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 73,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "10",
      "sourceCode": "    for i in { 0 .. N-1 }:",
      "assembly": [
        {
          "assembly": "Push 4",
          "explain": "push constant 4"
        }
      ]
    },
    {
      "initialPc": 74,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "10",
      "sourceCode": "    for i in { 0 .. N-1 }:",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 75,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "10",
      "sourceCode": "    for i in { 0 .. N-1 }:",
      "assembly": [
        {
          "assembly": "2-ary -",
          "explain": "pop 2 values and push the result of applying -"
        }
      ]
    },
    {
      "initialPc": 76,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "10",
      "sourceCode": "    for i in { 0 .. N-1 }:",
      "assembly": [
        {
          "assembly": "2-ary ..",
          "explain": "pop 2 values and push the result of applying .."
        }
      ]
    },
    {
      "initialPc": 77,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "10",
      "sourceCode": "    for i in { 0 .. N-1 }:",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 78,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "10",
      "sourceCode": "    for i in { 0 .. N-1 }:",
      "assembly": [
        {
          "assembly": "Cut(i)",
          "explain": "get next element and assign to i; push False or True depending on success"
        }
      ]
    },
    {
      "initialPc": 79,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "10",
      "sourceCode": "    for i in { 0 .. N-1 }:",
      "assembly": [
        {
          "assembly": "JumpCond False 115",
          "explain": "check if loop is done: pop a value and jump to 115 if the value is False"
        }
      ]
    },
    {
      "initialPc": 80,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "11",
      "sourceCode": "        if { sq[j][i] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "Push {}",
          "explain": "initialize accumulator for set comprehension: push constant {}"
        }
      ]
    },
    {
      "initialPc": 81,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "11",
      "sourceCode": "        if { sq[j][i] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "StoreVar $accu70",
          "explain": "initialize accumulator for set comprehension: pop a value and store in $accu70"
        }
      ]
    },
    {
      "initialPc": 82,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "11",
      "sourceCode": "        if { sq[j][i] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 83,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "11",
      "sourceCode": "        if { sq[j][i] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "Push 4",
          "explain": "push constant 4"
        }
      ]
    },
    {
      "initialPc": 84,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "11",
      "sourceCode": "        if { sq[j][i] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 85,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "11",
      "sourceCode": "        if { sq[j][i] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "2-ary -",
          "explain": "pop 2 values and push the result of applying -"
        }
      ]
    },
    {
      "initialPc": 86,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "11",
      "sourceCode": "        if { sq[j][i] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "2-ary ..",
          "explain": "pop 2 values and push the result of applying .."
        }
      ]
    },
    {
      "initialPc": 87,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "11",
      "sourceCode": "        if { sq[j][i] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 88,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "11",
      "sourceCode": "        if { sq[j][i] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "Cut(j)",
          "explain": "get next element and assign to j; push False or True depending on success"
        }
      ]
    },
    {
      "initialPc": 89,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "11",
      "sourceCode": "        if { sq[j][i] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "JumpCond False 102",
          "explain": "check if loop is done: pop a value and jump to 102 if the value is False"
        }
      ]
    },
    {
      "initialPc": 90,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "11",
      "sourceCode": "        if { sq[j][i] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "LoadVar $accu70",
          "explain": "load accumulator: push the value of $accu70"
        }
      ]
    },
    {
      "initialPc": 91,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "11",
      "sourceCode": "        if { sq[j][i] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "DelVar $accu70",
          "explain": "delete method variable $accu70"
        }
      ]
    },
    {
      "initialPc": 92,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "11",
      "sourceCode": "        if { sq[j][i] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "Push ?sq",
          "explain": "push constant ?sq"
        }
      ]
    },
    {
      "initialPc": 93,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "11",
      "sourceCode": "        if { sq[j][i] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "LoadVar j",
          "explain": "push the value of j"
        }
      ]
    },
    {
      "initialPc": 94,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "11",
      "sourceCode": "        if { sq[j][i] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "DelVar j",
          "explain": "delete method variable j"
        }
      ]
    },
    {
      "initialPc": 95,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "11",
      "sourceCode": "        if { sq[j][i] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 96,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "11",
      "sourceCode": "        if { sq[j][i] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "LoadVar i",
          "explain": "push the value of i"
        }
      ]
    },
    {
      "initialPc": 97,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "11",
      "sourceCode": "        if { sq[j][i] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 98,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "11",
      "sourceCode": "        if { sq[j][i] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 99,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "11",
      "sourceCode": "        if { sq[j][i] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "2-ary SetAdd",
          "explain": "pop 2 values and push the result of applying SetAdd"
        }
      ]
    },
    {
      "initialPc": 100,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "11",
      "sourceCode": "        if { sq[j][i] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "StoreVar $accu70",
          "explain": "update accumulator: pop a value and store in $accu70"
        }
      ]
    },
    {
      "initialPc": 101,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "11",
      "sourceCode": "        if { sq[j][i] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "Jump 88",
          "explain": "set program counter to 88"
        }
      ]
    },
    {
      "initialPc": 102,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "11",
      "sourceCode": "        if { sq[j][i] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "DelVar i",
          "explain": "delete method variable i"
        }
      ]
    },
    {
      "initialPc": 103,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "11",
      "sourceCode": "        if { sq[j][i] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "DelVar j",
          "explain": "delete method variable j"
        }
      ]
    },
    {
      "initialPc": 104,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "11",
      "sourceCode": "        if { sq[j][i] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "LoadVar $accu70",
          "explain": "load final accumulator result: push the value of $accu70"
        }
      ]
    },
    {
      "initialPc": 105,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "11",
      "sourceCode": "        if { sq[j][i] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "DelVar $accu70",
          "explain": "delete method variable $accu70"
        }
      ]
    },
    {
      "initialPc": 106,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "11",
      "sourceCode": "        if { sq[j][i] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 107,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "11",
      "sourceCode": "        if { sq[j][i] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "Push 4",
          "explain": "push constant 4"
        }
      ]
    },
    {
      "initialPc": 108,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "11",
      "sourceCode": "        if { sq[j][i] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "2-ary ..",
          "explain": "pop 2 values and push the result of applying .."
        }
      ]
    },
    {
      "initialPc": 109,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "11",
      "sourceCode": "        if { sq[j][i] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "2-ary !=",
          "explain": "pop 2 values and push the result of applying !="
        }
      ]
    },
    {
      "initialPc": 110,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "11",
      "sourceCode": "        if { sq[j][i] for j in { 0 .. N-1 } } != { 1 .. N }:",
      "assembly": [
        {
          "assembly": "JumpCond False 78",
          "explain": "pop a value and jump to 78 if the value is False"
        }
      ]
    },
    {
      "initialPc": 111,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "12",
      "sourceCode": "            good = False",
      "assembly": [
        {
          "assembly": "DelVar good",
          "explain": "delete method variable good"
        }
      ]
    },
    {
      "initialPc": 112,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "12",
      "sourceCode": "            good = False",
      "assembly": [
        {
          "assembly": "Push False",
          "explain": "push constant False"
        }
      ]
    },
    {
      "initialPc": 113,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "12",
      "sourceCode": "            good = False",
      "assembly": [
        {
          "assembly": "StoreVar good",
          "explain": "pop a value and store in good"
        }
      ]
    },
    {
      "initialPc": 114,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "10",
      "sourceCode": "    for i in { 0 .. N-1 }:",
      "assembly": [
        {
          "assembly": "Jump 78",
          "explain": "set program counter to 78"
        }
      ]
    },
    {
      "initialPc": 115,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "5",
      "sourceCode": "def is_a_solution() returns good:",
      "assembly": [
        {
          "assembly": "DelVar i",
          "explain": "delete method variable i"
        }
      ]
    },
    {
      "initialPc": 116,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "5",
      "sourceCode": "def is_a_solution() returns good:",
      "assembly": [
        {
          "assembly": "ReturnOp(good)",
          "explain": "restore caller method state and push good"
        }
      ]
    },
    {
      "initialPc": 117,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "5",
      "sourceCode": "def is_a_solution() returns good:",
      "assembly": [
        {
          "assembly": "DelVar good",
          "explain": "delete method variable good"
        }
      ]
    },
    {
      "initialPc": 118,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "14",
      "sourceCode": "assert not is_a_solution()",
      "assembly": [
        {
          "assembly": "AtomicInc(lazy)",
          "explain": "increment atomic counter of context; thread runs uninterrupted if larger than 0"
        }
      ]
    },
    {
      "initialPc": 119,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "14",
      "sourceCode": "assert not is_a_solution()",
      "assembly": [
        {
          "assembly": "ReadonlyInc",
          "explain": "increment readonly counter of context; thread cannot mutate shared variables if > 0"
        }
      ]
    },
    {
      "initialPc": 120,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "14",
      "sourceCode": "assert not is_a_solution()",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "push constant ()"
        }
      ]
    },
    {
      "initialPc": 121,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "14",
      "sourceCode": "assert not is_a_solution()",
      "assembly": [
        {
          "assembly": "Apply PC(25)",
          "explain": "call method PC(25)"
        }
      ]
    },
    {
      "initialPc": 122,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "14",
      "sourceCode": "assert not is_a_solution()",
      "assembly": [
        {
          "assembly": "1-ary not",
          "explain": "pop 1 value and push the result of applying not"
        }
      ]
    },
    {
      "initialPc": 123,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "14",
      "sourceCode": "assert not is_a_solution()",
      "assembly": [
        {
          "assembly": "Assert",
          "explain": "pop a condition and raise exception if condition is false"
        }
      ]
    },
    {
      "initialPc": 124,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "14",
      "sourceCode": "assert not is_a_solution()",
      "assembly": [
        {
          "assembly": "ReadonlyDec",
          "explain": "decrement readonly counter of context"
        }
      ]
    },
    {
      "initialPc": 125,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "14",
      "sourceCode": "assert not is_a_solution()",
      "assembly": [
        {
          "assembly": "AtomicDec",
          "explain": "decrement atomic counter of context"
        }
      ]
    },
    {
      "initialPc": 126,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "1",
      "sourceCode": "const N = 4",
      "assembly": [
        {
          "assembly": "ReturnOp(result. None)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 127,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/magic.hny",
      "line": "1",
      "sourceCode": "const N = 4",
      "assembly": [
        {
          "assembly": "DelVar result",
          "explain": "delete method variable result"
        }
      ]
    }
  ]
}