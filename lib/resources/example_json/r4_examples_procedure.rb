module Cerner
  module Resources

    R4_PROCEDURE_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "a5154562-0028-4464-9b60-273f81dc71d1",
      "type": "searchset",
      "total": 2,
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Procedure?patient=1316024"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Procedure/21637617",
          "resource": {
            "resourceType": "Procedure",
            "id": "21637617",
            "meta": {
              "versionId": "1",
              "lastUpdated": "2013-04-20T13:18:49Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\">&lt;p>&lt;b>Procedure&lt;/b>&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: PETERS, TIMOTHY&lt;/p>&lt;p>&lt;b>Procedure&lt;/b>: Adenoidectomy&lt;/p>&lt;p>&lt;b>Date&lt;/b>: Apr  8, 2011&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Completed&lt;/p>&lt;p>&lt;b>Location&lt;/b>: Baseline West&lt;/p>&lt;p>&lt;b>Recorder&lt;/b>: Automation, Physician&lt;/p>&lt;p>&lt;b>Performer&lt;/b>:&lt;/p>&lt;ul>&lt;li>Naik, Girish; Healthcare professional (occupation)&lt;/li>&lt;/ul>&lt;/div>"
            },
            "status": "completed",
            "code": {
              "coding": [
                {
                  "system": "http://snomed.info/sct",
                  "code": "119954001",
                  "display": "Adenoid excision (procedure)",
                  "userSelected": true
                }
              ],
              "text": "Adenoidectomy"
            },
            "subject": {
              "reference": "Patient/1316024",
              "display": "PETERS, TIMOTHY"
            },
            "encounter": {
              "reference": "Encounter/1545906"
            },
            "performedDateTime": "2011-04-08",
            "recorder": {
              "reference": "Practitioner/1696009",
              "display": "Automation, Physician"
            },
            "performer": [
              {
                "function": {
                  "coding": [
                    {
                      "system": "http://snomed.info/sct",
                      "code": "223366009",
                      "display": "Healthcare professional (occupation)",
                      "userSelected": false
                    }
                  ],
                  "text": "Healthcare professional (occupation)"
                },
                "actor": {
                  "reference": "Practitioner/1328007",
                  "display": "Forrest, Smart"
                }
              }
            ],
            "location": {
              "display": "Baseline West"
            },
            "note": [
              {
                "authorReference": {
                  "reference": "Practitioner/1696009",
                  "display": "Automation, Physician"
                },
                "time": "2013-04-09T08:53:08Z",
                "text": "Adenoidectomy testing comment"
              }
            ]
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Procedure/21425447",
          "resource": {
            "resourceType": "Procedure",
            "id": "21425447",
            "meta": {
              "versionId": "1",
              "lastUpdated": "2013-04-09T06:59:57Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\">&lt;p>&lt;b>Procedure&lt;/b>&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: PETERS, TIMOTHY&lt;/p>&lt;p>&lt;b>Procedure&lt;/b>: Appendectomy&lt;/p>&lt;p>&lt;b>Date&lt;/b>: Jul 30, 2012&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Entered in Error&lt;/p>&lt;p>&lt;b>Recorder&lt;/b>: Forrest, Fhir&lt;/p>&lt;/div>"
            },
            "status": "entered-in-error",
            "code": {
              "coding": [
                {
                  "system": "http://snomed.info/sct",
                  "code": "80146002",
                  "display": "Appendectomy (procedure)",
                  "userSelected": true
                }
              ],
              "text": "Appendectomy"
            },
            "subject": {
              "reference": "Patient/1316024",
              "display": "PETERS, TIMOTHY"
            },
            "encounter": {
              "reference": "Encounter/1309918"
            },
            "performedDateTime": "2012-07-30",
            "recorder": {
              "reference": "Practitioner/1314012",
              "display": "Forrest, Fhir"
            }
          }
        }
      ]
    }

    R4_PROCEDURE_ENTRY ||= {
      "resourceType": "Procedure",
      "id": "21637617",
      "meta": {
        "versionId": "1",
        "lastUpdated": "2013-04-20T13:18:49Z"
      },
      "text": {
        "status": "generated",
        "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\">&lt;p>&lt;b>Procedure&lt;/b>&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: PETERS, TIMOTHY&lt;/p>&lt;p>&lt;b>Procedure&lt;/b>: Adenoidectomy&lt;/p>&lt;p>&lt;b>Date&lt;/b>: Apr  8, 2011&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Completed&lt;/p>&lt;p>&lt;b>Location&lt;/b>: Baseline West&lt;/p>&lt;p>&lt;b>Recorder&lt;/b>: Automation, Physician&lt;/p>&lt;p>&lt;b>Performer&lt;/b>:&lt;/p>&lt;ul>&lt;li>Naik, Girish; Healthcare professional (occupation)&lt;/li>&lt;/ul>&lt;/div>"
      },
      "status": "completed",
      "code": {
        "coding": [
          {
            "system": "http://snomed.info/sct",
            "code": "119954001",
            "display": "Adenoid excision (procedure)",
            "userSelected": true
          }
        ],
        "text": "Adenoidectomy"
      },
      "subject": {
        "reference": "Patient/1316024",
        "display": "PETERS, TIMOTHY"
      },
      "encounter": {
        "reference": "Encounter/1545906"
      },
      "performedDateTime": "2011-04-08",
      "recorder": {
        "reference": "Practitioner/1696009",
        "display": "Automation, Physician"
      },
      "performer": [
        {
          "function": {
            "coding": [
              {
                "system": "http://snomed.info/sct",
                "code": "223366009",
                "display": "Healthcare professional (occupation)",
                "userSelected": false
              }
            ],
            "text": "Healthcare professional (occupation)"
          },
          "actor": {
            "reference": "Practitioner/1328007",
            "display": "Forrest, Smart"
          }
        }
      ],
      "location": {
        "display": "Baseline West"
      },
      "note": [
        {
          "authorReference": {
            "reference": "Practitioner/1696009",
            "display": "Automation, Physician"
          },
          "time": "2013-04-09T08:53:08Z",
          "text": "Adenoidectomy testing comment"
        }
      ]
    }

    R4_PROCEDURE_CREATE ||= {
      "resourceType": "Procedure",
      "status": "completed",
      "subject": {
        "reference": "Patient/1316024",
        "display": "Tim, Peterson"
      },
      "code": {
        "coding": [
          {
            "system": "http://snomed.info/sct",
            "code": "119954001",
            "display": "Adenoid excision (procedure)",
            "userSelected": true
          }
        ],
        "text": "Adenoid excision (text)"
      },
      "encounter": {
        "reference": "Encounter/26070829"
      },
      "location": {
        "display": "Baseline East"
      },
      "performedDateTime": "2019-04-05T20:21:46Z",
      "performer": [
        {
          "function": {
            "coding": [
              {
                "system": "http://snomed.info/sct",
                "code": "223366009",
                "display": "Healthcare professional (occupation)",
                "userSelected": true
              }
            ],
            "text": "Healthcare professional (occupation)"
          },
          "actor": {
            "reference": "Practitioner/7603729",
            "display": "msmautotestuser, msmautotestuser"
          }
        }
      ],
      "note": [
        {
          "text": "Procedure comment",
          "time": "2019-04-05T20:21:46Z",
          "authorReference": {
            "reference": "Practitioner/605926"
          }
        }
      ]
    }
  end
end