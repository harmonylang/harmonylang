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
      "duration": 12,
      "sharedValues": {
        "shared": true
      },
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
      "sharedValues": {
        "shared": true
      },
      "idToStackTrace": {
        "0": {
          "atomic": 1,
          "fullStatus": "terminated",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "terminated",
          "mode": "terminated",
          "tid": "0",
          "callStack": [
            {
              "callType": "process",
              "method": "__init__()",
              "vars": {},
              "pc": "27"
            }
          ]
        }
      },
      "tid": "0",
      "name": "__init__()",
      "macroStepIdx": 0
    },
    {
      "duration": 2,
      "sharedValues": {
        "shared": true
      },
      "idToStackTrace": {
        "0": {
          "atomic": 1,
          "fullStatus": "terminated",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "terminated",
          "mode": "terminated",
          "tid": "0",
          "callStack": [
            {
              "callType": "process",
              "method": "__init__()",
              "vars": {},
              "pc": "27"
            }
          ]
        },
        "2": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "g()",
              "pc": "14",
              "callType": "process",
              "vars": {}
            }
          ],
          "tid": "2",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 0
        }
      },
      "tid": "2",
      "name": "g()",
      "macroStepIdx": 1
    },
    {
      "duration": 1,
      "sharedValues": {
        "shared": false
      },
      "idToStackTrace": {
        "0": {
          "atomic": 1,
          "fullStatus": "terminated",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "terminated",
          "mode": "terminated",
          "tid": "0",
          "callStack": [
            {
              "callType": "process",
              "method": "__init__()",
              "vars": {},
              "pc": "27"
            }
          ]
        },
        "2": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "g()",
              "pc": "16",
              "callType": "process",
              "vars": {}
            }
          ],
          "tid": "2",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 0
        }
      },
      "tid": "2",
      "name": "g()",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "shared": false
      },
      "idToStackTrace": {
        "0": {
          "atomic": 1,
          "fullStatus": "terminated",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "terminated",
          "mode": "terminated",
          "tid": "0",
          "callStack": [
            {
              "callType": "process",
              "method": "__init__()",
              "vars": {},
              "pc": "27"
            }
          ]
        },
        "2": {
          "atomic": 0,
          "fullStatus": "terminated",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "terminated",
          "mode": "terminated",
          "tid": "2",
          "callStack": [
            {
              "callType": "process",
              "method": "g()",
              "vars": {},
              "pc": "16"
            }
          ]
        }
      },
      "tid": "2",
      "name": "g()",
      "macroStepIdx": 2
    },
    {
      "duration": 1,
      "sharedValues": {
        "shared": false
      },
      "idToStackTrace": {
        "0": {
          "atomic": 1,
          "fullStatus": "terminated",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "terminated",
          "mode": "terminated",
          "tid": "0",
          "callStack": [
            {
              "callType": "process",
              "method": "__init__()",
              "vars": {},
              "pc": "27"
            }
          ]
        },
        "1": {
          "atomic": 0,
          "fullStatus": "runnable",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "runnable",
          "mode": "runnable",
          "tid": "1",
          "callStack": [
            {
              "callType": "process",
              "method": "f()",
              "vars": {},
              "pc": "5"
            }
          ]
        },
        "2": {
          "atomic": 0,
          "fullStatus": "terminated",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "terminated",
          "mode": "terminated",
          "tid": "2",
          "callStack": [
            {
              "callType": "process",
              "method": "g()",
              "vars": {},
              "pc": "16"
            }
          ]
        }
      },
      "tid": "1",
      "name": "f()",
      "macroStepIdx": 3
    },
    {
      "duration": 1,
      "sharedValues": {
        "shared": false
      },
      "idToStackTrace": {
        "0": {
          "atomic": 1,
          "fullStatus": "terminated",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "terminated",
          "mode": "terminated",
          "tid": "0",
          "callStack": [
            {
              "callType": "process",
              "method": "__init__()",
              "vars": {},
              "pc": "27"
            }
          ]
        },
        "1": {
          "atomic": 1,
          "fullStatus": "running atomic",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "running",
          "tid": "1",
          "callStack": [
            {
              "method": "f()",
              "pc": "6",
              "callType": "process",
              "vars": {}
            }
          ]
        },
        "2": {
          "atomic": 0,
          "fullStatus": "terminated",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "terminated",
          "mode": "terminated",
          "tid": "2",
          "callStack": [
            {
              "callType": "process",
              "method": "g()",
              "vars": {},
              "pc": "16"
            }
          ]
        }
      },
      "tid": "1",
      "name": "f()",
      "macroStepIdx": 0
    },
    {
      "duration": 2,
      "sharedValues": {
        "shared": false
      },
      "idToStackTrace": {
        "0": {
          "atomic": 1,
          "fullStatus": "terminated",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "terminated",
          "mode": "terminated",
          "tid": "0",
          "callStack": [
            {
              "callType": "process",
              "method": "__init__()",
              "vars": {},
              "pc": "27"
            }
          ]
        },
        "1": {
          "atomic": 1,
          "fullStatus": "running atomic read-only",
          "interruptLevel": 0,
          "readonly": 1,
          "status": "running",
          "tid": "1",
          "callStack": [
            {
              "method": "f()",
              "pc": "6",
              "callType": "process",
              "vars": {}
            }
          ]
        },
        "2": {
          "atomic": 0,
          "fullStatus": "terminated",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "terminated",
          "mode": "terminated",
          "tid": "2",
          "callStack": [
            {
              "callType": "process",
              "method": "g()",
              "vars": {},
              "pc": "16"
            }
          ]
        }
      },
      "tid": "1",
      "name": "f()",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "shared": false
      },
      "idToStackTrace": {
        "0": {
          "atomic": 1,
          "fullStatus": "terminated",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "terminated",
          "mode": "terminated",
          "tid": "0",
          "callStack": [
            {
              "callType": "process",
              "method": "__init__()",
              "vars": {},
              "pc": "27"
            }
          ]
        },
        "1": {
          "atomic": 1,
          "fullStatus": "failed atomic read-only",
          "interruptLevel": 0,
          "readonly": 1,
          "status": "failed",
          "mode": "failed",
          "failure": "Harmony assertion failed",
          "tid": "1",
          "callStack": [
            {
              "callType": "process",
              "method": "f()",
              "vars": {},
              "pc": "8"
            }
          ]
        },
        "2": {
          "atomic": 0,
          "fullStatus": "terminated",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "terminated",
          "mode": "terminated",
          "tid": "2",
          "callStack": [
            {
              "callType": "process",
              "method": "g()",
              "vars": {},
              "pc": "16"
            }
          ]
        }
      },
      "tid": "1",
      "name": "f()",
      "macroStepIdx": 4
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
      "npc": 17
    },
    {
      "sliceIdx": 1,
      "time": 4,
      "pc": 17,
      "npc": 18
    },
    {
      "sliceIdx": 1,
      "time": 5,
      "pc": 18,
      "npc": 19
    },
    {
      "sliceIdx": 1,
      "time": 6,
      "pc": 19,
      "npc": 20
    },
    {
      "sliceIdx": 1,
      "time": 7,
      "pc": 20,
      "npc": 21
    },
    {
      "sliceIdx": 1,
      "time": 8,
      "pc": 21,
      "npc": 22
    },
    {
      "sliceIdx": 1,
      "time": 9,
      "pc": 22,
      "npc": 23
    },
    {
      "sliceIdx": 1,
      "time": 10,
      "pc": 23,
      "npc": 24
    },
    {
      "sliceIdx": 1,
      "time": 11,
      "pc": 24,
      "npc": 25
    },
    {
      "sliceIdx": 1,
      "time": 12,
      "pc": 25,
      "npc": 26
    },
    {
      "sliceIdx": 1,
      "time": 13,
      "pc": 26,
      "npc": 27
    },
    {
      "sliceIdx": 2,
      "time": 14,
      "pc": 27,
      "npc": 27
    },
    {
      "pc": 13,
      "npc": 14,
      "sliceIdx": 3,
      "time": 15
    },
    {
      "sliceIdx": 3,
      "time": 16,
      "pc": 14,
      "npc": 15
    },
    {
      "pc": 15,
      "npc": 16,
      "sliceIdx": 4,
      "time": 17
    },
    {
      "sliceIdx": 5,
      "time": 18,
      "pc": 16,
      "npc": 16
    },
    {
      "pc": 4,
      "npc": 5,
      "sliceIdx": 6,
      "time": 19
    },
    {
      "pc": 5,
      "npc": 6,
      "sliceIdx": 7,
      "time": 20
    },
    {
      "sliceIdx": 8,
      "time": 21,
      "pc": 6,
      "npc": 7
    },
    {
      "sliceIdx": 8,
      "time": 22,
      "pc": 7,
      "npc": 8
    },
    {
      "sliceIdx": 9,
      "time": 23,
      "pc": 8,
      "npc": 8
    }
  ],
  "macroSteps": [
    {
      "tid": "0",
      "name": "__init__()",
      "duration": 15,
      "startSliceIdx": 0,
      "lastSliceIdx": 3
    },
    {
      "tid": "2",
      "name": "g()",
      "duration": 2,
      "startSliceIdx": 3,
      "lastSliceIdx": 4
    },
    {
      "tid": "2",
      "name": "g()",
      "duration": 2,
      "startSliceIdx": 4,
      "lastSliceIdx": 6
    },
    {
      "tid": "1",
      "name": "f()",
      "duration": 1,
      "startSliceIdx": 6,
      "lastSliceIdx": 7
    },
    {
      "tid": "1",
      "name": "f()",
      "duration": 4,
      "startSliceIdx": 7,
      "lastSliceIdx": 10
    }
  ],
  "idToThreadName": {
    "0": "__init__()",
    "1": "f()",
    "2": "g()"
  },
  "executedCode": [
    {
      "initialPc": 0,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/prog2.hny",
      "line": "1",
      "sourceCode": "shared = True",
      "assembly": [
        {
          "assembly": "Frame __init__()",
          "explain": "start of method __init__"
        }
      ]
    },
    {
      "initialPc": 1,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/prog2.hny",
      "line": "1",
      "sourceCode": "shared = True",
      "assembly": [
        {
          "assembly": "Push True",
          "explain": "push constant True"
        }
      ]
    },
    {
      "initialPc": 2,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/prog2.hny",
      "line": "1",
      "sourceCode": "shared = True",
      "assembly": [
        {
          "assembly": "Store shared",
          "explain": "pop a value and store it in shared variable shared"
        }
      ]
    },
    {
      "initialPc": 3,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/prog2.hny",
      "line": "3",
      "sourceCode": "def f(): assert shared",
      "assembly": [
        {
          "assembly": "Jump 17",
          "explain": "jump over method definition: set program counter to 17"
        }
      ]
    },
    {
      "initialPc": 4,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/prog2.hny",
      "line": "3",
      "sourceCode": "def f(): assert shared",
      "assembly": [
        {
          "assembly": "Frame f()",
          "explain": "start of method f"
        }
      ]
    },
    {
      "initialPc": 5,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/prog2.hny",
      "line": "3",
      "sourceCode": "def f(): assert shared",
      "assembly": [
        {
          "assembly": "AtomicInc(lazy)",
          "explain": "increment atomic counter of context; thread runs uninterrupted if larger than 0"
        }
      ]
    },
    {
      "initialPc": 6,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/prog2.hny",
      "line": "3",
      "sourceCode": "def f(): assert shared",
      "assembly": [
        {
          "assembly": "ReadonlyInc",
          "explain": "increment readonly counter of context; thread cannot mutate shared variables if > 0"
        }
      ]
    },
    {
      "initialPc": 7,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/prog2.hny",
      "line": "3",
      "sourceCode": "def f(): assert shared",
      "assembly": [
        {
          "assembly": "Load shared",
          "explain": "push value of shared variable shared"
        }
      ]
    },
    {
      "initialPc": 8,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/prog2.hny",
      "line": "3",
      "sourceCode": "def f(): assert shared",
      "assembly": [
        {
          "assembly": "Assert",
          "explain": "pop a condition and raise exception if condition is false"
        }
      ]
    },
    {
      "initialPc": 9,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/prog2.hny",
      "line": "3",
      "sourceCode": "def f(): assert shared",
      "assembly": [
        {
          "assembly": "ReadonlyDec",
          "explain": "decrement readonly counter of context"
        }
      ]
    },
    {
      "initialPc": 10,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/prog2.hny",
      "line": "3",
      "sourceCode": "def f(): assert shared",
      "assembly": [
        {
          "assembly": "AtomicDec",
          "explain": "decrement atomic counter of context"
        }
      ]
    },
    {
      "initialPc": 11,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/prog2.hny",
      "line": "3",
      "sourceCode": "def f(): assert shared",
      "assembly": [
        {
          "assembly": "ReturnOp(result. None)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 12,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/prog2.hny",
      "line": "4",
      "sourceCode": "def g(): shared = False",
      "assembly": [
        {
          "assembly": "Jump 17",
          "explain": "jump over method definition: set program counter to 17"
        }
      ]
    },
    {
      "initialPc": 13,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/prog2.hny",
      "line": "4",
      "sourceCode": "def g(): shared = False",
      "assembly": [
        {
          "assembly": "Frame g()",
          "explain": "start of method g"
        }
      ]
    },
    {
      "initialPc": 14,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/prog2.hny",
      "line": "4",
      "sourceCode": "def g(): shared = False",
      "assembly": [
        {
          "assembly": "Push False",
          "explain": "push constant False"
        }
      ]
    },
    {
      "initialPc": 15,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/prog2.hny",
      "line": "4",
      "sourceCode": "def g(): shared = False",
      "assembly": [
        {
          "assembly": "Store shared",
          "explain": "pop a value and store it in shared variable shared"
        }
      ]
    },
    {
      "initialPc": 16,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/prog2.hny",
      "line": "4",
      "sourceCode": "def g(): shared = False",
      "assembly": [
        {
          "assembly": "ReturnOp(result. None)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 17,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/prog2.hny",
      "line": "6",
      "sourceCode": "spawn f()",
      "assembly": [
        {
          "assembly": "Push ?PC(4)",
          "explain": "push constant ?PC(4)"
        }
      ]
    },
    {
      "initialPc": 18,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/prog2.hny",
      "line": "6",
      "sourceCode": "spawn f()",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "push constant ()"
        }
      ]
    },
    {
      "initialPc": 19,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/prog2.hny",
      "line": "6",
      "sourceCode": "spawn f()",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 20,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/prog2.hny",
      "line": "6",
      "sourceCode": "spawn f()",
      "assembly": [
        {
          "assembly": "Push {:}",
          "explain": "push constant {:}"
        }
      ]
    },
    {
      "initialPc": 21,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/prog2.hny",
      "line": "6",
      "sourceCode": "spawn f()",
      "assembly": [
        {
          "assembly": "Spawn",
          "explain": "pop thread-local state, argument, and pc and spawn a new thread"
        }
      ]
    },
    {
      "initialPc": 22,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/prog2.hny",
      "line": "7",
      "sourceCode": "spawn g()",
      "assembly": [
        {
          "assembly": "Push ?PC(13)",
          "explain": "push constant ?PC(13)"
        }
      ]
    },
    {
      "initialPc": 23,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/prog2.hny",
      "line": "7",
      "sourceCode": "spawn g()",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "push constant ()"
        }
      ]
    },
    {
      "initialPc": 24,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/prog2.hny",
      "line": "7",
      "sourceCode": "spawn g()",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 25,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/prog2.hny",
      "line": "7",
      "sourceCode": "spawn g()",
      "assembly": [
        {
          "assembly": "Push {:}",
          "explain": "push constant {:}"
        }
      ]
    },
    {
      "initialPc": 26,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/prog2.hny",
      "line": "7",
      "sourceCode": "spawn g()",
      "assembly": [
        {
          "assembly": "Spawn",
          "explain": "pop thread-local state, argument, and pc and spawn a new thread"
        }
      ]
    },
    {
      "initialPc": 27,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/prog2.hny",
      "line": "1",
      "sourceCode": "shared = True",
      "assembly": [
        {
          "assembly": "ReturnOp(result. None)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 28,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/prog2.hny",
      "line": "1",
      "sourceCode": "shared = True",
      "assembly": [
        {
          "assembly": "DelVar result",
          "explain": "delete method variable result"
        }
      ]
    }
  ]
}