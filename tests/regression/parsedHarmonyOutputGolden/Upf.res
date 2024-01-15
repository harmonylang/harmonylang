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
      "duration": 14,
      "sharedValues": {
        "count": 0
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
        "count": 0
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
              "pc": "28"
            }
          ]
        }
      },
      "tid": "0",
      "name": "__init__()",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "count": 0
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
              "pc": "28"
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
              "method": "incrementer()",
              "vars": {},
              "pc": "13"
            }
          ]
        }
      },
      "tid": "1",
      "name": "incrementer()",
      "macroStepIdx": 1
    },
    {
      "duration": 3,
      "sharedValues": {
        "count": 0
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
              "pc": "28"
            }
          ]
        },
        "1": {
          "atomic": 0,
          "fullStatus": "running",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "running",
          "tid": "1",
          "callStack": [
            {
              "method": "incrementer()",
              "pc": "14",
              "callType": "process",
              "vars": {}
            }
          ]
        }
      },
      "tid": "1",
      "name": "incrementer()",
      "macroStepIdx": 2
    },
    {
      "duration": 1,
      "sharedValues": {
        "count": 0
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
              "pc": "28"
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
              "method": "incrementer()",
              "pc": "14",
              "callType": "process",
              "vars": {}
            }
          ]
        },
        "2": {
          "atomic": 0,
          "fullStatus": "runnable",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "runnable",
          "mode": "runnable",
          "tid": "2",
          "callStack": [
            {
              "callType": "process",
              "method": "incrementer()",
              "vars": {},
              "pc": "13"
            }
          ]
        }
      },
      "tid": "2",
      "name": "incrementer()",
      "macroStepIdx": 3
    },
    {
      "duration": 3,
      "sharedValues": {
        "count": 0
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
              "pc": "28"
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
              "method": "incrementer()",
              "pc": "14",
              "callType": "process",
              "vars": {}
            }
          ]
        },
        "2": {
          "atomic": 0,
          "fullStatus": "running",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "running",
          "tid": "2",
          "callStack": [
            {
              "method": "incrementer()",
              "pc": "14",
              "callType": "process",
              "vars": {}
            }
          ]
        }
      },
      "tid": "2",
      "name": "incrementer()",
      "macroStepIdx": 4
    },
    {
      "duration": 1,
      "sharedValues": {
        "count": 1
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
              "pc": "28"
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
              "method": "incrementer()",
              "pc": "14",
              "callType": "process",
              "vars": {}
            }
          ]
        },
        "2": {
          "atomic": 0,
          "fullStatus": "running",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "running",
          "tid": "2",
          "callStack": [
            {
              "method": "incrementer()",
              "pc": "17",
              "callType": "process",
              "vars": {}
            }
          ]
        }
      },
      "tid": "2",
      "name": "incrementer()",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "count": 1
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
              "pc": "28"
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
              "method": "incrementer()",
              "pc": "14",
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
              "method": "incrementer()",
              "vars": {},
              "pc": "17"
            }
          ]
        }
      },
      "tid": "2",
      "name": "incrementer()",
      "macroStepIdx": 5
    },
    {
      "duration": 1,
      "sharedValues": {
        "count": 1
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
              "pc": "28"
            }
          ]
        },
        "1": {
          "atomic": 0,
          "fullStatus": "running",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "running",
          "tid": "1",
          "callStack": [
            {
              "method": "incrementer()",
              "pc": "17",
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
              "method": "incrementer()",
              "vars": {},
              "pc": "17"
            }
          ]
        }
      },
      "tid": "1",
      "name": "incrementer()",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "count": 1
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
              "pc": "28"
            }
          ]
        },
        "1": {
          "atomic": 0,
          "fullStatus": "terminated",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "terminated",
          "mode": "terminated",
          "tid": "1",
          "callStack": [
            {
              "callType": "process",
              "method": "incrementer()",
              "vars": {},
              "pc": "17"
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
              "method": "incrementer()",
              "vars": {},
              "pc": "17"
            }
          ]
        }
      },
      "tid": "1",
      "name": "incrementer()",
      "macroStepIdx": 6
    },
    {
      "duration": 4,
      "sharedValues": {
        "count": 1
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
              "pc": "28"
            }
          ]
        },
        "1": {
          "atomic": 0,
          "fullStatus": "terminated",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "terminated",
          "mode": "terminated",
          "tid": "1",
          "callStack": [
            {
              "callType": "process",
              "method": "incrementer()",
              "vars": {},
              "pc": "17"
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
              "method": "incrementer()",
              "vars": {},
              "pc": "17"
            }
          ]
        },
        "3": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "finally()",
              "pc": "5",
              "callType": "process",
              "vars": {}
            }
          ],
          "tid": "3",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 0
        }
      },
      "tid": "3",
      "name": "finally()",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "count": 1
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
              "pc": "28"
            }
          ]
        },
        "1": {
          "atomic": 0,
          "fullStatus": "terminated",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "terminated",
          "mode": "terminated",
          "tid": "1",
          "callStack": [
            {
              "callType": "process",
              "method": "incrementer()",
              "vars": {},
              "pc": "17"
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
              "method": "incrementer()",
              "vars": {},
              "pc": "17"
            }
          ]
        },
        "3": {
          "atomic": 1,
          "fullStatus": "failed atomic read-only",
          "interruptLevel": 0,
          "readonly": 1,
          "status": "failed",
          "mode": "failed",
          "failure": "Harmony assertion failed",
          "tid": "3",
          "callStack": [
            {
              "callType": "process",
              "method": "finally()",
              "vars": {},
              "pc": "8"
            }
          ]
        }
      },
      "tid": "3",
      "name": "finally()",
      "macroStepIdx": 7
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
      "npc": 10
    },
    {
      "sliceIdx": 1,
      "time": 4,
      "pc": 10,
      "npc": 11
    },
    {
      "sliceIdx": 1,
      "time": 5,
      "pc": 11,
      "npc": 18
    },
    {
      "sliceIdx": 1,
      "time": 6,
      "pc": 18,
      "npc": 19
    },
    {
      "sliceIdx": 1,
      "time": 7,
      "pc": 19,
      "npc": 20
    },
    {
      "sliceIdx": 1,
      "time": 8,
      "pc": 20,
      "npc": 21
    },
    {
      "sliceIdx": 1,
      "time": 9,
      "pc": 21,
      "npc": 22
    },
    {
      "sliceIdx": 1,
      "time": 10,
      "pc": 22,
      "npc": 23
    },
    {
      "sliceIdx": 1,
      "time": 11,
      "pc": 23,
      "npc": 24
    },
    {
      "sliceIdx": 1,
      "time": 12,
      "pc": 24,
      "npc": 25
    },
    {
      "sliceIdx": 1,
      "time": 13,
      "pc": 25,
      "npc": 26
    },
    {
      "sliceIdx": 1,
      "time": 14,
      "pc": 26,
      "npc": 27
    },
    {
      "sliceIdx": 1,
      "time": 15,
      "pc": 27,
      "npc": 28
    },
    {
      "sliceIdx": 2,
      "time": 16,
      "pc": 28,
      "npc": 28
    },
    {
      "pc": 12,
      "npc": 13,
      "sliceIdx": 3,
      "time": 17
    },
    {
      "pc": 13,
      "npc": 14,
      "sliceIdx": 4,
      "time": 18
    },
    {
      "sliceIdx": 4,
      "time": 19,
      "pc": 14,
      "npc": 15
    },
    {
      "sliceIdx": 4,
      "time": 20,
      "pc": 15,
      "npc": 16
    },
    {
      "pc": 12,
      "npc": 13,
      "sliceIdx": 5,
      "time": 21
    },
    {
      "pc": 13,
      "npc": 14,
      "sliceIdx": 6,
      "time": 22
    },
    {
      "sliceIdx": 6,
      "time": 23,
      "pc": 14,
      "npc": 15
    },
    {
      "sliceIdx": 6,
      "time": 24,
      "pc": 15,
      "npc": 16
    },
    {
      "pc": 16,
      "npc": 17,
      "sliceIdx": 7,
      "time": 25
    },
    {
      "sliceIdx": 8,
      "time": 26,
      "pc": 17,
      "npc": 17
    },
    {
      "pc": 16,
      "npc": 17,
      "sliceIdx": 9,
      "time": 27
    },
    {
      "sliceIdx": 10,
      "time": 28,
      "pc": 17,
      "npc": 17
    },
    {
      "pc": 4,
      "npc": 5,
      "sliceIdx": 11,
      "time": 29
    },
    {
      "sliceIdx": 11,
      "time": 30,
      "pc": 5,
      "npc": 6
    },
    {
      "sliceIdx": 11,
      "time": 31,
      "pc": 6,
      "npc": 7
    },
    {
      "sliceIdx": 11,
      "time": 32,
      "pc": 7,
      "npc": 8
    },
    {
      "sliceIdx": 12,
      "time": 33,
      "pc": 8,
      "npc": 8
    }
  ],
  "macroSteps": [
    {
      "tid": "0",
      "name": "__init__()",
      "duration": 17,
      "startSliceIdx": 0,
      "lastSliceIdx": 3
    },
    {
      "tid": "1",
      "name": "incrementer()",
      "duration": 1,
      "startSliceIdx": 3,
      "lastSliceIdx": 4
    },
    {
      "tid": "1",
      "name": "incrementer()",
      "duration": 3,
      "startSliceIdx": 4,
      "lastSliceIdx": 5
    },
    {
      "tid": "2",
      "name": "incrementer()",
      "duration": 1,
      "startSliceIdx": 5,
      "lastSliceIdx": 6
    },
    {
      "tid": "2",
      "name": "incrementer()",
      "duration": 3,
      "startSliceIdx": 6,
      "lastSliceIdx": 7
    },
    {
      "tid": "2",
      "name": "incrementer()",
      "duration": 2,
      "startSliceIdx": 7,
      "lastSliceIdx": 9
    },
    {
      "tid": "1",
      "name": "incrementer()",
      "duration": 2,
      "startSliceIdx": 9,
      "lastSliceIdx": 11
    },
    {
      "tid": "3",
      "name": "finally()",
      "duration": 5,
      "startSliceIdx": 11,
      "lastSliceIdx": 13
    }
  ],
  "idToThreadName": {
    "0": "__init__()",
    "1": "incrementer()",
    "2": "incrementer()",
    "3": "finally()"
  },
  "executedCode": [
    {
      "initialPc": 0,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Upf.hny",
      "line": "1",
      "sourceCode": "count = 0",
      "assembly": [
        {
          "assembly": "Frame __init__()",
          "explain": "start of method __init__"
        }
      ]
    },
    {
      "initialPc": 1,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Upf.hny",
      "line": "1",
      "sourceCode": "count = 0",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 2,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Upf.hny",
      "line": "1",
      "sourceCode": "count = 0",
      "assembly": [
        {
          "assembly": "Store count",
          "explain": "pop a value and store it in shared variable count"
        }
      ]
    },
    {
      "initialPc": 3,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Upf.hny",
      "line": "3",
      "sourceCode": "finally count == 2",
      "assembly": [
        {
          "assembly": "Jump 10",
          "explain": "jump over finally definition: set program counter to 10"
        }
      ]
    },
    {
      "initialPc": 4,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Upf.hny",
      "line": "3",
      "sourceCode": "finally count == 2",
      "assembly": [
        {
          "assembly": "Frame finally()",
          "explain": "start of method finally"
        }
      ]
    },
    {
      "initialPc": 5,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Upf.hny",
      "line": "3",
      "sourceCode": "finally count == 2",
      "assembly": [
        {
          "assembly": "Load count",
          "explain": "push value of shared variable count"
        }
      ]
    },
    {
      "initialPc": 6,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Upf.hny",
      "line": "3",
      "sourceCode": "finally count == 2",
      "assembly": [
        {
          "assembly": "Push 2",
          "explain": "push constant 2"
        }
      ]
    },
    {
      "initialPc": 7,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Upf.hny",
      "line": "3",
      "sourceCode": "finally count == 2",
      "assembly": [
        {
          "assembly": "2-ary ==",
          "explain": "pop 2 values and push the result of applying =="
        }
      ]
    },
    {
      "initialPc": 8,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Upf.hny",
      "line": "3",
      "sourceCode": "finally count == 2",
      "assembly": [
        {
          "assembly": "Assert",
          "explain": "pop a condition and raise exception if condition is false"
        }
      ]
    },
    {
      "initialPc": 9,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Upf.hny",
      "line": "3",
      "sourceCode": "finally count == 2",
      "assembly": [
        {
          "assembly": "ReturnOp(result. None)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 10,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Upf.hny",
      "line": "3",
      "sourceCode": "finally count == 2",
      "assembly": [
        {
          "assembly": "Finally 4",
          "explain": "test predicate over final state"
        }
      ]
    },
    {
      "initialPc": 11,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Upf.hny",
      "line": "5",
      "sourceCode": "def incrementer():",
      "assembly": [
        {
          "assembly": "Jump 18",
          "explain": "jump over method definition: set program counter to 18"
        }
      ]
    },
    {
      "initialPc": 12,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Upf.hny",
      "line": "5",
      "sourceCode": "def incrementer():",
      "assembly": [
        {
          "assembly": "Frame incrementer()",
          "explain": "start of method incrementer"
        }
      ]
    },
    {
      "initialPc": 13,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Upf.hny",
      "line": "6",
      "sourceCode": "    count = count + 1",
      "assembly": [
        {
          "assembly": "Load count",
          "explain": "push value of shared variable count"
        }
      ]
    },
    {
      "initialPc": 14,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Upf.hny",
      "line": "6",
      "sourceCode": "    count = count + 1",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 15,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Upf.hny",
      "line": "6",
      "sourceCode": "    count = count + 1",
      "assembly": [
        {
          "assembly": "2-ary +",
          "explain": "pop 2 values and push the result of applying +"
        }
      ]
    },
    {
      "initialPc": 16,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Upf.hny",
      "line": "6",
      "sourceCode": "    count = count + 1",
      "assembly": [
        {
          "assembly": "Store count",
          "explain": "pop a value and store it in shared variable count"
        }
      ]
    },
    {
      "initialPc": 17,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Upf.hny",
      "line": "5",
      "sourceCode": "def incrementer():",
      "assembly": [
        {
          "assembly": "ReturnOp(result. None)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 18,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Upf.hny",
      "line": "8",
      "sourceCode": "spawn incrementer()",
      "assembly": [
        {
          "assembly": "Push ?PC(12)",
          "explain": "push constant ?PC(12)"
        }
      ]
    },
    {
      "initialPc": 19,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Upf.hny",
      "line": "8",
      "sourceCode": "spawn incrementer()",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "push constant ()"
        }
      ]
    },
    {
      "initialPc": 20,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Upf.hny",
      "line": "8",
      "sourceCode": "spawn incrementer()",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 21,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Upf.hny",
      "line": "8",
      "sourceCode": "spawn incrementer()",
      "assembly": [
        {
          "assembly": "Push {:}",
          "explain": "push constant {:}"
        }
      ]
    },
    {
      "initialPc": 22,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Upf.hny",
      "line": "8",
      "sourceCode": "spawn incrementer()",
      "assembly": [
        {
          "assembly": "Spawn",
          "explain": "pop thread-local state, argument, and pc and spawn a new thread"
        }
      ]
    },
    {
      "initialPc": 23,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Upf.hny",
      "line": "9",
      "sourceCode": "spawn incrementer()",
      "assembly": [
        {
          "assembly": "Push ?PC(12)",
          "explain": "push constant ?PC(12)"
        }
      ]
    },
    {
      "initialPc": 24,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Upf.hny",
      "line": "9",
      "sourceCode": "spawn incrementer()",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "push constant ()"
        }
      ]
    },
    {
      "initialPc": 25,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Upf.hny",
      "line": "9",
      "sourceCode": "spawn incrementer()",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 26,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Upf.hny",
      "line": "9",
      "sourceCode": "spawn incrementer()",
      "assembly": [
        {
          "assembly": "Push {:}",
          "explain": "push constant {:}"
        }
      ]
    },
    {
      "initialPc": 27,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Upf.hny",
      "line": "9",
      "sourceCode": "spawn incrementer()",
      "assembly": [
        {
          "assembly": "Spawn",
          "explain": "pop thread-local state, argument, and pc and spawn a new thread"
        }
      ]
    },
    {
      "initialPc": 28,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Upf.hny",
      "line": "1",
      "sourceCode": "count = 0",
      "assembly": [
        {
          "assembly": "ReturnOp(result. None)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 29,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Upf.hny",
      "line": "1",
      "sourceCode": "count = 0",
      "assembly": [
        {
          "assembly": "DelVar result",
          "explain": "delete method variable result"
        }
      ]
    }
  ]
}