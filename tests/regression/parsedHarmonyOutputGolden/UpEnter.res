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
      "duration": 7,
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
        "count": 0,
        "done": [
          false,
          false
        ]
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
        "count": 0,
        "done": [
          false,
          false
        ],
        "entered": [
          false,
          false
        ]
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
        "count": 0,
        "done": [
          false,
          false
        ],
        "entered": [
          false,
          false
        ]
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
              "pc": "72"
            }
          ]
        }
      },
      "tid": "0",
      "name": "__init__()",
      "macroStepIdx": 0
    },
    {
      "duration": 5,
      "sharedValues": {
        "count": 0,
        "done": [
          false,
          false
        ],
        "entered": [
          false,
          false
        ]
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
              "pc": "72"
            }
          ]
        },
        "2": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "incrementer(1)",
              "pc": "13",
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
      "name": "incrementer(1)",
      "macroStepIdx": 1
    },
    {
      "duration": 6,
      "sharedValues": {
        "count": 0,
        "done": [
          false,
          false
        ],
        "entered": [
          false,
          true
        ]
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
              "pc": "72"
            }
          ]
        },
        "2": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "incrementer(1)",
              "pc": "18",
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
      "name": "incrementer(1)",
      "macroStepIdx": 2
    },
    {
      "duration": 5,
      "sharedValues": {
        "count": 0,
        "done": [
          false,
          false
        ],
        "entered": [
          false,
          true
        ]
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
              "pc": "72"
            }
          ]
        },
        "1": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "incrementer(0)",
              "pc": "13",
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
        },
        "2": {
          "mode": "runnable",
          "fullStatus": "runnable",
          "status": "runnable",
          "callStack": [
            {
              "method": "incrementer(1)",
              "pc": "18",
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
      "tid": "1",
      "name": "incrementer(0)",
      "macroStepIdx": 3
    },
    {
      "duration": 6,
      "sharedValues": {
        "count": 0,
        "done": [
          false,
          false
        ],
        "entered": [
          true,
          true
        ]
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
              "pc": "72"
            }
          ]
        },
        "1": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "incrementer(0)",
              "pc": "18",
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
        },
        "2": {
          "mode": "runnable",
          "fullStatus": "runnable",
          "status": "runnable",
          "callStack": [
            {
              "method": "incrementer(1)",
              "pc": "18",
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
      "tid": "1",
      "name": "incrementer(0)",
      "macroStepIdx": 4
    },
    {
      "duration": 7,
      "sharedValues": {
        "count": 0,
        "done": [
          false,
          false
        ],
        "entered": [
          true,
          true
        ]
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
              "pc": "72"
            }
          ]
        },
        "1": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "incrementer(0)",
              "pc": "24",
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
        },
        "2": {
          "mode": "runnable",
          "fullStatus": "runnable",
          "status": "runnable",
          "callStack": [
            {
              "method": "incrementer(1)",
              "pc": "18",
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
      "tid": "1",
      "name": "incrementer(0)",
      "macroStepIdx": 5
    },
    {
      "duration": 7,
      "sharedValues": {
        "count": 0,
        "done": [
          false,
          false
        ],
        "entered": [
          true,
          true
        ]
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
              "pc": "72"
            }
          ]
        },
        "1": {
          "mode": "blocked",
          "fullStatus": "blocked",
          "status": "blocked",
          "callStack": [
            {
              "method": "incrementer(0)",
              "pc": "24",
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
        },
        "2": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "incrementer(1)",
              "pc": "24",
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
      "name": "incrementer(1)",
      "macroStepIdx": 6
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
      "sliceIdx": 2,
      "time": 9,
      "pc": 9,
      "npc": 10
    },
    {
      "sliceIdx": 3,
      "time": 10,
      "pc": 10,
      "npc": 11
    },
    {
      "sliceIdx": 3,
      "time": 11,
      "pc": 11,
      "npc": 62
    },
    {
      "sliceIdx": 3,
      "time": 12,
      "pc": 62,
      "npc": 63
    },
    {
      "sliceIdx": 3,
      "time": 13,
      "pc": 63,
      "npc": 64
    },
    {
      "sliceIdx": 3,
      "time": 14,
      "pc": 64,
      "npc": 65
    },
    {
      "sliceIdx": 3,
      "time": 15,
      "pc": 65,
      "npc": 66
    },
    {
      "sliceIdx": 3,
      "time": 16,
      "pc": 66,
      "npc": 67
    },
    {
      "sliceIdx": 3,
      "time": 17,
      "pc": 67,
      "npc": 68
    },
    {
      "sliceIdx": 3,
      "time": 18,
      "pc": 68,
      "npc": 69
    },
    {
      "sliceIdx": 3,
      "time": 19,
      "pc": 69,
      "npc": 70
    },
    {
      "sliceIdx": 3,
      "time": 20,
      "pc": 70,
      "npc": 71
    },
    {
      "sliceIdx": 3,
      "time": 21,
      "pc": 71,
      "npc": 72
    },
    {
      "sliceIdx": 4,
      "time": 22,
      "pc": 72,
      "npc": 72
    },
    {
      "pc": 12,
      "npc": 13,
      "sliceIdx": 5,
      "time": 23
    },
    {
      "sliceIdx": 5,
      "time": 24,
      "pc": 13,
      "npc": 14
    },
    {
      "sliceIdx": 5,
      "time": 25,
      "pc": 14,
      "npc": 15
    },
    {
      "sliceIdx": 5,
      "time": 26,
      "pc": 15,
      "npc": 16
    },
    {
      "sliceIdx": 5,
      "time": 27,
      "pc": 16,
      "npc": 17
    },
    {
      "pc": 17,
      "npc": 18,
      "sliceIdx": 6,
      "time": 28
    },
    {
      "sliceIdx": 6,
      "time": 29,
      "pc": 18,
      "npc": 19
    },
    {
      "sliceIdx": 6,
      "time": 30,
      "pc": 19,
      "npc": 20
    },
    {
      "sliceIdx": 6,
      "time": 31,
      "pc": 20,
      "npc": 21
    },
    {
      "sliceIdx": 6,
      "time": 32,
      "pc": 21,
      "npc": 22
    },
    {
      "sliceIdx": 6,
      "time": 33,
      "pc": 22,
      "npc": 23
    },
    {
      "pc": 12,
      "npc": 13,
      "sliceIdx": 7,
      "time": 34
    },
    {
      "sliceIdx": 7,
      "time": 35,
      "pc": 13,
      "npc": 14
    },
    {
      "sliceIdx": 7,
      "time": 36,
      "pc": 14,
      "npc": 15
    },
    {
      "sliceIdx": 7,
      "time": 37,
      "pc": 15,
      "npc": 16
    },
    {
      "sliceIdx": 7,
      "time": 38,
      "pc": 16,
      "npc": 17
    },
    {
      "pc": 17,
      "npc": 18,
      "sliceIdx": 8,
      "time": 39
    },
    {
      "sliceIdx": 8,
      "time": 40,
      "pc": 18,
      "npc": 19
    },
    {
      "sliceIdx": 8,
      "time": 41,
      "pc": 19,
      "npc": 20
    },
    {
      "sliceIdx": 8,
      "time": 42,
      "pc": 20,
      "npc": 21
    },
    {
      "sliceIdx": 8,
      "time": 43,
      "pc": 21,
      "npc": 22
    },
    {
      "sliceIdx": 8,
      "time": 44,
      "pc": 22,
      "npc": 23
    },
    {
      "pc": 23,
      "npc": 24,
      "sliceIdx": 9,
      "time": 45
    },
    {
      "sliceIdx": 9,
      "time": 46,
      "pc": 24,
      "npc": 25
    },
    {
      "sliceIdx": 9,
      "time": 47,
      "pc": 25,
      "npc": 26
    },
    {
      "sliceIdx": 9,
      "time": 48,
      "pc": 26,
      "npc": 27
    },
    {
      "sliceIdx": 9,
      "time": 49,
      "pc": 27,
      "npc": 28
    },
    {
      "sliceIdx": 9,
      "time": 50,
      "pc": 28,
      "npc": 29
    },
    {
      "sliceIdx": 9,
      "time": 51,
      "pc": 29,
      "npc": 30
    },
    {
      "pc": 23,
      "npc": 24,
      "sliceIdx": 10,
      "time": 52
    },
    {
      "sliceIdx": 10,
      "time": 53,
      "pc": 24,
      "npc": 25
    },
    {
      "sliceIdx": 10,
      "time": 54,
      "pc": 25,
      "npc": 26
    },
    {
      "sliceIdx": 10,
      "time": 55,
      "pc": 26,
      "npc": 27
    },
    {
      "sliceIdx": 10,
      "time": 56,
      "pc": 27,
      "npc": 28
    },
    {
      "sliceIdx": 10,
      "time": 57,
      "pc": 28,
      "npc": 29
    },
    {
      "sliceIdx": 10,
      "time": 58,
      "pc": 29,
      "npc": 30
    }
  ],
  "macroSteps": [
    {
      "tid": "0",
      "name": "__init__()",
      "duration": 23,
      "startSliceIdx": 0,
      "lastSliceIdx": 5
    },
    {
      "tid": "2",
      "name": "incrementer(1)",
      "duration": 5,
      "startSliceIdx": 5,
      "lastSliceIdx": 6
    },
    {
      "tid": "2",
      "name": "incrementer(1)",
      "duration": 6,
      "startSliceIdx": 6,
      "lastSliceIdx": 7
    },
    {
      "tid": "1",
      "name": "incrementer(0)",
      "duration": 5,
      "startSliceIdx": 7,
      "lastSliceIdx": 8
    },
    {
      "tid": "1",
      "name": "incrementer(0)",
      "duration": 6,
      "startSliceIdx": 8,
      "lastSliceIdx": 9
    },
    {
      "tid": "1",
      "name": "incrementer(0)",
      "duration": 7,
      "startSliceIdx": 9,
      "lastSliceIdx": 10
    },
    {
      "tid": "2",
      "name": "incrementer(1)",
      "duration": 7,
      "startSliceIdx": 10,
      "lastSliceIdx": 11
    }
  ],
  "idToThreadName": {
    "0": "__init__()",
    "1": "incrementer(0)",
    "2": "incrementer(1)"
  },
  "executedCode": [
    {
      "initialPc": 0,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "3",
      "sourceCode": "entered = done = [ False, False ]",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "building a tuple: push constant ()"
        }
      ]
    },
    {
      "initialPc": 4,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "3",
      "sourceCode": "entered = done = [ False, False ]",
      "assembly": [
        {
          "assembly": "Push False",
          "explain": "push constant False"
        }
      ]
    },
    {
      "initialPc": 5,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "3",
      "sourceCode": "entered = done = [ False, False ]",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 6,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "3",
      "sourceCode": "entered = done = [ False, False ]",
      "assembly": [
        {
          "assembly": "Push False",
          "explain": "push constant False"
        }
      ]
    },
    {
      "initialPc": 7,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "3",
      "sourceCode": "entered = done = [ False, False ]",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 8,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "3",
      "sourceCode": "entered = done = [ False, False ]",
      "assembly": [
        {
          "assembly": "Dup",
          "explain": "push a copy of the top value on the stack"
        }
      ]
    },
    {
      "initialPc": 9,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "3",
      "sourceCode": "entered = done = [ False, False ]",
      "assembly": [
        {
          "assembly": "Store done",
          "explain": "pop a value and store it in shared variable done"
        }
      ]
    },
    {
      "initialPc": 10,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "3",
      "sourceCode": "entered = done = [ False, False ]",
      "assembly": [
        {
          "assembly": "Store entered",
          "explain": "pop a value and store it in shared variable entered"
        }
      ]
    },
    {
      "initialPc": 11,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "5",
      "sourceCode": "def incrementer(self):",
      "assembly": [
        {
          "assembly": "Jump 62",
          "explain": "jump over method definition: set program counter to 62"
        }
      ]
    },
    {
      "initialPc": 12,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "5",
      "sourceCode": "def incrementer(self):",
      "assembly": [
        {
          "assembly": "Frame incrementer(self)",
          "explain": "start of method incrementer"
        }
      ]
    },
    {
      "initialPc": 13,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "6",
      "sourceCode": "    entered[self] = True",
      "assembly": [
        {
          "assembly": "Push ?entered",
          "explain": "push constant ?entered"
        }
      ]
    },
    {
      "initialPc": 14,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "6",
      "sourceCode": "    entered[self] = True",
      "assembly": [
        {
          "assembly": "LoadVar self",
          "explain": "push the value of self"
        }
      ]
    },
    {
      "initialPc": 15,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "6",
      "sourceCode": "    entered[self] = True",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 16,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "6",
      "sourceCode": "    entered[self] = True",
      "assembly": [
        {
          "assembly": "Push True",
          "explain": "push constant True"
        }
      ]
    },
    {
      "initialPc": 17,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "6",
      "sourceCode": "    entered[self] = True",
      "assembly": [
        {
          "assembly": "Store",
          "explain": "pop a value and an address and store the value at the address"
        }
      ]
    },
    {
      "initialPc": 18,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "7",
      "sourceCode": "    if entered[1 - self]:        # if the other thread has already started",
      "assembly": [
        {
          "assembly": "Push ?entered",
          "explain": "push constant ?entered"
        }
      ]
    },
    {
      "initialPc": 19,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "7",
      "sourceCode": "    if entered[1 - self]:        # if the other thread has already started",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 20,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "7",
      "sourceCode": "    if entered[1 - self]:        # if the other thread has already started",
      "assembly": [
        {
          "assembly": "LoadVar self",
          "explain": "push the value of self"
        }
      ]
    },
    {
      "initialPc": 21,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "7",
      "sourceCode": "    if entered[1 - self]:        # if the other thread has already started",
      "assembly": [
        {
          "assembly": "2-ary -",
          "explain": "pop 2 values and push the result of applying -"
        }
      ]
    },
    {
      "initialPc": 22,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "7",
      "sourceCode": "    if entered[1 - self]:        # if the other thread has already started",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 23,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "7",
      "sourceCode": "    if entered[1 - self]:        # if the other thread has already started",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 24,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "7",
      "sourceCode": "    if entered[1 - self]:        # if the other thread has already started",
      "assembly": [
        {
          "assembly": "JumpCond False 34",
          "explain": "pop a value and jump to 34 if the value is False"
        }
      ]
    },
    {
      "initialPc": 25,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "8",
      "sourceCode": "        await done[1 - self]     # wait until it is done",
      "assembly": [
        {
          "assembly": "Push ?done",
          "explain": "push constant ?done"
        }
      ]
    },
    {
      "initialPc": 26,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "8",
      "sourceCode": "        await done[1 - self]     # wait until it is done",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 27,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "8",
      "sourceCode": "        await done[1 - self]     # wait until it is done",
      "assembly": [
        {
          "assembly": "LoadVar self",
          "explain": "push the value of self"
        }
      ]
    },
    {
      "initialPc": 28,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "8",
      "sourceCode": "        await done[1 - self]     # wait until it is done",
      "assembly": [
        {
          "assembly": "2-ary -",
          "explain": "pop 2 values and push the result of applying -"
        }
      ]
    },
    {
      "initialPc": 29,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "8",
      "sourceCode": "        await done[1 - self]     # wait until it is done",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 30,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "8",
      "sourceCode": "        await done[1 - self]     # wait until it is done",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 31,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "8",
      "sourceCode": "        await done[1 - self]     # wait until it is done",
      "assembly": [
        {
          "assembly": "JumpCond False 25",
          "explain": "pop a value and jump to 25 if the value is False"
        }
      ]
    },
    {
      "initialPc": 32,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "8",
      "sourceCode": "        await done[1 - self]     # wait until it is done",
      "assembly": [
        {
          "assembly": "Jump 34",
          "explain": "set program counter to 34"
        }
      ]
    },
    {
      "initialPc": 33,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "8",
      "sourceCode": "        await done[1 - self]     # wait until it is done",
      "assembly": [
        {
          "assembly": "Jump 25",
          "explain": "set program counter to 25"
        }
      ]
    },
    {
      "initialPc": 34,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "9",
      "sourceCode": "    count = count + 1",
      "assembly": [
        {
          "assembly": "Load count",
          "explain": "push value of shared variable count"
        }
      ]
    },
    {
      "initialPc": 35,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "9",
      "sourceCode": "    count = count + 1",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 36,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "9",
      "sourceCode": "    count = count + 1",
      "assembly": [
        {
          "assembly": "2-ary +",
          "explain": "pop 2 values and push the result of applying +"
        }
      ]
    },
    {
      "initialPc": 37,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "9",
      "sourceCode": "    count = count + 1",
      "assembly": [
        {
          "assembly": "Store count",
          "explain": "pop a value and store it in shared variable count"
        }
      ]
    },
    {
      "initialPc": 38,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "10",
      "sourceCode": "    done[self] = True",
      "assembly": [
        {
          "assembly": "Push ?done",
          "explain": "push constant ?done"
        }
      ]
    },
    {
      "initialPc": 39,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "10",
      "sourceCode": "    done[self] = True",
      "assembly": [
        {
          "assembly": "LoadVar self",
          "explain": "push the value of self"
        }
      ]
    },
    {
      "initialPc": 40,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "10",
      "sourceCode": "    done[self] = True",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 41,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "10",
      "sourceCode": "    done[self] = True",
      "assembly": [
        {
          "assembly": "Push True",
          "explain": "push constant True"
        }
      ]
    },
    {
      "initialPc": 42,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "10",
      "sourceCode": "    done[self] = True",
      "assembly": [
        {
          "assembly": "Store",
          "explain": "pop a value and an address and store the value at the address"
        }
      ]
    },
    {
      "initialPc": 43,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "11",
      "sourceCode": "    await done[1 - self]",
      "assembly": [
        {
          "assembly": "Push ?done",
          "explain": "push constant ?done"
        }
      ]
    },
    {
      "initialPc": 44,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "11",
      "sourceCode": "    await done[1 - self]",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 45,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "11",
      "sourceCode": "    await done[1 - self]",
      "assembly": [
        {
          "assembly": "LoadVar self",
          "explain": "push the value of self"
        }
      ]
    },
    {
      "initialPc": 46,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "11",
      "sourceCode": "    await done[1 - self]",
      "assembly": [
        {
          "assembly": "2-ary -",
          "explain": "pop 2 values and push the result of applying -"
        }
      ]
    },
    {
      "initialPc": 47,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "11",
      "sourceCode": "    await done[1 - self]",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 48,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "11",
      "sourceCode": "    await done[1 - self]",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 49,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "11",
      "sourceCode": "    await done[1 - self]",
      "assembly": [
        {
          "assembly": "JumpCond False 43",
          "explain": "pop a value and jump to 43 if the value is False"
        }
      ]
    },
    {
      "initialPc": 50,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "11",
      "sourceCode": "    await done[1 - self]",
      "assembly": [
        {
          "assembly": "DelVar self",
          "explain": "delete method variable self"
        }
      ]
    },
    {
      "initialPc": 51,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "11",
      "sourceCode": "    await done[1 - self]",
      "assembly": [
        {
          "assembly": "Jump 53",
          "explain": "set program counter to 53"
        }
      ]
    },
    {
      "initialPc": 52,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "11",
      "sourceCode": "    await done[1 - self]",
      "assembly": [
        {
          "assembly": "Jump 43",
          "explain": "set program counter to 43"
        }
      ]
    },
    {
      "initialPc": 53,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "12",
      "sourceCode": "    assert count == 2",
      "assembly": [
        {
          "assembly": "AtomicInc(lazy)",
          "explain": "increment atomic counter of context; thread runs uninterrupted if larger than 0"
        }
      ]
    },
    {
      "initialPc": 54,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "12",
      "sourceCode": "    assert count == 2",
      "assembly": [
        {
          "assembly": "ReadonlyInc",
          "explain": "increment readonly counter of context; thread cannot mutate shared variables if > 0"
        }
      ]
    },
    {
      "initialPc": 55,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "12",
      "sourceCode": "    assert count == 2",
      "assembly": [
        {
          "assembly": "Load count",
          "explain": "push value of shared variable count"
        }
      ]
    },
    {
      "initialPc": 56,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "12",
      "sourceCode": "    assert count == 2",
      "assembly": [
        {
          "assembly": "Push 2",
          "explain": "push constant 2"
        }
      ]
    },
    {
      "initialPc": 57,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "12",
      "sourceCode": "    assert count == 2",
      "assembly": [
        {
          "assembly": "2-ary ==",
          "explain": "pop 2 values and push the result of applying =="
        }
      ]
    },
    {
      "initialPc": 58,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "12",
      "sourceCode": "    assert count == 2",
      "assembly": [
        {
          "assembly": "Assert",
          "explain": "pop a condition and raise exception if condition is false"
        }
      ]
    },
    {
      "initialPc": 59,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "12",
      "sourceCode": "    assert count == 2",
      "assembly": [
        {
          "assembly": "ReadonlyDec",
          "explain": "decrement readonly counter of context"
        }
      ]
    },
    {
      "initialPc": 60,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "12",
      "sourceCode": "    assert count == 2",
      "assembly": [
        {
          "assembly": "AtomicDec",
          "explain": "decrement atomic counter of context"
        }
      ]
    },
    {
      "initialPc": 61,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "5",
      "sourceCode": "def incrementer(self):",
      "assembly": [
        {
          "assembly": "ReturnOp(result. None)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 62,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "14",
      "sourceCode": "spawn incrementer(0)",
      "assembly": [
        {
          "assembly": "Push ?PC(12)",
          "explain": "push constant ?PC(12)"
        }
      ]
    },
    {
      "initialPc": 63,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "14",
      "sourceCode": "spawn incrementer(0)",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 64,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "14",
      "sourceCode": "spawn incrementer(0)",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 65,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "14",
      "sourceCode": "spawn incrementer(0)",
      "assembly": [
        {
          "assembly": "Push {:}",
          "explain": "push constant {:}"
        }
      ]
    },
    {
      "initialPc": 66,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "14",
      "sourceCode": "spawn incrementer(0)",
      "assembly": [
        {
          "assembly": "Spawn",
          "explain": "pop thread-local state, argument, and pc and spawn a new thread"
        }
      ]
    },
    {
      "initialPc": 67,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "15",
      "sourceCode": "spawn incrementer(1)",
      "assembly": [
        {
          "assembly": "Push ?PC(12)",
          "explain": "push constant ?PC(12)"
        }
      ]
    },
    {
      "initialPc": 68,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "15",
      "sourceCode": "spawn incrementer(1)",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 69,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "15",
      "sourceCode": "spawn incrementer(1)",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 70,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "15",
      "sourceCode": "spawn incrementer(1)",
      "assembly": [
        {
          "assembly": "Push {:}",
          "explain": "push constant {:}"
        }
      ]
    },
    {
      "initialPc": 71,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
      "line": "15",
      "sourceCode": "spawn incrementer(1)",
      "assembly": [
        {
          "assembly": "Spawn",
          "explain": "pop thread-local state, argument, and pc and spawn a new thread"
        }
      ]
    },
    {
      "initialPc": 72,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
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
      "initialPc": 73,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/UpEnter.hny",
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