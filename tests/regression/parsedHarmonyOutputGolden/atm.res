{
  "state": "Issues found",
  "issue": "Safety violation",
  "slices": [
    {
      "duration": 24,
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
      "duration": 5,
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
              "vars": {
                "$accu987": []
              }
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
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "__init__()",
              "pc": "1",
              "callType": "process",
              "vars": {
                "$accu987": [],
                "i": 1
              }
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
              "vars": {
                "$accu987": []
              }
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
      "sharedValues": {},
      "idToStackTrace": {
        "0": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "__init__()",
              "pc": "1220",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "Lock()",
              "pc": "931",
              "callType": "normal",
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
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "__init__()",
              "pc": "1220",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "Lock()",
              "pc": "935",
              "callType": "normal",
              "vars": {}
            },
            {
              "method": "BinSema(False)",
              "pc": "912",
              "callType": "normal",
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
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "__init__()",
              "pc": "1220",
              "callType": "process",
              "vars": {
                "initial": false
              }
            },
            {
              "method": "Lock()",
              "pc": "935",
              "callType": "normal",
              "vars": {}
            },
            {
              "method": "BinSema(False)",
              "pc": "912",
              "callType": "normal",
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
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "__init__()",
              "pc": "1220",
              "callType": "process",
              "vars": {
                "initial": false
              }
            },
            {
              "method": "Lock()",
              "pc": "935",
              "callType": "normal",
              "vars": {}
            },
            {
              "method": "BinSema(False)",
              "pc": "912",
              "callType": "normal",
              "vars": {}
            }
          ],
          "tid": "0",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 2
        }
      },
      "tid": "0",
      "name": "__init__()",
      "macroStepIdx": 0
    },
    {
      "duration": 9,
      "sharedValues": {},
      "idToStackTrace": {
        "0": {
          "fullStatus": "running atomic read-only",
          "status": "running",
          "callStack": [
            {
              "method": "__init__()",
              "pc": "1220",
              "callType": "process",
              "vars": {
                "initial": false
              }
            },
            {
              "method": "Lock()",
              "pc": "935",
              "callType": "normal",
              "vars": {}
            },
            {
              "method": "BinSema(False)",
              "pc": "912",
              "callType": "normal",
              "vars": {}
            }
          ],
          "tid": "0",
          "readonly": 1,
          "interruptLevel": 0,
          "atomic": 2
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
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "__init__()",
              "pc": "1220",
              "callType": "process",
              "vars": {
                "initial": false
              }
            },
            {
              "method": "Lock()",
              "pc": "935",
              "callType": "normal",
              "vars": {}
            },
            {
              "method": "BinSema(False)",
              "pc": "912",
              "callType": "normal",
              "vars": {}
            }
          ],
          "tid": "0",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 2
        }
      },
      "tid": "0",
      "name": "__init__()",
      "macroStepIdx": 0
    },
    {
      "duration": 2,
      "sharedValues": {},
      "idToStackTrace": {
        "0": {
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "__init__()",
              "pc": "1220",
              "callType": "process",
              "vars": {
                "initial": false
              }
            },
            {
              "method": "Lock()",
              "pc": "935",
              "callType": "normal",
              "vars": {}
            },
            {
              "method": "BinSema(False)",
              "pc": "912",
              "callType": "normal",
              "vars": {}
            }
          ],
          "tid": "0",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 1
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
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "__init__()",
              "pc": "1220",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "Lock()",
              "pc": "935",
              "callType": "normal",
              "vars": {}
            },
            {
              "method": "BinSema(False)",
              "pc": "912",
              "callType": "normal",
              "vars": {}
            }
          ],
          "tid": "0",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 1
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
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "__init__()",
              "pc": "1220",
              "callType": "process",
              "vars": {
                "sema": false
              }
            },
            {
              "method": "Lock()",
              "pc": "935",
              "callType": "normal",
              "vars": {}
            },
            {
              "method": "BinSema(False)",
              "pc": "912",
              "callType": "normal",
              "vars": {}
            }
          ],
          "tid": "0",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 1
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
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "__init__()",
              "pc": "1220",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "Lock()",
              "pc": "935",
              "callType": "normal",
              "vars": {}
            }
          ],
          "tid": "0",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 1
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
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "__init__()",
              "pc": "1220",
              "callType": "process",
              "vars": {
                "result": false
              }
            },
            {
              "method": "Lock()",
              "pc": "935",
              "callType": "normal",
              "vars": {}
            }
          ],
          "tid": "0",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 1
        }
      },
      "tid": "0",
      "name": "__init__()",
      "macroStepIdx": 0
    },
    {
      "duration": 6,
      "sharedValues": {},
      "idToStackTrace": {
        "0": {
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "__init__()",
              "pc": "1220",
              "callType": "process",
              "vars": {}
            }
          ],
          "tid": "0",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 1
        }
      },
      "tid": "0",
      "name": "__init__()",
      "macroStepIdx": 0
    },
    {
      "duration": 3,
      "sharedValues": {},
      "idToStackTrace": {
        "0": {
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "__init__()",
              "pc": "1226",
              "callType": "process",
              "vars": {}
            }
          ],
          "tid": "0",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 1,
          "chosen": 1
        }
      },
      "tid": "0",
      "name": "__init__()",
      "macroStepIdx": 0
    },
    {
      "duration": 2,
      "sharedValues": {},
      "idToStackTrace": {
        "0": {
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "__init__()",
              "pc": "1226",
              "callType": "process",
              "vars": {
                "$accu987": [
                  {
                    "\"balance\"": 1,
                    "\"lock\"": false
                  }
                ]
              }
            }
          ],
          "tid": "0",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 1
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
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "__init__()",
              "pc": "1226",
              "callType": "process",
              "vars": {
                "$accu987": [
                  {
                    "\"balance\"": 1,
                    "\"lock\"": false
                  }
                ],
                "i": 2
              }
            }
          ],
          "tid": "0",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 1
        }
      },
      "tid": "0",
      "name": "__init__()",
      "macroStepIdx": 0
    },
    {
      "duration": 3,
      "sharedValues": {},
      "idToStackTrace": {
        "0": {
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "__init__()",
              "pc": "1226",
              "callType": "process",
              "vars": {
                "$accu987": [
                  {
                    "\"balance\"": 1,
                    "\"lock\"": false
                  }
                ]
              }
            }
          ],
          "tid": "0",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 1
        }
      },
      "tid": "0",
      "name": "__init__()",
      "macroStepIdx": 0
    },
    {
      "duration": 4,
      "sharedValues": {},
      "idToStackTrace": {
        "0": {
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "__init__()",
              "pc": "1226",
              "callType": "process",
              "vars": {}
            }
          ],
          "tid": "0",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 1
        }
      },
      "tid": "0",
      "name": "__init__()",
      "macroStepIdx": 0
    },
    {
      "duration": 4,
      "sharedValues": {},
      "idToStackTrace": {
        "0": {
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "__init__()",
              "pc": "1220",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "Lock()",
              "pc": "931",
              "callType": "normal",
              "vars": {}
            }
          ],
          "tid": "0",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 1
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
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "__init__()",
              "pc": "1220",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "Lock()",
              "pc": "935",
              "callType": "normal",
              "vars": {}
            },
            {
              "method": "BinSema(False)",
              "pc": "912",
              "callType": "normal",
              "vars": {}
            }
          ],
          "tid": "0",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 1
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
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "__init__()",
              "pc": "1220",
              "callType": "process",
              "vars": {
                "initial": false
              }
            },
            {
              "method": "Lock()",
              "pc": "935",
              "callType": "normal",
              "vars": {}
            },
            {
              "method": "BinSema(False)",
              "pc": "912",
              "callType": "normal",
              "vars": {}
            }
          ],
          "tid": "0",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 1
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
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "__init__()",
              "pc": "1220",
              "callType": "process",
              "vars": {
                "initial": false
              }
            },
            {
              "method": "Lock()",
              "pc": "935",
              "callType": "normal",
              "vars": {}
            },
            {
              "method": "BinSema(False)",
              "pc": "912",
              "callType": "normal",
              "vars": {}
            }
          ],
          "tid": "0",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 2
        }
      },
      "tid": "0",
      "name": "__init__()",
      "macroStepIdx": 0
    },
    {
      "duration": 9,
      "sharedValues": {},
      "idToStackTrace": {
        "0": {
          "fullStatus": "running atomic read-only",
          "status": "running",
          "callStack": [
            {
              "method": "__init__()",
              "pc": "1220",
              "callType": "process",
              "vars": {
                "initial": false
              }
            },
            {
              "method": "Lock()",
              "pc": "935",
              "callType": "normal",
              "vars": {}
            },
            {
              "method": "BinSema(False)",
              "pc": "912",
              "callType": "normal",
              "vars": {}
            }
          ],
          "tid": "0",
          "readonly": 1,
          "interruptLevel": 0,
          "atomic": 2
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
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "__init__()",
              "pc": "1220",
              "callType": "process",
              "vars": {
                "initial": false
              }
            },
            {
              "method": "Lock()",
              "pc": "935",
              "callType": "normal",
              "vars": {}
            },
            {
              "method": "BinSema(False)",
              "pc": "912",
              "callType": "normal",
              "vars": {}
            }
          ],
          "tid": "0",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 2
        }
      },
      "tid": "0",
      "name": "__init__()",
      "macroStepIdx": 0
    },
    {
      "duration": 2,
      "sharedValues": {},
      "idToStackTrace": {
        "0": {
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "__init__()",
              "pc": "1220",
              "callType": "process",
              "vars": {
                "initial": false
              }
            },
            {
              "method": "Lock()",
              "pc": "935",
              "callType": "normal",
              "vars": {}
            },
            {
              "method": "BinSema(False)",
              "pc": "912",
              "callType": "normal",
              "vars": {}
            }
          ],
          "tid": "0",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 1
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
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "__init__()",
              "pc": "1220",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "Lock()",
              "pc": "935",
              "callType": "normal",
              "vars": {}
            },
            {
              "method": "BinSema(False)",
              "pc": "912",
              "callType": "normal",
              "vars": {}
            }
          ],
          "tid": "0",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 1
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
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "__init__()",
              "pc": "1220",
              "callType": "process",
              "vars": {
                "sema": false
              }
            },
            {
              "method": "Lock()",
              "pc": "935",
              "callType": "normal",
              "vars": {}
            },
            {
              "method": "BinSema(False)",
              "pc": "912",
              "callType": "normal",
              "vars": {}
            }
          ],
          "tid": "0",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 1
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
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "__init__()",
              "pc": "1220",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "Lock()",
              "pc": "935",
              "callType": "normal",
              "vars": {}
            }
          ],
          "tid": "0",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 1
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
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "__init__()",
              "pc": "1220",
              "callType": "process",
              "vars": {
                "result": false
              }
            },
            {
              "method": "Lock()",
              "pc": "935",
              "callType": "normal",
              "vars": {}
            }
          ],
          "tid": "0",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 1
        }
      },
      "tid": "0",
      "name": "__init__()",
      "macroStepIdx": 0
    },
    {
      "duration": 6,
      "sharedValues": {},
      "idToStackTrace": {
        "0": {
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "__init__()",
              "pc": "1220",
              "callType": "process",
              "vars": {}
            }
          ],
          "tid": "0",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 1
        }
      },
      "tid": "0",
      "name": "__init__()",
      "macroStepIdx": 1
    },
    {
      "duration": 3,
      "sharedValues": {},
      "idToStackTrace": {
        "0": {
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "__init__()",
              "pc": "1226",
              "callType": "process",
              "vars": {}
            }
          ],
          "tid": "0",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 1,
          "chosen": 0
        }
      },
      "tid": "0",
      "name": "__init__()",
      "macroStepIdx": 0
    },
    {
      "duration": 6,
      "sharedValues": {},
      "idToStackTrace": {
        "0": {
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "__init__()",
              "pc": "1226",
              "callType": "process",
              "vars": {
                "$accu987": [
                  {
                    "\"balance\"": 1,
                    "\"lock\"": false
                  },
                  {
                    "\"balance\"": 0,
                    "\"lock\"": false
                  }
                ]
              }
            }
          ],
          "tid": "0",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 1
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
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "__init__()",
              "pc": "1226",
              "callType": "process",
              "vars": {}
            }
          ],
          "tid": "0",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 1
        }
      },
      "tid": "0",
      "name": "__init__()",
      "macroStepIdx": 0
    },
    {
      "duration": 8,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
        ]
      },
      "idToStackTrace": {
        "0": {
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "__init__()",
              "pc": "1226",
              "callType": "process",
              "vars": {}
            }
          ],
          "tid": "0",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 1
        }
      },
      "tid": "0",
      "name": "__init__()",
      "macroStepIdx": 0
    },
    {
      "duration": 5,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
        ]
      },
      "idToStackTrace": {
        "0": {
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "__init__()",
              "pc": "1226",
              "callType": "process",
              "vars": {
                "i": 1
              }
            }
          ],
          "tid": "0",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 1
        }
      },
      "tid": "0",
      "name": "__init__()",
      "macroStepIdx": 0
    },
    {
      "duration": 7,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
        ]
      },
      "idToStackTrace": {
        "0": {
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "__init__()",
              "pc": "1226",
              "callType": "process",
              "vars": {}
            }
          ],
          "tid": "0",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 1
        }
      },
      "tid": "0",
      "name": "__init__()",
      "macroStepIdx": 2
    },
    {
      "duration": 5,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
        ]
      },
      "idToStackTrace": {
        "0": {
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "__init__()",
              "pc": "1380",
              "callType": "process",
              "vars": {}
            }
          ],
          "tid": "0",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 1,
          "chosen": 0
        }
      },
      "tid": "0",
      "name": "__init__()",
      "macroStepIdx": 3
    },
    {
      "duration": 6,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
        ]
      },
      "idToStackTrace": {
        "0": {
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "__init__()",
              "pc": "1385",
              "callType": "process",
              "vars": {}
            }
          ],
          "tid": "0",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 1,
          "chosen": 1
        }
      },
      "tid": "0",
      "name": "__init__()",
      "macroStepIdx": 0
    },
    {
      "duration": 5,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
        ]
      },
      "idToStackTrace": {
        "0": {
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "__init__()",
              "pc": "1385",
              "callType": "process",
              "vars": {
                "i": 2
              }
            }
          ],
          "tid": "0",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 1
        }
      },
      "tid": "0",
      "name": "__init__()",
      "macroStepIdx": 0
    },
    {
      "duration": 7,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
        ]
      },
      "idToStackTrace": {
        "0": {
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "__init__()",
              "pc": "1385",
              "callType": "process",
              "vars": {}
            }
          ],
          "tid": "0",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 1
        }
      },
      "tid": "0",
      "name": "__init__()",
      "macroStepIdx": 4
    },
    {
      "duration": 5,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
        ]
      },
      "idToStackTrace": {
        "0": {
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "__init__()",
              "pc": "1380",
              "callType": "process",
              "vars": {}
            }
          ],
          "tid": "0",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 1,
          "chosen": 0
        }
      },
      "tid": "0",
      "name": "__init__()",
      "macroStepIdx": 5
    },
    {
      "duration": 9,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
        ]
      },
      "idToStackTrace": {
        "0": {
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "__init__()",
              "pc": "1385",
              "callType": "process",
              "vars": {}
            }
          ],
          "tid": "0",
          "readonly": 0,
          "interruptLevel": 0,
          "atomic": 1,
          "chosen": 1
        }
      },
      "tid": "0",
      "name": "__init__()",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        }
      },
      "tid": "0",
      "name": "__init__()",
      "macroStepIdx": 6
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "2": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "customer(2, 0, 1)",
              "pc": "1334",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1,
                "atm": 2
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
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "2": {
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "customer(2, 0, 1)",
              "pc": "1334",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1,
                "atm": 2
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
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "2": {
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "customer(2, 0, 1)",
              "pc": "1334",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1
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
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 5,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "2": {
          "fullStatus": "running atomic read-only",
          "status": "running",
          "callStack": [
            {
              "method": "customer(2, 0, 1)",
              "pc": "1334",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            }
          ],
          "tid": "2",
          "readonly": 1,
          "interruptLevel": 0,
          "atomic": 1
        }
      },
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "2": {
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "customer(2, 0, 1)",
              "pc": "1334",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1
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
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 2,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "2": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "customer(2, 0, 1)",
              "pc": "1334",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1
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
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "2": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "customer(2, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            },
            {
              "method": "atm_check_balance(0)",
              "pc": "1267",
              "callType": "normal",
              "vars": {
                "acct": 0,
                "amount": 1
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
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 6,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "2": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "customer(2, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {
                "acct": 0
              }
            },
            {
              "method": "atm_check_balance(0)",
              "pc": "1267",
              "callType": "normal",
              "vars": {
                "acct": 0,
                "amount": 1
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
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "2": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "customer(2, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            },
            {
              "method": "atm_check_balance(0)",
              "pc": "1274",
              "callType": "normal",
              "vars": {
                "acct": 0
              }
            },
            {
              "method": "acquire(?accounts[0][\"lock\"])",
              "pc": "954",
              "callType": "normal",
              "vars": {
                "acct": 0
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
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(2, 0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1345"
            },
            {
              "callType": "normal",
              "method": "atm_check_balance(0)",
              "vars": {
                "acct": 0
              },
              "pc": "1274"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 7
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(2, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            },
            {
              "method": "atm_check_balance(0)",
              "pc": "1274",
              "callType": "normal",
              "vars": {
                "acct": 0
              }
            },
            {
              "method": "acquire(?accounts[0][\"lock\"])",
              "pc": "956",
              "callType": "normal",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              }
            }
          ]
        }
      },
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 6,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(2, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            },
            {
              "method": "atm_check_balance(0)",
              "pc": "1274",
              "callType": "normal",
              "vars": {
                "acct": 0
              }
            },
            {
              "method": "acquire(?accounts[0][\"lock\"])",
              "pc": "956",
              "callType": "normal",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              }
            }
          ]
        }
      },
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 2,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(2, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            },
            {
              "method": "atm_check_balance(0)",
              "pc": "1274",
              "callType": "normal",
              "vars": {
                "acct": 0
              }
            },
            {
              "method": "acquire(?accounts[0][\"lock\"])",
              "pc": "956",
              "callType": "normal",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              }
            }
          ]
        }
      },
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 2,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(2, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "atm_check_balance(0)",
              "pc": "1274",
              "callType": "normal",
              "vars": {
                "acct": 0
              }
            },
            {
              "method": "acquire(?accounts[0][\"lock\"])",
              "pc": "956",
              "callType": "normal",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              }
            }
          ]
        }
      },
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(2, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "atm_check_balance(0)",
              "pc": "1274",
              "callType": "normal",
              "vars": {
                "acct": 0
              }
            },
            {
              "method": "acquire(?accounts[0][\"lock\"])",
              "pc": "956",
              "callType": "normal",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              }
            }
          ]
        }
      },
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(2, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "atm_check_balance(0)",
              "pc": "1274",
              "callType": "normal",
              "vars": {
                "acct": 0
              }
            },
            {
              "method": "acquire(?accounts[0][\"lock\"])",
              "pc": "956",
              "callType": "normal",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              }
            }
          ]
        }
      },
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 7,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(2, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {
                "acct": 0
              }
            },
            {
              "method": "atm_check_balance(0)",
              "pc": "1274",
              "callType": "normal",
              "vars": {
                "acct": 0
              }
            }
          ]
        }
      },
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 8
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(2, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            },
            {
              "method": "atm_check_balance(0)",
              "pc": "1281",
              "callType": "normal",
              "vars": {
                "acct": 0
              }
            }
          ]
        }
      },
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 3,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(2, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {
                "acct": 0,
                "balance": 1
              }
            },
            {
              "method": "atm_check_balance(0)",
              "pc": "1281",
              "callType": "normal",
              "vars": {
                "acct": 0
              }
            }
          ]
        }
      },
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 4,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(2, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {
                "balance": 1
              }
            },
            {
              "method": "atm_check_balance(0)",
              "pc": "1281",
              "callType": "normal",
              "vars": {
                "acct": 0
              }
            }
          ]
        }
      },
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(2, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            },
            {
              "method": "atm_check_balance(0)",
              "pc": "1289",
              "callType": "normal",
              "vars": {
                "balance": 1
              }
            },
            {
              "method": "release(?accounts[0][\"lock\"])",
              "pc": "973",
              "callType": "normal",
              "vars": {
                "balance": 1
              }
            }
          ]
        }
      },
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(2, 0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1345"
            },
            {
              "callType": "normal",
              "method": "atm_check_balance(0)",
              "vars": {
                "balance": 1
              },
              "pc": "1289"
            },
            {
              "callType": "normal",
              "method": "release(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "974"
            }
          ]
        }
      },
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 9
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(2, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            },
            {
              "method": "atm_check_balance(0)",
              "pc": "1289",
              "callType": "normal",
              "vars": {
                "balance": 1
              }
            },
            {
              "method": "release(?accounts[0][\"lock\"])",
              "pc": "975",
              "callType": "normal",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              }
            }
          ]
        }
      },
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "2": {
          "atomic": 2,
          "fullStatus": "running atomic",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "running",
          "tid": "2",
          "callStack": [
            {
              "method": "customer(2, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            },
            {
              "method": "atm_check_balance(0)",
              "pc": "1289",
              "callType": "normal",
              "vars": {
                "balance": 1
              }
            },
            {
              "method": "release(?accounts[0][\"lock\"])",
              "pc": "975",
              "callType": "normal",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              }
            }
          ]
        }
      },
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 4,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "2": {
          "atomic": 2,
          "fullStatus": "running atomic read-only",
          "interruptLevel": 0,
          "readonly": 1,
          "status": "running",
          "tid": "2",
          "callStack": [
            {
              "method": "customer(2, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            },
            {
              "method": "atm_check_balance(0)",
              "pc": "1289",
              "callType": "normal",
              "vars": {
                "balance": 1
              }
            },
            {
              "method": "release(?accounts[0][\"lock\"])",
              "pc": "975",
              "callType": "normal",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              }
            }
          ]
        }
      },
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "2": {
          "atomic": 2,
          "fullStatus": "running atomic",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "running",
          "tid": "2",
          "callStack": [
            {
              "method": "customer(2, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            },
            {
              "method": "atm_check_balance(0)",
              "pc": "1289",
              "callType": "normal",
              "vars": {
                "balance": 1
              }
            },
            {
              "method": "release(?accounts[0][\"lock\"])",
              "pc": "975",
              "callType": "normal",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              }
            }
          ]
        }
      },
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 2,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(2, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            },
            {
              "method": "atm_check_balance(0)",
              "pc": "1289",
              "callType": "normal",
              "vars": {
                "balance": 1
              }
            },
            {
              "method": "release(?accounts[0][\"lock\"])",
              "pc": "975",
              "callType": "normal",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              }
            }
          ]
        }
      },
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 2,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(2, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "atm_check_balance(0)",
              "pc": "1289",
              "callType": "normal",
              "vars": {
                "balance": 1
              }
            },
            {
              "method": "release(?accounts[0][\"lock\"])",
              "pc": "975",
              "callType": "normal",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              }
            }
          ]
        }
      },
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(2, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "atm_check_balance(0)",
              "pc": "1289",
              "callType": "normal",
              "vars": {
                "balance": 1
              }
            },
            {
              "method": "release(?accounts[0][\"lock\"])",
              "pc": "975",
              "callType": "normal",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              }
            }
          ]
        }
      },
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(2, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "atm_check_balance(0)",
              "pc": "1289",
              "callType": "normal",
              "vars": {
                "balance": 1
              }
            },
            {
              "method": "release(?accounts[0][\"lock\"])",
              "pc": "975",
              "callType": "normal",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              }
            }
          ]
        }
      },
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 2,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(2, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {
                "balance": 1
              }
            },
            {
              "method": "atm_check_balance(0)",
              "pc": "1289",
              "callType": "normal",
              "vars": {
                "balance": 1
              }
            }
          ]
        }
      },
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(2, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            }
          ]
        }
      },
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 3,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(2, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1,
                "bal": 1
              }
            }
          ]
        }
      },
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 5,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(2, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            }
          ]
        }
      },
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 3,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(2, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {
                "amount": 1
              }
            }
          ]
        }
      },
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 2,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(2, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {}
            }
          ]
        }
      },
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(2, 0, 1)",
              "pc": "1359",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "atm_withdraw(0, 1)",
              "pc": "1293",
              "callType": "normal",
              "vars": {}
            }
          ]
        }
      },
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(2, 0, 1)",
              "pc": "1359",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            },
            {
              "method": "atm_withdraw(0, 1)",
              "pc": "1293",
              "callType": "normal",
              "vars": {}
            }
          ]
        }
      },
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(2, 0, 1)",
              "pc": "1359",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            },
            {
              "method": "atm_withdraw(0, 1)",
              "pc": "1293",
              "callType": "normal",
              "vars": {}
            }
          ]
        }
      },
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 5,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(2, 0, 1)",
              "pc": "1359",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            },
            {
              "method": "atm_withdraw(0, 1)",
              "pc": "1293",
              "callType": "normal",
              "vars": {}
            }
          ]
        }
      },
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(2, 0, 1)",
              "pc": "1359",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            },
            {
              "method": "atm_withdraw(0, 1)",
              "pc": "1293",
              "callType": "normal",
              "vars": {}
            }
          ]
        }
      },
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 6,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(2, 0, 1)",
              "pc": "1359",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            },
            {
              "method": "atm_withdraw(0, 1)",
              "pc": "1293",
              "callType": "normal",
              "vars": {}
            }
          ]
        }
      },
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(2, 0, 1)",
              "pc": "1359",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "atm_withdraw(0, 1)",
              "pc": "1308",
              "callType": "normal",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            },
            {
              "method": "acquire(?accounts[0][\"lock\"])",
              "pc": "954",
              "callType": "normal",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            }
          ]
        }
      },
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 10
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "1": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "customer(1, 0, 1)",
              "pc": "1334",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1,
                "atm": 1
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "1": {
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "customer(1, 0, 1)",
              "pc": "1334",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1,
                "atm": 1
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "1": {
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "customer(1, 0, 1)",
              "pc": "1334",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 5,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "1": {
          "fullStatus": "running atomic read-only",
          "status": "running",
          "callStack": [
            {
              "method": "customer(1, 0, 1)",
              "pc": "1334",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "1": {
          "fullStatus": "running atomic",
          "status": "running",
          "callStack": [
            {
              "method": "customer(1, 0, 1)",
              "pc": "1334",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 2,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "1": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "customer(1, 0, 1)",
              "pc": "1334",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "1": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "customer(1, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            },
            {
              "method": "atm_check_balance(0)",
              "pc": "1267",
              "callType": "normal",
              "vars": {
                "acct": 0,
                "amount": 1
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 6,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "1": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "customer(1, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {
                "acct": 0
              }
            },
            {
              "method": "atm_check_balance(0)",
              "pc": "1267",
              "callType": "normal",
              "vars": {
                "acct": 0,
                "amount": 1
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "1": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "customer(1, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            },
            {
              "method": "atm_check_balance(0)",
              "pc": "1274",
              "callType": "normal",
              "vars": {
                "acct": 0
              }
            },
            {
              "method": "acquire(?accounts[0][\"lock\"])",
              "pc": "954",
              "callType": "normal",
              "vars": {
                "acct": 0
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1345"
            },
            {
              "callType": "normal",
              "method": "atm_check_balance(0)",
              "vars": {
                "acct": 0
              },
              "pc": "1274"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 11
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            },
            {
              "method": "atm_check_balance(0)",
              "pc": "1274",
              "callType": "normal",
              "vars": {
                "acct": 0
              }
            },
            {
              "method": "acquire(?accounts[0][\"lock\"])",
              "pc": "956",
              "callType": "normal",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              }
            }
          ]
        },
        "2": {
          "atomic": 0,
          "fullStatus": "blocked",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "blocked",
          "mode": "blocked",
          "tid": "2",
          "callStack": [
            {
              "callType": "process",
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 6,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            },
            {
              "method": "atm_check_balance(0)",
              "pc": "1274",
              "callType": "normal",
              "vars": {
                "acct": 0
              }
            },
            {
              "method": "acquire(?accounts[0][\"lock\"])",
              "pc": "956",
              "callType": "normal",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              }
            }
          ]
        },
        "2": {
          "atomic": 0,
          "fullStatus": "blocked",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "blocked",
          "mode": "blocked",
          "tid": "2",
          "callStack": [
            {
              "callType": "process",
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 2,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            },
            {
              "method": "atm_check_balance(0)",
              "pc": "1274",
              "callType": "normal",
              "vars": {
                "acct": 0
              }
            },
            {
              "method": "acquire(?accounts[0][\"lock\"])",
              "pc": "956",
              "callType": "normal",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              }
            }
          ]
        },
        "2": {
          "atomic": 0,
          "fullStatus": "blocked",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "blocked",
          "mode": "blocked",
          "tid": "2",
          "callStack": [
            {
              "callType": "process",
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 2,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "atm_check_balance(0)",
              "pc": "1274",
              "callType": "normal",
              "vars": {
                "acct": 0
              }
            },
            {
              "method": "acquire(?accounts[0][\"lock\"])",
              "pc": "956",
              "callType": "normal",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              }
            }
          ]
        },
        "2": {
          "atomic": 0,
          "fullStatus": "blocked",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "blocked",
          "mode": "blocked",
          "tid": "2",
          "callStack": [
            {
              "callType": "process",
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "atm_check_balance(0)",
              "pc": "1274",
              "callType": "normal",
              "vars": {
                "acct": 0
              }
            },
            {
              "method": "acquire(?accounts[0][\"lock\"])",
              "pc": "956",
              "callType": "normal",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              }
            }
          ]
        },
        "2": {
          "atomic": 0,
          "fullStatus": "blocked",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "blocked",
          "mode": "blocked",
          "tid": "2",
          "callStack": [
            {
              "callType": "process",
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "atm_check_balance(0)",
              "pc": "1274",
              "callType": "normal",
              "vars": {
                "acct": 0
              }
            },
            {
              "method": "acquire(?accounts[0][\"lock\"])",
              "pc": "956",
              "callType": "normal",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              }
            }
          ]
        },
        "2": {
          "atomic": 0,
          "fullStatus": "blocked",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "blocked",
          "mode": "blocked",
          "tid": "2",
          "callStack": [
            {
              "callType": "process",
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 7,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {
                "acct": 0
              }
            },
            {
              "method": "atm_check_balance(0)",
              "pc": "1274",
              "callType": "normal",
              "vars": {
                "acct": 0
              }
            }
          ]
        },
        "2": {
          "atomic": 0,
          "fullStatus": "blocked",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "blocked",
          "mode": "blocked",
          "tid": "2",
          "callStack": [
            {
              "callType": "process",
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 12
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            },
            {
              "method": "atm_check_balance(0)",
              "pc": "1281",
              "callType": "normal",
              "vars": {
                "acct": 0
              }
            }
          ]
        },
        "2": {
          "atomic": 0,
          "fullStatus": "blocked",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "blocked",
          "mode": "blocked",
          "tid": "2",
          "callStack": [
            {
              "callType": "process",
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 3,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {
                "acct": 0,
                "balance": 1
              }
            },
            {
              "method": "atm_check_balance(0)",
              "pc": "1281",
              "callType": "normal",
              "vars": {
                "acct": 0
              }
            }
          ]
        },
        "2": {
          "atomic": 0,
          "fullStatus": "blocked",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "blocked",
          "mode": "blocked",
          "tid": "2",
          "callStack": [
            {
              "callType": "process",
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 4,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {
                "balance": 1
              }
            },
            {
              "method": "atm_check_balance(0)",
              "pc": "1281",
              "callType": "normal",
              "vars": {
                "acct": 0
              }
            }
          ]
        },
        "2": {
          "atomic": 0,
          "fullStatus": "blocked",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "blocked",
          "mode": "blocked",
          "tid": "2",
          "callStack": [
            {
              "callType": "process",
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            },
            {
              "method": "atm_check_balance(0)",
              "pc": "1289",
              "callType": "normal",
              "vars": {
                "balance": 1
              }
            },
            {
              "method": "release(?accounts[0][\"lock\"])",
              "pc": "973",
              "callType": "normal",
              "vars": {
                "balance": 1
              }
            }
          ]
        },
        "2": {
          "atomic": 0,
          "fullStatus": "blocked",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "blocked",
          "mode": "blocked",
          "tid": "2",
          "callStack": [
            {
              "callType": "process",
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1345"
            },
            {
              "callType": "normal",
              "method": "atm_check_balance(0)",
              "vars": {
                "balance": 1
              },
              "pc": "1289"
            },
            {
              "callType": "normal",
              "method": "release(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "974"
            }
          ]
        },
        "2": {
          "atomic": 0,
          "fullStatus": "blocked",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "blocked",
          "mode": "blocked",
          "tid": "2",
          "callStack": [
            {
              "callType": "process",
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 13
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            },
            {
              "method": "atm_check_balance(0)",
              "pc": "1289",
              "callType": "normal",
              "vars": {
                "balance": 1
              }
            },
            {
              "method": "release(?accounts[0][\"lock\"])",
              "pc": "975",
              "callType": "normal",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "1": {
          "atomic": 2,
          "fullStatus": "running atomic",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "running",
          "tid": "1",
          "callStack": [
            {
              "method": "customer(1, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            },
            {
              "method": "atm_check_balance(0)",
              "pc": "1289",
              "callType": "normal",
              "vars": {
                "balance": 1
              }
            },
            {
              "method": "release(?accounts[0][\"lock\"])",
              "pc": "975",
              "callType": "normal",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 4,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "1": {
          "atomic": 2,
          "fullStatus": "running atomic read-only",
          "interruptLevel": 0,
          "readonly": 1,
          "status": "running",
          "tid": "1",
          "callStack": [
            {
              "method": "customer(1, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            },
            {
              "method": "atm_check_balance(0)",
              "pc": "1289",
              "callType": "normal",
              "vars": {
                "balance": 1
              }
            },
            {
              "method": "release(?accounts[0][\"lock\"])",
              "pc": "975",
              "callType": "normal",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "1": {
          "atomic": 2,
          "fullStatus": "running atomic",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "running",
          "tid": "1",
          "callStack": [
            {
              "method": "customer(1, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            },
            {
              "method": "atm_check_balance(0)",
              "pc": "1289",
              "callType": "normal",
              "vars": {
                "balance": 1
              }
            },
            {
              "method": "release(?accounts[0][\"lock\"])",
              "pc": "975",
              "callType": "normal",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 2,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            },
            {
              "method": "atm_check_balance(0)",
              "pc": "1289",
              "callType": "normal",
              "vars": {
                "balance": 1
              }
            },
            {
              "method": "release(?accounts[0][\"lock\"])",
              "pc": "975",
              "callType": "normal",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 2,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "atm_check_balance(0)",
              "pc": "1289",
              "callType": "normal",
              "vars": {
                "balance": 1
              }
            },
            {
              "method": "release(?accounts[0][\"lock\"])",
              "pc": "975",
              "callType": "normal",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "atm_check_balance(0)",
              "pc": "1289",
              "callType": "normal",
              "vars": {
                "balance": 1
              }
            },
            {
              "method": "release(?accounts[0][\"lock\"])",
              "pc": "975",
              "callType": "normal",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "atm_check_balance(0)",
              "pc": "1289",
              "callType": "normal",
              "vars": {
                "balance": 1
              }
            },
            {
              "method": "release(?accounts[0][\"lock\"])",
              "pc": "975",
              "callType": "normal",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 2,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {
                "balance": 1
              }
            },
            {
              "method": "atm_check_balance(0)",
              "pc": "1289",
              "callType": "normal",
              "vars": {
                "balance": 1
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 3,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1,
                "bal": 1
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 5,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 3,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "pc": "1345",
              "callType": "process",
              "vars": {
                "amount": 1
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 2,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "pc": "1345",
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "pc": "1359",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "atm_withdraw(0, 1)",
              "pc": "1293",
              "callType": "normal",
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "pc": "1359",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            },
            {
              "method": "atm_withdraw(0, 1)",
              "pc": "1293",
              "callType": "normal",
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "pc": "1359",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            },
            {
              "method": "atm_withdraw(0, 1)",
              "pc": "1293",
              "callType": "normal",
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 5,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "pc": "1359",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            },
            {
              "method": "atm_withdraw(0, 1)",
              "pc": "1293",
              "callType": "normal",
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "pc": "1359",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            },
            {
              "method": "atm_withdraw(0, 1)",
              "pc": "1293",
              "callType": "normal",
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 6,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "pc": "1359",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            },
            {
              "method": "atm_withdraw(0, 1)",
              "pc": "1293",
              "callType": "normal",
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "pc": "1359",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "atm_withdraw(0, 1)",
              "pc": "1308",
              "callType": "normal",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            },
            {
              "method": "acquire(?accounts[0][\"lock\"])",
              "pc": "954",
              "callType": "normal",
              "vars": {
                "acct": 0,
                "amount": 1
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 14
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "pc": "1359",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "atm_withdraw(0, 1)",
              "pc": "1308",
              "callType": "normal",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            },
            {
              "method": "acquire(?accounts[0][\"lock\"])",
              "pc": "956",
              "callType": "normal",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              }
            }
          ]
        },
        "2": {
          "atomic": 0,
          "fullStatus": "blocked",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "blocked",
          "mode": "blocked",
          "tid": "2",
          "callStack": [
            {
              "callType": "process",
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 6,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "pc": "1359",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "atm_withdraw(0, 1)",
              "pc": "1308",
              "callType": "normal",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            },
            {
              "method": "acquire(?accounts[0][\"lock\"])",
              "pc": "956",
              "callType": "normal",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              }
            }
          ]
        },
        "2": {
          "atomic": 0,
          "fullStatus": "blocked",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "blocked",
          "mode": "blocked",
          "tid": "2",
          "callStack": [
            {
              "callType": "process",
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 2,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "pc": "1359",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "atm_withdraw(0, 1)",
              "pc": "1308",
              "callType": "normal",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            },
            {
              "method": "acquire(?accounts[0][\"lock\"])",
              "pc": "956",
              "callType": "normal",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              }
            }
          ]
        },
        "2": {
          "atomic": 0,
          "fullStatus": "blocked",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "blocked",
          "mode": "blocked",
          "tid": "2",
          "callStack": [
            {
              "callType": "process",
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 2,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "pc": "1359",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "atm_withdraw(0, 1)",
              "pc": "1308",
              "callType": "normal",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            },
            {
              "method": "acquire(?accounts[0][\"lock\"])",
              "pc": "956",
              "callType": "normal",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              }
            }
          ]
        },
        "2": {
          "atomic": 0,
          "fullStatus": "blocked",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "blocked",
          "mode": "blocked",
          "tid": "2",
          "callStack": [
            {
              "callType": "process",
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "pc": "1359",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "atm_withdraw(0, 1)",
              "pc": "1308",
              "callType": "normal",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            },
            {
              "method": "acquire(?accounts[0][\"lock\"])",
              "pc": "956",
              "callType": "normal",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              }
            }
          ]
        },
        "2": {
          "atomic": 0,
          "fullStatus": "blocked",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "blocked",
          "mode": "blocked",
          "tid": "2",
          "callStack": [
            {
              "callType": "process",
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "pc": "1359",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "atm_withdraw(0, 1)",
              "pc": "1308",
              "callType": "normal",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            },
            {
              "method": "acquire(?accounts[0][\"lock\"])",
              "pc": "956",
              "callType": "normal",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              }
            }
          ]
        },
        "2": {
          "atomic": 0,
          "fullStatus": "blocked",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "blocked",
          "mode": "blocked",
          "tid": "2",
          "callStack": [
            {
              "callType": "process",
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 8,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "pc": "1359",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            },
            {
              "method": "atm_withdraw(0, 1)",
              "pc": "1308",
              "callType": "normal",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            }
          ]
        },
        "2": {
          "atomic": 0,
          "fullStatus": "blocked",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "blocked",
          "mode": "blocked",
          "tid": "2",
          "callStack": [
            {
              "callType": "process",
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 15
    },
    {
      "duration": 2,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "pc": "1359",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "atm_withdraw(0, 1)",
              "pc": "1316",
              "callType": "normal",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            }
          ]
        },
        "2": {
          "atomic": 0,
          "fullStatus": "blocked",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "blocked",
          "mode": "blocked",
          "tid": "2",
          "callStack": [
            {
              "callType": "process",
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 2,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 1,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "pc": "1359",
              "callType": "process",
              "vars": {
                "acct": 0
              }
            },
            {
              "method": "atm_withdraw(0, 1)",
              "pc": "1316",
              "callType": "normal",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            }
          ]
        },
        "2": {
          "atomic": 0,
          "fullStatus": "blocked",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "blocked",
          "mode": "blocked",
          "tid": "2",
          "callStack": [
            {
              "callType": "process",
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 16
    },
    {
      "duration": 3,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 0,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "pc": "1359",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "atm_withdraw(0, 1)",
              "pc": "1320",
              "callType": "normal",
              "vars": {
                "acct": 0
              }
            }
          ]
        },
        "2": {
          "atomic": 0,
          "fullStatus": "blocked",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "blocked",
          "mode": "blocked",
          "tid": "2",
          "callStack": [
            {
              "callType": "process",
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 4,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 0,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "pc": "1359",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "atm_withdraw(0, 1)",
              "pc": "1320",
              "callType": "normal",
              "vars": {
                "acct": 0
              }
            }
          ]
        },
        "2": {
          "atomic": 0,
          "fullStatus": "blocked",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "blocked",
          "mode": "blocked",
          "tid": "2",
          "callStack": [
            {
              "callType": "process",
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 0,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "pc": "1359",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "atm_withdraw(0, 1)",
              "pc": "1327",
              "callType": "normal",
              "vars": {}
            },
            {
              "method": "release(?accounts[0][\"lock\"])",
              "pc": "973",
              "callType": "normal",
              "vars": {}
            }
          ]
        },
        "2": {
          "atomic": 0,
          "fullStatus": "blocked",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "blocked",
          "mode": "blocked",
          "tid": "2",
          "callStack": [
            {
              "callType": "process",
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 0,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {},
              "pc": "1327"
            },
            {
              "callType": "normal",
              "method": "release(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "974"
            }
          ]
        },
        "2": {
          "atomic": 0,
          "fullStatus": "blocked",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "blocked",
          "mode": "blocked",
          "tid": "2",
          "callStack": [
            {
              "callType": "process",
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 17
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 0,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "pc": "1359",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "atm_withdraw(0, 1)",
              "pc": "1327",
              "callType": "normal",
              "vars": {}
            },
            {
              "method": "release(?accounts[0][\"lock\"])",
              "pc": "975",
              "callType": "normal",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 0,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "1": {
          "atomic": 2,
          "fullStatus": "running atomic",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "running",
          "tid": "1",
          "callStack": [
            {
              "method": "customer(1, 0, 1)",
              "pc": "1359",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "atm_withdraw(0, 1)",
              "pc": "1327",
              "callType": "normal",
              "vars": {}
            },
            {
              "method": "release(?accounts[0][\"lock\"])",
              "pc": "975",
              "callType": "normal",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 4,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 0,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "1": {
          "atomic": 2,
          "fullStatus": "running atomic read-only",
          "interruptLevel": 0,
          "readonly": 1,
          "status": "running",
          "tid": "1",
          "callStack": [
            {
              "method": "customer(1, 0, 1)",
              "pc": "1359",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "atm_withdraw(0, 1)",
              "pc": "1327",
              "callType": "normal",
              "vars": {}
            },
            {
              "method": "release(?accounts[0][\"lock\"])",
              "pc": "975",
              "callType": "normal",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 0,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "1": {
          "atomic": 2,
          "fullStatus": "running atomic",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "running",
          "tid": "1",
          "callStack": [
            {
              "method": "customer(1, 0, 1)",
              "pc": "1359",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "atm_withdraw(0, 1)",
              "pc": "1327",
              "callType": "normal",
              "vars": {}
            },
            {
              "method": "release(?accounts[0][\"lock\"])",
              "pc": "975",
              "callType": "normal",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 2,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 0,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "pc": "1359",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "atm_withdraw(0, 1)",
              "pc": "1327",
              "callType": "normal",
              "vars": {}
            },
            {
              "method": "release(?accounts[0][\"lock\"])",
              "pc": "975",
              "callType": "normal",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 2,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 0,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "pc": "1359",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "atm_withdraw(0, 1)",
              "pc": "1327",
              "callType": "normal",
              "vars": {}
            },
            {
              "method": "release(?accounts[0][\"lock\"])",
              "pc": "975",
              "callType": "normal",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 0,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "pc": "1359",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "atm_withdraw(0, 1)",
              "pc": "1327",
              "callType": "normal",
              "vars": {}
            },
            {
              "method": "release(?accounts[0][\"lock\"])",
              "pc": "975",
              "callType": "normal",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 0,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "pc": "1359",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "atm_withdraw(0, 1)",
              "pc": "1327",
              "callType": "normal",
              "vars": {}
            },
            {
              "method": "release(?accounts[0][\"lock\"])",
              "pc": "975",
              "callType": "normal",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 3,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 0,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "pc": "1359",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "atm_withdraw(0, 1)",
              "pc": "1327",
              "callType": "normal",
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 0,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "pc": "1359",
              "callType": "process",
              "vars": {
                "success": true
              }
            },
            {
              "method": "atm_withdraw(0, 1)",
              "pc": "1327",
              "callType": "normal",
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 4,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 0,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
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
              "method": "customer(1, 0, 1)",
              "pc": "1359",
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 0,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "1": {
          "atomic": 0,
          "fullStatus": "terminated",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "terminated",
          "mode": "terminated",
          "tid": "1",
          "callStack": [
            {
              "callType": "process",
              "method": "customer(1, 0, 1)",
              "vars": {},
              "pc": "1362"
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {
                "acct": 0,
                "amount": 1
              },
              "pc": "1308"
            },
            {
              "callType": "normal",
              "method": "acquire(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "955"
            }
          ]
        }
      },
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "macroStepIdx": 18
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 0,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "1": {
          "atomic": 0,
          "fullStatus": "terminated",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "terminated",
          "mode": "terminated",
          "tid": "1",
          "callStack": [
            {
              "callType": "process",
              "method": "customer(1, 0, 1)",
              "vars": {},
              "pc": "1362"
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
              "method": "customer(2, 0, 1)",
              "pc": "1359",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "atm_withdraw(0, 1)",
              "pc": "1308",
              "callType": "normal",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            },
            {
              "method": "acquire(?accounts[0][\"lock\"])",
              "pc": "956",
              "callType": "normal",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              }
            }
          ]
        }
      },
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 6,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 0,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "1": {
          "atomic": 0,
          "fullStatus": "terminated",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "terminated",
          "mode": "terminated",
          "tid": "1",
          "callStack": [
            {
              "callType": "process",
              "method": "customer(1, 0, 1)",
              "vars": {},
              "pc": "1362"
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
              "method": "customer(2, 0, 1)",
              "pc": "1359",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "atm_withdraw(0, 1)",
              "pc": "1308",
              "callType": "normal",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            },
            {
              "method": "acquire(?accounts[0][\"lock\"])",
              "pc": "956",
              "callType": "normal",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              }
            }
          ]
        }
      },
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 2,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 0,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "1": {
          "atomic": 0,
          "fullStatus": "terminated",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "terminated",
          "mode": "terminated",
          "tid": "1",
          "callStack": [
            {
              "callType": "process",
              "method": "customer(1, 0, 1)",
              "vars": {},
              "pc": "1362"
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
              "method": "customer(2, 0, 1)",
              "pc": "1359",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "atm_withdraw(0, 1)",
              "pc": "1308",
              "callType": "normal",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            },
            {
              "method": "acquire(?accounts[0][\"lock\"])",
              "pc": "956",
              "callType": "normal",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              }
            }
          ]
        }
      },
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 2,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 0,
            "\"lock\"": false
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "1": {
          "atomic": 0,
          "fullStatus": "terminated",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "terminated",
          "mode": "terminated",
          "tid": "1",
          "callStack": [
            {
              "callType": "process",
              "method": "customer(1, 0, 1)",
              "vars": {},
              "pc": "1362"
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
              "method": "customer(2, 0, 1)",
              "pc": "1359",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "atm_withdraw(0, 1)",
              "pc": "1308",
              "callType": "normal",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            },
            {
              "method": "acquire(?accounts[0][\"lock\"])",
              "pc": "956",
              "callType": "normal",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              }
            }
          ]
        }
      },
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 0,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "1": {
          "atomic": 0,
          "fullStatus": "terminated",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "terminated",
          "mode": "terminated",
          "tid": "1",
          "callStack": [
            {
              "callType": "process",
              "method": "customer(1, 0, 1)",
              "vars": {},
              "pc": "1362"
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
              "method": "customer(2, 0, 1)",
              "pc": "1359",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "atm_withdraw(0, 1)",
              "pc": "1308",
              "callType": "normal",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            },
            {
              "method": "acquire(?accounts[0][\"lock\"])",
              "pc": "956",
              "callType": "normal",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              }
            }
          ]
        }
      },
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 0,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "1": {
          "atomic": 0,
          "fullStatus": "terminated",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "terminated",
          "mode": "terminated",
          "tid": "1",
          "callStack": [
            {
              "callType": "process",
              "method": "customer(1, 0, 1)",
              "vars": {},
              "pc": "1362"
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
              "method": "customer(2, 0, 1)",
              "pc": "1359",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "atm_withdraw(0, 1)",
              "pc": "1308",
              "callType": "normal",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            },
            {
              "method": "acquire(?accounts[0][\"lock\"])",
              "pc": "956",
              "callType": "normal",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              }
            }
          ]
        }
      },
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 8,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 0,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "1": {
          "atomic": 0,
          "fullStatus": "terminated",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "terminated",
          "mode": "terminated",
          "tid": "1",
          "callStack": [
            {
              "callType": "process",
              "method": "customer(1, 0, 1)",
              "vars": {},
              "pc": "1362"
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
              "method": "customer(2, 0, 1)",
              "pc": "1359",
              "callType": "process",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            },
            {
              "method": "atm_withdraw(0, 1)",
              "pc": "1308",
              "callType": "normal",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            }
          ]
        }
      },
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 19
    },
    {
      "duration": 2,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 0,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "1": {
          "atomic": 0,
          "fullStatus": "terminated",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "terminated",
          "mode": "terminated",
          "tid": "1",
          "callStack": [
            {
              "callType": "process",
              "method": "customer(1, 0, 1)",
              "vars": {},
              "pc": "1362"
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
              "method": "customer(2, 0, 1)",
              "pc": "1359",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "atm_withdraw(0, 1)",
              "pc": "1316",
              "callType": "normal",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            }
          ]
        }
      },
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 2,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": 0,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "1": {
          "atomic": 0,
          "fullStatus": "terminated",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "terminated",
          "mode": "terminated",
          "tid": "1",
          "callStack": [
            {
              "callType": "process",
              "method": "customer(1, 0, 1)",
              "vars": {},
              "pc": "1362"
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
              "method": "customer(2, 0, 1)",
              "pc": "1359",
              "callType": "process",
              "vars": {
                "acct": 0
              }
            },
            {
              "method": "atm_withdraw(0, 1)",
              "pc": "1316",
              "callType": "normal",
              "vars": {
                "acct": 0,
                "amount": 1
              }
            }
          ]
        }
      },
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 20
    },
    {
      "duration": 3,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": -1,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "1": {
          "atomic": 0,
          "fullStatus": "terminated",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "terminated",
          "mode": "terminated",
          "tid": "1",
          "callStack": [
            {
              "callType": "process",
              "method": "customer(1, 0, 1)",
              "vars": {},
              "pc": "1362"
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
              "method": "customer(2, 0, 1)",
              "pc": "1359",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "atm_withdraw(0, 1)",
              "pc": "1320",
              "callType": "normal",
              "vars": {
                "acct": 0
              }
            }
          ]
        }
      },
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 4,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": -1,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "1": {
          "atomic": 0,
          "fullStatus": "terminated",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "terminated",
          "mode": "terminated",
          "tid": "1",
          "callStack": [
            {
              "callType": "process",
              "method": "customer(1, 0, 1)",
              "vars": {},
              "pc": "1362"
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
              "method": "customer(2, 0, 1)",
              "pc": "1359",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "atm_withdraw(0, 1)",
              "pc": "1320",
              "callType": "normal",
              "vars": {
                "acct": 0
              }
            }
          ]
        }
      },
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": -1,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "1": {
          "atomic": 0,
          "fullStatus": "terminated",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "terminated",
          "mode": "terminated",
          "tid": "1",
          "callStack": [
            {
              "callType": "process",
              "method": "customer(1, 0, 1)",
              "vars": {},
              "pc": "1362"
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
              "method": "customer(2, 0, 1)",
              "pc": "1359",
              "callType": "process",
              "vars": {}
            },
            {
              "method": "atm_withdraw(0, 1)",
              "pc": "1327",
              "callType": "normal",
              "vars": {}
            },
            {
              "method": "release(?accounts[0][\"lock\"])",
              "pc": "973",
              "callType": "normal",
              "vars": {}
            }
          ]
        }
      },
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 0
    },
    {
      "duration": 1,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": -1,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "1": {
          "atomic": 0,
          "fullStatus": "terminated",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "terminated",
          "mode": "terminated",
          "tid": "1",
          "callStack": [
            {
              "callType": "process",
              "method": "customer(1, 0, 1)",
              "vars": {},
              "pc": "1362"
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {},
              "pc": "1327"
            },
            {
              "callType": "normal",
              "method": "release(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "974"
            }
          ]
        }
      },
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "macroStepIdx": 21
    },
    {
      "duration": 2,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": -1,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "1": {
          "atomic": 0,
          "fullStatus": "terminated",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "terminated",
          "mode": "terminated",
          "tid": "1",
          "callStack": [
            {
              "callType": "process",
              "method": "customer(1, 0, 1)",
              "vars": {},
              "pc": "1362"
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {},
              "pc": "1327"
            },
            {
              "callType": "normal",
              "method": "release(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "974"
            }
          ]
        },
        "3": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "invariant()",
              "pc": "1235",
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
      "duration": 7,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": -1,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "1": {
          "atomic": 0,
          "fullStatus": "terminated",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "terminated",
          "mode": "terminated",
          "tid": "1",
          "callStack": [
            {
              "callType": "process",
              "method": "customer(1, 0, 1)",
              "vars": {},
              "pc": "1362"
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {},
              "pc": "1327"
            },
            {
              "callType": "normal",
              "method": "release(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "974"
            }
          ]
        },
        "3": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "invariant()",
              "pc": "1235",
              "callType": "process",
              "vars": {
                "$accu1014": []
              }
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
      "duration": 3,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": -1,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "1": {
          "atomic": 0,
          "fullStatus": "terminated",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "terminated",
          "mode": "terminated",
          "tid": "1",
          "callStack": [
            {
              "callType": "process",
              "method": "customer(1, 0, 1)",
              "vars": {},
              "pc": "1362"
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {},
              "pc": "1327"
            },
            {
              "callType": "normal",
              "method": "release(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "974"
            }
          ]
        },
        "3": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "invariant()",
              "pc": "1235",
              "callType": "process",
              "vars": {
                "$accu1014": [],
                "acct": 0
              }
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
      "duration": 3,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": -1,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "1": {
          "atomic": 0,
          "fullStatus": "terminated",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "terminated",
          "mode": "terminated",
          "tid": "1",
          "callStack": [
            {
              "callType": "process",
              "method": "customer(1, 0, 1)",
              "vars": {},
              "pc": "1362"
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {},
              "pc": "1327"
            },
            {
              "callType": "normal",
              "method": "release(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "974"
            }
          ]
        },
        "3": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "invariant()",
              "pc": "1235",
              "callType": "process",
              "vars": {
                "acct": 0
              }
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
      "duration": 6,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": -1,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "1": {
          "atomic": 0,
          "fullStatus": "terminated",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "terminated",
          "mode": "terminated",
          "tid": "1",
          "callStack": [
            {
              "callType": "process",
              "method": "customer(1, 0, 1)",
              "vars": {},
              "pc": "1362"
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {},
              "pc": "1327"
            },
            {
              "callType": "normal",
              "method": "release(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "974"
            }
          ]
        },
        "3": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "invariant()",
              "pc": "1235",
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
      "duration": 2,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": -1,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "1": {
          "atomic": 0,
          "fullStatus": "terminated",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "terminated",
          "mode": "terminated",
          "tid": "1",
          "callStack": [
            {
              "callType": "process",
              "method": "customer(1, 0, 1)",
              "vars": {},
              "pc": "1362"
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {},
              "pc": "1327"
            },
            {
              "callType": "normal",
              "method": "release(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "974"
            }
          ]
        },
        "3": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "invariant()",
              "pc": "1235",
              "callType": "process",
              "vars": {
                "$accu1014": [
                  -1
                ]
              }
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
      "duration": 3,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": -1,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "1": {
          "atomic": 0,
          "fullStatus": "terminated",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "terminated",
          "mode": "terminated",
          "tid": "1",
          "callStack": [
            {
              "callType": "process",
              "method": "customer(1, 0, 1)",
              "vars": {},
              "pc": "1362"
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {},
              "pc": "1327"
            },
            {
              "callType": "normal",
              "method": "release(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "974"
            }
          ]
        },
        "3": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "invariant()",
              "pc": "1235",
              "callType": "process",
              "vars": {
                "$accu1014": [
                  -1
                ],
                "acct": 1
              }
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
      "duration": 3,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": -1,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "1": {
          "atomic": 0,
          "fullStatus": "terminated",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "terminated",
          "mode": "terminated",
          "tid": "1",
          "callStack": [
            {
              "callType": "process",
              "method": "customer(1, 0, 1)",
              "vars": {},
              "pc": "1362"
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {},
              "pc": "1327"
            },
            {
              "callType": "normal",
              "method": "release(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "974"
            }
          ]
        },
        "3": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "invariant()",
              "pc": "1235",
              "callType": "process",
              "vars": {
                "acct": 1
              }
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
      "duration": 6,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": -1,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "1": {
          "atomic": 0,
          "fullStatus": "terminated",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "terminated",
          "mode": "terminated",
          "tid": "1",
          "callStack": [
            {
              "callType": "process",
              "method": "customer(1, 0, 1)",
              "vars": {},
              "pc": "1362"
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {},
              "pc": "1327"
            },
            {
              "callType": "normal",
              "method": "release(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "974"
            }
          ]
        },
        "3": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "invariant()",
              "pc": "1235",
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
      "duration": 6,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": -1,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "1": {
          "atomic": 0,
          "fullStatus": "terminated",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "terminated",
          "mode": "terminated",
          "tid": "1",
          "callStack": [
            {
              "callType": "process",
              "method": "customer(1, 0, 1)",
              "vars": {},
              "pc": "1362"
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {},
              "pc": "1327"
            },
            {
              "callType": "normal",
              "method": "release(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "974"
            }
          ]
        },
        "3": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "invariant()",
              "pc": "1235",
              "callType": "process",
              "vars": {
                "$accu1014": [
                  -1,
                  0
                ]
              }
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
      "duration": 4,
      "sharedValues": {
        "accounts": [
          {
            "\"balance\"": -1,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "1": {
          "atomic": 0,
          "fullStatus": "terminated",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "terminated",
          "mode": "terminated",
          "tid": "1",
          "callStack": [
            {
              "callType": "process",
              "method": "customer(1, 0, 1)",
              "vars": {},
              "pc": "1362"
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {},
              "pc": "1327"
            },
            {
              "callType": "normal",
              "method": "release(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "974"
            }
          ]
        },
        "3": {
          "fullStatus": "running",
          "status": "running",
          "callStack": [
            {
              "method": "invariant()",
              "pc": "1235",
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
        "accounts": [
          {
            "\"balance\"": -1,
            "\"lock\"": true
          },
          {
            "\"balance\"": 0,
            "\"lock\"": false
          }
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
              "pc": "1391"
            }
          ]
        },
        "1": {
          "atomic": 0,
          "fullStatus": "terminated",
          "interruptLevel": 0,
          "readonly": 0,
          "status": "terminated",
          "mode": "terminated",
          "tid": "1",
          "callStack": [
            {
              "callType": "process",
              "method": "customer(1, 0, 1)",
              "vars": {},
              "pc": "1362"
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
              "method": "customer(2, 0, 1)",
              "vars": {},
              "pc": "1359"
            },
            {
              "callType": "normal",
              "method": "atm_withdraw(0, 1)",
              "vars": {},
              "pc": "1327"
            },
            {
              "callType": "normal",
              "method": "release(?accounts[0][\"lock\"])",
              "vars": {
                "binsema": {
                  "func": "-1",
                  "args": [
                    "accounts",
                    0,
                    "lock"
                  ]
                }
              },
              "pc": "974"
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
              "pc": "1263"
            }
          ]
        }
      },
      "tid": "3",
      "name": "invariant()",
      "macroStepIdx": 22
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
      "npc": 54
    },
    {
      "sliceIdx": 0,
      "time": 2,
      "pc": 54,
      "npc": 55
    },
    {
      "sliceIdx": 0,
      "time": 3,
      "pc": 55,
      "npc": 56
    },
    {
      "sliceIdx": 0,
      "time": 4,
      "pc": 56,
      "npc": 602
    },
    {
      "sliceIdx": 0,
      "time": 5,
      "pc": 602,
      "npc": 603
    },
    {
      "sliceIdx": 0,
      "time": 6,
      "pc": 603,
      "npc": 604
    },
    {
      "sliceIdx": 0,
      "time": 7,
      "pc": 604,
      "npc": 624
    },
    {
      "sliceIdx": 0,
      "time": 8,
      "pc": 624,
      "npc": 625
    },
    {
      "sliceIdx": 0,
      "time": 9,
      "pc": 625,
      "npc": 626
    },
    {
      "sliceIdx": 0,
      "time": 10,
      "pc": 626,
      "npc": 646
    },
    {
      "sliceIdx": 0,
      "time": 11,
      "pc": 646,
      "npc": 647
    },
    {
      "sliceIdx": 0,
      "time": 12,
      "pc": 647,
      "npc": 648
    },
    {
      "sliceIdx": 0,
      "time": 13,
      "pc": 648,
      "npc": 665
    },
    {
      "sliceIdx": 0,
      "time": 14,
      "pc": 665,
      "npc": 666
    },
    {
      "sliceIdx": 0,
      "time": 15,
      "pc": 666,
      "npc": 667
    },
    {
      "sliceIdx": 0,
      "time": 16,
      "pc": 667,
      "npc": 693
    },
    {
      "sliceIdx": 0,
      "time": 17,
      "pc": 693,
      "npc": 694
    },
    {
      "sliceIdx": 0,
      "time": 18,
      "pc": 694,
      "npc": 695
    },
    {
      "sliceIdx": 0,
      "time": 19,
      "pc": 695,
      "npc": 722
    },
    {
      "sliceIdx": 0,
      "time": 20,
      "pc": 722,
      "npc": 723
    },
    {
      "sliceIdx": 0,
      "time": 21,
      "pc": 723,
      "npc": 724
    },
    {
      "sliceIdx": 0,
      "time": 22,
      "pc": 724,
      "npc": 1205
    },
    {
      "sliceIdx": 0,
      "time": 23,
      "pc": 1205,
      "npc": 1206
    },
    {
      "sliceIdx": 1,
      "time": 24,
      "pc": 1206,
      "npc": 1207
    },
    {
      "sliceIdx": 1,
      "time": 25,
      "pc": 1207,
      "npc": 1208
    },
    {
      "sliceIdx": 1,
      "time": 26,
      "pc": 1208,
      "npc": 1209
    },
    {
      "sliceIdx": 1,
      "time": 27,
      "pc": 1209,
      "npc": 1210
    },
    {
      "sliceIdx": 1,
      "time": 28,
      "pc": 1210,
      "npc": 1211
    },
    {
      "sliceIdx": 2,
      "time": 29,
      "pc": 1211,
      "npc": 1212
    },
    {
      "sliceIdx": 3,
      "time": 30,
      "pc": 1212,
      "npc": 1213
    },
    {
      "sliceIdx": 3,
      "time": 31,
      "pc": 1213,
      "npc": 1214
    },
    {
      "sliceIdx": 3,
      "time": 32,
      "pc": 1214,
      "npc": 1215
    },
    {
      "sliceIdx": 4,
      "time": 33,
      "pc": 1215,
      "npc": 1216
    },
    {
      "sliceIdx": 4,
      "time": 34,
      "pc": 1216,
      "npc": 1217
    },
    {
      "sliceIdx": 4,
      "time": 35,
      "pc": 1217,
      "npc": 1218
    },
    {
      "sliceIdx": 4,
      "time": 36,
      "pc": 1218,
      "npc": 1219
    },
    {
      "sliceIdx": 5,
      "time": 37,
      "pc": 1219,
      "npc": 931
    },
    {
      "sliceIdx": 5,
      "time": 38,
      "pc": 931,
      "npc": 932
    },
    {
      "sliceIdx": 5,
      "time": 39,
      "pc": 932,
      "npc": 933
    },
    {
      "sliceIdx": 5,
      "time": 40,
      "pc": 933,
      "npc": 934
    },
    {
      "sliceIdx": 6,
      "time": 41,
      "pc": 934,
      "npc": 912
    },
    {
      "sliceIdx": 7,
      "time": 42,
      "pc": 912,
      "npc": 913
    },
    {
      "sliceIdx": 8,
      "time": 43,
      "pc": 913,
      "npc": 914
    },
    {
      "sliceIdx": 9,
      "time": 44,
      "pc": 914,
      "npc": 915
    },
    {
      "sliceIdx": 9,
      "time": 45,
      "pc": 915,
      "npc": 916
    },
    {
      "sliceIdx": 9,
      "time": 46,
      "pc": 916,
      "npc": 917
    },
    {
      "sliceIdx": 9,
      "time": 47,
      "pc": 917,
      "npc": 918
    },
    {
      "sliceIdx": 9,
      "time": 48,
      "pc": 918,
      "npc": 919
    },
    {
      "sliceIdx": 9,
      "time": 49,
      "pc": 919,
      "npc": 920
    },
    {
      "sliceIdx": 9,
      "time": 50,
      "pc": 920,
      "npc": 921
    },
    {
      "sliceIdx": 9,
      "time": 51,
      "pc": 921,
      "npc": 922
    },
    {
      "sliceIdx": 9,
      "time": 52,
      "pc": 922,
      "npc": 923
    },
    {
      "sliceIdx": 10,
      "time": 53,
      "pc": 923,
      "npc": 924
    },
    {
      "sliceIdx": 11,
      "time": 54,
      "pc": 924,
      "npc": 925
    },
    {
      "sliceIdx": 11,
      "time": 55,
      "pc": 925,
      "npc": 926
    },
    {
      "sliceIdx": 12,
      "time": 56,
      "pc": 926,
      "npc": 927
    },
    {
      "sliceIdx": 13,
      "time": 57,
      "pc": 927,
      "npc": 928
    },
    {
      "sliceIdx": 14,
      "time": 58,
      "pc": 928,
      "npc": 935
    },
    {
      "sliceIdx": 15,
      "time": 59,
      "pc": 935,
      "npc": 936
    },
    {
      "sliceIdx": 16,
      "time": 60,
      "pc": 936,
      "npc": 1220
    },
    {
      "sliceIdx": 16,
      "time": 61,
      "pc": 1220,
      "npc": 1221
    },
    {
      "sliceIdx": 16,
      "time": 62,
      "pc": 1221,
      "npc": 1222
    },
    {
      "sliceIdx": 16,
      "time": 63,
      "pc": 1222,
      "npc": 1223
    },
    {
      "sliceIdx": 16,
      "time": 64,
      "pc": 1223,
      "npc": 1224
    },
    {
      "sliceIdx": 16,
      "time": 65,
      "pc": 1224,
      "npc": 1225
    },
    {
      "pc": 1225,
      "npc": 1226,
      "sliceIdx": 17,
      "time": 66
    },
    {
      "sliceIdx": 17,
      "time": 67,
      "pc": 1226,
      "npc": 1227
    },
    {
      "sliceIdx": 17,
      "time": 68,
      "pc": 1227,
      "npc": 1228
    },
    {
      "sliceIdx": 18,
      "time": 69,
      "pc": 1228,
      "npc": 1229
    },
    {
      "sliceIdx": 18,
      "time": 70,
      "pc": 1229,
      "npc": 1211
    },
    {
      "sliceIdx": 19,
      "time": 71,
      "pc": 1211,
      "npc": 1212
    },
    {
      "sliceIdx": 20,
      "time": 72,
      "pc": 1212,
      "npc": 1213
    },
    {
      "sliceIdx": 20,
      "time": 73,
      "pc": 1213,
      "npc": 1214
    },
    {
      "sliceIdx": 20,
      "time": 74,
      "pc": 1214,
      "npc": 1215
    },
    {
      "sliceIdx": 21,
      "time": 75,
      "pc": 1215,
      "npc": 1216
    },
    {
      "sliceIdx": 21,
      "time": 76,
      "pc": 1216,
      "npc": 1217
    },
    {
      "sliceIdx": 21,
      "time": 77,
      "pc": 1217,
      "npc": 1218
    },
    {
      "sliceIdx": 21,
      "time": 78,
      "pc": 1218,
      "npc": 1219
    },
    {
      "sliceIdx": 22,
      "time": 79,
      "pc": 1219,
      "npc": 931
    },
    {
      "sliceIdx": 22,
      "time": 80,
      "pc": 931,
      "npc": 932
    },
    {
      "sliceIdx": 22,
      "time": 81,
      "pc": 932,
      "npc": 933
    },
    {
      "sliceIdx": 22,
      "time": 82,
      "pc": 933,
      "npc": 934
    },
    {
      "sliceIdx": 23,
      "time": 83,
      "pc": 934,
      "npc": 912
    },
    {
      "sliceIdx": 24,
      "time": 84,
      "pc": 912,
      "npc": 913
    },
    {
      "sliceIdx": 25,
      "time": 85,
      "pc": 913,
      "npc": 914
    },
    {
      "sliceIdx": 26,
      "time": 86,
      "pc": 914,
      "npc": 915
    },
    {
      "sliceIdx": 26,
      "time": 87,
      "pc": 915,
      "npc": 916
    },
    {
      "sliceIdx": 26,
      "time": 88,
      "pc": 916,
      "npc": 917
    },
    {
      "sliceIdx": 26,
      "time": 89,
      "pc": 917,
      "npc": 918
    },
    {
      "sliceIdx": 26,
      "time": 90,
      "pc": 918,
      "npc": 919
    },
    {
      "sliceIdx": 26,
      "time": 91,
      "pc": 919,
      "npc": 920
    },
    {
      "sliceIdx": 26,
      "time": 92,
      "pc": 920,
      "npc": 921
    },
    {
      "sliceIdx": 26,
      "time": 93,
      "pc": 921,
      "npc": 922
    },
    {
      "sliceIdx": 26,
      "time": 94,
      "pc": 922,
      "npc": 923
    },
    {
      "sliceIdx": 27,
      "time": 95,
      "pc": 923,
      "npc": 924
    },
    {
      "sliceIdx": 28,
      "time": 96,
      "pc": 924,
      "npc": 925
    },
    {
      "sliceIdx": 28,
      "time": 97,
      "pc": 925,
      "npc": 926
    },
    {
      "sliceIdx": 29,
      "time": 98,
      "pc": 926,
      "npc": 927
    },
    {
      "sliceIdx": 30,
      "time": 99,
      "pc": 927,
      "npc": 928
    },
    {
      "sliceIdx": 31,
      "time": 100,
      "pc": 928,
      "npc": 935
    },
    {
      "sliceIdx": 32,
      "time": 101,
      "pc": 935,
      "npc": 936
    },
    {
      "sliceIdx": 33,
      "time": 102,
      "pc": 936,
      "npc": 1220
    },
    {
      "sliceIdx": 33,
      "time": 103,
      "pc": 1220,
      "npc": 1221
    },
    {
      "sliceIdx": 33,
      "time": 104,
      "pc": 1221,
      "npc": 1222
    },
    {
      "sliceIdx": 33,
      "time": 105,
      "pc": 1222,
      "npc": 1223
    },
    {
      "sliceIdx": 33,
      "time": 106,
      "pc": 1223,
      "npc": 1224
    },
    {
      "sliceIdx": 33,
      "time": 107,
      "pc": 1224,
      "npc": 1225
    },
    {
      "pc": 1225,
      "npc": 1226,
      "sliceIdx": 34,
      "time": 108
    },
    {
      "sliceIdx": 34,
      "time": 109,
      "pc": 1226,
      "npc": 1227
    },
    {
      "sliceIdx": 34,
      "time": 110,
      "pc": 1227,
      "npc": 1228
    },
    {
      "sliceIdx": 35,
      "time": 111,
      "pc": 1228,
      "npc": 1229
    },
    {
      "sliceIdx": 35,
      "time": 112,
      "pc": 1229,
      "npc": 1211
    },
    {
      "sliceIdx": 35,
      "time": 113,
      "pc": 1211,
      "npc": 1212
    },
    {
      "sliceIdx": 35,
      "time": 114,
      "pc": 1212,
      "npc": 1213
    },
    {
      "sliceIdx": 35,
      "time": 115,
      "pc": 1213,
      "npc": 1230
    },
    {
      "sliceIdx": 35,
      "time": 116,
      "pc": 1230,
      "npc": 1231
    },
    {
      "sliceIdx": 36,
      "time": 117,
      "pc": 1231,
      "npc": 1232
    },
    {
      "sliceIdx": 37,
      "time": 118,
      "pc": 1232,
      "npc": 1233
    },
    {
      "sliceIdx": 37,
      "time": 119,
      "pc": 1233,
      "npc": 1265
    },
    {
      "sliceIdx": 37,
      "time": 120,
      "pc": 1265,
      "npc": 1266
    },
    {
      "sliceIdx": 37,
      "time": 121,
      "pc": 1266,
      "npc": 1363
    },
    {
      "sliceIdx": 37,
      "time": 122,
      "pc": 1363,
      "npc": 1364
    },
    {
      "sliceIdx": 37,
      "time": 123,
      "pc": 1364,
      "npc": 1365
    },
    {
      "sliceIdx": 37,
      "time": 124,
      "pc": 1365,
      "npc": 1366
    },
    {
      "sliceIdx": 37,
      "time": 125,
      "pc": 1366,
      "npc": 1367
    },
    {
      "sliceIdx": 38,
      "time": 126,
      "pc": 1367,
      "npc": 1368
    },
    {
      "sliceIdx": 38,
      "time": 127,
      "pc": 1368,
      "npc": 1369
    },
    {
      "sliceIdx": 38,
      "time": 128,
      "pc": 1369,
      "npc": 1370
    },
    {
      "sliceIdx": 38,
      "time": 129,
      "pc": 1370,
      "npc": 1371
    },
    {
      "sliceIdx": 38,
      "time": 130,
      "pc": 1371,
      "npc": 1372
    },
    {
      "sliceIdx": 39,
      "time": 131,
      "pc": 1372,
      "npc": 1373
    },
    {
      "sliceIdx": 39,
      "time": 132,
      "pc": 1373,
      "npc": 1374
    },
    {
      "sliceIdx": 39,
      "time": 133,
      "pc": 1374,
      "npc": 1375
    },
    {
      "sliceIdx": 39,
      "time": 134,
      "pc": 1375,
      "npc": 1376
    },
    {
      "sliceIdx": 39,
      "time": 135,
      "pc": 1376,
      "npc": 1377
    },
    {
      "sliceIdx": 39,
      "time": 136,
      "pc": 1377,
      "npc": 1378
    },
    {
      "sliceIdx": 39,
      "time": 137,
      "pc": 1378,
      "npc": 1379
    },
    {
      "pc": 1379,
      "npc": 1380,
      "sliceIdx": 40,
      "time": 138
    },
    {
      "sliceIdx": 40,
      "time": 139,
      "pc": 1380,
      "npc": 1381
    },
    {
      "sliceIdx": 40,
      "time": 140,
      "pc": 1381,
      "npc": 1382
    },
    {
      "sliceIdx": 40,
      "time": 141,
      "pc": 1382,
      "npc": 1383
    },
    {
      "sliceIdx": 40,
      "time": 142,
      "pc": 1383,
      "npc": 1384
    },
    {
      "pc": 1384,
      "npc": 1385,
      "sliceIdx": 41,
      "time": 143
    },
    {
      "sliceIdx": 41,
      "time": 144,
      "pc": 1385,
      "npc": 1386
    },
    {
      "sliceIdx": 41,
      "time": 145,
      "pc": 1386,
      "npc": 1387
    },
    {
      "sliceIdx": 41,
      "time": 146,
      "pc": 1387,
      "npc": 1388
    },
    {
      "sliceIdx": 41,
      "time": 147,
      "pc": 1388,
      "npc": 1389
    },
    {
      "sliceIdx": 41,
      "time": 148,
      "pc": 1389,
      "npc": 1367
    },
    {
      "sliceIdx": 42,
      "time": 149,
      "pc": 1367,
      "npc": 1368
    },
    {
      "sliceIdx": 42,
      "time": 150,
      "pc": 1368,
      "npc": 1369
    },
    {
      "sliceIdx": 42,
      "time": 151,
      "pc": 1369,
      "npc": 1370
    },
    {
      "sliceIdx": 42,
      "time": 152,
      "pc": 1370,
      "npc": 1371
    },
    {
      "sliceIdx": 42,
      "time": 153,
      "pc": 1371,
      "npc": 1372
    },
    {
      "sliceIdx": 43,
      "time": 154,
      "pc": 1372,
      "npc": 1373
    },
    {
      "sliceIdx": 43,
      "time": 155,
      "pc": 1373,
      "npc": 1374
    },
    {
      "sliceIdx": 43,
      "time": 156,
      "pc": 1374,
      "npc": 1375
    },
    {
      "sliceIdx": 43,
      "time": 157,
      "pc": 1375,
      "npc": 1376
    },
    {
      "sliceIdx": 43,
      "time": 158,
      "pc": 1376,
      "npc": 1377
    },
    {
      "sliceIdx": 43,
      "time": 159,
      "pc": 1377,
      "npc": 1378
    },
    {
      "sliceIdx": 43,
      "time": 160,
      "pc": 1378,
      "npc": 1379
    },
    {
      "pc": 1379,
      "npc": 1380,
      "sliceIdx": 44,
      "time": 161
    },
    {
      "sliceIdx": 44,
      "time": 162,
      "pc": 1380,
      "npc": 1381
    },
    {
      "sliceIdx": 44,
      "time": 163,
      "pc": 1381,
      "npc": 1382
    },
    {
      "sliceIdx": 44,
      "time": 164,
      "pc": 1382,
      "npc": 1383
    },
    {
      "sliceIdx": 44,
      "time": 165,
      "pc": 1383,
      "npc": 1384
    },
    {
      "pc": 1384,
      "npc": 1385,
      "sliceIdx": 45,
      "time": 166
    },
    {
      "sliceIdx": 45,
      "time": 167,
      "pc": 1385,
      "npc": 1386
    },
    {
      "sliceIdx": 45,
      "time": 168,
      "pc": 1386,
      "npc": 1387
    },
    {
      "sliceIdx": 45,
      "time": 169,
      "pc": 1387,
      "npc": 1388
    },
    {
      "sliceIdx": 45,
      "time": 170,
      "pc": 1388,
      "npc": 1389
    },
    {
      "sliceIdx": 45,
      "time": 171,
      "pc": 1389,
      "npc": 1367
    },
    {
      "sliceIdx": 45,
      "time": 172,
      "pc": 1367,
      "npc": 1368
    },
    {
      "sliceIdx": 45,
      "time": 173,
      "pc": 1368,
      "npc": 1390
    },
    {
      "sliceIdx": 45,
      "time": 174,
      "pc": 1390,
      "npc": 1391
    },
    {
      "sliceIdx": 46,
      "time": 175,
      "pc": 1391,
      "npc": 1391
    },
    {
      "pc": 1333,
      "npc": 1334,
      "sliceIdx": 47,
      "time": 176
    },
    {
      "sliceIdx": 48,
      "time": 177,
      "pc": 1334,
      "npc": 1335
    },
    {
      "sliceIdx": 49,
      "time": 178,
      "pc": 1335,
      "npc": 1336
    },
    {
      "sliceIdx": 50,
      "time": 179,
      "pc": 1336,
      "npc": 1337
    },
    {
      "sliceIdx": 50,
      "time": 180,
      "pc": 1337,
      "npc": 1338
    },
    {
      "sliceIdx": 50,
      "time": 181,
      "pc": 1338,
      "npc": 1339
    },
    {
      "sliceIdx": 50,
      "time": 182,
      "pc": 1339,
      "npc": 1340
    },
    {
      "sliceIdx": 50,
      "time": 183,
      "pc": 1340,
      "npc": 1341
    },
    {
      "sliceIdx": 51,
      "time": 184,
      "pc": 1341,
      "npc": 1342
    },
    {
      "sliceIdx": 52,
      "time": 185,
      "pc": 1342,
      "npc": 1343
    },
    {
      "sliceIdx": 52,
      "time": 186,
      "pc": 1343,
      "npc": 1344
    },
    {
      "sliceIdx": 53,
      "time": 187,
      "pc": 1344,
      "npc": 1267
    },
    {
      "sliceIdx": 54,
      "time": 188,
      "pc": 1267,
      "npc": 1268
    },
    {
      "sliceIdx": 54,
      "time": 189,
      "pc": 1268,
      "npc": 1269
    },
    {
      "sliceIdx": 54,
      "time": 190,
      "pc": 1269,
      "npc": 1270
    },
    {
      "sliceIdx": 54,
      "time": 191,
      "pc": 1270,
      "npc": 1271
    },
    {
      "sliceIdx": 54,
      "time": 192,
      "pc": 1271,
      "npc": 1272
    },
    {
      "sliceIdx": 54,
      "time": 193,
      "pc": 1272,
      "npc": 1273
    },
    {
      "sliceIdx": 55,
      "time": 194,
      "pc": 1273,
      "npc": 954
    },
    {
      "sliceIdx": 56,
      "time": 195,
      "pc": 954,
      "npc": 955
    },
    {
      "pc": 955,
      "npc": 956,
      "sliceIdx": 57,
      "time": 196
    },
    {
      "sliceIdx": 58,
      "time": 197,
      "pc": 956,
      "npc": 957
    },
    {
      "sliceIdx": 58,
      "time": 198,
      "pc": 957,
      "npc": 958
    },
    {
      "sliceIdx": 58,
      "time": 199,
      "pc": 958,
      "npc": 959
    },
    {
      "sliceIdx": 58,
      "time": 200,
      "pc": 959,
      "npc": 960
    },
    {
      "sliceIdx": 58,
      "time": 201,
      "pc": 960,
      "npc": 961
    },
    {
      "sliceIdx": 58,
      "time": 202,
      "pc": 961,
      "npc": 965
    },
    {
      "sliceIdx": 59,
      "time": 203,
      "pc": 965,
      "npc": 966
    },
    {
      "sliceIdx": 59,
      "time": 204,
      "pc": 966,
      "npc": 967
    },
    {
      "sliceIdx": 60,
      "time": 205,
      "pc": 967,
      "npc": 968
    },
    {
      "sliceIdx": 60,
      "time": 206,
      "pc": 968,
      "npc": 969
    },
    {
      "sliceIdx": 61,
      "time": 207,
      "pc": 969,
      "npc": 970
    },
    {
      "sliceIdx": 62,
      "time": 208,
      "pc": 970,
      "npc": 971
    },
    {
      "sliceIdx": 63,
      "time": 209,
      "pc": 971,
      "npc": 1274
    },
    {
      "sliceIdx": 63,
      "time": 210,
      "pc": 1274,
      "npc": 1275
    },
    {
      "sliceIdx": 63,
      "time": 211,
      "pc": 1275,
      "npc": 1276
    },
    {
      "sliceIdx": 63,
      "time": 212,
      "pc": 1276,
      "npc": 1277
    },
    {
      "sliceIdx": 63,
      "time": 213,
      "pc": 1277,
      "npc": 1278
    },
    {
      "sliceIdx": 63,
      "time": 214,
      "pc": 1278,
      "npc": 1279
    },
    {
      "sliceIdx": 63,
      "time": 215,
      "pc": 1279,
      "npc": 1280
    },
    {
      "pc": 1280,
      "npc": 1281,
      "sliceIdx": 64,
      "time": 216
    },
    {
      "sliceIdx": 65,
      "time": 217,
      "pc": 1281,
      "npc": 1282
    },
    {
      "sliceIdx": 65,
      "time": 218,
      "pc": 1282,
      "npc": 1283
    },
    {
      "sliceIdx": 65,
      "time": 219,
      "pc": 1283,
      "npc": 1284
    },
    {
      "sliceIdx": 66,
      "time": 220,
      "pc": 1284,
      "npc": 1285
    },
    {
      "sliceIdx": 66,
      "time": 221,
      "pc": 1285,
      "npc": 1286
    },
    {
      "sliceIdx": 66,
      "time": 222,
      "pc": 1286,
      "npc": 1287
    },
    {
      "sliceIdx": 66,
      "time": 223,
      "pc": 1287,
      "npc": 1288
    },
    {
      "sliceIdx": 67,
      "time": 224,
      "pc": 1288,
      "npc": 973
    },
    {
      "sliceIdx": 68,
      "time": 225,
      "pc": 973,
      "npc": 974
    },
    {
      "pc": 974,
      "npc": 975,
      "sliceIdx": 69,
      "time": 226
    },
    {
      "sliceIdx": 70,
      "time": 227,
      "pc": 975,
      "npc": 976
    },
    {
      "sliceIdx": 71,
      "time": 228,
      "pc": 976,
      "npc": 977
    },
    {
      "sliceIdx": 71,
      "time": 229,
      "pc": 977,
      "npc": 978
    },
    {
      "sliceIdx": 71,
      "time": 230,
      "pc": 978,
      "npc": 979
    },
    {
      "sliceIdx": 71,
      "time": 231,
      "pc": 979,
      "npc": 980
    },
    {
      "sliceIdx": 72,
      "time": 232,
      "pc": 980,
      "npc": 981
    },
    {
      "sliceIdx": 73,
      "time": 233,
      "pc": 981,
      "npc": 982
    },
    {
      "sliceIdx": 73,
      "time": 234,
      "pc": 982,
      "npc": 983
    },
    {
      "sliceIdx": 74,
      "time": 235,
      "pc": 983,
      "npc": 984
    },
    {
      "sliceIdx": 74,
      "time": 236,
      "pc": 984,
      "npc": 985
    },
    {
      "sliceIdx": 75,
      "time": 237,
      "pc": 985,
      "npc": 986
    },
    {
      "sliceIdx": 76,
      "time": 238,
      "pc": 986,
      "npc": 987
    },
    {
      "sliceIdx": 77,
      "time": 239,
      "pc": 987,
      "npc": 1289
    },
    {
      "sliceIdx": 77,
      "time": 240,
      "pc": 1289,
      "npc": 1290
    },
    {
      "sliceIdx": 78,
      "time": 241,
      "pc": 1290,
      "npc": 1345
    },
    {
      "sliceIdx": 79,
      "time": 242,
      "pc": 1345,
      "npc": 1346
    },
    {
      "sliceIdx": 79,
      "time": 243,
      "pc": 1346,
      "npc": 1347
    },
    {
      "sliceIdx": 79,
      "time": 244,
      "pc": 1347,
      "npc": 1348
    },
    {
      "sliceIdx": 80,
      "time": 245,
      "pc": 1348,
      "npc": 1349
    },
    {
      "sliceIdx": 80,
      "time": 246,
      "pc": 1349,
      "npc": 1350
    },
    {
      "sliceIdx": 80,
      "time": 247,
      "pc": 1350,
      "npc": 1351
    },
    {
      "sliceIdx": 80,
      "time": 248,
      "pc": 1351,
      "npc": 1352
    },
    {
      "sliceIdx": 80,
      "time": 249,
      "pc": 1352,
      "npc": 1353
    },
    {
      "sliceIdx": 81,
      "time": 250,
      "pc": 1353,
      "npc": 1354
    },
    {
      "sliceIdx": 81,
      "time": 251,
      "pc": 1354,
      "npc": 1355
    },
    {
      "sliceIdx": 81,
      "time": 252,
      "pc": 1355,
      "npc": 1356
    },
    {
      "sliceIdx": 82,
      "time": 253,
      "pc": 1356,
      "npc": 1357
    },
    {
      "sliceIdx": 82,
      "time": 254,
      "pc": 1357,
      "npc": 1358
    },
    {
      "sliceIdx": 83,
      "time": 255,
      "pc": 1358,
      "npc": 1293
    },
    {
      "sliceIdx": 84,
      "time": 256,
      "pc": 1293,
      "npc": 1294
    },
    {
      "sliceIdx": 85,
      "time": 257,
      "pc": 1294,
      "npc": 1295
    },
    {
      "sliceIdx": 86,
      "time": 258,
      "pc": 1295,
      "npc": 1296
    },
    {
      "sliceIdx": 86,
      "time": 259,
      "pc": 1296,
      "npc": 1297
    },
    {
      "sliceIdx": 86,
      "time": 260,
      "pc": 1297,
      "npc": 1298
    },
    {
      "sliceIdx": 86,
      "time": 261,
      "pc": 1298,
      "npc": 1299
    },
    {
      "sliceIdx": 86,
      "time": 262,
      "pc": 1299,
      "npc": 1300
    },
    {
      "sliceIdx": 87,
      "time": 263,
      "pc": 1300,
      "npc": 1301
    },
    {
      "sliceIdx": 88,
      "time": 264,
      "pc": 1301,
      "npc": 1302
    },
    {
      "sliceIdx": 88,
      "time": 265,
      "pc": 1302,
      "npc": 1303
    },
    {
      "sliceIdx": 88,
      "time": 266,
      "pc": 1303,
      "npc": 1304
    },
    {
      "sliceIdx": 88,
      "time": 267,
      "pc": 1304,
      "npc": 1305
    },
    {
      "sliceIdx": 88,
      "time": 268,
      "pc": 1305,
      "npc": 1306
    },
    {
      "sliceIdx": 88,
      "time": 269,
      "pc": 1306,
      "npc": 1307
    },
    {
      "sliceIdx": 89,
      "time": 270,
      "pc": 1307,
      "npc": 954
    },
    {
      "sliceIdx": 90,
      "time": 271,
      "pc": 954,
      "npc": 955
    },
    {
      "pc": 1333,
      "npc": 1334,
      "sliceIdx": 91,
      "time": 272
    },
    {
      "sliceIdx": 92,
      "time": 273,
      "pc": 1334,
      "npc": 1335
    },
    {
      "sliceIdx": 93,
      "time": 274,
      "pc": 1335,
      "npc": 1336
    },
    {
      "sliceIdx": 94,
      "time": 275,
      "pc": 1336,
      "npc": 1337
    },
    {
      "sliceIdx": 94,
      "time": 276,
      "pc": 1337,
      "npc": 1338
    },
    {
      "sliceIdx": 94,
      "time": 277,
      "pc": 1338,
      "npc": 1339
    },
    {
      "sliceIdx": 94,
      "time": 278,
      "pc": 1339,
      "npc": 1340
    },
    {
      "sliceIdx": 94,
      "time": 279,
      "pc": 1340,
      "npc": 1341
    },
    {
      "sliceIdx": 95,
      "time": 280,
      "pc": 1341,
      "npc": 1342
    },
    {
      "sliceIdx": 96,
      "time": 281,
      "pc": 1342,
      "npc": 1343
    },
    {
      "sliceIdx": 96,
      "time": 282,
      "pc": 1343,
      "npc": 1344
    },
    {
      "sliceIdx": 97,
      "time": 283,
      "pc": 1344,
      "npc": 1267
    },
    {
      "sliceIdx": 98,
      "time": 284,
      "pc": 1267,
      "npc": 1268
    },
    {
      "sliceIdx": 98,
      "time": 285,
      "pc": 1268,
      "npc": 1269
    },
    {
      "sliceIdx": 98,
      "time": 286,
      "pc": 1269,
      "npc": 1270
    },
    {
      "sliceIdx": 98,
      "time": 287,
      "pc": 1270,
      "npc": 1271
    },
    {
      "sliceIdx": 98,
      "time": 288,
      "pc": 1271,
      "npc": 1272
    },
    {
      "sliceIdx": 98,
      "time": 289,
      "pc": 1272,
      "npc": 1273
    },
    {
      "sliceIdx": 99,
      "time": 290,
      "pc": 1273,
      "npc": 954
    },
    {
      "sliceIdx": 100,
      "time": 291,
      "pc": 954,
      "npc": 955
    },
    {
      "pc": 955,
      "npc": 956,
      "sliceIdx": 101,
      "time": 292
    },
    {
      "sliceIdx": 102,
      "time": 293,
      "pc": 956,
      "npc": 957
    },
    {
      "sliceIdx": 102,
      "time": 294,
      "pc": 957,
      "npc": 958
    },
    {
      "sliceIdx": 102,
      "time": 295,
      "pc": 958,
      "npc": 959
    },
    {
      "sliceIdx": 102,
      "time": 296,
      "pc": 959,
      "npc": 960
    },
    {
      "sliceIdx": 102,
      "time": 297,
      "pc": 960,
      "npc": 961
    },
    {
      "sliceIdx": 102,
      "time": 298,
      "pc": 961,
      "npc": 965
    },
    {
      "sliceIdx": 103,
      "time": 299,
      "pc": 965,
      "npc": 966
    },
    {
      "sliceIdx": 103,
      "time": 300,
      "pc": 966,
      "npc": 967
    },
    {
      "sliceIdx": 104,
      "time": 301,
      "pc": 967,
      "npc": 968
    },
    {
      "sliceIdx": 104,
      "time": 302,
      "pc": 968,
      "npc": 969
    },
    {
      "sliceIdx": 105,
      "time": 303,
      "pc": 969,
      "npc": 970
    },
    {
      "sliceIdx": 106,
      "time": 304,
      "pc": 970,
      "npc": 971
    },
    {
      "sliceIdx": 107,
      "time": 305,
      "pc": 971,
      "npc": 1274
    },
    {
      "sliceIdx": 107,
      "time": 306,
      "pc": 1274,
      "npc": 1275
    },
    {
      "sliceIdx": 107,
      "time": 307,
      "pc": 1275,
      "npc": 1276
    },
    {
      "sliceIdx": 107,
      "time": 308,
      "pc": 1276,
      "npc": 1277
    },
    {
      "sliceIdx": 107,
      "time": 309,
      "pc": 1277,
      "npc": 1278
    },
    {
      "sliceIdx": 107,
      "time": 310,
      "pc": 1278,
      "npc": 1279
    },
    {
      "sliceIdx": 107,
      "time": 311,
      "pc": 1279,
      "npc": 1280
    },
    {
      "pc": 1280,
      "npc": 1281,
      "sliceIdx": 108,
      "time": 312
    },
    {
      "sliceIdx": 109,
      "time": 313,
      "pc": 1281,
      "npc": 1282
    },
    {
      "sliceIdx": 109,
      "time": 314,
      "pc": 1282,
      "npc": 1283
    },
    {
      "sliceIdx": 109,
      "time": 315,
      "pc": 1283,
      "npc": 1284
    },
    {
      "sliceIdx": 110,
      "time": 316,
      "pc": 1284,
      "npc": 1285
    },
    {
      "sliceIdx": 110,
      "time": 317,
      "pc": 1285,
      "npc": 1286
    },
    {
      "sliceIdx": 110,
      "time": 318,
      "pc": 1286,
      "npc": 1287
    },
    {
      "sliceIdx": 110,
      "time": 319,
      "pc": 1287,
      "npc": 1288
    },
    {
      "sliceIdx": 111,
      "time": 320,
      "pc": 1288,
      "npc": 973
    },
    {
      "sliceIdx": 112,
      "time": 321,
      "pc": 973,
      "npc": 974
    },
    {
      "pc": 974,
      "npc": 975,
      "sliceIdx": 113,
      "time": 322
    },
    {
      "sliceIdx": 114,
      "time": 323,
      "pc": 975,
      "npc": 976
    },
    {
      "sliceIdx": 115,
      "time": 324,
      "pc": 976,
      "npc": 977
    },
    {
      "sliceIdx": 115,
      "time": 325,
      "pc": 977,
      "npc": 978
    },
    {
      "sliceIdx": 115,
      "time": 326,
      "pc": 978,
      "npc": 979
    },
    {
      "sliceIdx": 115,
      "time": 327,
      "pc": 979,
      "npc": 980
    },
    {
      "sliceIdx": 116,
      "time": 328,
      "pc": 980,
      "npc": 981
    },
    {
      "sliceIdx": 117,
      "time": 329,
      "pc": 981,
      "npc": 982
    },
    {
      "sliceIdx": 117,
      "time": 330,
      "pc": 982,
      "npc": 983
    },
    {
      "sliceIdx": 118,
      "time": 331,
      "pc": 983,
      "npc": 984
    },
    {
      "sliceIdx": 118,
      "time": 332,
      "pc": 984,
      "npc": 985
    },
    {
      "sliceIdx": 119,
      "time": 333,
      "pc": 985,
      "npc": 986
    },
    {
      "sliceIdx": 120,
      "time": 334,
      "pc": 986,
      "npc": 987
    },
    {
      "sliceIdx": 121,
      "time": 335,
      "pc": 987,
      "npc": 1289
    },
    {
      "sliceIdx": 121,
      "time": 336,
      "pc": 1289,
      "npc": 1290
    },
    {
      "sliceIdx": 122,
      "time": 337,
      "pc": 1290,
      "npc": 1345
    },
    {
      "sliceIdx": 123,
      "time": 338,
      "pc": 1345,
      "npc": 1346
    },
    {
      "sliceIdx": 123,
      "time": 339,
      "pc": 1346,
      "npc": 1347
    },
    {
      "sliceIdx": 123,
      "time": 340,
      "pc": 1347,
      "npc": 1348
    },
    {
      "sliceIdx": 124,
      "time": 341,
      "pc": 1348,
      "npc": 1349
    },
    {
      "sliceIdx": 124,
      "time": 342,
      "pc": 1349,
      "npc": 1350
    },
    {
      "sliceIdx": 124,
      "time": 343,
      "pc": 1350,
      "npc": 1351
    },
    {
      "sliceIdx": 124,
      "time": 344,
      "pc": 1351,
      "npc": 1352
    },
    {
      "sliceIdx": 124,
      "time": 345,
      "pc": 1352,
      "npc": 1353
    },
    {
      "sliceIdx": 125,
      "time": 346,
      "pc": 1353,
      "npc": 1354
    },
    {
      "sliceIdx": 125,
      "time": 347,
      "pc": 1354,
      "npc": 1355
    },
    {
      "sliceIdx": 125,
      "time": 348,
      "pc": 1355,
      "npc": 1356
    },
    {
      "sliceIdx": 126,
      "time": 349,
      "pc": 1356,
      "npc": 1357
    },
    {
      "sliceIdx": 126,
      "time": 350,
      "pc": 1357,
      "npc": 1358
    },
    {
      "sliceIdx": 127,
      "time": 351,
      "pc": 1358,
      "npc": 1293
    },
    {
      "sliceIdx": 128,
      "time": 352,
      "pc": 1293,
      "npc": 1294
    },
    {
      "sliceIdx": 129,
      "time": 353,
      "pc": 1294,
      "npc": 1295
    },
    {
      "sliceIdx": 130,
      "time": 354,
      "pc": 1295,
      "npc": 1296
    },
    {
      "sliceIdx": 130,
      "time": 355,
      "pc": 1296,
      "npc": 1297
    },
    {
      "sliceIdx": 130,
      "time": 356,
      "pc": 1297,
      "npc": 1298
    },
    {
      "sliceIdx": 130,
      "time": 357,
      "pc": 1298,
      "npc": 1299
    },
    {
      "sliceIdx": 130,
      "time": 358,
      "pc": 1299,
      "npc": 1300
    },
    {
      "sliceIdx": 131,
      "time": 359,
      "pc": 1300,
      "npc": 1301
    },
    {
      "sliceIdx": 132,
      "time": 360,
      "pc": 1301,
      "npc": 1302
    },
    {
      "sliceIdx": 132,
      "time": 361,
      "pc": 1302,
      "npc": 1303
    },
    {
      "sliceIdx": 132,
      "time": 362,
      "pc": 1303,
      "npc": 1304
    },
    {
      "sliceIdx": 132,
      "time": 363,
      "pc": 1304,
      "npc": 1305
    },
    {
      "sliceIdx": 132,
      "time": 364,
      "pc": 1305,
      "npc": 1306
    },
    {
      "sliceIdx": 132,
      "time": 365,
      "pc": 1306,
      "npc": 1307
    },
    {
      "sliceIdx": 133,
      "time": 366,
      "pc": 1307,
      "npc": 954
    },
    {
      "sliceIdx": 134,
      "time": 367,
      "pc": 954,
      "npc": 955
    },
    {
      "pc": 955,
      "npc": 956,
      "sliceIdx": 135,
      "time": 368
    },
    {
      "sliceIdx": 136,
      "time": 369,
      "pc": 956,
      "npc": 957
    },
    {
      "sliceIdx": 136,
      "time": 370,
      "pc": 957,
      "npc": 958
    },
    {
      "sliceIdx": 136,
      "time": 371,
      "pc": 958,
      "npc": 959
    },
    {
      "sliceIdx": 136,
      "time": 372,
      "pc": 959,
      "npc": 960
    },
    {
      "sliceIdx": 136,
      "time": 373,
      "pc": 960,
      "npc": 961
    },
    {
      "sliceIdx": 136,
      "time": 374,
      "pc": 961,
      "npc": 965
    },
    {
      "sliceIdx": 137,
      "time": 375,
      "pc": 965,
      "npc": 966
    },
    {
      "sliceIdx": 137,
      "time": 376,
      "pc": 966,
      "npc": 967
    },
    {
      "sliceIdx": 138,
      "time": 377,
      "pc": 967,
      "npc": 968
    },
    {
      "sliceIdx": 138,
      "time": 378,
      "pc": 968,
      "npc": 969
    },
    {
      "sliceIdx": 139,
      "time": 379,
      "pc": 969,
      "npc": 970
    },
    {
      "sliceIdx": 140,
      "time": 380,
      "pc": 970,
      "npc": 971
    },
    {
      "sliceIdx": 141,
      "time": 381,
      "pc": 971,
      "npc": 1308
    },
    {
      "sliceIdx": 141,
      "time": 382,
      "pc": 1308,
      "npc": 1309
    },
    {
      "sliceIdx": 141,
      "time": 383,
      "pc": 1309,
      "npc": 1310
    },
    {
      "sliceIdx": 141,
      "time": 384,
      "pc": 1310,
      "npc": 1311
    },
    {
      "sliceIdx": 141,
      "time": 385,
      "pc": 1311,
      "npc": 1312
    },
    {
      "sliceIdx": 141,
      "time": 386,
      "pc": 1312,
      "npc": 1313
    },
    {
      "sliceIdx": 141,
      "time": 387,
      "pc": 1313,
      "npc": 1314
    },
    {
      "sliceIdx": 141,
      "time": 388,
      "pc": 1314,
      "npc": 1315
    },
    {
      "pc": 1315,
      "npc": 1316,
      "sliceIdx": 142,
      "time": 389
    },
    {
      "sliceIdx": 142,
      "time": 390,
      "pc": 1316,
      "npc": 1317
    },
    {
      "sliceIdx": 143,
      "time": 391,
      "pc": 1317,
      "npc": 1318
    },
    {
      "sliceIdx": 143,
      "time": 392,
      "pc": 1318,
      "npc": 1319
    },
    {
      "pc": 1319,
      "npc": 1320,
      "sliceIdx": 144,
      "time": 393
    },
    {
      "sliceIdx": 144,
      "time": 394,
      "pc": 1320,
      "npc": 1321
    },
    {
      "sliceIdx": 144,
      "time": 395,
      "pc": 1321,
      "npc": 1322
    },
    {
      "sliceIdx": 145,
      "time": 396,
      "pc": 1322,
      "npc": 1323
    },
    {
      "sliceIdx": 145,
      "time": 397,
      "pc": 1323,
      "npc": 1324
    },
    {
      "sliceIdx": 145,
      "time": 398,
      "pc": 1324,
      "npc": 1325
    },
    {
      "sliceIdx": 145,
      "time": 399,
      "pc": 1325,
      "npc": 1326
    },
    {
      "sliceIdx": 146,
      "time": 400,
      "pc": 1326,
      "npc": 973
    },
    {
      "sliceIdx": 147,
      "time": 401,
      "pc": 973,
      "npc": 974
    },
    {
      "pc": 974,
      "npc": 975,
      "sliceIdx": 148,
      "time": 402
    },
    {
      "sliceIdx": 149,
      "time": 403,
      "pc": 975,
      "npc": 976
    },
    {
      "sliceIdx": 150,
      "time": 404,
      "pc": 976,
      "npc": 977
    },
    {
      "sliceIdx": 150,
      "time": 405,
      "pc": 977,
      "npc": 978
    },
    {
      "sliceIdx": 150,
      "time": 406,
      "pc": 978,
      "npc": 979
    },
    {
      "sliceIdx": 150,
      "time": 407,
      "pc": 979,
      "npc": 980
    },
    {
      "sliceIdx": 151,
      "time": 408,
      "pc": 980,
      "npc": 981
    },
    {
      "sliceIdx": 152,
      "time": 409,
      "pc": 981,
      "npc": 982
    },
    {
      "sliceIdx": 152,
      "time": 410,
      "pc": 982,
      "npc": 983
    },
    {
      "sliceIdx": 153,
      "time": 411,
      "pc": 983,
      "npc": 984
    },
    {
      "sliceIdx": 153,
      "time": 412,
      "pc": 984,
      "npc": 985
    },
    {
      "sliceIdx": 154,
      "time": 413,
      "pc": 985,
      "npc": 986
    },
    {
      "sliceIdx": 155,
      "time": 414,
      "pc": 986,
      "npc": 987
    },
    {
      "sliceIdx": 156,
      "time": 415,
      "pc": 987,
      "npc": 1327
    },
    {
      "sliceIdx": 156,
      "time": 416,
      "pc": 1327,
      "npc": 1328
    },
    {
      "sliceIdx": 156,
      "time": 417,
      "pc": 1328,
      "npc": 1329
    },
    {
      "sliceIdx": 157,
      "time": 418,
      "pc": 1329,
      "npc": 1330
    },
    {
      "sliceIdx": 158,
      "time": 419,
      "pc": 1330,
      "npc": 1359
    },
    {
      "sliceIdx": 158,
      "time": 420,
      "pc": 1359,
      "npc": 1360
    },
    {
      "sliceIdx": 158,
      "time": 421,
      "pc": 1360,
      "npc": 1361
    },
    {
      "sliceIdx": 158,
      "time": 422,
      "pc": 1361,
      "npc": 1362
    },
    {
      "sliceIdx": 159,
      "time": 423,
      "pc": 1362,
      "npc": 1362
    },
    {
      "pc": 955,
      "npc": 956,
      "sliceIdx": 160,
      "time": 424
    },
    {
      "sliceIdx": 161,
      "time": 425,
      "pc": 956,
      "npc": 957
    },
    {
      "sliceIdx": 161,
      "time": 426,
      "pc": 957,
      "npc": 958
    },
    {
      "sliceIdx": 161,
      "time": 427,
      "pc": 958,
      "npc": 959
    },
    {
      "sliceIdx": 161,
      "time": 428,
      "pc": 959,
      "npc": 960
    },
    {
      "sliceIdx": 161,
      "time": 429,
      "pc": 960,
      "npc": 961
    },
    {
      "sliceIdx": 161,
      "time": 430,
      "pc": 961,
      "npc": 965
    },
    {
      "sliceIdx": 162,
      "time": 431,
      "pc": 965,
      "npc": 966
    },
    {
      "sliceIdx": 162,
      "time": 432,
      "pc": 966,
      "npc": 967
    },
    {
      "sliceIdx": 163,
      "time": 433,
      "pc": 967,
      "npc": 968
    },
    {
      "sliceIdx": 163,
      "time": 434,
      "pc": 968,
      "npc": 969
    },
    {
      "sliceIdx": 164,
      "time": 435,
      "pc": 969,
      "npc": 970
    },
    {
      "sliceIdx": 165,
      "time": 436,
      "pc": 970,
      "npc": 971
    },
    {
      "sliceIdx": 166,
      "time": 437,
      "pc": 971,
      "npc": 1308
    },
    {
      "sliceIdx": 166,
      "time": 438,
      "pc": 1308,
      "npc": 1309
    },
    {
      "sliceIdx": 166,
      "time": 439,
      "pc": 1309,
      "npc": 1310
    },
    {
      "sliceIdx": 166,
      "time": 440,
      "pc": 1310,
      "npc": 1311
    },
    {
      "sliceIdx": 166,
      "time": 441,
      "pc": 1311,
      "npc": 1312
    },
    {
      "sliceIdx": 166,
      "time": 442,
      "pc": 1312,
      "npc": 1313
    },
    {
      "sliceIdx": 166,
      "time": 443,
      "pc": 1313,
      "npc": 1314
    },
    {
      "sliceIdx": 166,
      "time": 444,
      "pc": 1314,
      "npc": 1315
    },
    {
      "pc": 1315,
      "npc": 1316,
      "sliceIdx": 167,
      "time": 445
    },
    {
      "sliceIdx": 167,
      "time": 446,
      "pc": 1316,
      "npc": 1317
    },
    {
      "sliceIdx": 168,
      "time": 447,
      "pc": 1317,
      "npc": 1318
    },
    {
      "sliceIdx": 168,
      "time": 448,
      "pc": 1318,
      "npc": 1319
    },
    {
      "pc": 1319,
      "npc": 1320,
      "sliceIdx": 169,
      "time": 449
    },
    {
      "sliceIdx": 169,
      "time": 450,
      "pc": 1320,
      "npc": 1321
    },
    {
      "sliceIdx": 169,
      "time": 451,
      "pc": 1321,
      "npc": 1322
    },
    {
      "sliceIdx": 170,
      "time": 452,
      "pc": 1322,
      "npc": 1323
    },
    {
      "sliceIdx": 170,
      "time": 453,
      "pc": 1323,
      "npc": 1324
    },
    {
      "sliceIdx": 170,
      "time": 454,
      "pc": 1324,
      "npc": 1325
    },
    {
      "sliceIdx": 170,
      "time": 455,
      "pc": 1325,
      "npc": 1326
    },
    {
      "sliceIdx": 171,
      "time": 456,
      "pc": 1326,
      "npc": 973
    },
    {
      "sliceIdx": 172,
      "time": 457,
      "pc": 973,
      "npc": 974
    },
    {
      "pc": 1234,
      "npc": 1235,
      "sliceIdx": 173,
      "time": 458
    },
    {
      "sliceIdx": 173,
      "time": 459,
      "pc": 1235,
      "npc": 1236
    },
    {
      "sliceIdx": 174,
      "time": 460,
      "pc": 1236,
      "npc": 1237
    },
    {
      "sliceIdx": 174,
      "time": 461,
      "pc": 1237,
      "npc": 1238
    },
    {
      "sliceIdx": 174,
      "time": 462,
      "pc": 1238,
      "npc": 1239
    },
    {
      "sliceIdx": 174,
      "time": 463,
      "pc": 1239,
      "npc": 1240
    },
    {
      "sliceIdx": 174,
      "time": 464,
      "pc": 1240,
      "npc": 1241
    },
    {
      "sliceIdx": 174,
      "time": 465,
      "pc": 1241,
      "npc": 1242
    },
    {
      "sliceIdx": 174,
      "time": 466,
      "pc": 1242,
      "npc": 1243
    },
    {
      "sliceIdx": 175,
      "time": 467,
      "pc": 1243,
      "npc": 1244
    },
    {
      "sliceIdx": 175,
      "time": 468,
      "pc": 1244,
      "npc": 1245
    },
    {
      "sliceIdx": 175,
      "time": 469,
      "pc": 1245,
      "npc": 1246
    },
    {
      "sliceIdx": 176,
      "time": 470,
      "pc": 1246,
      "npc": 1247
    },
    {
      "sliceIdx": 176,
      "time": 471,
      "pc": 1247,
      "npc": 1248
    },
    {
      "sliceIdx": 176,
      "time": 472,
      "pc": 1248,
      "npc": 1249
    },
    {
      "sliceIdx": 177,
      "time": 473,
      "pc": 1249,
      "npc": 1250
    },
    {
      "sliceIdx": 177,
      "time": 474,
      "pc": 1250,
      "npc": 1251
    },
    {
      "sliceIdx": 177,
      "time": 475,
      "pc": 1251,
      "npc": 1252
    },
    {
      "sliceIdx": 177,
      "time": 476,
      "pc": 1252,
      "npc": 1253
    },
    {
      "sliceIdx": 177,
      "time": 477,
      "pc": 1253,
      "npc": 1254
    },
    {
      "sliceIdx": 177,
      "time": 478,
      "pc": 1254,
      "npc": 1255
    },
    {
      "sliceIdx": 178,
      "time": 479,
      "pc": 1255,
      "npc": 1256
    },
    {
      "sliceIdx": 178,
      "time": 480,
      "pc": 1256,
      "npc": 1243
    },
    {
      "sliceIdx": 179,
      "time": 481,
      "pc": 1243,
      "npc": 1244
    },
    {
      "sliceIdx": 179,
      "time": 482,
      "pc": 1244,
      "npc": 1245
    },
    {
      "sliceIdx": 179,
      "time": 483,
      "pc": 1245,
      "npc": 1246
    },
    {
      "sliceIdx": 180,
      "time": 484,
      "pc": 1246,
      "npc": 1247
    },
    {
      "sliceIdx": 180,
      "time": 485,
      "pc": 1247,
      "npc": 1248
    },
    {
      "sliceIdx": 180,
      "time": 486,
      "pc": 1248,
      "npc": 1249
    },
    {
      "sliceIdx": 181,
      "time": 487,
      "pc": 1249,
      "npc": 1250
    },
    {
      "sliceIdx": 181,
      "time": 488,
      "pc": 1250,
      "npc": 1251
    },
    {
      "sliceIdx": 181,
      "time": 489,
      "pc": 1251,
      "npc": 1252
    },
    {
      "sliceIdx": 181,
      "time": 490,
      "pc": 1252,
      "npc": 1253
    },
    {
      "sliceIdx": 181,
      "time": 491,
      "pc": 1253,
      "npc": 1254
    },
    {
      "sliceIdx": 181,
      "time": 492,
      "pc": 1254,
      "npc": 1255
    },
    {
      "sliceIdx": 182,
      "time": 493,
      "pc": 1255,
      "npc": 1256
    },
    {
      "sliceIdx": 182,
      "time": 494,
      "pc": 1256,
      "npc": 1243
    },
    {
      "sliceIdx": 182,
      "time": 495,
      "pc": 1243,
      "npc": 1244
    },
    {
      "sliceIdx": 182,
      "time": 496,
      "pc": 1244,
      "npc": 1257
    },
    {
      "sliceIdx": 182,
      "time": 497,
      "pc": 1257,
      "npc": 1258
    },
    {
      "sliceIdx": 182,
      "time": 498,
      "pc": 1258,
      "npc": 1259
    },
    {
      "sliceIdx": 183,
      "time": 499,
      "pc": 1259,
      "npc": 1260
    },
    {
      "sliceIdx": 183,
      "time": 500,
      "pc": 1260,
      "npc": 1261
    },
    {
      "sliceIdx": 183,
      "time": 501,
      "pc": 1261,
      "npc": 1262
    },
    {
      "sliceIdx": 183,
      "time": 502,
      "pc": 1262,
      "npc": 1263
    },
    {
      "sliceIdx": 184,
      "time": 503,
      "pc": 1263,
      "npc": 1263
    }
  ],
  "macroSteps": [
    {
      "tid": "0",
      "name": "__init__()",
      "duration": 66,
      "startSliceIdx": 0,
      "lastSliceIdx": 17
    },
    {
      "tid": "0",
      "name": "__init__()",
      "duration": 42,
      "startSliceIdx": 17,
      "lastSliceIdx": 34
    },
    {
      "tid": "0",
      "name": "__init__()",
      "duration": 30,
      "startSliceIdx": 34,
      "lastSliceIdx": 40
    },
    {
      "tid": "0",
      "name": "__init__()",
      "duration": 5,
      "startSliceIdx": 40,
      "lastSliceIdx": 41
    },
    {
      "tid": "0",
      "name": "__init__()",
      "duration": 18,
      "startSliceIdx": 41,
      "lastSliceIdx": 44
    },
    {
      "tid": "0",
      "name": "__init__()",
      "duration": 5,
      "startSliceIdx": 44,
      "lastSliceIdx": 45
    },
    {
      "tid": "0",
      "name": "__init__()",
      "duration": 10,
      "startSliceIdx": 45,
      "lastSliceIdx": 47
    },
    {
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "duration": 20,
      "startSliceIdx": 47,
      "lastSliceIdx": 57
    },
    {
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "duration": 20,
      "startSliceIdx": 57,
      "lastSliceIdx": 64
    },
    {
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "duration": 10,
      "startSliceIdx": 64,
      "lastSliceIdx": 69
    },
    {
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "duration": 46,
      "startSliceIdx": 69,
      "lastSliceIdx": 91
    },
    {
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "duration": 20,
      "startSliceIdx": 91,
      "lastSliceIdx": 101
    },
    {
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "duration": 20,
      "startSliceIdx": 101,
      "lastSliceIdx": 108
    },
    {
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "duration": 10,
      "startSliceIdx": 108,
      "lastSliceIdx": 113
    },
    {
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "duration": 46,
      "startSliceIdx": 113,
      "lastSliceIdx": 135
    },
    {
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "duration": 21,
      "startSliceIdx": 135,
      "lastSliceIdx": 142
    },
    {
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "duration": 4,
      "startSliceIdx": 142,
      "lastSliceIdx": 144
    },
    {
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "duration": 9,
      "startSliceIdx": 144,
      "lastSliceIdx": 148
    },
    {
      "tid": "1",
      "name": "customer(1, 0, 1)",
      "duration": 22,
      "startSliceIdx": 148,
      "lastSliceIdx": 160
    },
    {
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "duration": 21,
      "startSliceIdx": 160,
      "lastSliceIdx": 167
    },
    {
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "duration": 4,
      "startSliceIdx": 167,
      "lastSliceIdx": 169
    },
    {
      "tid": "2",
      "name": "customer(2, 0, 1)",
      "duration": 9,
      "startSliceIdx": 169,
      "lastSliceIdx": 173
    },
    {
      "tid": "3",
      "name": "invariant()",
      "duration": 46,
      "startSliceIdx": 173,
      "lastSliceIdx": 185
    }
  ],
  "idToThreadName": {
    "0": "__init__()",
    "1": "customer(1, 0, 1)",
    "2": "customer(2, 0, 1)",
    "3": "invariant()"
  },
  "executedCode": [
    {
      "initialPc": 0,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "1",
      "sourceCode": "from synch import Lock, acquire, release",
      "assembly": [
        {
          "assembly": "Frame __init__()",
          "explain": "start of method __init__"
        }
      ]
    },
    {
      "initialPc": 1,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "2",
      "sourceCode": "def subseq(s, b, e) returns result:",
      "assembly": [
        {
          "assembly": "Jump 54",
          "explain": "jump over method definition: set program counter to 54"
        }
      ]
    },
    {
      "initialPc": 2,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "2",
      "sourceCode": "def subseq(s, b, e) returns result:",
      "assembly": [
        {
          "assembly": "Frame subseq(s, b, e)",
          "explain": "start of method subseq"
        }
      ]
    },
    {
      "initialPc": 3,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "3",
      "sourceCode": "    result = [ s[x] for x in {b..e-1} ]",
      "assembly": [
        {
          "assembly": "DelVar result",
          "explain": "delete method variable result"
        }
      ]
    },
    {
      "initialPc": 4,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "3",
      "sourceCode": "    result = [ s[x] for x in {b..e-1} ]",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "initialize accumulator for list comprehension: push constant ()"
        }
      ]
    },
    {
      "initialPc": 5,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "3",
      "sourceCode": "    result = [ s[x] for x in {b..e-1} ]",
      "assembly": [
        {
          "assembly": "StoreVar $accu3",
          "explain": "initialize accumulator for list comprehension: pop a value and store in $accu3"
        }
      ]
    },
    {
      "initialPc": 6,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "3",
      "sourceCode": "    result = [ s[x] for x in {b..e-1} ]",
      "assembly": [
        {
          "assembly": "LoadVar b",
          "explain": "push the value of b"
        }
      ]
    },
    {
      "initialPc": 7,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "3",
      "sourceCode": "    result = [ s[x] for x in {b..e-1} ]",
      "assembly": [
        {
          "assembly": "DelVar b",
          "explain": "delete method variable b"
        }
      ]
    },
    {
      "initialPc": 8,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "3",
      "sourceCode": "    result = [ s[x] for x in {b..e-1} ]",
      "assembly": [
        {
          "assembly": "LoadVar e",
          "explain": "push the value of e"
        }
      ]
    },
    {
      "initialPc": 9,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "3",
      "sourceCode": "    result = [ s[x] for x in {b..e-1} ]",
      "assembly": [
        {
          "assembly": "DelVar e",
          "explain": "delete method variable e"
        }
      ]
    },
    {
      "initialPc": 10,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "3",
      "sourceCode": "    result = [ s[x] for x in {b..e-1} ]",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 11,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "3",
      "sourceCode": "    result = [ s[x] for x in {b..e-1} ]",
      "assembly": [
        {
          "assembly": "2-ary -",
          "explain": "pop 2 values and push the result of applying -"
        }
      ]
    },
    {
      "initialPc": 12,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "3",
      "sourceCode": "    result = [ s[x] for x in {b..e-1} ]",
      "assembly": [
        {
          "assembly": "2-ary ..",
          "explain": "pop 2 values and push the result of applying .."
        }
      ]
    },
    {
      "initialPc": 13,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "3",
      "sourceCode": "    result = [ s[x] for x in {b..e-1} ]",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 14,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "3",
      "sourceCode": "    result = [ s[x] for x in {b..e-1} ]",
      "assembly": [
        {
          "assembly": "Cut(x)",
          "explain": "get next element and assign to x; push False or True depending on success"
        }
      ]
    },
    {
      "initialPc": 15,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "3",
      "sourceCode": "    result = [ s[x] for x in {b..e-1} ]",
      "assembly": [
        {
          "assembly": "JumpCond False 26",
          "explain": "check if loop is done: pop a value and jump to 26 if the value is False"
        }
      ]
    },
    {
      "initialPc": 16,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "3",
      "sourceCode": "    result = [ s[x] for x in {b..e-1} ]",
      "assembly": [
        {
          "assembly": "LoadVar $accu3",
          "explain": "load accumulator: push the value of $accu3"
        }
      ]
    },
    {
      "initialPc": 17,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "3",
      "sourceCode": "    result = [ s[x] for x in {b..e-1} ]",
      "assembly": [
        {
          "assembly": "DelVar $accu3",
          "explain": "delete method variable $accu3"
        }
      ]
    },
    {
      "initialPc": 18,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "3",
      "sourceCode": "    result = [ s[x] for x in {b..e-1} ]",
      "assembly": [
        {
          "assembly": "LoadVar s",
          "explain": "push the value of s"
        }
      ]
    },
    {
      "initialPc": 19,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "3",
      "sourceCode": "    result = [ s[x] for x in {b..e-1} ]",
      "assembly": [
        {
          "assembly": "LoadVar x",
          "explain": "push the value of x"
        }
      ]
    },
    {
      "initialPc": 20,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "3",
      "sourceCode": "    result = [ s[x] for x in {b..e-1} ]",
      "assembly": [
        {
          "assembly": "DelVar x",
          "explain": "delete method variable x"
        }
      ]
    },
    {
      "initialPc": 21,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "3",
      "sourceCode": "    result = [ s[x] for x in {b..e-1} ]",
      "assembly": [
        {
          "assembly": "2-ary Closure",
          "explain": "pop 2 values and push the result of applying Closure"
        }
      ]
    },
    {
      "initialPc": 22,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "3",
      "sourceCode": "    result = [ s[x] for x in {b..e-1} ]",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 23,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "3",
      "sourceCode": "    result = [ s[x] for x in {b..e-1} ]",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 24,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "3",
      "sourceCode": "    result = [ s[x] for x in {b..e-1} ]",
      "assembly": [
        {
          "assembly": "StoreVar $accu3",
          "explain": "update accumulator: pop a value and store in $accu3"
        }
      ]
    },
    {
      "initialPc": 25,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "3",
      "sourceCode": "    result = [ s[x] for x in {b..e-1} ]",
      "assembly": [
        {
          "assembly": "Jump 14",
          "explain": "set program counter to 14"
        }
      ]
    },
    {
      "initialPc": 26,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "3",
      "sourceCode": "    result = [ s[x] for x in {b..e-1} ]",
      "assembly": [
        {
          "assembly": "DelVar s",
          "explain": "delete method variable s"
        }
      ]
    },
    {
      "initialPc": 27,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "3",
      "sourceCode": "    result = [ s[x] for x in {b..e-1} ]",
      "assembly": [
        {
          "assembly": "DelVar x",
          "explain": "delete method variable x"
        }
      ]
    },
    {
      "initialPc": 28,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "3",
      "sourceCode": "    result = [ s[x] for x in {b..e-1} ]",
      "assembly": [
        {
          "assembly": "LoadVar $accu3",
          "explain": "load final accumulator result: push the value of $accu3"
        }
      ]
    },
    {
      "initialPc": 29,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "3",
      "sourceCode": "    result = [ s[x] for x in {b..e-1} ]",
      "assembly": [
        {
          "assembly": "DelVar $accu3",
          "explain": "delete method variable $accu3"
        }
      ]
    },
    {
      "initialPc": 30,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "3",
      "sourceCode": "    result = [ s[x] for x in {b..e-1} ]",
      "assembly": [
        {
          "assembly": "StoreVar result",
          "explain": "pop a value and store in result"
        }
      ]
    },
    {
      "initialPc": 31,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "2",
      "sourceCode": "def subseq(s, b, e) returns result:",
      "assembly": [
        {
          "assembly": "ReturnOp(result)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 32,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "5",
      "sourceCode": "def append(s, e) returns result:",
      "assembly": [
        {
          "assembly": "Jump 54",
          "explain": "jump over method definition: set program counter to 54"
        }
      ]
    },
    {
      "initialPc": 33,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "5",
      "sourceCode": "def append(s, e) returns result:",
      "assembly": [
        {
          "assembly": "Frame append(s, e)",
          "explain": "start of method append"
        }
      ]
    },
    {
      "initialPc": 34,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "6",
      "sourceCode": "    result = s + [e,]",
      "assembly": [
        {
          "assembly": "DelVar result",
          "explain": "delete method variable result"
        }
      ]
    },
    {
      "initialPc": 35,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "6",
      "sourceCode": "    result = s + [e,]",
      "assembly": [
        {
          "assembly": "LoadVar s",
          "explain": "push the value of s"
        }
      ]
    },
    {
      "initialPc": 36,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "6",
      "sourceCode": "    result = s + [e,]",
      "assembly": [
        {
          "assembly": "DelVar s",
          "explain": "delete method variable s"
        }
      ]
    },
    {
      "initialPc": 37,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "6",
      "sourceCode": "    result = s + [e,]",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "building a tuple: push constant ()"
        }
      ]
    },
    {
      "initialPc": 38,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "6",
      "sourceCode": "    result = s + [e,]",
      "assembly": [
        {
          "assembly": "LoadVar e",
          "explain": "push the value of e"
        }
      ]
    },
    {
      "initialPc": 39,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "6",
      "sourceCode": "    result = s + [e,]",
      "assembly": [
        {
          "assembly": "DelVar e",
          "explain": "delete method variable e"
        }
      ]
    },
    {
      "initialPc": 40,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "6",
      "sourceCode": "    result = s + [e,]",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 41,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "6",
      "sourceCode": "    result = s + [e,]",
      "assembly": [
        {
          "assembly": "2-ary +",
          "explain": "pop 2 values and push the result of applying +"
        }
      ]
    },
    {
      "initialPc": 42,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "6",
      "sourceCode": "    result = s + [e,]",
      "assembly": [
        {
          "assembly": "StoreVar result",
          "explain": "pop a value and store in result"
        }
      ]
    },
    {
      "initialPc": 43,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "5",
      "sourceCode": "def append(s, e) returns result:",
      "assembly": [
        {
          "assembly": "ReturnOp(result)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 44,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "8",
      "sourceCode": "def head(s) returns result:",
      "assembly": [
        {
          "assembly": "Jump 54",
          "explain": "jump over method definition: set program counter to 54"
        }
      ]
    },
    {
      "initialPc": 45,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "8",
      "sourceCode": "def head(s) returns result:",
      "assembly": [
        {
          "assembly": "Frame head(s)",
          "explain": "start of method head"
        }
      ]
    },
    {
      "initialPc": 46,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "9",
      "sourceCode": "    result = s[0]",
      "assembly": [
        {
          "assembly": "DelVar result",
          "explain": "delete method variable result"
        }
      ]
    },
    {
      "initialPc": 47,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "9",
      "sourceCode": "    result = s[0]",
      "assembly": [
        {
          "assembly": "LoadVar s",
          "explain": "push the value of s"
        }
      ]
    },
    {
      "initialPc": 48,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "9",
      "sourceCode": "    result = s[0]",
      "assembly": [
        {
          "assembly": "DelVar s",
          "explain": "delete method variable s"
        }
      ]
    },
    {
      "initialPc": 49,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "9",
      "sourceCode": "    result = s[0]",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 50,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "9",
      "sourceCode": "    result = s[0]",
      "assembly": [
        {
          "assembly": "2-ary Closure",
          "explain": "pop 2 values and push the result of applying Closure"
        }
      ]
    },
    {
      "initialPc": 51,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "9",
      "sourceCode": "    result = s[0]",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 52,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "9",
      "sourceCode": "    result = s[0]",
      "assembly": [
        {
          "assembly": "StoreVar result",
          "explain": "pop a value and store in result"
        }
      ]
    },
    {
      "initialPc": 53,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "8",
      "sourceCode": "def head(s) returns result:",
      "assembly": [
        {
          "assembly": "ReturnOp(result)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 54,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "11",
      "sourceCode": "builtin tail \"list$tail\"",
      "assembly": [
        {
          "assembly": "Push PC(57)",
          "explain": "push constant PC(57)"
        }
      ]
    },
    {
      "initialPc": 55,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "11",
      "sourceCode": "builtin tail \"list$tail\"",
      "assembly": [
        {
          "assembly": "Builtin(list$tail)",
          "explain": "top of stack is a built-in operation called list$tail"
        }
      ]
    },
    {
      "initialPc": 56,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "12",
      "sourceCode": "def tail(s) returns result:",
      "assembly": [
        {
          "assembly": "Jump 602",
          "explain": "jump over method definition: set program counter to 602"
        }
      ]
    },
    {
      "initialPc": 57,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "12",
      "sourceCode": "def tail(s) returns result:",
      "assembly": [
        {
          "assembly": "Frame tail(s)",
          "explain": "start of method tail"
        }
      ]
    },
    {
      "initialPc": 58,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "13",
      "sourceCode": "    result = subseq(s, 1, len(s))",
      "assembly": [
        {
          "assembly": "DelVar result",
          "explain": "delete method variable result"
        }
      ]
    },
    {
      "initialPc": 59,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "13",
      "sourceCode": "    result = subseq(s, 1, len(s))",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "building a tuple: push constant ()"
        }
      ]
    },
    {
      "initialPc": 60,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "13",
      "sourceCode": "    result = subseq(s, 1, len(s))",
      "assembly": [
        {
          "assembly": "LoadVar s",
          "explain": "push the value of s"
        }
      ]
    },
    {
      "initialPc": 61,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "13",
      "sourceCode": "    result = subseq(s, 1, len(s))",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 62,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "13",
      "sourceCode": "    result = subseq(s, 1, len(s))",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 63,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "13",
      "sourceCode": "    result = subseq(s, 1, len(s))",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 64,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "13",
      "sourceCode": "    result = subseq(s, 1, len(s))",
      "assembly": [
        {
          "assembly": "LoadVar s",
          "explain": "push the value of s"
        }
      ]
    },
    {
      "initialPc": 65,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "13",
      "sourceCode": "    result = subseq(s, 1, len(s))",
      "assembly": [
        {
          "assembly": "DelVar s",
          "explain": "delete method variable s"
        }
      ]
    },
    {
      "initialPc": 66,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "13",
      "sourceCode": "    result = subseq(s, 1, len(s))",
      "assembly": [
        {
          "assembly": "1-ary len",
          "explain": "pop 1 value and push the result of applying len"
        }
      ]
    },
    {
      "initialPc": 67,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "13",
      "sourceCode": "    result = subseq(s, 1, len(s))",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 68,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "13",
      "sourceCode": "    result = subseq(s, 1, len(s))",
      "assembly": [
        {
          "assembly": "Apply PC(2)",
          "explain": "call method PC(2)"
        }
      ]
    },
    {
      "initialPc": 69,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "13",
      "sourceCode": "    result = subseq(s, 1, len(s))",
      "assembly": [
        {
          "assembly": "StoreVar result",
          "explain": "pop a value and store in result"
        }
      ]
    },
    {
      "initialPc": 70,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "12",
      "sourceCode": "def tail(s) returns result:",
      "assembly": [
        {
          "assembly": "ReturnOp(result)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 71,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "16",
      "sourceCode": "def sum(a) returns accu:",
      "assembly": [
        {
          "assembly": "Jump 602",
          "explain": "jump over method definition: set program counter to 602"
        }
      ]
    },
    {
      "initialPc": 72,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "16",
      "sourceCode": "def sum(a) returns accu:",
      "assembly": [
        {
          "assembly": "Frame sum(a)",
          "explain": "start of method sum"
        }
      ]
    },
    {
      "initialPc": 73,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "17",
      "sourceCode": "    accu = 0",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 74,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "17",
      "sourceCode": "    accu = 0",
      "assembly": [
        {
          "assembly": "StoreVar accu",
          "explain": "pop a value and store in accu"
        }
      ]
    },
    {
      "initialPc": 75,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "18",
      "sourceCode": "    for v in a:",
      "assembly": [
        {
          "assembly": "LoadVar a",
          "explain": "push the value of a"
        }
      ]
    },
    {
      "initialPc": 76,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "18",
      "sourceCode": "    for v in a:",
      "assembly": [
        {
          "assembly": "DelVar a",
          "explain": "delete method variable a"
        }
      ]
    },
    {
      "initialPc": 77,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "18",
      "sourceCode": "    for v in a:",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 78,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "18",
      "sourceCode": "    for v in a:",
      "assembly": [
        {
          "assembly": "Cut(v)",
          "explain": "get next element and assign to v; push False or True depending on success"
        }
      ]
    },
    {
      "initialPc": 79,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "18",
      "sourceCode": "    for v in a:",
      "assembly": [
        {
          "assembly": "JumpCond False 87",
          "explain": "check if loop is done: pop a value and jump to 87 if the value is False"
        }
      ]
    },
    {
      "initialPc": 80,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "19",
      "sourceCode": "        accu += v",
      "assembly": [
        {
          "assembly": "LoadVar accu",
          "explain": "push the value of accu"
        }
      ]
    },
    {
      "initialPc": 81,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "19",
      "sourceCode": "        accu += v",
      "assembly": [
        {
          "assembly": "DelVar accu",
          "explain": "delete method variable accu"
        }
      ]
    },
    {
      "initialPc": 82,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "19",
      "sourceCode": "        accu += v",
      "assembly": [
        {
          "assembly": "LoadVar v",
          "explain": "push the value of v"
        }
      ]
    },
    {
      "initialPc": 83,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "19",
      "sourceCode": "        accu += v",
      "assembly": [
        {
          "assembly": "DelVar v",
          "explain": "delete method variable v"
        }
      ]
    },
    {
      "initialPc": 84,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "19",
      "sourceCode": "        accu += v",
      "assembly": [
        {
          "assembly": "2-ary +",
          "explain": "pop 2 values and push the result of applying +"
        }
      ]
    },
    {
      "initialPc": 85,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "19",
      "sourceCode": "        accu += v",
      "assembly": [
        {
          "assembly": "StoreVar accu",
          "explain": "pop a value and store in accu"
        }
      ]
    },
    {
      "initialPc": 86,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "18",
      "sourceCode": "    for v in a:",
      "assembly": [
        {
          "assembly": "Jump 78",
          "explain": "set program counter to 78"
        }
      ]
    },
    {
      "initialPc": 87,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "16",
      "sourceCode": "def sum(a) returns accu:",
      "assembly": [
        {
          "assembly": "DelVar v",
          "explain": "delete method variable v"
        }
      ]
    },
    {
      "initialPc": 88,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "16",
      "sourceCode": "def sum(a) returns accu:",
      "assembly": [
        {
          "assembly": "ReturnOp(accu)",
          "explain": "restore caller method state and push accu"
        }
      ]
    },
    {
      "initialPc": 89,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "16",
      "sourceCode": "def sum(a) returns accu:",
      "assembly": [
        {
          "assembly": "DelVar accu",
          "explain": "delete method variable accu"
        }
      ]
    },
    {
      "initialPc": 90,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "22",
      "sourceCode": "def set(a) returns result:",
      "assembly": [
        {
          "assembly": "Jump 602",
          "explain": "jump over method definition: set program counter to 602"
        }
      ]
    },
    {
      "initialPc": 91,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "22",
      "sourceCode": "def set(a) returns result:",
      "assembly": [
        {
          "assembly": "Frame set(a)",
          "explain": "start of method set"
        }
      ]
    },
    {
      "initialPc": 92,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "23",
      "sourceCode": "    result = { v for v in a }",
      "assembly": [
        {
          "assembly": "DelVar result",
          "explain": "delete method variable result"
        }
      ]
    },
    {
      "initialPc": 93,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "23",
      "sourceCode": "    result = { v for v in a }",
      "assembly": [
        {
          "assembly": "Push {}",
          "explain": "initialize accumulator for set comprehension: push constant {}"
        }
      ]
    },
    {
      "initialPc": 94,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "23",
      "sourceCode": "    result = { v for v in a }",
      "assembly": [
        {
          "assembly": "StoreVar $accu72",
          "explain": "initialize accumulator for set comprehension: pop a value and store in $accu72"
        }
      ]
    },
    {
      "initialPc": 95,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "23",
      "sourceCode": "    result = { v for v in a }",
      "assembly": [
        {
          "assembly": "LoadVar a",
          "explain": "push the value of a"
        }
      ]
    },
    {
      "initialPc": 96,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "23",
      "sourceCode": "    result = { v for v in a }",
      "assembly": [
        {
          "assembly": "DelVar a",
          "explain": "delete method variable a"
        }
      ]
    },
    {
      "initialPc": 97,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "23",
      "sourceCode": "    result = { v for v in a }",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 98,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "23",
      "sourceCode": "    result = { v for v in a }",
      "assembly": [
        {
          "assembly": "Cut(v)",
          "explain": "get next element and assign to v; push False or True depending on success"
        }
      ]
    },
    {
      "initialPc": 99,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "23",
      "sourceCode": "    result = { v for v in a }",
      "assembly": [
        {
          "assembly": "JumpCond False 107",
          "explain": "check if loop is done: pop a value and jump to 107 if the value is False"
        }
      ]
    },
    {
      "initialPc": 100,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "23",
      "sourceCode": "    result = { v for v in a }",
      "assembly": [
        {
          "assembly": "LoadVar $accu72",
          "explain": "load accumulator: push the value of $accu72"
        }
      ]
    },
    {
      "initialPc": 101,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "23",
      "sourceCode": "    result = { v for v in a }",
      "assembly": [
        {
          "assembly": "DelVar $accu72",
          "explain": "delete method variable $accu72"
        }
      ]
    },
    {
      "initialPc": 102,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "23",
      "sourceCode": "    result = { v for v in a }",
      "assembly": [
        {
          "assembly": "LoadVar v",
          "explain": "push the value of v"
        }
      ]
    },
    {
      "initialPc": 103,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "23",
      "sourceCode": "    result = { v for v in a }",
      "assembly": [
        {
          "assembly": "DelVar v",
          "explain": "delete method variable v"
        }
      ]
    },
    {
      "initialPc": 104,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "23",
      "sourceCode": "    result = { v for v in a }",
      "assembly": [
        {
          "assembly": "2-ary SetAdd",
          "explain": "pop 2 values and push the result of applying SetAdd"
        }
      ]
    },
    {
      "initialPc": 105,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "23",
      "sourceCode": "    result = { v for v in a }",
      "assembly": [
        {
          "assembly": "StoreVar $accu72",
          "explain": "update accumulator: pop a value and store in $accu72"
        }
      ]
    },
    {
      "initialPc": 106,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "23",
      "sourceCode": "    result = { v for v in a }",
      "assembly": [
        {
          "assembly": "Jump 98",
          "explain": "set program counter to 98"
        }
      ]
    },
    {
      "initialPc": 107,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "23",
      "sourceCode": "    result = { v for v in a }",
      "assembly": [
        {
          "assembly": "DelVar v",
          "explain": "delete method variable v"
        }
      ]
    },
    {
      "initialPc": 108,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "23",
      "sourceCode": "    result = { v for v in a }",
      "assembly": [
        {
          "assembly": "LoadVar $accu72",
          "explain": "load final accumulator result: push the value of $accu72"
        }
      ]
    },
    {
      "initialPc": 109,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "23",
      "sourceCode": "    result = { v for v in a }",
      "assembly": [
        {
          "assembly": "DelVar $accu72",
          "explain": "delete method variable $accu72"
        }
      ]
    },
    {
      "initialPc": 110,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "23",
      "sourceCode": "    result = { v for v in a }",
      "assembly": [
        {
          "assembly": "StoreVar result",
          "explain": "pop a value and store in result"
        }
      ]
    },
    {
      "initialPc": 111,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "22",
      "sourceCode": "def set(a) returns result:",
      "assembly": [
        {
          "assembly": "ReturnOp(result)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 112,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "26",
      "sourceCode": "def list(a) returns result:",
      "assembly": [
        {
          "assembly": "Jump 602",
          "explain": "jump over method definition: set program counter to 602"
        }
      ]
    },
    {
      "initialPc": 113,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "26",
      "sourceCode": "def list(a) returns result:",
      "assembly": [
        {
          "assembly": "Frame list(a)",
          "explain": "start of method list"
        }
      ]
    },
    {
      "initialPc": 114,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "27",
      "sourceCode": "    result = [ v for v in a ]",
      "assembly": [
        {
          "assembly": "DelVar result",
          "explain": "delete method variable result"
        }
      ]
    },
    {
      "initialPc": 115,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "27",
      "sourceCode": "    result = [ v for v in a ]",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "initialize accumulator for list comprehension: push constant ()"
        }
      ]
    },
    {
      "initialPc": 116,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "27",
      "sourceCode": "    result = [ v for v in a ]",
      "assembly": [
        {
          "assembly": "StoreVar $accu88",
          "explain": "initialize accumulator for list comprehension: pop a value and store in $accu88"
        }
      ]
    },
    {
      "initialPc": 117,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "27",
      "sourceCode": "    result = [ v for v in a ]",
      "assembly": [
        {
          "assembly": "LoadVar a",
          "explain": "push the value of a"
        }
      ]
    },
    {
      "initialPc": 118,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "27",
      "sourceCode": "    result = [ v for v in a ]",
      "assembly": [
        {
          "assembly": "DelVar a",
          "explain": "delete method variable a"
        }
      ]
    },
    {
      "initialPc": 119,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "27",
      "sourceCode": "    result = [ v for v in a ]",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 120,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "27",
      "sourceCode": "    result = [ v for v in a ]",
      "assembly": [
        {
          "assembly": "Cut(v)",
          "explain": "get next element and assign to v; push False or True depending on success"
        }
      ]
    },
    {
      "initialPc": 121,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "27",
      "sourceCode": "    result = [ v for v in a ]",
      "assembly": [
        {
          "assembly": "JumpCond False 129",
          "explain": "check if loop is done: pop a value and jump to 129 if the value is False"
        }
      ]
    },
    {
      "initialPc": 122,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "27",
      "sourceCode": "    result = [ v for v in a ]",
      "assembly": [
        {
          "assembly": "LoadVar $accu88",
          "explain": "load accumulator: push the value of $accu88"
        }
      ]
    },
    {
      "initialPc": 123,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "27",
      "sourceCode": "    result = [ v for v in a ]",
      "assembly": [
        {
          "assembly": "DelVar $accu88",
          "explain": "delete method variable $accu88"
        }
      ]
    },
    {
      "initialPc": 124,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "27",
      "sourceCode": "    result = [ v for v in a ]",
      "assembly": [
        {
          "assembly": "LoadVar v",
          "explain": "push the value of v"
        }
      ]
    },
    {
      "initialPc": 125,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "27",
      "sourceCode": "    result = [ v for v in a ]",
      "assembly": [
        {
          "assembly": "DelVar v",
          "explain": "delete method variable v"
        }
      ]
    },
    {
      "initialPc": 126,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "27",
      "sourceCode": "    result = [ v for v in a ]",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 127,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "27",
      "sourceCode": "    result = [ v for v in a ]",
      "assembly": [
        {
          "assembly": "StoreVar $accu88",
          "explain": "update accumulator: pop a value and store in $accu88"
        }
      ]
    },
    {
      "initialPc": 128,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "27",
      "sourceCode": "    result = [ v for v in a ]",
      "assembly": [
        {
          "assembly": "Jump 120",
          "explain": "set program counter to 120"
        }
      ]
    },
    {
      "initialPc": 129,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "27",
      "sourceCode": "    result = [ v for v in a ]",
      "assembly": [
        {
          "assembly": "DelVar v",
          "explain": "delete method variable v"
        }
      ]
    },
    {
      "initialPc": 130,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "27",
      "sourceCode": "    result = [ v for v in a ]",
      "assembly": [
        {
          "assembly": "LoadVar $accu88",
          "explain": "load final accumulator result: push the value of $accu88"
        }
      ]
    },
    {
      "initialPc": 131,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "27",
      "sourceCode": "    result = [ v for v in a ]",
      "assembly": [
        {
          "assembly": "DelVar $accu88",
          "explain": "delete method variable $accu88"
        }
      ]
    },
    {
      "initialPc": 132,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "27",
      "sourceCode": "    result = [ v for v in a ]",
      "assembly": [
        {
          "assembly": "StoreVar result",
          "explain": "pop a value and store in result"
        }
      ]
    },
    {
      "initialPc": 133,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "26",
      "sourceCode": "def list(a) returns result:",
      "assembly": [
        {
          "assembly": "ReturnOp(result)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 134,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "30",
      "sourceCode": "def values(d) returns result:",
      "assembly": [
        {
          "assembly": "Jump 602",
          "explain": "jump over method definition: set program counter to 602"
        }
      ]
    },
    {
      "initialPc": 135,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "30",
      "sourceCode": "def values(d) returns result:",
      "assembly": [
        {
          "assembly": "Frame values(d)",
          "explain": "start of method values"
        }
      ]
    },
    {
      "initialPc": 136,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "31",
      "sourceCode": "    result = [ v for _:v in d ]",
      "assembly": [
        {
          "assembly": "DelVar result",
          "explain": "delete method variable result"
        }
      ]
    },
    {
      "initialPc": 137,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "31",
      "sourceCode": "    result = [ v for _:v in d ]",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "initialize accumulator for list comprehension: push constant ()"
        }
      ]
    },
    {
      "initialPc": 138,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "31",
      "sourceCode": "    result = [ v for _:v in d ]",
      "assembly": [
        {
          "assembly": "StoreVar $accu104",
          "explain": "initialize accumulator for list comprehension: pop a value and store in $accu104"
        }
      ]
    },
    {
      "initialPc": 139,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "31",
      "sourceCode": "    result = [ v for _:v in d ]",
      "assembly": [
        {
          "assembly": "LoadVar d",
          "explain": "push the value of d"
        }
      ]
    },
    {
      "initialPc": 140,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "31",
      "sourceCode": "    result = [ v for _:v in d ]",
      "assembly": [
        {
          "assembly": "DelVar d",
          "explain": "delete method variable d"
        }
      ]
    },
    {
      "initialPc": 141,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "31",
      "sourceCode": "    result = [ v for _:v in d ]",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 142,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "31",
      "sourceCode": "    result = [ v for _:v in d ]",
      "assembly": [
        {
          "assembly": "Cut(_, v)",
          "explain": "get next element and assign to _:v; push False or True depending on success"
        }
      ]
    },
    {
      "initialPc": 143,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "31",
      "sourceCode": "    result = [ v for _:v in d ]",
      "assembly": [
        {
          "assembly": "DelVar _",
          "explain": "delete method variable _"
        }
      ]
    },
    {
      "initialPc": 144,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "31",
      "sourceCode": "    result = [ v for _:v in d ]",
      "assembly": [
        {
          "assembly": "JumpCond False 152",
          "explain": "check if loop is done: pop a value and jump to 152 if the value is False"
        }
      ]
    },
    {
      "initialPc": 145,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "31",
      "sourceCode": "    result = [ v for _:v in d ]",
      "assembly": [
        {
          "assembly": "LoadVar $accu104",
          "explain": "load accumulator: push the value of $accu104"
        }
      ]
    },
    {
      "initialPc": 146,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "31",
      "sourceCode": "    result = [ v for _:v in d ]",
      "assembly": [
        {
          "assembly": "DelVar $accu104",
          "explain": "delete method variable $accu104"
        }
      ]
    },
    {
      "initialPc": 147,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "31",
      "sourceCode": "    result = [ v for _:v in d ]",
      "assembly": [
        {
          "assembly": "LoadVar v",
          "explain": "push the value of v"
        }
      ]
    },
    {
      "initialPc": 148,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "31",
      "sourceCode": "    result = [ v for _:v in d ]",
      "assembly": [
        {
          "assembly": "DelVar v",
          "explain": "delete method variable v"
        }
      ]
    },
    {
      "initialPc": 149,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "31",
      "sourceCode": "    result = [ v for _:v in d ]",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 150,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "31",
      "sourceCode": "    result = [ v for _:v in d ]",
      "assembly": [
        {
          "assembly": "StoreVar $accu104",
          "explain": "update accumulator: pop a value and store in $accu104"
        }
      ]
    },
    {
      "initialPc": 151,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "31",
      "sourceCode": "    result = [ v for _:v in d ]",
      "assembly": [
        {
          "assembly": "Jump 142",
          "explain": "set program counter to 142"
        }
      ]
    },
    {
      "initialPc": 152,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "31",
      "sourceCode": "    result = [ v for _:v in d ]",
      "assembly": [
        {
          "assembly": "DelVar v",
          "explain": "delete method variable v"
        }
      ]
    },
    {
      "initialPc": 153,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "31",
      "sourceCode": "    result = [ v for _:v in d ]",
      "assembly": [
        {
          "assembly": "LoadVar $accu104",
          "explain": "load final accumulator result: push the value of $accu104"
        }
      ]
    },
    {
      "initialPc": 154,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "31",
      "sourceCode": "    result = [ v for _:v in d ]",
      "assembly": [
        {
          "assembly": "DelVar $accu104",
          "explain": "delete method variable $accu104"
        }
      ]
    },
    {
      "initialPc": 155,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "31",
      "sourceCode": "    result = [ v for _:v in d ]",
      "assembly": [
        {
          "assembly": "StoreVar result",
          "explain": "pop a value and store in result"
        }
      ]
    },
    {
      "initialPc": 156,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "30",
      "sourceCode": "def values(d) returns result:",
      "assembly": [
        {
          "assembly": "ReturnOp(result)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 157,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "34",
      "sourceCode": "def items(d) returns result:",
      "assembly": [
        {
          "assembly": "Jump 602",
          "explain": "jump over method definition: set program counter to 602"
        }
      ]
    },
    {
      "initialPc": 158,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "34",
      "sourceCode": "def items(d) returns result:",
      "assembly": [
        {
          "assembly": "Frame items(d)",
          "explain": "start of method items"
        }
      ]
    },
    {
      "initialPc": 159,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "35",
      "sourceCode": "    result = [ (k, v) for k:v in d ]",
      "assembly": [
        {
          "assembly": "DelVar result",
          "explain": "delete method variable result"
        }
      ]
    },
    {
      "initialPc": 160,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "35",
      "sourceCode": "    result = [ (k, v) for k:v in d ]",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "initialize accumulator for list comprehension: push constant ()"
        }
      ]
    },
    {
      "initialPc": 161,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "35",
      "sourceCode": "    result = [ (k, v) for k:v in d ]",
      "assembly": [
        {
          "assembly": "StoreVar $accu120",
          "explain": "initialize accumulator for list comprehension: pop a value and store in $accu120"
        }
      ]
    },
    {
      "initialPc": 162,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "35",
      "sourceCode": "    result = [ (k, v) for k:v in d ]",
      "assembly": [
        {
          "assembly": "LoadVar d",
          "explain": "push the value of d"
        }
      ]
    },
    {
      "initialPc": 163,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "35",
      "sourceCode": "    result = [ (k, v) for k:v in d ]",
      "assembly": [
        {
          "assembly": "DelVar d",
          "explain": "delete method variable d"
        }
      ]
    },
    {
      "initialPc": 164,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "35",
      "sourceCode": "    result = [ (k, v) for k:v in d ]",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 165,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "35",
      "sourceCode": "    result = [ (k, v) for k:v in d ]",
      "assembly": [
        {
          "assembly": "Cut(k, v)",
          "explain": "get next element and assign to k:v; push False or True depending on success"
        }
      ]
    },
    {
      "initialPc": 166,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "35",
      "sourceCode": "    result = [ (k, v) for k:v in d ]",
      "assembly": [
        {
          "assembly": "JumpCond False 179",
          "explain": "check if loop is done: pop a value and jump to 179 if the value is False"
        }
      ]
    },
    {
      "initialPc": 167,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "35",
      "sourceCode": "    result = [ (k, v) for k:v in d ]",
      "assembly": [
        {
          "assembly": "LoadVar $accu120",
          "explain": "load accumulator: push the value of $accu120"
        }
      ]
    },
    {
      "initialPc": 168,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "35",
      "sourceCode": "    result = [ (k, v) for k:v in d ]",
      "assembly": [
        {
          "assembly": "DelVar $accu120",
          "explain": "delete method variable $accu120"
        }
      ]
    },
    {
      "initialPc": 169,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "35",
      "sourceCode": "    result = [ (k, v) for k:v in d ]",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "building a tuple: push constant ()"
        }
      ]
    },
    {
      "initialPc": 170,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "35",
      "sourceCode": "    result = [ (k, v) for k:v in d ]",
      "assembly": [
        {
          "assembly": "LoadVar k",
          "explain": "push the value of k"
        }
      ]
    },
    {
      "initialPc": 171,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "35",
      "sourceCode": "    result = [ (k, v) for k:v in d ]",
      "assembly": [
        {
          "assembly": "DelVar k",
          "explain": "delete method variable k"
        }
      ]
    },
    {
      "initialPc": 172,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "35",
      "sourceCode": "    result = [ (k, v) for k:v in d ]",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 173,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "35",
      "sourceCode": "    result = [ (k, v) for k:v in d ]",
      "assembly": [
        {
          "assembly": "LoadVar v",
          "explain": "push the value of v"
        }
      ]
    },
    {
      "initialPc": 174,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "35",
      "sourceCode": "    result = [ (k, v) for k:v in d ]",
      "assembly": [
        {
          "assembly": "DelVar v",
          "explain": "delete method variable v"
        }
      ]
    },
    {
      "initialPc": 175,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "35",
      "sourceCode": "    result = [ (k, v) for k:v in d ]",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 176,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "35",
      "sourceCode": "    result = [ (k, v) for k:v in d ]",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 177,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "35",
      "sourceCode": "    result = [ (k, v) for k:v in d ]",
      "assembly": [
        {
          "assembly": "StoreVar $accu120",
          "explain": "update accumulator: pop a value and store in $accu120"
        }
      ]
    },
    {
      "initialPc": 178,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "35",
      "sourceCode": "    result = [ (k, v) for k:v in d ]",
      "assembly": [
        {
          "assembly": "Jump 165",
          "explain": "set program counter to 165"
        }
      ]
    },
    {
      "initialPc": 179,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "35",
      "sourceCode": "    result = [ (k, v) for k:v in d ]",
      "assembly": [
        {
          "assembly": "DelVar k",
          "explain": "delete method variable k"
        }
      ]
    },
    {
      "initialPc": 180,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "35",
      "sourceCode": "    result = [ (k, v) for k:v in d ]",
      "assembly": [
        {
          "assembly": "DelVar v",
          "explain": "delete method variable v"
        }
      ]
    },
    {
      "initialPc": 181,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "35",
      "sourceCode": "    result = [ (k, v) for k:v in d ]",
      "assembly": [
        {
          "assembly": "LoadVar $accu120",
          "explain": "load final accumulator result: push the value of $accu120"
        }
      ]
    },
    {
      "initialPc": 182,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "35",
      "sourceCode": "    result = [ (k, v) for k:v in d ]",
      "assembly": [
        {
          "assembly": "DelVar $accu120",
          "explain": "delete method variable $accu120"
        }
      ]
    },
    {
      "initialPc": 183,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "35",
      "sourceCode": "    result = [ (k, v) for k:v in d ]",
      "assembly": [
        {
          "assembly": "StoreVar result",
          "explain": "pop a value and store in result"
        }
      ]
    },
    {
      "initialPc": 184,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "34",
      "sourceCode": "def items(d) returns result:",
      "assembly": [
        {
          "assembly": "ReturnOp(result)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 185,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "38",
      "sourceCode": "def qsort(a) returns sorted:",
      "assembly": [
        {
          "assembly": "Jump 602",
          "explain": "jump over method definition: set program counter to 602"
        }
      ]
    },
    {
      "initialPc": 186,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "38",
      "sourceCode": "def qsort(a) returns sorted:",
      "assembly": [
        {
          "assembly": "Frame qsort(a)",
          "explain": "start of method qsort"
        }
      ]
    },
    {
      "initialPc": 187,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "39",
      "sourceCode": "    if a == []:",
      "assembly": [
        {
          "assembly": "LoadVar a",
          "explain": "push the value of a"
        }
      ]
    },
    {
      "initialPc": 188,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "39",
      "sourceCode": "    if a == []:",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "push constant ()"
        }
      ]
    },
    {
      "initialPc": 189,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "39",
      "sourceCode": "    if a == []:",
      "assembly": [
        {
          "assembly": "2-ary ==",
          "explain": "pop 2 values and push the result of applying =="
        }
      ]
    },
    {
      "initialPc": 190,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "39",
      "sourceCode": "    if a == []:",
      "assembly": [
        {
          "assembly": "JumpCond False 195",
          "explain": "pop a value and jump to 195 if the value is False"
        }
      ]
    },
    {
      "initialPc": 191,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "40",
      "sourceCode": "        sorted = []",
      "assembly": [
        {
          "assembly": "DelVar a",
          "explain": "delete method variable a"
        }
      ]
    },
    {
      "initialPc": 192,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "40",
      "sourceCode": "        sorted = []",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "push constant ()"
        }
      ]
    },
    {
      "initialPc": 193,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "40",
      "sourceCode": "        sorted = []",
      "assembly": [
        {
          "assembly": "StoreVar sorted",
          "explain": "pop a value and store in sorted"
        }
      ]
    },
    {
      "initialPc": 194,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "39",
      "sourceCode": "    if a == []:",
      "assembly": [
        {
          "assembly": "Jump 261",
          "explain": "set program counter to 261"
        }
      ]
    },
    {
      "initialPc": 195,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "42",
      "sourceCode": "        let (pivot, rest) = head(a), tail(a)",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "building a tuple: push constant ()"
        }
      ]
    },
    {
      "initialPc": 196,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "42",
      "sourceCode": "        let (pivot, rest) = head(a), tail(a)",
      "assembly": [
        {
          "assembly": "LoadVar a",
          "explain": "push the value of a"
        }
      ]
    },
    {
      "initialPc": 197,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "42",
      "sourceCode": "        let (pivot, rest) = head(a), tail(a)",
      "assembly": [
        {
          "assembly": "Apply PC(45)",
          "explain": "call method PC(45)"
        }
      ]
    },
    {
      "initialPc": 198,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "42",
      "sourceCode": "        let (pivot, rest) = head(a), tail(a)",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 199,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "42",
      "sourceCode": "        let (pivot, rest) = head(a), tail(a)",
      "assembly": [
        {
          "assembly": "LoadVar a",
          "explain": "push the value of a"
        }
      ]
    },
    {
      "initialPc": 200,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "42",
      "sourceCode": "        let (pivot, rest) = head(a), tail(a)",
      "assembly": [
        {
          "assembly": "DelVar a",
          "explain": "delete method variable a"
        }
      ]
    },
    {
      "initialPc": 201,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "42",
      "sourceCode": "        let (pivot, rest) = head(a), tail(a)",
      "assembly": [
        {
          "assembly": "Apply PC(57)",
          "explain": "call method PC(57)"
        }
      ]
    },
    {
      "initialPc": 202,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "42",
      "sourceCode": "        let (pivot, rest) = head(a), tail(a)",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 203,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "42",
      "sourceCode": "        let (pivot, rest) = head(a), tail(a)",
      "assembly": [
        {
          "assembly": "StoreVar (pivot, rest)",
          "explain": "pop a value and store in (pivot, rest)"
        }
      ]
    },
    {
      "initialPc": 204,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "43",
      "sourceCode": "        let lower = [ v for v in rest where v < pivot ]",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "initialize accumulator for list comprehension: push constant ()"
        }
      ]
    },
    {
      "initialPc": 205,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "43",
      "sourceCode": "        let lower = [ v for v in rest where v < pivot ]",
      "assembly": [
        {
          "assembly": "StoreVar $accu155",
          "explain": "initialize accumulator for list comprehension: pop a value and store in $accu155"
        }
      ]
    },
    {
      "initialPc": 206,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "43",
      "sourceCode": "        let lower = [ v for v in rest where v < pivot ]",
      "assembly": [
        {
          "assembly": "LoadVar rest",
          "explain": "push the value of rest"
        }
      ]
    },
    {
      "initialPc": 207,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "43",
      "sourceCode": "        let lower = [ v for v in rest where v < pivot ]",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 208,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "43",
      "sourceCode": "        let lower = [ v for v in rest where v < pivot ]",
      "assembly": [
        {
          "assembly": "DelVar v",
          "explain": "delete method variable v"
        }
      ]
    },
    {
      "initialPc": 209,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "43",
      "sourceCode": "        let lower = [ v for v in rest where v < pivot ]",
      "assembly": [
        {
          "assembly": "Cut(v)",
          "explain": "get next element and assign to v; push False or True depending on success"
        }
      ]
    },
    {
      "initialPc": 210,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "43",
      "sourceCode": "        let lower = [ v for v in rest where v < pivot ]",
      "assembly": [
        {
          "assembly": "JumpCond False 222",
          "explain": "check if loop is done: pop a value and jump to 222 if the value is False"
        }
      ]
    },
    {
      "initialPc": 211,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "43",
      "sourceCode": "        let lower = [ v for v in rest where v < pivot ]",
      "assembly": [
        {
          "assembly": "LoadVar v",
          "explain": "push the value of v"
        }
      ]
    },
    {
      "initialPc": 212,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "43",
      "sourceCode": "        let lower = [ v for v in rest where v < pivot ]",
      "assembly": [
        {
          "assembly": "LoadVar pivot",
          "explain": "push the value of pivot"
        }
      ]
    },
    {
      "initialPc": 213,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "43",
      "sourceCode": "        let lower = [ v for v in rest where v < pivot ]",
      "assembly": [
        {
          "assembly": "2-ary <",
          "explain": "pop 2 values and push the result of applying <"
        }
      ]
    },
    {
      "initialPc": 214,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "43",
      "sourceCode": "        let lower = [ v for v in rest where v < pivot ]",
      "assembly": [
        {
          "assembly": "JumpCond False 208",
          "explain": "pop a value and jump to 208 if the value is False"
        }
      ]
    },
    {
      "initialPc": 215,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "43",
      "sourceCode": "        let lower = [ v for v in rest where v < pivot ]",
      "assembly": [
        {
          "assembly": "LoadVar $accu155",
          "explain": "load accumulator: push the value of $accu155"
        }
      ]
    },
    {
      "initialPc": 216,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "43",
      "sourceCode": "        let lower = [ v for v in rest where v < pivot ]",
      "assembly": [
        {
          "assembly": "DelVar $accu155",
          "explain": "delete method variable $accu155"
        }
      ]
    },
    {
      "initialPc": 217,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "43",
      "sourceCode": "        let lower = [ v for v in rest where v < pivot ]",
      "assembly": [
        {
          "assembly": "LoadVar v",
          "explain": "push the value of v"
        }
      ]
    },
    {
      "initialPc": 218,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "43",
      "sourceCode": "        let lower = [ v for v in rest where v < pivot ]",
      "assembly": [
        {
          "assembly": "DelVar v",
          "explain": "delete method variable v"
        }
      ]
    },
    {
      "initialPc": 219,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "43",
      "sourceCode": "        let lower = [ v for v in rest where v < pivot ]",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 220,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "43",
      "sourceCode": "        let lower = [ v for v in rest where v < pivot ]",
      "assembly": [
        {
          "assembly": "StoreVar $accu155",
          "explain": "update accumulator: pop a value and store in $accu155"
        }
      ]
    },
    {
      "initialPc": 221,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "43",
      "sourceCode": "        let lower = [ v for v in rest where v < pivot ]",
      "assembly": [
        {
          "assembly": "Jump 208",
          "explain": "set program counter to 208"
        }
      ]
    },
    {
      "initialPc": 222,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "43",
      "sourceCode": "        let lower = [ v for v in rest where v < pivot ]",
      "assembly": [
        {
          "assembly": "DelVar v",
          "explain": "delete method variable v"
        }
      ]
    },
    {
      "initialPc": 223,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "43",
      "sourceCode": "        let lower = [ v for v in rest where v < pivot ]",
      "assembly": [
        {
          "assembly": "LoadVar $accu155",
          "explain": "load final accumulator result: push the value of $accu155"
        }
      ]
    },
    {
      "initialPc": 224,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "43",
      "sourceCode": "        let lower = [ v for v in rest where v < pivot ]",
      "assembly": [
        {
          "assembly": "DelVar $accu155",
          "explain": "delete method variable $accu155"
        }
      ]
    },
    {
      "initialPc": 225,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "43",
      "sourceCode": "        let lower = [ v for v in rest where v < pivot ]",
      "assembly": [
        {
          "assembly": "StoreVar lower",
          "explain": "pop a value and store in lower"
        }
      ]
    },
    {
      "initialPc": 226,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "44",
      "sourceCode": "        let higher = [ v for v in rest where v >= pivot ]:",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "initialize accumulator for list comprehension: push constant ()"
        }
      ]
    },
    {
      "initialPc": 227,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "44",
      "sourceCode": "        let higher = [ v for v in rest where v >= pivot ]:",
      "assembly": [
        {
          "assembly": "StoreVar $accu172",
          "explain": "initialize accumulator for list comprehension: pop a value and store in $accu172"
        }
      ]
    },
    {
      "initialPc": 228,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "44",
      "sourceCode": "        let higher = [ v for v in rest where v >= pivot ]:",
      "assembly": [
        {
          "assembly": "LoadVar rest",
          "explain": "push the value of rest"
        }
      ]
    },
    {
      "initialPc": 229,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "44",
      "sourceCode": "        let higher = [ v for v in rest where v >= pivot ]:",
      "assembly": [
        {
          "assembly": "DelVar rest",
          "explain": "delete method variable rest"
        }
      ]
    },
    {
      "initialPc": 230,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "44",
      "sourceCode": "        let higher = [ v for v in rest where v >= pivot ]:",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 231,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "44",
      "sourceCode": "        let higher = [ v for v in rest where v >= pivot ]:",
      "assembly": [
        {
          "assembly": "DelVar v",
          "explain": "delete method variable v"
        }
      ]
    },
    {
      "initialPc": 232,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "44",
      "sourceCode": "        let higher = [ v for v in rest where v >= pivot ]:",
      "assembly": [
        {
          "assembly": "Cut(v)",
          "explain": "get next element and assign to v; push False or True depending on success"
        }
      ]
    },
    {
      "initialPc": 233,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "44",
      "sourceCode": "        let higher = [ v for v in rest where v >= pivot ]:",
      "assembly": [
        {
          "assembly": "JumpCond False 245",
          "explain": "check if loop is done: pop a value and jump to 245 if the value is False"
        }
      ]
    },
    {
      "initialPc": 234,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "44",
      "sourceCode": "        let higher = [ v for v in rest where v >= pivot ]:",
      "assembly": [
        {
          "assembly": "LoadVar v",
          "explain": "push the value of v"
        }
      ]
    },
    {
      "initialPc": 235,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "44",
      "sourceCode": "        let higher = [ v for v in rest where v >= pivot ]:",
      "assembly": [
        {
          "assembly": "LoadVar pivot",
          "explain": "push the value of pivot"
        }
      ]
    },
    {
      "initialPc": 236,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "44",
      "sourceCode": "        let higher = [ v for v in rest where v >= pivot ]:",
      "assembly": [
        {
          "assembly": "2-ary >=",
          "explain": "pop 2 values and push the result of applying >="
        }
      ]
    },
    {
      "initialPc": 237,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "44",
      "sourceCode": "        let higher = [ v for v in rest where v >= pivot ]:",
      "assembly": [
        {
          "assembly": "JumpCond False 231",
          "explain": "pop a value and jump to 231 if the value is False"
        }
      ]
    },
    {
      "initialPc": 238,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "44",
      "sourceCode": "        let higher = [ v for v in rest where v >= pivot ]:",
      "assembly": [
        {
          "assembly": "LoadVar $accu172",
          "explain": "load accumulator: push the value of $accu172"
        }
      ]
    },
    {
      "initialPc": 239,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "44",
      "sourceCode": "        let higher = [ v for v in rest where v >= pivot ]:",
      "assembly": [
        {
          "assembly": "DelVar $accu172",
          "explain": "delete method variable $accu172"
        }
      ]
    },
    {
      "initialPc": 240,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "44",
      "sourceCode": "        let higher = [ v for v in rest where v >= pivot ]:",
      "assembly": [
        {
          "assembly": "LoadVar v",
          "explain": "push the value of v"
        }
      ]
    },
    {
      "initialPc": 241,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "44",
      "sourceCode": "        let higher = [ v for v in rest where v >= pivot ]:",
      "assembly": [
        {
          "assembly": "DelVar v",
          "explain": "delete method variable v"
        }
      ]
    },
    {
      "initialPc": 242,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "44",
      "sourceCode": "        let higher = [ v for v in rest where v >= pivot ]:",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 243,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "44",
      "sourceCode": "        let higher = [ v for v in rest where v >= pivot ]:",
      "assembly": [
        {
          "assembly": "StoreVar $accu172",
          "explain": "update accumulator: pop a value and store in $accu172"
        }
      ]
    },
    {
      "initialPc": 244,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "44",
      "sourceCode": "        let higher = [ v for v in rest where v >= pivot ]:",
      "assembly": [
        {
          "assembly": "Jump 231",
          "explain": "set program counter to 231"
        }
      ]
    },
    {
      "initialPc": 245,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "44",
      "sourceCode": "        let higher = [ v for v in rest where v >= pivot ]:",
      "assembly": [
        {
          "assembly": "DelVar v",
          "explain": "delete method variable v"
        }
      ]
    },
    {
      "initialPc": 246,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "44",
      "sourceCode": "        let higher = [ v for v in rest where v >= pivot ]:",
      "assembly": [
        {
          "assembly": "LoadVar $accu172",
          "explain": "load final accumulator result: push the value of $accu172"
        }
      ]
    },
    {
      "initialPc": 247,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "44",
      "sourceCode": "        let higher = [ v for v in rest where v >= pivot ]:",
      "assembly": [
        {
          "assembly": "DelVar $accu172",
          "explain": "delete method variable $accu172"
        }
      ]
    },
    {
      "initialPc": 248,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "44",
      "sourceCode": "        let higher = [ v for v in rest where v >= pivot ]:",
      "assembly": [
        {
          "assembly": "StoreVar higher",
          "explain": "pop a value and store in higher"
        }
      ]
    },
    {
      "initialPc": 249,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "45",
      "sourceCode": "            sorted = qsort(lower) + [pivot,] + qsort(higher)",
      "assembly": [
        {
          "assembly": "LoadVar lower",
          "explain": "push the value of lower"
        }
      ]
    },
    {
      "initialPc": 250,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "45",
      "sourceCode": "            sorted = qsort(lower) + [pivot,] + qsort(higher)",
      "assembly": [
        {
          "assembly": "DelVar lower",
          "explain": "delete method variable lower"
        }
      ]
    },
    {
      "initialPc": 251,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "45",
      "sourceCode": "            sorted = qsort(lower) + [pivot,] + qsort(higher)",
      "assembly": [
        {
          "assembly": "Apply PC(186)",
          "explain": "call method PC(186)"
        }
      ]
    },
    {
      "initialPc": 252,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "45",
      "sourceCode": "            sorted = qsort(lower) + [pivot,] + qsort(higher)",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "building a tuple: push constant ()"
        }
      ]
    },
    {
      "initialPc": 253,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "45",
      "sourceCode": "            sorted = qsort(lower) + [pivot,] + qsort(higher)",
      "assembly": [
        {
          "assembly": "LoadVar pivot",
          "explain": "push the value of pivot"
        }
      ]
    },
    {
      "initialPc": 254,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "45",
      "sourceCode": "            sorted = qsort(lower) + [pivot,] + qsort(higher)",
      "assembly": [
        {
          "assembly": "DelVar pivot",
          "explain": "delete method variable pivot"
        }
      ]
    },
    {
      "initialPc": 255,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "45",
      "sourceCode": "            sorted = qsort(lower) + [pivot,] + qsort(higher)",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 256,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "45",
      "sourceCode": "            sorted = qsort(lower) + [pivot,] + qsort(higher)",
      "assembly": [
        {
          "assembly": "LoadVar higher",
          "explain": "push the value of higher"
        }
      ]
    },
    {
      "initialPc": 257,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "45",
      "sourceCode": "            sorted = qsort(lower) + [pivot,] + qsort(higher)",
      "assembly": [
        {
          "assembly": "DelVar higher",
          "explain": "delete method variable higher"
        }
      ]
    },
    {
      "initialPc": 258,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "45",
      "sourceCode": "            sorted = qsort(lower) + [pivot,] + qsort(higher)",
      "assembly": [
        {
          "assembly": "Apply PC(186)",
          "explain": "call method PC(186)"
        }
      ]
    },
    {
      "initialPc": 259,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "45",
      "sourceCode": "            sorted = qsort(lower) + [pivot,] + qsort(higher)",
      "assembly": [
        {
          "assembly": "3-ary +",
          "explain": "pop 3 values and push the result of applying +"
        }
      ]
    },
    {
      "initialPc": 260,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "45",
      "sourceCode": "            sorted = qsort(lower) + [pivot,] + qsort(higher)",
      "assembly": [
        {
          "assembly": "StoreVar sorted",
          "explain": "pop a value and store in sorted"
        }
      ]
    },
    {
      "initialPc": 261,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "38",
      "sourceCode": "def qsort(a) returns sorted:",
      "assembly": [
        {
          "assembly": "ReturnOp(sorted)",
          "explain": "restore caller method state and push sorted"
        }
      ]
    },
    {
      "initialPc": 262,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "38",
      "sourceCode": "def qsort(a) returns sorted:",
      "assembly": [
        {
          "assembly": "DelVar sorted",
          "explain": "delete method variable sorted"
        }
      ]
    },
    {
      "initialPc": 263,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "48",
      "sourceCode": "def sorted(d) returns result:",
      "assembly": [
        {
          "assembly": "Jump 602",
          "explain": "jump over method definition: set program counter to 602"
        }
      ]
    },
    {
      "initialPc": 264,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "48",
      "sourceCode": "def sorted(d) returns result:",
      "assembly": [
        {
          "assembly": "Frame sorted(d)",
          "explain": "start of method sorted"
        }
      ]
    },
    {
      "initialPc": 265,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "49",
      "sourceCode": "    result = qsort(list(d))",
      "assembly": [
        {
          "assembly": "DelVar result",
          "explain": "delete method variable result"
        }
      ]
    },
    {
      "initialPc": 266,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "49",
      "sourceCode": "    result = qsort(list(d))",
      "assembly": [
        {
          "assembly": "LoadVar d",
          "explain": "push the value of d"
        }
      ]
    },
    {
      "initialPc": 267,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "49",
      "sourceCode": "    result = qsort(list(d))",
      "assembly": [
        {
          "assembly": "DelVar d",
          "explain": "delete method variable d"
        }
      ]
    },
    {
      "initialPc": 268,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "49",
      "sourceCode": "    result = qsort(list(d))",
      "assembly": [
        {
          "assembly": "Apply PC(113)",
          "explain": "call method PC(113)"
        }
      ]
    },
    {
      "initialPc": 269,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "49",
      "sourceCode": "    result = qsort(list(d))",
      "assembly": [
        {
          "assembly": "Apply PC(186)",
          "explain": "call method PC(186)"
        }
      ]
    },
    {
      "initialPc": 270,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "49",
      "sourceCode": "    result = qsort(list(d))",
      "assembly": [
        {
          "assembly": "StoreVar result",
          "explain": "pop a value and store in result"
        }
      ]
    },
    {
      "initialPc": 271,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "48",
      "sourceCode": "def sorted(d) returns result:",
      "assembly": [
        {
          "assembly": "ReturnOp(result)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 272,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "52",
      "sourceCode": "def reversed(d) returns result:",
      "assembly": [
        {
          "assembly": "Jump 602",
          "explain": "jump over method definition: set program counter to 602"
        }
      ]
    },
    {
      "initialPc": 273,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "52",
      "sourceCode": "def reversed(d) returns result:",
      "assembly": [
        {
          "assembly": "Frame reversed(d)",
          "explain": "start of method reversed"
        }
      ]
    },
    {
      "initialPc": 274,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "53",
      "sourceCode": "    let n = len(d):",
      "assembly": [
        {
          "assembly": "DelVar result",
          "explain": "delete method variable result"
        }
      ]
    },
    {
      "initialPc": 275,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "53",
      "sourceCode": "    let n = len(d):",
      "assembly": [
        {
          "assembly": "LoadVar d",
          "explain": "push the value of d"
        }
      ]
    },
    {
      "initialPc": 276,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "53",
      "sourceCode": "    let n = len(d):",
      "assembly": [
        {
          "assembly": "1-ary len",
          "explain": "pop 1 value and push the result of applying len"
        }
      ]
    },
    {
      "initialPc": 277,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "53",
      "sourceCode": "    let n = len(d):",
      "assembly": [
        {
          "assembly": "StoreVar n",
          "explain": "pop a value and store in n"
        }
      ]
    },
    {
      "initialPc": 278,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "54",
      "sourceCode": "        result = [ d[n-i] for i in { 1..n } ]",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "initialize accumulator for list comprehension: push constant ()"
        }
      ]
    },
    {
      "initialPc": 279,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "54",
      "sourceCode": "        result = [ d[n-i] for i in { 1..n } ]",
      "assembly": [
        {
          "assembly": "StoreVar $accu211",
          "explain": "initialize accumulator for list comprehension: pop a value and store in $accu211"
        }
      ]
    },
    {
      "initialPc": 280,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "54",
      "sourceCode": "        result = [ d[n-i] for i in { 1..n } ]",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 281,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "54",
      "sourceCode": "        result = [ d[n-i] for i in { 1..n } ]",
      "assembly": [
        {
          "assembly": "LoadVar n",
          "explain": "push the value of n"
        }
      ]
    },
    {
      "initialPc": 282,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "54",
      "sourceCode": "        result = [ d[n-i] for i in { 1..n } ]",
      "assembly": [
        {
          "assembly": "2-ary ..",
          "explain": "pop 2 values and push the result of applying .."
        }
      ]
    },
    {
      "initialPc": 283,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "54",
      "sourceCode": "        result = [ d[n-i] for i in { 1..n } ]",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 284,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "54",
      "sourceCode": "        result = [ d[n-i] for i in { 1..n } ]",
      "assembly": [
        {
          "assembly": "Cut(i)",
          "explain": "get next element and assign to i; push False or True depending on success"
        }
      ]
    },
    {
      "initialPc": 285,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "54",
      "sourceCode": "        result = [ d[n-i] for i in { 1..n } ]",
      "assembly": [
        {
          "assembly": "JumpCond False 298",
          "explain": "check if loop is done: pop a value and jump to 298 if the value is False"
        }
      ]
    },
    {
      "initialPc": 286,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "54",
      "sourceCode": "        result = [ d[n-i] for i in { 1..n } ]",
      "assembly": [
        {
          "assembly": "LoadVar $accu211",
          "explain": "load accumulator: push the value of $accu211"
        }
      ]
    },
    {
      "initialPc": 287,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "54",
      "sourceCode": "        result = [ d[n-i] for i in { 1..n } ]",
      "assembly": [
        {
          "assembly": "DelVar $accu211",
          "explain": "delete method variable $accu211"
        }
      ]
    },
    {
      "initialPc": 288,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "54",
      "sourceCode": "        result = [ d[n-i] for i in { 1..n } ]",
      "assembly": [
        {
          "assembly": "LoadVar d",
          "explain": "push the value of d"
        }
      ]
    },
    {
      "initialPc": 289,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "54",
      "sourceCode": "        result = [ d[n-i] for i in { 1..n } ]",
      "assembly": [
        {
          "assembly": "LoadVar n",
          "explain": "push the value of n"
        }
      ]
    },
    {
      "initialPc": 290,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "54",
      "sourceCode": "        result = [ d[n-i] for i in { 1..n } ]",
      "assembly": [
        {
          "assembly": "LoadVar i",
          "explain": "push the value of i"
        }
      ]
    },
    {
      "initialPc": 291,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "54",
      "sourceCode": "        result = [ d[n-i] for i in { 1..n } ]",
      "assembly": [
        {
          "assembly": "DelVar i",
          "explain": "delete method variable i"
        }
      ]
    },
    {
      "initialPc": 292,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "54",
      "sourceCode": "        result = [ d[n-i] for i in { 1..n } ]",
      "assembly": [
        {
          "assembly": "2-ary -",
          "explain": "pop 2 values and push the result of applying -"
        }
      ]
    },
    {
      "initialPc": 293,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "54",
      "sourceCode": "        result = [ d[n-i] for i in { 1..n } ]",
      "assembly": [
        {
          "assembly": "2-ary Closure",
          "explain": "pop 2 values and push the result of applying Closure"
        }
      ]
    },
    {
      "initialPc": 294,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "54",
      "sourceCode": "        result = [ d[n-i] for i in { 1..n } ]",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 295,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "54",
      "sourceCode": "        result = [ d[n-i] for i in { 1..n } ]",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 296,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "54",
      "sourceCode": "        result = [ d[n-i] for i in { 1..n } ]",
      "assembly": [
        {
          "assembly": "StoreVar $accu211",
          "explain": "update accumulator: pop a value and store in $accu211"
        }
      ]
    },
    {
      "initialPc": 297,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "54",
      "sourceCode": "        result = [ d[n-i] for i in { 1..n } ]",
      "assembly": [
        {
          "assembly": "Jump 284",
          "explain": "set program counter to 284"
        }
      ]
    },
    {
      "initialPc": 298,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "54",
      "sourceCode": "        result = [ d[n-i] for i in { 1..n } ]",
      "assembly": [
        {
          "assembly": "DelVar d",
          "explain": "delete method variable d"
        }
      ]
    },
    {
      "initialPc": 299,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "54",
      "sourceCode": "        result = [ d[n-i] for i in { 1..n } ]",
      "assembly": [
        {
          "assembly": "DelVar i",
          "explain": "delete method variable i"
        }
      ]
    },
    {
      "initialPc": 300,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "54",
      "sourceCode": "        result = [ d[n-i] for i in { 1..n } ]",
      "assembly": [
        {
          "assembly": "DelVar n",
          "explain": "delete method variable n"
        }
      ]
    },
    {
      "initialPc": 301,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "54",
      "sourceCode": "        result = [ d[n-i] for i in { 1..n } ]",
      "assembly": [
        {
          "assembly": "LoadVar $accu211",
          "explain": "load final accumulator result: push the value of $accu211"
        }
      ]
    },
    {
      "initialPc": 302,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "54",
      "sourceCode": "        result = [ d[n-i] for i in { 1..n } ]",
      "assembly": [
        {
          "assembly": "DelVar $accu211",
          "explain": "delete method variable $accu211"
        }
      ]
    },
    {
      "initialPc": 303,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "54",
      "sourceCode": "        result = [ d[n-i] for i in { 1..n } ]",
      "assembly": [
        {
          "assembly": "StoreVar result",
          "explain": "pop a value and store in result"
        }
      ]
    },
    {
      "initialPc": 304,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "52",
      "sourceCode": "def reversed(d) returns result:",
      "assembly": [
        {
          "assembly": "ReturnOp(result)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 305,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "57",
      "sourceCode": "def index(d, e) returns i:",
      "assembly": [
        {
          "assembly": "Jump 602",
          "explain": "jump over method definition: set program counter to 602"
        }
      ]
    },
    {
      "initialPc": 306,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "57",
      "sourceCode": "def index(d, e) returns i:",
      "assembly": [
        {
          "assembly": "Frame index(d, e)",
          "explain": "start of method index"
        }
      ]
    },
    {
      "initialPc": 307,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "58",
      "sourceCode": "    i = 0",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 308,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "58",
      "sourceCode": "    i = 0",
      "assembly": [
        {
          "assembly": "StoreVar i",
          "explain": "pop a value and store in i"
        }
      ]
    },
    {
      "initialPc": 309,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "59",
      "sourceCode": "    while d[i] != e:",
      "assembly": [
        {
          "assembly": "LoadVar d",
          "explain": "push the value of d"
        }
      ]
    },
    {
      "initialPc": 310,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "59",
      "sourceCode": "    while d[i] != e:",
      "assembly": [
        {
          "assembly": "LoadVar i",
          "explain": "push the value of i"
        }
      ]
    },
    {
      "initialPc": 311,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "59",
      "sourceCode": "    while d[i] != e:",
      "assembly": [
        {
          "assembly": "2-ary Closure",
          "explain": "pop 2 values and push the result of applying Closure"
        }
      ]
    },
    {
      "initialPc": 312,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "59",
      "sourceCode": "    while d[i] != e:",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 313,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "59",
      "sourceCode": "    while d[i] != e:",
      "assembly": [
        {
          "assembly": "LoadVar e",
          "explain": "push the value of e"
        }
      ]
    },
    {
      "initialPc": 314,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "59",
      "sourceCode": "    while d[i] != e:",
      "assembly": [
        {
          "assembly": "2-ary !=",
          "explain": "pop 2 values and push the result of applying !="
        }
      ]
    },
    {
      "initialPc": 315,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "59",
      "sourceCode": "    while d[i] != e:",
      "assembly": [
        {
          "assembly": "JumpCond False 322",
          "explain": "pop a value and jump to 322 if the value is False"
        }
      ]
    },
    {
      "initialPc": 316,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "60",
      "sourceCode": "        i += 1",
      "assembly": [
        {
          "assembly": "LoadVar i",
          "explain": "push the value of i"
        }
      ]
    },
    {
      "initialPc": 317,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "60",
      "sourceCode": "        i += 1",
      "assembly": [
        {
          "assembly": "DelVar i",
          "explain": "delete method variable i"
        }
      ]
    },
    {
      "initialPc": 318,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "60",
      "sourceCode": "        i += 1",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 319,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "60",
      "sourceCode": "        i += 1",
      "assembly": [
        {
          "assembly": "2-ary +",
          "explain": "pop 2 values and push the result of applying +"
        }
      ]
    },
    {
      "initialPc": 320,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "60",
      "sourceCode": "        i += 1",
      "assembly": [
        {
          "assembly": "StoreVar i",
          "explain": "pop a value and store in i"
        }
      ]
    },
    {
      "initialPc": 321,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "59",
      "sourceCode": "    while d[i] != e:",
      "assembly": [
        {
          "assembly": "Jump 309",
          "explain": "set program counter to 309"
        }
      ]
    },
    {
      "initialPc": 322,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "57",
      "sourceCode": "def index(d, e) returns i:",
      "assembly": [
        {
          "assembly": "DelVar d",
          "explain": "delete method variable d"
        }
      ]
    },
    {
      "initialPc": 323,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "57",
      "sourceCode": "def index(d, e) returns i:",
      "assembly": [
        {
          "assembly": "DelVar e",
          "explain": "delete method variable e"
        }
      ]
    },
    {
      "initialPc": 324,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "57",
      "sourceCode": "def index(d, e) returns i:",
      "assembly": [
        {
          "assembly": "ReturnOp(i)",
          "explain": "restore caller method state and push i"
        }
      ]
    },
    {
      "initialPc": 325,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "57",
      "sourceCode": "def index(d, e) returns i:",
      "assembly": [
        {
          "assembly": "DelVar i",
          "explain": "delete method variable i"
        }
      ]
    },
    {
      "initialPc": 326,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "63",
      "sourceCode": "def startswith(d, prefix) returns result:",
      "assembly": [
        {
          "assembly": "Jump 602",
          "explain": "jump over method definition: set program counter to 602"
        }
      ]
    },
    {
      "initialPc": 327,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "63",
      "sourceCode": "def startswith(d, prefix) returns result:",
      "assembly": [
        {
          "assembly": "Frame startswith(d, prefix)",
          "explain": "start of method startswith"
        }
      ]
    },
    {
      "initialPc": 328,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "64",
      "sourceCode": "    result = (len(prefix) <= len(d)) and all(d[i] == prefix[i] for i in { 0 .. len(prefix) - 1 })",
      "assembly": [
        {
          "assembly": "DelVar result",
          "explain": "delete method variable result"
        }
      ]
    },
    {
      "initialPc": 329,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "64",
      "sourceCode": "    result = (len(prefix) <= len(d)) and all(d[i] == prefix[i] for i in { 0 .. len(prefix) - 1 })",
      "assembly": [
        {
          "assembly": "LoadVar prefix",
          "explain": "push the value of prefix"
        }
      ]
    },
    {
      "initialPc": 330,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "64",
      "sourceCode": "    result = (len(prefix) <= len(d)) and all(d[i] == prefix[i] for i in { 0 .. len(prefix) - 1 })",
      "assembly": [
        {
          "assembly": "1-ary len",
          "explain": "pop 1 value and push the result of applying len"
        }
      ]
    },
    {
      "initialPc": 331,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "64",
      "sourceCode": "    result = (len(prefix) <= len(d)) and all(d[i] == prefix[i] for i in { 0 .. len(prefix) - 1 })",
      "assembly": [
        {
          "assembly": "LoadVar d",
          "explain": "push the value of d"
        }
      ]
    },
    {
      "initialPc": 332,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "64",
      "sourceCode": "    result = (len(prefix) <= len(d)) and all(d[i] == prefix[i] for i in { 0 .. len(prefix) - 1 })",
      "assembly": [
        {
          "assembly": "1-ary len",
          "explain": "pop 1 value and push the result of applying len"
        }
      ]
    },
    {
      "initialPc": 333,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "64",
      "sourceCode": "    result = (len(prefix) <= len(d)) and all(d[i] == prefix[i] for i in { 0 .. len(prefix) - 1 })",
      "assembly": [
        {
          "assembly": "2-ary <=",
          "explain": "pop 2 values and push the result of applying <="
        }
      ]
    },
    {
      "initialPc": 334,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "64",
      "sourceCode": "    result = (len(prefix) <= len(d)) and all(d[i] == prefix[i] for i in { 0 .. len(prefix) - 1 })",
      "assembly": [
        {
          "assembly": "JumpCond False 368",
          "explain": "pop a value and jump to 368 if the value is False"
        }
      ]
    },
    {
      "initialPc": 335,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "64",
      "sourceCode": "    result = (len(prefix) <= len(d)) and all(d[i] == prefix[i] for i in { 0 .. len(prefix) - 1 })",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "initialize accumulator for list comprehension: push constant ()"
        }
      ]
    },
    {
      "initialPc": 336,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "64",
      "sourceCode": "    result = (len(prefix) <= len(d)) and all(d[i] == prefix[i] for i in { 0 .. len(prefix) - 1 })",
      "assembly": [
        {
          "assembly": "StoreVar $accu257",
          "explain": "initialize accumulator for list comprehension: pop a value and store in $accu257"
        }
      ]
    },
    {
      "initialPc": 337,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "64",
      "sourceCode": "    result = (len(prefix) <= len(d)) and all(d[i] == prefix[i] for i in { 0 .. len(prefix) - 1 })",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 338,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "64",
      "sourceCode": "    result = (len(prefix) <= len(d)) and all(d[i] == prefix[i] for i in { 0 .. len(prefix) - 1 })",
      "assembly": [
        {
          "assembly": "LoadVar prefix",
          "explain": "push the value of prefix"
        }
      ]
    },
    {
      "initialPc": 339,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "64",
      "sourceCode": "    result = (len(prefix) <= len(d)) and all(d[i] == prefix[i] for i in { 0 .. len(prefix) - 1 })",
      "assembly": [
        {
          "assembly": "1-ary len",
          "explain": "pop 1 value and push the result of applying len"
        }
      ]
    },
    {
      "initialPc": 340,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "64",
      "sourceCode": "    result = (len(prefix) <= len(d)) and all(d[i] == prefix[i] for i in { 0 .. len(prefix) - 1 })",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 341,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "64",
      "sourceCode": "    result = (len(prefix) <= len(d)) and all(d[i] == prefix[i] for i in { 0 .. len(prefix) - 1 })",
      "assembly": [
        {
          "assembly": "2-ary -",
          "explain": "pop 2 values and push the result of applying -"
        }
      ]
    },
    {
      "initialPc": 342,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "64",
      "sourceCode": "    result = (len(prefix) <= len(d)) and all(d[i] == prefix[i] for i in { 0 .. len(prefix) - 1 })",
      "assembly": [
        {
          "assembly": "2-ary ..",
          "explain": "pop 2 values and push the result of applying .."
        }
      ]
    },
    {
      "initialPc": 343,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "64",
      "sourceCode": "    result = (len(prefix) <= len(d)) and all(d[i] == prefix[i] for i in { 0 .. len(prefix) - 1 })",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 344,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "64",
      "sourceCode": "    result = (len(prefix) <= len(d)) and all(d[i] == prefix[i] for i in { 0 .. len(prefix) - 1 })",
      "assembly": [
        {
          "assembly": "Cut(i)",
          "explain": "get next element and assign to i; push False or True depending on success"
        }
      ]
    },
    {
      "initialPc": 345,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "64",
      "sourceCode": "    result = (len(prefix) <= len(d)) and all(d[i] == prefix[i] for i in { 0 .. len(prefix) - 1 })",
      "assembly": [
        {
          "assembly": "JumpCond False 361",
          "explain": "check if loop is done: pop a value and jump to 361 if the value is False"
        }
      ]
    },
    {
      "initialPc": 346,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "64",
      "sourceCode": "    result = (len(prefix) <= len(d)) and all(d[i] == prefix[i] for i in { 0 .. len(prefix) - 1 })",
      "assembly": [
        {
          "assembly": "LoadVar $accu257",
          "explain": "load accumulator: push the value of $accu257"
        }
      ]
    },
    {
      "initialPc": 347,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "64",
      "sourceCode": "    result = (len(prefix) <= len(d)) and all(d[i] == prefix[i] for i in { 0 .. len(prefix) - 1 })",
      "assembly": [
        {
          "assembly": "DelVar $accu257",
          "explain": "delete method variable $accu257"
        }
      ]
    },
    {
      "initialPc": 348,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "64",
      "sourceCode": "    result = (len(prefix) <= len(d)) and all(d[i] == prefix[i] for i in { 0 .. len(prefix) - 1 })",
      "assembly": [
        {
          "assembly": "LoadVar d",
          "explain": "push the value of d"
        }
      ]
    },
    {
      "initialPc": 349,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "64",
      "sourceCode": "    result = (len(prefix) <= len(d)) and all(d[i] == prefix[i] for i in { 0 .. len(prefix) - 1 })",
      "assembly": [
        {
          "assembly": "LoadVar i",
          "explain": "push the value of i"
        }
      ]
    },
    {
      "initialPc": 350,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "64",
      "sourceCode": "    result = (len(prefix) <= len(d)) and all(d[i] == prefix[i] for i in { 0 .. len(prefix) - 1 })",
      "assembly": [
        {
          "assembly": "2-ary Closure",
          "explain": "pop 2 values and push the result of applying Closure"
        }
      ]
    },
    {
      "initialPc": 351,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "64",
      "sourceCode": "    result = (len(prefix) <= len(d)) and all(d[i] == prefix[i] for i in { 0 .. len(prefix) - 1 })",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 352,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "64",
      "sourceCode": "    result = (len(prefix) <= len(d)) and all(d[i] == prefix[i] for i in { 0 .. len(prefix) - 1 })",
      "assembly": [
        {
          "assembly": "LoadVar prefix",
          "explain": "push the value of prefix"
        }
      ]
    },
    {
      "initialPc": 353,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "64",
      "sourceCode": "    result = (len(prefix) <= len(d)) and all(d[i] == prefix[i] for i in { 0 .. len(prefix) - 1 })",
      "assembly": [
        {
          "assembly": "LoadVar i",
          "explain": "push the value of i"
        }
      ]
    },
    {
      "initialPc": 354,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "64",
      "sourceCode": "    result = (len(prefix) <= len(d)) and all(d[i] == prefix[i] for i in { 0 .. len(prefix) - 1 })",
      "assembly": [
        {
          "assembly": "DelVar i",
          "explain": "delete method variable i"
        }
      ]
    },
    {
      "initialPc": 355,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "64",
      "sourceCode": "    result = (len(prefix) <= len(d)) and all(d[i] == prefix[i] for i in { 0 .. len(prefix) - 1 })",
      "assembly": [
        {
          "assembly": "2-ary Closure",
          "explain": "pop 2 values and push the result of applying Closure"
        }
      ]
    },
    {
      "initialPc": 356,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "64",
      "sourceCode": "    result = (len(prefix) <= len(d)) and all(d[i] == prefix[i] for i in { 0 .. len(prefix) - 1 })",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 357,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "64",
      "sourceCode": "    result = (len(prefix) <= len(d)) and all(d[i] == prefix[i] for i in { 0 .. len(prefix) - 1 })",
      "assembly": [
        {
          "assembly": "2-ary ==",
          "explain": "pop 2 values and push the result of applying =="
        }
      ]
    },
    {
      "initialPc": 358,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "64",
      "sourceCode": "    result = (len(prefix) <= len(d)) and all(d[i] == prefix[i] for i in { 0 .. len(prefix) - 1 })",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 359,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "64",
      "sourceCode": "    result = (len(prefix) <= len(d)) and all(d[i] == prefix[i] for i in { 0 .. len(prefix) - 1 })",
      "assembly": [
        {
          "assembly": "StoreVar $accu257",
          "explain": "update accumulator: pop a value and store in $accu257"
        }
      ]
    },
    {
      "initialPc": 360,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "64",
      "sourceCode": "    result = (len(prefix) <= len(d)) and all(d[i] == prefix[i] for i in { 0 .. len(prefix) - 1 })",
      "assembly": [
        {
          "assembly": "Jump 344",
          "explain": "set program counter to 344"
        }
      ]
    },
    {
      "initialPc": 361,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "64",
      "sourceCode": "    result = (len(prefix) <= len(d)) and all(d[i] == prefix[i] for i in { 0 .. len(prefix) - 1 })",
      "assembly": [
        {
          "assembly": "DelVar d",
          "explain": "delete method variable d"
        }
      ]
    },
    {
      "initialPc": 362,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "64",
      "sourceCode": "    result = (len(prefix) <= len(d)) and all(d[i] == prefix[i] for i in { 0 .. len(prefix) - 1 })",
      "assembly": [
        {
          "assembly": "DelVar i",
          "explain": "delete method variable i"
        }
      ]
    },
    {
      "initialPc": 363,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "64",
      "sourceCode": "    result = (len(prefix) <= len(d)) and all(d[i] == prefix[i] for i in { 0 .. len(prefix) - 1 })",
      "assembly": [
        {
          "assembly": "DelVar prefix",
          "explain": "delete method variable prefix"
        }
      ]
    },
    {
      "initialPc": 364,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "64",
      "sourceCode": "    result = (len(prefix) <= len(d)) and all(d[i] == prefix[i] for i in { 0 .. len(prefix) - 1 })",
      "assembly": [
        {
          "assembly": "LoadVar $accu257",
          "explain": "load final accumulator result: push the value of $accu257"
        }
      ]
    },
    {
      "initialPc": 365,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "64",
      "sourceCode": "    result = (len(prefix) <= len(d)) and all(d[i] == prefix[i] for i in { 0 .. len(prefix) - 1 })",
      "assembly": [
        {
          "assembly": "DelVar $accu257",
          "explain": "delete method variable $accu257"
        }
      ]
    },
    {
      "initialPc": 366,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "64",
      "sourceCode": "    result = (len(prefix) <= len(d)) and all(d[i] == prefix[i] for i in { 0 .. len(prefix) - 1 })",
      "assembly": [
        {
          "assembly": "1-ary all",
          "explain": "pop 1 value and push the result of applying all"
        }
      ]
    },
    {
      "initialPc": 367,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "64",
      "sourceCode": "    result = (len(prefix) <= len(d)) and all(d[i] == prefix[i] for i in { 0 .. len(prefix) - 1 })",
      "assembly": [
        {
          "assembly": "Jump 371",
          "explain": "set program counter to 371"
        }
      ]
    },
    {
      "initialPc": 368,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "64",
      "sourceCode": "    result = (len(prefix) <= len(d)) and all(d[i] == prefix[i] for i in { 0 .. len(prefix) - 1 })",
      "assembly": [
        {
          "assembly": "DelVar d",
          "explain": "delete method variable d"
        }
      ]
    },
    {
      "initialPc": 369,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "64",
      "sourceCode": "    result = (len(prefix) <= len(d)) and all(d[i] == prefix[i] for i in { 0 .. len(prefix) - 1 })",
      "assembly": [
        {
          "assembly": "DelVar prefix",
          "explain": "delete method variable prefix"
        }
      ]
    },
    {
      "initialPc": 370,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "64",
      "sourceCode": "    result = (len(prefix) <= len(d)) and all(d[i] == prefix[i] for i in { 0 .. len(prefix) - 1 })",
      "assembly": [
        {
          "assembly": "Push False",
          "explain": "push constant False"
        }
      ]
    },
    {
      "initialPc": 371,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "64",
      "sourceCode": "    result = (len(prefix) <= len(d)) and all(d[i] == prefix[i] for i in { 0 .. len(prefix) - 1 })",
      "assembly": [
        {
          "assembly": "StoreVar result",
          "explain": "pop a value and store in result"
        }
      ]
    },
    {
      "initialPc": 372,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "63",
      "sourceCode": "def startswith(d, prefix) returns result:",
      "assembly": [
        {
          "assembly": "ReturnOp(result)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 373,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "67",
      "sourceCode": "def foldl(d, f, z) returns result:",
      "assembly": [
        {
          "assembly": "Jump 602",
          "explain": "jump over method definition: set program counter to 602"
        }
      ]
    },
    {
      "initialPc": 374,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "67",
      "sourceCode": "def foldl(d, f, z) returns result:",
      "assembly": [
        {
          "assembly": "Frame foldl(d, f, z)",
          "explain": "start of method foldl"
        }
      ]
    },
    {
      "initialPc": 375,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "68",
      "sourceCode": "    result = z",
      "assembly": [
        {
          "assembly": "DelVar result",
          "explain": "delete method variable result"
        }
      ]
    },
    {
      "initialPc": 376,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "68",
      "sourceCode": "    result = z",
      "assembly": [
        {
          "assembly": "LoadVar z",
          "explain": "push the value of z"
        }
      ]
    },
    {
      "initialPc": 377,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "68",
      "sourceCode": "    result = z",
      "assembly": [
        {
          "assembly": "DelVar z",
          "explain": "delete method variable z"
        }
      ]
    },
    {
      "initialPc": 378,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "68",
      "sourceCode": "    result = z",
      "assembly": [
        {
          "assembly": "StoreVar result",
          "explain": "pop a value and store in result"
        }
      ]
    },
    {
      "initialPc": 379,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "69",
      "sourceCode": "    for e in d:",
      "assembly": [
        {
          "assembly": "LoadVar d",
          "explain": "push the value of d"
        }
      ]
    },
    {
      "initialPc": 380,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "69",
      "sourceCode": "    for e in d:",
      "assembly": [
        {
          "assembly": "DelVar d",
          "explain": "delete method variable d"
        }
      ]
    },
    {
      "initialPc": 381,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "69",
      "sourceCode": "    for e in d:",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 382,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "69",
      "sourceCode": "    for e in d:",
      "assembly": [
        {
          "assembly": "Cut(e)",
          "explain": "get next element and assign to e; push False or True depending on success"
        }
      ]
    },
    {
      "initialPc": 383,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "69",
      "sourceCode": "    for e in d:",
      "assembly": [
        {
          "assembly": "JumpCond False 396",
          "explain": "check if loop is done: pop a value and jump to 396 if the value is False"
        }
      ]
    },
    {
      "initialPc": 384,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "70",
      "sourceCode": "        result = f(result, e)",
      "assembly": [
        {
          "assembly": "LoadVar f",
          "explain": "push the value of f"
        }
      ]
    },
    {
      "initialPc": 385,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "70",
      "sourceCode": "        result = f(result, e)",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "building a tuple: push constant ()"
        }
      ]
    },
    {
      "initialPc": 386,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "70",
      "sourceCode": "        result = f(result, e)",
      "assembly": [
        {
          "assembly": "LoadVar result",
          "explain": "push the value of result"
        }
      ]
    },
    {
      "initialPc": 387,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "70",
      "sourceCode": "        result = f(result, e)",
      "assembly": [
        {
          "assembly": "DelVar result",
          "explain": "delete method variable result"
        }
      ]
    },
    {
      "initialPc": 388,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "70",
      "sourceCode": "        result = f(result, e)",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 389,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "70",
      "sourceCode": "        result = f(result, e)",
      "assembly": [
        {
          "assembly": "LoadVar e",
          "explain": "push the value of e"
        }
      ]
    },
    {
      "initialPc": 390,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "70",
      "sourceCode": "        result = f(result, e)",
      "assembly": [
        {
          "assembly": "DelVar e",
          "explain": "delete method variable e"
        }
      ]
    },
    {
      "initialPc": 391,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "70",
      "sourceCode": "        result = f(result, e)",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 392,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "70",
      "sourceCode": "        result = f(result, e)",
      "assembly": [
        {
          "assembly": "2-ary Closure",
          "explain": "pop 2 values and push the result of applying Closure"
        }
      ]
    },
    {
      "initialPc": 393,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "70",
      "sourceCode": "        result = f(result, e)",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 394,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "70",
      "sourceCode": "        result = f(result, e)",
      "assembly": [
        {
          "assembly": "StoreVar result",
          "explain": "pop a value and store in result"
        }
      ]
    },
    {
      "initialPc": 395,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "69",
      "sourceCode": "    for e in d:",
      "assembly": [
        {
          "assembly": "Jump 382",
          "explain": "set program counter to 382"
        }
      ]
    },
    {
      "initialPc": 396,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "67",
      "sourceCode": "def foldl(d, f, z) returns result:",
      "assembly": [
        {
          "assembly": "DelVar e",
          "explain": "delete method variable e"
        }
      ]
    },
    {
      "initialPc": 397,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "67",
      "sourceCode": "def foldl(d, f, z) returns result:",
      "assembly": [
        {
          "assembly": "DelVar f",
          "explain": "delete method variable f"
        }
      ]
    },
    {
      "initialPc": 398,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "67",
      "sourceCode": "def foldl(d, f, z) returns result:",
      "assembly": [
        {
          "assembly": "ReturnOp(result)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 399,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "73",
      "sourceCode": "def foldr(d, f, z) returns result:",
      "assembly": [
        {
          "assembly": "Jump 602",
          "explain": "jump over method definition: set program counter to 602"
        }
      ]
    },
    {
      "initialPc": 400,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "73",
      "sourceCode": "def foldr(d, f, z) returns result:",
      "assembly": [
        {
          "assembly": "Frame foldr(d, f, z)",
          "explain": "start of method foldr"
        }
      ]
    },
    {
      "initialPc": 401,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "74",
      "sourceCode": "    result = z if len d == 0 else f(d[0], foldr(tail(d), f, z))",
      "assembly": [
        {
          "assembly": "DelVar result",
          "explain": "delete method variable result"
        }
      ]
    },
    {
      "initialPc": 402,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "74",
      "sourceCode": "    result = z if len d == 0 else f(d[0], foldr(tail(d), f, z))",
      "assembly": [
        {
          "assembly": "LoadVar d",
          "explain": "push the value of d"
        }
      ]
    },
    {
      "initialPc": 403,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "74",
      "sourceCode": "    result = z if len d == 0 else f(d[0], foldr(tail(d), f, z))",
      "assembly": [
        {
          "assembly": "1-ary len",
          "explain": "pop 1 value and push the result of applying len"
        }
      ]
    },
    {
      "initialPc": 404,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "74",
      "sourceCode": "    result = z if len d == 0 else f(d[0], foldr(tail(d), f, z))",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 405,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "74",
      "sourceCode": "    result = z if len d == 0 else f(d[0], foldr(tail(d), f, z))",
      "assembly": [
        {
          "assembly": "2-ary ==",
          "explain": "pop 2 values and push the result of applying =="
        }
      ]
    },
    {
      "initialPc": 406,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "74",
      "sourceCode": "    result = z if len d == 0 else f(d[0], foldr(tail(d), f, z))",
      "assembly": [
        {
          "assembly": "JumpCond False 412",
          "explain": "pop a value and jump to 412 if the value is False"
        }
      ]
    },
    {
      "initialPc": 407,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "74",
      "sourceCode": "    result = z if len d == 0 else f(d[0], foldr(tail(d), f, z))",
      "assembly": [
        {
          "assembly": "DelVar d",
          "explain": "delete method variable d"
        }
      ]
    },
    {
      "initialPc": 408,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "74",
      "sourceCode": "    result = z if len d == 0 else f(d[0], foldr(tail(d), f, z))",
      "assembly": [
        {
          "assembly": "DelVar f",
          "explain": "delete method variable f"
        }
      ]
    },
    {
      "initialPc": 409,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "74",
      "sourceCode": "    result = z if len d == 0 else f(d[0], foldr(tail(d), f, z))",
      "assembly": [
        {
          "assembly": "LoadVar z",
          "explain": "push the value of z"
        }
      ]
    },
    {
      "initialPc": 410,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "74",
      "sourceCode": "    result = z if len d == 0 else f(d[0], foldr(tail(d), f, z))",
      "assembly": [
        {
          "assembly": "DelVar z",
          "explain": "delete method variable z"
        }
      ]
    },
    {
      "initialPc": 411,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "74",
      "sourceCode": "    result = z if len d == 0 else f(d[0], foldr(tail(d), f, z))",
      "assembly": [
        {
          "assembly": "Jump 434",
          "explain": "set program counter to 434"
        }
      ]
    },
    {
      "initialPc": 412,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "74",
      "sourceCode": "    result = z if len d == 0 else f(d[0], foldr(tail(d), f, z))",
      "assembly": [
        {
          "assembly": "LoadVar f",
          "explain": "push the value of f"
        }
      ]
    },
    {
      "initialPc": 413,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "74",
      "sourceCode": "    result = z if len d == 0 else f(d[0], foldr(tail(d), f, z))",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "building a tuple: push constant ()"
        }
      ]
    },
    {
      "initialPc": 414,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "74",
      "sourceCode": "    result = z if len d == 0 else f(d[0], foldr(tail(d), f, z))",
      "assembly": [
        {
          "assembly": "LoadVar d",
          "explain": "push the value of d"
        }
      ]
    },
    {
      "initialPc": 415,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "74",
      "sourceCode": "    result = z if len d == 0 else f(d[0], foldr(tail(d), f, z))",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 416,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "74",
      "sourceCode": "    result = z if len d == 0 else f(d[0], foldr(tail(d), f, z))",
      "assembly": [
        {
          "assembly": "2-ary Closure",
          "explain": "pop 2 values and push the result of applying Closure"
        }
      ]
    },
    {
      "initialPc": 417,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "74",
      "sourceCode": "    result = z if len d == 0 else f(d[0], foldr(tail(d), f, z))",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 418,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "74",
      "sourceCode": "    result = z if len d == 0 else f(d[0], foldr(tail(d), f, z))",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 419,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "74",
      "sourceCode": "    result = z if len d == 0 else f(d[0], foldr(tail(d), f, z))",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "building a tuple: push constant ()"
        }
      ]
    },
    {
      "initialPc": 420,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "74",
      "sourceCode": "    result = z if len d == 0 else f(d[0], foldr(tail(d), f, z))",
      "assembly": [
        {
          "assembly": "LoadVar d",
          "explain": "push the value of d"
        }
      ]
    },
    {
      "initialPc": 421,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "74",
      "sourceCode": "    result = z if len d == 0 else f(d[0], foldr(tail(d), f, z))",
      "assembly": [
        {
          "assembly": "DelVar d",
          "explain": "delete method variable d"
        }
      ]
    },
    {
      "initialPc": 422,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "74",
      "sourceCode": "    result = z if len d == 0 else f(d[0], foldr(tail(d), f, z))",
      "assembly": [
        {
          "assembly": "Apply PC(57)",
          "explain": "call method PC(57)"
        }
      ]
    },
    {
      "initialPc": 423,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "74",
      "sourceCode": "    result = z if len d == 0 else f(d[0], foldr(tail(d), f, z))",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 424,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "74",
      "sourceCode": "    result = z if len d == 0 else f(d[0], foldr(tail(d), f, z))",
      "assembly": [
        {
          "assembly": "LoadVar f",
          "explain": "push the value of f"
        }
      ]
    },
    {
      "initialPc": 425,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "74",
      "sourceCode": "    result = z if len d == 0 else f(d[0], foldr(tail(d), f, z))",
      "assembly": [
        {
          "assembly": "DelVar f",
          "explain": "delete method variable f"
        }
      ]
    },
    {
      "initialPc": 426,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "74",
      "sourceCode": "    result = z if len d == 0 else f(d[0], foldr(tail(d), f, z))",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 427,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "74",
      "sourceCode": "    result = z if len d == 0 else f(d[0], foldr(tail(d), f, z))",
      "assembly": [
        {
          "assembly": "LoadVar z",
          "explain": "push the value of z"
        }
      ]
    },
    {
      "initialPc": 428,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "74",
      "sourceCode": "    result = z if len d == 0 else f(d[0], foldr(tail(d), f, z))",
      "assembly": [
        {
          "assembly": "DelVar z",
          "explain": "delete method variable z"
        }
      ]
    },
    {
      "initialPc": 429,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "74",
      "sourceCode": "    result = z if len d == 0 else f(d[0], foldr(tail(d), f, z))",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 430,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "74",
      "sourceCode": "    result = z if len d == 0 else f(d[0], foldr(tail(d), f, z))",
      "assembly": [
        {
          "assembly": "Apply PC(400)",
          "explain": "call method PC(400)"
        }
      ]
    },
    {
      "initialPc": 431,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "74",
      "sourceCode": "    result = z if len d == 0 else f(d[0], foldr(tail(d), f, z))",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 432,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "74",
      "sourceCode": "    result = z if len d == 0 else f(d[0], foldr(tail(d), f, z))",
      "assembly": [
        {
          "assembly": "2-ary Closure",
          "explain": "pop 2 values and push the result of applying Closure"
        }
      ]
    },
    {
      "initialPc": 433,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "74",
      "sourceCode": "    result = z if len d == 0 else f(d[0], foldr(tail(d), f, z))",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 434,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "74",
      "sourceCode": "    result = z if len d == 0 else f(d[0], foldr(tail(d), f, z))",
      "assembly": [
        {
          "assembly": "StoreVar result",
          "explain": "pop a value and store in result"
        }
      ]
    },
    {
      "initialPc": 435,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "73",
      "sourceCode": "def foldr(d, f, z) returns result:",
      "assembly": [
        {
          "assembly": "ReturnOp(result)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 436,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "77",
      "sourceCode": "def reduce(f, d, z) returns result:",
      "assembly": [
        {
          "assembly": "Jump 602",
          "explain": "jump over method definition: set program counter to 602"
        }
      ]
    },
    {
      "initialPc": 437,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "77",
      "sourceCode": "def reduce(f, d, z) returns result:",
      "assembly": [
        {
          "assembly": "Frame reduce(f, d, z)",
          "explain": "start of method reduce"
        }
      ]
    },
    {
      "initialPc": 438,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "78",
      "sourceCode": "    result = foldl(d, f, z)",
      "assembly": [
        {
          "assembly": "DelVar result",
          "explain": "delete method variable result"
        }
      ]
    },
    {
      "initialPc": 439,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "78",
      "sourceCode": "    result = foldl(d, f, z)",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "building a tuple: push constant ()"
        }
      ]
    },
    {
      "initialPc": 440,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "78",
      "sourceCode": "    result = foldl(d, f, z)",
      "assembly": [
        {
          "assembly": "LoadVar d",
          "explain": "push the value of d"
        }
      ]
    },
    {
      "initialPc": 441,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "78",
      "sourceCode": "    result = foldl(d, f, z)",
      "assembly": [
        {
          "assembly": "DelVar d",
          "explain": "delete method variable d"
        }
      ]
    },
    {
      "initialPc": 442,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "78",
      "sourceCode": "    result = foldl(d, f, z)",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 443,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "78",
      "sourceCode": "    result = foldl(d, f, z)",
      "assembly": [
        {
          "assembly": "LoadVar f",
          "explain": "push the value of f"
        }
      ]
    },
    {
      "initialPc": 444,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "78",
      "sourceCode": "    result = foldl(d, f, z)",
      "assembly": [
        {
          "assembly": "DelVar f",
          "explain": "delete method variable f"
        }
      ]
    },
    {
      "initialPc": 445,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "78",
      "sourceCode": "    result = foldl(d, f, z)",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 446,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "78",
      "sourceCode": "    result = foldl(d, f, z)",
      "assembly": [
        {
          "assembly": "LoadVar z",
          "explain": "push the value of z"
        }
      ]
    },
    {
      "initialPc": 447,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "78",
      "sourceCode": "    result = foldl(d, f, z)",
      "assembly": [
        {
          "assembly": "DelVar z",
          "explain": "delete method variable z"
        }
      ]
    },
    {
      "initialPc": 448,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "78",
      "sourceCode": "    result = foldl(d, f, z)",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 449,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "78",
      "sourceCode": "    result = foldl(d, f, z)",
      "assembly": [
        {
          "assembly": "Apply PC(374)",
          "explain": "call method PC(374)"
        }
      ]
    },
    {
      "initialPc": 450,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "78",
      "sourceCode": "    result = foldl(d, f, z)",
      "assembly": [
        {
          "assembly": "StoreVar result",
          "explain": "pop a value and store in result"
        }
      ]
    },
    {
      "initialPc": 451,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "77",
      "sourceCode": "def reduce(f, d, z) returns result:",
      "assembly": [
        {
          "assembly": "ReturnOp(result)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 452,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "81",
      "sourceCode": "def permuted(s) returns perm:",
      "assembly": [
        {
          "assembly": "Jump 602",
          "explain": "jump over method definition: set program counter to 602"
        }
      ]
    },
    {
      "initialPc": 453,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "81",
      "sourceCode": "def permuted(s) returns perm:",
      "assembly": [
        {
          "assembly": "Frame permuted(s)",
          "explain": "start of method permuted"
        }
      ]
    },
    {
      "initialPc": 454,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "82",
      "sourceCode": "    perm = []",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "push constant ()"
        }
      ]
    },
    {
      "initialPc": 455,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "82",
      "sourceCode": "    perm = []",
      "assembly": [
        {
          "assembly": "StoreVar perm",
          "explain": "pop a value and store in perm"
        }
      ]
    },
    {
      "initialPc": 456,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "83",
      "sourceCode": "    var c = s",
      "assembly": [
        {
          "assembly": "LoadVar s",
          "explain": "push the value of s"
        }
      ]
    },
    {
      "initialPc": 457,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "83",
      "sourceCode": "    var c = s",
      "assembly": [
        {
          "assembly": "DelVar s",
          "explain": "delete method variable s"
        }
      ]
    },
    {
      "initialPc": 458,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "83",
      "sourceCode": "    var c = s",
      "assembly": [
        {
          "assembly": "StoreVar c",
          "explain": "pop a value and store in c"
        }
      ]
    },
    {
      "initialPc": 459,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "84",
      "sourceCode": "    while c != {}:",
      "assembly": [
        {
          "assembly": "LoadVar c",
          "explain": "push the value of c"
        }
      ]
    },
    {
      "initialPc": 460,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "84",
      "sourceCode": "    while c != {}:",
      "assembly": [
        {
          "assembly": "Push {}",
          "explain": "push constant {}"
        }
      ]
    },
    {
      "initialPc": 461,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "84",
      "sourceCode": "    while c != {}:",
      "assembly": [
        {
          "assembly": "2-ary !=",
          "explain": "pop 2 values and push the result of applying !="
        }
      ]
    },
    {
      "initialPc": 462,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "84",
      "sourceCode": "    while c != {}:",
      "assembly": [
        {
          "assembly": "JumpCond False 482",
          "explain": "pop a value and jump to 482 if the value is False"
        }
      ]
    },
    {
      "initialPc": 463,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "85",
      "sourceCode": "        let e = choose c:",
      "assembly": [
        {
          "assembly": "LoadVar c",
          "explain": "push the value of c"
        }
      ]
    },
    {
      "initialPc": 464,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "85",
      "sourceCode": "        let e = choose c:",
      "assembly": [
        {
          "assembly": "Choose",
          "explain": "pop a set value and push one of its elements"
        }
      ]
    },
    {
      "initialPc": 465,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "85",
      "sourceCode": "        let e = choose c:",
      "assembly": [
        {
          "assembly": "StoreVar e",
          "explain": "pop a value and store in e"
        }
      ]
    },
    {
      "initialPc": 466,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "86",
      "sourceCode": "            perm += [ e, ]",
      "assembly": [
        {
          "assembly": "LoadVar perm",
          "explain": "push the value of perm"
        }
      ]
    },
    {
      "initialPc": 467,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "86",
      "sourceCode": "            perm += [ e, ]",
      "assembly": [
        {
          "assembly": "DelVar perm",
          "explain": "delete method variable perm"
        }
      ]
    },
    {
      "initialPc": 468,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "86",
      "sourceCode": "            perm += [ e, ]",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "building a tuple: push constant ()"
        }
      ]
    },
    {
      "initialPc": 469,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "86",
      "sourceCode": "            perm += [ e, ]",
      "assembly": [
        {
          "assembly": "LoadVar e",
          "explain": "push the value of e"
        }
      ]
    },
    {
      "initialPc": 470,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "86",
      "sourceCode": "            perm += [ e, ]",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 471,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "86",
      "sourceCode": "            perm += [ e, ]",
      "assembly": [
        {
          "assembly": "2-ary +",
          "explain": "pop 2 values and push the result of applying +"
        }
      ]
    },
    {
      "initialPc": 472,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "86",
      "sourceCode": "            perm += [ e, ]",
      "assembly": [
        {
          "assembly": "StoreVar perm",
          "explain": "pop a value and store in perm"
        }
      ]
    },
    {
      "initialPc": 473,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "87",
      "sourceCode": "            c -= { e }",
      "assembly": [
        {
          "assembly": "LoadVar c",
          "explain": "push the value of c"
        }
      ]
    },
    {
      "initialPc": 474,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "87",
      "sourceCode": "            c -= { e }",
      "assembly": [
        {
          "assembly": "DelVar c",
          "explain": "delete method variable c"
        }
      ]
    },
    {
      "initialPc": 475,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "87",
      "sourceCode": "            c -= { e }",
      "assembly": [
        {
          "assembly": "Push {}",
          "explain": "push constant {}"
        }
      ]
    },
    {
      "initialPc": 476,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "87",
      "sourceCode": "            c -= { e }",
      "assembly": [
        {
          "assembly": "LoadVar e",
          "explain": "push the value of e"
        }
      ]
    },
    {
      "initialPc": 477,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "87",
      "sourceCode": "            c -= { e }",
      "assembly": [
        {
          "assembly": "DelVar e",
          "explain": "delete method variable e"
        }
      ]
    },
    {
      "initialPc": 478,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "87",
      "sourceCode": "            c -= { e }",
      "assembly": [
        {
          "assembly": "2-ary SetAdd",
          "explain": "pop 2 values and push the result of applying SetAdd"
        }
      ]
    },
    {
      "initialPc": 479,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "87",
      "sourceCode": "            c -= { e }",
      "assembly": [
        {
          "assembly": "2-ary -",
          "explain": "pop 2 values and push the result of applying -"
        }
      ]
    },
    {
      "initialPc": 480,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "87",
      "sourceCode": "            c -= { e }",
      "assembly": [
        {
          "assembly": "StoreVar c",
          "explain": "pop a value and store in c"
        }
      ]
    },
    {
      "initialPc": 481,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "84",
      "sourceCode": "    while c != {}:",
      "assembly": [
        {
          "assembly": "Jump 459",
          "explain": "set program counter to 459"
        }
      ]
    },
    {
      "initialPc": 482,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "81",
      "sourceCode": "def permuted(s) returns perm:",
      "assembly": [
        {
          "assembly": "DelVar c",
          "explain": "delete method variable c"
        }
      ]
    },
    {
      "initialPc": 483,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "81",
      "sourceCode": "def permuted(s) returns perm:",
      "assembly": [
        {
          "assembly": "ReturnOp(perm)",
          "explain": "restore caller method state and push perm"
        }
      ]
    },
    {
      "initialPc": 484,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "81",
      "sourceCode": "def permuted(s) returns perm:",
      "assembly": [
        {
          "assembly": "DelVar perm",
          "explain": "delete method variable perm"
        }
      ]
    },
    {
      "initialPc": 485,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "90",
      "sourceCode": "def filter(cond, s) returns t:",
      "assembly": [
        {
          "assembly": "Jump 602",
          "explain": "jump over method definition: set program counter to 602"
        }
      ]
    },
    {
      "initialPc": 486,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "90",
      "sourceCode": "def filter(cond, s) returns t:",
      "assembly": [
        {
          "assembly": "Frame filter(cond, s)",
          "explain": "start of method filter"
        }
      ]
    },
    {
      "initialPc": 487,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "91",
      "sourceCode": "    t = [ e for e in s where cond(e) ]",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "initialize accumulator for list comprehension: push constant ()"
        }
      ]
    },
    {
      "initialPc": 488,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "91",
      "sourceCode": "    t = [ e for e in s where cond(e) ]",
      "assembly": [
        {
          "assembly": "StoreVar $accu377",
          "explain": "initialize accumulator for list comprehension: pop a value and store in $accu377"
        }
      ]
    },
    {
      "initialPc": 489,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "91",
      "sourceCode": "    t = [ e for e in s where cond(e) ]",
      "assembly": [
        {
          "assembly": "LoadVar s",
          "explain": "push the value of s"
        }
      ]
    },
    {
      "initialPc": 490,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "91",
      "sourceCode": "    t = [ e for e in s where cond(e) ]",
      "assembly": [
        {
          "assembly": "DelVar s",
          "explain": "delete method variable s"
        }
      ]
    },
    {
      "initialPc": 491,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "91",
      "sourceCode": "    t = [ e for e in s where cond(e) ]",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 492,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "91",
      "sourceCode": "    t = [ e for e in s where cond(e) ]",
      "assembly": [
        {
          "assembly": "DelVar e",
          "explain": "delete method variable e"
        }
      ]
    },
    {
      "initialPc": 493,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "91",
      "sourceCode": "    t = [ e for e in s where cond(e) ]",
      "assembly": [
        {
          "assembly": "Cut(e)",
          "explain": "get next element and assign to e; push False or True depending on success"
        }
      ]
    },
    {
      "initialPc": 494,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "91",
      "sourceCode": "    t = [ e for e in s where cond(e) ]",
      "assembly": [
        {
          "assembly": "JumpCond False 507",
          "explain": "check if loop is done: pop a value and jump to 507 if the value is False"
        }
      ]
    },
    {
      "initialPc": 495,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "91",
      "sourceCode": "    t = [ e for e in s where cond(e) ]",
      "assembly": [
        {
          "assembly": "LoadVar cond",
          "explain": "push the value of cond"
        }
      ]
    },
    {
      "initialPc": 496,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "91",
      "sourceCode": "    t = [ e for e in s where cond(e) ]",
      "assembly": [
        {
          "assembly": "LoadVar e",
          "explain": "push the value of e"
        }
      ]
    },
    {
      "initialPc": 497,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "91",
      "sourceCode": "    t = [ e for e in s where cond(e) ]",
      "assembly": [
        {
          "assembly": "2-ary Closure",
          "explain": "pop 2 values and push the result of applying Closure"
        }
      ]
    },
    {
      "initialPc": 498,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "91",
      "sourceCode": "    t = [ e for e in s where cond(e) ]",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 499,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "91",
      "sourceCode": "    t = [ e for e in s where cond(e) ]",
      "assembly": [
        {
          "assembly": "JumpCond False 492",
          "explain": "pop a value and jump to 492 if the value is False"
        }
      ]
    },
    {
      "initialPc": 500,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "91",
      "sourceCode": "    t = [ e for e in s where cond(e) ]",
      "assembly": [
        {
          "assembly": "LoadVar $accu377",
          "explain": "load accumulator: push the value of $accu377"
        }
      ]
    },
    {
      "initialPc": 501,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "91",
      "sourceCode": "    t = [ e for e in s where cond(e) ]",
      "assembly": [
        {
          "assembly": "DelVar $accu377",
          "explain": "delete method variable $accu377"
        }
      ]
    },
    {
      "initialPc": 502,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "91",
      "sourceCode": "    t = [ e for e in s where cond(e) ]",
      "assembly": [
        {
          "assembly": "LoadVar e",
          "explain": "push the value of e"
        }
      ]
    },
    {
      "initialPc": 503,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "91",
      "sourceCode": "    t = [ e for e in s where cond(e) ]",
      "assembly": [
        {
          "assembly": "DelVar e",
          "explain": "delete method variable e"
        }
      ]
    },
    {
      "initialPc": 504,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "91",
      "sourceCode": "    t = [ e for e in s where cond(e) ]",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 505,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "91",
      "sourceCode": "    t = [ e for e in s where cond(e) ]",
      "assembly": [
        {
          "assembly": "StoreVar $accu377",
          "explain": "update accumulator: pop a value and store in $accu377"
        }
      ]
    },
    {
      "initialPc": 506,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "91",
      "sourceCode": "    t = [ e for e in s where cond(e) ]",
      "assembly": [
        {
          "assembly": "Jump 492",
          "explain": "set program counter to 492"
        }
      ]
    },
    {
      "initialPc": 507,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "91",
      "sourceCode": "    t = [ e for e in s where cond(e) ]",
      "assembly": [
        {
          "assembly": "DelVar cond",
          "explain": "delete method variable cond"
        }
      ]
    },
    {
      "initialPc": 508,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "91",
      "sourceCode": "    t = [ e for e in s where cond(e) ]",
      "assembly": [
        {
          "assembly": "DelVar e",
          "explain": "delete method variable e"
        }
      ]
    },
    {
      "initialPc": 509,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "91",
      "sourceCode": "    t = [ e for e in s where cond(e) ]",
      "assembly": [
        {
          "assembly": "LoadVar $accu377",
          "explain": "load final accumulator result: push the value of $accu377"
        }
      ]
    },
    {
      "initialPc": 510,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "91",
      "sourceCode": "    t = [ e for e in s where cond(e) ]",
      "assembly": [
        {
          "assembly": "DelVar $accu377",
          "explain": "delete method variable $accu377"
        }
      ]
    },
    {
      "initialPc": 511,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "91",
      "sourceCode": "    t = [ e for e in s where cond(e) ]",
      "assembly": [
        {
          "assembly": "StoreVar t",
          "explain": "pop a value and store in t"
        }
      ]
    },
    {
      "initialPc": 512,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "90",
      "sourceCode": "def filter(cond, s) returns t:",
      "assembly": [
        {
          "assembly": "ReturnOp(t)",
          "explain": "restore caller method state and push t"
        }
      ]
    },
    {
      "initialPc": 513,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "90",
      "sourceCode": "def filter(cond, s) returns t:",
      "assembly": [
        {
          "assembly": "DelVar t",
          "explain": "delete method variable t"
        }
      ]
    },
    {
      "initialPc": 514,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "94",
      "sourceCode": "def map(f, s) returns t:",
      "assembly": [
        {
          "assembly": "Jump 602",
          "explain": "jump over method definition: set program counter to 602"
        }
      ]
    },
    {
      "initialPc": 515,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "94",
      "sourceCode": "def map(f, s) returns t:",
      "assembly": [
        {
          "assembly": "Frame map(f, s)",
          "explain": "start of method map"
        }
      ]
    },
    {
      "initialPc": 516,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "95",
      "sourceCode": "    t = [ f(e) for e in s ]",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "initialize accumulator for list comprehension: push constant ()"
        }
      ]
    },
    {
      "initialPc": 517,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "95",
      "sourceCode": "    t = [ f(e) for e in s ]",
      "assembly": [
        {
          "assembly": "StoreVar $accu398",
          "explain": "initialize accumulator for list comprehension: pop a value and store in $accu398"
        }
      ]
    },
    {
      "initialPc": 518,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "95",
      "sourceCode": "    t = [ f(e) for e in s ]",
      "assembly": [
        {
          "assembly": "LoadVar s",
          "explain": "push the value of s"
        }
      ]
    },
    {
      "initialPc": 519,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "95",
      "sourceCode": "    t = [ f(e) for e in s ]",
      "assembly": [
        {
          "assembly": "DelVar s",
          "explain": "delete method variable s"
        }
      ]
    },
    {
      "initialPc": 520,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "95",
      "sourceCode": "    t = [ f(e) for e in s ]",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 521,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "95",
      "sourceCode": "    t = [ f(e) for e in s ]",
      "assembly": [
        {
          "assembly": "Cut(e)",
          "explain": "get next element and assign to e; push False or True depending on success"
        }
      ]
    },
    {
      "initialPc": 522,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "95",
      "sourceCode": "    t = [ f(e) for e in s ]",
      "assembly": [
        {
          "assembly": "JumpCond False 533",
          "explain": "check if loop is done: pop a value and jump to 533 if the value is False"
        }
      ]
    },
    {
      "initialPc": 523,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "95",
      "sourceCode": "    t = [ f(e) for e in s ]",
      "assembly": [
        {
          "assembly": "LoadVar $accu398",
          "explain": "load accumulator: push the value of $accu398"
        }
      ]
    },
    {
      "initialPc": 524,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "95",
      "sourceCode": "    t = [ f(e) for e in s ]",
      "assembly": [
        {
          "assembly": "DelVar $accu398",
          "explain": "delete method variable $accu398"
        }
      ]
    },
    {
      "initialPc": 525,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "95",
      "sourceCode": "    t = [ f(e) for e in s ]",
      "assembly": [
        {
          "assembly": "LoadVar f",
          "explain": "push the value of f"
        }
      ]
    },
    {
      "initialPc": 526,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "95",
      "sourceCode": "    t = [ f(e) for e in s ]",
      "assembly": [
        {
          "assembly": "LoadVar e",
          "explain": "push the value of e"
        }
      ]
    },
    {
      "initialPc": 527,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "95",
      "sourceCode": "    t = [ f(e) for e in s ]",
      "assembly": [
        {
          "assembly": "DelVar e",
          "explain": "delete method variable e"
        }
      ]
    },
    {
      "initialPc": 528,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "95",
      "sourceCode": "    t = [ f(e) for e in s ]",
      "assembly": [
        {
          "assembly": "2-ary Closure",
          "explain": "pop 2 values and push the result of applying Closure"
        }
      ]
    },
    {
      "initialPc": 529,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "95",
      "sourceCode": "    t = [ f(e) for e in s ]",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 530,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "95",
      "sourceCode": "    t = [ f(e) for e in s ]",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 531,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "95",
      "sourceCode": "    t = [ f(e) for e in s ]",
      "assembly": [
        {
          "assembly": "StoreVar $accu398",
          "explain": "update accumulator: pop a value and store in $accu398"
        }
      ]
    },
    {
      "initialPc": 532,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "95",
      "sourceCode": "    t = [ f(e) for e in s ]",
      "assembly": [
        {
          "assembly": "Jump 521",
          "explain": "set program counter to 521"
        }
      ]
    },
    {
      "initialPc": 533,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "95",
      "sourceCode": "    t = [ f(e) for e in s ]",
      "assembly": [
        {
          "assembly": "DelVar e",
          "explain": "delete method variable e"
        }
      ]
    },
    {
      "initialPc": 534,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "95",
      "sourceCode": "    t = [ f(e) for e in s ]",
      "assembly": [
        {
          "assembly": "DelVar f",
          "explain": "delete method variable f"
        }
      ]
    },
    {
      "initialPc": 535,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "95",
      "sourceCode": "    t = [ f(e) for e in s ]",
      "assembly": [
        {
          "assembly": "LoadVar $accu398",
          "explain": "load final accumulator result: push the value of $accu398"
        }
      ]
    },
    {
      "initialPc": 536,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "95",
      "sourceCode": "    t = [ f(e) for e in s ]",
      "assembly": [
        {
          "assembly": "DelVar $accu398",
          "explain": "delete method variable $accu398"
        }
      ]
    },
    {
      "initialPc": 537,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "95",
      "sourceCode": "    t = [ f(e) for e in s ]",
      "assembly": [
        {
          "assembly": "StoreVar t",
          "explain": "pop a value and store in t"
        }
      ]
    },
    {
      "initialPc": 538,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "94",
      "sourceCode": "def map(f, s) returns t:",
      "assembly": [
        {
          "assembly": "ReturnOp(t)",
          "explain": "restore caller method state and push t"
        }
      ]
    },
    {
      "initialPc": 539,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/list.hny",
      "line": "94",
      "sourceCode": "def map(f, s) returns t:",
      "assembly": [
        {
          "assembly": "DelVar t",
          "explain": "delete method variable t"
        }
      ]
    },
    {
      "initialPc": 540,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "1",
      "sourceCode": "def empty() returns bg:",
      "assembly": [
        {
          "assembly": "Jump 602",
          "explain": "jump over method definition: set program counter to 602"
        }
      ]
    },
    {
      "initialPc": 541,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "1",
      "sourceCode": "def empty() returns bg:",
      "assembly": [
        {
          "assembly": "Frame empty()",
          "explain": "start of method empty"
        }
      ]
    },
    {
      "initialPc": 542,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "2",
      "sourceCode": "    bg = {:}",
      "assembly": [
        {
          "assembly": "Push {:}",
          "explain": "push constant {:}"
        }
      ]
    },
    {
      "initialPc": 543,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "2",
      "sourceCode": "    bg = {:}",
      "assembly": [
        {
          "assembly": "StoreVar bg",
          "explain": "pop a value and store in bg"
        }
      ]
    },
    {
      "initialPc": 544,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "1",
      "sourceCode": "def empty() returns bg:",
      "assembly": [
        {
          "assembly": "ReturnOp(bg)",
          "explain": "restore caller method state and push bg"
        }
      ]
    },
    {
      "initialPc": 545,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "1",
      "sourceCode": "def empty() returns bg:",
      "assembly": [
        {
          "assembly": "DelVar bg",
          "explain": "delete method variable bg"
        }
      ]
    },
    {
      "initialPc": 546,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "4",
      "sourceCode": "def fromSet(s) returns bg:",
      "assembly": [
        {
          "assembly": "Jump 602",
          "explain": "jump over method definition: set program counter to 602"
        }
      ]
    },
    {
      "initialPc": 547,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "4",
      "sourceCode": "def fromSet(s) returns bg:",
      "assembly": [
        {
          "assembly": "Frame fromSet(s)",
          "explain": "start of method fromSet"
        }
      ]
    },
    {
      "initialPc": 548,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "5",
      "sourceCode": "    bg = { elt:1 for elt in s }",
      "assembly": [
        {
          "assembly": "Push {:}",
          "explain": "initialize accumulator for dict comprehension: push constant {:}"
        }
      ]
    },
    {
      "initialPc": 549,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "5",
      "sourceCode": "    bg = { elt:1 for elt in s }",
      "assembly": [
        {
          "assembly": "StoreVar $accu422",
          "explain": "initialize accumulator for dict comprehension: pop a value and store in $accu422"
        }
      ]
    },
    {
      "initialPc": 550,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "5",
      "sourceCode": "    bg = { elt:1 for elt in s }",
      "assembly": [
        {
          "assembly": "LoadVar s",
          "explain": "push the value of s"
        }
      ]
    },
    {
      "initialPc": 551,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "5",
      "sourceCode": "    bg = { elt:1 for elt in s }",
      "assembly": [
        {
          "assembly": "DelVar s",
          "explain": "delete method variable s"
        }
      ]
    },
    {
      "initialPc": 552,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "5",
      "sourceCode": "    bg = { elt:1 for elt in s }",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 553,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "5",
      "sourceCode": "    bg = { elt:1 for elt in s }",
      "assembly": [
        {
          "assembly": "Cut(elt)",
          "explain": "get next element and assign to elt; push False or True depending on success"
        }
      ]
    },
    {
      "initialPc": 554,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "5",
      "sourceCode": "    bg = { elt:1 for elt in s }",
      "assembly": [
        {
          "assembly": "JumpCond False 563",
          "explain": "check if loop is done: pop a value and jump to 563 if the value is False"
        }
      ]
    },
    {
      "initialPc": 555,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "5",
      "sourceCode": "    bg = { elt:1 for elt in s }",
      "assembly": [
        {
          "assembly": "LoadVar $accu422",
          "explain": "load accumulator: push the value of $accu422"
        }
      ]
    },
    {
      "initialPc": 556,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "5",
      "sourceCode": "    bg = { elt:1 for elt in s }",
      "assembly": [
        {
          "assembly": "DelVar $accu422",
          "explain": "delete method variable $accu422"
        }
      ]
    },
    {
      "initialPc": 557,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "5",
      "sourceCode": "    bg = { elt:1 for elt in s }",
      "assembly": [
        {
          "assembly": "LoadVar elt",
          "explain": "push the value of elt"
        }
      ]
    },
    {
      "initialPc": 558,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "5",
      "sourceCode": "    bg = { elt:1 for elt in s }",
      "assembly": [
        {
          "assembly": "DelVar elt",
          "explain": "delete method variable elt"
        }
      ]
    },
    {
      "initialPc": 559,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "5",
      "sourceCode": "    bg = { elt:1 for elt in s }",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 560,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "5",
      "sourceCode": "    bg = { elt:1 for elt in s }",
      "assembly": [
        {
          "assembly": "3-ary DictAdd",
          "explain": "pop 3 values and push the result of applying DictAdd"
        }
      ]
    },
    {
      "initialPc": 561,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "5",
      "sourceCode": "    bg = { elt:1 for elt in s }",
      "assembly": [
        {
          "assembly": "StoreVar $accu422",
          "explain": "update accumulator: pop a value and store in $accu422"
        }
      ]
    },
    {
      "initialPc": 562,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "5",
      "sourceCode": "    bg = { elt:1 for elt in s }",
      "assembly": [
        {
          "assembly": "Jump 553",
          "explain": "set program counter to 553"
        }
      ]
    },
    {
      "initialPc": 563,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "5",
      "sourceCode": "    bg = { elt:1 for elt in s }",
      "assembly": [
        {
          "assembly": "DelVar elt",
          "explain": "delete method variable elt"
        }
      ]
    },
    {
      "initialPc": 564,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "5",
      "sourceCode": "    bg = { elt:1 for elt in s }",
      "assembly": [
        {
          "assembly": "LoadVar $accu422",
          "explain": "load final accumulator result: push the value of $accu422"
        }
      ]
    },
    {
      "initialPc": 565,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "5",
      "sourceCode": "    bg = { elt:1 for elt in s }",
      "assembly": [
        {
          "assembly": "DelVar $accu422",
          "explain": "delete method variable $accu422"
        }
      ]
    },
    {
      "initialPc": 566,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "5",
      "sourceCode": "    bg = { elt:1 for elt in s }",
      "assembly": [
        {
          "assembly": "StoreVar bg",
          "explain": "pop a value and store in bg"
        }
      ]
    },
    {
      "initialPc": 567,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "4",
      "sourceCode": "def fromSet(s) returns bg:",
      "assembly": [
        {
          "assembly": "ReturnOp(bg)",
          "explain": "restore caller method state and push bg"
        }
      ]
    },
    {
      "initialPc": 568,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "4",
      "sourceCode": "def fromSet(s) returns bg:",
      "assembly": [
        {
          "assembly": "DelVar bg",
          "explain": "delete method variable bg"
        }
      ]
    },
    {
      "initialPc": 569,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "7",
      "sourceCode": "def fromList(a) returns bg:",
      "assembly": [
        {
          "assembly": "Jump 602",
          "explain": "jump over method definition: set program counter to 602"
        }
      ]
    },
    {
      "initialPc": 570,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "7",
      "sourceCode": "def fromList(a) returns bg:",
      "assembly": [
        {
          "assembly": "Frame fromList(a)",
          "explain": "start of method fromList"
        }
      ]
    },
    {
      "initialPc": 571,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "8",
      "sourceCode": "    bg = {:}",
      "assembly": [
        {
          "assembly": "Push {:}",
          "explain": "push constant {:}"
        }
      ]
    },
    {
      "initialPc": 572,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "8",
      "sourceCode": "    bg = {:}",
      "assembly": [
        {
          "assembly": "StoreVar bg",
          "explain": "pop a value and store in bg"
        }
      ]
    },
    {
      "initialPc": 573,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "9",
      "sourceCode": "    for v in a:",
      "assembly": [
        {
          "assembly": "LoadVar a",
          "explain": "push the value of a"
        }
      ]
    },
    {
      "initialPc": 574,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "9",
      "sourceCode": "    for v in a:",
      "assembly": [
        {
          "assembly": "DelVar a",
          "explain": "delete method variable a"
        }
      ]
    },
    {
      "initialPc": 575,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "9",
      "sourceCode": "    for v in a:",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 576,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "9",
      "sourceCode": "    for v in a:",
      "assembly": [
        {
          "assembly": "Cut(v)",
          "explain": "get next element and assign to v; push False or True depending on success"
        }
      ]
    },
    {
      "initialPc": 577,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "9",
      "sourceCode": "    for v in a:",
      "assembly": [
        {
          "assembly": "JumpCond False 599",
          "explain": "check if loop is done: pop a value and jump to 599 if the value is False"
        }
      ]
    },
    {
      "initialPc": 578,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "10",
      "sourceCode": "        if v in bg:",
      "assembly": [
        {
          "assembly": "LoadVar v",
          "explain": "push the value of v"
        }
      ]
    },
    {
      "initialPc": 579,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "10",
      "sourceCode": "        if v in bg:",
      "assembly": [
        {
          "assembly": "LoadVar bg",
          "explain": "push the value of bg"
        }
      ]
    },
    {
      "initialPc": 580,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "10",
      "sourceCode": "        if v in bg:",
      "assembly": [
        {
          "assembly": "2-ary in",
          "explain": "pop 2 values and push the result of applying in"
        }
      ]
    },
    {
      "initialPc": 581,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "10",
      "sourceCode": "        if v in bg:",
      "assembly": [
        {
          "assembly": "JumpCond False 592",
          "explain": "pop a value and jump to 592 if the value is False"
        }
      ]
    },
    {
      "initialPc": 582,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "11",
      "sourceCode": "            bg[v] += 1",
      "assembly": [
        {
          "assembly": "Push ?bg",
          "explain": "push constant ?bg"
        }
      ]
    },
    {
      "initialPc": 583,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "11",
      "sourceCode": "            bg[v] += 1",
      "assembly": [
        {
          "assembly": "LoadVar v",
          "explain": "push the value of v"
        }
      ]
    },
    {
      "initialPc": 584,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "11",
      "sourceCode": "            bg[v] += 1",
      "assembly": [
        {
          "assembly": "DelVar v",
          "explain": "delete method variable v"
        }
      ]
    },
    {
      "initialPc": 585,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "11",
      "sourceCode": "            bg[v] += 1",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 586,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "11",
      "sourceCode": "            bg[v] += 1",
      "assembly": [
        {
          "assembly": "Dup",
          "explain": "push a copy of the top value on the stack"
        }
      ]
    },
    {
      "initialPc": 587,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "11",
      "sourceCode": "            bg[v] += 1",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 588,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "11",
      "sourceCode": "            bg[v] += 1",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 589,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "11",
      "sourceCode": "            bg[v] += 1",
      "assembly": [
        {
          "assembly": "2-ary +",
          "explain": "pop 2 values and push the result of applying +"
        }
      ]
    },
    {
      "initialPc": 590,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "11",
      "sourceCode": "            bg[v] += 1",
      "assembly": [
        {
          "assembly": "StoreVar [bg]",
          "explain": "pop a value and the address of a method variable and store the value at that address"
        }
      ]
    },
    {
      "initialPc": 591,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "10",
      "sourceCode": "        if v in bg:",
      "assembly": [
        {
          "assembly": "Jump 576",
          "explain": "set program counter to 576"
        }
      ]
    },
    {
      "initialPc": 592,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "13",
      "sourceCode": "            bg[v] = 1",
      "assembly": [
        {
          "assembly": "Push ?bg",
          "explain": "push constant ?bg"
        }
      ]
    },
    {
      "initialPc": 593,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "13",
      "sourceCode": "            bg[v] = 1",
      "assembly": [
        {
          "assembly": "LoadVar v",
          "explain": "push the value of v"
        }
      ]
    },
    {
      "initialPc": 594,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "13",
      "sourceCode": "            bg[v] = 1",
      "assembly": [
        {
          "assembly": "DelVar v",
          "explain": "delete method variable v"
        }
      ]
    },
    {
      "initialPc": 595,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "13",
      "sourceCode": "            bg[v] = 1",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 596,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "13",
      "sourceCode": "            bg[v] = 1",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 597,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "13",
      "sourceCode": "            bg[v] = 1",
      "assembly": [
        {
          "assembly": "StoreVar [bg]",
          "explain": "pop a value and the address of a method variable and store the value at that address"
        }
      ]
    },
    {
      "initialPc": 598,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "9",
      "sourceCode": "    for v in a:",
      "assembly": [
        {
          "assembly": "Jump 576",
          "explain": "set program counter to 576"
        }
      ]
    },
    {
      "initialPc": 599,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "7",
      "sourceCode": "def fromList(a) returns bg:",
      "assembly": [
        {
          "assembly": "DelVar v",
          "explain": "delete method variable v"
        }
      ]
    },
    {
      "initialPc": 600,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "7",
      "sourceCode": "def fromList(a) returns bg:",
      "assembly": [
        {
          "assembly": "ReturnOp(bg)",
          "explain": "restore caller method state and push bg"
        }
      ]
    },
    {
      "initialPc": 601,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "7",
      "sourceCode": "def fromList(a) returns bg:",
      "assembly": [
        {
          "assembly": "DelVar bg",
          "explain": "delete method variable bg"
        }
      ]
    },
    {
      "initialPc": 602,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "15",
      "sourceCode": "builtin multiplicity \"bag$multiplicity\"",
      "assembly": [
        {
          "assembly": "Push PC(605)",
          "explain": "push constant PC(605)"
        }
      ]
    },
    {
      "initialPc": 603,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "15",
      "sourceCode": "builtin multiplicity \"bag$multiplicity\"",
      "assembly": [
        {
          "assembly": "Builtin(bag$multiplicity)",
          "explain": "top of stack is a built-in operation called bag$multiplicity"
        }
      ]
    },
    {
      "initialPc": 604,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "16",
      "sourceCode": "def multiplicity(bg, elt) returns count:",
      "assembly": [
        {
          "assembly": "Jump 624",
          "explain": "jump over method definition: set program counter to 624"
        }
      ]
    },
    {
      "initialPc": 605,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "16",
      "sourceCode": "def multiplicity(bg, elt) returns count:",
      "assembly": [
        {
          "assembly": "Frame multiplicity(bg, elt)",
          "explain": "start of method multiplicity"
        }
      ]
    },
    {
      "initialPc": 606,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "17",
      "sourceCode": "    if elt in bg:",
      "assembly": [
        {
          "assembly": "LoadVar elt",
          "explain": "push the value of elt"
        }
      ]
    },
    {
      "initialPc": 607,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "17",
      "sourceCode": "    if elt in bg:",
      "assembly": [
        {
          "assembly": "LoadVar bg",
          "explain": "push the value of bg"
        }
      ]
    },
    {
      "initialPc": 608,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "17",
      "sourceCode": "    if elt in bg:",
      "assembly": [
        {
          "assembly": "2-ary in",
          "explain": "pop 2 values and push the result of applying in"
        }
      ]
    },
    {
      "initialPc": 609,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "17",
      "sourceCode": "    if elt in bg:",
      "assembly": [
        {
          "assembly": "JumpCond False 618",
          "explain": "pop a value and jump to 618 if the value is False"
        }
      ]
    },
    {
      "initialPc": 610,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "18",
      "sourceCode": "        count = bg[elt]",
      "assembly": [
        {
          "assembly": "LoadVar bg",
          "explain": "push the value of bg"
        }
      ]
    },
    {
      "initialPc": 611,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "18",
      "sourceCode": "        count = bg[elt]",
      "assembly": [
        {
          "assembly": "DelVar bg",
          "explain": "delete method variable bg"
        }
      ]
    },
    {
      "initialPc": 612,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "18",
      "sourceCode": "        count = bg[elt]",
      "assembly": [
        {
          "assembly": "LoadVar elt",
          "explain": "push the value of elt"
        }
      ]
    },
    {
      "initialPc": 613,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "18",
      "sourceCode": "        count = bg[elt]",
      "assembly": [
        {
          "assembly": "DelVar elt",
          "explain": "delete method variable elt"
        }
      ]
    },
    {
      "initialPc": 614,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "18",
      "sourceCode": "        count = bg[elt]",
      "assembly": [
        {
          "assembly": "2-ary Closure",
          "explain": "pop 2 values and push the result of applying Closure"
        }
      ]
    },
    {
      "initialPc": 615,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "18",
      "sourceCode": "        count = bg[elt]",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 616,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "18",
      "sourceCode": "        count = bg[elt]",
      "assembly": [
        {
          "assembly": "StoreVar count",
          "explain": "pop a value and store in count"
        }
      ]
    },
    {
      "initialPc": 617,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "17",
      "sourceCode": "    if elt in bg:",
      "assembly": [
        {
          "assembly": "Jump 622",
          "explain": "set program counter to 622"
        }
      ]
    },
    {
      "initialPc": 618,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "20",
      "sourceCode": "        count = 0",
      "assembly": [
        {
          "assembly": "DelVar bg",
          "explain": "delete method variable bg"
        }
      ]
    },
    {
      "initialPc": 619,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "20",
      "sourceCode": "        count = 0",
      "assembly": [
        {
          "assembly": "DelVar elt",
          "explain": "delete method variable elt"
        }
      ]
    },
    {
      "initialPc": 620,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "20",
      "sourceCode": "        count = 0",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 621,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "20",
      "sourceCode": "        count = 0",
      "assembly": [
        {
          "assembly": "StoreVar count",
          "explain": "pop a value and store in count"
        }
      ]
    },
    {
      "initialPc": 622,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "16",
      "sourceCode": "def multiplicity(bg, elt) returns count:",
      "assembly": [
        {
          "assembly": "ReturnOp(count)",
          "explain": "restore caller method state and push count"
        }
      ]
    },
    {
      "initialPc": 623,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "16",
      "sourceCode": "def multiplicity(bg, elt) returns count:",
      "assembly": [
        {
          "assembly": "DelVar count",
          "explain": "delete method variable count"
        }
      ]
    },
    {
      "initialPc": 624,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "22",
      "sourceCode": "builtin size \"bag$size\"",
      "assembly": [
        {
          "assembly": "Push PC(627)",
          "explain": "push constant PC(627)"
        }
      ]
    },
    {
      "initialPc": 625,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "22",
      "sourceCode": "builtin size \"bag$size\"",
      "assembly": [
        {
          "assembly": "Builtin(bag$size)",
          "explain": "top of stack is a built-in operation called bag$size"
        }
      ]
    },
    {
      "initialPc": 626,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "23",
      "sourceCode": "def size(bg) returns count:",
      "assembly": [
        {
          "assembly": "Jump 646",
          "explain": "jump over method definition: set program counter to 646"
        }
      ]
    },
    {
      "initialPc": 627,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "23",
      "sourceCode": "def size(bg) returns count:",
      "assembly": [
        {
          "assembly": "Frame size(bg)",
          "explain": "start of method size"
        }
      ]
    },
    {
      "initialPc": 628,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "24",
      "sourceCode": "    count = 0",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 629,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "24",
      "sourceCode": "    count = 0",
      "assembly": [
        {
          "assembly": "StoreVar count",
          "explain": "pop a value and store in count"
        }
      ]
    },
    {
      "initialPc": 630,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "25",
      "sourceCode": "    for _:c in bg:",
      "assembly": [
        {
          "assembly": "LoadVar bg",
          "explain": "push the value of bg"
        }
      ]
    },
    {
      "initialPc": 631,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "25",
      "sourceCode": "    for _:c in bg:",
      "assembly": [
        {
          "assembly": "DelVar bg",
          "explain": "delete method variable bg"
        }
      ]
    },
    {
      "initialPc": 632,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "25",
      "sourceCode": "    for _:c in bg:",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 633,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "25",
      "sourceCode": "    for _:c in bg:",
      "assembly": [
        {
          "assembly": "Cut(_, c)",
          "explain": "get next element and assign to _:c; push False or True depending on success"
        }
      ]
    },
    {
      "initialPc": 634,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "25",
      "sourceCode": "    for _:c in bg:",
      "assembly": [
        {
          "assembly": "DelVar _",
          "explain": "delete method variable _"
        }
      ]
    },
    {
      "initialPc": 635,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "25",
      "sourceCode": "    for _:c in bg:",
      "assembly": [
        {
          "assembly": "JumpCond False 643",
          "explain": "check if loop is done: pop a value and jump to 643 if the value is False"
        }
      ]
    },
    {
      "initialPc": 636,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "26",
      "sourceCode": "        count += c",
      "assembly": [
        {
          "assembly": "LoadVar count",
          "explain": "push the value of count"
        }
      ]
    },
    {
      "initialPc": 637,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "26",
      "sourceCode": "        count += c",
      "assembly": [
        {
          "assembly": "DelVar count",
          "explain": "delete method variable count"
        }
      ]
    },
    {
      "initialPc": 638,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "26",
      "sourceCode": "        count += c",
      "assembly": [
        {
          "assembly": "LoadVar c",
          "explain": "push the value of c"
        }
      ]
    },
    {
      "initialPc": 639,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "26",
      "sourceCode": "        count += c",
      "assembly": [
        {
          "assembly": "DelVar c",
          "explain": "delete method variable c"
        }
      ]
    },
    {
      "initialPc": 640,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "26",
      "sourceCode": "        count += c",
      "assembly": [
        {
          "assembly": "2-ary +",
          "explain": "pop 2 values and push the result of applying +"
        }
      ]
    },
    {
      "initialPc": 641,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "26",
      "sourceCode": "        count += c",
      "assembly": [
        {
          "assembly": "StoreVar count",
          "explain": "pop a value and store in count"
        }
      ]
    },
    {
      "initialPc": 642,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "25",
      "sourceCode": "    for _:c in bg:",
      "assembly": [
        {
          "assembly": "Jump 633",
          "explain": "set program counter to 633"
        }
      ]
    },
    {
      "initialPc": 643,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "23",
      "sourceCode": "def size(bg) returns count:",
      "assembly": [
        {
          "assembly": "DelVar c",
          "explain": "delete method variable c"
        }
      ]
    },
    {
      "initialPc": 644,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "23",
      "sourceCode": "def size(bg) returns count:",
      "assembly": [
        {
          "assembly": "ReturnOp(count)",
          "explain": "restore caller method state and push count"
        }
      ]
    },
    {
      "initialPc": 645,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "23",
      "sourceCode": "def size(bg) returns count:",
      "assembly": [
        {
          "assembly": "DelVar count",
          "explain": "delete method variable count"
        }
      ]
    },
    {
      "initialPc": 646,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "28",
      "sourceCode": "builtin bmin \"bag$bmin\"",
      "assembly": [
        {
          "assembly": "Push PC(649)",
          "explain": "push constant PC(649)"
        }
      ]
    },
    {
      "initialPc": 647,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "28",
      "sourceCode": "builtin bmin \"bag$bmin\"",
      "assembly": [
        {
          "assembly": "Builtin(bag$bmin)",
          "explain": "top of stack is a built-in operation called bag$bmin"
        }
      ]
    },
    {
      "initialPc": 648,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "29",
      "sourceCode": "def bmin(bg) returns count:",
      "assembly": [
        {
          "assembly": "Jump 665",
          "explain": "jump over method definition: set program counter to 665"
        }
      ]
    },
    {
      "initialPc": 649,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "29",
      "sourceCode": "def bmin(bg) returns count:",
      "assembly": [
        {
          "assembly": "Frame bmin(bg)",
          "explain": "start of method bmin"
        }
      ]
    },
    {
      "initialPc": 650,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "30",
      "sourceCode": "    assert bg != {:}",
      "assembly": [
        {
          "assembly": "AtomicInc(lazy)",
          "explain": "increment atomic counter of context; thread runs uninterrupted if larger than 0"
        }
      ]
    },
    {
      "initialPc": 651,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "30",
      "sourceCode": "    assert bg != {:}",
      "assembly": [
        {
          "assembly": "ReadonlyInc",
          "explain": "increment readonly counter of context; thread cannot mutate shared variables if > 0"
        }
      ]
    },
    {
      "initialPc": 652,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "30",
      "sourceCode": "    assert bg != {:}",
      "assembly": [
        {
          "assembly": "LoadVar bg",
          "explain": "push the value of bg"
        }
      ]
    },
    {
      "initialPc": 653,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "30",
      "sourceCode": "    assert bg != {:}",
      "assembly": [
        {
          "assembly": "Push {:}",
          "explain": "push constant {:}"
        }
      ]
    },
    {
      "initialPc": 654,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "30",
      "sourceCode": "    assert bg != {:}",
      "assembly": [
        {
          "assembly": "2-ary !=",
          "explain": "pop 2 values and push the result of applying !="
        }
      ]
    },
    {
      "initialPc": 655,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "30",
      "sourceCode": "    assert bg != {:}",
      "assembly": [
        {
          "assembly": "Assert",
          "explain": "pop a condition and raise exception if condition is false"
        }
      ]
    },
    {
      "initialPc": 656,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "30",
      "sourceCode": "    assert bg != {:}",
      "assembly": [
        {
          "assembly": "ReadonlyDec",
          "explain": "decrement readonly counter of context"
        }
      ]
    },
    {
      "initialPc": 657,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "30",
      "sourceCode": "    assert bg != {:}",
      "assembly": [
        {
          "assembly": "AtomicDec",
          "explain": "decrement atomic counter of context"
        }
      ]
    },
    {
      "initialPc": 658,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "31",
      "sourceCode": "    count = min(keys(bg))",
      "assembly": [
        {
          "assembly": "LoadVar bg",
          "explain": "push the value of bg"
        }
      ]
    },
    {
      "initialPc": 659,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "31",
      "sourceCode": "    count = min(keys(bg))",
      "assembly": [
        {
          "assembly": "DelVar bg",
          "explain": "delete method variable bg"
        }
      ]
    },
    {
      "initialPc": 660,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "31",
      "sourceCode": "    count = min(keys(bg))",
      "assembly": [
        {
          "assembly": "1-ary keys",
          "explain": "pop 1 value and push the result of applying keys"
        }
      ]
    },
    {
      "initialPc": 661,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "31",
      "sourceCode": "    count = min(keys(bg))",
      "assembly": [
        {
          "assembly": "1-ary min",
          "explain": "pop 1 value and push the result of applying min"
        }
      ]
    },
    {
      "initialPc": 662,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "31",
      "sourceCode": "    count = min(keys(bg))",
      "assembly": [
        {
          "assembly": "StoreVar count",
          "explain": "pop a value and store in count"
        }
      ]
    },
    {
      "initialPc": 663,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "29",
      "sourceCode": "def bmin(bg) returns count:",
      "assembly": [
        {
          "assembly": "ReturnOp(count)",
          "explain": "restore caller method state and push count"
        }
      ]
    },
    {
      "initialPc": 664,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "29",
      "sourceCode": "def bmin(bg) returns count:",
      "assembly": [
        {
          "assembly": "DelVar count",
          "explain": "delete method variable count"
        }
      ]
    },
    {
      "initialPc": 665,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "33",
      "sourceCode": "builtin bmax \"bag$bmax\"",
      "assembly": [
        {
          "assembly": "Push PC(668)",
          "explain": "push constant PC(668)"
        }
      ]
    },
    {
      "initialPc": 666,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "33",
      "sourceCode": "builtin bmax \"bag$bmax\"",
      "assembly": [
        {
          "assembly": "Builtin(bag$bmax)",
          "explain": "top of stack is a built-in operation called bag$bmax"
        }
      ]
    },
    {
      "initialPc": 667,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "34",
      "sourceCode": "def bmax(bg) returns count:",
      "assembly": [
        {
          "assembly": "Jump 693",
          "explain": "jump over method definition: set program counter to 693"
        }
      ]
    },
    {
      "initialPc": 668,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "34",
      "sourceCode": "def bmax(bg) returns count:",
      "assembly": [
        {
          "assembly": "Frame bmax(bg)",
          "explain": "start of method bmax"
        }
      ]
    },
    {
      "initialPc": 669,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "35",
      "sourceCode": "    assert bg != {:}",
      "assembly": [
        {
          "assembly": "AtomicInc(lazy)",
          "explain": "increment atomic counter of context; thread runs uninterrupted if larger than 0"
        }
      ]
    },
    {
      "initialPc": 670,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "35",
      "sourceCode": "    assert bg != {:}",
      "assembly": [
        {
          "assembly": "ReadonlyInc",
          "explain": "increment readonly counter of context; thread cannot mutate shared variables if > 0"
        }
      ]
    },
    {
      "initialPc": 671,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "35",
      "sourceCode": "    assert bg != {:}",
      "assembly": [
        {
          "assembly": "LoadVar bg",
          "explain": "push the value of bg"
        }
      ]
    },
    {
      "initialPc": 672,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "35",
      "sourceCode": "    assert bg != {:}",
      "assembly": [
        {
          "assembly": "Push {:}",
          "explain": "push constant {:}"
        }
      ]
    },
    {
      "initialPc": 673,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "35",
      "sourceCode": "    assert bg != {:}",
      "assembly": [
        {
          "assembly": "2-ary !=",
          "explain": "pop 2 values and push the result of applying !="
        }
      ]
    },
    {
      "initialPc": 674,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "35",
      "sourceCode": "    assert bg != {:}",
      "assembly": [
        {
          "assembly": "Assert",
          "explain": "pop a condition and raise exception if condition is false"
        }
      ]
    },
    {
      "initialPc": 675,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "35",
      "sourceCode": "    assert bg != {:}",
      "assembly": [
        {
          "assembly": "ReadonlyDec",
          "explain": "decrement readonly counter of context"
        }
      ]
    },
    {
      "initialPc": 676,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "35",
      "sourceCode": "    assert bg != {:}",
      "assembly": [
        {
          "assembly": "AtomicDec",
          "explain": "decrement atomic counter of context"
        }
      ]
    },
    {
      "initialPc": 677,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "36",
      "sourceCode": "    count = max(keys(bg))",
      "assembly": [
        {
          "assembly": "LoadVar bg",
          "explain": "push the value of bg"
        }
      ]
    },
    {
      "initialPc": 678,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "36",
      "sourceCode": "    count = max(keys(bg))",
      "assembly": [
        {
          "assembly": "DelVar bg",
          "explain": "delete method variable bg"
        }
      ]
    },
    {
      "initialPc": 679,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "36",
      "sourceCode": "    count = max(keys(bg))",
      "assembly": [
        {
          "assembly": "1-ary keys",
          "explain": "pop 1 value and push the result of applying keys"
        }
      ]
    },
    {
      "initialPc": 680,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "36",
      "sourceCode": "    count = max(keys(bg))",
      "assembly": [
        {
          "assembly": "1-ary max",
          "explain": "pop 1 value and push the result of applying max"
        }
      ]
    },
    {
      "initialPc": 681,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "36",
      "sourceCode": "    count = max(keys(bg))",
      "assembly": [
        {
          "assembly": "StoreVar count",
          "explain": "pop a value and store in count"
        }
      ]
    },
    {
      "initialPc": 682,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "34",
      "sourceCode": "def bmax(bg) returns count:",
      "assembly": [
        {
          "assembly": "ReturnOp(count)",
          "explain": "restore caller method state and push count"
        }
      ]
    },
    {
      "initialPc": 683,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "34",
      "sourceCode": "def bmax(bg) returns count:",
      "assembly": [
        {
          "assembly": "DelVar count",
          "explain": "delete method variable count"
        }
      ]
    },
    {
      "initialPc": 684,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "38",
      "sourceCode": "def bchoose(bg) returns elt:",
      "assembly": [
        {
          "assembly": "Jump 693",
          "explain": "jump over method definition: set program counter to 693"
        }
      ]
    },
    {
      "initialPc": 685,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "38",
      "sourceCode": "def bchoose(bg) returns elt:",
      "assembly": [
        {
          "assembly": "Frame bchoose(bg)",
          "explain": "start of method bchoose"
        }
      ]
    },
    {
      "initialPc": 686,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "39",
      "sourceCode": "    elt = choose(keys(bg))",
      "assembly": [
        {
          "assembly": "LoadVar bg",
          "explain": "push the value of bg"
        }
      ]
    },
    {
      "initialPc": 687,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "39",
      "sourceCode": "    elt = choose(keys(bg))",
      "assembly": [
        {
          "assembly": "DelVar bg",
          "explain": "delete method variable bg"
        }
      ]
    },
    {
      "initialPc": 688,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "39",
      "sourceCode": "    elt = choose(keys(bg))",
      "assembly": [
        {
          "assembly": "1-ary keys",
          "explain": "pop 1 value and push the result of applying keys"
        }
      ]
    },
    {
      "initialPc": 689,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "39",
      "sourceCode": "    elt = choose(keys(bg))",
      "assembly": [
        {
          "assembly": "Choose",
          "explain": "pop a set value and push one of its elements"
        }
      ]
    },
    {
      "initialPc": 690,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "39",
      "sourceCode": "    elt = choose(keys(bg))",
      "assembly": [
        {
          "assembly": "StoreVar elt",
          "explain": "pop a value and store in elt"
        }
      ]
    },
    {
      "initialPc": 691,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "38",
      "sourceCode": "def bchoose(bg) returns elt:",
      "assembly": [
        {
          "assembly": "ReturnOp(elt)",
          "explain": "restore caller method state and push elt"
        }
      ]
    },
    {
      "initialPc": 692,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "38",
      "sourceCode": "def bchoose(bg) returns elt:",
      "assembly": [
        {
          "assembly": "DelVar elt",
          "explain": "delete method variable elt"
        }
      ]
    },
    {
      "initialPc": 693,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "41",
      "sourceCode": "builtin add \"bag$add\"",
      "assembly": [
        {
          "assembly": "Push PC(696)",
          "explain": "push constant PC(696)"
        }
      ]
    },
    {
      "initialPc": 694,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "41",
      "sourceCode": "builtin add \"bag$add\"",
      "assembly": [
        {
          "assembly": "Builtin(bag$add)",
          "explain": "top of stack is a built-in operation called bag$add"
        }
      ]
    },
    {
      "initialPc": 695,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "42",
      "sourceCode": "def add(bg, elt) returns result:",
      "assembly": [
        {
          "assembly": "Jump 722",
          "explain": "jump over method definition: set program counter to 722"
        }
      ]
    },
    {
      "initialPc": 696,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "42",
      "sourceCode": "def add(bg, elt) returns result:",
      "assembly": [
        {
          "assembly": "Frame add(bg, elt)",
          "explain": "start of method add"
        }
      ]
    },
    {
      "initialPc": 697,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "43",
      "sourceCode": "    result = bg",
      "assembly": [
        {
          "assembly": "DelVar result",
          "explain": "delete method variable result"
        }
      ]
    },
    {
      "initialPc": 698,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "43",
      "sourceCode": "    result = bg",
      "assembly": [
        {
          "assembly": "LoadVar bg",
          "explain": "push the value of bg"
        }
      ]
    },
    {
      "initialPc": 699,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "43",
      "sourceCode": "    result = bg",
      "assembly": [
        {
          "assembly": "DelVar bg",
          "explain": "delete method variable bg"
        }
      ]
    },
    {
      "initialPc": 700,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "43",
      "sourceCode": "    result = bg",
      "assembly": [
        {
          "assembly": "StoreVar result",
          "explain": "pop a value and store in result"
        }
      ]
    },
    {
      "initialPc": 701,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "44",
      "sourceCode": "    if elt in result:",
      "assembly": [
        {
          "assembly": "LoadVar elt",
          "explain": "push the value of elt"
        }
      ]
    },
    {
      "initialPc": 702,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "44",
      "sourceCode": "    if elt in result:",
      "assembly": [
        {
          "assembly": "LoadVar result",
          "explain": "push the value of result"
        }
      ]
    },
    {
      "initialPc": 703,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "44",
      "sourceCode": "    if elt in result:",
      "assembly": [
        {
          "assembly": "2-ary in",
          "explain": "pop 2 values and push the result of applying in"
        }
      ]
    },
    {
      "initialPc": 704,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "44",
      "sourceCode": "    if elt in result:",
      "assembly": [
        {
          "assembly": "JumpCond False 715",
          "explain": "pop a value and jump to 715 if the value is False"
        }
      ]
    },
    {
      "initialPc": 705,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "45",
      "sourceCode": "        result[elt] += 1",
      "assembly": [
        {
          "assembly": "Push ?result",
          "explain": "push constant ?result"
        }
      ]
    },
    {
      "initialPc": 706,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "45",
      "sourceCode": "        result[elt] += 1",
      "assembly": [
        {
          "assembly": "LoadVar elt",
          "explain": "push the value of elt"
        }
      ]
    },
    {
      "initialPc": 707,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "45",
      "sourceCode": "        result[elt] += 1",
      "assembly": [
        {
          "assembly": "DelVar elt",
          "explain": "delete method variable elt"
        }
      ]
    },
    {
      "initialPc": 708,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "45",
      "sourceCode": "        result[elt] += 1",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 709,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "45",
      "sourceCode": "        result[elt] += 1",
      "assembly": [
        {
          "assembly": "Dup",
          "explain": "push a copy of the top value on the stack"
        }
      ]
    },
    {
      "initialPc": 710,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "45",
      "sourceCode": "        result[elt] += 1",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 711,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "45",
      "sourceCode": "        result[elt] += 1",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 712,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "45",
      "sourceCode": "        result[elt] += 1",
      "assembly": [
        {
          "assembly": "2-ary +",
          "explain": "pop 2 values and push the result of applying +"
        }
      ]
    },
    {
      "initialPc": 713,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "45",
      "sourceCode": "        result[elt] += 1",
      "assembly": [
        {
          "assembly": "StoreVar [result]",
          "explain": "pop a value and the address of a method variable and store the value at that address"
        }
      ]
    },
    {
      "initialPc": 714,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "44",
      "sourceCode": "    if elt in result:",
      "assembly": [
        {
          "assembly": "Jump 721",
          "explain": "set program counter to 721"
        }
      ]
    },
    {
      "initialPc": 715,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "47",
      "sourceCode": "        result[elt] = 1",
      "assembly": [
        {
          "assembly": "Push ?result",
          "explain": "push constant ?result"
        }
      ]
    },
    {
      "initialPc": 716,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "47",
      "sourceCode": "        result[elt] = 1",
      "assembly": [
        {
          "assembly": "LoadVar elt",
          "explain": "push the value of elt"
        }
      ]
    },
    {
      "initialPc": 717,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "47",
      "sourceCode": "        result[elt] = 1",
      "assembly": [
        {
          "assembly": "DelVar elt",
          "explain": "delete method variable elt"
        }
      ]
    },
    {
      "initialPc": 718,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "47",
      "sourceCode": "        result[elt] = 1",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 719,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "47",
      "sourceCode": "        result[elt] = 1",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 720,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "47",
      "sourceCode": "        result[elt] = 1",
      "assembly": [
        {
          "assembly": "StoreVar [result]",
          "explain": "pop a value and the address of a method variable and store the value at that address"
        }
      ]
    },
    {
      "initialPc": 721,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "42",
      "sourceCode": "def add(bg, elt) returns result:",
      "assembly": [
        {
          "assembly": "ReturnOp(result)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 722,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "49",
      "sourceCode": "builtin remove \"bag$remove\"",
      "assembly": [
        {
          "assembly": "Push PC(725)",
          "explain": "push constant PC(725)"
        }
      ]
    },
    {
      "initialPc": 723,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "49",
      "sourceCode": "builtin remove \"bag$remove\"",
      "assembly": [
        {
          "assembly": "Builtin(bag$remove)",
          "explain": "top of stack is a built-in operation called bag$remove"
        }
      ]
    },
    {
      "initialPc": 724,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "50",
      "sourceCode": "def remove(bg, elt) returns result:",
      "assembly": [
        {
          "assembly": "Jump 1205",
          "explain": "jump over method definition: set program counter to 1205"
        }
      ]
    },
    {
      "initialPc": 725,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "50",
      "sourceCode": "def remove(bg, elt) returns result:",
      "assembly": [
        {
          "assembly": "Frame remove(bg, elt)",
          "explain": "start of method remove"
        }
      ]
    },
    {
      "initialPc": 726,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "51",
      "sourceCode": "    result = bg",
      "assembly": [
        {
          "assembly": "DelVar result",
          "explain": "delete method variable result"
        }
      ]
    },
    {
      "initialPc": 727,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "51",
      "sourceCode": "    result = bg",
      "assembly": [
        {
          "assembly": "LoadVar bg",
          "explain": "push the value of bg"
        }
      ]
    },
    {
      "initialPc": 728,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "51",
      "sourceCode": "    result = bg",
      "assembly": [
        {
          "assembly": "DelVar bg",
          "explain": "delete method variable bg"
        }
      ]
    },
    {
      "initialPc": 729,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "51",
      "sourceCode": "    result = bg",
      "assembly": [
        {
          "assembly": "StoreVar result",
          "explain": "pop a value and store in result"
        }
      ]
    },
    {
      "initialPc": 730,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "52",
      "sourceCode": "    if elt in result:",
      "assembly": [
        {
          "assembly": "LoadVar elt",
          "explain": "push the value of elt"
        }
      ]
    },
    {
      "initialPc": 731,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "52",
      "sourceCode": "    if elt in result:",
      "assembly": [
        {
          "assembly": "LoadVar result",
          "explain": "push the value of result"
        }
      ]
    },
    {
      "initialPc": 732,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "52",
      "sourceCode": "    if elt in result:",
      "assembly": [
        {
          "assembly": "2-ary in",
          "explain": "pop 2 values and push the result of applying in"
        }
      ]
    },
    {
      "initialPc": 733,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "52",
      "sourceCode": "    if elt in result:",
      "assembly": [
        {
          "assembly": "JumpCond False 765",
          "explain": "pop a value and jump to 765 if the value is False"
        }
      ]
    },
    {
      "initialPc": 734,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "53",
      "sourceCode": "        assert result[elt] > 0",
      "assembly": [
        {
          "assembly": "AtomicInc(lazy)",
          "explain": "increment atomic counter of context; thread runs uninterrupted if larger than 0"
        }
      ]
    },
    {
      "initialPc": 735,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "53",
      "sourceCode": "        assert result[elt] > 0",
      "assembly": [
        {
          "assembly": "ReadonlyInc",
          "explain": "increment readonly counter of context; thread cannot mutate shared variables if > 0"
        }
      ]
    },
    {
      "initialPc": 736,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "53",
      "sourceCode": "        assert result[elt] > 0",
      "assembly": [
        {
          "assembly": "LoadVar result",
          "explain": "push the value of result"
        }
      ]
    },
    {
      "initialPc": 737,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "53",
      "sourceCode": "        assert result[elt] > 0",
      "assembly": [
        {
          "assembly": "LoadVar elt",
          "explain": "push the value of elt"
        }
      ]
    },
    {
      "initialPc": 738,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "53",
      "sourceCode": "        assert result[elt] > 0",
      "assembly": [
        {
          "assembly": "2-ary Closure",
          "explain": "pop 2 values and push the result of applying Closure"
        }
      ]
    },
    {
      "initialPc": 739,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "53",
      "sourceCode": "        assert result[elt] > 0",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 740,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "53",
      "sourceCode": "        assert result[elt] > 0",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 741,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "53",
      "sourceCode": "        assert result[elt] > 0",
      "assembly": [
        {
          "assembly": "2-ary >",
          "explain": "pop 2 values and push the result of applying >"
        }
      ]
    },
    {
      "initialPc": 742,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "53",
      "sourceCode": "        assert result[elt] > 0",
      "assembly": [
        {
          "assembly": "Assert",
          "explain": "pop a condition and raise exception if condition is false"
        }
      ]
    },
    {
      "initialPc": 743,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "53",
      "sourceCode": "        assert result[elt] > 0",
      "assembly": [
        {
          "assembly": "ReadonlyDec",
          "explain": "decrement readonly counter of context"
        }
      ]
    },
    {
      "initialPc": 744,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "53",
      "sourceCode": "        assert result[elt] > 0",
      "assembly": [
        {
          "assembly": "AtomicDec",
          "explain": "decrement atomic counter of context"
        }
      ]
    },
    {
      "initialPc": 745,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "54",
      "sourceCode": "        result[elt] -= 1",
      "assembly": [
        {
          "assembly": "Push ?result",
          "explain": "push constant ?result"
        }
      ]
    },
    {
      "initialPc": 746,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "54",
      "sourceCode": "        result[elt] -= 1",
      "assembly": [
        {
          "assembly": "LoadVar elt",
          "explain": "push the value of elt"
        }
      ]
    },
    {
      "initialPc": 747,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "54",
      "sourceCode": "        result[elt] -= 1",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 748,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "54",
      "sourceCode": "        result[elt] -= 1",
      "assembly": [
        {
          "assembly": "Dup",
          "explain": "push a copy of the top value on the stack"
        }
      ]
    },
    {
      "initialPc": 749,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "54",
      "sourceCode": "        result[elt] -= 1",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 750,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "54",
      "sourceCode": "        result[elt] -= 1",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 751,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "54",
      "sourceCode": "        result[elt] -= 1",
      "assembly": [
        {
          "assembly": "2-ary -",
          "explain": "pop 2 values and push the result of applying -"
        }
      ]
    },
    {
      "initialPc": 752,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "54",
      "sourceCode": "        result[elt] -= 1",
      "assembly": [
        {
          "assembly": "StoreVar [result]",
          "explain": "pop a value and the address of a method variable and store the value at that address"
        }
      ]
    },
    {
      "initialPc": 753,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "55",
      "sourceCode": "        if result[elt] == 0:",
      "assembly": [
        {
          "assembly": "LoadVar result",
          "explain": "push the value of result"
        }
      ]
    },
    {
      "initialPc": 754,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "55",
      "sourceCode": "        if result[elt] == 0:",
      "assembly": [
        {
          "assembly": "LoadVar elt",
          "explain": "push the value of elt"
        }
      ]
    },
    {
      "initialPc": 755,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "55",
      "sourceCode": "        if result[elt] == 0:",
      "assembly": [
        {
          "assembly": "2-ary Closure",
          "explain": "pop 2 values and push the result of applying Closure"
        }
      ]
    },
    {
      "initialPc": 756,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "55",
      "sourceCode": "        if result[elt] == 0:",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 757,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "55",
      "sourceCode": "        if result[elt] == 0:",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 758,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "55",
      "sourceCode": "        if result[elt] == 0:",
      "assembly": [
        {
          "assembly": "2-ary ==",
          "explain": "pop 2 values and push the result of applying =="
        }
      ]
    },
    {
      "initialPc": 759,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "55",
      "sourceCode": "        if result[elt] == 0:",
      "assembly": [
        {
          "assembly": "JumpCond False 765",
          "explain": "pop a value and jump to 765 if the value is False"
        }
      ]
    },
    {
      "initialPc": 760,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "56",
      "sourceCode": "            del result[elt]",
      "assembly": [
        {
          "assembly": "Push ?result",
          "explain": "push constant ?result"
        }
      ]
    },
    {
      "initialPc": 761,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "56",
      "sourceCode": "            del result[elt]",
      "assembly": [
        {
          "assembly": "LoadVar elt",
          "explain": "push the value of elt"
        }
      ]
    },
    {
      "initialPc": 762,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "56",
      "sourceCode": "            del result[elt]",
      "assembly": [
        {
          "assembly": "DelVar elt",
          "explain": "delete method variable elt"
        }
      ]
    },
    {
      "initialPc": 763,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "56",
      "sourceCode": "            del result[elt]",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 764,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "56",
      "sourceCode": "            del result[elt]",
      "assembly": [
        {
          "assembly": "DelVar [result]",
          "explain": "pop an address of a method variable and delete that variable"
        }
      ]
    },
    {
      "initialPc": 765,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "50",
      "sourceCode": "def remove(bg, elt) returns result:",
      "assembly": [
        {
          "assembly": "DelVar elt",
          "explain": "delete method variable elt"
        }
      ]
    },
    {
      "initialPc": 766,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "50",
      "sourceCode": "def remove(bg, elt) returns result:",
      "assembly": [
        {
          "assembly": "ReturnOp(result)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 767,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "59",
      "sourceCode": "def combinations(bg, k) returns result:",
      "assembly": [
        {
          "assembly": "Jump 1205",
          "explain": "jump over method definition: set program counter to 1205"
        }
      ]
    },
    {
      "initialPc": 768,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "59",
      "sourceCode": "def combinations(bg, k) returns result:",
      "assembly": [
        {
          "assembly": "Frame combinations(bg, k)",
          "explain": "start of method combinations"
        }
      ]
    },
    {
      "initialPc": 769,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "60",
      "sourceCode": "    if k == 0:",
      "assembly": [
        {
          "assembly": "DelVar result",
          "explain": "delete method variable result"
        }
      ]
    },
    {
      "initialPc": 770,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "60",
      "sourceCode": "    if k == 0:",
      "assembly": [
        {
          "assembly": "LoadVar k",
          "explain": "push the value of k"
        }
      ]
    },
    {
      "initialPc": 771,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "60",
      "sourceCode": "    if k == 0:",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 772,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "60",
      "sourceCode": "    if k == 0:",
      "assembly": [
        {
          "assembly": "2-ary ==",
          "explain": "pop 2 values and push the result of applying =="
        }
      ]
    },
    {
      "initialPc": 773,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "60",
      "sourceCode": "    if k == 0:",
      "assembly": [
        {
          "assembly": "JumpCond False 781",
          "explain": "pop a value and jump to 781 if the value is False"
        }
      ]
    },
    {
      "initialPc": 774,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "61",
      "sourceCode": "        result = { {:} }",
      "assembly": [
        {
          "assembly": "DelVar bg",
          "explain": "delete method variable bg"
        }
      ]
    },
    {
      "initialPc": 775,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "61",
      "sourceCode": "        result = { {:} }",
      "assembly": [
        {
          "assembly": "DelVar k",
          "explain": "delete method variable k"
        }
      ]
    },
    {
      "initialPc": 776,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "61",
      "sourceCode": "        result = { {:} }",
      "assembly": [
        {
          "assembly": "Push {}",
          "explain": "push constant {}"
        }
      ]
    },
    {
      "initialPc": 777,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "61",
      "sourceCode": "        result = { {:} }",
      "assembly": [
        {
          "assembly": "Push {:}",
          "explain": "push constant {:}"
        }
      ]
    },
    {
      "initialPc": 778,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "61",
      "sourceCode": "        result = { {:} }",
      "assembly": [
        {
          "assembly": "2-ary SetAdd",
          "explain": "pop 2 values and push the result of applying SetAdd"
        }
      ]
    },
    {
      "initialPc": 779,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "61",
      "sourceCode": "        result = { {:} }",
      "assembly": [
        {
          "assembly": "StoreVar result",
          "explain": "pop a value and store in result"
        }
      ]
    },
    {
      "initialPc": 780,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "60",
      "sourceCode": "    if k == 0:",
      "assembly": [
        {
          "assembly": "Jump 856",
          "explain": "set program counter to 856"
        }
      ]
    },
    {
      "initialPc": 781,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "63",
      "sourceCode": "        let n = size(bg):",
      "assembly": [
        {
          "assembly": "LoadVar bg",
          "explain": "push the value of bg"
        }
      ]
    },
    {
      "initialPc": 782,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "63",
      "sourceCode": "        let n = size(bg):",
      "assembly": [
        {
          "assembly": "Apply PC(627)",
          "explain": "call method PC(627)"
        }
      ]
    },
    {
      "initialPc": 783,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "63",
      "sourceCode": "        let n = size(bg):",
      "assembly": [
        {
          "assembly": "StoreVar n",
          "explain": "pop a value and store in n"
        }
      ]
    },
    {
      "initialPc": 784,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "64",
      "sourceCode": "            if k > n:",
      "assembly": [
        {
          "assembly": "LoadVar k",
          "explain": "push the value of k"
        }
      ]
    },
    {
      "initialPc": 785,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "64",
      "sourceCode": "            if k > n:",
      "assembly": [
        {
          "assembly": "LoadVar n",
          "explain": "push the value of n"
        }
      ]
    },
    {
      "initialPc": 786,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "64",
      "sourceCode": "            if k > n:",
      "assembly": [
        {
          "assembly": "2-ary >",
          "explain": "pop 2 values and push the result of applying >"
        }
      ]
    },
    {
      "initialPc": 787,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "64",
      "sourceCode": "            if k > n:",
      "assembly": [
        {
          "assembly": "JumpCond False 794",
          "explain": "pop a value and jump to 794 if the value is False"
        }
      ]
    },
    {
      "initialPc": 788,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "65",
      "sourceCode": "                result = {}",
      "assembly": [
        {
          "assembly": "DelVar bg",
          "explain": "delete method variable bg"
        }
      ]
    },
    {
      "initialPc": 789,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "65",
      "sourceCode": "                result = {}",
      "assembly": [
        {
          "assembly": "DelVar k",
          "explain": "delete method variable k"
        }
      ]
    },
    {
      "initialPc": 790,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "65",
      "sourceCode": "                result = {}",
      "assembly": [
        {
          "assembly": "DelVar n",
          "explain": "delete method variable n"
        }
      ]
    },
    {
      "initialPc": 791,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "65",
      "sourceCode": "                result = {}",
      "assembly": [
        {
          "assembly": "Push {}",
          "explain": "push constant {}"
        }
      ]
    },
    {
      "initialPc": 792,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "65",
      "sourceCode": "                result = {}",
      "assembly": [
        {
          "assembly": "StoreVar result",
          "explain": "pop a value and store in result"
        }
      ]
    },
    {
      "initialPc": 793,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "64",
      "sourceCode": "            if k > n:",
      "assembly": [
        {
          "assembly": "Jump 856",
          "explain": "set program counter to 856"
        }
      ]
    },
    {
      "initialPc": 794,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "66",
      "sourceCode": "            elif k == n:",
      "assembly": [
        {
          "assembly": "LoadVar k",
          "explain": "push the value of k"
        }
      ]
    },
    {
      "initialPc": 795,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "66",
      "sourceCode": "            elif k == n:",
      "assembly": [
        {
          "assembly": "LoadVar n",
          "explain": "push the value of n"
        }
      ]
    },
    {
      "initialPc": 796,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "66",
      "sourceCode": "            elif k == n:",
      "assembly": [
        {
          "assembly": "DelVar n",
          "explain": "delete method variable n"
        }
      ]
    },
    {
      "initialPc": 797,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "66",
      "sourceCode": "            elif k == n:",
      "assembly": [
        {
          "assembly": "2-ary ==",
          "explain": "pop 2 values and push the result of applying =="
        }
      ]
    },
    {
      "initialPc": 798,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "66",
      "sourceCode": "            elif k == n:",
      "assembly": [
        {
          "assembly": "JumpCond False 806",
          "explain": "pop a value and jump to 806 if the value is False"
        }
      ]
    },
    {
      "initialPc": 799,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "67",
      "sourceCode": "                result = { bg }",
      "assembly": [
        {
          "assembly": "DelVar k",
          "explain": "delete method variable k"
        }
      ]
    },
    {
      "initialPc": 800,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "67",
      "sourceCode": "                result = { bg }",
      "assembly": [
        {
          "assembly": "Push {}",
          "explain": "push constant {}"
        }
      ]
    },
    {
      "initialPc": 801,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "67",
      "sourceCode": "                result = { bg }",
      "assembly": [
        {
          "assembly": "LoadVar bg",
          "explain": "push the value of bg"
        }
      ]
    },
    {
      "initialPc": 802,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "67",
      "sourceCode": "                result = { bg }",
      "assembly": [
        {
          "assembly": "DelVar bg",
          "explain": "delete method variable bg"
        }
      ]
    },
    {
      "initialPc": 803,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "67",
      "sourceCode": "                result = { bg }",
      "assembly": [
        {
          "assembly": "2-ary SetAdd",
          "explain": "pop 2 values and push the result of applying SetAdd"
        }
      ]
    },
    {
      "initialPc": 804,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "67",
      "sourceCode": "                result = { bg }",
      "assembly": [
        {
          "assembly": "StoreVar result",
          "explain": "pop a value and store in result"
        }
      ]
    },
    {
      "initialPc": 805,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "66",
      "sourceCode": "            elif k == n:",
      "assembly": [
        {
          "assembly": "Jump 856",
          "explain": "set program counter to 856"
        }
      ]
    },
    {
      "initialPc": 806,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "69",
      "sourceCode": "                let hd = bmin(bg) let tl = remove(bg, hd):",
      "assembly": [
        {
          "assembly": "LoadVar bg",
          "explain": "push the value of bg"
        }
      ]
    },
    {
      "initialPc": 807,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "69",
      "sourceCode": "                let hd = bmin(bg) let tl = remove(bg, hd):",
      "assembly": [
        {
          "assembly": "Apply PC(649)",
          "explain": "call method PC(649)"
        }
      ]
    },
    {
      "initialPc": 808,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "69",
      "sourceCode": "                let hd = bmin(bg) let tl = remove(bg, hd):",
      "assembly": [
        {
          "assembly": "StoreVar hd",
          "explain": "pop a value and store in hd"
        }
      ]
    },
    {
      "initialPc": 809,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "69",
      "sourceCode": "                let hd = bmin(bg) let tl = remove(bg, hd):",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "building a tuple: push constant ()"
        }
      ]
    },
    {
      "initialPc": 810,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "69",
      "sourceCode": "                let hd = bmin(bg) let tl = remove(bg, hd):",
      "assembly": [
        {
          "assembly": "LoadVar bg",
          "explain": "push the value of bg"
        }
      ]
    },
    {
      "initialPc": 811,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "69",
      "sourceCode": "                let hd = bmin(bg) let tl = remove(bg, hd):",
      "assembly": [
        {
          "assembly": "DelVar bg",
          "explain": "delete method variable bg"
        }
      ]
    },
    {
      "initialPc": 812,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "69",
      "sourceCode": "                let hd = bmin(bg) let tl = remove(bg, hd):",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 813,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "69",
      "sourceCode": "                let hd = bmin(bg) let tl = remove(bg, hd):",
      "assembly": [
        {
          "assembly": "LoadVar hd",
          "explain": "push the value of hd"
        }
      ]
    },
    {
      "initialPc": 814,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "69",
      "sourceCode": "                let hd = bmin(bg) let tl = remove(bg, hd):",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 815,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "69",
      "sourceCode": "                let hd = bmin(bg) let tl = remove(bg, hd):",
      "assembly": [
        {
          "assembly": "Apply PC(725)",
          "explain": "call method PC(725)"
        }
      ]
    },
    {
      "initialPc": 816,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "69",
      "sourceCode": "                let hd = bmin(bg) let tl = remove(bg, hd):",
      "assembly": [
        {
          "assembly": "StoreVar tl",
          "explain": "pop a value and store in tl"
        }
      ]
    },
    {
      "initialPc": 817,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "70",
      "sourceCode": "                    result = { add(x, hd) for x in combinations(tl, k - 1) }",
      "assembly": [
        {
          "assembly": "Push {}",
          "explain": "initialize accumulator for set comprehension: push constant {}"
        }
      ]
    },
    {
      "initialPc": 818,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "70",
      "sourceCode": "                    result = { add(x, hd) for x in combinations(tl, k - 1) }",
      "assembly": [
        {
          "assembly": "StoreVar $accu645",
          "explain": "initialize accumulator for set comprehension: pop a value and store in $accu645"
        }
      ]
    },
    {
      "initialPc": 819,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "70",
      "sourceCode": "                    result = { add(x, hd) for x in combinations(tl, k - 1) }",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "building a tuple: push constant ()"
        }
      ]
    },
    {
      "initialPc": 820,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "70",
      "sourceCode": "                    result = { add(x, hd) for x in combinations(tl, k - 1) }",
      "assembly": [
        {
          "assembly": "LoadVar tl",
          "explain": "push the value of tl"
        }
      ]
    },
    {
      "initialPc": 821,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "70",
      "sourceCode": "                    result = { add(x, hd) for x in combinations(tl, k - 1) }",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 822,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "70",
      "sourceCode": "                    result = { add(x, hd) for x in combinations(tl, k - 1) }",
      "assembly": [
        {
          "assembly": "LoadVar k",
          "explain": "push the value of k"
        }
      ]
    },
    {
      "initialPc": 823,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "70",
      "sourceCode": "                    result = { add(x, hd) for x in combinations(tl, k - 1) }",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 824,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "70",
      "sourceCode": "                    result = { add(x, hd) for x in combinations(tl, k - 1) }",
      "assembly": [
        {
          "assembly": "2-ary -",
          "explain": "pop 2 values and push the result of applying -"
        }
      ]
    },
    {
      "initialPc": 825,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "70",
      "sourceCode": "                    result = { add(x, hd) for x in combinations(tl, k - 1) }",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 826,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "70",
      "sourceCode": "                    result = { add(x, hd) for x in combinations(tl, k - 1) }",
      "assembly": [
        {
          "assembly": "Apply PC(768)",
          "explain": "call method PC(768)"
        }
      ]
    },
    {
      "initialPc": 827,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "70",
      "sourceCode": "                    result = { add(x, hd) for x in combinations(tl, k - 1) }",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 828,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "70",
      "sourceCode": "                    result = { add(x, hd) for x in combinations(tl, k - 1) }",
      "assembly": [
        {
          "assembly": "Cut(x)",
          "explain": "get next element and assign to x; push False or True depending on success"
        }
      ]
    },
    {
      "initialPc": 829,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "70",
      "sourceCode": "                    result = { add(x, hd) for x in combinations(tl, k - 1) }",
      "assembly": [
        {
          "assembly": "JumpCond False 842",
          "explain": "check if loop is done: pop a value and jump to 842 if the value is False"
        }
      ]
    },
    {
      "initialPc": 830,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "70",
      "sourceCode": "                    result = { add(x, hd) for x in combinations(tl, k - 1) }",
      "assembly": [
        {
          "assembly": "LoadVar $accu645",
          "explain": "load accumulator: push the value of $accu645"
        }
      ]
    },
    {
      "initialPc": 831,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "70",
      "sourceCode": "                    result = { add(x, hd) for x in combinations(tl, k - 1) }",
      "assembly": [
        {
          "assembly": "DelVar $accu645",
          "explain": "delete method variable $accu645"
        }
      ]
    },
    {
      "initialPc": 832,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "70",
      "sourceCode": "                    result = { add(x, hd) for x in combinations(tl, k - 1) }",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "building a tuple: push constant ()"
        }
      ]
    },
    {
      "initialPc": 833,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "70",
      "sourceCode": "                    result = { add(x, hd) for x in combinations(tl, k - 1) }",
      "assembly": [
        {
          "assembly": "LoadVar x",
          "explain": "push the value of x"
        }
      ]
    },
    {
      "initialPc": 834,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "70",
      "sourceCode": "                    result = { add(x, hd) for x in combinations(tl, k - 1) }",
      "assembly": [
        {
          "assembly": "DelVar x",
          "explain": "delete method variable x"
        }
      ]
    },
    {
      "initialPc": 835,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "70",
      "sourceCode": "                    result = { add(x, hd) for x in combinations(tl, k - 1) }",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 836,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "70",
      "sourceCode": "                    result = { add(x, hd) for x in combinations(tl, k - 1) }",
      "assembly": [
        {
          "assembly": "LoadVar hd",
          "explain": "push the value of hd"
        }
      ]
    },
    {
      "initialPc": 837,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "70",
      "sourceCode": "                    result = { add(x, hd) for x in combinations(tl, k - 1) }",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 838,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "70",
      "sourceCode": "                    result = { add(x, hd) for x in combinations(tl, k - 1) }",
      "assembly": [
        {
          "assembly": "Apply PC(696)",
          "explain": "call method PC(696)"
        }
      ]
    },
    {
      "initialPc": 839,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "70",
      "sourceCode": "                    result = { add(x, hd) for x in combinations(tl, k - 1) }",
      "assembly": [
        {
          "assembly": "2-ary SetAdd",
          "explain": "pop 2 values and push the result of applying SetAdd"
        }
      ]
    },
    {
      "initialPc": 840,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "70",
      "sourceCode": "                    result = { add(x, hd) for x in combinations(tl, k - 1) }",
      "assembly": [
        {
          "assembly": "StoreVar $accu645",
          "explain": "update accumulator: pop a value and store in $accu645"
        }
      ]
    },
    {
      "initialPc": 841,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "70",
      "sourceCode": "                    result = { add(x, hd) for x in combinations(tl, k - 1) }",
      "assembly": [
        {
          "assembly": "Jump 828",
          "explain": "set program counter to 828"
        }
      ]
    },
    {
      "initialPc": 842,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "70",
      "sourceCode": "                    result = { add(x, hd) for x in combinations(tl, k - 1) }",
      "assembly": [
        {
          "assembly": "DelVar hd",
          "explain": "delete method variable hd"
        }
      ]
    },
    {
      "initialPc": 843,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "70",
      "sourceCode": "                    result = { add(x, hd) for x in combinations(tl, k - 1) }",
      "assembly": [
        {
          "assembly": "DelVar x",
          "explain": "delete method variable x"
        }
      ]
    },
    {
      "initialPc": 844,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "70",
      "sourceCode": "                    result = { add(x, hd) for x in combinations(tl, k - 1) }",
      "assembly": [
        {
          "assembly": "LoadVar $accu645",
          "explain": "load final accumulator result: push the value of $accu645"
        }
      ]
    },
    {
      "initialPc": 845,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "70",
      "sourceCode": "                    result = { add(x, hd) for x in combinations(tl, k - 1) }",
      "assembly": [
        {
          "assembly": "DelVar $accu645",
          "explain": "delete method variable $accu645"
        }
      ]
    },
    {
      "initialPc": 846,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "71",
      "sourceCode": "                                | combinations(tl, k)",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "building a tuple: push constant ()"
        }
      ]
    },
    {
      "initialPc": 847,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "71",
      "sourceCode": "                                | combinations(tl, k)",
      "assembly": [
        {
          "assembly": "LoadVar tl",
          "explain": "push the value of tl"
        }
      ]
    },
    {
      "initialPc": 848,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "71",
      "sourceCode": "                                | combinations(tl, k)",
      "assembly": [
        {
          "assembly": "DelVar tl",
          "explain": "delete method variable tl"
        }
      ]
    },
    {
      "initialPc": 849,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "71",
      "sourceCode": "                                | combinations(tl, k)",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 850,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "71",
      "sourceCode": "                                | combinations(tl, k)",
      "assembly": [
        {
          "assembly": "LoadVar k",
          "explain": "push the value of k"
        }
      ]
    },
    {
      "initialPc": 851,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "71",
      "sourceCode": "                                | combinations(tl, k)",
      "assembly": [
        {
          "assembly": "DelVar k",
          "explain": "delete method variable k"
        }
      ]
    },
    {
      "initialPc": 852,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "71",
      "sourceCode": "                                | combinations(tl, k)",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 853,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "71",
      "sourceCode": "                                | combinations(tl, k)",
      "assembly": [
        {
          "assembly": "Apply PC(768)",
          "explain": "call method PC(768)"
        }
      ]
    },
    {
      "initialPc": 854,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "70",
      "sourceCode": "                    result = { add(x, hd) for x in combinations(tl, k - 1) }",
      "assembly": [
        {
          "assembly": "2-ary |",
          "explain": "pop 2 values and push the result of applying |"
        }
      ]
    },
    {
      "initialPc": 855,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "70",
      "sourceCode": "                    result = { add(x, hd) for x in combinations(tl, k - 1) }",
      "assembly": [
        {
          "assembly": "StoreVar result",
          "explain": "pop a value and store in result"
        }
      ]
    },
    {
      "initialPc": 856,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/bag.hny",
      "line": "59",
      "sourceCode": "def combinations(bg, k) returns result:",
      "assembly": [
        {
          "assembly": "ReturnOp(result)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 857,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "4",
      "sourceCode": "def atomic_load(p) returns current:",
      "assembly": [
        {
          "assembly": "Jump 1205",
          "explain": "jump over method definition: set program counter to 1205"
        }
      ]
    },
    {
      "initialPc": 858,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "4",
      "sourceCode": "def atomic_load(p) returns current:",
      "assembly": [
        {
          "assembly": "Frame atomic_load(p)",
          "explain": "start of method atomic_load"
        }
      ]
    },
    {
      "initialPc": 859,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "5",
      "sourceCode": "    atomically current = !p",
      "assembly": [
        {
          "assembly": "AtomicInc(eager)",
          "explain": "increment atomic counter of context; thread runs uninterrupted if larger than 0"
        }
      ]
    },
    {
      "initialPc": 860,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "5",
      "sourceCode": "    atomically current = !p",
      "assembly": [
        {
          "assembly": "LoadVar p",
          "explain": "push the value of p"
        }
      ]
    },
    {
      "initialPc": 861,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "5",
      "sourceCode": "    atomically current = !p",
      "assembly": [
        {
          "assembly": "DelVar p",
          "explain": "delete method variable p"
        }
      ]
    },
    {
      "initialPc": 862,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "5",
      "sourceCode": "    atomically current = !p",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 863,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "5",
      "sourceCode": "    atomically current = !p",
      "assembly": [
        {
          "assembly": "StoreVar current",
          "explain": "pop a value and store in current"
        }
      ]
    },
    {
      "initialPc": 864,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "5",
      "sourceCode": "    atomically current = !p",
      "assembly": [
        {
          "assembly": "AtomicDec",
          "explain": "decrement atomic counter of context"
        }
      ]
    },
    {
      "initialPc": 865,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "4",
      "sourceCode": "def atomic_load(p) returns current:",
      "assembly": [
        {
          "assembly": "ReturnOp(current)",
          "explain": "restore caller method state and push current"
        }
      ]
    },
    {
      "initialPc": 866,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "4",
      "sourceCode": "def atomic_load(p) returns current:",
      "assembly": [
        {
          "assembly": "DelVar current",
          "explain": "delete method variable current"
        }
      ]
    },
    {
      "initialPc": 867,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "7",
      "sourceCode": "def atomic_store(p, v):",
      "assembly": [
        {
          "assembly": "Jump 1205",
          "explain": "jump over method definition: set program counter to 1205"
        }
      ]
    },
    {
      "initialPc": 868,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "7",
      "sourceCode": "def atomic_store(p, v):",
      "assembly": [
        {
          "assembly": "Frame atomic_store(p, v)",
          "explain": "start of method atomic_store"
        }
      ]
    },
    {
      "initialPc": 869,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "8",
      "sourceCode": "    atomically !p = v",
      "assembly": [
        {
          "assembly": "AtomicInc(eager)",
          "explain": "increment atomic counter of context; thread runs uninterrupted if larger than 0"
        }
      ]
    },
    {
      "initialPc": 870,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "8",
      "sourceCode": "    atomically !p = v",
      "assembly": [
        {
          "assembly": "LoadVar p",
          "explain": "push the value of p"
        }
      ]
    },
    {
      "initialPc": 871,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "8",
      "sourceCode": "    atomically !p = v",
      "assembly": [
        {
          "assembly": "DelVar p",
          "explain": "delete method variable p"
        }
      ]
    },
    {
      "initialPc": 872,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "8",
      "sourceCode": "    atomically !p = v",
      "assembly": [
        {
          "assembly": "LoadVar v",
          "explain": "push the value of v"
        }
      ]
    },
    {
      "initialPc": 873,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "8",
      "sourceCode": "    atomically !p = v",
      "assembly": [
        {
          "assembly": "DelVar v",
          "explain": "delete method variable v"
        }
      ]
    },
    {
      "initialPc": 874,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "8",
      "sourceCode": "    atomically !p = v",
      "assembly": [
        {
          "assembly": "Store",
          "explain": "pop a value and an address and store the value at the address"
        }
      ]
    },
    {
      "initialPc": 875,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "8",
      "sourceCode": "    atomically !p = v",
      "assembly": [
        {
          "assembly": "AtomicDec",
          "explain": "decrement atomic counter of context"
        }
      ]
    },
    {
      "initialPc": 876,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "7",
      "sourceCode": "def atomic_store(p, v):",
      "assembly": [
        {
          "assembly": "ReturnOp(result. None)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 877,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "10",
      "sourceCode": "def tas(lk) returns oldvalue:",
      "assembly": [
        {
          "assembly": "Jump 1205",
          "explain": "jump over method definition: set program counter to 1205"
        }
      ]
    },
    {
      "initialPc": 878,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "10",
      "sourceCode": "def tas(lk) returns oldvalue:",
      "assembly": [
        {
          "assembly": "Frame tas(lk)",
          "explain": "start of method tas"
        }
      ]
    },
    {
      "initialPc": 879,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "11",
      "sourceCode": "    atomically:",
      "assembly": [
        {
          "assembly": "AtomicInc(eager)",
          "explain": "increment atomic counter of context; thread runs uninterrupted if larger than 0"
        }
      ]
    },
    {
      "initialPc": 880,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "12",
      "sourceCode": "        oldvalue = !lk",
      "assembly": [
        {
          "assembly": "LoadVar lk",
          "explain": "push the value of lk"
        }
      ]
    },
    {
      "initialPc": 881,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "12",
      "sourceCode": "        oldvalue = !lk",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 882,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "12",
      "sourceCode": "        oldvalue = !lk",
      "assembly": [
        {
          "assembly": "StoreVar oldvalue",
          "explain": "pop a value and store in oldvalue"
        }
      ]
    },
    {
      "initialPc": 883,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "13",
      "sourceCode": "        !lk = True",
      "assembly": [
        {
          "assembly": "LoadVar lk",
          "explain": "push the value of lk"
        }
      ]
    },
    {
      "initialPc": 884,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "13",
      "sourceCode": "        !lk = True",
      "assembly": [
        {
          "assembly": "DelVar lk",
          "explain": "delete method variable lk"
        }
      ]
    },
    {
      "initialPc": 885,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "13",
      "sourceCode": "        !lk = True",
      "assembly": [
        {
          "assembly": "Push True",
          "explain": "push constant True"
        }
      ]
    },
    {
      "initialPc": 886,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "13",
      "sourceCode": "        !lk = True",
      "assembly": [
        {
          "assembly": "Store",
          "explain": "pop a value and an address and store the value at the address"
        }
      ]
    },
    {
      "initialPc": 887,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "11",
      "sourceCode": "    atomically:",
      "assembly": [
        {
          "assembly": "AtomicDec",
          "explain": "decrement atomic counter of context"
        }
      ]
    },
    {
      "initialPc": 888,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "10",
      "sourceCode": "def tas(lk) returns oldvalue:",
      "assembly": [
        {
          "assembly": "ReturnOp(oldvalue)",
          "explain": "restore caller method state and push oldvalue"
        }
      ]
    },
    {
      "initialPc": 889,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "10",
      "sourceCode": "def tas(lk) returns oldvalue:",
      "assembly": [
        {
          "assembly": "DelVar oldvalue",
          "explain": "delete method variable oldvalue"
        }
      ]
    },
    {
      "initialPc": 890,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "15",
      "sourceCode": "def cas(p, old, new) returns success:",
      "assembly": [
        {
          "assembly": "Jump 1205",
          "explain": "jump over method definition: set program counter to 1205"
        }
      ]
    },
    {
      "initialPc": 891,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "15",
      "sourceCode": "def cas(p, old, new) returns success:",
      "assembly": [
        {
          "assembly": "Frame cas(p, old, new)",
          "explain": "start of method cas"
        }
      ]
    },
    {
      "initialPc": 892,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "16",
      "sourceCode": "    atomically:",
      "assembly": [
        {
          "assembly": "AtomicInc(eager)",
          "explain": "increment atomic counter of context; thread runs uninterrupted if larger than 0"
        }
      ]
    },
    {
      "initialPc": 893,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "17",
      "sourceCode": "        success = !p == old",
      "assembly": [
        {
          "assembly": "LoadVar p",
          "explain": "push the value of p"
        }
      ]
    },
    {
      "initialPc": 894,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "17",
      "sourceCode": "        success = !p == old",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 895,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "17",
      "sourceCode": "        success = !p == old",
      "assembly": [
        {
          "assembly": "LoadVar old",
          "explain": "push the value of old"
        }
      ]
    },
    {
      "initialPc": 896,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "17",
      "sourceCode": "        success = !p == old",
      "assembly": [
        {
          "assembly": "DelVar old",
          "explain": "delete method variable old"
        }
      ]
    },
    {
      "initialPc": 897,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "17",
      "sourceCode": "        success = !p == old",
      "assembly": [
        {
          "assembly": "2-ary ==",
          "explain": "pop 2 values and push the result of applying =="
        }
      ]
    },
    {
      "initialPc": 898,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "17",
      "sourceCode": "        success = !p == old",
      "assembly": [
        {
          "assembly": "StoreVar success",
          "explain": "pop a value and store in success"
        }
      ]
    },
    {
      "initialPc": 899,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "18",
      "sourceCode": "        if success:",
      "assembly": [
        {
          "assembly": "LoadVar success",
          "explain": "push the value of success"
        }
      ]
    },
    {
      "initialPc": 900,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "18",
      "sourceCode": "        if success:",
      "assembly": [
        {
          "assembly": "JumpCond False 906",
          "explain": "pop a value and jump to 906 if the value is False"
        }
      ]
    },
    {
      "initialPc": 901,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "19",
      "sourceCode": "            !p = new",
      "assembly": [
        {
          "assembly": "LoadVar p",
          "explain": "push the value of p"
        }
      ]
    },
    {
      "initialPc": 902,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "19",
      "sourceCode": "            !p = new",
      "assembly": [
        {
          "assembly": "DelVar p",
          "explain": "delete method variable p"
        }
      ]
    },
    {
      "initialPc": 903,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "19",
      "sourceCode": "            !p = new",
      "assembly": [
        {
          "assembly": "LoadVar new",
          "explain": "push the value of new"
        }
      ]
    },
    {
      "initialPc": 904,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "19",
      "sourceCode": "            !p = new",
      "assembly": [
        {
          "assembly": "DelVar new",
          "explain": "delete method variable new"
        }
      ]
    },
    {
      "initialPc": 905,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "19",
      "sourceCode": "            !p = new",
      "assembly": [
        {
          "assembly": "Store",
          "explain": "pop a value and an address and store the value at the address"
        }
      ]
    },
    {
      "initialPc": 906,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "16",
      "sourceCode": "    atomically:",
      "assembly": [
        {
          "assembly": "DelVar new",
          "explain": "delete method variable new"
        }
      ]
    },
    {
      "initialPc": 907,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "16",
      "sourceCode": "    atomically:",
      "assembly": [
        {
          "assembly": "DelVar p",
          "explain": "delete method variable p"
        }
      ]
    },
    {
      "initialPc": 908,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "16",
      "sourceCode": "    atomically:",
      "assembly": [
        {
          "assembly": "AtomicDec",
          "explain": "decrement atomic counter of context"
        }
      ]
    },
    {
      "initialPc": 909,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "15",
      "sourceCode": "def cas(p, old, new) returns success:",
      "assembly": [
        {
          "assembly": "ReturnOp(success)",
          "explain": "restore caller method state and push success"
        }
      ]
    },
    {
      "initialPc": 910,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "15",
      "sourceCode": "def cas(p, old, new) returns success:",
      "assembly": [
        {
          "assembly": "DelVar success",
          "explain": "delete method variable success"
        }
      ]
    },
    {
      "initialPc": 911,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "21",
      "sourceCode": "def BinSema(initial) returns sema:",
      "assembly": [
        {
          "assembly": "Jump 1205",
          "explain": "jump over method definition: set program counter to 1205"
        }
      ]
    },
    {
      "initialPc": 912,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "21",
      "sourceCode": "def BinSema(initial) returns sema:",
      "assembly": [
        {
          "assembly": "Frame BinSema(initial)",
          "explain": "start of method BinSema"
        }
      ]
    },
    {
      "initialPc": 913,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "22",
      "sourceCode": "    assert initial in { False, True }",
      "assembly": [
        {
          "assembly": "AtomicInc(lazy)",
          "explain": "increment atomic counter of context; thread runs uninterrupted if larger than 0"
        }
      ]
    },
    {
      "initialPc": 914,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "22",
      "sourceCode": "    assert initial in { False, True }",
      "assembly": [
        {
          "assembly": "ReadonlyInc",
          "explain": "increment readonly counter of context; thread cannot mutate shared variables if > 0"
        }
      ]
    },
    {
      "initialPc": 915,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "22",
      "sourceCode": "    assert initial in { False, True }",
      "assembly": [
        {
          "assembly": "LoadVar initial",
          "explain": "push the value of initial"
        }
      ]
    },
    {
      "initialPc": 916,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "22",
      "sourceCode": "    assert initial in { False, True }",
      "assembly": [
        {
          "assembly": "Push {}",
          "explain": "push constant {}"
        }
      ]
    },
    {
      "initialPc": 917,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "22",
      "sourceCode": "    assert initial in { False, True }",
      "assembly": [
        {
          "assembly": "Push False",
          "explain": "push constant False"
        }
      ]
    },
    {
      "initialPc": 918,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "22",
      "sourceCode": "    assert initial in { False, True }",
      "assembly": [
        {
          "assembly": "2-ary SetAdd",
          "explain": "pop 2 values and push the result of applying SetAdd"
        }
      ]
    },
    {
      "initialPc": 919,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "22",
      "sourceCode": "    assert initial in { False, True }",
      "assembly": [
        {
          "assembly": "Push True",
          "explain": "push constant True"
        }
      ]
    },
    {
      "initialPc": 920,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "22",
      "sourceCode": "    assert initial in { False, True }",
      "assembly": [
        {
          "assembly": "2-ary SetAdd",
          "explain": "pop 2 values and push the result of applying SetAdd"
        }
      ]
    },
    {
      "initialPc": 921,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "22",
      "sourceCode": "    assert initial in { False, True }",
      "assembly": [
        {
          "assembly": "2-ary in",
          "explain": "pop 2 values and push the result of applying in"
        }
      ]
    },
    {
      "initialPc": 922,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "22",
      "sourceCode": "    assert initial in { False, True }",
      "assembly": [
        {
          "assembly": "Assert",
          "explain": "pop a condition and raise exception if condition is false"
        }
      ]
    },
    {
      "initialPc": 923,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "22",
      "sourceCode": "    assert initial in { False, True }",
      "assembly": [
        {
          "assembly": "ReadonlyDec",
          "explain": "decrement readonly counter of context"
        }
      ]
    },
    {
      "initialPc": 924,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "22",
      "sourceCode": "    assert initial in { False, True }",
      "assembly": [
        {
          "assembly": "AtomicDec",
          "explain": "decrement atomic counter of context"
        }
      ]
    },
    {
      "initialPc": 925,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "23",
      "sourceCode": "    sema = initial",
      "assembly": [
        {
          "assembly": "LoadVar initial",
          "explain": "push the value of initial"
        }
      ]
    },
    {
      "initialPc": 926,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "23",
      "sourceCode": "    sema = initial",
      "assembly": [
        {
          "assembly": "DelVar initial",
          "explain": "delete method variable initial"
        }
      ]
    },
    {
      "initialPc": 927,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "23",
      "sourceCode": "    sema = initial",
      "assembly": [
        {
          "assembly": "StoreVar sema",
          "explain": "pop a value and store in sema"
        }
      ]
    },
    {
      "initialPc": 928,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "21",
      "sourceCode": "def BinSema(initial) returns sema:",
      "assembly": [
        {
          "assembly": "ReturnOp(sema)",
          "explain": "restore caller method state and push sema"
        }
      ]
    },
    {
      "initialPc": 929,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "21",
      "sourceCode": "def BinSema(initial) returns sema:",
      "assembly": [
        {
          "assembly": "DelVar sema",
          "explain": "delete method variable sema"
        }
      ]
    },
    {
      "initialPc": 930,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "25",
      "sourceCode": "def Lock() returns result:",
      "assembly": [
        {
          "assembly": "Jump 1205",
          "explain": "jump over method definition: set program counter to 1205"
        }
      ]
    },
    {
      "initialPc": 931,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "25",
      "sourceCode": "def Lock() returns result:",
      "assembly": [
        {
          "assembly": "Frame Lock()",
          "explain": "start of method Lock"
        }
      ]
    },
    {
      "initialPc": 932,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "26",
      "sourceCode": "    result = BinSema(False)",
      "assembly": [
        {
          "assembly": "DelVar result",
          "explain": "delete method variable result"
        }
      ]
    },
    {
      "initialPc": 933,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "26",
      "sourceCode": "    result = BinSema(False)",
      "assembly": [
        {
          "assembly": "Push False",
          "explain": "push constant False"
        }
      ]
    },
    {
      "initialPc": 934,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "26",
      "sourceCode": "    result = BinSema(False)",
      "assembly": [
        {
          "assembly": "Apply PC(912)",
          "explain": "call method PC(912)"
        }
      ]
    },
    {
      "initialPc": 935,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "26",
      "sourceCode": "    result = BinSema(False)",
      "assembly": [
        {
          "assembly": "StoreVar result",
          "explain": "pop a value and store in result"
        }
      ]
    },
    {
      "initialPc": 936,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "25",
      "sourceCode": "def Lock() returns result:",
      "assembly": [
        {
          "assembly": "ReturnOp(result)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 937,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "28",
      "sourceCode": "def acquired(binsema) returns result:",
      "assembly": [
        {
          "assembly": "Jump 1205",
          "explain": "jump over method definition: set program counter to 1205"
        }
      ]
    },
    {
      "initialPc": 938,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "28",
      "sourceCode": "def acquired(binsema) returns result:",
      "assembly": [
        {
          "assembly": "Frame acquired(binsema)",
          "explain": "start of method acquired"
        }
      ]
    },
    {
      "initialPc": 939,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "29",
      "sourceCode": "    result = !binsema",
      "assembly": [
        {
          "assembly": "DelVar result",
          "explain": "delete method variable result"
        }
      ]
    },
    {
      "initialPc": 940,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "29",
      "sourceCode": "    result = !binsema",
      "assembly": [
        {
          "assembly": "LoadVar binsema",
          "explain": "push the value of binsema"
        }
      ]
    },
    {
      "initialPc": 941,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "29",
      "sourceCode": "    result = !binsema",
      "assembly": [
        {
          "assembly": "DelVar binsema",
          "explain": "delete method variable binsema"
        }
      ]
    },
    {
      "initialPc": 942,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "29",
      "sourceCode": "    result = !binsema",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 943,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "29",
      "sourceCode": "    result = !binsema",
      "assembly": [
        {
          "assembly": "StoreVar result",
          "explain": "pop a value and store in result"
        }
      ]
    },
    {
      "initialPc": 944,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "28",
      "sourceCode": "def acquired(binsema) returns result:",
      "assembly": [
        {
          "assembly": "ReturnOp(result)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 945,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "31",
      "sourceCode": "def held(binsema) returns result:",
      "assembly": [
        {
          "assembly": "Jump 1205",
          "explain": "jump over method definition: set program counter to 1205"
        }
      ]
    },
    {
      "initialPc": 946,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "31",
      "sourceCode": "def held(binsema) returns result:",
      "assembly": [
        {
          "assembly": "Frame held(binsema)",
          "explain": "start of method held"
        }
      ]
    },
    {
      "initialPc": 947,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "32",
      "sourceCode": "    result = !binsema",
      "assembly": [
        {
          "assembly": "DelVar result",
          "explain": "delete method variable result"
        }
      ]
    },
    {
      "initialPc": 948,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "32",
      "sourceCode": "    result = !binsema",
      "assembly": [
        {
          "assembly": "LoadVar binsema",
          "explain": "push the value of binsema"
        }
      ]
    },
    {
      "initialPc": 949,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "32",
      "sourceCode": "    result = !binsema",
      "assembly": [
        {
          "assembly": "DelVar binsema",
          "explain": "delete method variable binsema"
        }
      ]
    },
    {
      "initialPc": 950,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "32",
      "sourceCode": "    result = !binsema",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 951,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "32",
      "sourceCode": "    result = !binsema",
      "assembly": [
        {
          "assembly": "StoreVar result",
          "explain": "pop a value and store in result"
        }
      ]
    },
    {
      "initialPc": 952,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "31",
      "sourceCode": "def held(binsema) returns result:",
      "assembly": [
        {
          "assembly": "ReturnOp(result)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 953,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "34",
      "sourceCode": "def acquire(binsema):",
      "assembly": [
        {
          "assembly": "Jump 1205",
          "explain": "jump over method definition: set program counter to 1205"
        }
      ]
    },
    {
      "initialPc": 954,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "34",
      "sourceCode": "def acquire(binsema):",
      "assembly": [
        {
          "assembly": "Frame acquire(binsema)",
          "explain": "start of method acquire"
        }
      ]
    },
    {
      "initialPc": 955,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "35",
      "sourceCode": "    atomically when not !binsema:",
      "assembly": [
        {
          "assembly": "AtomicInc(eager)",
          "explain": "increment atomic counter of context; thread runs uninterrupted if larger than 0"
        }
      ]
    },
    {
      "initialPc": 956,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "35",
      "sourceCode": "    atomically when not !binsema:",
      "assembly": [
        {
          "assembly": "ReadonlyInc",
          "explain": "increment readonly counter of context; thread cannot mutate shared variables if > 0"
        }
      ]
    },
    {
      "initialPc": 957,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "35",
      "sourceCode": "    atomically when not !binsema:",
      "assembly": [
        {
          "assembly": "LoadVar binsema",
          "explain": "push the value of binsema"
        }
      ]
    },
    {
      "initialPc": 958,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "35",
      "sourceCode": "    atomically when not !binsema:",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 959,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "35",
      "sourceCode": "    atomically when not !binsema:",
      "assembly": [
        {
          "assembly": "1-ary not",
          "explain": "pop 1 value and push the result of applying not"
        }
      ]
    },
    {
      "initialPc": 960,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "35",
      "sourceCode": "    atomically when not !binsema:",
      "assembly": [
        {
          "assembly": "JumpCond False 962",
          "explain": "pop a value and jump to 962 if the value is False"
        }
      ]
    },
    {
      "initialPc": 961,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "35",
      "sourceCode": "    atomically when not !binsema:",
      "assembly": [
        {
          "assembly": "Jump 965",
          "explain": "set program counter to 965"
        }
      ]
    },
    {
      "initialPc": 962,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "35",
      "sourceCode": "    atomically when not !binsema:",
      "assembly": [
        {
          "assembly": "ReadonlyDec",
          "explain": "decrement readonly counter of context"
        }
      ]
    },
    {
      "initialPc": 963,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "35",
      "sourceCode": "    atomically when not !binsema:",
      "assembly": [
        {
          "assembly": "AtomicDec",
          "explain": "decrement atomic counter of context"
        }
      ]
    },
    {
      "initialPc": 964,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "35",
      "sourceCode": "    atomically when not !binsema:",
      "assembly": [
        {
          "assembly": "Jump 955",
          "explain": "set program counter to 955"
        }
      ]
    },
    {
      "initialPc": 965,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "35",
      "sourceCode": "    atomically when not !binsema:",
      "assembly": [
        {
          "assembly": "ReadonlyDec",
          "explain": "decrement readonly counter of context"
        }
      ]
    },
    {
      "initialPc": 966,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "36",
      "sourceCode": "        !binsema = True",
      "assembly": [
        {
          "assembly": "LoadVar binsema",
          "explain": "push the value of binsema"
        }
      ]
    },
    {
      "initialPc": 967,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "36",
      "sourceCode": "        !binsema = True",
      "assembly": [
        {
          "assembly": "DelVar binsema",
          "explain": "delete method variable binsema"
        }
      ]
    },
    {
      "initialPc": 968,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "36",
      "sourceCode": "        !binsema = True",
      "assembly": [
        {
          "assembly": "Push True",
          "explain": "push constant True"
        }
      ]
    },
    {
      "initialPc": 969,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "36",
      "sourceCode": "        !binsema = True",
      "assembly": [
        {
          "assembly": "Store",
          "explain": "pop a value and an address and store the value at the address"
        }
      ]
    },
    {
      "initialPc": 970,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "35",
      "sourceCode": "    atomically when not !binsema:",
      "assembly": [
        {
          "assembly": "AtomicDec",
          "explain": "decrement atomic counter of context"
        }
      ]
    },
    {
      "initialPc": 971,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "34",
      "sourceCode": "def acquire(binsema):",
      "assembly": [
        {
          "assembly": "ReturnOp(result. None)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 972,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "38",
      "sourceCode": "def release(binsema):",
      "assembly": [
        {
          "assembly": "Jump 1205",
          "explain": "jump over method definition: set program counter to 1205"
        }
      ]
    },
    {
      "initialPc": 973,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "38",
      "sourceCode": "def release(binsema):",
      "assembly": [
        {
          "assembly": "Frame release(binsema)",
          "explain": "start of method release"
        }
      ]
    },
    {
      "initialPc": 974,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "39",
      "sourceCode": "    atomically:",
      "assembly": [
        {
          "assembly": "AtomicInc(eager)",
          "explain": "increment atomic counter of context; thread runs uninterrupted if larger than 0"
        }
      ]
    },
    {
      "initialPc": 975,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "40",
      "sourceCode": "        assert !binsema",
      "assembly": [
        {
          "assembly": "AtomicInc(lazy)",
          "explain": "increment atomic counter of context; thread runs uninterrupted if larger than 0"
        }
      ]
    },
    {
      "initialPc": 976,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "40",
      "sourceCode": "        assert !binsema",
      "assembly": [
        {
          "assembly": "ReadonlyInc",
          "explain": "increment readonly counter of context; thread cannot mutate shared variables if > 0"
        }
      ]
    },
    {
      "initialPc": 977,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "40",
      "sourceCode": "        assert !binsema",
      "assembly": [
        {
          "assembly": "LoadVar binsema",
          "explain": "push the value of binsema"
        }
      ]
    },
    {
      "initialPc": 978,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "40",
      "sourceCode": "        assert !binsema",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 979,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "40",
      "sourceCode": "        assert !binsema",
      "assembly": [
        {
          "assembly": "Assert",
          "explain": "pop a condition and raise exception if condition is false"
        }
      ]
    },
    {
      "initialPc": 980,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "40",
      "sourceCode": "        assert !binsema",
      "assembly": [
        {
          "assembly": "ReadonlyDec",
          "explain": "decrement readonly counter of context"
        }
      ]
    },
    {
      "initialPc": 981,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "40",
      "sourceCode": "        assert !binsema",
      "assembly": [
        {
          "assembly": "AtomicDec",
          "explain": "decrement atomic counter of context"
        }
      ]
    },
    {
      "initialPc": 982,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "41",
      "sourceCode": "        !binsema = False",
      "assembly": [
        {
          "assembly": "LoadVar binsema",
          "explain": "push the value of binsema"
        }
      ]
    },
    {
      "initialPc": 983,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "41",
      "sourceCode": "        !binsema = False",
      "assembly": [
        {
          "assembly": "DelVar binsema",
          "explain": "delete method variable binsema"
        }
      ]
    },
    {
      "initialPc": 984,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "41",
      "sourceCode": "        !binsema = False",
      "assembly": [
        {
          "assembly": "Push False",
          "explain": "push constant False"
        }
      ]
    },
    {
      "initialPc": 985,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "41",
      "sourceCode": "        !binsema = False",
      "assembly": [
        {
          "assembly": "Store",
          "explain": "pop a value and an address and store the value at the address"
        }
      ]
    },
    {
      "initialPc": 986,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "39",
      "sourceCode": "    atomically:",
      "assembly": [
        {
          "assembly": "AtomicDec",
          "explain": "decrement atomic counter of context"
        }
      ]
    },
    {
      "initialPc": 987,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "38",
      "sourceCode": "def release(binsema):",
      "assembly": [
        {
          "assembly": "ReturnOp(result. None)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 988,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "43",
      "sourceCode": "def Condition() returns result:",
      "assembly": [
        {
          "assembly": "Jump 1205",
          "explain": "jump over method definition: set program counter to 1205"
        }
      ]
    },
    {
      "initialPc": 989,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "43",
      "sourceCode": "def Condition() returns result:",
      "assembly": [
        {
          "assembly": "Frame Condition()",
          "explain": "start of method Condition"
        }
      ]
    },
    {
      "initialPc": 990,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "44",
      "sourceCode": "    result = bag.empty()",
      "assembly": [
        {
          "assembly": "DelVar result",
          "explain": "delete method variable result"
        }
      ]
    },
    {
      "initialPc": 991,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "44",
      "sourceCode": "    result = bag.empty()",
      "assembly": [
        {
          "assembly": "Push PC(541)",
          "explain": "push constant PC(541)"
        }
      ]
    },
    {
      "initialPc": 992,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "44",
      "sourceCode": "    result = bag.empty()",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "push constant ()"
        }
      ]
    },
    {
      "initialPc": 993,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "44",
      "sourceCode": "    result = bag.empty()",
      "assembly": [
        {
          "assembly": "2-ary Closure",
          "explain": "pop 2 values and push the result of applying Closure"
        }
      ]
    },
    {
      "initialPc": 994,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "44",
      "sourceCode": "    result = bag.empty()",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 995,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "44",
      "sourceCode": "    result = bag.empty()",
      "assembly": [
        {
          "assembly": "StoreVar result",
          "explain": "pop a value and store in result"
        }
      ]
    },
    {
      "initialPc": 996,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "43",
      "sourceCode": "def Condition() returns result:",
      "assembly": [
        {
          "assembly": "ReturnOp(result)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 997,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "46",
      "sourceCode": "def wait(c, lk):",
      "assembly": [
        {
          "assembly": "Jump 1205",
          "explain": "jump over method definition: set program counter to 1205"
        }
      ]
    },
    {
      "initialPc": 998,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "46",
      "sourceCode": "def wait(c, lk):",
      "assembly": [
        {
          "assembly": "Frame wait(c, lk)",
          "explain": "start of method wait"
        }
      ]
    },
    {
      "initialPc": 999,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "47",
      "sourceCode": "    var cnt = 0",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 1000,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "47",
      "sourceCode": "    var cnt = 0",
      "assembly": [
        {
          "assembly": "StoreVar cnt",
          "explain": "pop a value and store in cnt"
        }
      ]
    },
    {
      "initialPc": 1001,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "48",
      "sourceCode": "    let (), ctx = save():",
      "assembly": [
        {
          "assembly": "DelVar cnt",
          "explain": "delete method variable cnt"
        }
      ]
    },
    {
      "initialPc": 1002,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "48",
      "sourceCode": "    let (), ctx = save():",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "push constant ()"
        }
      ]
    },
    {
      "initialPc": 1003,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "48",
      "sourceCode": "    let (), ctx = save():",
      "assembly": [
        {
          "assembly": "Save",
          "explain": "pop a value and save context"
        }
      ]
    },
    {
      "initialPc": 1004,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "48",
      "sourceCode": "    let (), ctx = save():",
      "assembly": [
        {
          "assembly": "Continue",
          "explain": "a no-op, must follow a Stop or Save operation"
        }
      ]
    },
    {
      "initialPc": 1005,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "48",
      "sourceCode": "    let (), ctx = save():",
      "assembly": [
        {
          "assembly": "StoreVar ((), ctx)",
          "explain": "pop a value and store in ((), ctx)"
        }
      ]
    },
    {
      "initialPc": 1006,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "49",
      "sourceCode": "        atomically:",
      "assembly": [
        {
          "assembly": "AtomicInc(eager)",
          "explain": "increment atomic counter of context; thread runs uninterrupted if larger than 0"
        }
      ]
    },
    {
      "initialPc": 1007,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "50",
      "sourceCode": "            cnt = bag.multiplicity(!c, ctx)",
      "assembly": [
        {
          "assembly": "Push PC(605)",
          "explain": "push constant PC(605)"
        }
      ]
    },
    {
      "initialPc": 1008,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "50",
      "sourceCode": "            cnt = bag.multiplicity(!c, ctx)",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "building a tuple: push constant ()"
        }
      ]
    },
    {
      "initialPc": 1009,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "50",
      "sourceCode": "            cnt = bag.multiplicity(!c, ctx)",
      "assembly": [
        {
          "assembly": "LoadVar c",
          "explain": "push the value of c"
        }
      ]
    },
    {
      "initialPc": 1010,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "50",
      "sourceCode": "            cnt = bag.multiplicity(!c, ctx)",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 1011,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "50",
      "sourceCode": "            cnt = bag.multiplicity(!c, ctx)",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 1012,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "50",
      "sourceCode": "            cnt = bag.multiplicity(!c, ctx)",
      "assembly": [
        {
          "assembly": "LoadVar ctx",
          "explain": "push the value of ctx"
        }
      ]
    },
    {
      "initialPc": 1013,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "50",
      "sourceCode": "            cnt = bag.multiplicity(!c, ctx)",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 1014,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "50",
      "sourceCode": "            cnt = bag.multiplicity(!c, ctx)",
      "assembly": [
        {
          "assembly": "2-ary Closure",
          "explain": "pop 2 values and push the result of applying Closure"
        }
      ]
    },
    {
      "initialPc": 1015,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "50",
      "sourceCode": "            cnt = bag.multiplicity(!c, ctx)",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 1016,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "50",
      "sourceCode": "            cnt = bag.multiplicity(!c, ctx)",
      "assembly": [
        {
          "assembly": "StoreVar cnt",
          "explain": "pop a value and store in cnt"
        }
      ]
    },
    {
      "initialPc": 1017,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "51",
      "sourceCode": "            !c = bag.add(!c, ctx)",
      "assembly": [
        {
          "assembly": "LoadVar c",
          "explain": "push the value of c"
        }
      ]
    },
    {
      "initialPc": 1018,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "51",
      "sourceCode": "            !c = bag.add(!c, ctx)",
      "assembly": [
        {
          "assembly": "Push PC(696)",
          "explain": "push constant PC(696)"
        }
      ]
    },
    {
      "initialPc": 1019,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "51",
      "sourceCode": "            !c = bag.add(!c, ctx)",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "building a tuple: push constant ()"
        }
      ]
    },
    {
      "initialPc": 1020,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "51",
      "sourceCode": "            !c = bag.add(!c, ctx)",
      "assembly": [
        {
          "assembly": "LoadVar c",
          "explain": "push the value of c"
        }
      ]
    },
    {
      "initialPc": 1021,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "51",
      "sourceCode": "            !c = bag.add(!c, ctx)",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 1022,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "51",
      "sourceCode": "            !c = bag.add(!c, ctx)",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 1023,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "51",
      "sourceCode": "            !c = bag.add(!c, ctx)",
      "assembly": [
        {
          "assembly": "LoadVar ctx",
          "explain": "push the value of ctx"
        }
      ]
    },
    {
      "initialPc": 1024,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "51",
      "sourceCode": "            !c = bag.add(!c, ctx)",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 1025,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "51",
      "sourceCode": "            !c = bag.add(!c, ctx)",
      "assembly": [
        {
          "assembly": "2-ary Closure",
          "explain": "pop 2 values and push the result of applying Closure"
        }
      ]
    },
    {
      "initialPc": 1026,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "51",
      "sourceCode": "            !c = bag.add(!c, ctx)",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 1027,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "51",
      "sourceCode": "            !c = bag.add(!c, ctx)",
      "assembly": [
        {
          "assembly": "Store",
          "explain": "pop a value and an address and store the value at the address"
        }
      ]
    },
    {
      "initialPc": 1028,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "52",
      "sourceCode": "            !lk = False",
      "assembly": [
        {
          "assembly": "LoadVar lk",
          "explain": "push the value of lk"
        }
      ]
    },
    {
      "initialPc": 1029,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "52",
      "sourceCode": "            !lk = False",
      "assembly": [
        {
          "assembly": "Push False",
          "explain": "push constant False"
        }
      ]
    },
    {
      "initialPc": 1030,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "52",
      "sourceCode": "            !lk = False",
      "assembly": [
        {
          "assembly": "Store",
          "explain": "pop a value and an address and store the value at the address"
        }
      ]
    },
    {
      "initialPc": 1031,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "49",
      "sourceCode": "        atomically:",
      "assembly": [
        {
          "assembly": "AtomicDec",
          "explain": "decrement atomic counter of context"
        }
      ]
    },
    {
      "initialPc": 1032,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "53",
      "sourceCode": "        atomically when (not !lk) and (bag.multiplicity(!c, ctx) <= cnt):",
      "assembly": [
        {
          "assembly": "AtomicInc(eager)",
          "explain": "increment atomic counter of context; thread runs uninterrupted if larger than 0"
        }
      ]
    },
    {
      "initialPc": 1033,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "53",
      "sourceCode": "        atomically when (not !lk) and (bag.multiplicity(!c, ctx) <= cnt):",
      "assembly": [
        {
          "assembly": "ReadonlyInc",
          "explain": "increment readonly counter of context; thread cannot mutate shared variables if > 0"
        }
      ]
    },
    {
      "initialPc": 1034,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "53",
      "sourceCode": "        atomically when (not !lk) and (bag.multiplicity(!c, ctx) <= cnt):",
      "assembly": [
        {
          "assembly": "LoadVar lk",
          "explain": "push the value of lk"
        }
      ]
    },
    {
      "initialPc": 1035,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "53",
      "sourceCode": "        atomically when (not !lk) and (bag.multiplicity(!c, ctx) <= cnt):",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 1036,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "53",
      "sourceCode": "        atomically when (not !lk) and (bag.multiplicity(!c, ctx) <= cnt):",
      "assembly": [
        {
          "assembly": "1-ary not",
          "explain": "pop 1 value and push the result of applying not"
        }
      ]
    },
    {
      "initialPc": 1037,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "53",
      "sourceCode": "        atomically when (not !lk) and (bag.multiplicity(!c, ctx) <= cnt):",
      "assembly": [
        {
          "assembly": "JumpCond False 1050",
          "explain": "pop a value and jump to 1050 if the value is False"
        }
      ]
    },
    {
      "initialPc": 1038,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "53",
      "sourceCode": "        atomically when (not !lk) and (bag.multiplicity(!c, ctx) <= cnt):",
      "assembly": [
        {
          "assembly": "Push PC(605)",
          "explain": "push constant PC(605)"
        }
      ]
    },
    {
      "initialPc": 1039,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "53",
      "sourceCode": "        atomically when (not !lk) and (bag.multiplicity(!c, ctx) <= cnt):",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "building a tuple: push constant ()"
        }
      ]
    },
    {
      "initialPc": 1040,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "53",
      "sourceCode": "        atomically when (not !lk) and (bag.multiplicity(!c, ctx) <= cnt):",
      "assembly": [
        {
          "assembly": "LoadVar c",
          "explain": "push the value of c"
        }
      ]
    },
    {
      "initialPc": 1041,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "53",
      "sourceCode": "        atomically when (not !lk) and (bag.multiplicity(!c, ctx) <= cnt):",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 1042,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "53",
      "sourceCode": "        atomically when (not !lk) and (bag.multiplicity(!c, ctx) <= cnt):",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 1043,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "53",
      "sourceCode": "        atomically when (not !lk) and (bag.multiplicity(!c, ctx) <= cnt):",
      "assembly": [
        {
          "assembly": "LoadVar ctx",
          "explain": "push the value of ctx"
        }
      ]
    },
    {
      "initialPc": 1044,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "53",
      "sourceCode": "        atomically when (not !lk) and (bag.multiplicity(!c, ctx) <= cnt):",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 1045,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "53",
      "sourceCode": "        atomically when (not !lk) and (bag.multiplicity(!c, ctx) <= cnt):",
      "assembly": [
        {
          "assembly": "2-ary Closure",
          "explain": "pop 2 values and push the result of applying Closure"
        }
      ]
    },
    {
      "initialPc": 1046,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "53",
      "sourceCode": "        atomically when (not !lk) and (bag.multiplicity(!c, ctx) <= cnt):",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 1047,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "53",
      "sourceCode": "        atomically when (not !lk) and (bag.multiplicity(!c, ctx) <= cnt):",
      "assembly": [
        {
          "assembly": "LoadVar cnt",
          "explain": "push the value of cnt"
        }
      ]
    },
    {
      "initialPc": 1048,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "53",
      "sourceCode": "        atomically when (not !lk) and (bag.multiplicity(!c, ctx) <= cnt):",
      "assembly": [
        {
          "assembly": "2-ary <=",
          "explain": "pop 2 values and push the result of applying <="
        }
      ]
    },
    {
      "initialPc": 1049,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "53",
      "sourceCode": "        atomically when (not !lk) and (bag.multiplicity(!c, ctx) <= cnt):",
      "assembly": [
        {
          "assembly": "Jump 1051",
          "explain": "set program counter to 1051"
        }
      ]
    },
    {
      "initialPc": 1050,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "53",
      "sourceCode": "        atomically when (not !lk) and (bag.multiplicity(!c, ctx) <= cnt):",
      "assembly": [
        {
          "assembly": "Push False",
          "explain": "push constant False"
        }
      ]
    },
    {
      "initialPc": 1051,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "53",
      "sourceCode": "        atomically when (not !lk) and (bag.multiplicity(!c, ctx) <= cnt):",
      "assembly": [
        {
          "assembly": "JumpCond False 1056",
          "explain": "pop a value and jump to 1056 if the value is False"
        }
      ]
    },
    {
      "initialPc": 1052,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "53",
      "sourceCode": "        atomically when (not !lk) and (bag.multiplicity(!c, ctx) <= cnt):",
      "assembly": [
        {
          "assembly": "DelVar c",
          "explain": "delete method variable c"
        }
      ]
    },
    {
      "initialPc": 1053,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "53",
      "sourceCode": "        atomically when (not !lk) and (bag.multiplicity(!c, ctx) <= cnt):",
      "assembly": [
        {
          "assembly": "DelVar cnt",
          "explain": "delete method variable cnt"
        }
      ]
    },
    {
      "initialPc": 1054,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "53",
      "sourceCode": "        atomically when (not !lk) and (bag.multiplicity(!c, ctx) <= cnt):",
      "assembly": [
        {
          "assembly": "DelVar ctx",
          "explain": "delete method variable ctx"
        }
      ]
    },
    {
      "initialPc": 1055,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "53",
      "sourceCode": "        atomically when (not !lk) and (bag.multiplicity(!c, ctx) <= cnt):",
      "assembly": [
        {
          "assembly": "Jump 1059",
          "explain": "set program counter to 1059"
        }
      ]
    },
    {
      "initialPc": 1056,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "53",
      "sourceCode": "        atomically when (not !lk) and (bag.multiplicity(!c, ctx) <= cnt):",
      "assembly": [
        {
          "assembly": "ReadonlyDec",
          "explain": "decrement readonly counter of context"
        }
      ]
    },
    {
      "initialPc": 1057,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "53",
      "sourceCode": "        atomically when (not !lk) and (bag.multiplicity(!c, ctx) <= cnt):",
      "assembly": [
        {
          "assembly": "AtomicDec",
          "explain": "decrement atomic counter of context"
        }
      ]
    },
    {
      "initialPc": 1058,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "53",
      "sourceCode": "        atomically when (not !lk) and (bag.multiplicity(!c, ctx) <= cnt):",
      "assembly": [
        {
          "assembly": "Jump 1032",
          "explain": "set program counter to 1032"
        }
      ]
    },
    {
      "initialPc": 1059,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "53",
      "sourceCode": "        atomically when (not !lk) and (bag.multiplicity(!c, ctx) <= cnt):",
      "assembly": [
        {
          "assembly": "ReadonlyDec",
          "explain": "decrement readonly counter of context"
        }
      ]
    },
    {
      "initialPc": 1060,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "54",
      "sourceCode": "            !lk = True",
      "assembly": [
        {
          "assembly": "LoadVar lk",
          "explain": "push the value of lk"
        }
      ]
    },
    {
      "initialPc": 1061,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "54",
      "sourceCode": "            !lk = True",
      "assembly": [
        {
          "assembly": "DelVar lk",
          "explain": "delete method variable lk"
        }
      ]
    },
    {
      "initialPc": 1062,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "54",
      "sourceCode": "            !lk = True",
      "assembly": [
        {
          "assembly": "Push True",
          "explain": "push constant True"
        }
      ]
    },
    {
      "initialPc": 1063,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "54",
      "sourceCode": "            !lk = True",
      "assembly": [
        {
          "assembly": "Store",
          "explain": "pop a value and an address and store the value at the address"
        }
      ]
    },
    {
      "initialPc": 1064,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "53",
      "sourceCode": "        atomically when (not !lk) and (bag.multiplicity(!c, ctx) <= cnt):",
      "assembly": [
        {
          "assembly": "AtomicDec",
          "explain": "decrement atomic counter of context"
        }
      ]
    },
    {
      "initialPc": 1065,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "46",
      "sourceCode": "def wait(c, lk):",
      "assembly": [
        {
          "assembly": "ReturnOp(result. None)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 1066,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "56",
      "sourceCode": "def notify(c):",
      "assembly": [
        {
          "assembly": "Jump 1205",
          "explain": "jump over method definition: set program counter to 1205"
        }
      ]
    },
    {
      "initialPc": 1067,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "56",
      "sourceCode": "def notify(c):",
      "assembly": [
        {
          "assembly": "Frame notify(c)",
          "explain": "start of method notify"
        }
      ]
    },
    {
      "initialPc": 1068,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "57",
      "sourceCode": "    atomically if !c != bag.empty():",
      "assembly": [
        {
          "assembly": "AtomicInc(eager)",
          "explain": "increment atomic counter of context; thread runs uninterrupted if larger than 0"
        }
      ]
    },
    {
      "initialPc": 1069,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "57",
      "sourceCode": "    atomically if !c != bag.empty():",
      "assembly": [
        {
          "assembly": "LoadVar c",
          "explain": "push the value of c"
        }
      ]
    },
    {
      "initialPc": 1070,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "57",
      "sourceCode": "    atomically if !c != bag.empty():",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 1071,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "57",
      "sourceCode": "    atomically if !c != bag.empty():",
      "assembly": [
        {
          "assembly": "Push PC(541)",
          "explain": "push constant PC(541)"
        }
      ]
    },
    {
      "initialPc": 1072,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "57",
      "sourceCode": "    atomically if !c != bag.empty():",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "push constant ()"
        }
      ]
    },
    {
      "initialPc": 1073,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "57",
      "sourceCode": "    atomically if !c != bag.empty():",
      "assembly": [
        {
          "assembly": "2-ary Closure",
          "explain": "pop 2 values and push the result of applying Closure"
        }
      ]
    },
    {
      "initialPc": 1074,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "57",
      "sourceCode": "    atomically if !c != bag.empty():",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 1075,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "57",
      "sourceCode": "    atomically if !c != bag.empty():",
      "assembly": [
        {
          "assembly": "2-ary !=",
          "explain": "pop 2 values and push the result of applying !="
        }
      ]
    },
    {
      "initialPc": 1076,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "57",
      "sourceCode": "    atomically if !c != bag.empty():",
      "assembly": [
        {
          "assembly": "JumpCond False 1093",
          "explain": "pop a value and jump to 1093 if the value is False"
        }
      ]
    },
    {
      "initialPc": 1077,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "58",
      "sourceCode": "        !c = bag.remove(!c, bag.bchoose(!c))",
      "assembly": [
        {
          "assembly": "LoadVar c",
          "explain": "push the value of c"
        }
      ]
    },
    {
      "initialPc": 1078,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "58",
      "sourceCode": "        !c = bag.remove(!c, bag.bchoose(!c))",
      "assembly": [
        {
          "assembly": "Push PC(725)",
          "explain": "push constant PC(725)"
        }
      ]
    },
    {
      "initialPc": 1079,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "58",
      "sourceCode": "        !c = bag.remove(!c, bag.bchoose(!c))",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "building a tuple: push constant ()"
        }
      ]
    },
    {
      "initialPc": 1080,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "58",
      "sourceCode": "        !c = bag.remove(!c, bag.bchoose(!c))",
      "assembly": [
        {
          "assembly": "LoadVar c",
          "explain": "push the value of c"
        }
      ]
    },
    {
      "initialPc": 1081,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "58",
      "sourceCode": "        !c = bag.remove(!c, bag.bchoose(!c))",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 1082,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "58",
      "sourceCode": "        !c = bag.remove(!c, bag.bchoose(!c))",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 1083,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "58",
      "sourceCode": "        !c = bag.remove(!c, bag.bchoose(!c))",
      "assembly": [
        {
          "assembly": "Push PC(685)",
          "explain": "push constant PC(685)"
        }
      ]
    },
    {
      "initialPc": 1084,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "58",
      "sourceCode": "        !c = bag.remove(!c, bag.bchoose(!c))",
      "assembly": [
        {
          "assembly": "LoadVar c",
          "explain": "push the value of c"
        }
      ]
    },
    {
      "initialPc": 1085,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "58",
      "sourceCode": "        !c = bag.remove(!c, bag.bchoose(!c))",
      "assembly": [
        {
          "assembly": "DelVar c",
          "explain": "delete method variable c"
        }
      ]
    },
    {
      "initialPc": 1086,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "58",
      "sourceCode": "        !c = bag.remove(!c, bag.bchoose(!c))",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 1087,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "58",
      "sourceCode": "        !c = bag.remove(!c, bag.bchoose(!c))",
      "assembly": [
        {
          "assembly": "2-ary Closure",
          "explain": "pop 2 values and push the result of applying Closure"
        }
      ]
    },
    {
      "initialPc": 1088,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "58",
      "sourceCode": "        !c = bag.remove(!c, bag.bchoose(!c))",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 1089,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "58",
      "sourceCode": "        !c = bag.remove(!c, bag.bchoose(!c))",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 1090,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "58",
      "sourceCode": "        !c = bag.remove(!c, bag.bchoose(!c))",
      "assembly": [
        {
          "assembly": "2-ary Closure",
          "explain": "pop 2 values and push the result of applying Closure"
        }
      ]
    },
    {
      "initialPc": 1091,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "58",
      "sourceCode": "        !c = bag.remove(!c, bag.bchoose(!c))",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 1092,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "58",
      "sourceCode": "        !c = bag.remove(!c, bag.bchoose(!c))",
      "assembly": [
        {
          "assembly": "Store",
          "explain": "pop a value and an address and store the value at the address"
        }
      ]
    },
    {
      "initialPc": 1093,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "57",
      "sourceCode": "    atomically if !c != bag.empty():",
      "assembly": [
        {
          "assembly": "DelVar c",
          "explain": "delete method variable c"
        }
      ]
    },
    {
      "initialPc": 1094,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "57",
      "sourceCode": "    atomically if !c != bag.empty():",
      "assembly": [
        {
          "assembly": "AtomicDec",
          "explain": "decrement atomic counter of context"
        }
      ]
    },
    {
      "initialPc": 1095,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "56",
      "sourceCode": "def notify(c):",
      "assembly": [
        {
          "assembly": "ReturnOp(result. None)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 1096,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "60",
      "sourceCode": "def notifyAll(c):",
      "assembly": [
        {
          "assembly": "Jump 1205",
          "explain": "jump over method definition: set program counter to 1205"
        }
      ]
    },
    {
      "initialPc": 1097,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "60",
      "sourceCode": "def notifyAll(c):",
      "assembly": [
        {
          "assembly": "Frame notifyAll(c)",
          "explain": "start of method notifyAll"
        }
      ]
    },
    {
      "initialPc": 1098,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "61",
      "sourceCode": "    atomically !c = bag.empty()",
      "assembly": [
        {
          "assembly": "AtomicInc(eager)",
          "explain": "increment atomic counter of context; thread runs uninterrupted if larger than 0"
        }
      ]
    },
    {
      "initialPc": 1099,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "61",
      "sourceCode": "    atomically !c = bag.empty()",
      "assembly": [
        {
          "assembly": "LoadVar c",
          "explain": "push the value of c"
        }
      ]
    },
    {
      "initialPc": 1100,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "61",
      "sourceCode": "    atomically !c = bag.empty()",
      "assembly": [
        {
          "assembly": "DelVar c",
          "explain": "delete method variable c"
        }
      ]
    },
    {
      "initialPc": 1101,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "61",
      "sourceCode": "    atomically !c = bag.empty()",
      "assembly": [
        {
          "assembly": "Push PC(541)",
          "explain": "push constant PC(541)"
        }
      ]
    },
    {
      "initialPc": 1102,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "61",
      "sourceCode": "    atomically !c = bag.empty()",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "push constant ()"
        }
      ]
    },
    {
      "initialPc": 1103,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "61",
      "sourceCode": "    atomically !c = bag.empty()",
      "assembly": [
        {
          "assembly": "2-ary Closure",
          "explain": "pop 2 values and push the result of applying Closure"
        }
      ]
    },
    {
      "initialPc": 1104,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "61",
      "sourceCode": "    atomically !c = bag.empty()",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 1105,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "61",
      "sourceCode": "    atomically !c = bag.empty()",
      "assembly": [
        {
          "assembly": "Store",
          "explain": "pop a value and an address and store the value at the address"
        }
      ]
    },
    {
      "initialPc": 1106,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "61",
      "sourceCode": "    atomically !c = bag.empty()",
      "assembly": [
        {
          "assembly": "AtomicDec",
          "explain": "decrement atomic counter of context"
        }
      ]
    },
    {
      "initialPc": 1107,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "60",
      "sourceCode": "def notifyAll(c):",
      "assembly": [
        {
          "assembly": "ReturnOp(result. None)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 1108,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "63",
      "sourceCode": "def Semaphore(cnt) returns result:",
      "assembly": [
        {
          "assembly": "Jump 1205",
          "explain": "jump over method definition: set program counter to 1205"
        }
      ]
    },
    {
      "initialPc": 1109,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "63",
      "sourceCode": "def Semaphore(cnt) returns result:",
      "assembly": [
        {
          "assembly": "Frame Semaphore(cnt)",
          "explain": "start of method Semaphore"
        }
      ]
    },
    {
      "initialPc": 1110,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "64",
      "sourceCode": "    result = cnt",
      "assembly": [
        {
          "assembly": "DelVar result",
          "explain": "delete method variable result"
        }
      ]
    },
    {
      "initialPc": 1111,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "64",
      "sourceCode": "    result = cnt",
      "assembly": [
        {
          "assembly": "LoadVar cnt",
          "explain": "push the value of cnt"
        }
      ]
    },
    {
      "initialPc": 1112,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "64",
      "sourceCode": "    result = cnt",
      "assembly": [
        {
          "assembly": "DelVar cnt",
          "explain": "delete method variable cnt"
        }
      ]
    },
    {
      "initialPc": 1113,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "64",
      "sourceCode": "    result = cnt",
      "assembly": [
        {
          "assembly": "StoreVar result",
          "explain": "pop a value and store in result"
        }
      ]
    },
    {
      "initialPc": 1114,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "63",
      "sourceCode": "def Semaphore(cnt) returns result:",
      "assembly": [
        {
          "assembly": "ReturnOp(result)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 1115,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "66",
      "sourceCode": "def P(sema):",
      "assembly": [
        {
          "assembly": "Jump 1205",
          "explain": "jump over method definition: set program counter to 1205"
        }
      ]
    },
    {
      "initialPc": 1116,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "66",
      "sourceCode": "def P(sema):",
      "assembly": [
        {
          "assembly": "Frame P(sema)",
          "explain": "start of method P"
        }
      ]
    },
    {
      "initialPc": 1117,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "67",
      "sourceCode": "    atomically when !sema > 0:",
      "assembly": [
        {
          "assembly": "AtomicInc(eager)",
          "explain": "increment atomic counter of context; thread runs uninterrupted if larger than 0"
        }
      ]
    },
    {
      "initialPc": 1118,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "67",
      "sourceCode": "    atomically when !sema > 0:",
      "assembly": [
        {
          "assembly": "ReadonlyInc",
          "explain": "increment readonly counter of context; thread cannot mutate shared variables if > 0"
        }
      ]
    },
    {
      "initialPc": 1119,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "67",
      "sourceCode": "    atomically when !sema > 0:",
      "assembly": [
        {
          "assembly": "LoadVar sema",
          "explain": "push the value of sema"
        }
      ]
    },
    {
      "initialPc": 1120,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "67",
      "sourceCode": "    atomically when !sema > 0:",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 1121,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "67",
      "sourceCode": "    atomically when !sema > 0:",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 1122,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "67",
      "sourceCode": "    atomically when !sema > 0:",
      "assembly": [
        {
          "assembly": "2-ary >",
          "explain": "pop 2 values and push the result of applying >"
        }
      ]
    },
    {
      "initialPc": 1123,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "67",
      "sourceCode": "    atomically when !sema > 0:",
      "assembly": [
        {
          "assembly": "JumpCond False 1125",
          "explain": "pop a value and jump to 1125 if the value is False"
        }
      ]
    },
    {
      "initialPc": 1124,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "67",
      "sourceCode": "    atomically when !sema > 0:",
      "assembly": [
        {
          "assembly": "Jump 1128",
          "explain": "set program counter to 1128"
        }
      ]
    },
    {
      "initialPc": 1125,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "67",
      "sourceCode": "    atomically when !sema > 0:",
      "assembly": [
        {
          "assembly": "ReadonlyDec",
          "explain": "decrement readonly counter of context"
        }
      ]
    },
    {
      "initialPc": 1126,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "67",
      "sourceCode": "    atomically when !sema > 0:",
      "assembly": [
        {
          "assembly": "AtomicDec",
          "explain": "decrement atomic counter of context"
        }
      ]
    },
    {
      "initialPc": 1127,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "67",
      "sourceCode": "    atomically when !sema > 0:",
      "assembly": [
        {
          "assembly": "Jump 1117",
          "explain": "set program counter to 1117"
        }
      ]
    },
    {
      "initialPc": 1128,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "67",
      "sourceCode": "    atomically when !sema > 0:",
      "assembly": [
        {
          "assembly": "ReadonlyDec",
          "explain": "decrement readonly counter of context"
        }
      ]
    },
    {
      "initialPc": 1129,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "68",
      "sourceCode": "        !sema -= 1",
      "assembly": [
        {
          "assembly": "LoadVar sema",
          "explain": "push the value of sema"
        }
      ]
    },
    {
      "initialPc": 1130,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "68",
      "sourceCode": "        !sema -= 1",
      "assembly": [
        {
          "assembly": "DelVar sema",
          "explain": "delete method variable sema"
        }
      ]
    },
    {
      "initialPc": 1131,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "68",
      "sourceCode": "        !sema -= 1",
      "assembly": [
        {
          "assembly": "Dup",
          "explain": "push a copy of the top value on the stack"
        }
      ]
    },
    {
      "initialPc": 1132,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "68",
      "sourceCode": "        !sema -= 1",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 1133,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "68",
      "sourceCode": "        !sema -= 1",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 1134,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "68",
      "sourceCode": "        !sema -= 1",
      "assembly": [
        {
          "assembly": "2-ary -",
          "explain": "pop 2 values and push the result of applying -"
        }
      ]
    },
    {
      "initialPc": 1135,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "68",
      "sourceCode": "        !sema -= 1",
      "assembly": [
        {
          "assembly": "Store",
          "explain": "pop a value and an address and store the value at the address"
        }
      ]
    },
    {
      "initialPc": 1136,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "67",
      "sourceCode": "    atomically when !sema > 0:",
      "assembly": [
        {
          "assembly": "AtomicDec",
          "explain": "decrement atomic counter of context"
        }
      ]
    },
    {
      "initialPc": 1137,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "66",
      "sourceCode": "def P(sema):",
      "assembly": [
        {
          "assembly": "ReturnOp(result. None)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 1138,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "70",
      "sourceCode": "def V(sema):",
      "assembly": [
        {
          "assembly": "Jump 1205",
          "explain": "jump over method definition: set program counter to 1205"
        }
      ]
    },
    {
      "initialPc": 1139,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "70",
      "sourceCode": "def V(sema):",
      "assembly": [
        {
          "assembly": "Frame V(sema)",
          "explain": "start of method V"
        }
      ]
    },
    {
      "initialPc": 1140,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "71",
      "sourceCode": "    atomically !sema += 1",
      "assembly": [
        {
          "assembly": "AtomicInc(eager)",
          "explain": "increment atomic counter of context; thread runs uninterrupted if larger than 0"
        }
      ]
    },
    {
      "initialPc": 1141,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "71",
      "sourceCode": "    atomically !sema += 1",
      "assembly": [
        {
          "assembly": "LoadVar sema",
          "explain": "push the value of sema"
        }
      ]
    },
    {
      "initialPc": 1142,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "71",
      "sourceCode": "    atomically !sema += 1",
      "assembly": [
        {
          "assembly": "DelVar sema",
          "explain": "delete method variable sema"
        }
      ]
    },
    {
      "initialPc": 1143,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "71",
      "sourceCode": "    atomically !sema += 1",
      "assembly": [
        {
          "assembly": "Dup",
          "explain": "push a copy of the top value on the stack"
        }
      ]
    },
    {
      "initialPc": 1144,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "71",
      "sourceCode": "    atomically !sema += 1",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 1145,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "71",
      "sourceCode": "    atomically !sema += 1",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 1146,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "71",
      "sourceCode": "    atomically !sema += 1",
      "assembly": [
        {
          "assembly": "2-ary +",
          "explain": "pop 2 values and push the result of applying +"
        }
      ]
    },
    {
      "initialPc": 1147,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "71",
      "sourceCode": "    atomically !sema += 1",
      "assembly": [
        {
          "assembly": "Store",
          "explain": "pop a value and an address and store the value at the address"
        }
      ]
    },
    {
      "initialPc": 1148,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "71",
      "sourceCode": "    atomically !sema += 1",
      "assembly": [
        {
          "assembly": "AtomicDec",
          "explain": "decrement atomic counter of context"
        }
      ]
    },
    {
      "initialPc": 1149,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "70",
      "sourceCode": "def V(sema):",
      "assembly": [
        {
          "assembly": "ReturnOp(result. None)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 1150,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "73",
      "sourceCode": "def Queue() returns result:",
      "assembly": [
        {
          "assembly": "Jump 1205",
          "explain": "jump over method definition: set program counter to 1205"
        }
      ]
    },
    {
      "initialPc": 1151,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "73",
      "sourceCode": "def Queue() returns result:",
      "assembly": [
        {
          "assembly": "Frame Queue()",
          "explain": "start of method Queue"
        }
      ]
    },
    {
      "initialPc": 1152,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "74",
      "sourceCode": "    result = []",
      "assembly": [
        {
          "assembly": "DelVar result",
          "explain": "delete method variable result"
        }
      ]
    },
    {
      "initialPc": 1153,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "74",
      "sourceCode": "    result = []",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "push constant ()"
        }
      ]
    },
    {
      "initialPc": 1154,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "74",
      "sourceCode": "    result = []",
      "assembly": [
        {
          "assembly": "StoreVar result",
          "explain": "pop a value and store in result"
        }
      ]
    },
    {
      "initialPc": 1155,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "73",
      "sourceCode": "def Queue() returns result:",
      "assembly": [
        {
          "assembly": "ReturnOp(result)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 1156,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "76",
      "sourceCode": "def get(q) returns result:",
      "assembly": [
        {
          "assembly": "Jump 1205",
          "explain": "jump over method definition: set program counter to 1205"
        }
      ]
    },
    {
      "initialPc": 1157,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "76",
      "sourceCode": "def get(q) returns result:",
      "assembly": [
        {
          "assembly": "Frame get(q)",
          "explain": "start of method get"
        }
      ]
    },
    {
      "initialPc": 1158,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "77",
      "sourceCode": "    atomically when !q != []:",
      "assembly": [
        {
          "assembly": "AtomicInc(eager)",
          "explain": "increment atomic counter of context; thread runs uninterrupted if larger than 0"
        }
      ]
    },
    {
      "initialPc": 1159,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "77",
      "sourceCode": "    atomically when !q != []:",
      "assembly": [
        {
          "assembly": "DelVar result",
          "explain": "delete method variable result"
        }
      ]
    },
    {
      "initialPc": 1160,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "77",
      "sourceCode": "    atomically when !q != []:",
      "assembly": [
        {
          "assembly": "ReadonlyInc",
          "explain": "increment readonly counter of context; thread cannot mutate shared variables if > 0"
        }
      ]
    },
    {
      "initialPc": 1161,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "77",
      "sourceCode": "    atomically when !q != []:",
      "assembly": [
        {
          "assembly": "LoadVar q",
          "explain": "push the value of q"
        }
      ]
    },
    {
      "initialPc": 1162,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "77",
      "sourceCode": "    atomically when !q != []:",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 1163,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "77",
      "sourceCode": "    atomically when !q != []:",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "push constant ()"
        }
      ]
    },
    {
      "initialPc": 1164,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "77",
      "sourceCode": "    atomically when !q != []:",
      "assembly": [
        {
          "assembly": "2-ary !=",
          "explain": "pop 2 values and push the result of applying !="
        }
      ]
    },
    {
      "initialPc": 1165,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "77",
      "sourceCode": "    atomically when !q != []:",
      "assembly": [
        {
          "assembly": "JumpCond False 1167",
          "explain": "pop a value and jump to 1167 if the value is False"
        }
      ]
    },
    {
      "initialPc": 1166,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "77",
      "sourceCode": "    atomically when !q != []:",
      "assembly": [
        {
          "assembly": "Jump 1170",
          "explain": "set program counter to 1170"
        }
      ]
    },
    {
      "initialPc": 1167,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "77",
      "sourceCode": "    atomically when !q != []:",
      "assembly": [
        {
          "assembly": "ReadonlyDec",
          "explain": "decrement readonly counter of context"
        }
      ]
    },
    {
      "initialPc": 1168,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "77",
      "sourceCode": "    atomically when !q != []:",
      "assembly": [
        {
          "assembly": "AtomicDec",
          "explain": "decrement atomic counter of context"
        }
      ]
    },
    {
      "initialPc": 1169,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "77",
      "sourceCode": "    atomically when !q != []:",
      "assembly": [
        {
          "assembly": "Jump 1158",
          "explain": "set program counter to 1158"
        }
      ]
    },
    {
      "initialPc": 1170,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "77",
      "sourceCode": "    atomically when !q != []:",
      "assembly": [
        {
          "assembly": "ReadonlyDec",
          "explain": "decrement readonly counter of context"
        }
      ]
    },
    {
      "initialPc": 1171,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "78",
      "sourceCode": "        result = list.head(!q)",
      "assembly": [
        {
          "assembly": "Push PC(45)",
          "explain": "push constant PC(45)"
        }
      ]
    },
    {
      "initialPc": 1172,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "78",
      "sourceCode": "        result = list.head(!q)",
      "assembly": [
        {
          "assembly": "LoadVar q",
          "explain": "push the value of q"
        }
      ]
    },
    {
      "initialPc": 1173,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "78",
      "sourceCode": "        result = list.head(!q)",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 1174,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "78",
      "sourceCode": "        result = list.head(!q)",
      "assembly": [
        {
          "assembly": "2-ary Closure",
          "explain": "pop 2 values and push the result of applying Closure"
        }
      ]
    },
    {
      "initialPc": 1175,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "78",
      "sourceCode": "        result = list.head(!q)",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 1176,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "78",
      "sourceCode": "        result = list.head(!q)",
      "assembly": [
        {
          "assembly": "StoreVar result",
          "explain": "pop a value and store in result"
        }
      ]
    },
    {
      "initialPc": 1177,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "79",
      "sourceCode": "        !q = list.tail(!q)",
      "assembly": [
        {
          "assembly": "LoadVar q",
          "explain": "push the value of q"
        }
      ]
    },
    {
      "initialPc": 1178,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "79",
      "sourceCode": "        !q = list.tail(!q)",
      "assembly": [
        {
          "assembly": "Push PC(57)",
          "explain": "push constant PC(57)"
        }
      ]
    },
    {
      "initialPc": 1179,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "79",
      "sourceCode": "        !q = list.tail(!q)",
      "assembly": [
        {
          "assembly": "LoadVar q",
          "explain": "push the value of q"
        }
      ]
    },
    {
      "initialPc": 1180,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "79",
      "sourceCode": "        !q = list.tail(!q)",
      "assembly": [
        {
          "assembly": "DelVar q",
          "explain": "delete method variable q"
        }
      ]
    },
    {
      "initialPc": 1181,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "79",
      "sourceCode": "        !q = list.tail(!q)",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 1182,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "79",
      "sourceCode": "        !q = list.tail(!q)",
      "assembly": [
        {
          "assembly": "2-ary Closure",
          "explain": "pop 2 values and push the result of applying Closure"
        }
      ]
    },
    {
      "initialPc": 1183,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "79",
      "sourceCode": "        !q = list.tail(!q)",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 1184,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "79",
      "sourceCode": "        !q = list.tail(!q)",
      "assembly": [
        {
          "assembly": "Store",
          "explain": "pop a value and an address and store the value at the address"
        }
      ]
    },
    {
      "initialPc": 1185,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "77",
      "sourceCode": "    atomically when !q != []:",
      "assembly": [
        {
          "assembly": "AtomicDec",
          "explain": "decrement atomic counter of context"
        }
      ]
    },
    {
      "initialPc": 1186,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "76",
      "sourceCode": "def get(q) returns result:",
      "assembly": [
        {
          "assembly": "ReturnOp(result)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 1187,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "81",
      "sourceCode": "def put(q, item):",
      "assembly": [
        {
          "assembly": "Jump 1205",
          "explain": "jump over method definition: set program counter to 1205"
        }
      ]
    },
    {
      "initialPc": 1188,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "81",
      "sourceCode": "def put(q, item):",
      "assembly": [
        {
          "assembly": "Frame put(q, item)",
          "explain": "start of method put"
        }
      ]
    },
    {
      "initialPc": 1189,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "82",
      "sourceCode": "    atomically !q = list.append(!q, item)",
      "assembly": [
        {
          "assembly": "AtomicInc(eager)",
          "explain": "increment atomic counter of context; thread runs uninterrupted if larger than 0"
        }
      ]
    },
    {
      "initialPc": 1190,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "82",
      "sourceCode": "    atomically !q = list.append(!q, item)",
      "assembly": [
        {
          "assembly": "LoadVar q",
          "explain": "push the value of q"
        }
      ]
    },
    {
      "initialPc": 1191,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "82",
      "sourceCode": "    atomically !q = list.append(!q, item)",
      "assembly": [
        {
          "assembly": "Push PC(33)",
          "explain": "push constant PC(33)"
        }
      ]
    },
    {
      "initialPc": 1192,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "82",
      "sourceCode": "    atomically !q = list.append(!q, item)",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "building a tuple: push constant ()"
        }
      ]
    },
    {
      "initialPc": 1193,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "82",
      "sourceCode": "    atomically !q = list.append(!q, item)",
      "assembly": [
        {
          "assembly": "LoadVar q",
          "explain": "push the value of q"
        }
      ]
    },
    {
      "initialPc": 1194,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "82",
      "sourceCode": "    atomically !q = list.append(!q, item)",
      "assembly": [
        {
          "assembly": "DelVar q",
          "explain": "delete method variable q"
        }
      ]
    },
    {
      "initialPc": 1195,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "82",
      "sourceCode": "    atomically !q = list.append(!q, item)",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 1196,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "82",
      "sourceCode": "    atomically !q = list.append(!q, item)",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 1197,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "82",
      "sourceCode": "    atomically !q = list.append(!q, item)",
      "assembly": [
        {
          "assembly": "LoadVar item",
          "explain": "push the value of item"
        }
      ]
    },
    {
      "initialPc": 1198,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "82",
      "sourceCode": "    atomically !q = list.append(!q, item)",
      "assembly": [
        {
          "assembly": "DelVar item",
          "explain": "delete method variable item"
        }
      ]
    },
    {
      "initialPc": 1199,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "82",
      "sourceCode": "    atomically !q = list.append(!q, item)",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 1200,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "82",
      "sourceCode": "    atomically !q = list.append(!q, item)",
      "assembly": [
        {
          "assembly": "2-ary Closure",
          "explain": "pop 2 values and push the result of applying Closure"
        }
      ]
    },
    {
      "initialPc": 1201,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "82",
      "sourceCode": "    atomically !q = list.append(!q, item)",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 1202,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "82",
      "sourceCode": "    atomically !q = list.append(!q, item)",
      "assembly": [
        {
          "assembly": "Store",
          "explain": "pop a value and an address and store the value at the address"
        }
      ]
    },
    {
      "initialPc": 1203,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "82",
      "sourceCode": "    atomically !q = list.append(!q, item)",
      "assembly": [
        {
          "assembly": "AtomicDec",
          "explain": "decrement atomic counter of context"
        }
      ]
    },
    {
      "initialPc": 1204,
      "file": "/private/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmp1l3504ko/env/lib/python3.12/site-packages/harmony_model_checker/modules/synch.hny",
      "line": "81",
      "sourceCode": "def put(q, item):",
      "assembly": [
        {
          "assembly": "ReturnOp(result. None)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 1205,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "8",
      "sourceCode": "accounts = [ { .lock: Lock(), .balance: choose({0..MAX_BALANCE})}",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "initialize accumulator for list comprehension: push constant ()"
        }
      ]
    },
    {
      "initialPc": 1206,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "8",
      "sourceCode": "accounts = [ { .lock: Lock(), .balance: choose({0..MAX_BALANCE})}",
      "assembly": [
        {
          "assembly": "StoreVar $accu987",
          "explain": "initialize accumulator for list comprehension: pop a value and store in $accu987"
        }
      ]
    },
    {
      "initialPc": 1207,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "9",
      "sourceCode": "                            for i in {1..N_ACCOUNTS} ]",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 1208,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "9",
      "sourceCode": "                            for i in {1..N_ACCOUNTS} ]",
      "assembly": [
        {
          "assembly": "Push 2",
          "explain": "push constant 2"
        }
      ]
    },
    {
      "initialPc": 1209,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "9",
      "sourceCode": "                            for i in {1..N_ACCOUNTS} ]",
      "assembly": [
        {
          "assembly": "2-ary ..",
          "explain": "pop 2 values and push the result of applying .."
        }
      ]
    },
    {
      "initialPc": 1210,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "8",
      "sourceCode": "accounts = [ { .lock: Lock(), .balance: choose({0..MAX_BALANCE})}",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 1211,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "8",
      "sourceCode": "accounts = [ { .lock: Lock(), .balance: choose({0..MAX_BALANCE})}",
      "assembly": [
        {
          "assembly": "Cut(i)",
          "explain": "get next element and assign to i; push False or True depending on success"
        }
      ]
    },
    {
      "initialPc": 1212,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "8",
      "sourceCode": "accounts = [ { .lock: Lock(), .balance: choose({0..MAX_BALANCE})}",
      "assembly": [
        {
          "assembly": "DelVar i",
          "explain": "delete method variable i"
        }
      ]
    },
    {
      "initialPc": 1213,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "8",
      "sourceCode": "accounts = [ { .lock: Lock(), .balance: choose({0..MAX_BALANCE})}",
      "assembly": [
        {
          "assembly": "JumpCond False 1230",
          "explain": "check if loop is done: pop a value and jump to 1230 if the value is False"
        }
      ]
    },
    {
      "initialPc": 1214,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "8",
      "sourceCode": "accounts = [ { .lock: Lock(), .balance: choose({0..MAX_BALANCE})}",
      "assembly": [
        {
          "assembly": "LoadVar $accu987",
          "explain": "load accumulator: push the value of $accu987"
        }
      ]
    },
    {
      "initialPc": 1215,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "8",
      "sourceCode": "accounts = [ { .lock: Lock(), .balance: choose({0..MAX_BALANCE})}",
      "assembly": [
        {
          "assembly": "DelVar $accu987",
          "explain": "delete method variable $accu987"
        }
      ]
    },
    {
      "initialPc": 1216,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "8",
      "sourceCode": "accounts = [ { .lock: Lock(), .balance: choose({0..MAX_BALANCE})}",
      "assembly": [
        {
          "assembly": "Push {:}",
          "explain": "push constant {:}"
        }
      ]
    },
    {
      "initialPc": 1217,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "8",
      "sourceCode": "accounts = [ { .lock: Lock(), .balance: choose({0..MAX_BALANCE})}",
      "assembly": [
        {
          "assembly": "Push \"lock\"",
          "explain": "push constant \"lock\""
        }
      ]
    },
    {
      "initialPc": 1218,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "8",
      "sourceCode": "accounts = [ { .lock: Lock(), .balance: choose({0..MAX_BALANCE})}",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "push constant ()"
        }
      ]
    },
    {
      "initialPc": 1219,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "8",
      "sourceCode": "accounts = [ { .lock: Lock(), .balance: choose({0..MAX_BALANCE})}",
      "assembly": [
        {
          "assembly": "Apply PC(931)",
          "explain": "call method PC(931)"
        }
      ]
    },
    {
      "initialPc": 1220,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "8",
      "sourceCode": "accounts = [ { .lock: Lock(), .balance: choose({0..MAX_BALANCE})}",
      "assembly": [
        {
          "assembly": "3-ary DictAdd",
          "explain": "pop 3 values and push the result of applying DictAdd"
        }
      ]
    },
    {
      "initialPc": 1221,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "8",
      "sourceCode": "accounts = [ { .lock: Lock(), .balance: choose({0..MAX_BALANCE})}",
      "assembly": [
        {
          "assembly": "Push \"balance\"",
          "explain": "push constant \"balance\""
        }
      ]
    },
    {
      "initialPc": 1222,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "8",
      "sourceCode": "accounts = [ { .lock: Lock(), .balance: choose({0..MAX_BALANCE})}",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 1223,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "8",
      "sourceCode": "accounts = [ { .lock: Lock(), .balance: choose({0..MAX_BALANCE})}",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 1224,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "8",
      "sourceCode": "accounts = [ { .lock: Lock(), .balance: choose({0..MAX_BALANCE})}",
      "assembly": [
        {
          "assembly": "2-ary ..",
          "explain": "pop 2 values and push the result of applying .."
        }
      ]
    },
    {
      "initialPc": 1225,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "8",
      "sourceCode": "accounts = [ { .lock: Lock(), .balance: choose({0..MAX_BALANCE})}",
      "assembly": [
        {
          "assembly": "Choose",
          "explain": "pop a set value and push one of its elements"
        }
      ]
    },
    {
      "initialPc": 1226,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "8",
      "sourceCode": "accounts = [ { .lock: Lock(), .balance: choose({0..MAX_BALANCE})}",
      "assembly": [
        {
          "assembly": "3-ary DictAdd",
          "explain": "pop 3 values and push the result of applying DictAdd"
        }
      ]
    },
    {
      "initialPc": 1227,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "8",
      "sourceCode": "accounts = [ { .lock: Lock(), .balance: choose({0..MAX_BALANCE})}",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 1228,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "8",
      "sourceCode": "accounts = [ { .lock: Lock(), .balance: choose({0..MAX_BALANCE})}",
      "assembly": [
        {
          "assembly": "StoreVar $accu987",
          "explain": "update accumulator: pop a value and store in $accu987"
        }
      ]
    },
    {
      "initialPc": 1229,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "9",
      "sourceCode": "                            for i in {1..N_ACCOUNTS} ]",
      "assembly": [
        {
          "assembly": "Jump 1211",
          "explain": "set program counter to 1211"
        }
      ]
    },
    {
      "initialPc": 1230,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "8",
      "sourceCode": "accounts = [ { .lock: Lock(), .balance: choose({0..MAX_BALANCE})}",
      "assembly": [
        {
          "assembly": "LoadVar $accu987",
          "explain": "load final accumulator result: push the value of $accu987"
        }
      ]
    },
    {
      "initialPc": 1231,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "8",
      "sourceCode": "accounts = [ { .lock: Lock(), .balance: choose({0..MAX_BALANCE})}",
      "assembly": [
        {
          "assembly": "DelVar $accu987",
          "explain": "delete method variable $accu987"
        }
      ]
    },
    {
      "initialPc": 1232,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "8",
      "sourceCode": "accounts = [ { .lock: Lock(), .balance: choose({0..MAX_BALANCE})}",
      "assembly": [
        {
          "assembly": "Store accounts",
          "explain": "pop a value and store it in shared variable accounts"
        }
      ]
    },
    {
      "initialPc": 1233,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "11",
      "sourceCode": "invariant min(accounts[acct].balance for acct in {0..N_ACCOUNTS-1}) >= 0",
      "assembly": [
        {
          "assembly": "Jump 1265",
          "explain": "jump over invariant definition: set program counter to 1265"
        }
      ]
    },
    {
      "initialPc": 1234,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "11",
      "sourceCode": "invariant min(accounts[acct].balance for acct in {0..N_ACCOUNTS-1}) >= 0",
      "assembly": [
        {
          "assembly": "Frame invariant()",
          "explain": "start of method invariant"
        }
      ]
    },
    {
      "initialPc": 1235,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "11",
      "sourceCode": "invariant min(accounts[acct].balance for acct in {0..N_ACCOUNTS-1}) >= 0",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "initialize accumulator for list comprehension: push constant ()"
        }
      ]
    },
    {
      "initialPc": 1236,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "11",
      "sourceCode": "invariant min(accounts[acct].balance for acct in {0..N_ACCOUNTS-1}) >= 0",
      "assembly": [
        {
          "assembly": "StoreVar $accu1014",
          "explain": "initialize accumulator for list comprehension: pop a value and store in $accu1014"
        }
      ]
    },
    {
      "initialPc": 1237,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "11",
      "sourceCode": "invariant min(accounts[acct].balance for acct in {0..N_ACCOUNTS-1}) >= 0",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 1238,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "11",
      "sourceCode": "invariant min(accounts[acct].balance for acct in {0..N_ACCOUNTS-1}) >= 0",
      "assembly": [
        {
          "assembly": "Push 2",
          "explain": "push constant 2"
        }
      ]
    },
    {
      "initialPc": 1239,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "11",
      "sourceCode": "invariant min(accounts[acct].balance for acct in {0..N_ACCOUNTS-1}) >= 0",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 1240,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "11",
      "sourceCode": "invariant min(accounts[acct].balance for acct in {0..N_ACCOUNTS-1}) >= 0",
      "assembly": [
        {
          "assembly": "2-ary -",
          "explain": "pop 2 values and push the result of applying -"
        }
      ]
    },
    {
      "initialPc": 1241,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "11",
      "sourceCode": "invariant min(accounts[acct].balance for acct in {0..N_ACCOUNTS-1}) >= 0",
      "assembly": [
        {
          "assembly": "2-ary ..",
          "explain": "pop 2 values and push the result of applying .."
        }
      ]
    },
    {
      "initialPc": 1242,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "11",
      "sourceCode": "invariant min(accounts[acct].balance for acct in {0..N_ACCOUNTS-1}) >= 0",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 1243,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "11",
      "sourceCode": "invariant min(accounts[acct].balance for acct in {0..N_ACCOUNTS-1}) >= 0",
      "assembly": [
        {
          "assembly": "Cut(acct)",
          "explain": "get next element and assign to acct; push False or True depending on success"
        }
      ]
    },
    {
      "initialPc": 1244,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "11",
      "sourceCode": "invariant min(accounts[acct].balance for acct in {0..N_ACCOUNTS-1}) >= 0",
      "assembly": [
        {
          "assembly": "JumpCond False 1257",
          "explain": "check if loop is done: pop a value and jump to 1257 if the value is False"
        }
      ]
    },
    {
      "initialPc": 1245,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "11",
      "sourceCode": "invariant min(accounts[acct].balance for acct in {0..N_ACCOUNTS-1}) >= 0",
      "assembly": [
        {
          "assembly": "LoadVar $accu1014",
          "explain": "load accumulator: push the value of $accu1014"
        }
      ]
    },
    {
      "initialPc": 1246,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "11",
      "sourceCode": "invariant min(accounts[acct].balance for acct in {0..N_ACCOUNTS-1}) >= 0",
      "assembly": [
        {
          "assembly": "DelVar $accu1014",
          "explain": "delete method variable $accu1014"
        }
      ]
    },
    {
      "initialPc": 1247,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "11",
      "sourceCode": "invariant min(accounts[acct].balance for acct in {0..N_ACCOUNTS-1}) >= 0",
      "assembly": [
        {
          "assembly": "Push ?accounts",
          "explain": "push constant ?accounts"
        }
      ]
    },
    {
      "initialPc": 1248,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "11",
      "sourceCode": "invariant min(accounts[acct].balance for acct in {0..N_ACCOUNTS-1}) >= 0",
      "assembly": [
        {
          "assembly": "LoadVar acct",
          "explain": "push the value of acct"
        }
      ]
    },
    {
      "initialPc": 1249,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "11",
      "sourceCode": "invariant min(accounts[acct].balance for acct in {0..N_ACCOUNTS-1}) >= 0",
      "assembly": [
        {
          "assembly": "DelVar acct",
          "explain": "delete method variable acct"
        }
      ]
    },
    {
      "initialPc": 1250,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "11",
      "sourceCode": "invariant min(accounts[acct].balance for acct in {0..N_ACCOUNTS-1}) >= 0",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 1251,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "11",
      "sourceCode": "invariant min(accounts[acct].balance for acct in {0..N_ACCOUNTS-1}) >= 0",
      "assembly": [
        {
          "assembly": "Push \"balance\"",
          "explain": "push constant \"balance\""
        }
      ]
    },
    {
      "initialPc": 1252,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "11",
      "sourceCode": "invariant min(accounts[acct].balance for acct in {0..N_ACCOUNTS-1}) >= 0",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 1253,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "11",
      "sourceCode": "invariant min(accounts[acct].balance for acct in {0..N_ACCOUNTS-1}) >= 0",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 1254,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "11",
      "sourceCode": "invariant min(accounts[acct].balance for acct in {0..N_ACCOUNTS-1}) >= 0",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 1255,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "11",
      "sourceCode": "invariant min(accounts[acct].balance for acct in {0..N_ACCOUNTS-1}) >= 0",
      "assembly": [
        {
          "assembly": "StoreVar $accu1014",
          "explain": "update accumulator: pop a value and store in $accu1014"
        }
      ]
    },
    {
      "initialPc": 1256,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "11",
      "sourceCode": "invariant min(accounts[acct].balance for acct in {0..N_ACCOUNTS-1}) >= 0",
      "assembly": [
        {
          "assembly": "Jump 1243",
          "explain": "set program counter to 1243"
        }
      ]
    },
    {
      "initialPc": 1257,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "11",
      "sourceCode": "invariant min(accounts[acct].balance for acct in {0..N_ACCOUNTS-1}) >= 0",
      "assembly": [
        {
          "assembly": "DelVar acct",
          "explain": "delete method variable acct"
        }
      ]
    },
    {
      "initialPc": 1258,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "11",
      "sourceCode": "invariant min(accounts[acct].balance for acct in {0..N_ACCOUNTS-1}) >= 0",
      "assembly": [
        {
          "assembly": "LoadVar $accu1014",
          "explain": "load final accumulator result: push the value of $accu1014"
        }
      ]
    },
    {
      "initialPc": 1259,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "11",
      "sourceCode": "invariant min(accounts[acct].balance for acct in {0..N_ACCOUNTS-1}) >= 0",
      "assembly": [
        {
          "assembly": "DelVar $accu1014",
          "explain": "delete method variable $accu1014"
        }
      ]
    },
    {
      "initialPc": 1260,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "11",
      "sourceCode": "invariant min(accounts[acct].balance for acct in {0..N_ACCOUNTS-1}) >= 0",
      "assembly": [
        {
          "assembly": "1-ary min",
          "explain": "pop 1 value and push the result of applying min"
        }
      ]
    },
    {
      "initialPc": 1261,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "11",
      "sourceCode": "invariant min(accounts[acct].balance for acct in {0..N_ACCOUNTS-1}) >= 0",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 1262,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "11",
      "sourceCode": "invariant min(accounts[acct].balance for acct in {0..N_ACCOUNTS-1}) >= 0",
      "assembly": [
        {
          "assembly": "2-ary >=",
          "explain": "pop 2 values and push the result of applying >="
        }
      ]
    },
    {
      "initialPc": 1263,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "11",
      "sourceCode": "invariant min(accounts[acct].balance for acct in {0..N_ACCOUNTS-1}) >= 0",
      "assembly": [
        {
          "assembly": "Assert",
          "explain": "pop a condition and raise exception if condition is false"
        }
      ]
    },
    {
      "initialPc": 1264,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "11",
      "sourceCode": "invariant min(accounts[acct].balance for acct in {0..N_ACCOUNTS-1}) >= 0",
      "assembly": [
        {
          "assembly": "ReturnOp(result. None)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 1265,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "11",
      "sourceCode": "invariant min(accounts[acct].balance for acct in {0..N_ACCOUNTS-1}) >= 0",
      "assembly": [
        {
          "assembly": "Invariant 1234",
          "explain": "test invariant"
        }
      ]
    },
    {
      "initialPc": 1266,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "13",
      "sourceCode": "def atm_check_balance(acct) returns balance:  # return the balance on acct",
      "assembly": [
        {
          "assembly": "Jump 1363",
          "explain": "jump over method definition: set program counter to 1363"
        }
      ]
    },
    {
      "initialPc": 1267,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "13",
      "sourceCode": "def atm_check_balance(acct) returns balance:  # return the balance on acct",
      "assembly": [
        {
          "assembly": "Frame atm_check_balance(acct)",
          "explain": "start of method atm_check_balance"
        }
      ]
    },
    {
      "initialPc": 1268,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "14",
      "sourceCode": "    acquire(?accounts[acct].lock)",
      "assembly": [
        {
          "assembly": "Push ?accounts",
          "explain": "push constant ?accounts"
        }
      ]
    },
    {
      "initialPc": 1269,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "14",
      "sourceCode": "    acquire(?accounts[acct].lock)",
      "assembly": [
        {
          "assembly": "LoadVar acct",
          "explain": "push the value of acct"
        }
      ]
    },
    {
      "initialPc": 1270,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "14",
      "sourceCode": "    acquire(?accounts[acct].lock)",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 1271,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "14",
      "sourceCode": "    acquire(?accounts[acct].lock)",
      "assembly": [
        {
          "assembly": "Push \"lock\"",
          "explain": "push constant \"lock\""
        }
      ]
    },
    {
      "initialPc": 1272,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "14",
      "sourceCode": "    acquire(?accounts[acct].lock)",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 1273,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "14",
      "sourceCode": "    acquire(?accounts[acct].lock)",
      "assembly": [
        {
          "assembly": "Apply PC(954)",
          "explain": "call method PC(954)"
        }
      ]
    },
    {
      "initialPc": 1274,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "14",
      "sourceCode": "    acquire(?accounts[acct].lock)",
      "assembly": [
        {
          "assembly": "Pop",
          "explain": "discard the top value on the stack"
        }
      ]
    },
    {
      "initialPc": 1275,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "15",
      "sourceCode": "    balance = accounts[acct].balance",
      "assembly": [
        {
          "assembly": "Push ?accounts",
          "explain": "push constant ?accounts"
        }
      ]
    },
    {
      "initialPc": 1276,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "15",
      "sourceCode": "    balance = accounts[acct].balance",
      "assembly": [
        {
          "assembly": "LoadVar acct",
          "explain": "push the value of acct"
        }
      ]
    },
    {
      "initialPc": 1277,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "15",
      "sourceCode": "    balance = accounts[acct].balance",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 1278,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "15",
      "sourceCode": "    balance = accounts[acct].balance",
      "assembly": [
        {
          "assembly": "Push \"balance\"",
          "explain": "push constant \"balance\""
        }
      ]
    },
    {
      "initialPc": 1279,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "15",
      "sourceCode": "    balance = accounts[acct].balance",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 1280,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "15",
      "sourceCode": "    balance = accounts[acct].balance",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 1281,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "15",
      "sourceCode": "    balance = accounts[acct].balance",
      "assembly": [
        {
          "assembly": "StoreVar balance",
          "explain": "pop a value and store in balance"
        }
      ]
    },
    {
      "initialPc": 1282,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "16",
      "sourceCode": "    release(?accounts[acct].lock)",
      "assembly": [
        {
          "assembly": "Push ?accounts",
          "explain": "push constant ?accounts"
        }
      ]
    },
    {
      "initialPc": 1283,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "16",
      "sourceCode": "    release(?accounts[acct].lock)",
      "assembly": [
        {
          "assembly": "LoadVar acct",
          "explain": "push the value of acct"
        }
      ]
    },
    {
      "initialPc": 1284,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "16",
      "sourceCode": "    release(?accounts[acct].lock)",
      "assembly": [
        {
          "assembly": "DelVar acct",
          "explain": "delete method variable acct"
        }
      ]
    },
    {
      "initialPc": 1285,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "16",
      "sourceCode": "    release(?accounts[acct].lock)",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 1286,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "16",
      "sourceCode": "    release(?accounts[acct].lock)",
      "assembly": [
        {
          "assembly": "Push \"lock\"",
          "explain": "push constant \"lock\""
        }
      ]
    },
    {
      "initialPc": 1287,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "16",
      "sourceCode": "    release(?accounts[acct].lock)",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 1288,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "16",
      "sourceCode": "    release(?accounts[acct].lock)",
      "assembly": [
        {
          "assembly": "Apply PC(973)",
          "explain": "call method PC(973)"
        }
      ]
    },
    {
      "initialPc": 1289,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "16",
      "sourceCode": "    release(?accounts[acct].lock)",
      "assembly": [
        {
          "assembly": "Pop",
          "explain": "discard the top value on the stack"
        }
      ]
    },
    {
      "initialPc": 1290,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "13",
      "sourceCode": "def atm_check_balance(acct) returns balance:  # return the balance on acct",
      "assembly": [
        {
          "assembly": "ReturnOp(balance)",
          "explain": "restore caller method state and push balance"
        }
      ]
    },
    {
      "initialPc": 1291,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "13",
      "sourceCode": "def atm_check_balance(acct) returns balance:  # return the balance on acct",
      "assembly": [
        {
          "assembly": "DelVar balance",
          "explain": "delete method variable balance"
        }
      ]
    },
    {
      "initialPc": 1292,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "18",
      "sourceCode": "def atm_withdraw(acct, amount) returns success: # withdraw amount from acct",
      "assembly": [
        {
          "assembly": "Jump 1363",
          "explain": "jump over method definition: set program counter to 1363"
        }
      ]
    },
    {
      "initialPc": 1293,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "18",
      "sourceCode": "def atm_withdraw(acct, amount) returns success: # withdraw amount from acct",
      "assembly": [
        {
          "assembly": "Frame atm_withdraw(acct, amount)",
          "explain": "start of method atm_withdraw"
        }
      ]
    },
    {
      "initialPc": 1294,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "19",
      "sourceCode": "    assert amount >= 0",
      "assembly": [
        {
          "assembly": "AtomicInc(lazy)",
          "explain": "increment atomic counter of context; thread runs uninterrupted if larger than 0"
        }
      ]
    },
    {
      "initialPc": 1295,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "19",
      "sourceCode": "    assert amount >= 0",
      "assembly": [
        {
          "assembly": "ReadonlyInc",
          "explain": "increment readonly counter of context; thread cannot mutate shared variables if > 0"
        }
      ]
    },
    {
      "initialPc": 1296,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "19",
      "sourceCode": "    assert amount >= 0",
      "assembly": [
        {
          "assembly": "LoadVar amount",
          "explain": "push the value of amount"
        }
      ]
    },
    {
      "initialPc": 1297,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "19",
      "sourceCode": "    assert amount >= 0",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 1298,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "19",
      "sourceCode": "    assert amount >= 0",
      "assembly": [
        {
          "assembly": "2-ary >=",
          "explain": "pop 2 values and push the result of applying >="
        }
      ]
    },
    {
      "initialPc": 1299,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "19",
      "sourceCode": "    assert amount >= 0",
      "assembly": [
        {
          "assembly": "Assert",
          "explain": "pop a condition and raise exception if condition is false"
        }
      ]
    },
    {
      "initialPc": 1300,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "19",
      "sourceCode": "    assert amount >= 0",
      "assembly": [
        {
          "assembly": "ReadonlyDec",
          "explain": "decrement readonly counter of context"
        }
      ]
    },
    {
      "initialPc": 1301,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "19",
      "sourceCode": "    assert amount >= 0",
      "assembly": [
        {
          "assembly": "AtomicDec",
          "explain": "decrement atomic counter of context"
        }
      ]
    },
    {
      "initialPc": 1302,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "20",
      "sourceCode": "    acquire(?accounts[acct].lock)",
      "assembly": [
        {
          "assembly": "Push ?accounts",
          "explain": "push constant ?accounts"
        }
      ]
    },
    {
      "initialPc": 1303,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "20",
      "sourceCode": "    acquire(?accounts[acct].lock)",
      "assembly": [
        {
          "assembly": "LoadVar acct",
          "explain": "push the value of acct"
        }
      ]
    },
    {
      "initialPc": 1304,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "20",
      "sourceCode": "    acquire(?accounts[acct].lock)",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 1305,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "20",
      "sourceCode": "    acquire(?accounts[acct].lock)",
      "assembly": [
        {
          "assembly": "Push \"lock\"",
          "explain": "push constant \"lock\""
        }
      ]
    },
    {
      "initialPc": 1306,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "20",
      "sourceCode": "    acquire(?accounts[acct].lock)",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 1307,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "20",
      "sourceCode": "    acquire(?accounts[acct].lock)",
      "assembly": [
        {
          "assembly": "Apply PC(954)",
          "explain": "call method PC(954)"
        }
      ]
    },
    {
      "initialPc": 1308,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "20",
      "sourceCode": "    acquire(?accounts[acct].lock)",
      "assembly": [
        {
          "assembly": "Pop",
          "explain": "discard the top value on the stack"
        }
      ]
    },
    {
      "initialPc": 1309,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "21",
      "sourceCode": "    accounts[acct].balance -= amount",
      "assembly": [
        {
          "assembly": "Push ?accounts",
          "explain": "push constant ?accounts"
        }
      ]
    },
    {
      "initialPc": 1310,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "21",
      "sourceCode": "    accounts[acct].balance -= amount",
      "assembly": [
        {
          "assembly": "LoadVar acct",
          "explain": "push the value of acct"
        }
      ]
    },
    {
      "initialPc": 1311,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "21",
      "sourceCode": "    accounts[acct].balance -= amount",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 1312,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "21",
      "sourceCode": "    accounts[acct].balance -= amount",
      "assembly": [
        {
          "assembly": "Push \"balance\"",
          "explain": "push constant \"balance\""
        }
      ]
    },
    {
      "initialPc": 1313,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "21",
      "sourceCode": "    accounts[acct].balance -= amount",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 1314,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "21",
      "sourceCode": "    accounts[acct].balance -= amount",
      "assembly": [
        {
          "assembly": "Dup",
          "explain": "push a copy of the top value on the stack"
        }
      ]
    },
    {
      "initialPc": 1315,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "21",
      "sourceCode": "    accounts[acct].balance -= amount",
      "assembly": [
        {
          "assembly": "Load",
          "explain": "pop an address and push the value at the address"
        }
      ]
    },
    {
      "initialPc": 1316,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "21",
      "sourceCode": "    accounts[acct].balance -= amount",
      "assembly": [
        {
          "assembly": "LoadVar amount",
          "explain": "push the value of amount"
        }
      ]
    },
    {
      "initialPc": 1317,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "21",
      "sourceCode": "    accounts[acct].balance -= amount",
      "assembly": [
        {
          "assembly": "DelVar amount",
          "explain": "delete method variable amount"
        }
      ]
    },
    {
      "initialPc": 1318,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "21",
      "sourceCode": "    accounts[acct].balance -= amount",
      "assembly": [
        {
          "assembly": "2-ary -",
          "explain": "pop 2 values and push the result of applying -"
        }
      ]
    },
    {
      "initialPc": 1319,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "21",
      "sourceCode": "    accounts[acct].balance -= amount",
      "assembly": [
        {
          "assembly": "Store",
          "explain": "pop a value and an address and store the value at the address"
        }
      ]
    },
    {
      "initialPc": 1320,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "22",
      "sourceCode": "    release(?accounts[acct].lock)",
      "assembly": [
        {
          "assembly": "Push ?accounts",
          "explain": "push constant ?accounts"
        }
      ]
    },
    {
      "initialPc": 1321,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "22",
      "sourceCode": "    release(?accounts[acct].lock)",
      "assembly": [
        {
          "assembly": "LoadVar acct",
          "explain": "push the value of acct"
        }
      ]
    },
    {
      "initialPc": 1322,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "22",
      "sourceCode": "    release(?accounts[acct].lock)",
      "assembly": [
        {
          "assembly": "DelVar acct",
          "explain": "delete method variable acct"
        }
      ]
    },
    {
      "initialPc": 1323,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "22",
      "sourceCode": "    release(?accounts[acct].lock)",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 1324,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "22",
      "sourceCode": "    release(?accounts[acct].lock)",
      "assembly": [
        {
          "assembly": "Push \"lock\"",
          "explain": "push constant \"lock\""
        }
      ]
    },
    {
      "initialPc": 1325,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "22",
      "sourceCode": "    release(?accounts[acct].lock)",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 1326,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "22",
      "sourceCode": "    release(?accounts[acct].lock)",
      "assembly": [
        {
          "assembly": "Apply PC(973)",
          "explain": "call method PC(973)"
        }
      ]
    },
    {
      "initialPc": 1327,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "22",
      "sourceCode": "    release(?accounts[acct].lock)",
      "assembly": [
        {
          "assembly": "Pop",
          "explain": "discard the top value on the stack"
        }
      ]
    },
    {
      "initialPc": 1328,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "23",
      "sourceCode": "    success = True",
      "assembly": [
        {
          "assembly": "Push True",
          "explain": "push constant True"
        }
      ]
    },
    {
      "initialPc": 1329,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "23",
      "sourceCode": "    success = True",
      "assembly": [
        {
          "assembly": "StoreVar success",
          "explain": "pop a value and store in success"
        }
      ]
    },
    {
      "initialPc": 1330,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "18",
      "sourceCode": "def atm_withdraw(acct, amount) returns success: # withdraw amount from acct",
      "assembly": [
        {
          "assembly": "ReturnOp(success)",
          "explain": "restore caller method state and push success"
        }
      ]
    },
    {
      "initialPc": 1331,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "18",
      "sourceCode": "def atm_withdraw(acct, amount) returns success: # withdraw amount from acct",
      "assembly": [
        {
          "assembly": "DelVar success",
          "explain": "delete method variable success"
        }
      ]
    },
    {
      "initialPc": 1332,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "25",
      "sourceCode": "def customer(atm, acct, amount):",
      "assembly": [
        {
          "assembly": "Jump 1363",
          "explain": "jump over method definition: set program counter to 1363"
        }
      ]
    },
    {
      "initialPc": 1333,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "25",
      "sourceCode": "def customer(atm, acct, amount):",
      "assembly": [
        {
          "assembly": "Frame customer(atm, acct, amount)",
          "explain": "start of method customer"
        }
      ]
    },
    {
      "initialPc": 1334,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "26",
      "sourceCode": "    assert amount >= 0",
      "assembly": [
        {
          "assembly": "AtomicInc(lazy)",
          "explain": "increment atomic counter of context; thread runs uninterrupted if larger than 0"
        }
      ]
    },
    {
      "initialPc": 1335,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "26",
      "sourceCode": "    assert amount >= 0",
      "assembly": [
        {
          "assembly": "DelVar atm",
          "explain": "delete method variable atm"
        }
      ]
    },
    {
      "initialPc": 1336,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "26",
      "sourceCode": "    assert amount >= 0",
      "assembly": [
        {
          "assembly": "ReadonlyInc",
          "explain": "increment readonly counter of context; thread cannot mutate shared variables if > 0"
        }
      ]
    },
    {
      "initialPc": 1337,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "26",
      "sourceCode": "    assert amount >= 0",
      "assembly": [
        {
          "assembly": "LoadVar amount",
          "explain": "push the value of amount"
        }
      ]
    },
    {
      "initialPc": 1338,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "26",
      "sourceCode": "    assert amount >= 0",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 1339,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "26",
      "sourceCode": "    assert amount >= 0",
      "assembly": [
        {
          "assembly": "2-ary >=",
          "explain": "pop 2 values and push the result of applying >="
        }
      ]
    },
    {
      "initialPc": 1340,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "26",
      "sourceCode": "    assert amount >= 0",
      "assembly": [
        {
          "assembly": "Assert",
          "explain": "pop a condition and raise exception if condition is false"
        }
      ]
    },
    {
      "initialPc": 1341,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "26",
      "sourceCode": "    assert amount >= 0",
      "assembly": [
        {
          "assembly": "ReadonlyDec",
          "explain": "decrement readonly counter of context"
        }
      ]
    },
    {
      "initialPc": 1342,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "26",
      "sourceCode": "    assert amount >= 0",
      "assembly": [
        {
          "assembly": "AtomicDec",
          "explain": "decrement atomic counter of context"
        }
      ]
    },
    {
      "initialPc": 1343,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "27",
      "sourceCode": "    let bal = atm_check_balance(acct):",
      "assembly": [
        {
          "assembly": "LoadVar acct",
          "explain": "push the value of acct"
        }
      ]
    },
    {
      "initialPc": 1344,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "27",
      "sourceCode": "    let bal = atm_check_balance(acct):",
      "assembly": [
        {
          "assembly": "Apply PC(1267)",
          "explain": "call method PC(1267)"
        }
      ]
    },
    {
      "initialPc": 1345,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "27",
      "sourceCode": "    let bal = atm_check_balance(acct):",
      "assembly": [
        {
          "assembly": "StoreVar bal",
          "explain": "pop a value and store in bal"
        }
      ]
    },
    {
      "initialPc": 1346,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "28",
      "sourceCode": "        if amount <= bal:",
      "assembly": [
        {
          "assembly": "LoadVar amount",
          "explain": "push the value of amount"
        }
      ]
    },
    {
      "initialPc": 1347,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "28",
      "sourceCode": "        if amount <= bal:",
      "assembly": [
        {
          "assembly": "LoadVar bal",
          "explain": "push the value of bal"
        }
      ]
    },
    {
      "initialPc": 1348,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "28",
      "sourceCode": "        if amount <= bal:",
      "assembly": [
        {
          "assembly": "DelVar bal",
          "explain": "delete method variable bal"
        }
      ]
    },
    {
      "initialPc": 1349,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "28",
      "sourceCode": "        if amount <= bal:",
      "assembly": [
        {
          "assembly": "2-ary <=",
          "explain": "pop 2 values and push the result of applying <="
        }
      ]
    },
    {
      "initialPc": 1350,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "28",
      "sourceCode": "        if amount <= bal:",
      "assembly": [
        {
          "assembly": "JumpCond False 1360",
          "explain": "pop a value and jump to 1360 if the value is False"
        }
      ]
    },
    {
      "initialPc": 1351,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "29",
      "sourceCode": "            atm_withdraw(acct, amount)",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "building a tuple: push constant ()"
        }
      ]
    },
    {
      "initialPc": 1352,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "29",
      "sourceCode": "            atm_withdraw(acct, amount)",
      "assembly": [
        {
          "assembly": "LoadVar acct",
          "explain": "push the value of acct"
        }
      ]
    },
    {
      "initialPc": 1353,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "29",
      "sourceCode": "            atm_withdraw(acct, amount)",
      "assembly": [
        {
          "assembly": "DelVar acct",
          "explain": "delete method variable acct"
        }
      ]
    },
    {
      "initialPc": 1354,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "29",
      "sourceCode": "            atm_withdraw(acct, amount)",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 1355,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "29",
      "sourceCode": "            atm_withdraw(acct, amount)",
      "assembly": [
        {
          "assembly": "LoadVar amount",
          "explain": "push the value of amount"
        }
      ]
    },
    {
      "initialPc": 1356,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "29",
      "sourceCode": "            atm_withdraw(acct, amount)",
      "assembly": [
        {
          "assembly": "DelVar amount",
          "explain": "delete method variable amount"
        }
      ]
    },
    {
      "initialPc": 1357,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "29",
      "sourceCode": "            atm_withdraw(acct, amount)",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 1358,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "29",
      "sourceCode": "            atm_withdraw(acct, amount)",
      "assembly": [
        {
          "assembly": "Apply PC(1293)",
          "explain": "call method PC(1293)"
        }
      ]
    },
    {
      "initialPc": 1359,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "29",
      "sourceCode": "            atm_withdraw(acct, amount)",
      "assembly": [
        {
          "assembly": "Pop",
          "explain": "discard the top value on the stack"
        }
      ]
    },
    {
      "initialPc": 1360,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "25",
      "sourceCode": "def customer(atm, acct, amount):",
      "assembly": [
        {
          "assembly": "DelVar acct",
          "explain": "delete method variable acct"
        }
      ]
    },
    {
      "initialPc": 1361,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "25",
      "sourceCode": "def customer(atm, acct, amount):",
      "assembly": [
        {
          "assembly": "DelVar amount",
          "explain": "delete method variable amount"
        }
      ]
    },
    {
      "initialPc": 1362,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "25",
      "sourceCode": "def customer(atm, acct, amount):",
      "assembly": [
        {
          "assembly": "ReturnOp(result. None)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 1363,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "31",
      "sourceCode": "for i in {1..N_ATMS}:",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 1364,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "31",
      "sourceCode": "for i in {1..N_ATMS}:",
      "assembly": [
        {
          "assembly": "Push 2",
          "explain": "push constant 2"
        }
      ]
    },
    {
      "initialPc": 1365,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "31",
      "sourceCode": "for i in {1..N_ATMS}:",
      "assembly": [
        {
          "assembly": "2-ary ..",
          "explain": "pop 2 values and push the result of applying .."
        }
      ]
    },
    {
      "initialPc": 1366,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "31",
      "sourceCode": "for i in {1..N_ATMS}:",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 1367,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "31",
      "sourceCode": "for i in {1..N_ATMS}:",
      "assembly": [
        {
          "assembly": "Cut(i)",
          "explain": "get next element and assign to i; push False or True depending on success"
        }
      ]
    },
    {
      "initialPc": 1368,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "31",
      "sourceCode": "for i in {1..N_ATMS}:",
      "assembly": [
        {
          "assembly": "JumpCond False 1390",
          "explain": "check if loop is done: pop a value and jump to 1390 if the value is False"
        }
      ]
    },
    {
      "initialPc": 1369,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "32",
      "sourceCode": "    spawn customer(i, choose({0..N_ACCOUNTS-1}),",
      "assembly": [
        {
          "assembly": "Push ?PC(1333)",
          "explain": "push constant ?PC(1333)"
        }
      ]
    },
    {
      "initialPc": 1370,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "32",
      "sourceCode": "    spawn customer(i, choose({0..N_ACCOUNTS-1}),",
      "assembly": [
        {
          "assembly": "Push ()",
          "explain": "building a tuple: push constant ()"
        }
      ]
    },
    {
      "initialPc": 1371,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "32",
      "sourceCode": "    spawn customer(i, choose({0..N_ACCOUNTS-1}),",
      "assembly": [
        {
          "assembly": "LoadVar i",
          "explain": "push the value of i"
        }
      ]
    },
    {
      "initialPc": 1372,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "32",
      "sourceCode": "    spawn customer(i, choose({0..N_ACCOUNTS-1}),",
      "assembly": [
        {
          "assembly": "DelVar i",
          "explain": "delete method variable i"
        }
      ]
    },
    {
      "initialPc": 1373,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "32",
      "sourceCode": "    spawn customer(i, choose({0..N_ACCOUNTS-1}),",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 1374,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "32",
      "sourceCode": "    spawn customer(i, choose({0..N_ACCOUNTS-1}),",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 1375,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "32",
      "sourceCode": "    spawn customer(i, choose({0..N_ACCOUNTS-1}),",
      "assembly": [
        {
          "assembly": "Push 2",
          "explain": "push constant 2"
        }
      ]
    },
    {
      "initialPc": 1376,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "32",
      "sourceCode": "    spawn customer(i, choose({0..N_ACCOUNTS-1}),",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 1377,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "32",
      "sourceCode": "    spawn customer(i, choose({0..N_ACCOUNTS-1}),",
      "assembly": [
        {
          "assembly": "2-ary -",
          "explain": "pop 2 values and push the result of applying -"
        }
      ]
    },
    {
      "initialPc": 1378,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "32",
      "sourceCode": "    spawn customer(i, choose({0..N_ACCOUNTS-1}),",
      "assembly": [
        {
          "assembly": "2-ary ..",
          "explain": "pop 2 values and push the result of applying .."
        }
      ]
    },
    {
      "initialPc": 1379,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "32",
      "sourceCode": "    spawn customer(i, choose({0..N_ACCOUNTS-1}),",
      "assembly": [
        {
          "assembly": "Choose",
          "explain": "pop a set value and push one of its elements"
        }
      ]
    },
    {
      "initialPc": 1380,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "32",
      "sourceCode": "    spawn customer(i, choose({0..N_ACCOUNTS-1}),",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 1381,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "33",
      "sourceCode": "                      choose({0..MAX_BALANCE}))",
      "assembly": [
        {
          "assembly": "Push 0",
          "explain": "push constant 0"
        }
      ]
    },
    {
      "initialPc": 1382,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "33",
      "sourceCode": "                      choose({0..MAX_BALANCE}))",
      "assembly": [
        {
          "assembly": "Push 1",
          "explain": "push constant 1"
        }
      ]
    },
    {
      "initialPc": 1383,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "33",
      "sourceCode": "                      choose({0..MAX_BALANCE}))",
      "assembly": [
        {
          "assembly": "2-ary ..",
          "explain": "pop 2 values and push the result of applying .."
        }
      ]
    },
    {
      "initialPc": 1384,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "33",
      "sourceCode": "                      choose({0..MAX_BALANCE}))",
      "assembly": [
        {
          "assembly": "Choose",
          "explain": "pop a set value and push one of its elements"
        }
      ]
    },
    {
      "initialPc": 1385,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "32",
      "sourceCode": "    spawn customer(i, choose({0..N_ACCOUNTS-1}),",
      "assembly": [
        {
          "assembly": "2-ary ListAdd",
          "explain": "pop 2 values and push the result of applying ListAdd"
        }
      ]
    },
    {
      "initialPc": 1386,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "32",
      "sourceCode": "    spawn customer(i, choose({0..N_ACCOUNTS-1}),",
      "assembly": [
        {
          "assembly": "2-ary AddArg",
          "explain": "pop 2 values and push the result of applying AddArg"
        }
      ]
    },
    {
      "initialPc": 1387,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "32",
      "sourceCode": "    spawn customer(i, choose({0..N_ACCOUNTS-1}),",
      "assembly": [
        {
          "assembly": "Push {:}",
          "explain": "push constant {:}"
        }
      ]
    },
    {
      "initialPc": 1388,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "32",
      "sourceCode": "    spawn customer(i, choose({0..N_ACCOUNTS-1}),",
      "assembly": [
        {
          "assembly": "Spawn",
          "explain": "pop thread-local state, argument, and pc and spawn a new thread"
        }
      ]
    },
    {
      "initialPc": 1389,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "31",
      "sourceCode": "for i in {1..N_ATMS}:",
      "assembly": [
        {
          "assembly": "Jump 1367",
          "explain": "set program counter to 1367"
        }
      ]
    },
    {
      "initialPc": 1390,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "1",
      "sourceCode": "from synch import Lock, acquire, release",
      "assembly": [
        {
          "assembly": "DelVar i",
          "explain": "delete method variable i"
        }
      ]
    },
    {
      "initialPc": 1391,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "1",
      "sourceCode": "from synch import Lock, acquire, release",
      "assembly": [
        {
          "assembly": "ReturnOp(result. None)",
          "explain": "restore caller method state and push result"
        }
      ]
    },
    {
      "initialPc": 1392,
      "file": "/var/folders/6n/pjbfqj310fz0rt3tlz28gcdc0000gn/T/tmpoigkn1jf/atm.hny",
      "line": "1",
      "sourceCode": "from synch import Lock, acquire, release",
      "assembly": [
        {
          "assembly": "DelVar result",
          "explain": "delete method variable result"
        }
      ]
    }
  ]
}