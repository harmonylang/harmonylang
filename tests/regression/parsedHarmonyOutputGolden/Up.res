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
      "duration": 6,
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
      "duration": 12,
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
              "pc": "49"
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
        "count": 0,
        "done": [
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
              "pc": "49"
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
              "method": "incrementer(1)",
              "vars": {
                "self": 1
              },
              "pc": "11"
            }
          ]
        }
      },
      "tid": "2",
      "name": "incrementer(1)",
      "macroStepIdx": 1
    },
    {
      "duration": 3,
      "sharedValues": {
        "count": 0,
        "done": [
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
              "pc": "49"
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
              "method": "incrementer(1)",
              "pc": "12",
              "callType": "process",
              "vars": {
                "self": 1
              }
            }
          ]
        }
      },
      "tid": "2",
      "name": "incrementer(1)",
      "macroStepIdx": 2
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
              "pc": "49"
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
              "method": "incrementer(0)",
              "vars": {
                "self": 0
              },
              "pc": "11"
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
              "method": "incrementer(1)",
              "pc": "12",
              "callType": "process",
              "vars": {
                "self": 1
              }
            }
          ]
        }
      },
      "tid": "1",
      "name": "incrementer(0)",
      "macroStepIdx": 3
    },
    {
      "duration": 3,
      "sharedValues": {
        "count": 0,
        "done": [
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
              "pc": "49"
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
              "method": "incrementer(0)",
              "pc": "12",
              "callType": "process",
              "vars": {
                "self": 0
              }
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
              "method": "incrementer(1)",
              "pc": "12",
              "callType": "process",
              "vars": {
                "self": 1
              }
            }
          ]
        }
      },
      "tid": "1",
      "name": "incrementer(0)",
      "macroStepIdx": 4
    },
    {
      "duration": 5,
      "sharedValues": {
        "count": 1,
        "done": [
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
              "pc": "49"
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
              "method": "incrementer(0)",
              "pc": "15",
              "callType": "process",
              "vars": {
                "self": 0
              }
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
              "method": "incrementer(1)",
              "pc": "12",
              "callType": "process",
              "vars": {
                "self": 1
              }
            }
          ]
        }
      },
      "tid": "1",
      "name": "incrementer(0)",
      "macroStepIdx": 5
    },
    {
      "duration": 6,
      "sharedValues": {
        "count": 1,
        "done": [
          true,
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
              "pc": "49"
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
              "method": "incrementer(0)",
              "pc": "20",
              "callType": "process",
              "vars": {
                "self": 0
              }
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
              "method": "incrementer(1)",
              "pc": "12",
              "callType": "process",
              "vars": {
                "self": 1
              }
            }
          ]
        }
      },
      "tid": "1",
      "name": "incrementer(0)",
      "macroStepIdx": 6
    },
    {
      "duration": 5,
      "sharedValues": {
        "count": 1,
        "done": [
          true,
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
              "pc": "49"
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
              "method": "incrementer(0)",
              "pc": "20",
              "callType": "process",
              "vars": {
                "self": 0
              }
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
              "method": "incrementer(1)",
              "pc": "15",
              "callType": "process",
              "vars": {
                "self": 1
              }
            }
          ]
        }
      },
      "tid": "2",
      "name": "incrementer(1)",
      "macroStepIdx": 7
    },
    {
      "duration": 1,
      "sharedValues": {
        "count": 1,
        "done": [
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
              "pc": "49"
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
              "method": "incrementer(0)",
              "pc": "20",
              "callType": "process",
              "vars": {
                "self": 0
              }
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
              "method": "incrementer(1)",
              "vars": {
                "self": 1
              },
              "pc": "20"
            }
          ]
        }
      },
      "tid": "2",
      "name": "incrementer(1)",
      "macroStepIdx": 8
    },
    {
      "duration": 2,
      "sharedValues": {
        "count": 1,
        "done": [
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
              "pc": "49"
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
              "method": "incrementer(0)",
              "pc": "26",
              "callType": "process",
              "vars": {
                "self": 0
              }
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
              "method": "incrementer(1)",
              "vars": {
                "self": 1
              },
              "pc": "20"
            }
          ]
        }
      },
      "tid": "1",
      "name": "incrementer(0)",
      "macroStepIdx": 0
    },
    {
      "duration": 2,
      "sharedValues": {
        "count": 1,
        "done": [
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
              "pc": "49"
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
              "method": "incrementer(0)",
              "pc": "26",
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
              "method": "incrementer(1)",
              "vars": {
                "self": 1
              },
              "pc": "20"
            }
          ]
        }
      },
      "tid": "1",
      "name": "incrementer(0)",
      "macroStepIdx": 9
    },
    {
      "duration": 1,
      "sharedValues": {
        "count": 1,
        "done": [
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
              "pc": "49"
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
              "method": "incrementer(0)",
              "pc": "31",
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
              "method": "incrementer(1)",
              "vars": {
                "self": 1
              },
              "pc": "20"
            }
          ]
        }
      },
      "tid": "1",
      "name": "incrementer(0)",
      "macroStepIdx": 0
    },
    {
      "duration": 4,
      "sharedValues": {
        "count": 1,
        "done": [
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
              "pc": "49"
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
              "method": "incrementer(0)",
              "pc": "31",
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
              "method": "incrementer(1)",
              "vars": {
                "self": 1
              },
              "pc": "20"
            }
          ]
        }
      },
      "tid": "1",
      "name": "incrementer(0)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "count": 1,
        "done": [
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
              "pc": "49"
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
              "method": "incrementer(0)",
              "vars": {},
              "pc": "35"
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
              "method": "incrementer(1)",
              "vars": {
                "self": 1
              },
              "pc": "20"
            }
          ]
        }
      },
      "tid": "1",
      "name": "incrementer(0)",
      "macroStepIdx": 10
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
      "sliceIdx": 2,
      "time": 8,
      "pc": 8,
      "npc": 9
    },
    {
      "sliceIdx": 2,
      "time": 9,
      "pc": 9,
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
      "sliceIdx": 2,
      "time": 13,
      "pc": 42,
      "npc": 43
    },
    {
      "sliceIdx": 2,
      "time": 14,
      "pc": 43,
      "npc": 44
    },
    {
      "sliceIdx": 2,
      "time": 15,
      "pc": 44,
      "npc": 45
    },
    {
      "sliceIdx": 2,
      "time": 16,
      "pc": 45,
      "npc": 46
    },
    {
      "sliceIdx": 2,
      "time": 17,
      "pc": 46,
      "npc": 47
    },
    {
      "sliceIdx": 2,
      "time": 18,
      "pc": 47,
      "npc": 48
    },
    {
      "sliceIdx": 2,
      "time": 19,
      "pc": 48,
      "npc": 49
    },
    {
      "sliceIdx": 3,
      "time": 20,
      "pc": 49,
      "npc": 49
    },
    {
      "pc": 10,
      "npc": 11,
      "sliceIdx": 4,
      "time": 21
    },
    {
      "pc": 11,
      "npc": 12,
      "sliceIdx": 5,
      "time": 22
    },
    {
      "sliceIdx": 5,
      "time": 23,
      "pc": 12,
      "npc": 13
    },
    {
      "sliceIdx": 5,
      "time": 24,
      "pc": 13,
      "npc": 14
    },
    {
      "pc": 10,
      "npc": 11,
      "sliceIdx": 6,
      "time": 25
    },
    {
      "pc": 11,
      "npc": 12,
      "sliceIdx": 7,
      "time": 26
    },
    {
      "sliceIdx": 7,
      "time": 27,
      "pc": 12,
      "npc": 13
    },
    {
      "sliceIdx": 7,
      "time": 28,
      "pc": 13,
      "npc": 14
    },
    {
      "pc": 14,
      "npc": 15,
      "sliceIdx": 8,
      "time": 29
    },
    {
      "sliceIdx": 8,
      "time": 30,
      "pc": 15,
      "npc": 16
    },
    {
      "sliceIdx": 8,
      "time": 31,
      "pc": 16,
      "npc": 17
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
      "pc": 19,
      "npc": 20,
      "sliceIdx": 9,
      "time": 34
    },
    {
      "sliceIdx": 9,
      "time": 35,
      "pc": 20,
      "npc": 21
    },
    {
      "sliceIdx": 9,
      "time": 36,
      "pc": 21,
      "npc": 22
    },
    {
      "sliceIdx": 9,
      "time": 37,
      "pc": 22,
      "npc": 23
    },
    {
      "sliceIdx": 9,
      "time": 38,
      "pc": 23,
      "npc": 24
    },
    {
      "sliceIdx": 9,
      "time": 39,
      "pc": 24,
      "npc": 25
    },
    {
      "pc": 14,
      "npc": 15,
      "sliceIdx": 10,
      "time": 40
    },
    {
      "sliceIdx": 10,
      "time": 41,
      "pc": 15,
      "npc": 16
    },
    {
      "sliceIdx": 10,
      "time": 42,
      "pc": 16,
      "npc": 17
    },
    {
      "sliceIdx": 10,
      "time": 43,
      "pc": 17,
      "npc": 18
    },
    {
      "sliceIdx": 10,
      "time": 44,
      "pc": 18,
      "npc": 19
    },
    {
      "pc": 19,
      "npc": 20,
      "sliceIdx": 11,
      "time": 45
    },
    {
      "pc": 25,
      "npc": 26,
      "sliceIdx": 12,
      "time": 46
    },
    {
      "sliceIdx": 12,
      "time": 47,
      "pc": 26,
      "npc": 27
    },
    {
      "sliceIdx": 13,
      "time": 48,
      "pc": 27,
      "npc": 28
    },
    {
      "sliceIdx": 13,
      "time": 49,
      "pc": 28,
      "npc": 30
    },
    {
      "pc": 30,
      "npc": 31,
      "sliceIdx": 14,
      "time": 50
    },
    {
      "sliceIdx": 15,
      "time": 51,
      "pc": 31,
      "npc": 32
    },
    {
      "sliceIdx": 15,
      "time": 52,
      "pc": 32,
      "npc": 33
    },
    {
      "sliceIdx": 15,
      "time": 53,
      "pc": 33,
      "npc": 34
    },
    {
      "sliceIdx": 15,
      "time": 54,
      "pc": 34,
      "npc": 35
    },
    {
      "sliceIdx": 16,
      "time": 55,
      "pc": 35,
      "npc": 35
    }
  ],
  "macroSteps": [
    {
      "tid": "0",
      "name": "__init__()",
      "duration": 21,
      "startSliceIdx": 0,
      "lastSliceIdx": 4
    },
    {
      "tid": "2",
      "name": "incrementer(1)",
      "duration": 1,
      "startSliceIdx": 4,
      "lastSliceIdx": 5
    },
    {
      "tid": "2",
      "name": "incrementer(1)",
      "duration": 3,
      "startSliceIdx": 5,
      "lastSliceIdx": 6
    },
    {
      "tid": "1",
      "name": "incrementer(0)",
      "duration": 1,
      "startSliceIdx": 6,
      "lastSliceIdx": 7
    },
    {
      "tid": "1",
      "name": "incrementer(0)",
      "duration": 3,
      "startSliceIdx": 7,
      "lastSliceIdx": 8
    },
    {
      "tid": "1",
      "name": "incrementer(0)",
      "duration": 5,
      "startSliceIdx": 8,
      "lastSliceIdx": 9
    },
    {
      "tid": "1",
      "name": "incrementer(0)",
      "duration": 6,
      "startSliceIdx": 9,
      "lastSliceIdx": 10
    },
    {
      "tid": "2",
      "name": "incrementer(1)",
      "duration": 5,
      "startSliceIdx": 10,
      "lastSliceIdx": 11
    },
    {
      "tid": "2",
      "name": "incrementer(1)",
      "duration": 1,
      "startSliceIdx": 11,
      "lastSliceIdx": 12
    },
    {
      "tid": "1",
      "name": "incrementer(0)",
      "duration": 4,
      "startSliceIdx": 12,
      "lastSliceIdx": 14
    },
    {
      "tid": "1",
      "name": "incrementer(0)",
      "duration": 6,
      "startSliceIdx": 14,
      "lastSliceIdx": 17
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Up.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Up.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Up.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Up.hny",
      "line": "2",
      "sourceCode": "done = [ False, False ]",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "building a tuple: push constant ()"
        }
      ]
    },
    {
      "initialPc": 4,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Up.hny",
      "line": "2",
      "sourceCode": "done = [ False, False ]",
      "assembly": [
        {
          "assembly": "Push False",
          "explain": "push constant False"
        }
      ]
    },
    {
      "initialPc": 5,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Up.hny",
      "line": "2",
      "sourceCode": "done = [ False, False ]",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 6,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Up.hny",
      "line": "2",
      "sourceCode": "done = [ False, False ]",
      "assembly": [
        {
          "assembly": "Push False",
          "explain": "push constant False"
        }
      ]
    },
    {
      "initialPc": 7,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Up.hny",
      "line": "2",
      "sourceCode": "done = [ False, False ]",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 8,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Up.hny",
      "line": "2",
      "sourceCode": "done = [ False, False ]",
      "assembly": [
        {
          "assembly": "Store done",
          "explain": "pop a value and store it in shared variable done"
        }
      ]
    },
    {
      "initialPc": 9,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Up.hny",
      "line": "4",
      "sourceCode": "def incrementer(self):",
      "assembly": [
        {
          "assembly": "Jump 39",
          "explain": "jump over method definition: set program counter to 39"
        }
      ]
    },
    {
      "initialPc": 10,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Up.hny",
      "line": "4",
      "sourceCode": "def incrementer(self):",
      "assembly": [
        {
          "assembly": "Frame incrementer(self)",
          "explain": "start of method incrementer"
        }
      ]
    },
    {
      "initialPc": 11,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Up.hny",
      "line": "5",
      "sourceCode": "    count = count + 1",
      "assembly": [
        {
          "assembly": "Load count",
          "explain": "push value of shared variable count"
        }
      ]
    },
    {
      "initialPc": 12,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Up.hny",
      "line": "5",
      "sourceCode": "    count = count + 1",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 13,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Up.hny",
      "line": "5",
      "sourceCode": "    count = count + 1",
      "assembly": [
        {
          "assembly": "2-ary +",
          "explain": "pop 2 values and push the result of applying +"
        }
      ]
    },
    {
      "initialPc": 14,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Up.hny",
      "line": "5",
      "sourceCode": "    count = count + 1",
      "assembly": [
        {
          "assembly": "Store count",
          "explain": "pop a value and store it in shared variable count"
        }
      ]
    },
    {
      "initialPc": 15,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Up.hny",
      "line": "6",
      "sourceCode": "    done[self] = True",
      "assembly": [
        {
          "assembly": "Push ?done",
          "explain": "push constant ?done"
        }
      ]
    },
    {
      "initialPc": 16,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Up.hny",
      "line": "6",
      "sourceCode": "    done[self] = True",
      "assembly": [
        {
          "assembly": "LoadVar self",
          "explain": "push the value of self"
        }
      ]
    },
    {
      "initialPc": 17,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Up.hny",
      "line": "6",
      "sourceCode": "    done[self] = True",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 18,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Up.hny",
      "line": "6",
      "sourceCode": "    done[self] = True",
      "assembly": [
        {
          "assembly": "Push True",
          "explain": "push constant True"
        }
      ]
    },
    {
      "initialPc": 19,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Up.hny",
      "line": "6",
      "sourceCode": "    done[self] = True",
      "assembly": [
        {
          "assembly": "Store",
          "explain": "pop a value and an address and store the value at the address"
        }
      ]
    },
    {
      "initialPc": 20,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Up.hny",
      "line": "7",
      "sourceCode": "    await done[1 - self]",
      "assembly": [
        {
          "assembly": "Push ?done",
          "explain": "push constant ?done"
        }
      ]
    },
    {
      "initialPc": 21,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Up.hny",
      "line": "7",
      "sourceCode": "    await done[1 - self]",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 22,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Up.hny",
      "line": "7",
      "sourceCode": "    await done[1 - self]",
      "assembly": [
        {
          "assembly": "LoadVar self",
          "explain": "push the value of self"
        }
      ]
    },
    {
      "initialPc": 23,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Up.hny",
      "line": "7",
      "sourceCode": "    await done[1 - self]",
      "assembly": [
        {
          "assembly": "2-ary -",
          "explain": "pop 2 values and push the result of applying -"
        }
      ]
    },
    {
      "initialPc": 24,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Up.hny",
      "line": "7",
      "sourceCode": "    await done[1 - self]",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 25,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Up.hny",
      "line": "7",
      "sourceCode": "    await done[1 - self]",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 26,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Up.hny",
      "line": "7",
      "sourceCode": "    await done[1 - self]",
      "assembly": [
        {
          "assembly": "JumpCond False 20",
          "explain": "pop a value and jump to 20 if the value is False"
        }
      ]
    },
    {
      "initialPc": 27,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Up.hny",
      "line": "7",
      "sourceCode": "    await done[1 - self]",
      "assembly": [
        {
          "assembly": "DelVar self",
          "explain": "delete method variable self"
        }
      ]
    },
    {
      "initialPc": 28,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Up.hny",
      "line": "7",
      "sourceCode": "    await done[1 - self]",
      "assembly": [
        {
          "assembly": "Jump 30",
          "explain": "set program counter to 30"
        }
      ]
    },
    {
      "initialPc": 29,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Up.hny",
      "line": "7",
      "sourceCode": "    await done[1 - self]",
      "assembly": [
        {
          "assembly": "Jump 20",
          "explain": "set program counter to 20"
        }
      ]
    },
    {
      "initialPc": 30,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Up.hny",
      "line": "8",
      "sourceCode": "    assert count == 2",
      "assembly": [
        {
          "assembly": "AtomicInc(lazy)",
          "explain": "increment atomic counter of context; thread runs uninterrupted if larger than 0"
        }
      ]
    },
    {
      "initialPc": 31,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Up.hny",
      "line": "8",
      "sourceCode": "    assert count == 2",
      "assembly": [
        {
          "assembly": "ReadonlyInc",
          "explain": "increment readonly counter of context; thread cannot mutate shared variables if > 0"
        }
      ]
    },
    {
      "initialPc": 32,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Up.hny",
      "line": "8",
      "sourceCode": "    assert count == 2",
      "assembly": [
        {
          "assembly": "Load count",
          "explain": "push value of shared variable count"
        }
      ]
    },
    {
      "initialPc": 33,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Up.hny",
      "line": "8",
      "sourceCode": "    assert count == 2",
      "assembly": [
        {
          "assembly": "Push 2",
          "explain": "push constant 2"
        }
      ]
    },
    {
      "initialPc": 34,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Up.hny",
      "line": "8",
      "sourceCode": "    assert count == 2",
      "assembly": [
        {
          "assembly": "2-ary ==",
          "explain": "pop 2 values and push the result of applying =="
        }
      ]
    },
    {
      "initialPc": 35,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Up.hny",
      "line": "8",
      "sourceCode": "    assert count == 2",
      "assembly": [
        {
          "assembly": "Assert",
          "explain": "pop a condition and raise exception if condition is false"
        }
      ]
    },
    {
      "initialPc": 36,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Up.hny",
      "line": "8",
      "sourceCode": "    assert count == 2",
      "assembly": [
        {
          "assembly": "ReadonlyDec",
          "explain": "decrement readonly counter of context"
        }
      ]
    },
    {
      "initialPc": 37,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Up.hny",
      "line": "8",
      "sourceCode": "    assert count == 2",
      "assembly": [
        {
          "assembly": "AtomicDec",
          "explain": "decrement atomic counter of context"
        }
      ]
    },
    {
      "initialPc": 38,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Up.hny",
      "line": "4",
      "sourceCode": "def incrementer(self):",
      "assembly": [
        {
          "assembly": "ReturnOp(result. None)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 39,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Up.hny",
      "line": "10",
      "sourceCode": "spawn incrementer(0)",
      "assembly": [
        {
          "assembly": "Push ?PC(10)",
          "explain": "push constant ?PC(10)"
        }
      ]
    },
    {
      "initialPc": 40,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Up.hny",
      "line": "10",
      "sourceCode": "spawn incrementer(0)",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 41,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Up.hny",
      "line": "10",
      "sourceCode": "spawn incrementer(0)",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 42,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Up.hny",
      "line": "10",
      "sourceCode": "spawn incrementer(0)",
      "assembly": [
        {
          "assembly": "Push {:}",
          "explain": "push constant {:}"
        }
      ]
    },
    {
      "initialPc": 43,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Up.hny",
      "line": "10",
      "sourceCode": "spawn incrementer(0)",
      "assembly": [
        {
          "assembly": "Spawn",
          "explain": "pop thread-local state, argument, and pc and spawn a new thread"
        }
      ]
    },
    {
      "initialPc": 44,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Up.hny",
      "line": "11",
      "sourceCode": "spawn incrementer(1)",
      "assembly": [
        {
          "assembly": "Push ?PC(10)",
          "explain": "push constant ?PC(10)"
        }
      ]
    },
    {
      "initialPc": 45,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Up.hny",
      "line": "11",
      "sourceCode": "spawn incrementer(1)",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 46,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Up.hny",
      "line": "11",
      "sourceCode": "spawn incrementer(1)",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 47,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Up.hny",
      "line": "11",
      "sourceCode": "spawn incrementer(1)",
      "assembly": [
        {
          "assembly": "Push {:}",
          "explain": "push constant {:}"
        }
      ]
    },
    {
      "initialPc": 48,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Up.hny",
      "line": "11",
      "sourceCode": "spawn incrementer(1)",
      "assembly": [
        {
          "assembly": "Spawn",
          "explain": "pop thread-local state, argument, and pc and spawn a new thread"
        }
      ]
    },
    {
      "initialPc": 49,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Up.hny",
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
      "initialPc": 50,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/Up.hny",
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