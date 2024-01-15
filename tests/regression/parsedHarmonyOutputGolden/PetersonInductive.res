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
      "duration": 10,
      "sharedValues": {
        "at_gate": 0
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
      "duration": 6,
      "sharedValues": {
        "at_gate": 0,
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
        "at_gate": 0,
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
              "pc": "19",
              "callType": "process",
              "vars": {}
            }
          ],
          "tid": "0",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 0,
          "chosen": 0
        }
      },
      "tid": "0",
      "name": "__init__()",
      "macroStepIdx": 0
    },
    {
      "duration": 12,
      "sharedValues": {
        "at_gate": 0,
        "flags": [
          false,
          false
        ],
        "turn": 0
      },
      "idToStackTrace": {
        "0": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "__init__()",
              "pc": "19",
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
        "at_gate": 0,
        "flags": [
          false,
          false
        ],
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
              "pc": "102"
            }
          ]
        }
      },
      "tid": "0",
      "name": "__init__()",
      "macroStepIdx": 1
    },
    {
      "duration": 6,
      "sharedValues": {
        "at_gate": 0,
        "flags": [
          false,
          false
        ],
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
              "pc": "102"
            }
          ]
        },
        "2": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "thread(1)",
              "pc": "22",
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
      "macroStepIdx": 2
    },
    {
      "duration": 6,
      "sharedValues": {
        "at_gate": 0,
        "flags": [
          false,
          false
        ],
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
              "pc": "102"
            }
          ]
        },
        "2": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "thread(1)",
              "pc": "28",
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
      "macroStepIdx": 3
    },
    {
      "duration": 1,
      "sharedValues": {
        "at_gate": 0,
        "flags": [
          false,
          true
        ],
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
              "pc": "102"
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
              "method": "thread(1)",
              "vars": {
                "self": 1
              },
              "pc": "34"
            }
          ]
        }
      },
      "tid": "2",
      "name": "thread(1)",
      "macroStepIdx": 4
    },
    {
      "duration": 4,
      "sharedValues": {
        "at_gate": 0,
        "flags": [
          false,
          true
        ],
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
              "pc": "102"
            }
          ]
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
              "pc": "35",
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
        "at_gate": 1,
        "flags": [
          false,
          true
        ],
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
              "pc": "102"
            }
          ]
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
              "pc": "35",
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
        "at_gate": 1,
        "flags": [
          false,
          true
        ],
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
              "pc": "102"
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
              "method": "thread(1)",
              "vars": {
                "self": 1
              },
              "pc": "40"
            }
          ]
        }
      },
      "tid": "2",
      "name": "thread(1)",
      "macroStepIdx": 5
    },
    {
      "duration": 4,
      "sharedValues": {
        "at_gate": 1,
        "flags": [
          false,
          true
        ],
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
              "pc": "102"
            }
          ]
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
              "pc": "41",
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
        "at_gate": 0,
        "flags": [
          false,
          true
        ],
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
              "pc": "102"
            }
          ]
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
              "pc": "41",
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
      "duration": 6,
      "sharedValues": {
        "at_gate": 0,
        "flags": [
          false,
          true
        ],
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
              "pc": "102"
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
              "method": "thread(1)",
              "pc": "41",
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
      "macroStepIdx": 6
    },
    {
      "duration": 6,
      "sharedValues": {
        "at_gate": 0,
        "flags": [
          false,
          true
        ],
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
              "pc": "102"
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
              "method": "thread(1)",
              "pc": "52",
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
      "macroStepIdx": 7
    },
    {
      "duration": 6,
      "sharedValues": {
        "at_gate": 0,
        "flags": [
          false,
          true
        ],
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
              "pc": "102"
            }
          ]
        },
        "1": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "thread(0)",
              "pc": "22",
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
          "fullStatus": "runnable",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "runnable",
          "mode": "runnable",
          "tid": "2",
          "callStack": [
            {
              "method": "thread(1)",
              "pc": "52",
              "callType": "process",
              "vars": {
                "self": 1
              }
            }
          ]
        }
      },
      "tid": "1",
      "name": "thread(0)",
      "macroStepIdx": 8
    },
    {
      "duration": 6,
      "sharedValues": {
        "at_gate": 0,
        "flags": [
          false,
          true
        ],
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
              "pc": "102"
            }
          ]
        },
        "1": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "thread(0)",
              "pc": "28",
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
          "atomic": 0,
          "fullStatus": "runnable",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "runnable",
          "mode": "runnable",
          "tid": "2",
          "callStack": [
            {
              "method": "thread(1)",
              "pc": "52",
              "callType": "process",
              "vars": {
                "self": 1
              }
            }
          ]
        }
      },
      "tid": "1",
      "name": "thread(0)",
      "macroStepIdx": 9
    },
    {
      "duration": 1,
      "sharedValues": {
        "at_gate": 0,
        "flags": [
          true,
          true
        ],
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
              "pc": "102"
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
              "method": "thread(0)",
              "vars": {
                "self": 0
              },
              "pc": "34"
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
              "method": "thread(1)",
              "pc": "52",
              "callType": "process",
              "vars": {
                "self": 1
              }
            }
          ]
        }
      },
      "tid": "1",
      "name": "thread(0)",
      "macroStepIdx": 10
    },
    {
      "duration": 1,
      "sharedValues": {
        "at_gate": 0,
        "flags": [
          true,
          true
        ],
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
              "pc": "102"
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
              "method": "thread(0)",
              "vars": {
                "self": 0
              },
              "pc": "34"
            }
          ]
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
              "pc": "63",
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
      "duration": 17,
      "sharedValues": {
        "at_gate": 0,
        "flags": [
          true,
          true
        ],
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
              "pc": "102"
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
              "method": "thread(0)",
              "vars": {
                "self": 0
              },
              "pc": "34"
            }
          ]
        },
        "2": {
          "atomic": 1,
          "fullStatus": "running atomic read-only",
          "interruptLevel": 0,
          "readonly": 1,
          "status": "running",
          "tid": "2",
          "callStack": [
            {
              "method": "thread(1)",
              "pc": "63",
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
        "at_gate": 0,
        "flags": [
          true,
          true
        ],
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
              "pc": "102"
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
              "method": "thread(0)",
              "vars": {
                "self": 0
              },
              "pc": "34"
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
              "method": "thread(1)",
              "vars": {
                "self": 1
              },
              "pc": "81"
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
      "sliceIdx": 1,
      "time": 9,
      "pc": 9,
      "npc": 10
    },
    {
      "sliceIdx": 1,
      "time": 10,
      "pc": 10,
      "npc": 11
    },
    {
      "sliceIdx": 1,
      "time": 11,
      "pc": 11,
      "npc": 12
    },
    {
      "sliceIdx": 2,
      "time": 12,
      "pc": 12,
      "npc": 13
    },
    {
      "sliceIdx": 2,
      "time": 13,
      "pc": 13,
      "npc": 14
    },
    {
      "sliceIdx": 2,
      "time": 14,
      "pc": 14,
      "npc": 15
    },
    {
      "sliceIdx": 2,
      "time": 15,
      "pc": 15,
      "npc": 16
    },
    {
      "sliceIdx": 2,
      "time": 16,
      "pc": 16,
      "npc": 17
    },
    {
      "sliceIdx": 2,
      "time": 17,
      "pc": 17,
      "npc": 18
    },
    {
      "pc": 18,
      "npc": 19,
      "sliceIdx": 3,
      "time": 18
    },
    {
      "sliceIdx": 4,
      "time": 19,
      "pc": 19,
      "npc": 20
    },
    {
      "sliceIdx": 4,
      "time": 20,
      "pc": 20,
      "npc": 92
    },
    {
      "sliceIdx": 4,
      "time": 21,
      "pc": 92,
      "npc": 93
    },
    {
      "sliceIdx": 4,
      "time": 22,
      "pc": 93,
      "npc": 94
    },
    {
      "sliceIdx": 4,
      "time": 23,
      "pc": 94,
      "npc": 95
    },
    {
      "sliceIdx": 4,
      "time": 24,
      "pc": 95,
      "npc": 96
    },
    {
      "sliceIdx": 4,
      "time": 25,
      "pc": 96,
      "npc": 97
    },
    {
      "sliceIdx": 4,
      "time": 26,
      "pc": 97,
      "npc": 98
    },
    {
      "sliceIdx": 4,
      "time": 27,
      "pc": 98,
      "npc": 99
    },
    {
      "sliceIdx": 4,
      "time": 28,
      "pc": 99,
      "npc": 100
    },
    {
      "sliceIdx": 4,
      "time": 29,
      "pc": 100,
      "npc": 101
    },
    {
      "sliceIdx": 4,
      "time": 30,
      "pc": 101,
      "npc": 102
    },
    {
      "sliceIdx": 5,
      "time": 31,
      "pc": 102,
      "npc": 102
    },
    {
      "pc": 21,
      "npc": 22,
      "sliceIdx": 6,
      "time": 32
    },
    {
      "sliceIdx": 6,
      "time": 33,
      "pc": 22,
      "npc": 23
    },
    {
      "sliceIdx": 6,
      "time": 34,
      "pc": 23,
      "npc": 24
    },
    {
      "sliceIdx": 6,
      "time": 35,
      "pc": 24,
      "npc": 25
    },
    {
      "sliceIdx": 6,
      "time": 36,
      "pc": 25,
      "npc": 26
    },
    {
      "sliceIdx": 6,
      "time": 37,
      "pc": 26,
      "npc": 27
    },
    {
      "pc": 27,
      "npc": 28,
      "sliceIdx": 7,
      "time": 38
    },
    {
      "sliceIdx": 7,
      "time": 39,
      "pc": 28,
      "npc": 29
    },
    {
      "sliceIdx": 7,
      "time": 40,
      "pc": 29,
      "npc": 30
    },
    {
      "sliceIdx": 7,
      "time": 41,
      "pc": 30,
      "npc": 31
    },
    {
      "sliceIdx": 7,
      "time": 42,
      "pc": 31,
      "npc": 32
    },
    {
      "sliceIdx": 7,
      "time": 43,
      "pc": 32,
      "npc": 33
    },
    {
      "pc": 33,
      "npc": 34,
      "sliceIdx": 8,
      "time": 44
    },
    {
      "pc": 34,
      "npc": 35,
      "sliceIdx": 9,
      "time": 45
    },
    {
      "sliceIdx": 9,
      "time": 46,
      "pc": 35,
      "npc": 36
    },
    {
      "sliceIdx": 9,
      "time": 47,
      "pc": 36,
      "npc": 37
    },
    {
      "sliceIdx": 9,
      "time": 48,
      "pc": 37,
      "npc": 38
    },
    {
      "sliceIdx": 10,
      "time": 49,
      "pc": 38,
      "npc": 39
    },
    {
      "sliceIdx": 11,
      "time": 50,
      "pc": 39,
      "npc": 40
    },
    {
      "pc": 40,
      "npc": 41,
      "sliceIdx": 12,
      "time": 51
    },
    {
      "sliceIdx": 12,
      "time": 52,
      "pc": 41,
      "npc": 42
    },
    {
      "sliceIdx": 12,
      "time": 53,
      "pc": 42,
      "npc": 43
    },
    {
      "sliceIdx": 12,
      "time": 54,
      "pc": 43,
      "npc": 44
    },
    {
      "sliceIdx": 13,
      "time": 55,
      "pc": 44,
      "npc": 45
    },
    {
      "sliceIdx": 14,
      "time": 56,
      "pc": 45,
      "npc": 46
    },
    {
      "sliceIdx": 14,
      "time": 57,
      "pc": 46,
      "npc": 47
    },
    {
      "sliceIdx": 14,
      "time": 58,
      "pc": 47,
      "npc": 48
    },
    {
      "sliceIdx": 14,
      "time": 59,
      "pc": 48,
      "npc": 49
    },
    {
      "sliceIdx": 14,
      "time": 60,
      "pc": 49,
      "npc": 50
    },
    {
      "sliceIdx": 14,
      "time": 61,
      "pc": 50,
      "npc": 51
    },
    {
      "pc": 51,
      "npc": 52,
      "sliceIdx": 15,
      "time": 62
    },
    {
      "sliceIdx": 15,
      "time": 63,
      "pc": 52,
      "npc": 53
    },
    {
      "sliceIdx": 15,
      "time": 64,
      "pc": 53,
      "npc": 58
    },
    {
      "sliceIdx": 15,
      "time": 65,
      "pc": 58,
      "npc": 59
    },
    {
      "sliceIdx": 15,
      "time": 66,
      "pc": 59,
      "npc": 60
    },
    {
      "sliceIdx": 15,
      "time": 67,
      "pc": 60,
      "npc": 62
    },
    {
      "pc": 21,
      "npc": 22,
      "sliceIdx": 16,
      "time": 68
    },
    {
      "sliceIdx": 16,
      "time": 69,
      "pc": 22,
      "npc": 23
    },
    {
      "sliceIdx": 16,
      "time": 70,
      "pc": 23,
      "npc": 24
    },
    {
      "sliceIdx": 16,
      "time": 71,
      "pc": 24,
      "npc": 25
    },
    {
      "sliceIdx": 16,
      "time": 72,
      "pc": 25,
      "npc": 26
    },
    {
      "sliceIdx": 16,
      "time": 73,
      "pc": 26,
      "npc": 27
    },
    {
      "pc": 27,
      "npc": 28,
      "sliceIdx": 17,
      "time": 74
    },
    {
      "sliceIdx": 17,
      "time": 75,
      "pc": 28,
      "npc": 29
    },
    {
      "sliceIdx": 17,
      "time": 76,
      "pc": 29,
      "npc": 30
    },
    {
      "sliceIdx": 17,
      "time": 77,
      "pc": 30,
      "npc": 31
    },
    {
      "sliceIdx": 17,
      "time": 78,
      "pc": 31,
      "npc": 32
    },
    {
      "sliceIdx": 17,
      "time": 79,
      "pc": 32,
      "npc": 33
    },
    {
      "pc": 33,
      "npc": 34,
      "sliceIdx": 18,
      "time": 80
    },
    {
      "pc": 62,
      "npc": 63,
      "sliceIdx": 19,
      "time": 81
    },
    {
      "sliceIdx": 20,
      "time": 82,
      "pc": 63,
      "npc": 64
    },
    {
      "sliceIdx": 20,
      "time": 83,
      "pc": 64,
      "npc": 65
    },
    {
      "sliceIdx": 20,
      "time": 84,
      "pc": 65,
      "npc": 66
    },
    {
      "sliceIdx": 20,
      "time": 85,
      "pc": 66,
      "npc": 67
    },
    {
      "sliceIdx": 20,
      "time": 86,
      "pc": 67,
      "npc": 68
    },
    {
      "sliceIdx": 20,
      "time": 87,
      "pc": 68,
      "npc": 69
    },
    {
      "sliceIdx": 20,
      "time": 88,
      "pc": 69,
      "npc": 70
    },
    {
      "sliceIdx": 20,
      "time": 89,
      "pc": 70,
      "npc": 71
    },
    {
      "sliceIdx": 20,
      "time": 90,
      "pc": 71,
      "npc": 72
    },
    {
      "sliceIdx": 20,
      "time": 91,
      "pc": 72,
      "npc": 73
    },
    {
      "sliceIdx": 20,
      "time": 92,
      "pc": 73,
      "npc": 74
    },
    {
      "sliceIdx": 20,
      "time": 93,
      "pc": 74,
      "npc": 75
    },
    {
      "sliceIdx": 20,
      "time": 94,
      "pc": 75,
      "npc": 76
    },
    {
      "sliceIdx": 20,
      "time": 95,
      "pc": 76,
      "npc": 77
    },
    {
      "sliceIdx": 20,
      "time": 96,
      "pc": 77,
      "npc": 78
    },
    {
      "sliceIdx": 20,
      "time": 97,
      "pc": 78,
      "npc": 79
    },
    {
      "sliceIdx": 20,
      "time": 98,
      "pc": 79,
      "npc": 81
    },
    {
      "sliceIdx": 21,
      "time": 99,
      "pc": 81,
      "npc": 81
    }
  ],
  "macroSteps": [
    {
      "tid": "0",
      "name": "__init__()",
      "duration": 18,
      "startSliceIdx": 0,
      "lastSliceIdx": 3
    },
    {
      "tid": "0",
      "name": "__init__()",
      "duration": 14,
      "startSliceIdx": 3,
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
      "tid": "2",
      "name": "thread(1)",
      "duration": 6,
      "startSliceIdx": 7,
      "lastSliceIdx": 8
    },
    {
      "tid": "2",
      "name": "thread(1)",
      "duration": 1,
      "startSliceIdx": 8,
      "lastSliceIdx": 9
    },
    {
      "tid": "2",
      "name": "thread(1)",
      "duration": 6,
      "startSliceIdx": 9,
      "lastSliceIdx": 12
    },
    {
      "tid": "2",
      "name": "thread(1)",
      "duration": 11,
      "startSliceIdx": 12,
      "lastSliceIdx": 15
    },
    {
      "tid": "2",
      "name": "thread(1)",
      "duration": 6,
      "startSliceIdx": 15,
      "lastSliceIdx": 16
    },
    {
      "tid": "1",
      "name": "thread(0)",
      "duration": 6,
      "startSliceIdx": 16,
      "lastSliceIdx": 17
    },
    {
      "tid": "1",
      "name": "thread(0)",
      "duration": 6,
      "startSliceIdx": 17,
      "lastSliceIdx": 18
    },
    {
      "tid": "1",
      "name": "thread(0)",
      "duration": 1,
      "startSliceIdx": 18,
      "lastSliceIdx": 19
    },
    {
      "tid": "2",
      "name": "thread(1)",
      "duration": 19,
      "startSliceIdx": 19,
      "lastSliceIdx": 22
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "1",
      "sourceCode": "at_gate = 0",
      "assembly": [
        {
          "assembly": "Frame __init__()",
          "explain": "start of method __init__"
        }
      ]
    },
    {
      "initialPc": 1,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "1",
      "sourceCode": "at_gate = 0",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 2,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "1",
      "sourceCode": "at_gate = 0",
      "assembly": [
        {
          "assembly": "Store at_gate",
          "explain": "pop a value and store it in shared variable at_gate"
        }
      ]
    },
    {
      "initialPc": 3,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "3",
      "sourceCode": "sequential flags, turn",
      "assembly": [
        {
          "assembly": "Push ?flags",
          "explain": "push constant ?flags"
        }
      ]
    },
    {
      "initialPc": 4,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "3",
      "sourceCode": "sequential flags, turn",
      "assembly": [
        {
          "assembly": "Sequential",
          "explain": "sequential consistency for variable on top of stack"
        }
      ]
    },
    {
      "initialPc": 5,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "3",
      "sourceCode": "sequential flags, turn",
      "assembly": [
        {
          "assembly": "Push ?turn",
          "explain": "push constant ?turn"
        }
      ]
    },
    {
      "initialPc": 6,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "3",
      "sourceCode": "sequential flags, turn",
      "assembly": [
        {
          "assembly": "Sequential",
          "explain": "sequential consistency for variable on top of stack"
        }
      ]
    },
    {
      "initialPc": 7,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "4",
      "sourceCode": "flags = [ False, False ]",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "building a tuple: push constant ()"
        }
      ]
    },
    {
      "initialPc": 8,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "4",
      "sourceCode": "flags = [ False, False ]",
      "assembly": [
        {
          "assembly": "Push False",
          "explain": "push constant False"
        }
      ]
    },
    {
      "initialPc": 9,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "4",
      "sourceCode": "flags = [ False, False ]",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 10,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "4",
      "sourceCode": "flags = [ False, False ]",
      "assembly": [
        {
          "assembly": "Push False",
          "explain": "push constant False"
        }
      ]
    },
    {
      "initialPc": 11,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "4",
      "sourceCode": "flags = [ False, False ]",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 12,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "4",
      "sourceCode": "flags = [ False, False ]",
      "assembly": [
        {
          "assembly": "Store flags",
          "explain": "pop a value and store it in shared variable flags"
        }
      ]
    },
    {
      "initialPc": 13,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "5",
      "sourceCode": "turn = choose({0, 1})",
      "assembly": [
        {
          "assembly": "Push {}",
          "explain": "push constant {}"
        }
      ]
    },
    {
      "initialPc": 14,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "5",
      "sourceCode": "turn = choose({0, 1})",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 15,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "5",
      "sourceCode": "turn = choose({0, 1})",
      "assembly": [
        {
          "assembly": "2-ary SetAdd",
          "explain": "pop 2 values and push the result of applying SetAdd"
        }
      ]
    },
    {
      "initialPc": 16,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "5",
      "sourceCode": "turn = choose({0, 1})",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 17,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "5",
      "sourceCode": "turn = choose({0, 1})",
      "assembly": [
        {
          "assembly": "2-ary SetAdd",
          "explain": "pop 2 values and push the result of applying SetAdd"
        }
      ]
    },
    {
      "initialPc": 18,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "5",
      "sourceCode": "turn = choose({0, 1})",
      "assembly": [
        {
          "assembly": "Choose",
          "explain": "pop a set value and push one of its elements"
        }
      ]
    },
    {
      "initialPc": 19,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "5",
      "sourceCode": "turn = choose({0, 1})",
      "assembly": [
        {
          "assembly": "Store turn",
          "explain": "pop a value and store it in shared variable turn"
        }
      ]
    },
    {
      "initialPc": 20,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "7",
      "sourceCode": "def thread(self):",
      "assembly": [
        {
          "assembly": "Jump 92",
          "explain": "jump over method definition: set program counter to 92"
        }
      ]
    },
    {
      "initialPc": 21,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
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
      "initialPc": 22,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
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
      "initialPc": 23,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
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
      "initialPc": 24,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
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
      "initialPc": 25,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
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
      "initialPc": 26,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
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
      "initialPc": 27,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
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
      "initialPc": 28,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "8",
      "sourceCode": "    while choose({ False, True }):",
      "assembly": [
        {
          "assembly": "JumpCond False 90",
          "explain": "pop a value and jump to 90 if the value is False"
        }
      ]
    },
    {
      "initialPc": 29,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
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
      "initialPc": 30,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
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
      "initialPc": 31,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
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
      "initialPc": 32,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
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
      "initialPc": 33,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
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
      "initialPc": 34,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "11",
      "sourceCode": "        atomically at_gate += 1",
      "assembly": [
        {
          "assembly": "AtomicInc(eager)",
          "explain": "increment atomic counter of context; thread runs uninterrupted if larger than 0"
        }
      ]
    },
    {
      "initialPc": 35,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "11",
      "sourceCode": "        atomically at_gate += 1",
      "assembly": [
        {
          "assembly": "Load at_gate",
          "explain": "push value of shared variable at_gate"
        }
      ]
    },
    {
      "initialPc": 36,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "11",
      "sourceCode": "        atomically at_gate += 1",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 37,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "11",
      "sourceCode": "        atomically at_gate += 1",
      "assembly": [
        {
          "assembly": "2-ary +",
          "explain": "pop 2 values and push the result of applying +"
        }
      ]
    },
    {
      "initialPc": 38,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "11",
      "sourceCode": "        atomically at_gate += 1",
      "assembly": [
        {
          "assembly": "Store at_gate",
          "explain": "pop a value and store it in shared variable at_gate"
        }
      ]
    },
    {
      "initialPc": 39,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "11",
      "sourceCode": "        atomically at_gate += 1",
      "assembly": [
        {
          "assembly": "AtomicDec",
          "explain": "decrement atomic counter of context"
        }
      ]
    },
    {
      "initialPc": 40,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "12",
      "sourceCode": "        atomically at_gate -= 1",
      "assembly": [
        {
          "assembly": "AtomicInc(eager)",
          "explain": "increment atomic counter of context; thread runs uninterrupted if larger than 0"
        }
      ]
    },
    {
      "initialPc": 41,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "12",
      "sourceCode": "        atomically at_gate -= 1",
      "assembly": [
        {
          "assembly": "Load at_gate",
          "explain": "push value of shared variable at_gate"
        }
      ]
    },
    {
      "initialPc": 42,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "12",
      "sourceCode": "        atomically at_gate -= 1",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 43,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "12",
      "sourceCode": "        atomically at_gate -= 1",
      "assembly": [
        {
          "assembly": "2-ary -",
          "explain": "pop 2 values and push the result of applying -"
        }
      ]
    },
    {
      "initialPc": 44,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "12",
      "sourceCode": "        atomically at_gate -= 1",
      "assembly": [
        {
          "assembly": "Store at_gate",
          "explain": "pop a value and store it in shared variable at_gate"
        }
      ]
    },
    {
      "initialPc": 45,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "12",
      "sourceCode": "        atomically at_gate -= 1",
      "assembly": [
        {
          "assembly": "AtomicDec",
          "explain": "decrement atomic counter of context"
        }
      ]
    },
    {
      "initialPc": 46,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "13",
      "sourceCode": "        await (not flags[1 - self]) or (turn == self)",
      "assembly": [
        {
          "assembly": "Push ?flags",
          "explain": "push constant ?flags"
        }
      ]
    },
    {
      "initialPc": 47,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "13",
      "sourceCode": "        await (not flags[1 - self]) or (turn == self)",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 48,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "13",
      "sourceCode": "        await (not flags[1 - self]) or (turn == self)",
      "assembly": [
        {
          "assembly": "LoadVar self",
          "explain": "push the value of self"
        }
      ]
    },
    {
      "initialPc": 49,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "13",
      "sourceCode": "        await (not flags[1 - self]) or (turn == self)",
      "assembly": [
        {
          "assembly": "2-ary -",
          "explain": "pop 2 values and push the result of applying -"
        }
      ]
    },
    {
      "initialPc": 50,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "13",
      "sourceCode": "        await (not flags[1 - self]) or (turn == self)",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 51,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "13",
      "sourceCode": "        await (not flags[1 - self]) or (turn == self)",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 52,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "13",
      "sourceCode": "        await (not flags[1 - self]) or (turn == self)",
      "assembly": [
        {
          "assembly": "1-ary not",
          "explain": "pop 1 value and push the result of applying not"
        }
      ]
    },
    {
      "initialPc": 53,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "13",
      "sourceCode": "        await (not flags[1 - self]) or (turn == self)",
      "assembly": [
        {
          "assembly": "JumpCond True 58",
          "explain": "pop a value and jump to 58 if the value is True"
        }
      ]
    },
    {
      "initialPc": 54,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "13",
      "sourceCode": "        await (not flags[1 - self]) or (turn == self)",
      "assembly": [
        {
          "assembly": "Load turn",
          "explain": "push value of shared variable turn"
        }
      ]
    },
    {
      "initialPc": 55,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "13",
      "sourceCode": "        await (not flags[1 - self]) or (turn == self)",
      "assembly": [
        {
          "assembly": "LoadVar self",
          "explain": "push the value of self"
        }
      ]
    },
    {
      "initialPc": 56,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "13",
      "sourceCode": "        await (not flags[1 - self]) or (turn == self)",
      "assembly": [
        {
          "assembly": "2-ary ==",
          "explain": "pop 2 values and push the result of applying =="
        }
      ]
    },
    {
      "initialPc": 57,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "13",
      "sourceCode": "        await (not flags[1 - self]) or (turn == self)",
      "assembly": [
        {
          "assembly": "Jump 59",
          "explain": "set program counter to 59"
        }
      ]
    },
    {
      "initialPc": 58,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "13",
      "sourceCode": "        await (not flags[1 - self]) or (turn == self)",
      "assembly": [
        {
          "assembly": "Push True",
          "explain": "push constant True"
        }
      ]
    },
    {
      "initialPc": 59,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "13",
      "sourceCode": "        await (not flags[1 - self]) or (turn == self)",
      "assembly": [
        {
          "assembly": "JumpCond False 46",
          "explain": "pop a value and jump to 46 if the value is False"
        }
      ]
    },
    {
      "initialPc": 60,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "13",
      "sourceCode": "        await (not flags[1 - self]) or (turn == self)",
      "assembly": [
        {
          "assembly": "Jump 62",
          "explain": "set program counter to 62"
        }
      ]
    },
    {
      "initialPc": 61,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "13",
      "sourceCode": "        await (not flags[1 - self]) or (turn == self)",
      "assembly": [
        {
          "assembly": "Jump 46",
          "explain": "set program counter to 46"
        }
      ]
    },
    {
      "initialPc": 62,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "16",
      "sourceCode": "        assert (not flags[1 - self]) or (turn == self) or (at_gate == 1)",
      "assembly": [
        {
          "assembly": "AtomicInc(lazy)",
          "explain": "increment atomic counter of context; thread runs uninterrupted if larger than 0"
        }
      ]
    },
    {
      "initialPc": 63,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "16",
      "sourceCode": "        assert (not flags[1 - self]) or (turn == self) or (at_gate == 1)",
      "assembly": [
        {
          "assembly": "ReadonlyInc",
          "explain": "increment readonly counter of context; thread cannot mutate shared variables if > 0"
        }
      ]
    },
    {
      "initialPc": 64,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "16",
      "sourceCode": "        assert (not flags[1 - self]) or (turn == self) or (at_gate == 1)",
      "assembly": [
        {
          "assembly": "Push ?flags",
          "explain": "push constant ?flags"
        }
      ]
    },
    {
      "initialPc": 65,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "16",
      "sourceCode": "        assert (not flags[1 - self]) or (turn == self) or (at_gate == 1)",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 66,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "16",
      "sourceCode": "        assert (not flags[1 - self]) or (turn == self) or (at_gate == 1)",
      "assembly": [
        {
          "assembly": "LoadVar self",
          "explain": "push the value of self"
        }
      ]
    },
    {
      "initialPc": 67,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "16",
      "sourceCode": "        assert (not flags[1 - self]) or (turn == self) or (at_gate == 1)",
      "assembly": [
        {
          "assembly": "2-ary -",
          "explain": "pop 2 values and push the result of applying -"
        }
      ]
    },
    {
      "initialPc": 68,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "16",
      "sourceCode": "        assert (not flags[1 - self]) or (turn == self) or (at_gate == 1)",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 69,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "16",
      "sourceCode": "        assert (not flags[1 - self]) or (turn == self) or (at_gate == 1)",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 70,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "16",
      "sourceCode": "        assert (not flags[1 - self]) or (turn == self) or (at_gate == 1)",
      "assembly": [
        {
          "assembly": "1-ary not",
          "explain": "pop 1 value and push the result of applying not"
        }
      ]
    },
    {
      "initialPc": 71,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "16",
      "sourceCode": "        assert (not flags[1 - self]) or (turn == self) or (at_gate == 1)",
      "assembly": [
        {
          "assembly": "JumpCond True 80",
          "explain": "pop a value and jump to 80 if the value is True"
        }
      ]
    },
    {
      "initialPc": 72,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "16",
      "sourceCode": "        assert (not flags[1 - self]) or (turn == self) or (at_gate == 1)",
      "assembly": [
        {
          "assembly": "Load turn",
          "explain": "push value of shared variable turn"
        }
      ]
    },
    {
      "initialPc": 73,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "16",
      "sourceCode": "        assert (not flags[1 - self]) or (turn == self) or (at_gate == 1)",
      "assembly": [
        {
          "assembly": "LoadVar self",
          "explain": "push the value of self"
        }
      ]
    },
    {
      "initialPc": 74,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "16",
      "sourceCode": "        assert (not flags[1 - self]) or (turn == self) or (at_gate == 1)",
      "assembly": [
        {
          "assembly": "2-ary ==",
          "explain": "pop 2 values and push the result of applying =="
        }
      ]
    },
    {
      "initialPc": 75,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "16",
      "sourceCode": "        assert (not flags[1 - self]) or (turn == self) or (at_gate == 1)",
      "assembly": [
        {
          "assembly": "JumpCond True 80",
          "explain": "pop a value and jump to 80 if the value is True"
        }
      ]
    },
    {
      "initialPc": 76,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "16",
      "sourceCode": "        assert (not flags[1 - self]) or (turn == self) or (at_gate == 1)",
      "assembly": [
        {
          "assembly": "Load at_gate",
          "explain": "push value of shared variable at_gate"
        }
      ]
    },
    {
      "initialPc": 77,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "16",
      "sourceCode": "        assert (not flags[1 - self]) or (turn == self) or (at_gate == 1)",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 78,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "16",
      "sourceCode": "        assert (not flags[1 - self]) or (turn == self) or (at_gate == 1)",
      "assembly": [
        {
          "assembly": "2-ary ==",
          "explain": "pop 2 values and push the result of applying =="
        }
      ]
    },
    {
      "initialPc": 79,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "16",
      "sourceCode": "        assert (not flags[1 - self]) or (turn == self) or (at_gate == 1)",
      "assembly": [
        {
          "assembly": "Jump 81",
          "explain": "set program counter to 81"
        }
      ]
    },
    {
      "initialPc": 80,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "16",
      "sourceCode": "        assert (not flags[1 - self]) or (turn == self) or (at_gate == 1)",
      "assembly": [
        {
          "assembly": "Push True",
          "explain": "push constant True"
        }
      ]
    },
    {
      "initialPc": 81,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "16",
      "sourceCode": "        assert (not flags[1 - self]) or (turn == self) or (at_gate == 1)",
      "assembly": [
        {
          "assembly": "Assert",
          "explain": "pop a condition and raise exception if condition is false"
        }
      ]
    },
    {
      "initialPc": 82,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "16",
      "sourceCode": "        assert (not flags[1 - self]) or (turn == self) or (at_gate == 1)",
      "assembly": [
        {
          "assembly": "ReadonlyDec",
          "explain": "decrement readonly counter of context"
        }
      ]
    },
    {
      "initialPc": 83,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "16",
      "sourceCode": "        assert (not flags[1 - self]) or (turn == self) or (at_gate == 1)",
      "assembly": [
        {
          "assembly": "AtomicDec",
          "explain": "decrement atomic counter of context"
        }
      ]
    },
    {
      "initialPc": 84,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "19",
      "sourceCode": "        flags[self] = False",
      "assembly": [
        {
          "assembly": "Push ?flags",
          "explain": "push constant ?flags"
        }
      ]
    },
    {
      "initialPc": 85,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "19",
      "sourceCode": "        flags[self] = False",
      "assembly": [
        {
          "assembly": "LoadVar self",
          "explain": "push the value of self"
        }
      ]
    },
    {
      "initialPc": 86,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "19",
      "sourceCode": "        flags[self] = False",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 87,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "19",
      "sourceCode": "        flags[self] = False",
      "assembly": [
        {
          "assembly": "Push False",
          "explain": "push constant False"
        }
      ]
    },
    {
      "initialPc": 88,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "19",
      "sourceCode": "        flags[self] = False",
      "assembly": [
        {
          "assembly": "Store",
          "explain": "pop a value and an address and store the value at the address"
        }
      ]
    },
    {
      "initialPc": 89,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "8",
      "sourceCode": "    while choose({ False, True }):",
      "assembly": [
        {
          "assembly": "Jump 22",
          "explain": "set program counter to 22"
        }
      ]
    },
    {
      "initialPc": 90,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
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
      "initialPc": 91,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
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
      "initialPc": 92,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "21",
      "sourceCode": "spawn thread(0)",
      "assembly": [
        {
          "assembly": "Push ?PC(21)",
          "explain": "push constant ?PC(21)"
        }
      ]
    },
    {
      "initialPc": 93,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "21",
      "sourceCode": "spawn thread(0)",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 94,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "21",
      "sourceCode": "spawn thread(0)",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 95,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "21",
      "sourceCode": "spawn thread(0)",
      "assembly": [
        {
          "assembly": "Push {:}",
          "explain": "push constant {:}"
        }
      ]
    },
    {
      "initialPc": 96,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "21",
      "sourceCode": "spawn thread(0)",
      "assembly": [
        {
          "assembly": "Spawn",
          "explain": "pop thread-local state, argument, and pc and spawn a new thread"
        }
      ]
    },
    {
      "initialPc": 97,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "22",
      "sourceCode": "spawn thread(1)",
      "assembly": [
        {
          "assembly": "Push ?PC(21)",
          "explain": "push constant ?PC(21)"
        }
      ]
    },
    {
      "initialPc": 98,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "22",
      "sourceCode": "spawn thread(1)",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 99,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "22",
      "sourceCode": "spawn thread(1)",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 100,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "22",
      "sourceCode": "spawn thread(1)",
      "assembly": [
        {
          "assembly": "Push {:}",
          "explain": "push constant {:}"
        }
      ]
    },
    {
      "initialPc": 101,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "22",
      "sourceCode": "spawn thread(1)",
      "assembly": [
        {
          "assembly": "Spawn",
          "explain": "pop thread-local state, argument, and pc and spawn a new thread"
        }
      ]
    },
    {
      "initialPc": 102,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "1",
      "sourceCode": "at_gate = 0",
      "assembly": [
        {
          "assembly": "ReturnOp(result. None)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 103,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonInductive.hny",
      "line": "1",
      "sourceCode": "at_gate = 0",
      "assembly": [
        {
          "assembly": "DelVar result",
          "explain": "delete method variable result"
        }
      ]
    }
  ]
}