module Cerner
  module Resources

    DSTU2_PROCEDURE_REQUEST_ENTRY ||= {
      "resourceType": "ProcedureRequest",
      "id": "44869605",
      "meta": {
          "versionId": "0",
          "lastUpdated": "2015-12-08T21:32:58.000Z"
      },
      "text": {
          "status": "generated",
          "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Procedure Request&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient Name&lt;/b&gt;: PETERS, TIMOTHY GGGGGGGGGGGGGGGGG&lt;/p&gt;&lt;p&gt;&lt;b&gt;Procedure&lt;/b&gt;: Adult Assessment HH&lt;/p&gt;&lt;p&gt;&lt;b&gt;Scheduled&lt;/b&gt;: Once&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: accepted&lt;/p&gt;&lt;p&gt;&lt;b&gt;Orderer&lt;/b&gt;: McCready, Tim&lt;/p&gt;&lt;/div&gt;"
      },
      "subject": {
          "reference": "Patient/1316024",
          "display": "PETERS, TIMOTHY GGGGGGGGGGGGGGGGG"
      },
      "code": {
          "text": "Adult Assessment HH"
      },
      "scheduledTiming": {
          "code": {
              "text": "Once"
          }
      },
      "encounter": {
          "reference": "Encounter/1565909"
      },
      "status": "accepted",
      "asNeededBoolean": true,
      "orderedOn": "2015-12-08T15:30:22.000-06:00",
      "orderer": {
          "reference": "Practitioner/1626008",
          "display": "McCreery, Scotty"
      }
    }


    DSTU2_PROCEDURE_REQUEST_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "e1930c97-a352-4774-a393-c71f791749bb",
      "type": "searchset",
      "link": [
          {
              "relation": "self",
              "url": "https://fhir-open.devcernerpowerchart.com/dstu2/2c400054-42d8-4e74-87b7-80b5bd5fde9f/ProcedureRequest?patient=1316024&_count=5"
          },
          {
              "relation": "next",
              "url": "https://fhir-open.devcernerpowerchart.com/dstu2/2c400054-42d8-4e74-87b7-80b5bd5fde9f/ProcedureRequest?patient=1316024&-pageContext=36980845_36980877_1316024_1900016_1&-pageDirection=NEXT"
          }
      ],
      "entry": [
            {
                "fullUrl": "https://fhir-open.devcernerpowerchart.com/dstu2/2c400054-42d8-4e74-87b7-80b5bd5fde9f/ProcedureRequest/44869605",
                "resource": {
                    "resourceType": "ProcedureRequest",
                    "id": "44869605",
                    "meta": {
                        "versionId": "0",
                        "lastUpdated": "2015-12-08T21:32:58.000Z"
                    },
                    "text": {
                        "status": "generated",
                        "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Procedure Request&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient Name&lt;/b&gt;: PETERS, TIMOTHY GGGGGGGGGGGGGGGGG&lt;/p&gt;&lt;p&gt;&lt;b&gt;Procedure&lt;/b&gt;: Adult Assessment HH&lt;/p&gt;&lt;p&gt;&lt;b&gt;Scheduled&lt;/b&gt;: Once&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: accepted&lt;/p&gt;&lt;p&gt;&lt;b&gt;Orderer&lt;/b&gt;: McCready, Tim&lt;/p&gt;&lt;/div&gt;"
                    },
                    "subject": {
                        "reference": "Patient/1316024",
                        "display": "PETERS, TIMOTHY GGGGGGGGGGGGGGGGG"
                    },
                    "code": {
                        "text": "Adult Assessment HH"
                    },
                    "scheduledTiming": {
                        "code": {
                            "text": "Once"
                        }
                    },
                    "encounter": {
                        "reference": "Encounter/1565909"
                    },
                    "status": "accepted",
                    "asNeededBoolean": true,
                    "orderedOn": "2015-12-08T15:30:22.000-06:00",
                    "orderer": {
                        "reference": "Practitioner/1626008",
                        "display": "McCreery, Scotty"
                    }
                }
            },
            {
                "fullUrl": "https://fhir-open.devcernerpowerchart.com/dstu2/2c400054-42d8-4e74-87b7-80b5bd5fde9f/ProcedureRequest/51919495",
                "resource": {
                    "resourceType": "ProcedureRequest",
                    "id": "51919495",
                    "meta": {
                        "versionId": "0",
                        "lastUpdated": "2016-03-23T15:50:02.000Z"
                    },
                    "text": {
                        "status": "generated",
                        "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Procedure Request&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient Name&lt;/b&gt;: PETERS, TIMOTHY GGGGGGGGGGGGGGGGG&lt;/p&gt;&lt;p&gt;&lt;b&gt;Procedure&lt;/b&gt;: Adult Assessment HH&lt;/p&gt;&lt;p&gt;&lt;b&gt;Scheduled&lt;/b&gt;: 2016-03-23T11:50:01.000-04:00&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: accepted&lt;/p&gt;&lt;p&gt;&lt;b&gt;Orderer&lt;/b&gt;: SYSTEM, SYSTEM&lt;/p&gt;&lt;/div&gt;"
                    },
                    "subject": {
                        "reference": "Patient/1316024",
                        "display": "PETERS, TIMOTHY GGGGGGGGGGGGGGGGG"
                    },
                    "code": {
                        "text": "Adult Assessment HH"
                    },
                    "scheduledDateTime": "2016-03-23T11:50:01.000-04:00",
                    "encounter": {
                        "reference": "Encounter/6024298"
                    },
                    "status": "accepted",
                    "notes": [
                        {
                            "text": "Order entered secondary to inpatient admission."
                        }
                    ],
                    "asNeededBoolean": true,
                    "orderedOn": "2016-03-23T10:50:01.000-05:00",
                    "orderer": {
                        "reference": "Practitioner/4646007",
                        "display": "Dickerson, Russell"
                    }
                }
            },
            {
                "fullUrl": "https://fhir-open.devcernerpowerchart.com/dstu2/2c400054-42d8-4e74-87b7-80b5bd5fde9f/ProcedureRequest/52016681",
                "resource": {
                    "resourceType": "ProcedureRequest",
                    "id": "52016681",
                    "meta": {
                        "versionId": "0",
                        "lastUpdated": "2016-03-24T17:45:03.000Z"
                    },
                    "text": {
                        "status": "generated",
                        "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Procedure Request&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient Name&lt;/b&gt;: PETERS, TIMOTHY GGGGGGGGGGGGGGGGG&lt;/p&gt;&lt;p&gt;&lt;b&gt;Procedure&lt;/b&gt;: Adult Assessment HH&lt;/p&gt;&lt;p&gt;&lt;b&gt;Scheduled&lt;/b&gt;: 2016-03-24T13:45:03.000-04:00&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: accepted&lt;/p&gt;&lt;p&gt;&lt;b&gt;Orderer&lt;/b&gt;: SYSTEM, SYSTEM&lt;/p&gt;&lt;/div&gt;"
                    },
                    "subject": {
                        "reference": "Patient/1316024",
                        "display": "PETERS, TIMOTHY GGGGGGGGGGGGGGGGG"
                    },
                    "code": {
                        "text": "Adult Assessment HH"
                    },
                    "scheduledDateTime": "2016-03-24T13:45:03.000-04:00",
                    "encounter": {
                        "reference": "Encounter/6038161"
                    },
                    "status": "accepted",
                    "notes": [
                        {
                            "text": "Order entered secondary to inpatient admission."
                        }
                    ],
                    "asNeededBoolean": true,
                    "orderedOn": "2016-03-24T12:45:03.000-05:00",
                    "orderer": {
                        "reference": "Practitioner/4646007",
                        "display": "Dickerson, Russell"
                    }
                }
            },
            {
                "fullUrl": "https://fhir-open.devcernerpowerchart.com/dstu2/2c400054-42d8-4e74-87b7-80b5bd5fde9f/ProcedureRequest/52409513",
                "resource": {
                    "resourceType": "ProcedureRequest",
                    "id": "52409513",
                    "meta": {
                        "versionId": "0",
                        "lastUpdated": "2016-03-29T20:36:08.000Z"
                    },
                    "text": {
                        "status": "generated",
                        "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Procedure Request&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient Name&lt;/b&gt;: PETERS, TIMOTHY GGGGGGGGGGGGGGGGG&lt;/p&gt;&lt;p&gt;&lt;b&gt;Procedure&lt;/b&gt;: Adult Assessment HH&lt;/p&gt;&lt;p&gt;&lt;b&gt;Scheduled&lt;/b&gt;: 2016-03-29T16:36:08.000-04:00&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: accepted&lt;/p&gt;&lt;p&gt;&lt;b&gt;Orderer&lt;/b&gt;: SYSTEM, SYSTEM&lt;/p&gt;&lt;/div&gt;"
                    },
                    "subject": {
                        "reference": "Patient/1316024",
                        "display": "PETERS, TIMOTHY GGGGGGGGGGGGGGGGG"
                    },
                    "code": {
                        "text": "Adult Assessment HH"
                    },
                    "scheduledDateTime": "2016-03-29T16:36:08.000-04:00",
                    "encounter": {
                        "reference": "Encounter/6090179"
                    },
                    "status": "accepted",
                    "notes": [
                        {
                            "text": "Order entered secondary to inpatient admission."
                        }
                    ],
                    "asNeededBoolean": true,
                    "orderedOn": "2016-03-29T15:36:08.000-05:00",
                    "orderer": {
                        "reference": "Practitioner/4646007",
                        "display": "Dickerson, Russell"
                    }
                }
            },
            {
                "fullUrl": "https://fhir-open.devcernerpowerchart.com/dstu2/2c400054-42d8-4e74-87b7-80b5bd5fde9f/ProcedureRequest/52479361",
                "resource": {
                    "resourceType": "ProcedureRequest",
                    "id": "52479361",
                    "meta": {
                        "versionId": "0",
                        "lastUpdated": "2016-03-30T15:38:59.000Z"
                    },
                    "text": {
                        "status": "generated",
                        "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Procedure Request&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient Name&lt;/b&gt;: PETERS, TIMOTHY GGGGGGGGGGGGGGGGG&lt;/p&gt;&lt;p&gt;&lt;b&gt;Procedure&lt;/b&gt;: Adult Assessment HH&lt;/p&gt;&lt;p&gt;&lt;b&gt;Scheduled&lt;/b&gt;: 2016-03-30T11:38:59.000-04:00&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: accepted&lt;/p&gt;&lt;p&gt;&lt;b&gt;Orderer&lt;/b&gt;: SYSTEM, SYSTEM&lt;/p&gt;&lt;/div&gt;"
                    },
                    "subject": {
                        "reference": "Patient/1316024",
                        "display": "PETERS, TIMOTHY GGGGGGGGGGGGGGGGG"
                    },
                    "code": {
                        "text": "Adult Assessment HH"
                    },
                    "scheduledDateTime": "2016-03-30T11:38:59.000-04:00",
                    "encounter": {
                        "reference": "Encounter/6097726"
                    },
                    "status": "accepted",
                    "notes": [
                        {
                            "text": "Order entered secondary to inpatient admission."
                        }
                    ],
                    "asNeededBoolean": true,
                    "orderedOn": "2016-03-30T10:38:59.000-05:00",
                    "orderer": {
                        "reference": "Practitioner/4646007",
                        "display": "Dickerson, Russell"
                    }
                }
            }
        ]
    }

  end
end
