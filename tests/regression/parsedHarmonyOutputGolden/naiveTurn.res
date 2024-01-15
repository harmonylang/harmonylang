{
  "state": "Issues found",
  "issue": "Non-terminating state",
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
      "duration": 4,
      "sharedValues": {
        "in_cs": 0
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
      "duration": 12,
      "sharedValues": {
        "in_cs": 0,
        "turn": 0
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
        "in_cs": 0,
        "turn": 0
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
              "pc": "61"
            }
          ]
        }
      },
      "tid": "0",
      "name": "__init__()",
      "macroStepIdx": 0
    },
    {
      "duration": 6,
      "sharedValues": {
        "in_cs": 0,
        "turn": 0
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
              "pc": "61"
            }
          ]
        },
        "1": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "thread(0)",
              "pc": "19",
              "callType": "process",
              "vars": {
                "self": 0
              }
            }
          ],
          "tid": "1",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 0
        }
      },
      "tid": "1",
      "name": "thread(0)",
      "macroStepIdx": 1
    },
    {
      "duration": 5,
      "sharedValues": {
        "in_cs": 0,
        "turn": 0
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
              "pc": "61"
            }
          ]
        },
        "1": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "thread(0)",
              "pc": "25",
              "callType": "process",
              "vars": {
                "self": 0
              }
            }
          ],
          "tid": "1",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 0,
          "chosen": true
        }
      },
      "tid": "1",
      "name": "thread(0)",
      "macroStepIdx": 2
    },
    {
      "duration": 1,
      "sharedValues": {
        "in_cs": 0,
        "turn": 1
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
              "pc": "61"
            }
          ]
        },
        "1": {
          "atomic": 0,
          "fullStatus": "blocked",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "blocked",
          "mode": "blocked",
          "tid": "1",
          "callStack": [
            {
              "callType": "process",
              "method": "thread(0)",
              "vars": {
                "self": 0
              },
              "pc": "30"
            }
          ]
        }
      },
      "tid": "1",
      "name": "thread(0)",
      "macroStepIdx": 3
    },
    {
      "duration": 6,
      "sharedValues": {
        "in_cs": 0,
        "turn": 1
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
              "pc": "61"
            }
          ]
        },
        "1": {
          "atomic": 0,
          "fullStatus": "blocked",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "blocked",
          "mode": "blocked",
          "tid": "1",
          "callStack": [
            {
              "callType": "process",
              "method": "thread(0)",
              "vars": {
                "self": 0
              },
              "pc": "30"
            }
          ]
        },
        "2": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "thread(1)",
              "pc": "19",
              "callType": "process",
              "vars": {
                "self": 1
              }
            }
          ],
          "tid": "2",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 0
        }
      },
      "tid": "2",
      "name": "thread(1)",
      "macroStepIdx": 4
    },
    {
      "duration": 2,
      "sharedValues": {
        "in_cs": 0,
        "turn": 1
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
              "pc": "61"
            }
          ]
        },
        "1": {
          "atomic": 0,
          "fullStatus": "blocked",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "blocked",
          "mode": "blocked",
          "tid": "1",
          "callStack": [
            {
              "callType": "process",
              "method": "thread(0)",
              "vars": {
                "self": 0
              },
              "pc": "30"
            }
          ]
        },
        "2": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "thread(1)",
              "pc": "25",
              "callType": "process",
              "vars": {
                "self": 1
              }
            }
          ],
          "tid": "2",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 0,
          "chosen": false
        }
      },
      "tid": "2",
      "name": "thread(1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "in_cs": 0,
        "turn": 1
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
              "pc": "61"
            }
          ]
        },
        "1": {
          "atomic": 0,
          "fullStatus": "blocked",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "blocked",
          "mode": "blocked",
          "tid": "1",
          "callStack": [
            {
              "callType": "process",
              "method": "thread(0)",
              "vars": {
                "self": 0
              },
              "pc": "30"
            }
          ]
        },
        "2": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "thread(1)",
              "pc": "25",
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
      "name": "thread(1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "in_cs": 0,
        "turn": 1
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
              "pc": "61"
            }
          ]
        },
        "1": {
          "atomic": 0,
          "fullStatus": "blocked",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "blocked",
          "mode": "blocked",
          "tid": "1",
          "callStack": [
            {
              "callType": "process",
              "method": "thread(0)",
              "vars": {
                "self": 0
              },
              "pc": "30"
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
              "method": "thread(1)",
              "vars": {},
              "pc": "50"
            }
          ]
        }
      },
      "tid": "2",
      "name": "thread(1)",
      "macroStepIdx": 5
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
      "npc": 14
    },
    {
      "sliceIdx": 1,
      "time": 4,
      "pc": 14,
      "npc": 15
    },
    {
      "sliceIdx": 1,
      "time": 5,
      "pc": 15,
      "npc": 16
    },
    {
      "sliceIdx": 2,
      "time": 6,
      "pc": 16,
      "npc": 17
    },
    {
      "sliceIdx": 2,
      "time": 7,
      "pc": 17,
      "npc": 51
    },
    {
      "sliceIdx": 2,
      "time": 8,
      "pc": 51,
      "npc": 52
    },
    {
      "sliceIdx": 2,
      "time": 9,
      "pc": 52,
      "npc": 53
    },
    {
      "sliceIdx": 2,
      "time": 10,
      "pc": 53,
      "npc": 54
    },
    {
      "sliceIdx": 2,
      "time": 11,
      "pc": 54,
      "npc": 55
    },
    {
      "sliceIdx": 2,
      "time": 12,
      "pc": 55,
      "npc": 56
    },
    {
      "sliceIdx": 2,
      "time": 13,
      "pc": 56,
      "npc": 57
    },
    {
      "sliceIdx": 2,
      "time": 14,
      "pc": 57,
      "npc": 58
    },
    {
      "sliceIdx": 2,
      "time": 15,
      "pc": 58,
      "npc": 59
    },
    {
      "sliceIdx": 2,
      "time": 16,
      "pc": 59,
      "npc": 60
    },
    {
      "sliceIdx": 2,
      "time": 17,
      "pc": 60,
      "npc": 61
    },
    {
      "sliceIdx": 3,
      "time": 18,
      "pc": 61,
      "npc": 61
    },
    {
      "pc": 18,
      "npc": 19,
      "sliceIdx": 4,
      "time": 19
    },
    {
      "sliceIdx": 4,
      "time": 20,
      "pc": 19,
      "npc": 20
    },
    {
      "sliceIdx": 4,
      "time": 21,
      "pc": 20,
      "npc": 21
    },
    {
      "sliceIdx": 4,
      "time": 22,
      "pc": 21,
      "npc": 22
    },
    {
      "sliceIdx": 4,
      "time": 23,
      "pc": 22,
      "npc": 23
    },
    {
      "sliceIdx": 4,
      "time": 24,
      "pc": 23,
      "npc": 24
    },
    {
      "pc": 24,
      "npc": 25,
      "sliceIdx": 5,
      "time": 25
    },
    {
      "sliceIdx": 5,
      "time": 26,
      "pc": 25,
      "npc": 26
    },
    {
      "sliceIdx": 5,
      "time": 27,
      "pc": 26,
      "npc": 27
    },
    {
      "sliceIdx": 5,
      "time": 28,
      "pc": 27,
      "npc": 28
    },
    {
      "sliceIdx": 5,
      "time": 29,
      "pc": 28,
      "npc": 29
    },
    {
      "pc": 29,
      "npc": 30,
      "sliceIdx": 6,
      "time": 30
    },
    {
      "pc": 18,
      "npc": 19,
      "sliceIdx": 7,
      "time": 31
    },
    {
      "sliceIdx": 7,
      "time": 32,
      "pc": 19,
      "npc": 20
    },
    {
      "sliceIdx": 7,
      "time": 33,
      "pc": 20,
      "npc": 21
    },
    {
      "sliceIdx": 7,
      "time": 34,
      "pc": 21,
      "npc": 22
    },
    {
      "sliceIdx": 7,
      "time": 35,
      "pc": 22,
      "npc": 23
    },
    {
      "sliceIdx": 7,
      "time": 36,
      "pc": 23,
      "npc": 24
    },
    {
      "pc": 24,
      "npc": 25,
      "sliceIdx": 8,
      "time": 37
    },
    {
      "sliceIdx": 8,
      "time": 38,
      "pc": 25,
      "npc": 49
    },
    {
      "sliceIdx": 9,
      "time": 39,
      "pc": 49,
      "npc": 50
    },
    {
      "sliceIdx": 10,
      "time": 40,
      "pc": 50,
      "npc": 50
    }
  ],
  "macroSteps": [
    {
      "tid": "0",
      "name": "__init__()",
      "duration": 19,
      "startSliceIdx": 0,
      "lastSliceIdx": 4
    },
    {
      "tid": "1",
      "name": "thread(0)",
      "duration": 6,
      "startSliceIdx": 4,
      "lastSliceIdx": 5
    },
    {
      "tid": "1",
      "name": "thread(0)",
      "duration": 5,
      "startSliceIdx": 5,
      "lastSliceIdx": 6
    },
    {
      "tid": "1",
      "name": "thread(0)",
      "duration": 1,
      "startSliceIdx": 6,
      "lastSliceIdx": 7
    },
    {
      "tid": "2",
      "name": "thread(1)",
      "duration": 6,
      "startSliceIdx": 7,
      "lastSliceIdx": 8
    },
    {
      "tid": "2",
      "name": "thread(1)",
      "duration": 4,
      "startSliceIdx": 8,
      "lastSliceIdx": 11
    }
  ],
  "idToThreadName": {
    "0": "__init__()",
    "1": "thread(0)",
    "2": "thread(1)"
  },
  "executedCode": [
    {
      "initialPc": 0,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "1",
      "sourceCode": "in_cs = 0",
      "assembly": [
        {
          "assembly": "Frame __init__()",
          "explain": "start of method __init__"
        }
      ]
    },
    {
      "initialPc": 1,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "1",
      "sourceCode": "in_cs = 0",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 2,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "1",
      "sourceCode": "in_cs = 0",
      "assembly": [
        {
          "assembly": "Store in_cs",
          "explain": "pop a value and store it in shared variable in_cs"
        }
      ]
    },
    {
      "initialPc": 3,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "2",
      "sourceCode": "invariant in_cs in { 0, 1 }",
      "assembly": [
        {
          "assembly": "Jump 14",
          "explain": "jump over invariant definition: set program counter to 14"
        }
      ]
    },
    {
      "initialPc": 4,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "2",
      "sourceCode": "invariant in_cs in { 0, 1 }",
      "assembly": [
        {
          "assembly": "Frame invariant()",
          "explain": "start of method invariant"
        }
      ]
    },
    {
      "initialPc": 5,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "2",
      "sourceCode": "invariant in_cs in { 0, 1 }",
      "assembly": [
        {
          "assembly": "Load in_cs",
          "explain": "push value of shared variable in_cs"
        }
      ]
    },
    {
      "initialPc": 6,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "2",
      "sourceCode": "invariant in_cs in { 0, 1 }",
      "assembly": [
        {
          "assembly": "Push {}",
          "explain": "push constant {}"
        }
      ]
    },
    {
      "initialPc": 7,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "2",
      "sourceCode": "invariant in_cs in { 0, 1 }",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 8,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "2",
      "sourceCode": "invariant in_cs in { 0, 1 }",
      "assembly": [
        {
          "assembly": "2-ary SetAdd",
          "explain": "pop 2 values and push the result of applying SetAdd"
        }
      ]
    },
    {
      "initialPc": 9,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "2",
      "sourceCode": "invariant in_cs in { 0, 1 }",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 10,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "2",
      "sourceCode": "invariant in_cs in { 0, 1 }",
      "assembly": [
        {
          "assembly": "2-ary SetAdd",
          "explain": "pop 2 values and push the result of applying SetAdd"
        }
      ]
    },
    {
      "initialPc": 11,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "2",
      "sourceCode": "invariant in_cs in { 0, 1 }",
      "assembly": [
        {
          "assembly": "2-ary in",
          "explain": "pop 2 values and push the result of applying in"
        }
      ]
    },
    {
      "initialPc": 12,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "2",
      "sourceCode": "invariant in_cs in { 0, 1 }",
      "assembly": [
        {
          "assembly": "Assert",
          "explain": "pop a condition and raise exception if condition is false"
        }
      ]
    },
    {
      "initialPc": 13,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "2",
      "sourceCode": "invariant in_cs in { 0, 1 }",
      "assembly": [
        {
          "assembly": "ReturnOp(result. None)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 14,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "2",
      "sourceCode": "invariant in_cs in { 0, 1 }",
      "assembly": [
        {
          "assembly": "Invariant 4",
          "explain": "test invariant"
        }
      ]
    },
    {
      "initialPc": 15,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "4",
      "sourceCode": "turn = 0",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 16,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "4",
      "sourceCode": "turn = 0",
      "assembly": [
        {
          "assembly": "Store turn",
          "explain": "pop a value and store it in shared variable turn"
        }
      ]
    },
    {
      "initialPc": 17,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "6",
      "sourceCode": "def thread(self):",
      "assembly": [
        {
          "assembly": "Jump 51",
          "explain": "jump over method definition: set program counter to 51"
        }
      ]
    },
    {
      "initialPc": 18,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "6",
      "sourceCode": "def thread(self):",
      "assembly": [
        {
          "assembly": "Frame thread(self)",
          "explain": "start of method thread"
        }
      ]
    },
    {
      "initialPc": 19,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "7",
      "sourceCode": "    while choose({ False, True }):",
      "assembly": [
        {
          "assembly": "Push {}",
          "explain": "push constant {}"
        }
      ]
    },
    {
      "initialPc": 20,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "7",
      "sourceCode": "    while choose({ False, True }):",
      "assembly": [
        {
          "assembly": "Push False",
          "explain": "push constant False"
        }
      ]
    },
    {
      "initialPc": 21,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "7",
      "sourceCode": "    while choose({ False, True }):",
      "assembly": [
        {
          "assembly": "2-ary SetAdd",
          "explain": "pop 2 values and push the result of applying SetAdd"
        }
      ]
    },
    {
      "initialPc": 22,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "7",
      "sourceCode": "    while choose({ False, True }):",
      "assembly": [
        {
          "assembly": "Push True",
          "explain": "push constant True"
        }
      ]
    },
    {
      "initialPc": 23,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "7",
      "sourceCode": "    while choose({ False, True }):",
      "assembly": [
        {
          "assembly": "2-ary SetAdd",
          "explain": "pop 2 values and push the result of applying SetAdd"
        }
      ]
    },
    {
      "initialPc": 24,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "7",
      "sourceCode": "    while choose({ False, True }):",
      "assembly": [
        {
          "assembly": "Choose",
          "explain": "pop a set value and push one of its elements"
        }
      ]
    },
    {
      "initialPc": 25,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "7",
      "sourceCode": "    while choose({ False, True }):",
      "assembly": [
        {
          "assembly": "JumpCond False 49",
          "explain": "pop a value and jump to 49 if the value is False"
        }
      ]
    },
    {
      "initialPc": 26,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "9",
      "sourceCode": "        turn = 1 - self",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 27,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "9",
      "sourceCode": "        turn = 1 - self",
      "assembly": [
        {
          "assembly": "LoadVar self",
          "explain": "push the value of self"
        }
      ]
    },
    {
      "initialPc": 28,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "9",
      "sourceCode": "        turn = 1 - self",
      "assembly": [
        {
          "assembly": "2-ary -",
          "explain": "pop 2 values and push the result of applying -"
        }
      ]
    },
    {
      "initialPc": 29,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "9",
      "sourceCode": "        turn = 1 - self",
      "assembly": [
        {
          "assembly": "Store turn",
          "explain": "pop a value and store it in shared variable turn"
        }
      ]
    },
    {
      "initialPc": 30,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "10",
      "sourceCode": "        await turn == self",
      "assembly": [
        {
          "assembly": "Load turn",
          "explain": "push value of shared variable turn"
        }
      ]
    },
    {
      "initialPc": 31,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "10",
      "sourceCode": "        await turn == self",
      "assembly": [
        {
          "assembly": "LoadVar self",
          "explain": "push the value of self"
        }
      ]
    },
    {
      "initialPc": 32,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "10",
      "sourceCode": "        await turn == self",
      "assembly": [
        {
          "assembly": "2-ary ==",
          "explain": "pop 2 values and push the result of applying =="
        }
      ]
    },
    {
      "initialPc": 33,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "10",
      "sourceCode": "        await turn == self",
      "assembly": [
        {
          "assembly": "JumpCond False 30",
          "explain": "pop a value and jump to 30 if the value is False"
        }
      ]
    },
    {
      "initialPc": 34,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "10",
      "sourceCode": "        await turn == self",
      "assembly": [
        {
          "assembly": "Jump 36",
          "explain": "set program counter to 36"
        }
      ]
    },
    {
      "initialPc": 35,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "10",
      "sourceCode": "        await turn == self",
      "assembly": [
        {
          "assembly": "Jump 30",
          "explain": "set program counter to 30"
        }
      ]
    },
    {
      "initialPc": 36,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "12",
      "sourceCode": "        atomically in_cs += 1",
      "assembly": [
        {
          "assembly": "AtomicInc(eager)",
          "explain": "increment atomic counter of context; thread runs uninterrupted if larger than 0"
        }
      ]
    },
    {
      "initialPc": 37,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "12",
      "sourceCode": "        atomically in_cs += 1",
      "assembly": [
        {
          "assembly": "Load in_cs",
          "explain": "push value of shared variable in_cs"
        }
      ]
    },
    {
      "initialPc": 38,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "12",
      "sourceCode": "        atomically in_cs += 1",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 39,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "12",
      "sourceCode": "        atomically in_cs += 1",
      "assembly": [
        {
          "assembly": "2-ary +",
          "explain": "pop 2 values and push the result of applying +"
        }
      ]
    },
    {
      "initialPc": 40,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "12",
      "sourceCode": "        atomically in_cs += 1",
      "assembly": [
        {
          "assembly": "Store in_cs",
          "explain": "pop a value and store it in shared variable in_cs"
        }
      ]
    },
    {
      "initialPc": 41,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "12",
      "sourceCode": "        atomically in_cs += 1",
      "assembly": [
        {
          "assembly": "AtomicDec",
          "explain": "decrement atomic counter of context"
        }
      ]
    },
    {
      "initialPc": 42,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "14",
      "sourceCode": "        atomically in_cs -= 1",
      "assembly": [
        {
          "assembly": "AtomicInc(eager)",
          "explain": "increment atomic counter of context; thread runs uninterrupted if larger than 0"
        }
      ]
    },
    {
      "initialPc": 43,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "14",
      "sourceCode": "        atomically in_cs -= 1",
      "assembly": [
        {
          "assembly": "Load in_cs",
          "explain": "push value of shared variable in_cs"
        }
      ]
    },
    {
      "initialPc": 44,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "14",
      "sourceCode": "        atomically in_cs -= 1",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 45,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "14",
      "sourceCode": "        atomically in_cs -= 1",
      "assembly": [
        {
          "assembly": "2-ary -",
          "explain": "pop 2 values and push the result of applying -"
        }
      ]
    },
    {
      "initialPc": 46,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "14",
      "sourceCode": "        atomically in_cs -= 1",
      "assembly": [
        {
          "assembly": "Store in_cs",
          "explain": "pop a value and store it in shared variable in_cs"
        }
      ]
    },
    {
      "initialPc": 47,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "14",
      "sourceCode": "        atomically in_cs -= 1",
      "assembly": [
        {
          "assembly": "AtomicDec",
          "explain": "decrement atomic counter of context"
        }
      ]
    },
    {
      "initialPc": 48,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "7",
      "sourceCode": "    while choose({ False, True }):",
      "assembly": [
        {
          "assembly": "Jump 19",
          "explain": "set program counter to 19"
        }
      ]
    },
    {
      "initialPc": 49,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "6",
      "sourceCode": "def thread(self):",
      "assembly": [
        {
          "assembly": "DelVar self",
          "explain": "delete method variable self"
        }
      ]
    },
    {
      "initialPc": 50,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "6",
      "sourceCode": "def thread(self):",
      "assembly": [
        {
          "assembly": "ReturnOp(result. None)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 51,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "18",
      "sourceCode": "spawn thread(0)",
      "assembly": [
        {
          "assembly": "Push ?PC(18)",
          "explain": "push constant ?PC(18)"
        }
      ]
    },
    {
      "initialPc": 52,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "18",
      "sourceCode": "spawn thread(0)",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 53,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "18",
      "sourceCode": "spawn thread(0)",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 54,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "18",
      "sourceCode": "spawn thread(0)",
      "assembly": [
        {
          "assembly": "Push {:}",
          "explain": "push constant {:}"
        }
      ]
    },
    {
      "initialPc": 55,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "18",
      "sourceCode": "spawn thread(0)",
      "assembly": [
        {
          "assembly": "Spawn",
          "explain": "pop thread-local state, argument, and pc and spawn a new thread"
        }
      ]
    },
    {
      "initialPc": 56,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "19",
      "sourceCode": "spawn thread(1)",
      "assembly": [
        {
          "assembly": "Push ?PC(18)",
          "explain": "push constant ?PC(18)"
        }
      ]
    },
    {
      "initialPc": 57,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "19",
      "sourceCode": "spawn thread(1)",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 58,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "19",
      "sourceCode": "spawn thread(1)",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 59,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "19",
      "sourceCode": "spawn thread(1)",
      "assembly": [
        {
          "assembly": "Push {:}",
          "explain": "push constant {:}"
        }
      ]
    },
    {
      "initialPc": 60,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "19",
      "sourceCode": "spawn thread(1)",
      "assembly": [
        {
          "assembly": "Spawn",
          "explain": "pop thread-local state, argument, and pc and spawn a new thread"
        }
      ]
    },
    {
      "initialPc": 61,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "1",
      "sourceCode": "in_cs = 0",
      "assembly": [
        {
          "assembly": "ReturnOp(result. None)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 62,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveTurn.hny",
      "line": "1",
      "sourceCode": "in_cs = 0",
      "assembly": [
        {
          "assembly": "DelVar result",
          "explain": "delete method variable result"
        }
      ]
    }
  ]
}