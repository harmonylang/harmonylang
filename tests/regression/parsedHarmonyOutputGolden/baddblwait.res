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
          "failure": "Load: unknown variable ?left",
          "tid": "0",
          "callStack": [
            {
              "callType": "process",
              "method": "__init__()",
              "vars": {},
              "pc": "2"
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
      "npc": 2
    }
  ],
  "macroSteps": [
    {
      "tid": "0",
      "name": "__init__()",
      "duration": 3,
      "startSliceIdx": 0,
      "lastSliceIdx": 2
    }
  ],
  "idToThreadName": {
    "0": "__init__()"
  },
  "executedCode": [
    {
      "initialPc": 0,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/baddblwait.hny",
      "line": "1",
      "sourceCode": "while forks[left]:",
      "assembly": [
        {
          "assembly": "Frame __init__()",
          "explain": "start of method __init__"
        }
      ]
    },
    {
      "initialPc": 1,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/baddblwait.hny",
      "line": "1",
      "sourceCode": "while forks[left]:",
      "assembly": [
        {
          "assembly": "Push ?forks",
          "explain": "push constant ?forks"
        }
      ]
    },
    {
      "initialPc": 2,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/baddblwait.hny",
      "line": "1",
      "sourceCode": "while forks[left]:",
      "assembly": [
        {
          "assembly": "Load left",
          "explain": "push value of shared variable left"
        }
      ]
    },
    {
      "initialPc": 3,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/baddblwait.hny",
      "line": "1",
      "sourceCode": "while forks[left]:",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 4,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/baddblwait.hny",
      "line": "1",
      "sourceCode": "while forks[left]:",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 5,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/baddblwait.hny",
      "line": "1",
      "sourceCode": "while forks[left]:",
      "assembly": [
        {
          "assembly": "JumpCond False 20",
          "explain": "pop a value and jump to 20 if the value is False"
        }
      ]
    },
    {
      "initialPc": 6,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/baddblwait.hny",
      "line": "2",
      "sourceCode": "    synch.wait(?conds[left], ?mutex)",
      "assembly": [
        {
          "assembly": "Push ?synch",
          "explain": "push constant ?synch"
        }
      ]
    },
    {
      "initialPc": 7,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/baddblwait.hny",
      "line": "2",
      "sourceCode": "    synch.wait(?conds[left], ?mutex)",
      "assembly": [
        {
          "assembly": "Push \"wait\"",
          "explain": "push constant \"wait\""
        }
      ]
    },
    {
      "initialPc": 8,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/baddblwait.hny",
      "line": "2",
      "sourceCode": "    synch.wait(?conds[left], ?mutex)",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 9,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/baddblwait.hny",
      "line": "2",
      "sourceCode": "    synch.wait(?conds[left], ?mutex)",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "building a tuple: push constant ()"
        }
      ]
    },
    {
      "initialPc": 10,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/baddblwait.hny",
      "line": "2",
      "sourceCode": "    synch.wait(?conds[left], ?mutex)",
      "assembly": [
        {
          "assembly": "Push ?conds",
          "explain": "push constant ?conds"
        }
      ]
    },
    {
      "initialPc": 11,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/baddblwait.hny",
      "line": "2",
      "sourceCode": "    synch.wait(?conds[left], ?mutex)",
      "assembly": [
        {
          "assembly": "Load left",
          "explain": "push value of shared variable left"
        }
      ]
    },
    {
      "initialPc": 12,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/baddblwait.hny",
      "line": "2",
      "sourceCode": "    synch.wait(?conds[left], ?mutex)",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 13,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/baddblwait.hny",
      "line": "2",
      "sourceCode": "    synch.wait(?conds[left], ?mutex)",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 14,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/baddblwait.hny",
      "line": "2",
      "sourceCode": "    synch.wait(?conds[left], ?mutex)",
      "assembly": [
        {
          "assembly": "Push ?mutex",
          "explain": "push constant ?mutex"
        }
      ]
    },
    {
      "initialPc": 15,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/baddblwait.hny",
      "line": "2",
      "sourceCode": "    synch.wait(?conds[left], ?mutex)",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 16,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/baddblwait.hny",
      "line": "2",
      "sourceCode": "    synch.wait(?conds[left], ?mutex)",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 17,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/baddblwait.hny",
      "line": "2",
      "sourceCode": "    synch.wait(?conds[left], ?mutex)",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 18,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/baddblwait.hny",
      "line": "2",
      "sourceCode": "    synch.wait(?conds[left], ?mutex)",
      "assembly": [
        {
          "assembly": "Pop",
          "explain": "discard the top value on the stack"
        }
      ]
    },
    {
      "initialPc": 19,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/baddblwait.hny",
      "line": "1",
      "sourceCode": "while forks[left]:",
      "assembly": [
        {
          "assembly": "Jump 1",
          "explain": "set program counter to 1"
        }
      ]
    },
    {
      "initialPc": 20,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/baddblwait.hny",
      "line": "3",
      "sourceCode": "while forks[right]:",
      "assembly": [
        {
          "assembly": "Push ?forks",
          "explain": "push constant ?forks"
        }
      ]
    },
    {
      "initialPc": 21,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/baddblwait.hny",
      "line": "3",
      "sourceCode": "while forks[right]:",
      "assembly": [
        {
          "assembly": "Load right",
          "explain": "push value of shared variable right"
        }
      ]
    },
    {
      "initialPc": 22,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/baddblwait.hny",
      "line": "3",
      "sourceCode": "while forks[right]:",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 23,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/baddblwait.hny",
      "line": "3",
      "sourceCode": "while forks[right]:",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 24,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/baddblwait.hny",
      "line": "3",
      "sourceCode": "while forks[right]:",
      "assembly": [
        {
          "assembly": "JumpCond False 39",
          "explain": "pop a value and jump to 39 if the value is False"
        }
      ]
    },
    {
      "initialPc": 25,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/baddblwait.hny",
      "line": "4",
      "sourceCode": "    synch.wait(?conds[right], ?mutex)",
      "assembly": [
        {
          "assembly": "Push ?synch",
          "explain": "push constant ?synch"
        }
      ]
    },
    {
      "initialPc": 26,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/baddblwait.hny",
      "line": "4",
      "sourceCode": "    synch.wait(?conds[right], ?mutex)",
      "assembly": [
        {
          "assembly": "Push \"wait\"",
          "explain": "push constant \"wait\""
        }
      ]
    },
    {
      "initialPc": 27,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/baddblwait.hny",
      "line": "4",
      "sourceCode": "    synch.wait(?conds[right], ?mutex)",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 28,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/baddblwait.hny",
      "line": "4",
      "sourceCode": "    synch.wait(?conds[right], ?mutex)",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "building a tuple: push constant ()"
        }
      ]
    },
    {
      "initialPc": 29,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/baddblwait.hny",
      "line": "4",
      "sourceCode": "    synch.wait(?conds[right], ?mutex)",
      "assembly": [
        {
          "assembly": "Push ?conds",
          "explain": "push constant ?conds"
        }
      ]
    },
    {
      "initialPc": 30,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/baddblwait.hny",
      "line": "4",
      "sourceCode": "    synch.wait(?conds[right], ?mutex)",
      "assembly": [
        {
          "assembly": "Load right",
          "explain": "push value of shared variable right"
        }
      ]
    },
    {
      "initialPc": 31,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/baddblwait.hny",
      "line": "4",
      "sourceCode": "    synch.wait(?conds[right], ?mutex)",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 32,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/baddblwait.hny",
      "line": "4",
      "sourceCode": "    synch.wait(?conds[right], ?mutex)",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 33,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/baddblwait.hny",
      "line": "4",
      "sourceCode": "    synch.wait(?conds[right], ?mutex)",
      "assembly": [
        {
          "assembly": "Push ?mutex",
          "explain": "push constant ?mutex"
        }
      ]
    },
    {
      "initialPc": 34,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/baddblwait.hny",
      "line": "4",
      "sourceCode": "    synch.wait(?conds[right], ?mutex)",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 35,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/baddblwait.hny",
      "line": "4",
      "sourceCode": "    synch.wait(?conds[right], ?mutex)",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 36,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/baddblwait.hny",
      "line": "4",
      "sourceCode": "    synch.wait(?conds[right], ?mutex)",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 37,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/baddblwait.hny",
      "line": "4",
      "sourceCode": "    synch.wait(?conds[right], ?mutex)",
      "assembly": [
        {
          "assembly": "Pop",
          "explain": "discard the top value on the stack"
        }
      ]
    },
    {
      "initialPc": 38,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/baddblwait.hny",
      "line": "3",
      "sourceCode": "while forks[right]:",
      "assembly": [
        {
          "assembly": "Jump 20",
          "explain": "set program counter to 20"
        }
      ]
    },
    {
      "initialPc": 39,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/baddblwait.hny",
      "line": "1",
      "sourceCode": "while forks[left]:",
      "assembly": [
        {
          "assembly": "ReturnOp(result. None)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 40,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/baddblwait.hny",
      "line": "1",
      "sourceCode": "while forks[left]:",
      "assembly": [
        {
          "assembly": "DelVar result",
          "explain": "delete method variable result"
        }
      ]
    }
  ]
}