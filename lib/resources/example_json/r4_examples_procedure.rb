module Cerner
  module Resources

    R4_PROCEDURE_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "87489d3a-f3fe-4a1a-825c-98837f4fffeb",
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
          "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Procedure/32215695",
          "resource": {
            "resourceType": "Procedure",
            "id": "32215695",
            "meta": {
              "versionId":  "3",
              "lastUpdated": "2017-03-24T09:09:17Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\">&lt;p>&lt;b>Procedure&lt;/b>&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: PETERS, TIMOTHY&lt;/p>&lt;p>&lt;b>Procedure&lt;/b>: ADD (attention deficit disorder)&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Completed&lt;/p>&lt;p>&lt;b>Recorder&lt;/b>: Timilsina, Manisha&lt;/p>&lt;/div>"
            },
            "status": "completed",
            "code": {
              "text": "ADD (attention deficit disorder)"
            },
            "subject": {
              "reference": "Patient/1316024",
              "display": "PETERS, TIMOTHY"
            },
            "encounter": {
              "reference": "Encounter/3331933"
            },
            "_performedDateTime": {
              "extension": [
                {
                  "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
                  "valueCode": "unknown"
                }
              ]
            },
            "recorder": {
              "reference": "Practitioner/2372008",
              "display": "Timilsina, Manisha"
            },
            "note": [
              {
                "authorReference": {
                  "reference": "Practitioner/3152049",
                  "display": "V, R"
                },
                "time": "2017-03-24T09:09:17Z",
                "text": "new comment frm roshi"
              },
              {
                "authorReference": {
                  "reference": "Practitioner/2372008",
                  "display": "Timilsina, Manisha"
                },
                "time": "2017-03-24T09:06:22Z",
                "text": "new comment 3"
              },
              {
                "authorReference": {
                  "reference": "Practitioner/2372008",
                  "display": "Timilsina, Manisha"
                },
                "time": "2017-03-24T09:05:57Z",
                "text": "new comment 2"
              },
              {
                "authorReference": {
                  "reference": "Practitioner/2372008",
                  "display": "Timilsina, Manisha"
                },
                "time": "2017-03-24T09:04:26Z",
                "text": "new comment 1"
              }
            ]
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Procedure/22073557",
          "resource": {
            "resourceType": "Procedure",
            "id": "22073557",
            "meta": {
              "versionId": "0",
              "lastUpdated": "2013-02-07T22:59:00Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\">&lt;p>&lt;b>Procedure&lt;/b>&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: PETERS, TIMOTHY&lt;/p>&lt;p>&lt;b>Procedure&lt;/b>: Adenoidectomy&lt;/p>&lt;p>&lt;b>Date&lt;/b>: Feb  6, 2013&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Completed&lt;/p>&lt;p>&lt;b>Location&lt;/b>: Baseline North&lt;/p>&lt;p>&lt;b>Recorder&lt;/b>: Pujari, Veeresh&lt;/p>&lt;p>&lt;b>Performer&lt;/b>:&lt;/p>&lt;ul>&lt;li>Ginger,Roger; Healthcare professional (occupation)&lt;/li>&lt;/ul>&lt;/div>"
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
              "reference": "Encounter/1587912"
            },
            "performedDateTime": "2013-02-06",
            "recorder": {
              "reference": "Practitioner/1826009",
              "display": "Pujari, Veeresh"
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
                  "display": "Ginger,Roger"
                }
              }
            ],
            "location": {
              "display": "Baseline North"
            },
            "note": [
              {
                "authorReference": {
                  "reference": "Practitioner/1826009",
                  "display": "Pujari, Veeresh"
                },
                "time": "2013-02-07T22:59:00Z",
                "text": "Adenoidectomy testing comment."
              }
            ]
          }
        }
      ]
    }

    R4_PROCEDURE_ENTRY ||= {
      "resourceType": "Procedure",
      "id": "32215695",
      "meta": {
        "versionId": "3",
        "lastUpdated": "2017-03-24T09:09:17Z"
      },
      "text": {
        "status": "generated",
        "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\">&lt;p>&lt;b>Procedure&lt;/b>&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: PETERS, TIMOTHY&lt;/p>&lt;p>&lt;b>Procedure&lt;/b>: ADD (attention deficit disorder)&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Completed&lt;/p>&lt;p>&lt;b>Recorder&lt;/b>: Timilsina, Manisha&lt;/p>&lt;/div>"
      },
      "status": "completed",
      "code": {
        "text": "ADD (attention deficit disorder)"
      },
      "subject": {
        "reference": "Patient/1316024",
        "display": "PETERS, TIMOTHY"
      },
      "encounter": {
        "reference": "Encounter/3331933"
      },
      "_performedDateTime": {
        "extension": [
          {
            "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
            "valueCode": "unknown"
          }
        ]
      },
      "recorder": {
        "reference": "Practitioner/2372008",
        "display": "Timilsina, Manisha"
      },
      "note": [
        {
          "authorReference": {
            "reference": "Practitioner/2372008",
            "display": "Timilsina, Manisha"
          },
          "time": "2017-03-24T09:05:57Z",
          "text": "new comment 2"
        },
        {
          "authorReference": {
            "reference": "Practitioner/2372008",
            "display": "Timilsina, Manisha"
          },
          "time": "2017-03-24T09:04:26Z",
          "text": "new comment 1"
        }
      ]
    }
  end
end