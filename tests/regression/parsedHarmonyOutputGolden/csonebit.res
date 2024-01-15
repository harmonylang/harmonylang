{
  "state": "Issues found",
  "issue": "Active busy waiting",
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
      "duration": 10,
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
        "flags": [
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
        "in_cs": 0,
        "flags": [
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
              "pc": "85"
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
        "flags": [
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
              "pc": "85"
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
          "atomic": 0
        }
      },
      "tid": "2",
      "name": "thread(1)",
      "macroStepIdx": 1
    },
    {
      "duration": 6,
      "sharedValues": {
        "in_cs": 0,
        "flags": [
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
              "pc": "85"
            }
          ]
        },
        "2": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "thread(1)",
              "pc": "31",
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
          "chosen": true
        }
      },
      "tid": "2",
      "name": "thread(1)",
      "macroStepIdx": 2
    },
    {
      "duration": 6,
      "sharedValues": {
        "in_cs": 0,
        "flags": [
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
              "pc": "85"
            }
          ]
        },
        "2": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "thread(1)",
              "pc": "37",
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
      "macroStepIdx": 3
    },
    {
      "duration": 6,
      "sharedValues": {
        "in_cs": 0,
        "flags": [
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
              "pc": "85"
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
          "atomic": 0
        },
        "2": {
          "mode": "runnable",
          "fullStatus": "runnable",
          "status": "runnable",
          "callStack": [
            {
              "method": "thread(1)",
              "pc": "37",
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
      "name": "thread(0)",
      "macroStepIdx": 4
    },
    {
      "duration": 6,
      "sharedValues": {
        "in_cs": 0,
        "flags": [
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
              "pc": "85"
            }
          ]
        },
        "1": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "thread(0)",
              "pc": "31",
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
        },
        "2": {
          "mode": "runnable",
          "fullStatus": "runnable",
          "status": "runnable",
          "callStack": [
            {
              "method": "thread(1)",
              "pc": "37",
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
      "name": "thread(0)",
      "macroStepIdx": 5
    },
    {
      "duration": 6,
      "sharedValues": {
        "in_cs": 0,
        "flags": [
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
              "pc": "85"
            }
          ]
        },
        "1": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "thread(0)",
              "pc": "37",
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
              "method": "thread(1)",
              "pc": "37",
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
      "name": "thread(0)",
      "macroStepIdx": 6
    },
    {
      "duration": 6,
      "sharedValues": {
        "in_cs": 0,
        "flags": [
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
              "pc": "85"
            }
          ]
        },
        "1": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "thread(0)",
              "pc": "43",
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
              "method": "thread(1)",
              "pc": "37",
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
      "name": "thread(0)",
      "macroStepIdx": 7
    },
    {
      "duration": 5,
      "sharedValues": {
        "in_cs": 0,
        "flags": [
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
              "pc": "85"
            }
          ]
        },
        "1": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "thread(0)",
              "pc": "49",
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
              "method": "thread(1)",
              "pc": "37",
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
      "name": "thread(0)",
      "macroStepIdx": 8
    },
    {
      "duration": 2,
      "sharedValues": {
        "in_cs": 0,
        "flags": [
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
              "pc": "85"
            }
          ]
        },
        "1": {
          "mode": "runnable",
          "fullStatus": "runnable",
          "status": "runnable",
          "callStack": [
            {
              "method": "thread(0)",
              "pc": "49",
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
              "method": "thread(1)",
              "pc": "43",
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
      "macroStepIdx": 9
    },
    {
      "duration": 4,
      "sharedValues": {
        "in_cs": 0,
        "flags": [
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
              "pc": "85"
            }
          ]
        },
        "1": {
          "mode": "runnable",
          "fullStatus": "runnable",
          "status": "runnable",
          "callStack": [
            {
              "method": "thread(0)",
              "pc": "49",
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
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "thread(1)",
              "pc": "56",
              "callType": "process",
              "vars": {
                "self": 1
              }
            }
          ],
          "tid": "2",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 1
        }
      },
      "tid": "2",
      "name": "thread(1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "in_cs": 1,
        "flags": [
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
              "pc": "85"
            }
          ]
        },
        "1": {
          "mode": "runnable",
          "fullStatus": "runnable",
          "status": "runnable",
          "callStack": [
            {
              "method": "thread(0)",
              "pc": "49",
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
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "thread(1)",
              "pc": "56",
              "callType": "process",
              "vars": {
                "self": 1
              }
            }
          ],
          "tid": "2",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 1
        }
      },
      "tid": "2",
      "name": "thread(1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "in_cs": 1,
        "flags": [
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
              "pc": "85"
            }
          ]
        },
        "1": {
          "mode": "runnable",
          "fullStatus": "runnable",
          "status": "runnable",
          "callStack": [
            {
              "method": "thread(0)",
              "pc": "49",
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
              "method": "thread(1)",
              "vars": {
                "self": 1
              },
              "pc": "61"
            }
          ]
        }
      },
      "tid": "2",
      "name": "thread(1)",
      "macroStepIdx": 10
    },
    {
      "duration": 4,
      "sharedValues": {
        "in_cs": 1,
        "flags": [
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
              "pc": "85"
            }
          ]
        },
        "1": {
          "mode": "runnable",
          "fullStatus": "runnable",
          "status": "runnable",
          "callStack": [
            {
              "method": "thread(0)",
              "pc": "49",
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
          "atomic": 1,
          "fullStatus": "running atomic",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "running",
          "tid": "2",
          "callStack": [
            {
              "method": "thread(1)",
              "pc": "62",
              "callType": "process",
              "vars": {
                "self": 1
              }
            }
          ]
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
        "flags": [
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
              "pc": "85"
            }
          ]
        },
        "1": {
          "mode": "runnable",
          "fullStatus": "runnable",
          "status": "runnable",
          "callStack": [
            {
              "method": "thread(0)",
              "pc": "49",
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
          "atomic": 1,
          "fullStatus": "running atomic",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "running",
          "tid": "2",
          "callStack": [
            {
              "method": "thread(1)",
              "pc": "62",
              "callType": "process",
              "vars": {
                "self": 1
              }
            }
          ]
        }
      },
      "tid": "2",
      "name": "thread(1)",
      "macroStepIdx": 0
    },
    {
      "duration": 5,
      "sharedValues": {
        "in_cs": 0,
        "flags": [
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
              "pc": "85"
            }
          ]
        },
        "1": {
          "mode": "runnable",
          "fullStatus": "runnable",
          "status": "runnable",
          "callStack": [
            {
              "method": "thread(0)",
              "pc": "49",
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
          "atomic": 0,
          "fullStatus": "running",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "running",
          "tid": "2",
          "callStack": [
            {
              "method": "thread(1)",
              "pc": "62",
              "callType": "process",
              "vars": {
                "self": 1
              }
            }
          ]
        }
      },
      "tid": "2",
      "name": "thread(1)",
      "macroStepIdx": 11
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
      "sliceIdx": 1,
      "time": 6,
      "pc": 16,
      "npc": 17
    },
    {
      "sliceIdx": 1,
      "time": 7,
      "pc": 17,
      "npc": 18
    },
    {
      "sliceIdx": 1,
      "time": 8,
      "pc": 18,
      "npc": 19
    },
    {
      "sliceIdx": 1,
      "time": 9,
      "pc": 19,
      "npc": 20
    },
    {
      "sliceIdx": 1,
      "time": 10,
      "pc": 20,
      "npc": 21
    },
    {
      "sliceIdx": 1,
      "time": 11,
      "pc": 21,
      "npc": 22
    },
    {
      "sliceIdx": 2,
      "time": 12,
      "pc": 22,
      "npc": 23
    },
    {
      "sliceIdx": 2,
      "time": 13,
      "pc": 23,
      "npc": 75
    },
    {
      "sliceIdx": 2,
      "time": 14,
      "pc": 75,
      "npc": 76
    },
    {
      "sliceIdx": 2,
      "time": 15,
      "pc": 76,
      "npc": 77
    },
    {
      "sliceIdx": 2,
      "time": 16,
      "pc": 77,
      "npc": 78
    },
    {
      "sliceIdx": 2,
      "time": 17,
      "pc": 78,
      "npc": 79
    },
    {
      "sliceIdx": 2,
      "time": 18,
      "pc": 79,
      "npc": 80
    },
    {
      "sliceIdx": 2,
      "time": 19,
      "pc": 80,
      "npc": 81
    },
    {
      "sliceIdx": 2,
      "time": 20,
      "pc": 81,
      "npc": 82
    },
    {
      "sliceIdx": 2,
      "time": 21,
      "pc": 82,
      "npc": 83
    },
    {
      "sliceIdx": 2,
      "time": 22,
      "pc": 83,
      "npc": 84
    },
    {
      "sliceIdx": 2,
      "time": 23,
      "pc": 84,
      "npc": 85
    },
    {
      "sliceIdx": 3,
      "time": 24,
      "pc": 85,
      "npc": 85
    },
    {
      "pc": 24,
      "npc": 25,
      "sliceIdx": 4,
      "time": 25
    },
    {
      "sliceIdx": 4,
      "time": 26,
      "pc": 25,
      "npc": 26
    },
    {
      "sliceIdx": 4,
      "time": 27,
      "pc": 26,
      "npc": 27
    },
    {
      "sliceIdx": 4,
      "time": 28,
      "pc": 27,
      "npc": 28
    },
    {
      "sliceIdx": 4,
      "time": 29,
      "pc": 28,
      "npc": 29
    },
    {
      "sliceIdx": 4,
      "time": 30,
      "pc": 29,
      "npc": 30
    },
    {
      "pc": 30,
      "npc": 31,
      "sliceIdx": 5,
      "time": 31
    },
    {
      "sliceIdx": 5,
      "time": 32,
      "pc": 31,
      "npc": 32
    },
    {
      "sliceIdx": 5,
      "time": 33,
      "pc": 32,
      "npc": 33
    },
    {
      "sliceIdx": 5,
      "time": 34,
      "pc": 33,
      "npc": 34
    },
    {
      "sliceIdx": 5,
      "time": 35,
      "pc": 34,
      "npc": 35
    },
    {
      "sliceIdx": 5,
      "time": 36,
      "pc": 35,
      "npc": 36
    },
    {
      "pc": 36,
      "npc": 37,
      "sliceIdx": 6,
      "time": 37
    },
    {
      "sliceIdx": 6,
      "time": 38,
      "pc": 37,
      "npc": 38
    },
    {
      "sliceIdx": 6,
      "time": 39,
      "pc": 38,
      "npc": 39
    },
    {
      "sliceIdx": 6,
      "time": 40,
      "pc": 39,
      "npc": 40
    },
    {
      "sliceIdx": 6,
      "time": 41,
      "pc": 40,
      "npc": 41
    },
    {
      "sliceIdx": 6,
      "time": 42,
      "pc": 41,
      "npc": 42
    },
    {
      "pc": 24,
      "npc": 25,
      "sliceIdx": 7,
      "time": 43
    },
    {
      "sliceIdx": 7,
      "time": 44,
      "pc": 25,
      "npc": 26
    },
    {
      "sliceIdx": 7,
      "time": 45,
      "pc": 26,
      "npc": 27
    },
    {
      "sliceIdx": 7,
      "time": 46,
      "pc": 27,
      "npc": 28
    },
    {
      "sliceIdx": 7,
      "time": 47,
      "pc": 28,
      "npc": 29
    },
    {
      "sliceIdx": 7,
      "time": 48,
      "pc": 29,
      "npc": 30
    },
    {
      "pc": 30,
      "npc": 31,
      "sliceIdx": 8,
      "time": 49
    },
    {
      "sliceIdx": 8,
      "time": 50,
      "pc": 31,
      "npc": 32
    },
    {
      "sliceIdx": 8,
      "time": 51,
      "pc": 32,
      "npc": 33
    },
    {
      "sliceIdx": 8,
      "time": 52,
      "pc": 33,
      "npc": 34
    },
    {
      "sliceIdx": 8,
      "time": 53,
      "pc": 34,
      "npc": 35
    },
    {
      "sliceIdx": 8,
      "time": 54,
      "pc": 35,
      "npc": 36
    },
    {
      "pc": 36,
      "npc": 37,
      "sliceIdx": 9,
      "time": 55
    },
    {
      "sliceIdx": 9,
      "time": 56,
      "pc": 37,
      "npc": 38
    },
    {
      "sliceIdx": 9,
      "time": 57,
      "pc": 38,
      "npc": 39
    },
    {
      "sliceIdx": 9,
      "time": 58,
      "pc": 39,
      "npc": 40
    },
    {
      "sliceIdx": 9,
      "time": 59,
      "pc": 40,
      "npc": 41
    },
    {
      "sliceIdx": 9,
      "time": 60,
      "pc": 41,
      "npc": 42
    },
    {
      "pc": 42,
      "npc": 43,
      "sliceIdx": 10,
      "time": 61
    },
    {
      "sliceIdx": 10,
      "time": 62,
      "pc": 43,
      "npc": 44
    },
    {
      "sliceIdx": 10,
      "time": 63,
      "pc": 44,
      "npc": 45
    },
    {
      "sliceIdx": 10,
      "time": 64,
      "pc": 45,
      "npc": 46
    },
    {
      "sliceIdx": 10,
      "time": 65,
      "pc": 46,
      "npc": 47
    },
    {
      "sliceIdx": 10,
      "time": 66,
      "pc": 47,
      "npc": 48
    },
    {
      "pc": 48,
      "npc": 49,
      "sliceIdx": 11,
      "time": 67
    },
    {
      "sliceIdx": 11,
      "time": 68,
      "pc": 49,
      "npc": 50
    },
    {
      "sliceIdx": 11,
      "time": 69,
      "pc": 50,
      "npc": 51
    },
    {
      "sliceIdx": 11,
      "time": 70,
      "pc": 51,
      "npc": 52
    },
    {
      "sliceIdx": 11,
      "time": 71,
      "pc": 52,
      "npc": 53
    },
    {
      "pc": 42,
      "npc": 43,
      "sliceIdx": 12,
      "time": 72
    },
    {
      "sliceIdx": 12,
      "time": 73,
      "pc": 43,
      "npc": 55
    },
    {
      "pc": 55,
      "npc": 56,
      "sliceIdx": 13,
      "time": 74
    },
    {
      "sliceIdx": 13,
      "time": 75,
      "pc": 56,
      "npc": 57
    },
    {
      "sliceIdx": 13,
      "time": 76,
      "pc": 57,
      "npc": 58
    },
    {
      "sliceIdx": 13,
      "time": 77,
      "pc": 58,
      "npc": 59
    },
    {
      "sliceIdx": 14,
      "time": 78,
      "pc": 59,
      "npc": 60
    },
    {
      "sliceIdx": 15,
      "time": 79,
      "pc": 60,
      "npc": 61
    },
    {
      "pc": 61,
      "npc": 62,
      "sliceIdx": 16,
      "time": 80
    },
    {
      "sliceIdx": 16,
      "time": 81,
      "pc": 62,
      "npc": 63
    },
    {
      "sliceIdx": 16,
      "time": 82,
      "pc": 63,
      "npc": 64
    },
    {
      "sliceIdx": 16,
      "time": 83,
      "pc": 64,
      "npc": 65
    },
    {
      "sliceIdx": 17,
      "time": 84,
      "pc": 65,
      "npc": 66
    },
    {
      "sliceIdx": 18,
      "time": 85,
      "pc": 66,
      "npc": 67
    },
    {
      "sliceIdx": 18,
      "time": 86,
      "pc": 67,
      "npc": 68
    },
    {
      "sliceIdx": 18,
      "time": 87,
      "pc": 68,
      "npc": 69
    },
    {
      "sliceIdx": 18,
      "time": 88,
      "pc": 69,
      "npc": 70
    },
    {
      "sliceIdx": 18,
      "time": 89,
      "pc": 70,
      "npc": 71
    }
  ],
  "macroSteps": [
    {
      "tid": "0",
      "name": "__init__()",
      "duration": 25,
      "startSliceIdx": 0,
      "lastSliceIdx": 4
    },
    {
      "tid": "2",
      "name": "thread(1)",
      "duration": 6,
      "startSliceIdx": 4,
      "lastSliceIdx": 5
    },
    {
      "tid": "2",
      "name": "thread(1)",
      "duration": 6,
      "startSliceIdx": 5,
      "lastSliceIdx": 6
    },
    {
      "tid": "2",
      "name": "thread(1)",
      "duration": 6,
      "startSliceIdx": 6,
      "lastSliceIdx": 7
    },
    {
      "tid": "1",
      "name": "thread(0)",
      "duration": 6,
      "startSliceIdx": 7,
      "lastSliceIdx": 8
    },
    {
      "tid": "1",
      "name": "thread(0)",
      "duration": 6,
      "startSliceIdx": 8,
      "lastSliceIdx": 9
    },
    {
      "tid": "1",
      "name": "thread(0)",
      "duration": 6,
      "startSliceIdx": 9,
      "lastSliceIdx": 10
    },
    {
      "tid": "1",
      "name": "thread(0)",
      "duration": 6,
      "startSliceIdx": 10,
      "lastSliceIdx": 11
    },
    {
      "tid": "1",
      "name": "thread(0)",
      "duration": 5,
      "startSliceIdx": 11,
      "lastSliceIdx": 12
    },
    {
      "tid": "2",
      "name": "thread(1)",
      "duration": 2,
      "startSliceIdx": 12,
      "lastSliceIdx": 13
    },
    {
      "tid": "2",
      "name": "thread(1)",
      "duration": 6,
      "startSliceIdx": 13,
      "lastSliceIdx": 16
    },
    {
      "tid": "2",
      "name": "thread(1)",
      "duration": 10,
      "startSliceIdx": 16,
      "lastSliceIdx": 19
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "4",
      "sourceCode": "sequential flags",
      "assembly": [
        {
          "assembly": "Push ?flags",
          "explain": "push constant ?flags"
        }
      ]
    },
    {
      "initialPc": 16,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "4",
      "sourceCode": "sequential flags",
      "assembly": [
        {
          "assembly": "Sequential",
          "explain": "sequential consistency for variable on top of stack"
        }
      ]
    },
    {
      "initialPc": 17,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "5",
      "sourceCode": "flags = [ False, False ]",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "building a tuple: push constant ()"
        }
      ]
    },
    {
      "initialPc": 18,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "5",
      "sourceCode": "flags = [ False, False ]",
      "assembly": [
        {
          "assembly": "Push False",
          "explain": "push constant False"
        }
      ]
    },
    {
      "initialPc": 19,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "5",
      "sourceCode": "flags = [ False, False ]",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 20,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "5",
      "sourceCode": "flags = [ False, False ]",
      "assembly": [
        {
          "assembly": "Push False",
          "explain": "push constant False"
        }
      ]
    },
    {
      "initialPc": 21,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "5",
      "sourceCode": "flags = [ False, False ]",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 22,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "5",
      "sourceCode": "flags = [ False, False ]",
      "assembly": [
        {
          "assembly": "Store flags",
          "explain": "pop a value and store it in shared variable flags"
        }
      ]
    },
    {
      "initialPc": 23,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "7",
      "sourceCode": "def thread(self):",
      "assembly": [
        {
          "assembly": "Jump 75",
          "explain": "jump over method definition: set program counter to 75"
        }
      ]
    },
    {
      "initialPc": 24,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "7",
      "sourceCode": "def thread(self):",
      "assembly": [
        {
          "assembly": "Frame thread(self)",
          "explain": "start of method thread"
        }
      ]
    },
    {
      "initialPc": 25,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "8",
      "sourceCode": "    while choose({ False, True }):",
      "assembly": [
        {
          "assembly": "Push {}",
          "explain": "push constant {}"
        }
      ]
    },
    {
      "initialPc": 26,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "8",
      "sourceCode": "    while choose({ False, True }):",
      "assembly": [
        {
          "assembly": "Push False",
          "explain": "push constant False"
        }
      ]
    },
    {
      "initialPc": 27,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "8",
      "sourceCode": "    while choose({ False, True }):",
      "assembly": [
        {
          "assembly": "2-ary SetAdd",
          "explain": "pop 2 values and push the result of applying SetAdd"
        }
      ]
    },
    {
      "initialPc": 28,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "8",
      "sourceCode": "    while choose({ False, True }):",
      "assembly": [
        {
          "assembly": "Push True",
          "explain": "push constant True"
        }
      ]
    },
    {
      "initialPc": 29,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "8",
      "sourceCode": "    while choose({ False, True }):",
      "assembly": [
        {
          "assembly": "2-ary SetAdd",
          "explain": "pop 2 values and push the result of applying SetAdd"
        }
      ]
    },
    {
      "initialPc": 30,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "8",
      "sourceCode": "    while choose({ False, True }):",
      "assembly": [
        {
          "assembly": "Choose",
          "explain": "pop a set value and push one of its elements"
        }
      ]
    },
    {
      "initialPc": 31,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "8",
      "sourceCode": "    while choose({ False, True }):",
      "assembly": [
        {
          "assembly": "JumpCond False 73",
          "explain": "pop a value and jump to 73 if the value is False"
        }
      ]
    },
    {
      "initialPc": 32,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "10",
      "sourceCode": "        flags[self] = True",
      "assembly": [
        {
          "assembly": "Push ?flags",
          "explain": "push constant ?flags"
        }
      ]
    },
    {
      "initialPc": 33,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "10",
      "sourceCode": "        flags[self] = True",
      "assembly": [
        {
          "assembly": "LoadVar self",
          "explain": "push the value of self"
        }
      ]
    },
    {
      "initialPc": 34,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "10",
      "sourceCode": "        flags[self] = True",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 35,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "10",
      "sourceCode": "        flags[self] = True",
      "assembly": [
        {
          "assembly": "Push True",
          "explain": "push constant True"
        }
      ]
    },
    {
      "initialPc": 36,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "10",
      "sourceCode": "        flags[self] = True",
      "assembly": [
        {
          "assembly": "Store",
          "explain": "pop a value and an address and store the value at the address"
        }
      ]
    },
    {
      "initialPc": 37,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "11",
      "sourceCode": "        while flags[1 - self]:",
      "assembly": [
        {
          "assembly": "Push ?flags",
          "explain": "push constant ?flags"
        }
      ]
    },
    {
      "initialPc": 38,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "11",
      "sourceCode": "        while flags[1 - self]:",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 39,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "11",
      "sourceCode": "        while flags[1 - self]:",
      "assembly": [
        {
          "assembly": "LoadVar self",
          "explain": "push the value of self"
        }
      ]
    },
    {
      "initialPc": 40,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "11",
      "sourceCode": "        while flags[1 - self]:",
      "assembly": [
        {
          "assembly": "2-ary -",
          "explain": "pop 2 values and push the result of applying -"
        }
      ]
    },
    {
      "initialPc": 41,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "11",
      "sourceCode": "        while flags[1 - self]:",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 42,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "11",
      "sourceCode": "        while flags[1 - self]:",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 43,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "11",
      "sourceCode": "        while flags[1 - self]:",
      "assembly": [
        {
          "assembly": "JumpCond False 55",
          "explain": "pop a value and jump to 55 if the value is False"
        }
      ]
    },
    {
      "initialPc": 44,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "12",
      "sourceCode": "            flags[self] = False",
      "assembly": [
        {
          "assembly": "Push ?flags",
          "explain": "push constant ?flags"
        }
      ]
    },
    {
      "initialPc": 45,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "12",
      "sourceCode": "            flags[self] = False",
      "assembly": [
        {
          "assembly": "LoadVar self",
          "explain": "push the value of self"
        }
      ]
    },
    {
      "initialPc": 46,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "12",
      "sourceCode": "            flags[self] = False",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 47,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "12",
      "sourceCode": "            flags[self] = False",
      "assembly": [
        {
          "assembly": "Push False",
          "explain": "push constant False"
        }
      ]
    },
    {
      "initialPc": 48,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "12",
      "sourceCode": "            flags[self] = False",
      "assembly": [
        {
          "assembly": "Store",
          "explain": "pop a value and an address and store the value at the address"
        }
      ]
    },
    {
      "initialPc": 49,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "13",
      "sourceCode": "            flags[self] = True",
      "assembly": [
        {
          "assembly": "Push ?flags",
          "explain": "push constant ?flags"
        }
      ]
    },
    {
      "initialPc": 50,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "13",
      "sourceCode": "            flags[self] = True",
      "assembly": [
        {
          "assembly": "LoadVar self",
          "explain": "push the value of self"
        }
      ]
    },
    {
      "initialPc": 51,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "13",
      "sourceCode": "            flags[self] = True",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 52,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "13",
      "sourceCode": "            flags[self] = True",
      "assembly": [
        {
          "assembly": "Push True",
          "explain": "push constant True"
        }
      ]
    },
    {
      "initialPc": 53,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "13",
      "sourceCode": "            flags[self] = True",
      "assembly": [
        {
          "assembly": "Store",
          "explain": "pop a value and an address and store the value at the address"
        }
      ]
    },
    {
      "initialPc": 54,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "11",
      "sourceCode": "        while flags[1 - self]:",
      "assembly": [
        {
          "assembly": "Jump 37",
          "explain": "set program counter to 37"
        }
      ]
    },
    {
      "initialPc": 55,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "15",
      "sourceCode": "        atomically in_cs += 1",
      "assembly": [
        {
          "assembly": "AtomicInc(eager)",
          "explain": "increment atomic counter of context; thread runs uninterrupted if larger than 0"
        }
      ]
    },
    {
      "initialPc": 56,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "15",
      "sourceCode": "        atomically in_cs += 1",
      "assembly": [
        {
          "assembly": "Load in_cs",
          "explain": "push value of shared variable in_cs"
        }
      ]
    },
    {
      "initialPc": 57,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "15",
      "sourceCode": "        atomically in_cs += 1",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 58,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "15",
      "sourceCode": "        atomically in_cs += 1",
      "assembly": [
        {
          "assembly": "2-ary +",
          "explain": "pop 2 values and push the result of applying +"
        }
      ]
    },
    {
      "initialPc": 59,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "15",
      "sourceCode": "        atomically in_cs += 1",
      "assembly": [
        {
          "assembly": "Store in_cs",
          "explain": "pop a value and store it in shared variable in_cs"
        }
      ]
    },
    {
      "initialPc": 60,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "15",
      "sourceCode": "        atomically in_cs += 1",
      "assembly": [
        {
          "assembly": "AtomicDec",
          "explain": "decrement atomic counter of context"
        }
      ]
    },
    {
      "initialPc": 61,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "17",
      "sourceCode": "        atomically in_cs -= 1",
      "assembly": [
        {
          "assembly": "AtomicInc(eager)",
          "explain": "increment atomic counter of context; thread runs uninterrupted if larger than 0"
        }
      ]
    },
    {
      "initialPc": 62,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "17",
      "sourceCode": "        atomically in_cs -= 1",
      "assembly": [
        {
          "assembly": "Load in_cs",
          "explain": "push value of shared variable in_cs"
        }
      ]
    },
    {
      "initialPc": 63,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "17",
      "sourceCode": "        atomically in_cs -= 1",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 64,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "17",
      "sourceCode": "        atomically in_cs -= 1",
      "assembly": [
        {
          "assembly": "2-ary -",
          "explain": "pop 2 values and push the result of applying -"
        }
      ]
    },
    {
      "initialPc": 65,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "17",
      "sourceCode": "        atomically in_cs -= 1",
      "assembly": [
        {
          "assembly": "Store in_cs",
          "explain": "pop a value and store it in shared variable in_cs"
        }
      ]
    },
    {
      "initialPc": 66,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "17",
      "sourceCode": "        atomically in_cs -= 1",
      "assembly": [
        {
          "assembly": "AtomicDec",
          "explain": "decrement atomic counter of context"
        }
      ]
    },
    {
      "initialPc": 67,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "20",
      "sourceCode": "        flags[self] = False",
      "assembly": [
        {
          "assembly": "Push ?flags",
          "explain": "push constant ?flags"
        }
      ]
    },
    {
      "initialPc": 68,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "20",
      "sourceCode": "        flags[self] = False",
      "assembly": [
        {
          "assembly": "LoadVar self",
          "explain": "push the value of self"
        }
      ]
    },
    {
      "initialPc": 69,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "20",
      "sourceCode": "        flags[self] = False",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 70,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "20",
      "sourceCode": "        flags[self] = False",
      "assembly": [
        {
          "assembly": "Push False",
          "explain": "push constant False"
        }
      ]
    },
    {
      "initialPc": 71,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "20",
      "sourceCode": "        flags[self] = False",
      "assembly": [
        {
          "assembly": "Store",
          "explain": "pop a value and an address and store the value at the address"
        }
      ]
    },
    {
      "initialPc": 72,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "8",
      "sourceCode": "    while choose({ False, True }):",
      "assembly": [
        {
          "assembly": "Jump 25",
          "explain": "set program counter to 25"
        }
      ]
    },
    {
      "initialPc": 73,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "7",
      "sourceCode": "def thread(self):",
      "assembly": [
        {
          "assembly": "DelVar self",
          "explain": "delete method variable self"
        }
      ]
    },
    {
      "initialPc": 74,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "7",
      "sourceCode": "def thread(self):",
      "assembly": [
        {
          "assembly": "ReturnOp(result. None)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 75,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "22",
      "sourceCode": "spawn thread(0)",
      "assembly": [
        {
          "assembly": "Push ?PC(24)",
          "explain": "push constant ?PC(24)"
        }
      ]
    },
    {
      "initialPc": 76,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "22",
      "sourceCode": "spawn thread(0)",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 77,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "22",
      "sourceCode": "spawn thread(0)",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 78,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "22",
      "sourceCode": "spawn thread(0)",
      "assembly": [
        {
          "assembly": "Push {:}",
          "explain": "push constant {:}"
        }
      ]
    },
    {
      "initialPc": 79,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "22",
      "sourceCode": "spawn thread(0)",
      "assembly": [
        {
          "assembly": "Spawn",
          "explain": "pop thread-local state, argument, and pc and spawn a new thread"
        }
      ]
    },
    {
      "initialPc": 80,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "23",
      "sourceCode": "spawn thread(1)",
      "assembly": [
        {
          "assembly": "Push ?PC(24)",
          "explain": "push constant ?PC(24)"
        }
      ]
    },
    {
      "initialPc": 81,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "23",
      "sourceCode": "spawn thread(1)",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 82,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "23",
      "sourceCode": "spawn thread(1)",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 83,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "23",
      "sourceCode": "spawn thread(1)",
      "assembly": [
        {
          "assembly": "Push {:}",
          "explain": "push constant {:}"
        }
      ]
    },
    {
      "initialPc": 84,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
      "line": "23",
      "sourceCode": "spawn thread(1)",
      "assembly": [
        {
          "assembly": "Spawn",
          "explain": "pop thread-local state, argument, and pc and spawn a new thread"
        }
      ]
    },
    {
      "initialPc": 85,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
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
      "initialPc": 86,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpw5t3tczz/csonebit.hny",
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