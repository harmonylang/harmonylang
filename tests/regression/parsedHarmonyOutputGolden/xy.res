{
  "state": "Issues found",
  "issue": "Safety violation",
  "slices": [
    {
      "duration": 11,
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
      "sharedValues": {
        "y": 100
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
        "y": 100,
        "x": 0
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
        "y": 100,
        "x": 0
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
              "pc": "67"
            }
          ]
        }
      },
      "tid": "0",
      "name": "__init__()",
      "macroStepIdx": 0
    },
    {
      "duration": 2,
      "sharedValues": {
        "y": 100,
        "x": 0
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
              "pc": "67"
            }
          ]
        },
        "2": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "setX(50)",
              "pc": "15",
              "callType": "process",
              "vars": {
                "a": 50
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
      "name": "setX(50)",
      "macroStepIdx": 1
    },
    {
      "duration": 1,
      "sharedValues": {
        "y": 100,
        "x": 50
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
              "pc": "67"
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
              "method": "setX(50)",
              "vars": {
                "a": 50
              },
              "pc": "17"
            }
          ]
        }
      },
      "tid": "2",
      "name": "setX(50)",
      "macroStepIdx": 2
    },
    {
      "duration": 2,
      "sharedValues": {
        "y": 100,
        "x": 50
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
              "pc": "67"
            }
          ]
        },
        "1": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "checker()",
              "pc": "35",
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
              "method": "setX(50)",
              "vars": {
                "a": 50
              },
              "pc": "17"
            }
          ]
        }
      },
      "tid": "1",
      "name": "checker()",
      "macroStepIdx": 0
    },
    {
      "duration": 3,
      "sharedValues": {
        "y": 100,
        "x": 50
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
              "pc": "67"
            }
          ]
        },
        "1": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "checker()",
              "pc": "37",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "getXY()",
              "pc": "24",
              "callType": "normal",
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
              "method": "setX(50)",
              "vars": {
                "a": 50
              },
              "pc": "17"
            }
          ]
        }
      },
      "tid": "1",
      "name": "checker()",
      "macroStepIdx": 3
    },
    {
      "duration": 2,
      "sharedValues": {
        "y": 100,
        "x": 50
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
              "pc": "67"
            }
          ]
        },
        "1": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "checker()",
              "pc": "37",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "getXY()",
              "pc": "27",
              "callType": "normal",
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
              "method": "setX(50)",
              "vars": {
                "a": 50
              },
              "pc": "17"
            }
          ]
        }
      },
      "tid": "1",
      "name": "checker()",
      "macroStepIdx": 4
    },
    {
      "duration": 2,
      "sharedValues": {
        "y": 100,
        "x": 50
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
              "pc": "67"
            }
          ]
        },
        "1": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "checker()",
              "pc": "37",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "getXY()",
              "pc": "29",
              "callType": "normal",
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
              "method": "setX(50)",
              "vars": {
                "a": 50
              },
              "pc": "17"
            }
          ]
        }
      },
      "tid": "1",
      "name": "checker()",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "y": 100,
        "x": 50
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
              "pc": "67"
            }
          ]
        },
        "1": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "checker()",
              "pc": "37",
              "callType": "process",
              "vars": {
                "xy": [
                  50,
                  100
                ]
              }
            },
            {
              "method": "getXY()",
              "pc": "29",
              "callType": "normal",
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
              "method": "setX(50)",
              "vars": {
                "a": 50
              },
              "pc": "17"
            }
          ]
        }
      },
      "tid": "1",
      "name": "checker()",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "y": 100,
        "x": 50
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
              "pc": "67"
            }
          ]
        },
        "1": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "checker()",
              "pc": "37",
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
              "method": "setX(50)",
              "vars": {
                "a": 50
              },
              "pc": "17"
            }
          ]
        }
      },
      "tid": "1",
      "name": "checker()",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "y": 100,
        "x": 50
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
              "pc": "67"
            }
          ]
        },
        "1": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "checker()",
              "pc": "37",
              "callType": "process",
              "vars": {
                "xy": [
                  50,
                  100
                ]
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
              "callType": "process",
              "method": "setX(50)",
              "vars": {
                "a": 50
              },
              "pc": "17"
            }
          ]
        }
      },
      "tid": "1",
      "name": "checker()",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "y": 100,
        "x": 50
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
              "pc": "67"
            }
          ]
        },
        "1": {
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "checker()",
              "pc": "37",
              "callType": "process",
              "vars": {
                "xy": [
                  50,
                  100
                ]
              }
            }
          ],
          "tid": "1",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 1
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
              "method": "setX(50)",
              "vars": {
                "a": 50
              },
              "pc": "17"
            }
          ]
        }
      },
      "tid": "1",
      "name": "checker()",
      "macroStepIdx": 0
    },
    {
      "duration": 13,
      "sharedValues": {
        "y": 100,
        "x": 50
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
              "pc": "67"
            }
          ]
        },
        "1": {
          "fullStatus": "running atomic read-only",
          "status": "running",
          "callStack": [
            {
              "method": "checker()",
              "pc": "37",
              "callType": "process",
              "vars": {
                "xy": [
                  50,
                  100
                ]
              }
            }
          ],
          "tid": "1",
          "readonly": 1,
          "interruptLevel": 0,
          "atomic": 1
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
              "method": "setX(50)",
              "vars": {
                "a": 50
              },
              "pc": "17"
            }
          ]
        }
      },
      "tid": "1",
      "name": "checker()",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "y": 100,
        "x": 50
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
              "pc": "67"
            }
          ]
        },
        "1": {
          "fullStatus": "running atomic read-only",
          "status": "running",
          "callStack": [
            {
              "method": "checker()",
              "pc": "37",
              "callType": "process",
              "vars": {}
            }
          ],
          "tid": "1",
          "readonly": 1,
          "interruptLevel": 0,
          "atomic": 1
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
              "method": "setX(50)",
              "vars": {
                "a": 50
              },
              "pc": "17"
            }
          ]
        }
      },
      "tid": "1",
      "name": "checker()",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "y": 100,
        "x": 50
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
              "pc": "67"
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
          "failure": "Harmony assertion failed: [50, 100]",
          "tid": "1",
          "callStack": [
            {
              "callType": "process",
              "method": "checker()",
              "vars": {},
              "pc": "53"
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
              "method": "setX(50)",
              "vars": {
                "a": 50
              },
              "pc": "17"
            }
          ]
        }
      },
      "tid": "1",
      "name": "checker()",
      "macroStepIdx": 5
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
      "sliceIdx": 0,
      "time": 2,
      "pc": 2,
      "npc": 3
    },
    {
      "sliceIdx": 0,
      "time": 3,
      "pc": 3,
      "npc": 4
    },
    {
      "sliceIdx": 0,
      "time": 4,
      "pc": 4,
      "npc": 5
    },
    {
      "sliceIdx": 0,
      "time": 5,
      "pc": 5,
      "npc": 6
    },
    {
      "sliceIdx": 0,
      "time": 6,
      "pc": 6,
      "npc": 7
    },
    {
      "sliceIdx": 0,
      "time": 7,
      "pc": 7,
      "npc": 8
    },
    {
      "sliceIdx": 0,
      "time": 8,
      "pc": 8,
      "npc": 9
    },
    {
      "sliceIdx": 0,
      "time": 9,
      "pc": 9,
      "npc": 10
    },
    {
      "sliceIdx": 0,
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
      "npc": 57
    },
    {
      "sliceIdx": 2,
      "time": 14,
      "pc": 57,
      "npc": 58
    },
    {
      "sliceIdx": 2,
      "time": 15,
      "pc": 58,
      "npc": 59
    },
    {
      "sliceIdx": 2,
      "time": 16,
      "pc": 59,
      "npc": 60
    },
    {
      "sliceIdx": 2,
      "time": 17,
      "pc": 60,
      "npc": 61
    },
    {
      "sliceIdx": 2,
      "time": 18,
      "pc": 61,
      "npc": 62
    },
    {
      "sliceIdx": 2,
      "time": 19,
      "pc": 62,
      "npc": 63
    },
    {
      "sliceIdx": 2,
      "time": 20,
      "pc": 63,
      "npc": 64
    },
    {
      "sliceIdx": 2,
      "time": 21,
      "pc": 64,
      "npc": 65
    },
    {
      "sliceIdx": 2,
      "time": 22,
      "pc": 65,
      "npc": 66
    },
    {
      "sliceIdx": 2,
      "time": 23,
      "pc": 66,
      "npc": 67
    },
    {
      "sliceIdx": 3,
      "time": 24,
      "pc": 67,
      "npc": 67
    },
    {
      "pc": 14,
      "npc": 15,
      "sliceIdx": 4,
      "time": 25
    },
    {
      "sliceIdx": 4,
      "time": 26,
      "pc": 15,
      "npc": 16
    },
    {
      "pc": 16,
      "npc": 17,
      "sliceIdx": 5,
      "time": 27
    },
    {
      "pc": 34,
      "npc": 35,
      "sliceIdx": 6,
      "time": 28
    },
    {
      "sliceIdx": 6,
      "time": 29,
      "pc": 35,
      "npc": 36
    },
    {
      "sliceIdx": 7,
      "time": 30,
      "pc": 36,
      "npc": 24
    },
    {
      "sliceIdx": 7,
      "time": 31,
      "pc": 24,
      "npc": 25
    },
    {
      "sliceIdx": 7,
      "time": 32,
      "pc": 25,
      "npc": 26
    },
    {
      "pc": 26,
      "npc": 27,
      "sliceIdx": 8,
      "time": 33
    },
    {
      "sliceIdx": 8,
      "time": 34,
      "pc": 27,
      "npc": 28
    },
    {
      "pc": 28,
      "npc": 29,
      "sliceIdx": 9,
      "time": 35
    },
    {
      "sliceIdx": 9,
      "time": 36,
      "pc": 29,
      "npc": 30
    },
    {
      "sliceIdx": 10,
      "time": 37,
      "pc": 30,
      "npc": 31
    },
    {
      "sliceIdx": 11,
      "time": 38,
      "pc": 31,
      "npc": 37
    },
    {
      "sliceIdx": 12,
      "time": 39,
      "pc": 37,
      "npc": 38
    },
    {
      "sliceIdx": 13,
      "time": 40,
      "pc": 38,
      "npc": 39
    },
    {
      "sliceIdx": 14,
      "time": 41,
      "pc": 39,
      "npc": 40
    },
    {
      "sliceIdx": 14,
      "time": 42,
      "pc": 40,
      "npc": 41
    },
    {
      "sliceIdx": 14,
      "time": 43,
      "pc": 41,
      "npc": 42
    },
    {
      "sliceIdx": 14,
      "time": 44,
      "pc": 42,
      "npc": 43
    },
    {
      "sliceIdx": 14,
      "time": 45,
      "pc": 43,
      "npc": 44
    },
    {
      "sliceIdx": 14,
      "time": 46,
      "pc": 44,
      "npc": 45
    },
    {
      "sliceIdx": 14,
      "time": 47,
      "pc": 45,
      "npc": 46
    },
    {
      "sliceIdx": 14,
      "time": 48,
      "pc": 46,
      "npc": 47
    },
    {
      "sliceIdx": 14,
      "time": 49,
      "pc": 47,
      "npc": 48
    },
    {
      "sliceIdx": 14,
      "time": 50,
      "pc": 48,
      "npc": 49
    },
    {
      "sliceIdx": 14,
      "time": 51,
      "pc": 49,
      "npc": 50
    },
    {
      "sliceIdx": 14,
      "time": 52,
      "pc": 50,
      "npc": 51
    },
    {
      "sliceIdx": 14,
      "time": 53,
      "pc": 51,
      "npc": 52
    },
    {
      "sliceIdx": 15,
      "time": 54,
      "pc": 52,
      "npc": 53
    },
    {
      "sliceIdx": 16,
      "time": 55,
      "pc": 53,
      "npc": 53
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
      "name": "setX(50)",
      "duration": 2,
      "startSliceIdx": 4,
      "lastSliceIdx": 5
    },
    {
      "tid": "2",
      "name": "setX(50)",
      "duration": 1,
      "startSliceIdx": 5,
      "lastSliceIdx": 6
    },
    {
      "tid": "1",
      "name": "checker()",
      "duration": 5,
      "startSliceIdx": 6,
      "lastSliceIdx": 8
    },
    {
      "tid": "1",
      "name": "checker()",
      "duration": 2,
      "startSliceIdx": 8,
      "lastSliceIdx": 9
    },
    {
      "tid": "1",
      "name": "checker()",
      "duration": 21,
      "startSliceIdx": 9,
      "lastSliceIdx": 17
    }
  ],
  "idToThreadName": {
    "0": "__init__()",
    "1": "checker()",
    "2": "setX(50)"
  },
  "executedCode": [
    {
      "initialPc": 0,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "1",
      "sourceCode": "x, y = 0, 100",
      "assembly": [
        {
          "assembly": "Frame __init__()",
          "explain": "start of method __init__"
        }
      ]
    },
    {
      "initialPc": 1,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "1",
      "sourceCode": "x, y = 0, 100",
      "assembly": [
        {
          "assembly": "Push ?x",
          "explain": "push constant ?x"
        }
      ]
    },
    {
      "initialPc": 2,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "1",
      "sourceCode": "x, y = 0, 100",
      "assembly": [
        {
          "assembly": "Push ?y",
          "explain": "push constant ?y"
        }
      ]
    },
    {
      "initialPc": 3,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "1",
      "sourceCode": "x, y = 0, 100",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "building a tuple: push constant ()"
        }
      ]
    },
    {
      "initialPc": 4,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "1",
      "sourceCode": "x, y = 0, 100",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 5,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "1",
      "sourceCode": "x, y = 0, 100",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 6,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "1",
      "sourceCode": "x, y = 0, 100",
      "assembly": [
        {
          "assembly": "Push 100",
          "explain": "push constant 100"
        }
      ]
    },
    {
      "initialPc": 7,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "1",
      "sourceCode": "x, y = 0, 100",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 8,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "1",
      "sourceCode": "x, y = 0, 100",
      "assembly": [
        {
          "assembly": "Split 2",
          "explain": "splits a tuple value into its elements"
        }
      ]
    },
    {
      "initialPc": 9,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "1",
      "sourceCode": "x, y = 0, 100",
      "assembly": [
        {
          "assembly": "Move 3",
          "explain": "move stack element to top"
        }
      ]
    },
    {
      "initialPc": 10,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "1",
      "sourceCode": "x, y = 0, 100",
      "assembly": [
        {
          "assembly": "Move 2",
          "explain": "move stack element to top"
        }
      ]
    },
    {
      "initialPc": 11,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "1",
      "sourceCode": "x, y = 0, 100",
      "assembly": [
        {
          "assembly": "Store",
          "explain": "pop a value and an address and store the value at the address"
        }
      ]
    },
    {
      "initialPc": 12,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "1",
      "sourceCode": "x, y = 0, 100",
      "assembly": [
        {
          "assembly": "Store",
          "explain": "pop a value and an address and store the value at the address"
        }
      ]
    },
    {
      "initialPc": 13,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "3",
      "sourceCode": "def setX(a):",
      "assembly": [
        {
          "assembly": "Jump 57",
          "explain": "jump over method definition: set program counter to 57"
        }
      ]
    },
    {
      "initialPc": 14,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "3",
      "sourceCode": "def setX(a):",
      "assembly": [
        {
          "assembly": "Frame setX(a)",
          "explain": "start of method setX"
        }
      ]
    },
    {
      "initialPc": 15,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "4",
      "sourceCode": "    x = a",
      "assembly": [
        {
          "assembly": "LoadVar a",
          "explain": "push the value of a"
        }
      ]
    },
    {
      "initialPc": 16,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "4",
      "sourceCode": "    x = a",
      "assembly": [
        {
          "assembly": "Store x",
          "explain": "pop a value and store it in shared variable x"
        }
      ]
    },
    {
      "initialPc": 17,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "5",
      "sourceCode": "    y = 100 - a",
      "assembly": [
        {
          "assembly": "Push 100",
          "explain": "push constant 100"
        }
      ]
    },
    {
      "initialPc": 18,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "5",
      "sourceCode": "    y = 100 - a",
      "assembly": [
        {
          "assembly": "LoadVar a",
          "explain": "push the value of a"
        }
      ]
    },
    {
      "initialPc": 19,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "5",
      "sourceCode": "    y = 100 - a",
      "assembly": [
        {
          "assembly": "DelVar a",
          "explain": "delete method variable a"
        }
      ]
    },
    {
      "initialPc": 20,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "5",
      "sourceCode": "    y = 100 - a",
      "assembly": [
        {
          "assembly": "2-ary -",
          "explain": "pop 2 values and push the result of applying -"
        }
      ]
    },
    {
      "initialPc": 21,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "5",
      "sourceCode": "    y = 100 - a",
      "assembly": [
        {
          "assembly": "Store y",
          "explain": "pop a value and store it in shared variable y"
        }
      ]
    },
    {
      "initialPc": 22,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "3",
      "sourceCode": "def setX(a):",
      "assembly": [
        {
          "assembly": "ReturnOp(result. None)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 23,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "7",
      "sourceCode": "def getXY() returns xy:",
      "assembly": [
        {
          "assembly": "Jump 57",
          "explain": "jump over method definition: set program counter to 57"
        }
      ]
    },
    {
      "initialPc": 24,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "7",
      "sourceCode": "def getXY() returns xy:",
      "assembly": [
        {
          "assembly": "Frame getXY()",
          "explain": "start of method getXY"
        }
      ]
    },
    {
      "initialPc": 25,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "8",
      "sourceCode": "    xy = [x, y]",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "building a tuple: push constant ()"
        }
      ]
    },
    {
      "initialPc": 26,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "8",
      "sourceCode": "    xy = [x, y]",
      "assembly": [
        {
          "assembly": "Load x",
          "explain": "push value of shared variable x"
        }
      ]
    },
    {
      "initialPc": 27,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "8",
      "sourceCode": "    xy = [x, y]",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 28,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "8",
      "sourceCode": "    xy = [x, y]",
      "assembly": [
        {
          "assembly": "Load y",
          "explain": "push value of shared variable y"
        }
      ]
    },
    {
      "initialPc": 29,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "8",
      "sourceCode": "    xy = [x, y]",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 30,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "8",
      "sourceCode": "    xy = [x, y]",
      "assembly": [
        {
          "assembly": "StoreVar xy",
          "explain": "pop a value and store in xy"
        }
      ]
    },
    {
      "initialPc": 31,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "7",
      "sourceCode": "def getXY() returns xy:",
      "assembly": [
        {
          "assembly": "ReturnOp(xy)",
          "explain": "restore caller method state and push xy"
        }
      ]
    },
    {
      "initialPc": 32,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "7",
      "sourceCode": "def getXY() returns xy:",
      "assembly": [
        {
          "assembly": "DelVar xy",
          "explain": "delete method variable xy"
        }
      ]
    },
    {
      "initialPc": 33,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "10",
      "sourceCode": "def checker():",
      "assembly": [
        {
          "assembly": "Jump 57",
          "explain": "jump over method definition: set program counter to 57"
        }
      ]
    },
    {
      "initialPc": 34,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "10",
      "sourceCode": "def checker():",
      "assembly": [
        {
          "assembly": "Frame checker()",
          "explain": "start of method checker"
        }
      ]
    },
    {
      "initialPc": 35,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "11",
      "sourceCode": "    let xy = getXY():",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "push constant ()"
        }
      ]
    },
    {
      "initialPc": 36,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "11",
      "sourceCode": "    let xy = getXY():",
      "assembly": [
        {
          "assembly": "Apply PC(24)",
          "explain": "call method PC(24)"
        }
      ]
    },
    {
      "initialPc": 37,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "11",
      "sourceCode": "    let xy = getXY():",
      "assembly": [
        {
          "assembly": "StoreVar xy",
          "explain": "pop a value and store in xy"
        }
      ]
    },
    {
      "initialPc": 38,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "12",
      "sourceCode": "        assert (xy[0] + xy[1]) == 100, xy",
      "assembly": [
        {
          "assembly": "AtomicInc(lazy)",
          "explain": "increment atomic counter of context; thread runs uninterrupted if larger than 0"
        }
      ]
    },
    {
      "initialPc": 39,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "12",
      "sourceCode": "        assert (xy[0] + xy[1]) == 100, xy",
      "assembly": [
        {
          "assembly": "ReadonlyInc",
          "explain": "increment readonly counter of context; thread cannot mutate shared variables if > 0"
        }
      ]
    },
    {
      "initialPc": 40,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "12",
      "sourceCode": "        assert (xy[0] + xy[1]) == 100, xy",
      "assembly": [
        {
          "assembly": "LoadVar xy",
          "explain": "push the value of xy"
        }
      ]
    },
    {
      "initialPc": 41,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "12",
      "sourceCode": "        assert (xy[0] + xy[1]) == 100, xy",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 42,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "12",
      "sourceCode": "        assert (xy[0] + xy[1]) == 100, xy",
      "assembly": [
        {
          "assembly": "2-ary Closure",
          "explain": "pop 2 values and push the result of applying Closure"
        }
      ]
    },
    {
      "initialPc": 43,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "12",
      "sourceCode": "        assert (xy[0] + xy[1]) == 100, xy",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 44,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "12",
      "sourceCode": "        assert (xy[0] + xy[1]) == 100, xy",
      "assembly": [
        {
          "assembly": "LoadVar xy",
          "explain": "push the value of xy"
        }
      ]
    },
    {
      "initialPc": 45,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "12",
      "sourceCode": "        assert (xy[0] + xy[1]) == 100, xy",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 46,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "12",
      "sourceCode": "        assert (xy[0] + xy[1]) == 100, xy",
      "assembly": [
        {
          "assembly": "2-ary Closure",
          "explain": "pop 2 values and push the result of applying Closure"
        }
      ]
    },
    {
      "initialPc": 47,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "12",
      "sourceCode": "        assert (xy[0] + xy[1]) == 100, xy",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 48,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "12",
      "sourceCode": "        assert (xy[0] + xy[1]) == 100, xy",
      "assembly": [
        {
          "assembly": "2-ary +",
          "explain": "pop 2 values and push the result of applying +"
        }
      ]
    },
    {
      "initialPc": 49,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "12",
      "sourceCode": "        assert (xy[0] + xy[1]) == 100, xy",
      "assembly": [
        {
          "assembly": "Push 100",
          "explain": "push constant 100"
        }
      ]
    },
    {
      "initialPc": 50,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "12",
      "sourceCode": "        assert (xy[0] + xy[1]) == 100, xy",
      "assembly": [
        {
          "assembly": "2-ary ==",
          "explain": "pop 2 values and push the result of applying =="
        }
      ]
    },
    {
      "initialPc": 51,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "12",
      "sourceCode": "        assert (xy[0] + xy[1]) == 100, xy",
      "assembly": [
        {
          "assembly": "LoadVar xy",
          "explain": "push the value of xy"
        }
      ]
    },
    {
      "initialPc": 52,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "12",
      "sourceCode": "        assert (xy[0] + xy[1]) == 100, xy",
      "assembly": [
        {
          "assembly": "DelVar xy",
          "explain": "delete method variable xy"
        }
      ]
    },
    {
      "initialPc": 53,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "12",
      "sourceCode": "        assert (xy[0] + xy[1]) == 100, xy",
      "assembly": [
        {
          "assembly": "Assert2",
          "explain": "pop a value and a condition and raise exception if condition is false"
        }
      ]
    },
    {
      "initialPc": 54,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "12",
      "sourceCode": "        assert (xy[0] + xy[1]) == 100, xy",
      "assembly": [
        {
          "assembly": "ReadonlyDec",
          "explain": "decrement readonly counter of context"
        }
      ]
    },
    {
      "initialPc": 55,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "12",
      "sourceCode": "        assert (xy[0] + xy[1]) == 100, xy",
      "assembly": [
        {
          "assembly": "AtomicDec",
          "explain": "decrement atomic counter of context"
        }
      ]
    },
    {
      "initialPc": 56,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "10",
      "sourceCode": "def checker():",
      "assembly": [
        {
          "assembly": "ReturnOp(result. None)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 57,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "14",
      "sourceCode": "spawn checker()",
      "assembly": [
        {
          "assembly": "Push ?PC(34)",
          "explain": "push constant ?PC(34)"
        }
      ]
    },
    {
      "initialPc": 58,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "14",
      "sourceCode": "spawn checker()",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "push constant ()"
        }
      ]
    },
    {
      "initialPc": 59,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "14",
      "sourceCode": "spawn checker()",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 60,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "14",
      "sourceCode": "spawn checker()",
      "assembly": [
        {
          "assembly": "Push {:}",
          "explain": "push constant {:}"
        }
      ]
    },
    {
      "initialPc": 61,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "14",
      "sourceCode": "spawn checker()",
      "assembly": [
        {
          "assembly": "Spawn",
          "explain": "pop thread-local state, argument, and pc and spawn a new thread"
        }
      ]
    },
    {
      "initialPc": 62,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "15",
      "sourceCode": "spawn setX(50)",
      "assembly": [
        {
          "assembly": "Push ?PC(14)",
          "explain": "push constant ?PC(14)"
        }
      ]
    },
    {
      "initialPc": 63,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "15",
      "sourceCode": "spawn setX(50)",
      "assembly": [
        {
          "assembly": "Push 50",
          "explain": "push constant 50"
        }
      ]
    },
    {
      "initialPc": 64,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "15",
      "sourceCode": "spawn setX(50)",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 65,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "15",
      "sourceCode": "spawn setX(50)",
      "assembly": [
        {
          "assembly": "Push {:}",
          "explain": "push constant {:}"
        }
      ]
    },
    {
      "initialPc": 66,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "15",
      "sourceCode": "spawn setX(50)",
      "assembly": [
        {
          "assembly": "Spawn",
          "explain": "pop thread-local state, argument, and pc and spawn a new thread"
        }
      ]
    },
    {
      "initialPc": 67,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "1",
      "sourceCode": "x, y = 0, 100",
      "assembly": [
        {
          "assembly": "ReturnOp(result. None)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 68,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/xy.hny",
      "line": "1",
      "sourceCode": "x, y = 0, 100",
      "assembly": [
        {
          "assembly": "DelVar result",
          "explain": "delete method variable result"
        }
      ]
    }
  ]
}