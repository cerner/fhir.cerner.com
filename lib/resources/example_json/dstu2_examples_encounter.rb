module Cerner
  module Resources

    DSTU2_ENCOUNTER ||=
      {
        "resourceType": "Encounter",
        "id": "8124712",
        "meta": {
          "versionId": "0",
          "lastUpdated": "2016-02-15T18:57:38.000Z"
        },
        "text": {
          "status": "generated",
          "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Encounter&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Location&lt;/b&gt;: Baseline West Medical Center&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Emergency&lt;/p&gt;&lt;p&gt;&lt;b&gt;Class&lt;/b&gt;: Outpatient&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Period Start Date&lt;/b&gt;: Fri Jan  1 18:56:00 2016 (UTC)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Reason For Visit&lt;/b&gt;: Pain in leg&lt;/p&gt;&lt;p&gt;&lt;b&gt;Attending Physician&lt;/b&gt;: Pond, Amy&lt;/p&gt;&lt;/div&gt;"
        },
        "contained": [
          {
            "resourceType": "Location",
            "id": "d312719",
            "type": {
              "coding": [
                {
                  "system": "http://hl7.org/fhir/v3/RoleCode",
                  "code": "PTRES",
                  "display": "Patient's Residence",
                  "userSelected": false
                }
              ],
              "text": "Home"
            }
          },
          {
            "resourceType": "Location",
            "id": "o589723",
            "name": "Baseline West Medical Center",
            "type": {
              "coding": [
                {
                  "system": "http://hl7.org/fhir/v3/RoleCode",
                  "code": "ER",
                  "display": "Emergency room",
                  "userSelected": false
                }
              ],
              "text": "Emergency Room - Hospital"
            }
          }
        ],
        "identifier": [
          {
            "use": "usual",
            "type": {
              "text": "FIN NBR"
            },
            "value": "200124881",
            "period": {
              "start": "2016-02-15T18:57:37.000Z"
            }
          }
        ],
        "status": "in-progress",
        "class": "outpatient",
        "type": [
          {
            "text": "Emergency"
          }
        ],
        "priority": {
          "coding": [
            {
              "system": "http://hl7.org/fhir/encounter-priority",
              "code": "emg",
              "display": "Emergency",
              "userSelected": false
            }
          ],
          "text": "Emergency"
        },
        "patient": {
          "reference": "Patient/9823498",
          "display": "Song, River"
        },
        "participant": [
          {
            "type": [
              {
                "coding": [
                  {
                    "system": "http://hl7.org/fhir/v3/ParticipationType",
                    "code": "ATND",
                    "display": "attender",
                    "userSelected": false
                  }
                ],
                "text": "Attending Physician"
              }
            ],
            "period": {
              "start": "2016-02-15T18:57:37.000Z"
            },
            "individual": {
              "reference": "Practitioner/9349712",
              "display": "Pond, Amy"
            }
          }
        ],
        "period": {
          "start": "2016-01-01T18:56:00.000Z"
        },
        "reason": [
          {
            "text": "Pain in leg"
          }
        ],
        "hospitalization": {
          "admitSource": {
            "coding": [
              {
                "system": "http://hl7.org/fhir/admit-source",
                "code": "emd",
                "display": "From accident/emergency department",
                "userSelected": false
              }
            ],
            "text": "Emergency Room"
          },
          "dietPreference": [
            {
              "coding": [
                {
                  "system": "http://hl7.org/fhir/diet",
                  "code": "vegan",
                  "display": "Vegan",
                  "userSelected": false
                }
              ],
              "text": "Vegan"
            }
          ],
          "specialCourtesy": [
            {
              "coding": [
                {
                  "system": "http://hl7.org/fhir/v3/EncounterSpecialCourtesy",
                  "code": "VIP",
                  "display": "very important person",
                  "userSelected": false
                }
              ],
              "text": "Yes"
            }
          ],
          "specialArrangement": [
            {
              "coding": [
                {
                  "system": "http://hl7.org/fhir/encounter-special-arrangements",
                  "code": "wheel",
                  "display": "Wheelchair",
                  "userSelected": false
                }
              ],
              "text": "Wheelchair/Stretcher"
            }
          ],
          "destination": {
            "reference": "#d312719",
            "display": "Home"
          },
          "dischargeDisposition": {
            "coding": [
              {
                "system": "http://hl7.org/fhir/discharge-disposition",
                "code": "home",
                "display": "Home",
                "userSelected": false
              }
            ],
            "text": "Self Care"
          }
        },
        "location": [
          {
            "location": {
              "reference": "#o589723",
              "display": "Baseline West Medical Center"
            },
            "status": "active"
          }
        ],
        "serviceProvider": {
          "reference": "Organization/619848"
        }
      }

    DSTU2_ENCOUNTER_BUNDLE ||=
      {
        "resourceType": "Bundle",
        "id": "8f6ceb97-af79-4cf1-b996-d7589b6eff7a",
        "type": "searchset",
        "total": 2,
        "link": [
          {
            "relation": "self",
            "url": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Encounter?patient=9823498"
          }
        ],
        "entry": [
          {
            "fullUrl": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Encounter/8124712",
            "resource": DSTU2_ENCOUNTER
          },
          {
            "fullUrl": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Encounter/89723347",
            "resource": {
              "resourceType": "Encounter",
              "id": "89723347",
              "meta": {
                "versionId": "0",
                "lastUpdated": "2016-07-21T11:25:40.000Z"
              },
              "text": {
                "status": "generated",
                "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Encounter&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Location&lt;/b&gt;: Baseline East Medical Center&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Outpatient&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Discharged&lt;/p&gt;&lt;p&gt;&lt;b&gt;Period Start Date&lt;/b&gt;: Fri Apr  1 18:56:00 2016 (UTC)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Period End Date&lt;/b&gt;: Wed Jun  1 18:56:00 2016 (UTC)&lt;/p&gt;&lt;/div&gt;"
              },
              "identifier": [
                {
                  "use": "usual",
                  "type": {
                    "text": "FIN NBR"
                  },
                  "value": "20013481",
                  "period": {
                    "start": "2016-07-21T11:25:40.000Z"
                  }
                }
              ],
              "status": "finished",
              "class": "outpatient",
              "type": [
                {
                  "text": "Outpatient"
                }
              ],
              "patient": {
                "reference": "Patient/9823498",
                "display": "Song, River"
              },
              "participant": [
                {
                  "type": [
                    {
                      "coding": [
                        {
                          "system": "http://hl7.org/fhir/v3/ParticipationType",
                          "code": "ATND",
                          "display": "attender",
                          "userSelected": false
                        }
                      ],
                      "text": "Attending Physician"
                    }
                  ],
                  "period": {
                    "start": "2016-07-20T10:36:00.000Z",
                    "end": "2016-07-20T15:36:00.000Z"
                  },
                  "individual": {
                    "reference": "Practitioner/2348712",
                    "display": "Williams, River"
                  }
                }
              ],
              "period": {
                "start": "2016-04-01T18:56:00.000Z",
                "end": "2016-06-01T18:56:00.000Z"
              },
              "location": [
                {
                  "location": {
                    "reference": "Location/4048128",
                    "display": "Baseline East Medical Center"
                  },
                  "status": "completed"
                }
              ],
              "serviceProvider": {
                "reference": "Organization/619848"
              }
            }
          }
        ]
      }

  end
end
