{
  "state": "Issues found",
  "issue": "Non-terminating state",
  "slices": [
    {
      "duration": 12,
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
              "pc": "17"
            }
          ]
        }
      },
      "tid": "0",
      "name": "__init__()",
      "macroStepIdx": 0
    },
    {
      "duration": 3,
      "sharedValues": {},
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
              "pc": "17"
            }
          ]
        },
        "1": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "thread()",
              "pc": "3",
              "callType": "process",
              "vars": {}
            }
          ],
          "tid": "1",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 0
        }
      },
      "tid": "1",
      "name": "thread()",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {},
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
              "pc": "17"
            }
          ]
        },
        "1": {
          "atomic": 0,
          "fullStatus": "failed",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "failed",
          "mode": "failed",
          "failure": "infinite loop",
          "tid": "1",
          "callStack": [
            {
              "callType": "process",
              "method": "thread()",
              "vars": {},
              "pc": "3"
            }
          ]
        }
      },
      "tid": "1",
      "name": "thread()",
      "macroStepIdx": 1
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
      "npc": 7
    },
    {
      "sliceIdx": 0,
      "time": 2,
      "pc": 7,
      "npc": 8
    },
    {
      "sliceIdx": 0,
      "time": 3,
      "pc": 8,
      "npc": 9
    },
    {
      "sliceIdx": 0,
      "time": 4,
      "pc": 9,
      "npc": 10
    },
    {
      "sliceIdx": 0,
      "time": 5,
      "pc": 10,
      "npc": 11
    },
    {
      "sliceIdx": 0,
      "time": 6,
      "pc": 11,
      "npc": 12
    },
    {
      "sliceIdx": 0,
      "time": 7,
      "pc": 12,
      "npc": 13
    },
    {
      "sliceIdx": 0,
      "time": 8,
      "pc": 13,
      "npc": 14
    },
    {
      "sliceIdx": 0,
      "time": 9,
      "pc": 14,
      "npc": 15
    },
    {
      "sliceIdx": 0,
      "time": 10,
      "pc": 15,
      "npc": 16
    },
    {
      "sliceIdx": 0,
      "time": 11,
      "pc": 16,
      "npc": 17
    },
    {
      "sliceIdx": 1,
      "time": 12,
      "pc": 17,
      "npc": 17
    },
    {
      "pc": 2,
      "npc": 3,
      "sliceIdx": 2,
      "time": 13
    },
    {
      "sliceIdx": 2,
      "time": 14,
      "pc": 3,
      "npc": 4
    },
    {
      "sliceIdx": 2,
      "time": 15,
      "pc": 4,
      "npc": 5
    },
    {
      "sliceIdx": 3,
      "time": 16,
      "pc": 5,
      "npc": 3
    }
  ],
  "macroSteps": [
    {
      "tid": "0",
      "name": "__init__()",
      "duration": 13,
      "startSliceIdx": 0,
      "lastSliceIdx": 2
    },
    {
      "tid": "1",
      "name": "thread()",
      "duration": 4,
      "startSliceIdx": 2,
      "lastSliceIdx": 4
    }
  ],
  "idToThreadName": {
    "0": "__init__()",
    "1": "thread()"
  },
  "executedCode": [
    {
      "initialPc": 0,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/csbarebones.hny",
      "line": "1",
      "sourceCode": "def thread():",
      "assembly": [
        {
          "assembly": "Frame __init__()",
          "explain": "start of method __init__"
        }
      ]
    },
    {
      "initialPc": 1,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/csbarebones.hny",
      "line": "1",
      "sourceCode": "def thread():",
      "assembly": [
        {
          "assembly": "Jump 7",
          "explain": "jump over method definition: set program counter to 7"
        }
      ]
    },
    {
      "initialPc": 2,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/csbarebones.hny",
      "line": "1",
      "sourceCode": "def thread():",
      "assembly": [
        {
          "assembly": "Frame thread()",
          "explain": "start of method thread"
        }
      ]
    },
    {
      "initialPc": 3,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/csbarebones.hny",
      "line": "2",
      "sourceCode": "    while True:",
      "assembly": [
        {
          "assembly": "Push True",
          "explain": "push constant True"
        }
      ]
    },
    {
      "initialPc": 4,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/csbarebones.hny",
      "line": "2",
      "sourceCode": "    while True:",
      "assembly": [
        {
          "assembly": "JumpCond False 6",
          "explain": "pop a value and jump to 6 if the value is False"
        }
      ]
    },
    {
      "initialPc": 5,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/csbarebones.hny",
      "line": "2",
      "sourceCode": "    while True:",
      "assembly": [
        {
          "assembly": "Jump 3",
          "explain": "set program counter to 3"
        }
      ]
    },
    {
      "initialPc": 6,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/csbarebones.hny",
      "line": "1",
      "sourceCode": "def thread():",
      "assembly": [
        {
          "assembly": "ReturnOp(result. None)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 7,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/csbarebones.hny",
      "line": "6",
      "sourceCode": "spawn thread()",
      "assembly": [
        {
          "assembly": "Push ?PC(2)",
          "explain": "push constant ?PC(2)"
        }
      ]
    },
    {
      "initialPc": 8,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/csbarebones.hny",
      "line": "6",
      "sourceCode": "spawn thread()",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "push constant ()"
        }
      ]
    },
    {
      "initialPc": 9,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/csbarebones.hny",
      "line": "6",
      "sourceCode": "spawn thread()",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 10,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/csbarebones.hny",
      "line": "6",
      "sourceCode": "spawn thread()",
      "assembly": [
        {
          "assembly": "Push {:}",
          "explain": "push constant {:}"
        }
      ]
    },
    {
      "initialPc": 11,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/csbarebones.hny",
      "line": "6",
      "sourceCode": "spawn thread()",
      "assembly": [
        {
          "assembly": "Spawn",
          "explain": "pop thread-local state, argument, and pc and spawn a new thread"
        }
      ]
    },
    {
      "initialPc": 12,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/csbarebones.hny",
      "line": "7",
      "sourceCode": "spawn thread()",
      "assembly": [
        {
          "assembly": "Push ?PC(2)",
          "explain": "push constant ?PC(2)"
        }
      ]
    },
    {
      "initialPc": 13,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/csbarebones.hny",
      "line": "7",
      "sourceCode": "spawn thread()",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "push constant ()"
        }
      ]
    },
    {
      "initialPc": 14,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/csbarebones.hny",
      "line": "7",
      "sourceCode": "spawn thread()",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 15,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/csbarebones.hny",
      "line": "7",
      "sourceCode": "spawn thread()",
      "assembly": [
        {
          "assembly": "Push {:}",
          "explain": "push constant {:}"
        }
      ]
    },
    {
      "initialPc": 16,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/csbarebones.hny",
      "line": "7",
      "sourceCode": "spawn thread()",
      "assembly": [
        {
          "assembly": "Spawn",
          "explain": "pop thread-local state, argument, and pc and spawn a new thread"
        }
      ]
    },
    {
      "initialPc": 17,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/csbarebones.hny",
      "line": "1",
      "sourceCode": "def thread():",
      "assembly": [
        {
          "assembly": "ReturnOp(result. None)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 18,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/csbarebones.hny",
      "line": "1",
      "sourceCode": "def thread():",
      "assembly": [
        {
          "assembly": "DelVar result",
          "explain": "delete method variable result"
        }
      ]
    }
  ]
}