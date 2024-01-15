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
      "duration": 1,
      "sharedValues": {
        "in_cs": 0
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
              "pc": "48"
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
        "in_cs": 0
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
              "pc": "48"
            }
          ]
        },
        "1": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "thread()",
              "pc": "17",
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
      "macroStepIdx": 1
    },
    {
      "duration": 2,
      "sharedValues": {
        "in_cs": 0
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
              "pc": "48"
            }
          ]
        },
        "1": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "thread()",
              "pc": "23",
              "callType": "process",
              "vars": {}
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
      "name": "thread()",
      "macroStepIdx": 2
    },
    {
      "duration": 4,
      "sharedValues": {
        "in_cs": 0
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
              "pc": "48"
            }
          ]
        },
        "1": {
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "thread()",
              "pc": "25",
              "callType": "process",
              "vars": {}
            }
          ],
          "tid": "1",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 1
        }
      },
      "tid": "1",
      "name": "thread()",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "in_cs": 1
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
              "pc": "48"
            }
          ]
        },
        "1": {
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "thread()",
              "pc": "25",
              "callType": "process",
              "vars": {}
            }
          ],
          "tid": "1",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 1
        }
      },
      "tid": "1",
      "name": "thread()",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "in_cs": 1
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
              "pc": "48"
            }
          ]
        },
        "1": {
          "atomic": 1,
          "fullStatus": "runnable atomic",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "runnable",
          "mode": "runnable",
          "tid": "1",
          "callStack": [
            {
              "callType": "process",
              "method": "thread()",
              "vars": {},
              "pc": "30"
            }
          ]
        }
      },
      "tid": "1",
      "name": "thread()",
      "macroStepIdx": 3
    },
    {
      "duration": 6,
      "sharedValues": {
        "in_cs": 1
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
              "pc": "48"
            }
          ]
        },
        "1": {
          "atomic": 1,
          "fullStatus": "runnable atomic",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "runnable",
          "mode": "runnable",
          "tid": "1",
          "callStack": [
            {
              "callType": "process",
              "method": "thread()",
              "vars": {},
              "pc": "30"
            }
          ]
        },
        "2": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "thread()",
              "pc": "17",
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
      "name": "thread()",
      "macroStepIdx": 4
    },
    {
      "duration": 2,
      "sharedValues": {
        "in_cs": 1
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
              "pc": "48"
            }
          ]
        },
        "1": {
          "atomic": 1,
          "fullStatus": "runnable atomic",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "runnable",
          "mode": "runnable",
          "tid": "1",
          "callStack": [
            {
              "callType": "process",
              "method": "thread()",
              "vars": {},
              "pc": "30"
            }
          ]
        },
        "2": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "thread()",
              "pc": "23",
              "callType": "process",
              "vars": {}
            }
          ],
          "tid": "2",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 0,
          "chosen": true
        }
      },
      "tid": "2",
      "name": "thread()",
      "macroStepIdx": 5
    },
    {
      "duration": 4,
      "sharedValues": {
        "in_cs": 1
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
              "pc": "48"
            }
          ]
        },
        "1": {
          "atomic": 1,
          "fullStatus": "runnable atomic",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "runnable",
          "mode": "runnable",
          "tid": "1",
          "callStack": [
            {
              "callType": "process",
              "method": "thread()",
              "vars": {},
              "pc": "30"
            }
          ]
        },
        "2": {
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "thread()",
              "pc": "25",
              "callType": "process",
              "vars": {}
            }
          ],
          "tid": "2",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 1
        }
      },
      "tid": "2",
      "name": "thread()",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "in_cs": 2
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
              "pc": "48"
            }
          ]
        },
        "1": {
          "atomic": 1,
          "fullStatus": "runnable atomic",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "runnable",
          "mode": "runnable",
          "tid": "1",
          "callStack": [
            {
              "callType": "process",
              "method": "thread()",
              "vars": {},
              "pc": "30"
            }
          ]
        },
        "2": {
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "thread()",
              "pc": "25",
              "callType": "process",
              "vars": {}
            }
          ],
          "tid": "2",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 1
        }
      },
      "tid": "2",
      "name": "thread()",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "in_cs": 2
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
              "pc": "48"
            }
          ]
        },
        "1": {
          "atomic": 1,
          "fullStatus": "runnable atomic",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "runnable",
          "mode": "runnable",
          "tid": "1",
          "callStack": [
            {
              "callType": "process",
              "method": "thread()",
              "vars": {},
              "pc": "30"
            }
          ]
        },
        "2": {
          "atomic": 1,
          "fullStatus": "runnable atomic",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "runnable",
          "mode": "runnable",
          "tid": "2",
          "callStack": [
            {
              "callType": "process",
              "method": "thread()",
              "vars": {},
              "pc": "30"
            }
          ]
        }
      },
      "tid": "2",
      "name": "thread()",
      "macroStepIdx": 6
    },
    {
      "duration": 8,
      "sharedValues": {
        "in_cs": 2
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
              "pc": "48"
            }
          ]
        },
        "1": {
          "atomic": 1,
          "fullStatus": "runnable atomic",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "runnable",
          "mode": "runnable",
          "tid": "1",
          "callStack": [
            {
              "callType": "process",
              "method": "thread()",
              "vars": {},
              "pc": "30"
            }
          ]
        },
        "2": {
          "atomic": 1,
          "fullStatus": "runnable atomic",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "runnable",
          "mode": "runnable",
          "tid": "2",
          "callStack": [
            {
              "callType": "process",
              "method": "thread()",
              "vars": {},
              "pc": "30"
            }
          ]
        },
        "3": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "invariant()",
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
      "name": "invariant()",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "in_cs": 2
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
              "pc": "48"
            }
          ]
        },
        "1": {
          "atomic": 1,
          "fullStatus": "runnable atomic",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "runnable",
          "mode": "runnable",
          "tid": "1",
          "callStack": [
            {
              "callType": "process",
              "method": "thread()",
              "vars": {},
              "pc": "30"
            }
          ]
        },
        "2": {
          "atomic": 1,
          "fullStatus": "runnable atomic",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "runnable",
          "mode": "runnable",
          "tid": "2",
          "callStack": [
            {
              "callType": "process",
              "method": "thread()",
              "vars": {},
              "pc": "30"
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
              "method": "invariant()",
              "vars": {},
              "pc": "12"
            }
          ]
        }
      },
      "tid": "3",
      "name": "invariant()",
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
      "npc": 38
    },
    {
      "sliceIdx": 1,
      "time": 6,
      "pc": 38,
      "npc": 39
    },
    {
      "sliceIdx": 1,
      "time": 7,
      "pc": 39,
      "npc": 40
    },
    {
      "sliceIdx": 1,
      "time": 8,
      "pc": 40,
      "npc": 41
    },
    {
      "sliceIdx": 1,
      "time": 9,
      "pc": 41,
      "npc": 42
    },
    {
      "sliceIdx": 1,
      "time": 10,
      "pc": 42,
      "npc": 43
    },
    {
      "sliceIdx": 1,
      "time": 11,
      "pc": 43,
      "npc": 44
    },
    {
      "sliceIdx": 1,
      "time": 12,
      "pc": 44,
      "npc": 45
    },
    {
      "sliceIdx": 1,
      "time": 13,
      "pc": 45,
      "npc": 46
    },
    {
      "sliceIdx": 1,
      "time": 14,
      "pc": 46,
      "npc": 47
    },
    {
      "sliceIdx": 1,
      "time": 15,
      "pc": 47,
      "npc": 48
    },
    {
      "sliceIdx": 2,
      "time": 16,
      "pc": 48,
      "npc": 48
    },
    {
      "pc": 16,
      "npc": 17,
      "sliceIdx": 3,
      "time": 17
    },
    {
      "sliceIdx": 3,
      "time": 18,
      "pc": 17,
      "npc": 18
    },
    {
      "sliceIdx": 3,
      "time": 19,
      "pc": 18,
      "npc": 19
    },
    {
      "sliceIdx": 3,
      "time": 20,
      "pc": 19,
      "npc": 20
    },
    {
      "sliceIdx": 3,
      "time": 21,
      "pc": 20,
      "npc": 21
    },
    {
      "sliceIdx": 3,
      "time": 22,
      "pc": 21,
      "npc": 22
    },
    {
      "pc": 22,
      "npc": 23,
      "sliceIdx": 4,
      "time": 23
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
      "sliceIdx": 6,
      "time": 29,
      "pc": 28,
      "npc": 29
    },
    {
      "sliceIdx": 7,
      "time": 30,
      "pc": 29,
      "npc": 30
    },
    {
      "pc": 16,
      "npc": 17,
      "sliceIdx": 8,
      "time": 31
    },
    {
      "sliceIdx": 8,
      "time": 32,
      "pc": 17,
      "npc": 18
    },
    {
      "sliceIdx": 8,
      "time": 33,
      "pc": 18,
      "npc": 19
    },
    {
      "sliceIdx": 8,
      "time": 34,
      "pc": 19,
      "npc": 20
    },
    {
      "sliceIdx": 8,
      "time": 35,
      "pc": 20,
      "npc": 21
    },
    {
      "sliceIdx": 8,
      "time": 36,
      "pc": 21,
      "npc": 22
    },
    {
      "pc": 22,
      "npc": 23,
      "sliceIdx": 9,
      "time": 37
    },
    {
      "sliceIdx": 9,
      "time": 38,
      "pc": 23,
      "npc": 24
    },
    {
      "pc": 24,
      "npc": 25,
      "sliceIdx": 10,
      "time": 39
    },
    {
      "sliceIdx": 10,
      "time": 40,
      "pc": 25,
      "npc": 26
    },
    {
      "sliceIdx": 10,
      "time": 41,
      "pc": 26,
      "npc": 27
    },
    {
      "sliceIdx": 10,
      "time": 42,
      "pc": 27,
      "npc": 28
    },
    {
      "sliceIdx": 11,
      "time": 43,
      "pc": 28,
      "npc": 29
    },
    {
      "sliceIdx": 12,
      "time": 44,
      "pc": 29,
      "npc": 30
    },
    {
      "pc": 4,
      "npc": 5,
      "sliceIdx": 13,
      "time": 45
    },
    {
      "sliceIdx": 13,
      "time": 46,
      "pc": 5,
      "npc": 6
    },
    {
      "sliceIdx": 13,
      "time": 47,
      "pc": 6,
      "npc": 7
    },
    {
      "sliceIdx": 13,
      "time": 48,
      "pc": 7,
      "npc": 8
    },
    {
      "sliceIdx": 13,
      "time": 49,
      "pc": 8,
      "npc": 9
    },
    {
      "sliceIdx": 13,
      "time": 50,
      "pc": 9,
      "npc": 10
    },
    {
      "sliceIdx": 13,
      "time": 51,
      "pc": 10,
      "npc": 11
    },
    {
      "sliceIdx": 13,
      "time": 52,
      "pc": 11,
      "npc": 12
    },
    {
      "sliceIdx": 14,
      "time": 53,
      "pc": 12,
      "npc": 12
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
      "name": "thread()",
      "duration": 6,
      "startSliceIdx": 3,
      "lastSliceIdx": 4
    },
    {
      "tid": "1",
      "name": "thread()",
      "duration": 2,
      "startSliceIdx": 4,
      "lastSliceIdx": 5
    },
    {
      "tid": "1",
      "name": "thread()",
      "duration": 6,
      "startSliceIdx": 5,
      "lastSliceIdx": 8
    },
    {
      "tid": "2",
      "name": "thread()",
      "duration": 6,
      "startSliceIdx": 8,
      "lastSliceIdx": 9
    },
    {
      "tid": "2",
      "name": "thread()",
      "duration": 2,
      "startSliceIdx": 9,
      "lastSliceIdx": 10
    },
    {
      "tid": "2",
      "name": "thread()",
      "duration": 6,
      "startSliceIdx": 10,
      "lastSliceIdx": 13
    },
    {
      "tid": "3",
      "name": "invariant()",
      "duration": 9,
      "startSliceIdx": 13,
      "lastSliceIdx": 15
    }
  ],
  "idToThreadName": {
    "0": "__init__()",
    "1": "thread()",
    "2": "thread()",
    "3": "invariant()"
  },
  "executedCode": [
    {
      "initialPc": 0,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/cs.hny",
      "line": "2",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/cs.hny",
      "line": "2",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/cs.hny",
      "line": "2",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/cs.hny",
      "line": "3",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/cs.hny",
      "line": "3",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/cs.hny",
      "line": "3",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/cs.hny",
      "line": "3",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/cs.hny",
      "line": "3",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/cs.hny",
      "line": "3",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/cs.hny",
      "line": "3",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/cs.hny",
      "line": "3",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/cs.hny",
      "line": "3",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/cs.hny",
      "line": "3",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/cs.hny",
      "line": "3",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/cs.hny",
      "line": "3",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/cs.hny",
      "line": "5",
      "sourceCode": "def thread():",
      "assembly": [
        {
          "assembly": "Jump 38",
          "explain": "jump over method definition: set program counter to 38"
        }
      ]
    },
    {
      "initialPc": 16,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/cs.hny",
      "line": "5",
      "sourceCode": "def thread():",
      "assembly": [
        {
          "assembly": "Frame thread()",
          "explain": "start of method thread"
        }
      ]
    },
    {
      "initialPc": 17,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/cs.hny",
      "line": "6",
      "sourceCode": "    while choose { False, True }:",
      "assembly": [
        {
          "assembly": "Push {}",
          "explain": "push constant {}"
        }
      ]
    },
    {
      "initialPc": 18,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/cs.hny",
      "line": "6",
      "sourceCode": "    while choose { False, True }:",
      "assembly": [
        {
          "assembly": "Push False",
          "explain": "push constant False"
        }
      ]
    },
    {
      "initialPc": 19,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/cs.hny",
      "line": "6",
      "sourceCode": "    while choose { False, True }:",
      "assembly": [
        {
          "assembly": "2-ary SetAdd",
          "explain": "pop 2 values and push the result of applying SetAdd"
        }
      ]
    },
    {
      "initialPc": 20,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/cs.hny",
      "line": "6",
      "sourceCode": "    while choose { False, True }:",
      "assembly": [
        {
          "assembly": "Push True",
          "explain": "push constant True"
        }
      ]
    },
    {
      "initialPc": 21,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/cs.hny",
      "line": "6",
      "sourceCode": "    while choose { False, True }:",
      "assembly": [
        {
          "assembly": "2-ary SetAdd",
          "explain": "pop 2 values and push the result of applying SetAdd"
        }
      ]
    },
    {
      "initialPc": 22,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/cs.hny",
      "line": "6",
      "sourceCode": "    while choose { False, True }:",
      "assembly": [
        {
          "assembly": "Choose",
          "explain": "pop a set value and push one of its elements"
        }
      ]
    },
    {
      "initialPc": 23,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/cs.hny",
      "line": "6",
      "sourceCode": "    while choose { False, True }:",
      "assembly": [
        {
          "assembly": "JumpCond False 37",
          "explain": "pop a value and jump to 37 if the value is False"
        }
      ]
    },
    {
      "initialPc": 24,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/cs.hny",
      "line": "8",
      "sourceCode": "        atomically in_cs += 1",
      "assembly": [
        {
          "assembly": "AtomicInc(eager)",
          "explain": "increment atomic counter of context; thread runs uninterrupted if larger than 0"
        }
      ]
    },
    {
      "initialPc": 25,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/cs.hny",
      "line": "8",
      "sourceCode": "        atomically in_cs += 1",
      "assembly": [
        {
          "assembly": "Load in_cs",
          "explain": "push value of shared variable in_cs"
        }
      ]
    },
    {
      "initialPc": 26,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/cs.hny",
      "line": "8",
      "sourceCode": "        atomically in_cs += 1",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 27,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/cs.hny",
      "line": "8",
      "sourceCode": "        atomically in_cs += 1",
      "assembly": [
        {
          "assembly": "2-ary +",
          "explain": "pop 2 values and push the result of applying +"
        }
      ]
    },
    {
      "initialPc": 28,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/cs.hny",
      "line": "8",
      "sourceCode": "        atomically in_cs += 1",
      "assembly": [
        {
          "assembly": "Store in_cs",
          "explain": "pop a value and store it in shared variable in_cs"
        }
      ]
    },
    {
      "initialPc": 29,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/cs.hny",
      "line": "8",
      "sourceCode": "        atomically in_cs += 1",
      "assembly": [
        {
          "assembly": "AtomicDec",
          "explain": "decrement atomic counter of context"
        }
      ]
    },
    {
      "initialPc": 30,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/cs.hny",
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
      "initialPc": 31,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/cs.hny",
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
      "initialPc": 32,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/cs.hny",
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
      "initialPc": 33,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/cs.hny",
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
      "initialPc": 34,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/cs.hny",
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
      "initialPc": 35,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/cs.hny",
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
      "initialPc": 36,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/cs.hny",
      "line": "6",
      "sourceCode": "    while choose { False, True }:",
      "assembly": [
        {
          "assembly": "Jump 17",
          "explain": "set program counter to 17"
        }
      ]
    },
    {
      "initialPc": 37,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/cs.hny",
      "line": "5",
      "sourceCode": "def thread():",
      "assembly": [
        {
          "assembly": "ReturnOp(result. None)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 38,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/cs.hny",
      "line": "16",
      "sourceCode": "spawn thread()",
      "assembly": [
        {
          "assembly": "Push ?PC(16)",
          "explain": "push constant ?PC(16)"
        }
      ]
    },
    {
      "initialPc": 39,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/cs.hny",
      "line": "16",
      "sourceCode": "spawn thread()",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "push constant ()"
        }
      ]
    },
    {
      "initialPc": 40,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/cs.hny",
      "line": "16",
      "sourceCode": "spawn thread()",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 41,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/cs.hny",
      "line": "16",
      "sourceCode": "spawn thread()",
      "assembly": [
        {
          "assembly": "Push {:}",
          "explain": "push constant {:}"
        }
      ]
    },
    {
      "initialPc": 42,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/cs.hny",
      "line": "16",
      "sourceCode": "spawn thread()",
      "assembly": [
        {
          "assembly": "Spawn",
          "explain": "pop thread-local state, argument, and pc and spawn a new thread"
        }
      ]
    },
    {
      "initialPc": 43,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/cs.hny",
      "line": "17",
      "sourceCode": "spawn thread()",
      "assembly": [
        {
          "assembly": "Push ?PC(16)",
          "explain": "push constant ?PC(16)"
        }
      ]
    },
    {
      "initialPc": 44,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/cs.hny",
      "line": "17",
      "sourceCode": "spawn thread()",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "push constant ()"
        }
      ]
    },
    {
      "initialPc": 45,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/cs.hny",
      "line": "17",
      "sourceCode": "spawn thread()",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 46,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/cs.hny",
      "line": "17",
      "sourceCode": "spawn thread()",
      "assembly": [
        {
          "assembly": "Push {:}",
          "explain": "push constant {:}"
        }
      ]
    },
    {
      "initialPc": 47,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/cs.hny",
      "line": "17",
      "sourceCode": "spawn thread()",
      "assembly": [
        {
          "assembly": "Spawn",
          "explain": "pop thread-local state, argument, and pc and spawn a new thread"
        }
      ]
    },
    {
      "initialPc": 48,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/cs.hny",
      "line": "2",
      "sourceCode": "in_cs = 0",
      "assembly": [
        {
          "assembly": "ReturnOp(result. None)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 49,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/cs.hny",
      "line": "2",
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