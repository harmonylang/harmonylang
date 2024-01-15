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
      "duration": 4,
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
        "lockTaken": false
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
        "lockTaken": false
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
              "pc": "60"
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
        "in_cs": 0,
        "lockTaken": false
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
              "pc": "60"
            }
          ]
        },
        "1": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "thread(0)",
              "pc": "19",
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
        }
      },
      "tid": "1",
      "name": "thread(0)",
      "macroStepIdx": 0
    },
    {
      "duration": 6,
      "sharedValues": {
        "in_cs": 0,
        "lockTaken": false
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
              "pc": "60"
            }
          ]
        },
        "1": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "thread(0)",
              "pc": "19",
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
      "name": "thread(0)",
      "macroStepIdx": 1
    },
    {
      "duration": 2,
      "sharedValues": {
        "in_cs": 0,
        "lockTaken": false
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
              "pc": "60"
            }
          ]
        },
        "1": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "thread(0)",
              "pc": "26",
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
      "name": "thread(0)",
      "macroStepIdx": 2
    },
    {
      "duration": 5,
      "sharedValues": {
        "in_cs": 0,
        "lockTaken": false
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
              "pc": "60"
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
      "name": "thread(0)",
      "macroStepIdx": 3
    },
    {
      "duration": 1,
      "sharedValues": {
        "in_cs": 0,
        "lockTaken": false
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
              "pc": "60"
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
              "pc": "28",
              "callType": "process",
              "vars": {}
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
              "pc": "19",
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
      "macroStepIdx": 0
    },
    {
      "duration": 6,
      "sharedValues": {
        "in_cs": 0,
        "lockTaken": false
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
              "pc": "60"
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
              "pc": "28",
              "callType": "process",
              "vars": {}
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
              "pc": "19",
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
      "name": "thread(1)",
      "macroStepIdx": 4
    },
    {
      "duration": 2,
      "sharedValues": {
        "in_cs": 0,
        "lockTaken": false
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
              "pc": "60"
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
              "pc": "28",
              "callType": "process",
              "vars": {}
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
              "pc": "26",
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
      "name": "thread(1)",
      "macroStepIdx": 5
    },
    {
      "duration": 5,
      "sharedValues": {
        "in_cs": 0,
        "lockTaken": false
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
              "pc": "60"
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
              "pc": "28",
              "callType": "process",
              "vars": {}
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
              "pc": "28",
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
      "name": "thread(1)",
      "macroStepIdx": 6
    },
    {
      "duration": 1,
      "sharedValues": {
        "in_cs": 0,
        "lockTaken": true
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
              "pc": "60"
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
              "pc": "28",
              "callType": "process",
              "vars": {}
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
              "callType": "process",
              "method": "thread(1)",
              "vars": {},
              "pc": "34"
            }
          ]
        }
      },
      "tid": "2",
      "name": "thread(1)",
      "macroStepIdx": 7
    },
    {
      "duration": 1,
      "sharedValues": {
        "in_cs": 0,
        "lockTaken": true
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
              "pc": "60"
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
              "vars": {},
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
              "callType": "process",
              "method": "thread(1)",
              "vars": {},
              "pc": "34"
            }
          ]
        }
      },
      "tid": "1",
      "name": "thread(0)",
      "macroStepIdx": 8
    },
    {
      "duration": 4,
      "sharedValues": {
        "in_cs": 0,
        "lockTaken": true
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
              "pc": "60"
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
              "method": "thread(0)",
              "pc": "35",
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
              "method": "thread(1)",
              "vars": {},
              "pc": "34"
            }
          ]
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
        "lockTaken": true
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
              "pc": "60"
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
              "method": "thread(0)",
              "pc": "35",
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
              "method": "thread(1)",
              "vars": {},
              "pc": "34"
            }
          ]
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
        "lockTaken": true
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
              "pc": "60"
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
              "vars": {},
              "pc": "40"
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
              "vars": {},
              "pc": "34"
            }
          ]
        }
      },
      "tid": "1",
      "name": "thread(0)",
      "macroStepIdx": 9
    },
    {
      "duration": 4,
      "sharedValues": {
        "in_cs": 1,
        "lockTaken": true
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
              "pc": "60"
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
              "vars": {},
              "pc": "40"
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
              "vars": {}
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
        "in_cs": 2,
        "lockTaken": true
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
              "pc": "60"
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
              "vars": {},
              "pc": "40"
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
              "vars": {}
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
        "in_cs": 2,
        "lockTaken": true
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
              "pc": "60"
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
              "vars": {},
              "pc": "40"
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
              "vars": {},
              "pc": "40"
            }
          ]
        }
      },
      "tid": "2",
      "name": "thread(1)",
      "macroStepIdx": 10
    },
    {
      "duration": 8,
      "sharedValues": {
        "in_cs": 2,
        "lockTaken": true
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
              "pc": "60"
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
              "vars": {},
              "pc": "40"
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
              "vars": {},
              "pc": "40"
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
        "lockTaken": true
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
              "pc": "60"
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
              "vars": {},
              "pc": "40"
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
              "vars": {},
              "pc": "40"
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
      "sliceIdx": 2,
      "time": 6,
      "pc": 16,
      "npc": 17
    },
    {
      "sliceIdx": 2,
      "time": 7,
      "pc": 17,
      "npc": 50
    },
    {
      "sliceIdx": 2,
      "time": 8,
      "pc": 50,
      "npc": 51
    },
    {
      "sliceIdx": 2,
      "time": 9,
      "pc": 51,
      "npc": 52
    },
    {
      "sliceIdx": 2,
      "time": 10,
      "pc": 52,
      "npc": 53
    },
    {
      "sliceIdx": 2,
      "time": 11,
      "pc": 53,
      "npc": 54
    },
    {
      "sliceIdx": 2,
      "time": 12,
      "pc": 54,
      "npc": 55
    },
    {
      "sliceIdx": 2,
      "time": 13,
      "pc": 55,
      "npc": 56
    },
    {
      "sliceIdx": 2,
      "time": 14,
      "pc": 56,
      "npc": 57
    },
    {
      "sliceIdx": 2,
      "time": 15,
      "pc": 57,
      "npc": 58
    },
    {
      "sliceIdx": 2,
      "time": 16,
      "pc": 58,
      "npc": 59
    },
    {
      "sliceIdx": 2,
      "time": 17,
      "pc": 59,
      "npc": 60
    },
    {
      "sliceIdx": 3,
      "time": 18,
      "pc": 60,
      "npc": 60
    },
    {
      "pc": 18,
      "npc": 19,
      "sliceIdx": 4,
      "time": 19
    },
    {
      "sliceIdx": 5,
      "time": 20,
      "pc": 19,
      "npc": 20
    },
    {
      "sliceIdx": 5,
      "time": 21,
      "pc": 20,
      "npc": 21
    },
    {
      "sliceIdx": 5,
      "time": 22,
      "pc": 21,
      "npc": 22
    },
    {
      "sliceIdx": 5,
      "time": 23,
      "pc": 22,
      "npc": 23
    },
    {
      "sliceIdx": 5,
      "time": 24,
      "pc": 23,
      "npc": 24
    },
    {
      "sliceIdx": 5,
      "time": 25,
      "pc": 24,
      "npc": 25
    },
    {
      "pc": 25,
      "npc": 26,
      "sliceIdx": 6,
      "time": 26
    },
    {
      "sliceIdx": 6,
      "time": 27,
      "pc": 26,
      "npc": 27
    },
    {
      "pc": 27,
      "npc": 28,
      "sliceIdx": 7,
      "time": 28
    },
    {
      "sliceIdx": 7,
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
      "sliceIdx": 7,
      "time": 31,
      "pc": 30,
      "npc": 32
    },
    {
      "sliceIdx": 7,
      "time": 32,
      "pc": 32,
      "npc": 33
    },
    {
      "pc": 18,
      "npc": 19,
      "sliceIdx": 8,
      "time": 33
    },
    {
      "sliceIdx": 9,
      "time": 34,
      "pc": 19,
      "npc": 20
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
      "pc": 25,
      "npc": 26,
      "sliceIdx": 10,
      "time": 40
    },
    {
      "sliceIdx": 10,
      "time": 41,
      "pc": 26,
      "npc": 27
    },
    {
      "pc": 27,
      "npc": 28,
      "sliceIdx": 11,
      "time": 42
    },
    {
      "sliceIdx": 11,
      "time": 43,
      "pc": 28,
      "npc": 29
    },
    {
      "sliceIdx": 11,
      "time": 44,
      "pc": 29,
      "npc": 30
    },
    {
      "sliceIdx": 11,
      "time": 45,
      "pc": 30,
      "npc": 32
    },
    {
      "sliceIdx": 11,
      "time": 46,
      "pc": 32,
      "npc": 33
    },
    {
      "pc": 33,
      "npc": 34,
      "sliceIdx": 12,
      "time": 47
    },
    {
      "pc": 33,
      "npc": 34,
      "sliceIdx": 13,
      "time": 48
    },
    {
      "pc": 34,
      "npc": 35,
      "sliceIdx": 14,
      "time": 49
    },
    {
      "sliceIdx": 14,
      "time": 50,
      "pc": 35,
      "npc": 36
    },
    {
      "sliceIdx": 14,
      "time": 51,
      "pc": 36,
      "npc": 37
    },
    {
      "sliceIdx": 14,
      "time": 52,
      "pc": 37,
      "npc": 38
    },
    {
      "sliceIdx": 15,
      "time": 53,
      "pc": 38,
      "npc": 39
    },
    {
      "sliceIdx": 16,
      "time": 54,
      "pc": 39,
      "npc": 40
    },
    {
      "pc": 34,
      "npc": 35,
      "sliceIdx": 17,
      "time": 55
    },
    {
      "sliceIdx": 17,
      "time": 56,
      "pc": 35,
      "npc": 36
    },
    {
      "sliceIdx": 17,
      "time": 57,
      "pc": 36,
      "npc": 37
    },
    {
      "sliceIdx": 17,
      "time": 58,
      "pc": 37,
      "npc": 38
    },
    {
      "sliceIdx": 18,
      "time": 59,
      "pc": 38,
      "npc": 39
    },
    {
      "sliceIdx": 19,
      "time": 60,
      "pc": 39,
      "npc": 40
    },
    {
      "pc": 4,
      "npc": 5,
      "sliceIdx": 20,
      "time": 61
    },
    {
      "sliceIdx": 20,
      "time": 62,
      "pc": 5,
      "npc": 6
    },
    {
      "sliceIdx": 20,
      "time": 63,
      "pc": 6,
      "npc": 7
    },
    {
      "sliceIdx": 20,
      "time": 64,
      "pc": 7,
      "npc": 8
    },
    {
      "sliceIdx": 20,
      "time": 65,
      "pc": 8,
      "npc": 9
    },
    {
      "sliceIdx": 20,
      "time": 66,
      "pc": 9,
      "npc": 10
    },
    {
      "sliceIdx": 20,
      "time": 67,
      "pc": 10,
      "npc": 11
    },
    {
      "sliceIdx": 20,
      "time": 68,
      "pc": 11,
      "npc": 12
    },
    {
      "sliceIdx": 21,
      "time": 69,
      "pc": 12,
      "npc": 12
    }
  ],
  "macroSteps": [
    {
      "tid": "0",
      "name": "__init__()",
      "duration": 19,
      "startSliceIdx": 0,
      "lastSliceIdx": 4
    },
    {
      "tid": "1",
      "name": "thread(0)",
      "duration": 7,
      "startSliceIdx": 4,
      "lastSliceIdx": 6
    },
    {
      "tid": "1",
      "name": "thread(0)",
      "duration": 2,
      "startSliceIdx": 6,
      "lastSliceIdx": 7
    },
    {
      "tid": "1",
      "name": "thread(0)",
      "duration": 5,
      "startSliceIdx": 7,
      "lastSliceIdx": 8
    },
    {
      "tid": "2",
      "name": "thread(1)",
      "duration": 7,
      "startSliceIdx": 8,
      "lastSliceIdx": 10
    },
    {
      "tid": "2",
      "name": "thread(1)",
      "duration": 2,
      "startSliceIdx": 10,
      "lastSliceIdx": 11
    },
    {
      "tid": "2",
      "name": "thread(1)",
      "duration": 5,
      "startSliceIdx": 11,
      "lastSliceIdx": 12
    },
    {
      "tid": "2",
      "name": "thread(1)",
      "duration": 1,
      "startSliceIdx": 12,
      "lastSliceIdx": 13
    },
    {
      "tid": "1",
      "name": "thread(0)",
      "duration": 1,
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
      "lastSliceIdx": 20
    },
    {
      "tid": "3",
      "name": "invariant()",
      "duration": 9,
      "startSliceIdx": 20,
      "lastSliceIdx": 22
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
      "line": "4",
      "sourceCode": "lockTaken = False",
      "assembly": [
        {
          "assembly": "Push False",
          "explain": "push constant False"
        }
      ]
    },
    {
      "initialPc": 16,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
      "line": "4",
      "sourceCode": "lockTaken = False",
      "assembly": [
        {
          "assembly": "Store lockTaken",
          "explain": "pop a value and store it in shared variable lockTaken"
        }
      ]
    },
    {
      "initialPc": 17,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
      "line": "6",
      "sourceCode": "def thread(self):",
      "assembly": [
        {
          "assembly": "Jump 50",
          "explain": "jump over method definition: set program counter to 50"
        }
      ]
    },
    {
      "initialPc": 18,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
      "line": "6",
      "sourceCode": "def thread(self):",
      "assembly": [
        {
          "assembly": "Frame thread(self)",
          "explain": "start of method thread"
        }
      ]
    },
    {
      "initialPc": 19,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
      "line": "7",
      "sourceCode": "    while choose({ False, True }):",
      "assembly": [
        {
          "assembly": "DelVar self",
          "explain": "delete method variable self"
        }
      ]
    },
    {
      "initialPc": 20,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
      "line": "7",
      "sourceCode": "    while choose({ False, True }):",
      "assembly": [
        {
          "assembly": "Push {}",
          "explain": "push constant {}"
        }
      ]
    },
    {
      "initialPc": 21,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
      "line": "7",
      "sourceCode": "    while choose({ False, True }):",
      "assembly": [
        {
          "assembly": "Push False",
          "explain": "push constant False"
        }
      ]
    },
    {
      "initialPc": 22,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
      "line": "7",
      "sourceCode": "    while choose({ False, True }):",
      "assembly": [
        {
          "assembly": "2-ary SetAdd",
          "explain": "pop 2 values and push the result of applying SetAdd"
        }
      ]
    },
    {
      "initialPc": 23,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
      "line": "7",
      "sourceCode": "    while choose({ False, True }):",
      "assembly": [
        {
          "assembly": "Push True",
          "explain": "push constant True"
        }
      ]
    },
    {
      "initialPc": 24,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
      "line": "7",
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
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
      "line": "7",
      "sourceCode": "    while choose({ False, True }):",
      "assembly": [
        {
          "assembly": "Choose",
          "explain": "pop a set value and push one of its elements"
        }
      ]
    },
    {
      "initialPc": 26,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
      "line": "7",
      "sourceCode": "    while choose({ False, True }):",
      "assembly": [
        {
          "assembly": "JumpCond False 49",
          "explain": "pop a value and jump to 49 if the value is False"
        }
      ]
    },
    {
      "initialPc": 27,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
      "line": "9",
      "sourceCode": "        await not lockTaken",
      "assembly": [
        {
          "assembly": "Load lockTaken",
          "explain": "push value of shared variable lockTaken"
        }
      ]
    },
    {
      "initialPc": 28,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
      "line": "9",
      "sourceCode": "        await not lockTaken",
      "assembly": [
        {
          "assembly": "1-ary not",
          "explain": "pop 1 value and push the result of applying not"
        }
      ]
    },
    {
      "initialPc": 29,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
      "line": "9",
      "sourceCode": "        await not lockTaken",
      "assembly": [
        {
          "assembly": "JumpCond False 27",
          "explain": "pop a value and jump to 27 if the value is False"
        }
      ]
    },
    {
      "initialPc": 30,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
      "line": "9",
      "sourceCode": "        await not lockTaken",
      "assembly": [
        {
          "assembly": "Jump 32",
          "explain": "set program counter to 32"
        }
      ]
    },
    {
      "initialPc": 31,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
      "line": "9",
      "sourceCode": "        await not lockTaken",
      "assembly": [
        {
          "assembly": "Jump 27",
          "explain": "set program counter to 27"
        }
      ]
    },
    {
      "initialPc": 32,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
      "line": "10",
      "sourceCode": "        lockTaken = True",
      "assembly": [
        {
          "assembly": "Push True",
          "explain": "push constant True"
        }
      ]
    },
    {
      "initialPc": 33,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
      "line": "10",
      "sourceCode": "        lockTaken = True",
      "assembly": [
        {
          "assembly": "Store lockTaken",
          "explain": "pop a value and store it in shared variable lockTaken"
        }
      ]
    },
    {
      "initialPc": 34,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
      "line": "12",
      "sourceCode": "        atomically in_cs += 1",
      "assembly": [
        {
          "assembly": "AtomicInc(eager)",
          "explain": "increment atomic counter of context; thread runs uninterrupted if larger than 0"
        }
      ]
    },
    {
      "initialPc": 35,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
      "line": "12",
      "sourceCode": "        atomically in_cs += 1",
      "assembly": [
        {
          "assembly": "Load in_cs",
          "explain": "push value of shared variable in_cs"
        }
      ]
    },
    {
      "initialPc": 36,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
      "line": "12",
      "sourceCode": "        atomically in_cs += 1",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 37,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
      "line": "12",
      "sourceCode": "        atomically in_cs += 1",
      "assembly": [
        {
          "assembly": "2-ary +",
          "explain": "pop 2 values and push the result of applying +"
        }
      ]
    },
    {
      "initialPc": 38,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
      "line": "12",
      "sourceCode": "        atomically in_cs += 1",
      "assembly": [
        {
          "assembly": "Store in_cs",
          "explain": "pop a value and store it in shared variable in_cs"
        }
      ]
    },
    {
      "initialPc": 39,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
      "line": "12",
      "sourceCode": "        atomically in_cs += 1",
      "assembly": [
        {
          "assembly": "AtomicDec",
          "explain": "decrement atomic counter of context"
        }
      ]
    },
    {
      "initialPc": 40,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
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
      "initialPc": 41,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
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
      "initialPc": 42,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
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
      "initialPc": 43,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
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
      "initialPc": 44,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
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
      "initialPc": 45,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
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
      "initialPc": 46,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
      "line": "17",
      "sourceCode": "        lockTaken = False",
      "assembly": [
        {
          "assembly": "Push False",
          "explain": "push constant False"
        }
      ]
    },
    {
      "initialPc": 47,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
      "line": "17",
      "sourceCode": "        lockTaken = False",
      "assembly": [
        {
          "assembly": "Store lockTaken",
          "explain": "pop a value and store it in shared variable lockTaken"
        }
      ]
    },
    {
      "initialPc": 48,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
      "line": "7",
      "sourceCode": "    while choose({ False, True }):",
      "assembly": [
        {
          "assembly": "Jump 19",
          "explain": "set program counter to 19"
        }
      ]
    },
    {
      "initialPc": 49,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
      "line": "6",
      "sourceCode": "def thread(self):",
      "assembly": [
        {
          "assembly": "ReturnOp(result. None)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 50,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
      "line": "19",
      "sourceCode": "spawn thread(0)",
      "assembly": [
        {
          "assembly": "Push ?PC(18)",
          "explain": "push constant ?PC(18)"
        }
      ]
    },
    {
      "initialPc": 51,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
      "line": "19",
      "sourceCode": "spawn thread(0)",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 52,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
      "line": "19",
      "sourceCode": "spawn thread(0)",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 53,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
      "line": "19",
      "sourceCode": "spawn thread(0)",
      "assembly": [
        {
          "assembly": "Push {:}",
          "explain": "push constant {:}"
        }
      ]
    },
    {
      "initialPc": 54,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
      "line": "19",
      "sourceCode": "spawn thread(0)",
      "assembly": [
        {
          "assembly": "Spawn",
          "explain": "pop thread-local state, argument, and pc and spawn a new thread"
        }
      ]
    },
    {
      "initialPc": 55,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
      "line": "20",
      "sourceCode": "spawn thread(1)",
      "assembly": [
        {
          "assembly": "Push ?PC(18)",
          "explain": "push constant ?PC(18)"
        }
      ]
    },
    {
      "initialPc": 56,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
      "line": "20",
      "sourceCode": "spawn thread(1)",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 57,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
      "line": "20",
      "sourceCode": "spawn thread(1)",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 58,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
      "line": "20",
      "sourceCode": "spawn thread(1)",
      "assembly": [
        {
          "assembly": "Push {:}",
          "explain": "push constant {:}"
        }
      ]
    },
    {
      "initialPc": 59,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
      "line": "20",
      "sourceCode": "spawn thread(1)",
      "assembly": [
        {
          "assembly": "Spawn",
          "explain": "pop thread-local state, argument, and pc and spawn a new thread"
        }
      ]
    },
    {
      "initialPc": 60,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
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
      "initialPc": 61,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/naiveLock.hny",
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