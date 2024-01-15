{
  "state": "Issues found",
  "issue": "Safety violation",
  "slices": [
    {
      "duration": 3,
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
          "failure": "Load: unknown variable ?NREPLICAS",
          "tid": "0",
          "callStack": [
            {
              "callType": "process",
              "method": "__init__()",
              "vars": {},
              "pc": "218"
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
      "npc": 217
    },
    {
      "sliceIdx": 0,
      "time": 2,
      "pc": 217,
      "npc": 218
    },
    {
      "sliceIdx": 1,
      "time": 3,
      "pc": 218,
      "npc": 218
    }
  ],
  "macroSteps": [
    {
      "tid": "0",
      "name": "__init__()",
      "duration": 4,
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "1",
      "sourceCode": "def replica(self, immortal):        # replica 'self'",
      "assembly": [
        {
          "assembly": "Frame __init__()",
          "explain": "start of method __init__"
        }
      ]
    },
    {
      "initialPc": 1,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "1",
      "sourceCode": "def replica(self, immortal):        # replica 'self'",
      "assembly": [
        {
          "assembly": "Jump 217",
          "explain": "jump over method definition: set program counter to 217"
        }
      ]
    },
    {
      "initialPc": 2,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "1",
      "sourceCode": "def replica(self, immortal):        # replica 'self'",
      "assembly": [
        {
          "assembly": "Frame replica(self, immortal)",
          "explain": "start of method replica"
        }
      ]
    },
    {
      "initialPc": 3,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "2",
      "sourceCode": "    if not immortal:        # if not immortal, crash sometime",
      "assembly": [
        {
          "assembly": "LoadVar immortal",
          "explain": "push the value of immortal"
        }
      ]
    },
    {
      "initialPc": 4,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "2",
      "sourceCode": "    if not immortal:        # if not immortal, crash sometime",
      "assembly": [
        {
          "assembly": "DelVar immortal",
          "explain": "delete method variable immortal"
        }
      ]
    },
    {
      "initialPc": 5,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "2",
      "sourceCode": "    if not immortal:        # if not immortal, crash sometime",
      "assembly": [
        {
          "assembly": "JumpCond True 10",
          "explain": "pop a value and jump to 10 if the value is True"
        }
      ]
    },
    {
      "initialPc": 6,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "3",
      "sourceCode": "        trap crash(self)",
      "assembly": [
        {
          "assembly": "Push ?crash",
          "explain": "push constant ?crash"
        }
      ]
    },
    {
      "initialPc": 7,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "3",
      "sourceCode": "        trap crash(self)",
      "assembly": [
        {
          "assembly": "LoadVar self",
          "explain": "push the value of self"
        }
      ]
    },
    {
      "initialPc": 8,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "3",
      "sourceCode": "        trap crash(self)",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 9,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "3",
      "sourceCode": "        trap crash(self)",
      "assembly": [
        {
          "assembly": "Trap",
          "explain": "pop a pc and argument and set trap"
        }
      ]
    },
    {
      "initialPc": 10,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "5",
      "sourceCode": "    var received  = {}              # messages received",
      "assembly": [
        {
          "assembly": "Push {}",
          "explain": "push constant {}"
        }
      ]
    },
    {
      "initialPc": 11,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "5",
      "sourceCode": "    var received  = {}              # messages received",
      "assembly": [
        {
          "assembly": "StoreVar received",
          "explain": "pop a value and store in received"
        }
      ]
    },
    {
      "initialPc": 12,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "6",
      "sourceCode": "    var requests  = {}              # client requests received",
      "assembly": [
        {
          "assembly": "Push {}",
          "explain": "push constant {}"
        }
      ]
    },
    {
      "initialPc": 13,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "6",
      "sourceCode": "    var requests  = {}              # client requests received",
      "assembly": [
        {
          "assembly": "StoreVar requests",
          "explain": "pop a value and store in requests"
        }
      ]
    },
    {
      "initialPc": 14,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "7",
      "sourceCode": "    var config    = {1..NREPLICAS}  # servers in chain configuration",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 15,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "7",
      "sourceCode": "    var config    = {1..NREPLICAS}  # servers in chain configuration",
      "assembly": [
        {
          "assembly": "Load NREPLICAS",
          "explain": "push value of shared variable NREPLICAS"
        }
      ]
    },
    {
      "initialPc": 16,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "7",
      "sourceCode": "    var config    = {1..NREPLICAS}  # servers in chain configuration",
      "assembly": [
        {
          "assembly": "2-ary ..",
          "explain": "pop 2 values and push the result of applying .."
        }
      ]
    },
    {
      "initialPc": 17,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "7",
      "sourceCode": "    var config    = {1..NREPLICAS}  # servers in chain configuration",
      "assembly": [
        {
          "assembly": "StoreVar config",
          "explain": "pop a value and store in config"
        }
      ]
    },
    {
      "initialPc": 18,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "8",
      "sourceCode": "    var hist      = []              # history of client requests",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "push constant ()"
        }
      ]
    },
    {
      "initialPc": 19,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "8",
      "sourceCode": "    var hist      = []              # history of client requests",
      "assembly": [
        {
          "assembly": "StoreVar hist",
          "explain": "pop a value and store in hist"
        }
      ]
    },
    {
      "initialPc": 20,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "9",
      "sourceCode": "    var delivered = 0               # number requests delivered",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 21,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "9",
      "sourceCode": "    var delivered = 0               # number requests delivered",
      "assembly": [
        {
          "assembly": "StoreVar delivered",
          "explain": "pop a value and store in delivered"
        }
      ]
    },
    {
      "initialPc": 22,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "11",
      "sourceCode": "    while True:",
      "assembly": [
        {
          "assembly": "Push True",
          "explain": "push constant True"
        }
      ]
    },
    {
      "initialPc": 23,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "11",
      "sourceCode": "    while True:",
      "assembly": [
        {
          "assembly": "JumpCond False 195",
          "explain": "pop a value and jump to 195 if the value is False"
        }
      ]
    },
    {
      "initialPc": 24,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "12",
      "sourceCode": "        atomically when exists (src, payload) in receive(self) - received:",
      "assembly": [
        {
          "assembly": "AtomicInc(eager)",
          "explain": "increment atomic counter of context; thread runs uninterrupted if larger than 0"
        }
      ]
    },
    {
      "initialPc": 25,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "12",
      "sourceCode": "        atomically when exists (src, payload) in receive(self) - received:",
      "assembly": [
        {
          "assembly": "ReadonlyInc",
          "explain": "increment readonly counter of context; thread cannot mutate shared variables if > 0"
        }
      ]
    },
    {
      "initialPc": 26,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "12",
      "sourceCode": "        atomically when exists (src, payload) in receive(self) - received:",
      "assembly": [
        {
          "assembly": "Push ?receive",
          "explain": "push constant ?receive"
        }
      ]
    },
    {
      "initialPc": 27,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "12",
      "sourceCode": "        atomically when exists (src, payload) in receive(self) - received:",
      "assembly": [
        {
          "assembly": "LoadVar self",
          "explain": "push the value of self"
        }
      ]
    },
    {
      "initialPc": 28,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "12",
      "sourceCode": "        atomically when exists (src, payload) in receive(self) - received:",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 29,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "12",
      "sourceCode": "        atomically when exists (src, payload) in receive(self) - received:",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 30,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "12",
      "sourceCode": "        atomically when exists (src, payload) in receive(self) - received:",
      "assembly": [
        {
          "assembly": "LoadVar received",
          "explain": "push the value of received"
        }
      ]
    },
    {
      "initialPc": 31,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "12",
      "sourceCode": "        atomically when exists (src, payload) in receive(self) - received:",
      "assembly": [
        {
          "assembly": "2-ary -",
          "explain": "pop 2 values and push the result of applying -"
        }
      ]
    },
    {
      "initialPc": 32,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "12",
      "sourceCode": "        atomically when exists (src, payload) in receive(self) - received:",
      "assembly": [
        {
          "assembly": "Dup",
          "explain": "push a copy of the top value on the stack"
        }
      ]
    },
    {
      "initialPc": 33,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "12",
      "sourceCode": "        atomically when exists (src, payload) in receive(self) - received:",
      "assembly": [
        {
          "assembly": "Push {}",
          "explain": "push constant {}"
        }
      ]
    },
    {
      "initialPc": 34,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "12",
      "sourceCode": "        atomically when exists (src, payload) in receive(self) - received:",
      "assembly": [
        {
          "assembly": "2-ary ==",
          "explain": "pop 2 values and push the result of applying =="
        }
      ]
    },
    {
      "initialPc": 35,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "12",
      "sourceCode": "        atomically when exists (src, payload) in receive(self) - received:",
      "assembly": [
        {
          "assembly": "JumpCond False 40",
          "explain": "pop a value and jump to 40 if the value is False"
        }
      ]
    },
    {
      "initialPc": 36,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "12",
      "sourceCode": "        atomically when exists (src, payload) in receive(self) - received:",
      "assembly": [
        {
          "assembly": "Pop",
          "explain": "discard the top value on the stack"
        }
      ]
    },
    {
      "initialPc": 37,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "12",
      "sourceCode": "        atomically when exists (src, payload) in receive(self) - received:",
      "assembly": [
        {
          "assembly": "ReadonlyDec",
          "explain": "decrement readonly counter of context"
        }
      ]
    },
    {
      "initialPc": 38,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "12",
      "sourceCode": "        atomically when exists (src, payload) in receive(self) - received:",
      "assembly": [
        {
          "assembly": "AtomicDec",
          "explain": "decrement atomic counter of context"
        }
      ]
    },
    {
      "initialPc": 39,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "12",
      "sourceCode": "        atomically when exists (src, payload) in receive(self) - received:",
      "assembly": [
        {
          "assembly": "Jump 24",
          "explain": "set program counter to 24"
        }
      ]
    },
    {
      "initialPc": 40,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "12",
      "sourceCode": "        atomically when exists (src, payload) in receive(self) - received:",
      "assembly": [
        {
          "assembly": "Choose",
          "explain": "pop a set value and push one of its elements"
        }
      ]
    },
    {
      "initialPc": 41,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "12",
      "sourceCode": "        atomically when exists (src, payload) in receive(self) - received:",
      "assembly": [
        {
          "assembly": "StoreVar (src, payload)",
          "explain": "pop a value and store in (src, payload)"
        }
      ]
    },
    {
      "initialPc": 42,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "12",
      "sourceCode": "        atomically when exists (src, payload) in receive(self) - received:",
      "assembly": [
        {
          "assembly": "Jump 46",
          "explain": "set program counter to 46"
        }
      ]
    },
    {
      "initialPc": 43,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "12",
      "sourceCode": "        atomically when exists (src, payload) in receive(self) - received:",
      "assembly": [
        {
          "assembly": "ReadonlyDec",
          "explain": "decrement readonly counter of context"
        }
      ]
    },
    {
      "initialPc": 44,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "12",
      "sourceCode": "        atomically when exists (src, payload) in receive(self) - received:",
      "assembly": [
        {
          "assembly": "AtomicDec",
          "explain": "decrement atomic counter of context"
        }
      ]
    },
    {
      "initialPc": 45,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "12",
      "sourceCode": "        atomically when exists (src, payload) in receive(self) - received:",
      "assembly": [
        {
          "assembly": "Jump 24",
          "explain": "set program counter to 24"
        }
      ]
    },
    {
      "initialPc": 46,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "12",
      "sourceCode": "        atomically when exists (src, payload) in receive(self) - received:",
      "assembly": [
        {
          "assembly": "ReadonlyDec",
          "explain": "decrement readonly counter of context"
        }
      ]
    },
    {
      "initialPc": 47,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "13",
      "sourceCode": "            received |= { (src, payload ) }     # don't handle twice",
      "assembly": [
        {
          "assembly": "LoadVar received",
          "explain": "push the value of received"
        }
      ]
    },
    {
      "initialPc": 48,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "13",
      "sourceCode": "            received |= { (src, payload ) }     # don't handle twice",
      "assembly": [
        {
          "assembly": "DelVar received",
          "explain": "delete method variable received"
        }
      ]
    },
    {
      "initialPc": 49,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "13",
      "sourceCode": "            received |= { (src, payload ) }     # don't handle twice",
      "assembly": [
        {
          "assembly": "Push {}",
          "explain": "push constant {}"
        }
      ]
    },
    {
      "initialPc": 50,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "13",
      "sourceCode": "            received |= { (src, payload ) }     # don't handle twice",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "building a tuple: push constant ()"
        }
      ]
    },
    {
      "initialPc": 51,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "13",
      "sourceCode": "            received |= { (src, payload ) }     # don't handle twice",
      "assembly": [
        {
          "assembly": "LoadVar src",
          "explain": "push the value of src"
        }
      ]
    },
    {
      "initialPc": 52,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "13",
      "sourceCode": "            received |= { (src, payload ) }     # don't handle twice",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 53,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "13",
      "sourceCode": "            received |= { (src, payload ) }     # don't handle twice",
      "assembly": [
        {
          "assembly": "LoadVar payload",
          "explain": "push the value of payload"
        }
      ]
    },
    {
      "initialPc": 54,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "13",
      "sourceCode": "            received |= { (src, payload ) }     # don't handle twice",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 55,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "13",
      "sourceCode": "            received |= { (src, payload ) }     # don't handle twice",
      "assembly": [
        {
          "assembly": "2-ary SetAdd",
          "explain": "pop 2 values and push the result of applying SetAdd"
        }
      ]
    },
    {
      "initialPc": 56,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "13",
      "sourceCode": "            received |= { (src, payload ) }     # don't handle twice",
      "assembly": [
        {
          "assembly": "2-ary |",
          "explain": "pop 2 values and push the result of applying |"
        }
      ]
    },
    {
      "initialPc": 57,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "13",
      "sourceCode": "            received |= { (src, payload ) }     # don't handle twice",
      "assembly": [
        {
          "assembly": "StoreVar received",
          "explain": "pop a value and store in received"
        }
      ]
    },
    {
      "initialPc": 58,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "14",
      "sourceCode": "            if src == \"client\":                 # received a client request",
      "assembly": [
        {
          "assembly": "LoadVar src",
          "explain": "push the value of src"
        }
      ]
    },
    {
      "initialPc": 59,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "14",
      "sourceCode": "            if src == \"client\":                 # received a client request",
      "assembly": [
        {
          "assembly": "Push \"client\"",
          "explain": "push constant \"client\""
        }
      ]
    },
    {
      "initialPc": 60,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "14",
      "sourceCode": "            if src == \"client\":                 # received a client request",
      "assembly": [
        {
          "assembly": "2-ary ==",
          "explain": "pop 2 values and push the result of applying =="
        }
      ]
    },
    {
      "initialPc": 61,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "14",
      "sourceCode": "            if src == \"client\":                 # received a client request",
      "assembly": [
        {
          "assembly": "JumpCond False 72",
          "explain": "pop a value and jump to 72 if the value is False"
        }
      ]
    },
    {
      "initialPc": 62,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "15",
      "sourceCode": "                requests |= { payload }",
      "assembly": [
        {
          "assembly": "DelVar src",
          "explain": "delete method variable src"
        }
      ]
    },
    {
      "initialPc": 63,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "15",
      "sourceCode": "                requests |= { payload }",
      "assembly": [
        {
          "assembly": "LoadVar requests",
          "explain": "push the value of requests"
        }
      ]
    },
    {
      "initialPc": 64,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "15",
      "sourceCode": "                requests |= { payload }",
      "assembly": [
        {
          "assembly": "DelVar requests",
          "explain": "delete method variable requests"
        }
      ]
    },
    {
      "initialPc": 65,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "15",
      "sourceCode": "                requests |= { payload }",
      "assembly": [
        {
          "assembly": "Push {}",
          "explain": "push constant {}"
        }
      ]
    },
    {
      "initialPc": 66,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "15",
      "sourceCode": "                requests |= { payload }",
      "assembly": [
        {
          "assembly": "LoadVar payload",
          "explain": "push the value of payload"
        }
      ]
    },
    {
      "initialPc": 67,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "15",
      "sourceCode": "                requests |= { payload }",
      "assembly": [
        {
          "assembly": "DelVar payload",
          "explain": "delete method variable payload"
        }
      ]
    },
    {
      "initialPc": 68,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "15",
      "sourceCode": "                requests |= { payload }",
      "assembly": [
        {
          "assembly": "2-ary SetAdd",
          "explain": "pop 2 values and push the result of applying SetAdd"
        }
      ]
    },
    {
      "initialPc": 69,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "15",
      "sourceCode": "                requests |= { payload }",
      "assembly": [
        {
          "assembly": "2-ary |",
          "explain": "pop 2 values and push the result of applying |"
        }
      ]
    },
    {
      "initialPc": 70,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "15",
      "sourceCode": "                requests |= { payload }",
      "assembly": [
        {
          "assembly": "StoreVar requests",
          "explain": "pop a value and store in requests"
        }
      ]
    },
    {
      "initialPc": 71,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "14",
      "sourceCode": "            if src == \"client\":                 # received a client request",
      "assembly": [
        {
          "assembly": "Jump 107",
          "explain": "set program counter to 107"
        }
      ]
    },
    {
      "initialPc": 72,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "16",
      "sourceCode": "            elif payload == \"crash\":            # a server crashed",
      "assembly": [
        {
          "assembly": "LoadVar payload",
          "explain": "push the value of payload"
        }
      ]
    },
    {
      "initialPc": 73,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "16",
      "sourceCode": "            elif payload == \"crash\":            # a server crashed",
      "assembly": [
        {
          "assembly": "Push \"crash\"",
          "explain": "push constant \"crash\""
        }
      ]
    },
    {
      "initialPc": 74,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "16",
      "sourceCode": "            elif payload == \"crash\":            # a server crashed",
      "assembly": [
        {
          "assembly": "2-ary ==",
          "explain": "pop 2 values and push the result of applying =="
        }
      ]
    },
    {
      "initialPc": 75,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "16",
      "sourceCode": "            elif payload == \"crash\":            # a server crashed",
      "assembly": [
        {
          "assembly": "JumpCond False 86",
          "explain": "pop a value and jump to 86 if the value is False"
        }
      ]
    },
    {
      "initialPc": 76,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "17",
      "sourceCode": "                config -= { src }               # remove from configuration",
      "assembly": [
        {
          "assembly": "DelVar payload",
          "explain": "delete method variable payload"
        }
      ]
    },
    {
      "initialPc": 77,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "17",
      "sourceCode": "                config -= { src }               # remove from configuration",
      "assembly": [
        {
          "assembly": "LoadVar config",
          "explain": "push the value of config"
        }
      ]
    },
    {
      "initialPc": 78,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "17",
      "sourceCode": "                config -= { src }               # remove from configuration",
      "assembly": [
        {
          "assembly": "DelVar config",
          "explain": "delete method variable config"
        }
      ]
    },
    {
      "initialPc": 79,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "17",
      "sourceCode": "                config -= { src }               # remove from configuration",
      "assembly": [
        {
          "assembly": "Push {}",
          "explain": "push constant {}"
        }
      ]
    },
    {
      "initialPc": 80,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "17",
      "sourceCode": "                config -= { src }               # remove from configuration",
      "assembly": [
        {
          "assembly": "LoadVar src",
          "explain": "push the value of src"
        }
      ]
    },
    {
      "initialPc": 81,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "17",
      "sourceCode": "                config -= { src }               # remove from configuration",
      "assembly": [
        {
          "assembly": "DelVar src",
          "explain": "delete method variable src"
        }
      ]
    },
    {
      "initialPc": 82,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "17",
      "sourceCode": "                config -= { src }               # remove from configuration",
      "assembly": [
        {
          "assembly": "2-ary SetAdd",
          "explain": "pop 2 values and push the result of applying SetAdd"
        }
      ]
    },
    {
      "initialPc": 83,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "17",
      "sourceCode": "                config -= { src }               # remove from configuration",
      "assembly": [
        {
          "assembly": "2-ary -",
          "explain": "pop 2 values and push the result of applying -"
        }
      ]
    },
    {
      "initialPc": 84,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "17",
      "sourceCode": "                config -= { src }               # remove from configuration",
      "assembly": [
        {
          "assembly": "StoreVar config",
          "explain": "pop a value and store in config"
        }
      ]
    },
    {
      "initialPc": 85,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "16",
      "sourceCode": "            elif payload == \"crash\":            # a server crashed",
      "assembly": [
        {
          "assembly": "Jump 107",
          "explain": "set program counter to 107"
        }
      ]
    },
    {
      "initialPc": 86,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "18",
      "sourceCode": "            elif (self != min(config)) and is_prefix(hist, payload):",
      "assembly": [
        {
          "assembly": "DelVar src",
          "explain": "delete method variable src"
        }
      ]
    },
    {
      "initialPc": 87,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "18",
      "sourceCode": "            elif (self != min(config)) and is_prefix(hist, payload):",
      "assembly": [
        {
          "assembly": "LoadVar self",
          "explain": "push the value of self"
        }
      ]
    },
    {
      "initialPc": 88,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "18",
      "sourceCode": "            elif (self != min(config)) and is_prefix(hist, payload):",
      "assembly": [
        {
          "assembly": "LoadVar config",
          "explain": "push the value of config"
        }
      ]
    },
    {
      "initialPc": 89,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "18",
      "sourceCode": "            elif (self != min(config)) and is_prefix(hist, payload):",
      "assembly": [
        {
          "assembly": "1-ary min",
          "explain": "pop 1 value and push the result of applying min"
        }
      ]
    },
    {
      "initialPc": 90,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "18",
      "sourceCode": "            elif (self != min(config)) and is_prefix(hist, payload):",
      "assembly": [
        {
          "assembly": "2-ary !=",
          "explain": "pop 2 values and push the result of applying !="
        }
      ]
    },
    {
      "initialPc": 91,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "18",
      "sourceCode": "            elif (self != min(config)) and is_prefix(hist, payload):",
      "assembly": [
        {
          "assembly": "JumpCond False 101",
          "explain": "pop a value and jump to 101 if the value is False"
        }
      ]
    },
    {
      "initialPc": 92,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "18",
      "sourceCode": "            elif (self != min(config)) and is_prefix(hist, payload):",
      "assembly": [
        {
          "assembly": "Push ?is_prefix",
          "explain": "push constant ?is_prefix"
        }
      ]
    },
    {
      "initialPc": 93,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "18",
      "sourceCode": "            elif (self != min(config)) and is_prefix(hist, payload):",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "building a tuple: push constant ()"
        }
      ]
    },
    {
      "initialPc": 94,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "18",
      "sourceCode": "            elif (self != min(config)) and is_prefix(hist, payload):",
      "assembly": [
        {
          "assembly": "LoadVar hist",
          "explain": "push the value of hist"
        }
      ]
    },
    {
      "initialPc": 95,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "18",
      "sourceCode": "            elif (self != min(config)) and is_prefix(hist, payload):",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 96,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "18",
      "sourceCode": "            elif (self != min(config)) and is_prefix(hist, payload):",
      "assembly": [
        {
          "assembly": "LoadVar payload",
          "explain": "push the value of payload"
        }
      ]
    },
    {
      "initialPc": 97,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "18",
      "sourceCode": "            elif (self != min(config)) and is_prefix(hist, payload):",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 98,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "18",
      "sourceCode": "            elif (self != min(config)) and is_prefix(hist, payload):",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 99,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "18",
      "sourceCode": "            elif (self != min(config)) and is_prefix(hist, payload):",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 100,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "18",
      "sourceCode": "            elif (self != min(config)) and is_prefix(hist, payload):",
      "assembly": [
        {
          "assembly": "Jump 102",
          "explain": "set program counter to 102"
        }
      ]
    },
    {
      "initialPc": 101,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "18",
      "sourceCode": "            elif (self != min(config)) and is_prefix(hist, payload):",
      "assembly": [
        {
          "assembly": "Push False",
          "explain": "push constant False"
        }
      ]
    },
    {
      "initialPc": 102,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "18",
      "sourceCode": "            elif (self != min(config)) and is_prefix(hist, payload):",
      "assembly": [
        {
          "assembly": "JumpCond False 107",
          "explain": "pop a value and jump to 107 if the value is False"
        }
      ]
    },
    {
      "initialPc": 103,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "19",
      "sourceCode": "                hist = payload    # received better hist from predecessor",
      "assembly": [
        {
          "assembly": "DelVar hist",
          "explain": "delete method variable hist"
        }
      ]
    },
    {
      "initialPc": 104,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "19",
      "sourceCode": "                hist = payload    # received better hist from predecessor",
      "assembly": [
        {
          "assembly": "LoadVar payload",
          "explain": "push the value of payload"
        }
      ]
    },
    {
      "initialPc": 105,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "19",
      "sourceCode": "                hist = payload    # received better hist from predecessor",
      "assembly": [
        {
          "assembly": "DelVar payload",
          "explain": "delete method variable payload"
        }
      ]
    },
    {
      "initialPc": 106,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "19",
      "sourceCode": "                hist = payload    # received better hist from predecessor",
      "assembly": [
        {
          "assembly": "StoreVar hist",
          "explain": "pop a value and store in hist"
        }
      ]
    },
    {
      "initialPc": 107,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "21",
      "sourceCode": "            if self == min(config):     # I'm the head",
      "assembly": [
        {
          "assembly": "DelVar payload",
          "explain": "delete method variable payload"
        }
      ]
    },
    {
      "initialPc": 108,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "21",
      "sourceCode": "            if self == min(config):     # I'm the head",
      "assembly": [
        {
          "assembly": "LoadVar self",
          "explain": "push the value of self"
        }
      ]
    },
    {
      "initialPc": 109,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "21",
      "sourceCode": "            if self == min(config):     # I'm the head",
      "assembly": [
        {
          "assembly": "LoadVar config",
          "explain": "push the value of config"
        }
      ]
    },
    {
      "initialPc": 110,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "21",
      "sourceCode": "            if self == min(config):     # I'm the head",
      "assembly": [
        {
          "assembly": "1-ary min",
          "explain": "pop 1 value and push the result of applying min"
        }
      ]
    },
    {
      "initialPc": 111,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "21",
      "sourceCode": "            if self == min(config):     # I'm the head",
      "assembly": [
        {
          "assembly": "2-ary ==",
          "explain": "pop 2 values and push the result of applying =="
        }
      ]
    },
    {
      "initialPc": 112,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "21",
      "sourceCode": "            if self == min(config):     # I'm the head",
      "assembly": [
        {
          "assembly": "JumpCond False 131",
          "explain": "pop a value and jump to 131 if the value is False"
        }
      ]
    },
    {
      "initialPc": 113,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "22",
      "sourceCode": "                for update in requests where update not in hist:",
      "assembly": [
        {
          "assembly": "LoadVar requests",
          "explain": "push the value of requests"
        }
      ]
    },
    {
      "initialPc": 114,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "22",
      "sourceCode": "                for update in requests where update not in hist:",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 115,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "22",
      "sourceCode": "                for update in requests where update not in hist:",
      "assembly": [
        {
          "assembly": "DelVar update",
          "explain": "delete method variable update"
        }
      ]
    },
    {
      "initialPc": 116,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "22",
      "sourceCode": "                for update in requests where update not in hist:",
      "assembly": [
        {
          "assembly": "Cut(update)",
          "explain": "get next element and assign to update; push False or True depending on success"
        }
      ]
    },
    {
      "initialPc": 117,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "22",
      "sourceCode": "                for update in requests where update not in hist:",
      "assembly": [
        {
          "assembly": "JumpCond False 131",
          "explain": "check if loop is done: pop a value and jump to 131 if the value is False"
        }
      ]
    },
    {
      "initialPc": 118,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "22",
      "sourceCode": "                for update in requests where update not in hist:",
      "assembly": [
        {
          "assembly": "LoadVar update",
          "explain": "push the value of update"
        }
      ]
    },
    {
      "initialPc": 119,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "22",
      "sourceCode": "                for update in requests where update not in hist:",
      "assembly": [
        {
          "assembly": "LoadVar hist",
          "explain": "push the value of hist"
        }
      ]
    },
    {
      "initialPc": 120,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "22",
      "sourceCode": "                for update in requests where update not in hist:",
      "assembly": [
        {
          "assembly": "2-ary in",
          "explain": "pop 2 values and push the result of applying in"
        }
      ]
    },
    {
      "initialPc": 121,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "22",
      "sourceCode": "                for update in requests where update not in hist:",
      "assembly": [
        {
          "assembly": "JumpCond True 115",
          "explain": "pop a value and jump to 115 if the value is True"
        }
      ]
    },
    {
      "initialPc": 122,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "23",
      "sourceCode": "                    hist += [update,]",
      "assembly": [
        {
          "assembly": "LoadVar hist",
          "explain": "push the value of hist"
        }
      ]
    },
    {
      "initialPc": 123,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "23",
      "sourceCode": "                    hist += [update,]",
      "assembly": [
        {
          "assembly": "DelVar hist",
          "explain": "delete method variable hist"
        }
      ]
    },
    {
      "initialPc": 124,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "23",
      "sourceCode": "                    hist += [update,]",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "building a tuple: push constant ()"
        }
      ]
    },
    {
      "initialPc": 125,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "23",
      "sourceCode": "                    hist += [update,]",
      "assembly": [
        {
          "assembly": "LoadVar update",
          "explain": "push the value of update"
        }
      ]
    },
    {
      "initialPc": 126,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "23",
      "sourceCode": "                    hist += [update,]",
      "assembly": [
        {
          "assembly": "DelVar update",
          "explain": "delete method variable update"
        }
      ]
    },
    {
      "initialPc": 127,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "23",
      "sourceCode": "                    hist += [update,]",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 128,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "23",
      "sourceCode": "                    hist += [update,]",
      "assembly": [
        {
          "assembly": "2-ary +",
          "explain": "pop 2 values and push the result of applying +"
        }
      ]
    },
    {
      "initialPc": 129,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "23",
      "sourceCode": "                    hist += [update,]",
      "assembly": [
        {
          "assembly": "StoreVar hist",
          "explain": "pop a value and store in hist"
        }
      ]
    },
    {
      "initialPc": 130,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "22",
      "sourceCode": "                for update in requests where update not in hist:",
      "assembly": [
        {
          "assembly": "Jump 115",
          "explain": "set program counter to 115"
        }
      ]
    },
    {
      "initialPc": 131,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "24",
      "sourceCode": "            if self == max(config):     # I'm the tail, deliver updates",
      "assembly": [
        {
          "assembly": "DelVar update",
          "explain": "delete method variable update"
        }
      ]
    },
    {
      "initialPc": 132,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "24",
      "sourceCode": "            if self == max(config):     # I'm the tail, deliver updates",
      "assembly": [
        {
          "assembly": "LoadVar self",
          "explain": "push the value of self"
        }
      ]
    },
    {
      "initialPc": 133,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "24",
      "sourceCode": "            if self == max(config):     # I'm the tail, deliver updates",
      "assembly": [
        {
          "assembly": "LoadVar config",
          "explain": "push the value of config"
        }
      ]
    },
    {
      "initialPc": 134,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "24",
      "sourceCode": "            if self == max(config):     # I'm the tail, deliver updates",
      "assembly": [
        {
          "assembly": "1-ary max",
          "explain": "pop 1 value and push the result of applying max"
        }
      ]
    },
    {
      "initialPc": 135,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "24",
      "sourceCode": "            if self == max(config):     # I'm the tail, deliver updates",
      "assembly": [
        {
          "assembly": "2-ary ==",
          "explain": "pop 2 values and push the result of applying =="
        }
      ]
    },
    {
      "initialPc": 136,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "24",
      "sourceCode": "            if self == max(config):     # I'm the tail, deliver updates",
      "assembly": [
        {
          "assembly": "JumpCond False 158",
          "explain": "pop a value and jump to 158 if the value is False"
        }
      ]
    },
    {
      "initialPc": 137,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "25",
      "sourceCode": "                while delivered < len(hist):",
      "assembly": [
        {
          "assembly": "LoadVar delivered",
          "explain": "push the value of delivered"
        }
      ]
    },
    {
      "initialPc": 138,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "25",
      "sourceCode": "                while delivered < len(hist):",
      "assembly": [
        {
          "assembly": "LoadVar hist",
          "explain": "push the value of hist"
        }
      ]
    },
    {
      "initialPc": 139,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "25",
      "sourceCode": "                while delivered < len(hist):",
      "assembly": [
        {
          "assembly": "1-ary len",
          "explain": "pop 1 value and push the result of applying len"
        }
      ]
    },
    {
      "initialPc": 140,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "25",
      "sourceCode": "                while delivered < len(hist):",
      "assembly": [
        {
          "assembly": "2-ary <",
          "explain": "pop 2 values and push the result of applying <"
        }
      ]
    },
    {
      "initialPc": 141,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "25",
      "sourceCode": "                while delivered < len(hist):",
      "assembly": [
        {
          "assembly": "JumpCond False 193",
          "explain": "pop a value and jump to 193 if the value is False"
        }
      ]
    },
    {
      "initialPc": 142,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "26",
      "sourceCode": "                    print(self, hist[delivered])",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "building a tuple: push constant ()"
        }
      ]
    },
    {
      "initialPc": 143,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "26",
      "sourceCode": "                    print(self, hist[delivered])",
      "assembly": [
        {
          "assembly": "LoadVar self",
          "explain": "push the value of self"
        }
      ]
    },
    {
      "initialPc": 144,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "26",
      "sourceCode": "                    print(self, hist[delivered])",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 145,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "26",
      "sourceCode": "                    print(self, hist[delivered])",
      "assembly": [
        {
          "assembly": "LoadVar hist",
          "explain": "push the value of hist"
        }
      ]
    },
    {
      "initialPc": 146,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "26",
      "sourceCode": "                    print(self, hist[delivered])",
      "assembly": [
        {
          "assembly": "LoadVar delivered",
          "explain": "push the value of delivered"
        }
      ]
    },
    {
      "initialPc": 147,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "26",
      "sourceCode": "                    print(self, hist[delivered])",
      "assembly": [
        {
          "assembly": "2-ary Closure",
          "explain": "pop 2 values and push the result of applying Closure"
        }
      ]
    },
    {
      "initialPc": 148,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "26",
      "sourceCode": "                    print(self, hist[delivered])",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 149,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "26",
      "sourceCode": "                    print(self, hist[delivered])",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 150,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "26",
      "sourceCode": "                    print(self, hist[delivered])",
      "assembly": [
        {
          "assembly": "Print",
          "explain": "pop a value and add to print history"
        }
      ]
    },
    {
      "initialPc": 151,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "27",
      "sourceCode": "                    delivered += 1",
      "assembly": [
        {
          "assembly": "LoadVar delivered",
          "explain": "push the value of delivered"
        }
      ]
    },
    {
      "initialPc": 152,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "27",
      "sourceCode": "                    delivered += 1",
      "assembly": [
        {
          "assembly": "DelVar delivered",
          "explain": "delete method variable delivered"
        }
      ]
    },
    {
      "initialPc": 153,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "27",
      "sourceCode": "                    delivered += 1",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 154,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "27",
      "sourceCode": "                    delivered += 1",
      "assembly": [
        {
          "assembly": "2-ary +",
          "explain": "pop 2 values and push the result of applying +"
        }
      ]
    },
    {
      "initialPc": 155,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "27",
      "sourceCode": "                    delivered += 1",
      "assembly": [
        {
          "assembly": "StoreVar delivered",
          "explain": "pop a value and store in delivered"
        }
      ]
    },
    {
      "initialPc": 156,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "25",
      "sourceCode": "                while delivered < len(hist):",
      "assembly": [
        {
          "assembly": "Jump 137",
          "explain": "set program counter to 137"
        }
      ]
    },
    {
      "initialPc": 157,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "24",
      "sourceCode": "            if self == max(config):     # I'm the tail, deliver updates",
      "assembly": [
        {
          "assembly": "Jump 193",
          "explain": "set program counter to 193"
        }
      ]
    },
    {
      "initialPc": 158,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "29",
      "sourceCode": "                let successor = min(i for i in config where i > self):",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "initialize accumulator for list comprehension: push constant ()"
        }
      ]
    },
    {
      "initialPc": 159,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "29",
      "sourceCode": "                let successor = min(i for i in config where i > self):",
      "assembly": [
        {
          "assembly": "StoreVar $accu141",
          "explain": "initialize accumulator for list comprehension: pop a value and store in $accu141"
        }
      ]
    },
    {
      "initialPc": 160,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "29",
      "sourceCode": "                let successor = min(i for i in config where i > self):",
      "assembly": [
        {
          "assembly": "LoadVar config",
          "explain": "push the value of config"
        }
      ]
    },
    {
      "initialPc": 161,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "29",
      "sourceCode": "                let successor = min(i for i in config where i > self):",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 162,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "29",
      "sourceCode": "                let successor = min(i for i in config where i > self):",
      "assembly": [
        {
          "assembly": "DelVar i",
          "explain": "delete method variable i"
        }
      ]
    },
    {
      "initialPc": 163,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "29",
      "sourceCode": "                let successor = min(i for i in config where i > self):",
      "assembly": [
        {
          "assembly": "Cut(i)",
          "explain": "get next element and assign to i; push False or True depending on success"
        }
      ]
    },
    {
      "initialPc": 164,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "29",
      "sourceCode": "                let successor = min(i for i in config where i > self):",
      "assembly": [
        {
          "assembly": "JumpCond False 176",
          "explain": "check if loop is done: pop a value and jump to 176 if the value is False"
        }
      ]
    },
    {
      "initialPc": 165,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "29",
      "sourceCode": "                let successor = min(i for i in config where i > self):",
      "assembly": [
        {
          "assembly": "LoadVar i",
          "explain": "push the value of i"
        }
      ]
    },
    {
      "initialPc": 166,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "29",
      "sourceCode": "                let successor = min(i for i in config where i > self):",
      "assembly": [
        {
          "assembly": "LoadVar self",
          "explain": "push the value of self"
        }
      ]
    },
    {
      "initialPc": 167,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "29",
      "sourceCode": "                let successor = min(i for i in config where i > self):",
      "assembly": [
        {
          "assembly": "2-ary >",
          "explain": "pop 2 values and push the result of applying >"
        }
      ]
    },
    {
      "initialPc": 168,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "29",
      "sourceCode": "                let successor = min(i for i in config where i > self):",
      "assembly": [
        {
          "assembly": "JumpCond False 162",
          "explain": "pop a value and jump to 162 if the value is False"
        }
      ]
    },
    {
      "initialPc": 169,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "29",
      "sourceCode": "                let successor = min(i for i in config where i > self):",
      "assembly": [
        {
          "assembly": "LoadVar $accu141",
          "explain": "load accumulator: push the value of $accu141"
        }
      ]
    },
    {
      "initialPc": 170,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "29",
      "sourceCode": "                let successor = min(i for i in config where i > self):",
      "assembly": [
        {
          "assembly": "DelVar $accu141",
          "explain": "delete method variable $accu141"
        }
      ]
    },
    {
      "initialPc": 171,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "29",
      "sourceCode": "                let successor = min(i for i in config where i > self):",
      "assembly": [
        {
          "assembly": "LoadVar i",
          "explain": "push the value of i"
        }
      ]
    },
    {
      "initialPc": 172,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "29",
      "sourceCode": "                let successor = min(i for i in config where i > self):",
      "assembly": [
        {
          "assembly": "DelVar i",
          "explain": "delete method variable i"
        }
      ]
    },
    {
      "initialPc": 173,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "29",
      "sourceCode": "                let successor = min(i for i in config where i > self):",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 174,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "29",
      "sourceCode": "                let successor = min(i for i in config where i > self):",
      "assembly": [
        {
          "assembly": "StoreVar $accu141",
          "explain": "update accumulator: pop a value and store in $accu141"
        }
      ]
    },
    {
      "initialPc": 175,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "29",
      "sourceCode": "                let successor = min(i for i in config where i > self):",
      "assembly": [
        {
          "assembly": "Jump 162",
          "explain": "set program counter to 162"
        }
      ]
    },
    {
      "initialPc": 176,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "29",
      "sourceCode": "                let successor = min(i for i in config where i > self):",
      "assembly": [
        {
          "assembly": "DelVar i",
          "explain": "delete method variable i"
        }
      ]
    },
    {
      "initialPc": 177,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "29",
      "sourceCode": "                let successor = min(i for i in config where i > self):",
      "assembly": [
        {
          "assembly": "LoadVar $accu141",
          "explain": "load final accumulator result: push the value of $accu141"
        }
      ]
    },
    {
      "initialPc": 178,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "29",
      "sourceCode": "                let successor = min(i for i in config where i > self):",
      "assembly": [
        {
          "assembly": "DelVar $accu141",
          "explain": "delete method variable $accu141"
        }
      ]
    },
    {
      "initialPc": 179,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "29",
      "sourceCode": "                let successor = min(i for i in config where i > self):",
      "assembly": [
        {
          "assembly": "1-ary min",
          "explain": "pop 1 value and push the result of applying min"
        }
      ]
    },
    {
      "initialPc": 180,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "29",
      "sourceCode": "                let successor = min(i for i in config where i > self):",
      "assembly": [
        {
          "assembly": "StoreVar successor",
          "explain": "pop a value and store in successor"
        }
      ]
    },
    {
      "initialPc": 181,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "30",
      "sourceCode": "                    send(self, successor, hist)",
      "assembly": [
        {
          "assembly": "Push ?send",
          "explain": "push constant ?send"
        }
      ]
    },
    {
      "initialPc": 182,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "30",
      "sourceCode": "                    send(self, successor, hist)",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "building a tuple: push constant ()"
        }
      ]
    },
    {
      "initialPc": 183,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "30",
      "sourceCode": "                    send(self, successor, hist)",
      "assembly": [
        {
          "assembly": "LoadVar self",
          "explain": "push the value of self"
        }
      ]
    },
    {
      "initialPc": 184,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "30",
      "sourceCode": "                    send(self, successor, hist)",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 185,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "30",
      "sourceCode": "                    send(self, successor, hist)",
      "assembly": [
        {
          "assembly": "LoadVar successor",
          "explain": "push the value of successor"
        }
      ]
    },
    {
      "initialPc": 186,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "30",
      "sourceCode": "                    send(self, successor, hist)",
      "assembly": [
        {
          "assembly": "DelVar successor",
          "explain": "delete method variable successor"
        }
      ]
    },
    {
      "initialPc": 187,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "30",
      "sourceCode": "                    send(self, successor, hist)",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 188,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "30",
      "sourceCode": "                    send(self, successor, hist)",
      "assembly": [
        {
          "assembly": "LoadVar hist",
          "explain": "push the value of hist"
        }
      ]
    },
    {
      "initialPc": 189,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "30",
      "sourceCode": "                    send(self, successor, hist)",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 190,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "30",
      "sourceCode": "                    send(self, successor, hist)",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 191,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "30",
      "sourceCode": "                    send(self, successor, hist)",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 192,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "30",
      "sourceCode": "                    send(self, successor, hist)",
      "assembly": [
        {
          "assembly": "Pop",
          "explain": "discard the top value on the stack"
        }
      ]
    },
    {
      "initialPc": 193,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "12",
      "sourceCode": "        atomically when exists (src, payload) in receive(self) - received:",
      "assembly": [
        {
          "assembly": "AtomicDec",
          "explain": "decrement atomic counter of context"
        }
      ]
    },
    {
      "initialPc": 194,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "11",
      "sourceCode": "    while True:",
      "assembly": [
        {
          "assembly": "Jump 22",
          "explain": "set program counter to 22"
        }
      ]
    },
    {
      "initialPc": 195,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "1",
      "sourceCode": "def replica(self, immortal):        # replica 'self'",
      "assembly": [
        {
          "assembly": "DelVar config",
          "explain": "delete method variable config"
        }
      ]
    },
    {
      "initialPc": 196,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "1",
      "sourceCode": "def replica(self, immortal):        # replica 'self'",
      "assembly": [
        {
          "assembly": "DelVar delivered",
          "explain": "delete method variable delivered"
        }
      ]
    },
    {
      "initialPc": 197,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "1",
      "sourceCode": "def replica(self, immortal):        # replica 'self'",
      "assembly": [
        {
          "assembly": "DelVar hist",
          "explain": "delete method variable hist"
        }
      ]
    },
    {
      "initialPc": 198,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "1",
      "sourceCode": "def replica(self, immortal):        # replica 'self'",
      "assembly": [
        {
          "assembly": "DelVar received",
          "explain": "delete method variable received"
        }
      ]
    },
    {
      "initialPc": 199,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "1",
      "sourceCode": "def replica(self, immortal):        # replica 'self'",
      "assembly": [
        {
          "assembly": "DelVar requests",
          "explain": "delete method variable requests"
        }
      ]
    },
    {
      "initialPc": 200,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "1",
      "sourceCode": "def replica(self, immortal):        # replica 'self'",
      "assembly": [
        {
          "assembly": "DelVar self",
          "explain": "delete method variable self"
        }
      ]
    },
    {
      "initialPc": 201,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "1",
      "sourceCode": "def replica(self, immortal):        # replica 'self'",
      "assembly": [
        {
          "assembly": "ReturnOp(result. None)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 202,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "32",
      "sourceCode": "def client(self):",
      "assembly": [
        {
          "assembly": "Jump 217",
          "explain": "jump over method definition: set program counter to 217"
        }
      ]
    },
    {
      "initialPc": 203,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "32",
      "sourceCode": "def client(self):",
      "assembly": [
        {
          "assembly": "Frame client(self)",
          "explain": "start of method client"
        }
      ]
    },
    {
      "initialPc": 204,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "33",
      "sourceCode": "    print(self)",
      "assembly": [
        {
          "assembly": "LoadVar self",
          "explain": "push the value of self"
        }
      ]
    },
    {
      "initialPc": 205,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "33",
      "sourceCode": "    print(self)",
      "assembly": [
        {
          "assembly": "Print",
          "explain": "pop a value and add to print history"
        }
      ]
    },
    {
      "initialPc": 206,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "34",
      "sourceCode": "    broadcast(\"client\", self)",
      "assembly": [
        {
          "assembly": "Push ?broadcast",
          "explain": "push constant ?broadcast"
        }
      ]
    },
    {
      "initialPc": 207,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "34",
      "sourceCode": "    broadcast(\"client\", self)",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "building a tuple: push constant ()"
        }
      ]
    },
    {
      "initialPc": 208,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "34",
      "sourceCode": "    broadcast(\"client\", self)",
      "assembly": [
        {
          "assembly": "Push \"client\"",
          "explain": "push constant \"client\""
        }
      ]
    },
    {
      "initialPc": 209,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "34",
      "sourceCode": "    broadcast(\"client\", self)",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 210,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "34",
      "sourceCode": "    broadcast(\"client\", self)",
      "assembly": [
        {
          "assembly": "LoadVar self",
          "explain": "push the value of self"
        }
      ]
    },
    {
      "initialPc": 211,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "34",
      "sourceCode": "    broadcast(\"client\", self)",
      "assembly": [
        {
          "assembly": "DelVar self",
          "explain": "delete method variable self"
        }
      ]
    },
    {
      "initialPc": 212,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "34",
      "sourceCode": "    broadcast(\"client\", self)",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 213,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "34",
      "sourceCode": "    broadcast(\"client\", self)",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 214,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "34",
      "sourceCode": "    broadcast(\"client\", self)",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 215,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "34",
      "sourceCode": "    broadcast(\"client\", self)",
      "assembly": [
        {
          "assembly": "Pop",
          "explain": "discard the top value on the stack"
        }
      ]
    },
    {
      "initialPc": 216,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "32",
      "sourceCode": "def client(self):",
      "assembly": [
        {
          "assembly": "ReturnOp(result. None)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 217,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "36",
      "sourceCode": "let immortal = choose {1..NREPLICAS}:",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 218,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "36",
      "sourceCode": "let immortal = choose {1..NREPLICAS}:",
      "assembly": [
        {
          "assembly": "Load NREPLICAS",
          "explain": "push value of shared variable NREPLICAS"
        }
      ]
    },
    {
      "initialPc": 219,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "36",
      "sourceCode": "let immortal = choose {1..NREPLICAS}:",
      "assembly": [
        {
          "assembly": "2-ary ..",
          "explain": "pop 2 values and push the result of applying .."
        }
      ]
    },
    {
      "initialPc": 220,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "36",
      "sourceCode": "let immortal = choose {1..NREPLICAS}:",
      "assembly": [
        {
          "assembly": "Choose",
          "explain": "pop a set value and push one of its elements"
        }
      ]
    },
    {
      "initialPc": 221,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "36",
      "sourceCode": "let immortal = choose {1..NREPLICAS}:",
      "assembly": [
        {
          "assembly": "StoreVar immortal",
          "explain": "pop a value and store in immortal"
        }
      ]
    },
    {
      "initialPc": 222,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "37",
      "sourceCode": "    for i in {1..NREPLICAS}:",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 223,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "37",
      "sourceCode": "    for i in {1..NREPLICAS}:",
      "assembly": [
        {
          "assembly": "Load NREPLICAS",
          "explain": "push value of shared variable NREPLICAS"
        }
      ]
    },
    {
      "initialPc": 224,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "37",
      "sourceCode": "    for i in {1..NREPLICAS}:",
      "assembly": [
        {
          "assembly": "2-ary ..",
          "explain": "pop 2 values and push the result of applying .."
        }
      ]
    },
    {
      "initialPc": 225,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "37",
      "sourceCode": "    for i in {1..NREPLICAS}:",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 226,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "37",
      "sourceCode": "    for i in {1..NREPLICAS}:",
      "assembly": [
        {
          "assembly": "Cut(i)",
          "explain": "get next element and assign to i; push False or True depending on success"
        }
      ]
    },
    {
      "initialPc": 227,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "37",
      "sourceCode": "    for i in {1..NREPLICAS}:",
      "assembly": [
        {
          "assembly": "JumpCond False 241",
          "explain": "check if loop is done: pop a value and jump to 241 if the value is False"
        }
      ]
    },
    {
      "initialPc": 228,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "38",
      "sourceCode": "        spawn eternal replica(i, i == immortal)",
      "assembly": [
        {
          "assembly": "Push ?PC(2)",
          "explain": "push constant ?PC(2)"
        }
      ]
    },
    {
      "initialPc": 229,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "38",
      "sourceCode": "        spawn eternal replica(i, i == immortal)",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "building a tuple: push constant ()"
        }
      ]
    },
    {
      "initialPc": 230,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "38",
      "sourceCode": "        spawn eternal replica(i, i == immortal)",
      "assembly": [
        {
          "assembly": "LoadVar i",
          "explain": "push the value of i"
        }
      ]
    },
    {
      "initialPc": 231,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "38",
      "sourceCode": "        spawn eternal replica(i, i == immortal)",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 232,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "38",
      "sourceCode": "        spawn eternal replica(i, i == immortal)",
      "assembly": [
        {
          "assembly": "LoadVar i",
          "explain": "push the value of i"
        }
      ]
    },
    {
      "initialPc": 233,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "38",
      "sourceCode": "        spawn eternal replica(i, i == immortal)",
      "assembly": [
        {
          "assembly": "DelVar i",
          "explain": "delete method variable i"
        }
      ]
    },
    {
      "initialPc": 234,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "38",
      "sourceCode": "        spawn eternal replica(i, i == immortal)",
      "assembly": [
        {
          "assembly": "LoadVar immortal",
          "explain": "push the value of immortal"
        }
      ]
    },
    {
      "initialPc": 235,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "38",
      "sourceCode": "        spawn eternal replica(i, i == immortal)",
      "assembly": [
        {
          "assembly": "2-ary ==",
          "explain": "pop 2 values and push the result of applying =="
        }
      ]
    },
    {
      "initialPc": 236,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "38",
      "sourceCode": "        spawn eternal replica(i, i == immortal)",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 237,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "38",
      "sourceCode": "        spawn eternal replica(i, i == immortal)",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 238,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "38",
      "sourceCode": "        spawn eternal replica(i, i == immortal)",
      "assembly": [
        {
          "assembly": "Push {:}",
          "explain": "push constant {:}"
        }
      ]
    },
    {
      "initialPc": 239,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "38",
      "sourceCode": "        spawn eternal replica(i, i == immortal)",
      "assembly": [
        {
          "assembly": "Spawn",
          "explain": "pop thread-local state, argument, and pc and spawn a new thread"
        }
      ]
    },
    {
      "initialPc": 240,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "37",
      "sourceCode": "    for i in {1..NREPLICAS}:",
      "assembly": [
        {
          "assembly": "Jump 226",
          "explain": "set program counter to 226"
        }
      ]
    },
    {
      "initialPc": 241,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "39",
      "sourceCode": "for i in {1..NOPS}:",
      "assembly": [
        {
          "assembly": "DelVar i",
          "explain": "delete method variable i"
        }
      ]
    },
    {
      "initialPc": 242,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "39",
      "sourceCode": "for i in {1..NOPS}:",
      "assembly": [
        {
          "assembly": "DelVar immortal",
          "explain": "delete method variable immortal"
        }
      ]
    },
    {
      "initialPc": 243,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "39",
      "sourceCode": "for i in {1..NOPS}:",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 244,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "39",
      "sourceCode": "for i in {1..NOPS}:",
      "assembly": [
        {
          "assembly": "Load NOPS",
          "explain": "push value of shared variable NOPS"
        }
      ]
    },
    {
      "initialPc": 245,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "39",
      "sourceCode": "for i in {1..NOPS}:",
      "assembly": [
        {
          "assembly": "2-ary ..",
          "explain": "pop 2 values and push the result of applying .."
        }
      ]
    },
    {
      "initialPc": 246,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "39",
      "sourceCode": "for i in {1..NOPS}:",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 247,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "39",
      "sourceCode": "for i in {1..NOPS}:",
      "assembly": [
        {
          "assembly": "Cut(i)",
          "explain": "get next element and assign to i; push False or True depending on success"
        }
      ]
    },
    {
      "initialPc": 248,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "39",
      "sourceCode": "for i in {1..NOPS}:",
      "assembly": [
        {
          "assembly": "JumpCond False 256",
          "explain": "check if loop is done: pop a value and jump to 256 if the value is False"
        }
      ]
    },
    {
      "initialPc": 249,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "40",
      "sourceCode": "    spawn client(i)",
      "assembly": [
        {
          "assembly": "Push ?PC(203)",
          "explain": "push constant ?PC(203)"
        }
      ]
    },
    {
      "initialPc": 250,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "40",
      "sourceCode": "    spawn client(i)",
      "assembly": [
        {
          "assembly": "LoadVar i",
          "explain": "push the value of i"
        }
      ]
    },
    {
      "initialPc": 251,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "40",
      "sourceCode": "    spawn client(i)",
      "assembly": [
        {
          "assembly": "DelVar i",
          "explain": "delete method variable i"
        }
      ]
    },
    {
      "initialPc": 252,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "40",
      "sourceCode": "    spawn client(i)",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 253,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "40",
      "sourceCode": "    spawn client(i)",
      "assembly": [
        {
          "assembly": "Push {:}",
          "explain": "push constant {:}"
        }
      ]
    },
    {
      "initialPc": 254,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "40",
      "sourceCode": "    spawn client(i)",
      "assembly": [
        {
          "assembly": "Spawn",
          "explain": "pop thread-local state, argument, and pc and spawn a new thread"
        }
      ]
    },
    {
      "initialPc": 255,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "39",
      "sourceCode": "for i in {1..NOPS}:",
      "assembly": [
        {
          "assembly": "Jump 247",
          "explain": "set program counter to 247"
        }
      ]
    },
    {
      "initialPc": 256,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "1",
      "sourceCode": "def replica(self, immortal):        # replica 'self'",
      "assembly": [
        {
          "assembly": "DelVar i",
          "explain": "delete method variable i"
        }
      ]
    },
    {
      "initialPc": 257,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "1",
      "sourceCode": "def replica(self, immortal):        # replica 'self'",
      "assembly": [
        {
          "assembly": "ReturnOp(result. None)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 258,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/chain2.hny",
      "line": "1",
      "sourceCode": "def replica(self, immortal):        # replica 'self'",
      "assembly": [
        {
          "assembly": "DelVar result",
          "explain": "delete method variable result"
        }
      ]
    }
  ]
}