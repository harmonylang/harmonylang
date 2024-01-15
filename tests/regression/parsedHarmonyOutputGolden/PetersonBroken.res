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
      "duration": 12,
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
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "__init__()",
              "pc": "31",
              "callType": "process",
              "vars": {}
            }
          ],
          "tid": "0",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 0,
          "chosen": 1
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
        ],
        "turn": 1
      },
      "idToStackTrace": {
        "0": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "__init__()",
              "pc": "31",
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
        ],
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
              "pc": "96"
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
        "in_cs": 0,
        "flags": [
          false,
          false
        ],
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
              "pc": "96"
            }
          ]
        },
        "2": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "thread(1)",
              "pc": "34",
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
      "duration": 5,
      "sharedValues": {
        "in_cs": 0,
        "flags": [
          false,
          false
        ],
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
              "pc": "96"
            }
          ]
        },
        "2": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "thread(1)",
              "pc": "40",
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
      "duration": 5,
      "sharedValues": {
        "in_cs": 0,
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
              "pc": "96"
            }
          ]
        },
        "2": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "thread(1)",
              "pc": "45",
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
      "duration": 6,
      "sharedValues": {
        "in_cs": 0,
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
              "pc": "96"
            }
          ]
        },
        "1": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "thread(0)",
              "pc": "34",
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
              "pc": "45",
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
      "duration": 5,
      "sharedValues": {
        "in_cs": 0,
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
              "pc": "96"
            }
          ]
        },
        "1": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "thread(0)",
              "pc": "40",
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
              "pc": "45",
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
      "duration": 5,
      "sharedValues": {
        "in_cs": 0,
        "flags": [
          false,
          false
        ],
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
              "pc": "96"
            }
          ]
        },
        "1": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "thread(0)",
              "pc": "45",
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
              "pc": "45",
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
      "duration": 6,
      "sharedValues": {
        "in_cs": 0,
        "flags": [
          true,
          false
        ],
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
              "pc": "96"
            }
          ]
        },
        "1": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "thread(0)",
              "pc": "50",
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
              "pc": "45",
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
      "duration": 6,
      "sharedValues": {
        "in_cs": 0,
        "flags": [
          true,
          false
        ],
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
              "pc": "96"
            }
          ]
        },
        "1": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "thread(0)",
              "pc": "56",
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
              "pc": "45",
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
      "macroStepIdx": 9
    },
    {
      "duration": 4,
      "sharedValues": {
        "in_cs": 0,
        "flags": [
          true,
          false
        ],
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
              "pc": "96"
            }
          ]
        },
        "1": {
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "thread(0)",
              "pc": "67",
              "callType": "process",
              "vars": {
                "self": 0
              }
            }
          ],
          "tid": "1",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 1
        },
        "2": {
          "mode": "runnable",
          "fullStatus": "runnable",
          "status": "runnable",
          "callStack": [
            {
              "method": "thread(1)",
              "pc": "45",
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
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "in_cs": 1,
        "flags": [
          true,
          false
        ],
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
              "pc": "96"
            }
          ]
        },
        "1": {
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "thread(0)",
              "pc": "67",
              "callType": "process",
              "vars": {
                "self": 0
              }
            }
          ],
          "tid": "1",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 1
        },
        "2": {
          "mode": "runnable",
          "fullStatus": "runnable",
          "status": "runnable",
          "callStack": [
            {
              "method": "thread(1)",
              "pc": "45",
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
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "in_cs": 1,
        "flags": [
          true,
          false
        ],
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
              "pc": "96"
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
              "method": "thread(0)",
              "vars": {
                "self": 0
              },
              "pc": "72"
            }
          ]
        },
        "2": {
          "mode": "runnable",
          "fullStatus": "runnable",
          "status": "runnable",
          "callStack": [
            {
              "method": "thread(1)",
              "pc": "45",
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
      "macroStepIdx": 10
    },
    {
      "duration": 6,
      "sharedValues": {
        "in_cs": 1,
        "flags": [
          true,
          true
        ],
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
              "pc": "96"
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
              "method": "thread(0)",
              "vars": {
                "self": 0
              },
              "pc": "72"
            }
          ]
        },
        "2": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "thread(1)",
              "pc": "50",
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
      "macroStepIdx": 11
    },
    {
      "duration": 3,
      "sharedValues": {
        "in_cs": 1,
        "flags": [
          true,
          true
        ],
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
              "pc": "96"
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
              "method": "thread(0)",
              "vars": {
                "self": 0
              },
              "pc": "72"
            }
          ]
        },
        "2": {
          "fullStatus": "running",
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
          "atomic": 0
        }
      },
      "tid": "2",
      "name": "thread(1)",
      "macroStepIdx": 12
    },
    {
      "duration": 6,
      "sharedValues": {
        "in_cs": 1,
        "flags": [
          true,
          true
        ],
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
              "pc": "96"
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
              "method": "thread(0)",
              "vars": {
                "self": 0
              },
              "pc": "72"
            }
          ]
        },
        "2": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "thread(1)",
              "pc": "59",
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
      "macroStepIdx": 13
    },
    {
      "duration": 4,
      "sharedValues": {
        "in_cs": 1,
        "flags": [
          true,
          true
        ],
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
              "pc": "96"
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
              "method": "thread(0)",
              "vars": {
                "self": 0
              },
              "pc": "72"
            }
          ]
        },
        "2": {
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "thread(1)",
              "pc": "67",
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
        "in_cs": 2,
        "flags": [
          true,
          true
        ],
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
              "pc": "96"
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
              "method": "thread(0)",
              "vars": {
                "self": 0
              },
              "pc": "72"
            }
          ]
        },
        "2": {
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "thread(1)",
              "pc": "67",
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
        "in_cs": 2,
        "flags": [
          true,
          true
        ],
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
              "pc": "96"
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
              "method": "thread(0)",
              "vars": {
                "self": 0
              },
              "pc": "72"
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
              "pc": "72"
            }
          ]
        }
      },
      "tid": "2",
      "name": "thread(1)",
      "macroStepIdx": 14
    },
    {
      "duration": 8,
      "sharedValues": {
        "in_cs": 2,
        "flags": [
          true,
          true
        ],
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
              "pc": "96"
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
              "method": "thread(0)",
              "vars": {
                "self": 0
              },
              "pc": "72"
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
              "pc": "72"
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
        "in_cs": 2,
        "flags": [
          true,
          true
        ],
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
              "pc": "96"
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
              "method": "thread(0)",
              "vars": {
                "self": 0
              },
              "pc": "72"
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
              "pc": "72"
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
      "macroStepIdx": 15
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
      "sliceIdx": 1,
      "time": 12,
      "pc": 22,
      "npc": 23
    },
    {
      "sliceIdx": 1,
      "time": 13,
      "pc": 23,
      "npc": 24
    },
    {
      "sliceIdx": 2,
      "time": 14,
      "pc": 24,
      "npc": 25
    },
    {
      "sliceIdx": 2,
      "time": 15,
      "pc": 25,
      "npc": 26
    },
    {
      "sliceIdx": 2,
      "time": 16,
      "pc": 26,
      "npc": 27
    },
    {
      "sliceIdx": 2,
      "time": 17,
      "pc": 27,
      "npc": 28
    },
    {
      "sliceIdx": 2,
      "time": 18,
      "pc": 28,
      "npc": 29
    },
    {
      "sliceIdx": 2,
      "time": 19,
      "pc": 29,
      "npc": 30
    },
    {
      "pc": 30,
      "npc": 31,
      "sliceIdx": 3,
      "time": 20
    },
    {
      "sliceIdx": 4,
      "time": 21,
      "pc": 31,
      "npc": 32
    },
    {
      "sliceIdx": 4,
      "time": 22,
      "pc": 32,
      "npc": 86
    },
    {
      "sliceIdx": 4,
      "time": 23,
      "pc": 86,
      "npc": 87
    },
    {
      "sliceIdx": 4,
      "time": 24,
      "pc": 87,
      "npc": 88
    },
    {
      "sliceIdx": 4,
      "time": 25,
      "pc": 88,
      "npc": 89
    },
    {
      "sliceIdx": 4,
      "time": 26,
      "pc": 89,
      "npc": 90
    },
    {
      "sliceIdx": 4,
      "time": 27,
      "pc": 90,
      "npc": 91
    },
    {
      "sliceIdx": 4,
      "time": 28,
      "pc": 91,
      "npc": 92
    },
    {
      "sliceIdx": 4,
      "time": 29,
      "pc": 92,
      "npc": 93
    },
    {
      "sliceIdx": 4,
      "time": 30,
      "pc": 93,
      "npc": 94
    },
    {
      "sliceIdx": 4,
      "time": 31,
      "pc": 94,
      "npc": 95
    },
    {
      "sliceIdx": 4,
      "time": 32,
      "pc": 95,
      "npc": 96
    },
    {
      "sliceIdx": 5,
      "time": 33,
      "pc": 96,
      "npc": 96
    },
    {
      "pc": 33,
      "npc": 34,
      "sliceIdx": 6,
      "time": 34
    },
    {
      "sliceIdx": 6,
      "time": 35,
      "pc": 34,
      "npc": 35
    },
    {
      "sliceIdx": 6,
      "time": 36,
      "pc": 35,
      "npc": 36
    },
    {
      "sliceIdx": 6,
      "time": 37,
      "pc": 36,
      "npc": 37
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
      "pc": 39,
      "npc": 40,
      "sliceIdx": 7,
      "time": 40
    },
    {
      "sliceIdx": 7,
      "time": 41,
      "pc": 40,
      "npc": 41
    },
    {
      "sliceIdx": 7,
      "time": 42,
      "pc": 41,
      "npc": 42
    },
    {
      "sliceIdx": 7,
      "time": 43,
      "pc": 42,
      "npc": 43
    },
    {
      "sliceIdx": 7,
      "time": 44,
      "pc": 43,
      "npc": 44
    },
    {
      "pc": 44,
      "npc": 45,
      "sliceIdx": 8,
      "time": 45
    },
    {
      "sliceIdx": 8,
      "time": 46,
      "pc": 45,
      "npc": 46
    },
    {
      "sliceIdx": 8,
      "time": 47,
      "pc": 46,
      "npc": 47
    },
    {
      "sliceIdx": 8,
      "time": 48,
      "pc": 47,
      "npc": 48
    },
    {
      "sliceIdx": 8,
      "time": 49,
      "pc": 48,
      "npc": 49
    },
    {
      "pc": 33,
      "npc": 34,
      "sliceIdx": 9,
      "time": 50
    },
    {
      "sliceIdx": 9,
      "time": 51,
      "pc": 34,
      "npc": 35
    },
    {
      "sliceIdx": 9,
      "time": 52,
      "pc": 35,
      "npc": 36
    },
    {
      "sliceIdx": 9,
      "time": 53,
      "pc": 36,
      "npc": 37
    },
    {
      "sliceIdx": 9,
      "time": 54,
      "pc": 37,
      "npc": 38
    },
    {
      "sliceIdx": 9,
      "time": 55,
      "pc": 38,
      "npc": 39
    },
    {
      "pc": 39,
      "npc": 40,
      "sliceIdx": 10,
      "time": 56
    },
    {
      "sliceIdx": 10,
      "time": 57,
      "pc": 40,
      "npc": 41
    },
    {
      "sliceIdx": 10,
      "time": 58,
      "pc": 41,
      "npc": 42
    },
    {
      "sliceIdx": 10,
      "time": 59,
      "pc": 42,
      "npc": 43
    },
    {
      "sliceIdx": 10,
      "time": 60,
      "pc": 43,
      "npc": 44
    },
    {
      "pc": 44,
      "npc": 45,
      "sliceIdx": 11,
      "time": 61
    },
    {
      "sliceIdx": 11,
      "time": 62,
      "pc": 45,
      "npc": 46
    },
    {
      "sliceIdx": 11,
      "time": 63,
      "pc": 46,
      "npc": 47
    },
    {
      "sliceIdx": 11,
      "time": 64,
      "pc": 47,
      "npc": 48
    },
    {
      "sliceIdx": 11,
      "time": 65,
      "pc": 48,
      "npc": 49
    },
    {
      "pc": 49,
      "npc": 50,
      "sliceIdx": 12,
      "time": 66
    },
    {
      "sliceIdx": 12,
      "time": 67,
      "pc": 50,
      "npc": 51
    },
    {
      "sliceIdx": 12,
      "time": 68,
      "pc": 51,
      "npc": 52
    },
    {
      "sliceIdx": 12,
      "time": 69,
      "pc": 52,
      "npc": 53
    },
    {
      "sliceIdx": 12,
      "time": 70,
      "pc": 53,
      "npc": 54
    },
    {
      "sliceIdx": 12,
      "time": 71,
      "pc": 54,
      "npc": 55
    },
    {
      "pc": 55,
      "npc": 56,
      "sliceIdx": 13,
      "time": 72
    },
    {
      "sliceIdx": 13,
      "time": 73,
      "pc": 56,
      "npc": 57
    },
    {
      "sliceIdx": 13,
      "time": 74,
      "pc": 57,
      "npc": 62
    },
    {
      "sliceIdx": 13,
      "time": 75,
      "pc": 62,
      "npc": 63
    },
    {
      "sliceIdx": 13,
      "time": 76,
      "pc": 63,
      "npc": 64
    },
    {
      "sliceIdx": 13,
      "time": 77,
      "pc": 64,
      "npc": 66
    },
    {
      "pc": 66,
      "npc": 67,
      "sliceIdx": 14,
      "time": 78
    },
    {
      "sliceIdx": 14,
      "time": 79,
      "pc": 67,
      "npc": 68
    },
    {
      "sliceIdx": 14,
      "time": 80,
      "pc": 68,
      "npc": 69
    },
    {
      "sliceIdx": 14,
      "time": 81,
      "pc": 69,
      "npc": 70
    },
    {
      "sliceIdx": 15,
      "time": 82,
      "pc": 70,
      "npc": 71
    },
    {
      "sliceIdx": 16,
      "time": 83,
      "pc": 71,
      "npc": 72
    },
    {
      "pc": 49,
      "npc": 50,
      "sliceIdx": 17,
      "time": 84
    },
    {
      "sliceIdx": 17,
      "time": 85,
      "pc": 50,
      "npc": 51
    },
    {
      "sliceIdx": 17,
      "time": 86,
      "pc": 51,
      "npc": 52
    },
    {
      "sliceIdx": 17,
      "time": 87,
      "pc": 52,
      "npc": 53
    },
    {
      "sliceIdx": 17,
      "time": 88,
      "pc": 53,
      "npc": 54
    },
    {
      "sliceIdx": 17,
      "time": 89,
      "pc": 54,
      "npc": 55
    },
    {
      "pc": 55,
      "npc": 56,
      "sliceIdx": 18,
      "time": 90
    },
    {
      "sliceIdx": 18,
      "time": 91,
      "pc": 56,
      "npc": 57
    },
    {
      "sliceIdx": 18,
      "time": 92,
      "pc": 57,
      "npc": 58
    },
    {
      "pc": 58,
      "npc": 59,
      "sliceIdx": 19,
      "time": 93
    },
    {
      "sliceIdx": 19,
      "time": 94,
      "pc": 59,
      "npc": 60
    },
    {
      "sliceIdx": 19,
      "time": 95,
      "pc": 60,
      "npc": 61
    },
    {
      "sliceIdx": 19,
      "time": 96,
      "pc": 61,
      "npc": 63
    },
    {
      "sliceIdx": 19,
      "time": 97,
      "pc": 63,
      "npc": 64
    },
    {
      "sliceIdx": 19,
      "time": 98,
      "pc": 64,
      "npc": 66
    },
    {
      "pc": 66,
      "npc": 67,
      "sliceIdx": 20,
      "time": 99
    },
    {
      "sliceIdx": 20,
      "time": 100,
      "pc": 67,
      "npc": 68
    },
    {
      "sliceIdx": 20,
      "time": 101,
      "pc": 68,
      "npc": 69
    },
    {
      "sliceIdx": 20,
      "time": 102,
      "pc": 69,
      "npc": 70
    },
    {
      "sliceIdx": 21,
      "time": 103,
      "pc": 70,
      "npc": 71
    },
    {
      "sliceIdx": 22,
      "time": 104,
      "pc": 71,
      "npc": 72
    },
    {
      "pc": 4,
      "npc": 5,
      "sliceIdx": 23,
      "time": 105
    },
    {
      "sliceIdx": 23,
      "time": 106,
      "pc": 5,
      "npc": 6
    },
    {
      "sliceIdx": 23,
      "time": 107,
      "pc": 6,
      "npc": 7
    },
    {
      "sliceIdx": 23,
      "time": 108,
      "pc": 7,
      "npc": 8
    },
    {
      "sliceIdx": 23,
      "time": 109,
      "pc": 8,
      "npc": 9
    },
    {
      "sliceIdx": 23,
      "time": 110,
      "pc": 9,
      "npc": 10
    },
    {
      "sliceIdx": 23,
      "time": 111,
      "pc": 10,
      "npc": 11
    },
    {
      "sliceIdx": 23,
      "time": 112,
      "pc": 11,
      "npc": 12
    },
    {
      "sliceIdx": 24,
      "time": 113,
      "pc": 12,
      "npc": 12
    }
  ],
  "macroSteps": [
    {
      "tid": "0",
      "name": "__init__()",
      "duration": 20,
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
      "duration": 5,
      "startSliceIdx": 7,
      "lastSliceIdx": 8
    },
    {
      "tid": "2",
      "name": "thread(1)",
      "duration": 5,
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
      "duration": 5,
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
      "tid": "1",
      "name": "thread(0)",
      "duration": 6,
      "startSliceIdx": 12,
      "lastSliceIdx": 13
    },
    {
      "tid": "1",
      "name": "thread(0)",
      "duration": 6,
      "startSliceIdx": 13,
      "lastSliceIdx": 14
    },
    {
      "tid": "1",
      "name": "thread(0)",
      "duration": 6,
      "startSliceIdx": 14,
      "lastSliceIdx": 17
    },
    {
      "tid": "2",
      "name": "thread(1)",
      "duration": 6,
      "startSliceIdx": 17,
      "lastSliceIdx": 18
    },
    {
      "tid": "2",
      "name": "thread(1)",
      "duration": 3,
      "startSliceIdx": 18,
      "lastSliceIdx": 19
    },
    {
      "tid": "2",
      "name": "thread(1)",
      "duration": 6,
      "startSliceIdx": 19,
      "lastSliceIdx": 20
    },
    {
      "tid": "2",
      "name": "thread(1)",
      "duration": 6,
      "startSliceIdx": 20,
      "lastSliceIdx": 23
    },
    {
      "tid": "3",
      "name": "invariant()",
      "duration": 9,
      "startSliceIdx": 23,
      "lastSliceIdx": 25
    }
  ],
  "idToThreadName": {
    "0": "__init__()",
    "1": "thread(0)",
    "2": "thread(1)",
    "3": "invariant()"
  },
  "executedCode": [
    {
      "initialPc": 0,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
      "line": "4",
      "sourceCode": "sequential flags, turn",
      "assembly": [
        {
          "assembly": "Push ?flags",
          "explain": "push constant ?flags"
        }
      ]
    },
    {
      "initialPc": 16,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
      "line": "4",
      "sourceCode": "sequential flags, turn",
      "assembly": [
        {
          "assembly": "Sequential",
          "explain": "sequential consistency for variable on top of stack"
        }
      ]
    },
    {
      "initialPc": 17,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
      "line": "4",
      "sourceCode": "sequential flags, turn",
      "assembly": [
        {
          "assembly": "Push ?turn",
          "explain": "push constant ?turn"
        }
      ]
    },
    {
      "initialPc": 18,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
      "line": "4",
      "sourceCode": "sequential flags, turn",
      "assembly": [
        {
          "assembly": "Sequential",
          "explain": "sequential consistency for variable on top of stack"
        }
      ]
    },
    {
      "initialPc": 19,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "initialPc": 20,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "initialPc": 23,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "initialPc": 24,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "initialPc": 25,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
      "line": "6",
      "sourceCode": "turn = choose({0, 1})",
      "assembly": [
        {
          "assembly": "Push {}",
          "explain": "push constant {}"
        }
      ]
    },
    {
      "initialPc": 26,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
      "line": "6",
      "sourceCode": "turn = choose({0, 1})",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 27,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
      "line": "6",
      "sourceCode": "turn = choose({0, 1})",
      "assembly": [
        {
          "assembly": "2-ary SetAdd",
          "explain": "pop 2 values and push the result of applying SetAdd"
        }
      ]
    },
    {
      "initialPc": 28,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
      "line": "6",
      "sourceCode": "turn = choose({0, 1})",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 29,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
      "line": "6",
      "sourceCode": "turn = choose({0, 1})",
      "assembly": [
        {
          "assembly": "2-ary SetAdd",
          "explain": "pop 2 values and push the result of applying SetAdd"
        }
      ]
    },
    {
      "initialPc": 30,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
      "line": "6",
      "sourceCode": "turn = choose({0, 1})",
      "assembly": [
        {
          "assembly": "Choose",
          "explain": "pop a set value and push one of its elements"
        }
      ]
    },
    {
      "initialPc": 31,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
      "line": "6",
      "sourceCode": "turn = choose({0, 1})",
      "assembly": [
        {
          "assembly": "Store turn",
          "explain": "pop a value and store it in shared variable turn"
        }
      ]
    },
    {
      "initialPc": 32,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
      "line": "8",
      "sourceCode": "def thread(self):",
      "assembly": [
        {
          "assembly": "Jump 86",
          "explain": "jump over method definition: set program counter to 86"
        }
      ]
    },
    {
      "initialPc": 33,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
      "line": "8",
      "sourceCode": "def thread(self):",
      "assembly": [
        {
          "assembly": "Frame thread(self)",
          "explain": "start of method thread"
        }
      ]
    },
    {
      "initialPc": 34,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
      "line": "9",
      "sourceCode": "    while choose({ False, True }):",
      "assembly": [
        {
          "assembly": "Push {}",
          "explain": "push constant {}"
        }
      ]
    },
    {
      "initialPc": 35,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
      "line": "9",
      "sourceCode": "    while choose({ False, True }):",
      "assembly": [
        {
          "assembly": "Push False",
          "explain": "push constant False"
        }
      ]
    },
    {
      "initialPc": 36,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
      "line": "9",
      "sourceCode": "    while choose({ False, True }):",
      "assembly": [
        {
          "assembly": "2-ary SetAdd",
          "explain": "pop 2 values and push the result of applying SetAdd"
        }
      ]
    },
    {
      "initialPc": 37,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
      "line": "9",
      "sourceCode": "    while choose({ False, True }):",
      "assembly": [
        {
          "assembly": "Push True",
          "explain": "push constant True"
        }
      ]
    },
    {
      "initialPc": 38,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
      "line": "9",
      "sourceCode": "    while choose({ False, True }):",
      "assembly": [
        {
          "assembly": "2-ary SetAdd",
          "explain": "pop 2 values and push the result of applying SetAdd"
        }
      ]
    },
    {
      "initialPc": 39,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
      "line": "9",
      "sourceCode": "    while choose({ False, True }):",
      "assembly": [
        {
          "assembly": "Choose",
          "explain": "pop a set value and push one of its elements"
        }
      ]
    },
    {
      "initialPc": 40,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
      "line": "9",
      "sourceCode": "    while choose({ False, True }):",
      "assembly": [
        {
          "assembly": "JumpCond False 84",
          "explain": "pop a value and jump to 84 if the value is False"
        }
      ]
    },
    {
      "initialPc": 41,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
      "line": "11",
      "sourceCode": "        turn = 1 - self",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 42,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
      "line": "11",
      "sourceCode": "        turn = 1 - self",
      "assembly": [
        {
          "assembly": "LoadVar self",
          "explain": "push the value of self"
        }
      ]
    },
    {
      "initialPc": 43,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
      "line": "11",
      "sourceCode": "        turn = 1 - self",
      "assembly": [
        {
          "assembly": "2-ary -",
          "explain": "pop 2 values and push the result of applying -"
        }
      ]
    },
    {
      "initialPc": 44,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
      "line": "11",
      "sourceCode": "        turn = 1 - self",
      "assembly": [
        {
          "assembly": "Store turn",
          "explain": "pop a value and store it in shared variable turn"
        }
      ]
    },
    {
      "initialPc": 45,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
      "line": "12",
      "sourceCode": "        flags[self] = True",
      "assembly": [
        {
          "assembly": "Push ?flags",
          "explain": "push constant ?flags"
        }
      ]
    },
    {
      "initialPc": 46,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
      "line": "12",
      "sourceCode": "        flags[self] = True",
      "assembly": [
        {
          "assembly": "LoadVar self",
          "explain": "push the value of self"
        }
      ]
    },
    {
      "initialPc": 47,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
      "line": "12",
      "sourceCode": "        flags[self] = True",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 48,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
      "line": "12",
      "sourceCode": "        flags[self] = True",
      "assembly": [
        {
          "assembly": "Push True",
          "explain": "push constant True"
        }
      ]
    },
    {
      "initialPc": 49,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
      "line": "12",
      "sourceCode": "        flags[self] = True",
      "assembly": [
        {
          "assembly": "Store",
          "explain": "pop a value and an address and store the value at the address"
        }
      ]
    },
    {
      "initialPc": 50,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "initialPc": 51,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "initialPc": 52,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "initialPc": 53,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "initialPc": 54,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "initialPc": 55,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "initialPc": 56,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "initialPc": 57,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
      "line": "13",
      "sourceCode": "        await (not flags[1 - self]) or (turn == self)",
      "assembly": [
        {
          "assembly": "JumpCond True 62",
          "explain": "pop a value and jump to 62 if the value is True"
        }
      ]
    },
    {
      "initialPc": 58,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "initialPc": 59,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "initialPc": 60,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "initialPc": 61,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
      "line": "13",
      "sourceCode": "        await (not flags[1 - self]) or (turn == self)",
      "assembly": [
        {
          "assembly": "Jump 63",
          "explain": "set program counter to 63"
        }
      ]
    },
    {
      "initialPc": 62,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "initialPc": 63,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
      "line": "13",
      "sourceCode": "        await (not flags[1 - self]) or (turn == self)",
      "assembly": [
        {
          "assembly": "JumpCond False 50",
          "explain": "pop a value and jump to 50 if the value is False"
        }
      ]
    },
    {
      "initialPc": 64,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
      "line": "13",
      "sourceCode": "        await (not flags[1 - self]) or (turn == self)",
      "assembly": [
        {
          "assembly": "Jump 66",
          "explain": "set program counter to 66"
        }
      ]
    },
    {
      "initialPc": 65,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
      "line": "13",
      "sourceCode": "        await (not flags[1 - self]) or (turn == self)",
      "assembly": [
        {
          "assembly": "Jump 50",
          "explain": "set program counter to 50"
        }
      ]
    },
    {
      "initialPc": 66,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "initialPc": 67,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "initialPc": 68,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "initialPc": 69,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "initialPc": 70,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "initialPc": 71,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "initialPc": 72,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "initialPc": 73,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "initialPc": 74,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "initialPc": 75,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "initialPc": 76,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "initialPc": 77,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "initialPc": 78,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "initialPc": 79,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "initialPc": 80,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "initialPc": 81,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "initialPc": 82,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "initialPc": 83,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
      "line": "9",
      "sourceCode": "    while choose({ False, True }):",
      "assembly": [
        {
          "assembly": "Jump 34",
          "explain": "set program counter to 34"
        }
      ]
    },
    {
      "initialPc": 84,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
      "line": "8",
      "sourceCode": "def thread(self):",
      "assembly": [
        {
          "assembly": "DelVar self",
          "explain": "delete method variable self"
        }
      ]
    },
    {
      "initialPc": 85,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
      "line": "8",
      "sourceCode": "def thread(self):",
      "assembly": [
        {
          "assembly": "ReturnOp(result. None)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 86,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
      "line": "22",
      "sourceCode": "spawn thread(0)",
      "assembly": [
        {
          "assembly": "Push ?PC(33)",
          "explain": "push constant ?PC(33)"
        }
      ]
    },
    {
      "initialPc": 87,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "initialPc": 88,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "initialPc": 89,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "initialPc": 90,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "initialPc": 91,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
      "line": "23",
      "sourceCode": "spawn thread(1)",
      "assembly": [
        {
          "assembly": "Push ?PC(33)",
          "explain": "push constant ?PC(33)"
        }
      ]
    },
    {
      "initialPc": 92,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "initialPc": 93,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "initialPc": 94,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "initialPc": 95,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "initialPc": 96,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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
      "initialPc": 97,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/PetersonBroken.hny",
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