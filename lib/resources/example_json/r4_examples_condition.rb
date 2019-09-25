module Cerner
  module Resources

    R4_CONDITION_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "9a115304-90d2-47d7-98c4-026f7fe1580e",
      "type": "searchset",
      "total": 1,
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-ehr.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Condition?patient=1316024"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-ehr.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Condition/p40880687",
          "resource": {
            "resourceType": "Condition",
            "id": "p40880687",
            "meta": {
              "versionId": "40880687",
              "lastUpdated": "2018-11-13T21:56:14.000Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\">&lt;p>&lt;b>Condition&lt;/b>&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: PETERS, TIMOTHY CCCC&lt;/p>&lt;p>&lt;b>Problem&lt;/b>: Pelvic mass (disorder)&lt;/p>&lt;p>&lt;b>Clinical Status&lt;/b>: Resolved&lt;/p>&lt;p>&lt;b>Verification Status&lt;/b>: Differential&lt;/p>&lt;p>&lt;b>Severity&lt;/b>: Moderate&lt;/p>&lt;p>&lt;b>Onset&lt;/b>: Jun 29, 2015&lt;/p>&lt;p>&lt;b>Resolved&lt;/b>: Jan  1, 2017&lt;/p>&lt;/div>"
            },
            "clinicalStatus": {
              "coding": [
                {
                  "system": "http://terminology.hl7.org/CodeSystem/condition-clinical",
                  "code": "resolved",
                  "display": "Resolved",
                  "userSelected": false
                }
              ],
              "text": "Resolved"
            },
            "verificationStatus": {
              "coding": [
                {
                  "system": "http://terminology.hl7.org/CodeSystem/condition-ver-status",
                  "code": "differential",
                  "display": "Differential",
                  "userSelected": false
                }
              ],
              "text": "Differential"
            },
            "category": [
              {
                "coding": [
                  {
                    "system": "http://terminology.hl7.org/CodeSystem/condition-category",
                    "code": "problem-list-item",
                    "display": "Problem List Item"
                  }
                ],
                "text": "Problem List Item"
              }
            ],
            "severity": {
              "coding": [
                {
                  "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/12022",
                  "code": "3294",
                  "display": "Moderate",
                  "userSelected": true
                },
                {
                  "system": "http://snomed.info/sct",
                  "code": "6736007",
                  "display": "Moderate",
                  "userSelected": false
                }
              ],
              "text": "Moderate"
            },
            "code": {
              "coding": [
                {
                  "system": "http://snomed.info/sct",
                  "code": "74285003",
                  "display": "Pelvic mass (disorder)",
                  "userSelected": true
                }
              ],
              "text": "Pelvic mass"
            },
            "subject": {
              "reference": "Patient/1316024",
              "display": "PETERS, TIMOTHY CCCC"
            },
            "onsetDateTime": "2015-06-29",
            "abatementDateTime": "2017-01-01",
            "recordedDate": "2018-11-13T21:56:13.000Z",
            "recorder": {
              "reference": "Practitioner/1912007",
              "display": "Forrest, Fhir"
            }
          }
        }
      ]
    }

    R4_CONDITION_ENTRY ||= {
      "fullUrl": "https://fhir-ehr.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Condition/p40880687",
      "resource": {
        "resourceType": "Condition",
        "id": "p40880687",
        "meta": {
          "versionId": "40880687",
          "lastUpdated": "2018-11-13T21:56:14.000Z"
        },
        "text": {
          "status": "generated",
          "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\">&lt;p>&lt;b>Condition&lt;/b>&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: PETERS, TIMOTHY CCCC&lt;/p>&lt;p>&lt;b>Problem&lt;/b>: Pelvic mass (disorder)&lt;/p>&lt;p>&lt;b>Clinical Status&lt;/b>: Resolved&lt;/p>&lt;p>&lt;b>Verification Status&lt;/b>: Differential&lt;/p>&lt;p>&lt;b>Severity&lt;/b>: Moderate&lt;/p>&lt;p>&lt;b>Onset&lt;/b>: Jun 29, 2015&lt;/p>&lt;p>&lt;b>Resolved&lt;/b>: Jan  1, 2017&lt;/p>&lt;/div>"
        },
        "clinicalStatus": {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/condition-clinical",
              "code": "resolved",
              "display": "Resolved",
              "userSelected": false
            }
          ],
          "text": "Resolved"
        },
        "verificationStatus": {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/condition-ver-status",
              "code": "differential",
              "display": "Differential",
              "userSelected": false
            }
          ],
          "text": "Differential"
        },
        "category": [
          {
            "coding": [
              {
                "system": "http://terminology.hl7.org/CodeSystem/condition-category",
                "code": "problem-list-item",
                "display": "Problem List Item"
              }
            ],
            "text": "Problem List Item"
          }
        ],
        "severity": {
          "coding": [
            {
              "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/12022",
              "code": "3294",
              "display": "Moderate",
              "userSelected": true
            },
            {
              "system": "http://snomed.info/sct",
              "code": "6736007",
              "display": "Moderate",
              "userSelected": false
            }
          ],
          "text": "Moderate"
        },
        "code": {
          "coding": [
            {
              "system": "http://snomed.info/sct",
              "code": "74285003",
              "display": "Pelvic mass (disorder)",
              "userSelected": true
            }
          ],
          "text": "Pelvic mass"
        },
        "subject": {
          "reference": "Patient/1316024",
          "display": "PETERS, TIMOTHY CCCC"
        },
        "onsetDateTime": "2015-06-29",
        "abatementDateTime": "2017-01-01",
        "recordedDate": "2018-11-13T21:56:13.000Z",
        "recorder": {
          "reference": "Practitioner/1912007",
          "display": "Forrest, Fhir"
        }
      }
    }

    R4_CONDITION_CREATE ||= {
      "resourceType": "Condition",
      "subject": {
        "reference": "Patient/631923"
      },
      "code": {
        "coding": [
          {
            "system": "http://snomed.info/sct",
            "code": "209832007",
            "display": "Concussion NOS (disorder)",
            "userSelected": true
          }
        ],
        "text": "Concussion with loss of consciousness"
      },
      "category": [
        {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/condition-category",
              "code": "problem-list-item"
            }
          ],
          "text": "Problem"
        }
      ],
      "clinicalStatus": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/condition-clinical",
            "code": "resolved"
          }
        ]
      },
      "verificationStatus": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/condition-ver-status",
            "code": "confirmed"
          }
        ]
      },
      "severity": {
        "coding": [
          {
            "system": "http://snomed.info/sct",
            "code": "6736007",
            "display": "Moderate"
          }
        ],
        "text": "Moderate"
      },
      "abatementDateTime": "2020-01-01",
      "onsetDateTime": "2018-01-01",
      "note": [
        {
          "authorString": "Freetext author",
          "text": "Test Comment 1"
        },
        {
          "authorReference": {
            "reference": "Practitioner/4594011",
            "display": "Leroux, Erik"
          },
          "text": "Test Comment 2"
        }
      ]
    }

    R4_CONDITION_UPDATE ||= {
      "resourceType": "Condition",
      "id": "p10070301",
      "subject": {
          "reference": "Patient/1316024"
      },
      "code": {
          "coding": [
            {
              "system": "http://snomed.info/sct",
              "code": "267079009",
              "display": "Trembles (finding)",
              "userSelected": true
            }
          ],
          "text": "Trembles"
      },
      "category": [
          {
              "coding": [
                  {
                      "system": "http://terminology.hl7.org/CodeSystem/condition-category",
                      "code": "problem-list-item"
                  }
              ],
              "text": "Problem"
          }
      ],
      "clinicalStatus": {
          "coding": [
              {
                  "system": "http://terminology.hl7.org/CodeSystem/condition-clinical",
                  "code": "resolved"
              }
          ]
      },
      "verificationStatus": {
          "coding": [
              {
                  "system": "http://terminology.hl7.org/CodeSystem/condition-ver-status",
                  "code": "differential"
              }
          ]
      },
      "severity": {
          "coding": [
              {
                  "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/12022",
                  "code": "3294",
                  "display": "Moderate",
                  "userSelected": true
              }
          ],
          "text": "Moderate"
      },
      "abatementDateTime": "2010-11-08",
      "onsetDateTime": "2000-03-10",
      "note": [
        {
          "authorReference": {
            "reference": "Practitioner/1912007",
            "display": "Test, Jack"
          },
          "text": "Test Comment"
        }
      ]
    }
  end
end
