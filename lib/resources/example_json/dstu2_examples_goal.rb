module Cerner
  module Resources

    DSTU2_GOAL_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "5e77a562-467a-43e3-8178-d93820de6177",
      "type": "searchset",
      "total": 8,
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-open.sandboxcerner.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Goal?patient=757932"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Goal/108253193",
          "resource": {
            "resourceType": "Goal",
            "id": "108253193",
            "meta": {
              "versionId": "1473862244000",
              "lastUpdated": "2016-09-14T14:10:44.000Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Goal&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Subject&lt;/b&gt;: Cerner, Sarah&lt;/p&gt;&lt;p&gt;&lt;b&gt;Description&lt;/b&gt;: Patient Specific Goal 1&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Cancelled&lt;/p&gt;&lt;p&gt;&lt;b&gt;Start Date&lt;/b&gt;: 2016-07-14&lt;/p&gt;&lt;p&gt;&lt;b&gt;Target Date&lt;/b&gt;: 2016-07-21&lt;/p&gt;&lt;/div&gt;"
            },
            "subject": {
              "reference": "Patient/757932",
              "display": "Cerner, Sarah"
            },
            "startDate": "2016-07-14",
            "targetDate": "2016-07-21",
            "description": "Patient Specific Goal 1",
            "status": "cancelled",
            "statusDate": "2016-09-14"
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Goal/108253189",
          "resource": {
            "resourceType": "Goal",
            "id": "108253189",
            "meta": {
              "versionId": "1473862250000",
              "lastUpdated": "2016-09-14T14:10:50.000Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Goal&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Subject&lt;/b&gt;: Cerner, Sarah&lt;/p&gt;&lt;p&gt;&lt;b&gt;Description&lt;/b&gt;: Patient Specific Goal 1&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Cancelled&lt;/p&gt;&lt;p&gt;&lt;b&gt;Start Date&lt;/b&gt;: 2016-07-20&lt;/p&gt;&lt;p&gt;&lt;b&gt;Target Date&lt;/b&gt;: 2016-07-22&lt;/p&gt;&lt;/div&gt;"
            },
            "subject": {
              "reference": "Patient/757932",
              "display": "Cerner, Sarah"
            },
            "startDate": "2016-07-20",
            "targetDate": "2016-07-22",
            "description": "Patient Specific Goal 1",
            "status": "cancelled",
            "statusDate": "2016-09-14"
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Goal/115727367",
          "resource": {
            "resourceType": "Goal",
            "id": "115727367",
            "meta": {
              "versionId": "1478875242000",
              "lastUpdated": "2016-11-11T14:40:42.000Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Goal&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Subject&lt;/b&gt;: Cerner, Sarah&lt;/p&gt;&lt;p&gt;&lt;b&gt;Description&lt;/b&gt;: Patient Specific Goal 1&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: In Progress&lt;/p&gt;&lt;p&gt;&lt;b&gt;Start Date&lt;/b&gt;: 2016-09-14&lt;/p&gt;&lt;p&gt;&lt;b&gt;Target Date&lt;/b&gt;: 2016-09-30&lt;/p&gt;&lt;/div&gt;"
            },
            "subject": {
              "reference": "Patient/757932",
              "display": "Cerner, Sarah"
            },
            "startDate": "2016-09-14",
            "targetDate": "2016-09-30",
            "category": [
              {
                "coding": [
                  {
                    "system": "http://hl7.org/fhir/goal-category",
                    "code": "behavioral",
                    "display": "behavioral",
                    "userSelected": false
                  }
                ],
                "text": "Behavioral"
              }
            ],
            "description": "Patient Specific Goal 1",
            "status": "in-progress",
            "statusDate": "2016-09-14",
            "note": [
              {
                "authorReference": {
                  "reference": "Practitioner/1590015",
                  "display": "Forrest, Fhir"
                },
                "time": "2016-11-11T14:40:42.000Z",
                "text": "This is a freetext goal."
              }
            ]
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Goal/118026271",
          "resource": {
            "resourceType": "Goal",
            "id": "118026271",
            "meta": {
              "versionId": "1474926216000",
              "lastUpdated": "2016-09-26T21:43:36.000Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Goal&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Subject&lt;/b&gt;: Cerner, Sarah&lt;/p&gt;&lt;p&gt;&lt;b&gt;Description&lt;/b&gt;: Test Goal&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Cancelled&lt;/p&gt;&lt;p&gt;&lt;b&gt;Start Date&lt;/b&gt;: 2016-09-19&lt;/p&gt;&lt;/div&gt;"
            },
            "subject": {
              "reference": "Patient/757932",
              "display": "Cerner, Sarah"
            },
            "startDate": "2016-09-19",
            "description": "Test Goal",
            "status": "cancelled",
            "statusDate": "2016-09-26"
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Goal/118026293",
          "resource": {
            "resourceType": "Goal",
            "id": "118026293",
            "meta": {
              "versionId": "1474926499000",
              "lastUpdated": "2016-09-26T21:48:19.000Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Goal&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Subject&lt;/b&gt;: Cerner, Sarah&lt;/p&gt;&lt;p&gt;&lt;b&gt;Description&lt;/b&gt;: Met Goal&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Achieved&lt;/p&gt;&lt;p&gt;&lt;b&gt;Start Date&lt;/b&gt;: 2016-09-20&lt;/p&gt;&lt;/div&gt;"
            },
            "subject": {
              "reference": "Patient/757932",
              "display": "Cerner, Sarah"
            },
            "startDate": "2016-09-20",
            "description": "Met Goal",
            "status": "achieved",
            "statusDate": "2016-09-26"
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Goal/118080571",
          "resource": {
            "resourceType": "Goal",
            "id": "118080571",
            "meta": {
              "versionId": "1478875353000",
              "lastUpdated": "2016-11-11T14:42:33.000Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Goal&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Subject&lt;/b&gt;: Cerner, Sarah&lt;/p&gt;&lt;p&gt;&lt;b&gt;Description&lt;/b&gt;: Goal with in-progress status&lt;/p&gt;&lt;p&gt;&lt;b&gt;Author&lt;/b&gt;: Cerner, Sarah&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: In Progress&lt;/p&gt;&lt;p&gt;&lt;b&gt;Start Date&lt;/b&gt;: 2016-09-27&lt;/p&gt;&lt;p&gt;&lt;b&gt;Target Date&lt;/b&gt;: 2016-11-17&lt;/p&gt;&lt;/div&gt;"
            },
            "subject": {
              "reference": "Patient/757932",
              "display": "Cerner, Sarah"
            },
            "startDate": "2016-09-27",
            "targetDate": "2016-11-17",
            "category": [
              {
                "text": "Community"
              }
            ],
            "description": "Goal with in-progress status",
            "status": "in-progress",
            "statusDate": "2016-11-11",
            "author": {
              "reference": "Patient/757932",
              "display": "Cerner, Sarah"
            }
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Goal/118098585",
          "resource": {
            "resourceType": "Goal",
            "id": "118098585",
            "meta": {
              "versionId": "1478875260000",
              "lastUpdated": "2016-11-11T14:41:00.000Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Goal&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Subject&lt;/b&gt;: Cerner, Sarah&lt;/p&gt;&lt;p&gt;&lt;b&gt;Description&lt;/b&gt;: Another Goal with in-progress status&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: In Progress&lt;/p&gt;&lt;p&gt;&lt;b&gt;Start Date&lt;/b&gt;: 2016-09-28&lt;/p&gt;&lt;/div&gt;"
            },
            "subject": {
              "reference": "Patient/757932",
              "display": "Cerner, Sarah"
            },
            "startDate": "2016-09-28",
            "description": "Another Goal with in-progress status",
            "status": "in-progress",
            "statusDate": "2016-09-28",
            "note": [
              {
                "authorReference": {
                  "reference": "Practitioner/1590015",
                  "display": "Forrest, Fhir"
                },
                "time": "2016-11-11T14:41:00.000Z",
                "text": "Comment on why there is no status attached to this goal - need to do something."
              }
            ]
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Goal/121518549",
          "resource": {
            "resourceType": "Goal",
            "id": "121518549",
            "meta": {
              "versionId": "1478894457000",
              "lastUpdated": "2016-11-11T20:00:57.000Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Goal&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Subject&lt;/b&gt;: Cerner, Sarah&lt;/p&gt;&lt;p&gt;&lt;b&gt;Description&lt;/b&gt;: 1&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: In Progress&lt;/p&gt;&lt;p&gt;&lt;b&gt;Start Date&lt;/b&gt;: 2016-11-11&lt;/p&gt;&lt;p&gt;&lt;b&gt;Target Date&lt;/b&gt;: 2016-11-12&lt;/p&gt;&lt;/div&gt;"
            },
            "subject": {
              "reference": "Patient/757932",
              "display": "Cerner, Sarah"
            },
            "startDate": "2016-11-11",
            "targetDate": "2016-11-12",
            "description": "1",
            "status": "in-progress",
            "statusDate": "2016-11-11"
          }
        }
      ]
    }

    DSTU2_GOAL_BUNDLE_BY_ID ||= {
      "resourceType": "Bundle",
      "id": "ae6a3596-660d-4abd-8faf-d712640c4933",
      "type": "searchset",
      "total": 1,
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-open.sandboxcerner.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Goal?_id=115727367"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Goal/115727367",
          "resource": {
            "resourceType": "Goal",
            "id": "115727367",
            "meta": {
              "versionId": "1478875242000",
              "lastUpdated": "2016-11-11T14:40:42.000Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Goal&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Subject&lt;/b&gt;: Cerner, Sarah&lt;/p&gt;&lt;p&gt;&lt;b&gt;Description&lt;/b&gt;: Patient Specific Goal 1&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: In Progress&lt;/p&gt;&lt;p&gt;&lt;b&gt;Start Date&lt;/b&gt;: 2016-09-14&lt;/p&gt;&lt;p&gt;&lt;b&gt;Target Date&lt;/b&gt;: 2016-09-30&lt;/p&gt;&lt;/div&gt;"
            },
            "subject": {
              "reference": "Patient/757932",
              "display": "Cerner, Sarah"
            },
            "startDate": "2016-09-14",
            "targetDate": "2016-09-30",
            "category": [
              {
                "coding": [
                  {
                    "system": "http://hl7.org/fhir/goal-category",
                    "code": "behavioral",
                    "display": "behavioral",
                    "userSelected": false
                  }
                ],
                "text": "Behavioral"
              }
            ],
            "description": "Patient Specific Goal 1",
            "status": "in-progress",
            "statusDate": "2016-09-14",
            "note": [
              {
                "authorReference": {
                  "reference": "Practitioner/1590015",
                  "display": "Forrest, Fhir"
                },
                "time": "2016-11-11T14:40:42.000Z",
                "text": "This is a freetext goal."
              }
            ]
          }
        }
      ]
    }

    DSTU2_GOAL ||= {
      "resourceType": "Goal",
      "id": "115727367",
      "meta": {
        "versionId": "1478875242000",
        "lastUpdated": "2016-11-11T14:40:42.000Z"
      },
      "text": {
        "status": "generated",
        "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Goal&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Subject&lt;/b&gt;: Cerner, Sarah&lt;/p&gt;&lt;p&gt;&lt;b&gt;Description&lt;/b&gt;: Patient Specific Goal 1&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: In Progress&lt;/p&gt;&lt;p&gt;&lt;b&gt;Start Date&lt;/b&gt;: 2016-09-14&lt;/p&gt;&lt;p&gt;&lt;b&gt;Target Date&lt;/b&gt;: 2016-09-30&lt;/p&gt;&lt;/div&gt;"
      },
      "subject": {
        "reference": "Patient/757932",
        "display": "Cerner, Sarah"
      },
      "startDate": "2016-09-14",
      "targetDate": "2016-09-30",
      "category": [
        {
          "coding": [
            {
              "system": "http://hl7.org/fhir/goal-category",
              "code": "behavioral",
              "display": "behavioral",
              "userSelected": false
            }
          ],
          "text": "Behavioral"
        }
      ],
      "description": "Patient Specific Goal 1",
      "status": "in-progress",
      "statusDate": "2016-09-14",
      "note": [
        {
          "authorReference": {
            "reference": "Practitioner/1590015",
            "display": "Forrest, Fhir"
          },
          "time": "2016-11-11T14:40:42.000Z",
          "text": "This is a freetext goal."
        }
      ]
    }
  end
end
