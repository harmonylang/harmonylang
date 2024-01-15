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
      "duration": 2,
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
      "duration": 9,
      "sharedValues": {
        "count": 0,
        "done": false
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
        "done": false
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
              "pc": "42"
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
        "done": false
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
              "pc": "42"
            }
          ]
        },
        "1": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "main()",
              "pc": "24",
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
      "name": "main()",
      "macroStepIdx": 1
    },
    {
      "duration": 3,
      "sharedValues": {
        "count": 0,
        "done": false
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
              "pc": "42"
            }
          ]
        },
        "1": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "main()",
              "pc": "29",
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
      "name": "main()",
      "macroStepIdx": 2
    },
    {
      "duration": 2,
      "sharedValues": {
        "count": 0,
        "done": false
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
              "pc": "42"
            }
          ]
        },
        "1": {
          "fullStatus": "running interrupts-disabled",
          "status": "running",
          "callStack": [
            {
              "method": "main()",
              "pc": "32",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "handler()",
              "pc": "14",
              "callType": "interrupt",
              "vars": {}
            }
          ],
          "tid": "1",
          "readonly": 0,
          "interruptLevel": 1,
          "atomic": 0
        }
      },
      "tid": "1",
      "name": "main()",
      "macroStepIdx": 3
    },
    {
      "duration": 3,
      "sharedValues": {
        "count": 0,
        "done": false
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
              "pc": "42"
            }
          ]
        },
        "1": {
          "fullStatus": "running interrupts-disabled",
          "status": "running",
          "callStack": [
            {
              "method": "main()",
              "pc": "32",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "handler()",
              "pc": "16",
              "callType": "interrupt",
              "vars": {}
            }
          ],
          "tid": "1",
          "readonly": 0,
          "interruptLevel": 1,
          "atomic": 0
        }
      },
      "tid": "1",
      "name": "main()",
      "macroStepIdx": 4
    },
    {
      "duration": 2,
      "sharedValues": {
        "count": 1,
        "done": false
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
              "pc": "42"
            }
          ]
        },
        "1": {
          "fullStatus": "running interrupts-disabled",
          "status": "running",
          "callStack": [
            {
              "method": "main()",
              "pc": "32",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "handler()",
              "pc": "19",
              "callType": "interrupt",
              "vars": {}
            }
          ],
          "tid": "1",
          "readonly": 0,
          "interruptLevel": 1,
          "atomic": 0
        }
      },
      "tid": "1",
      "name": "main()",
      "macroStepIdx": 5
    },
    {
      "duration": 1,
      "sharedValues": {
        "count": 1,
        "done": true
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
              "pc": "42"
            }
          ]
        },
        "1": {
          "fullStatus": "running interrupts-disabled",
          "status": "running",
          "callStack": [
            {
              "method": "main()",
              "pc": "32",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "handler()",
              "pc": "21",
              "callType": "interrupt",
              "vars": {}
            }
          ],
          "tid": "1",
          "readonly": 0,
          "interruptLevel": 1,
          "atomic": 0
        }
      },
      "tid": "1",
      "name": "main()",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "count": 1,
        "done": true
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
              "pc": "42"
            }
          ]
        },
        "1": {
          "atomic": 0,
          "fullStatus": "runnable interrupts-disabled",
          "interruptLevel": 1,
          "readonly": 0,
          "status": "runnable",
          "mode": "runnable",
          "tid": "1",
          "callStack": [
            {
              "callType": "process",
              "method": "main()",
              "vars": {},
              "pc": "31"
            }
          ]
        }
      },
      "tid": "1",
      "name": "main()",
      "macroStepIdx": 6
    },
    {
      "duration": 1,
      "sharedValues": {
        "count": 1,
        "done": true
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
              "pc": "42"
            }
          ]
        },
        "1": {
          "atomic": 0,
          "fullStatus": "runnable interrupts-disabled",
          "interruptLevel": 1,
          "readonly": 0,
          "status": "runnable",
          "mode": "runnable",
          "tid": "1",
          "callStack": [
            {
              "callType": "process",
              "method": "main()",
              "vars": {},
              "pc": "32"
            }
          ]
        }
      },
      "tid": "1",
      "name": "main()",
      "macroStepIdx": 7
    },
    {
      "duration": 3,
      "sharedValues": {
        "count": 1,
        "done": true
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
              "pc": "42"
            }
          ]
        },
        "1": {
          "atomic": 0,
          "fullStatus": "running interrupts-disabled",
          "interruptLevel": 1,
          "readonly": 0,
          "status": "running",
          "tid": "1",
          "callStack": [
            {
              "method": "main()",
              "pc": "33",
              "callType": "process",
              "vars": {}
            }
          ]
        }
      },
      "tid": "1",
      "name": "main()",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "count": 1,
        "done": true
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
              "pc": "42"
            }
          ]
        },
        "1": {
          "atomic": 0,
          "fullStatus": "terminated",
          "interruptLevel": 1,
          "readonly": 0,
          "status": "terminated",
          "mode": "terminated",
          "tid": "1",
          "callStack": [
            {
              "callType": "process",
              "method": "main()",
              "vars": {},
              "pc": "36"
            }
          ]
        }
      },
      "tid": "1",
      "name": "main()",
      "macroStepIdx": 8
    },
    {
      "duration": 4,
      "sharedValues": {
        "count": 1,
        "done": true
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
              "pc": "42"
            }
          ]
        },
        "1": {
          "atomic": 0,
          "fullStatus": "terminated",
          "interruptLevel": 1,
          "readonly": 0,
          "status": "terminated",
          "mode": "terminated",
          "tid": "1",
          "callStack": [
            {
              "callType": "process",
              "method": "main()",
              "vars": {},
              "pc": "36"
            }
          ]
        },
        "2": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "finally()",
              "pc": "7",
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
      "name": "finally()",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "count": 1,
        "done": true
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
              "pc": "42"
            }
          ]
        },
        "1": {
          "atomic": 0,
          "fullStatus": "terminated",
          "interruptLevel": 1,
          "readonly": 0,
          "status": "terminated",
          "mode": "terminated",
          "tid": "1",
          "callStack": [
            {
              "callType": "process",
              "method": "main()",
              "vars": {},
              "pc": "36"
            }
          ]
        },
        "2": {
          "atomic": 1,
          "fullStatus": "failed atomic read-only",
          "interruptLevel": 0,
          "readonly": 1,
          "status": "failed",
          "mode": "failed",
          "failure": "Harmony assertion failed",
          "tid": "2",
          "callStack": [
            {
              "callType": "process",
              "method": "finally()",
              "vars": {},
              "pc": "10"
            }
          ]
        }
      },
      "tid": "2",
      "name": "finally()",
      "macroStepIdx": 9
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
      "sliceIdx": 2,
      "time": 4,
      "pc": 4,
      "npc": 5
    },
    {
      "sliceIdx": 2,
      "time": 5,
      "pc": 5,
      "npc": 12
    },
    {
      "sliceIdx": 2,
      "time": 6,
      "pc": 12,
      "npc": 13
    },
    {
      "sliceIdx": 2,
      "time": 7,
      "pc": 13,
      "npc": 37
    },
    {
      "sliceIdx": 2,
      "time": 8,
      "pc": 37,
      "npc": 38
    },
    {
      "sliceIdx": 2,
      "time": 9,
      "pc": 38,
      "npc": 39
    },
    {
      "sliceIdx": 2,
      "time": 10,
      "pc": 39,
      "npc": 40
    },
    {
      "sliceIdx": 2,
      "time": 11,
      "pc": 40,
      "npc": 41
    },
    {
      "sliceIdx": 2,
      "time": 12,
      "pc": 41,
      "npc": 42
    },
    {
      "sliceIdx": 3,
      "time": 13,
      "pc": 42,
      "npc": 42
    },
    {
      "pc": 23,
      "npc": 24,
      "sliceIdx": 4,
      "time": 14
    },
    {
      "sliceIdx": 4,
      "time": 15,
      "pc": 24,
      "npc": 25
    },
    {
      "sliceIdx": 4,
      "time": 16,
      "pc": 25,
      "npc": 26
    },
    {
      "sliceIdx": 4,
      "time": 17,
      "pc": 26,
      "npc": 27
    },
    {
      "sliceIdx": 4,
      "time": 18,
      "pc": 27,
      "npc": 28
    },
    {
      "pc": 28,
      "npc": 29,
      "sliceIdx": 5,
      "time": 19
    },
    {
      "sliceIdx": 5,
      "time": 20,
      "pc": 29,
      "npc": 30
    },
    {
      "sliceIdx": 5,
      "time": 21,
      "pc": 30,
      "npc": 31
    },
    {
      "pc": 31,
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
      "pc": 15,
      "npc": 16,
      "sliceIdx": 7,
      "time": 24
    },
    {
      "sliceIdx": 7,
      "time": 25,
      "pc": 16,
      "npc": 17
    },
    {
      "sliceIdx": 7,
      "time": 26,
      "pc": 17,
      "npc": 18
    },
    {
      "pc": 18,
      "npc": 19,
      "sliceIdx": 8,
      "time": 27
    },
    {
      "sliceIdx": 8,
      "time": 28,
      "pc": 19,
      "npc": 20
    },
    {
      "pc": 20,
      "npc": 21,
      "sliceIdx": 9,
      "time": 29
    },
    {
      "sliceIdx": 10,
      "time": 30,
      "pc": 21,
      "npc": 31
    },
    {
      "pc": 31,
      "npc": 32,
      "sliceIdx": 11,
      "time": 31
    },
    {
      "pc": 32,
      "npc": 33,
      "sliceIdx": 12,
      "time": 32
    },
    {
      "sliceIdx": 12,
      "time": 33,
      "pc": 33,
      "npc": 34
    },
    {
      "sliceIdx": 12,
      "time": 34,
      "pc": 34,
      "npc": 36
    },
    {
      "sliceIdx": 13,
      "time": 35,
      "pc": 36,
      "npc": 36
    },
    {
      "pc": 6,
      "npc": 7,
      "sliceIdx": 14,
      "time": 36
    },
    {
      "sliceIdx": 14,
      "time": 37,
      "pc": 7,
      "npc": 8
    },
    {
      "sliceIdx": 14,
      "time": 38,
      "pc": 8,
      "npc": 9
    },
    {
      "sliceIdx": 14,
      "time": 39,
      "pc": 9,
      "npc": 10
    },
    {
      "sliceIdx": 15,
      "time": 40,
      "pc": 10,
      "npc": 10
    }
  ],
  "macroSteps": [
    {
      "tid": "0",
      "name": "__init__()",
      "duration": 14,
      "startSliceIdx": 0,
      "lastSliceIdx": 4
    },
    {
      "tid": "1",
      "name": "main()",
      "duration": 5,
      "startSliceIdx": 4,
      "lastSliceIdx": 5
    },
    {
      "tid": "1",
      "name": "main()",
      "duration": 3,
      "startSliceIdx": 5,
      "lastSliceIdx": 6
    },
    {
      "tid": "1",
      "name": "main()",
      "duration": 2,
      "startSliceIdx": 6,
      "lastSliceIdx": 7
    },
    {
      "tid": "1",
      "name": "main()",
      "duration": 3,
      "startSliceIdx": 7,
      "lastSliceIdx": 8
    },
    {
      "tid": "1",
      "name": "main()",
      "duration": 2,
      "startSliceIdx": 8,
      "lastSliceIdx": 9
    },
    {
      "tid": "1",
      "name": "main()",
      "duration": 2,
      "startSliceIdx": 9,
      "lastSliceIdx": 11
    },
    {
      "tid": "1",
      "name": "main()",
      "duration": 1,
      "startSliceIdx": 11,
      "lastSliceIdx": 12
    },
    {
      "tid": "1",
      "name": "main()",
      "duration": 4,
      "startSliceIdx": 12,
      "lastSliceIdx": 14
    },
    {
      "tid": "2",
      "name": "finally()",
      "duration": 5,
      "startSliceIdx": 14,
      "lastSliceIdx": 16
    }
  ],
  "idToThreadName": {
    "0": "__init__()",
    "1": "main()",
    "2": "finally()"
  },
  "executedCode": [
    {
      "initialPc": 0,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/trap2.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/trap2.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/trap2.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/trap2.hny",
      "line": "2",
      "sourceCode": "done = False",
      "assembly": [
        {
          "assembly": "Push False",
          "explain": "push constant False"
        }
      ]
    },
    {
      "initialPc": 4,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/trap2.hny",
      "line": "2",
      "sourceCode": "done = False",
      "assembly": [
        {
          "assembly": "Store done",
          "explain": "pop a value and store it in shared variable done"
        }
      ]
    },
    {
      "initialPc": 5,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/trap2.hny",
      "line": "4",
      "sourceCode": "finally count == 2",
      "assembly": [
        {
          "assembly": "Jump 12",
          "explain": "jump over finally definition: set program counter to 12"
        }
      ]
    },
    {
      "initialPc": 6,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/trap2.hny",
      "line": "4",
      "sourceCode": "finally count == 2",
      "assembly": [
        {
          "assembly": "Frame finally()",
          "explain": "start of method finally"
        }
      ]
    },
    {
      "initialPc": 7,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/trap2.hny",
      "line": "4",
      "sourceCode": "finally count == 2",
      "assembly": [
        {
          "assembly": "Load count",
          "explain": "push value of shared variable count"
        }
      ]
    },
    {
      "initialPc": 8,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/trap2.hny",
      "line": "4",
      "sourceCode": "finally count == 2",
      "assembly": [
        {
          "assembly": "Push 2",
          "explain": "push constant 2"
        }
      ]
    },
    {
      "initialPc": 9,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/trap2.hny",
      "line": "4",
      "sourceCode": "finally count == 2",
      "assembly": [
        {
          "assembly": "2-ary ==",
          "explain": "pop 2 values and push the result of applying =="
        }
      ]
    },
    {
      "initialPc": 10,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/trap2.hny",
      "line": "4",
      "sourceCode": "finally count == 2",
      "assembly": [
        {
          "assembly": "Assert",
          "explain": "pop a condition and raise exception if condition is false"
        }
      ]
    },
    {
      "initialPc": 11,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/trap2.hny",
      "line": "4",
      "sourceCode": "finally count == 2",
      "assembly": [
        {
          "assembly": "ReturnOp(result. None)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 12,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/trap2.hny",
      "line": "4",
      "sourceCode": "finally count == 2",
      "assembly": [
        {
          "assembly": "Finally 6",
          "explain": "test predicate over final state"
        }
      ]
    },
    {
      "initialPc": 13,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/trap2.hny",
      "line": "6",
      "sourceCode": "def handler():",
      "assembly": [
        {
          "assembly": "Jump 37",
          "explain": "jump over method definition: set program counter to 37"
        }
      ]
    },
    {
      "initialPc": 14,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/trap2.hny",
      "line": "6",
      "sourceCode": "def handler():",
      "assembly": [
        {
          "assembly": "Frame handler()",
          "explain": "start of method handler"
        }
      ]
    },
    {
      "initialPc": 15,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/trap2.hny",
      "line": "7",
      "sourceCode": "    count += 1",
      "assembly": [
        {
          "assembly": "Load count",
          "explain": "push value of shared variable count"
        }
      ]
    },
    {
      "initialPc": 16,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/trap2.hny",
      "line": "7",
      "sourceCode": "    count += 1",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 17,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/trap2.hny",
      "line": "7",
      "sourceCode": "    count += 1",
      "assembly": [
        {
          "assembly": "2-ary +",
          "explain": "pop 2 values and push the result of applying +"
        }
      ]
    },
    {
      "initialPc": 18,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/trap2.hny",
      "line": "7",
      "sourceCode": "    count += 1",
      "assembly": [
        {
          "assembly": "Store count",
          "explain": "pop a value and store it in shared variable count"
        }
      ]
    },
    {
      "initialPc": 19,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/trap2.hny",
      "line": "8",
      "sourceCode": "    done = True",
      "assembly": [
        {
          "assembly": "Push True",
          "explain": "push constant True"
        }
      ]
    },
    {
      "initialPc": 20,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/trap2.hny",
      "line": "8",
      "sourceCode": "    done = True",
      "assembly": [
        {
          "assembly": "Store done",
          "explain": "pop a value and store it in shared variable done"
        }
      ]
    },
    {
      "initialPc": 21,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/trap2.hny",
      "line": "6",
      "sourceCode": "def handler():",
      "assembly": [
        {
          "assembly": "ReturnOp(result. None)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 22,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/trap2.hny",
      "line": "10",
      "sourceCode": "def main():",
      "assembly": [
        {
          "assembly": "Jump 37",
          "explain": "jump over method definition: set program counter to 37"
        }
      ]
    },
    {
      "initialPc": 23,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/trap2.hny",
      "line": "10",
      "sourceCode": "def main():",
      "assembly": [
        {
          "assembly": "Frame main()",
          "explain": "start of method main"
        }
      ]
    },
    {
      "initialPc": 24,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/trap2.hny",
      "line": "11",
      "sourceCode": "    trap handler()",
      "assembly": [
        {
          "assembly": "Push ?PC(14)",
          "explain": "push constant ?PC(14)"
        }
      ]
    },
    {
      "initialPc": 25,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/trap2.hny",
      "line": "11",
      "sourceCode": "    trap handler()",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "push constant ()"
        }
      ]
    },
    {
      "initialPc": 26,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/trap2.hny",
      "line": "11",
      "sourceCode": "    trap handler()",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 27,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/trap2.hny",
      "line": "11",
      "sourceCode": "    trap handler()",
      "assembly": [
        {
          "assembly": "Trap",
          "explain": "pop a pc and argument and set trap"
        }
      ]
    },
    {
      "initialPc": 28,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/trap2.hny",
      "line": "12",
      "sourceCode": "    count += 1",
      "assembly": [
        {
          "assembly": "Load count",
          "explain": "push value of shared variable count"
        }
      ]
    },
    {
      "initialPc": 29,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/trap2.hny",
      "line": "12",
      "sourceCode": "    count += 1",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 30,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/trap2.hny",
      "line": "12",
      "sourceCode": "    count += 1",
      "assembly": [
        {
          "assembly": "2-ary +",
          "explain": "pop 2 values and push the result of applying +"
        }
      ]
    },
    {
      "initialPc": 31,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/trap2.hny",
      "line": "12",
      "sourceCode": "    count += 1",
      "assembly": [
        {
          "assembly": "Store count",
          "explain": "pop a value and store it in shared variable count"
        }
      ]
    },
    {
      "initialPc": 32,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/trap2.hny",
      "line": "13",
      "sourceCode": "    await done",
      "assembly": [
        {
          "assembly": "Load done",
          "explain": "push value of shared variable done"
        }
      ]
    },
    {
      "initialPc": 33,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/trap2.hny",
      "line": "13",
      "sourceCode": "    await done",
      "assembly": [
        {
          "assembly": "JumpCond False 32",
          "explain": "pop a value and jump to 32 if the value is False"
        }
      ]
    },
    {
      "initialPc": 34,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/trap2.hny",
      "line": "13",
      "sourceCode": "    await done",
      "assembly": [
        {
          "assembly": "Jump 36",
          "explain": "set program counter to 36"
        }
      ]
    },
    {
      "initialPc": 35,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/trap2.hny",
      "line": "13",
      "sourceCode": "    await done",
      "assembly": [
        {
          "assembly": "Jump 32",
          "explain": "set program counter to 32"
        }
      ]
    },
    {
      "initialPc": 36,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/trap2.hny",
      "line": "10",
      "sourceCode": "def main():",
      "assembly": [
        {
          "assembly": "ReturnOp(result. None)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 37,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/trap2.hny",
      "line": "15",
      "sourceCode": "spawn main()",
      "assembly": [
        {
          "assembly": "Push ?PC(23)",
          "explain": "push constant ?PC(23)"
        }
      ]
    },
    {
      "initialPc": 38,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/trap2.hny",
      "line": "15",
      "sourceCode": "spawn main()",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "push constant ()"
        }
      ]
    },
    {
      "initialPc": 39,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/trap2.hny",
      "line": "15",
      "sourceCode": "spawn main()",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 40,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/trap2.hny",
      "line": "15",
      "sourceCode": "spawn main()",
      "assembly": [
        {
          "assembly": "Push {:}",
          "explain": "push constant {:}"
        }
      ]
    },
    {
      "initialPc": 41,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/trap2.hny",
      "line": "15",
      "sourceCode": "spawn main()",
      "assembly": [
        {
          "assembly": "Spawn",
          "explain": "pop thread-local state, argument, and pc and spawn a new thread"
        }
      ]
    },
    {
      "initialPc": 42,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/trap2.hny",
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
      "initialPc": 43,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/trap2.hny",
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