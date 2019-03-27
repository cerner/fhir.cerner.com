module Cerner
  module Resources

    R4_ENCOUNTER ||= {
      "resourceType": "Encounter",
      "id": "4027918",
      "meta": {
        "versionId": "2",
        "lastUpdated": "2018-05-17T20:51:38.000Z"
      },
      "text": {
        "status": "generated",
        "div": "&lt;div>&lt;p>&lt;b>Encounter&lt;/b>&lt;/p>&lt;p>&lt;b>Location&lt;/b>: Baseline East Medical Center, BE Hospital, 1N, 0152, A&lt;/p>&lt;p>&lt;b>Type&lt;/b>: Inpatient&lt;/p>&lt;p>&lt;b>Class&lt;/b>: inpatient encounter&lt;/p>&lt;p>&lt;b>Status&lt;/b>: In Progress&lt;/p>&lt;p>&lt;b>Period Start Date&lt;/b>: Jun 22, 2016  9:05 P.M. UTC&lt;/p>&lt;p>&lt;b>Attending Physician&lt;/b>: Who, Doctor&lt;/p>&lt;/div>"
      },
      "identifier": [
        {
          "use": "usual",
          "type": {
            "coding": [
              {
                "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/319",
                "code": "1077",
                "display": "FIN NBR",
                "userSelected": true
              }
            ],
            "text": "FIN NBR"
          },
          "system": "urn:oid:3.3.3.3.3.3",
          "value": "20003412",
          "period": {
            "start": "2016-06-22T21:06:58.000Z"
          }
        }
      ],
      "status": "in-progress",
      "class": {
        "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode",
        "code": "IMP",
        "display": "inpatient encounter",
        "userSelected": false
      },
      "type": [
        {
          "coding": [
            {
              "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/71",
              "code": "309308",
              "display": "Inpatient",
              "userSelected": true
            }
          ],
          "text": "Inpatient"
        }
      ],
      "subject": {
        "reference": "Patient/4342010",
        "display": "SMART, JOE"
      },
      "participant": [
        {
          "type": [
            {
              "coding": [
                {
                  "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/333",
                  "code": "1116",
                  "display": "Admitting Physician",
                  "userSelected": true
                }
              ],
              "text": "Admitting Physician"
            }
          ],
          "period": {
            "start": "2016-11-09T18:07:16.000Z"
          },
          "individual": {
            "reference": "Practitioner/1",
            "display": "Who, Doctor"
          }
        },
        {
          "type": [
            {
              "coding": [
                {
                  "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/333",
                  "code": "1119",
                  "display": "Attending Physician",
                  "userSelected": true
                }
              ],
              "text": "Attending Physician"
            }
          ],
          "period": {
            "start": "2016-06-22T21:06:58.000Z"
          },
          "individual": {
            "reference": "Practitioner/1912333",
            "display": "Forrest, Fhir"
          }
        },
        {
          "type": [
            {
              "coding": [
                {
                  "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/333",
                  "code": "1123",
                  "display": "Ordering Physician",
                  "userSelected": true
                }
              ],
              "text": "Ordering Physician"
            }
          ],
          "period": {
            "start": "2016-06-27T15:03:36.000Z"
          },
          "individual": {
            "reference": "Practitioner/1818009",
            "display": "Song, River"
          }
        },
        {
          "type": [
            {
              "coding": [
                {
                  "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/333",
                  "code": "1124",
                  "display": "Other",
                  "userSelected": true
                }
              ],
              "text": "Other"
            }
          ],
          "period": {
            "start": "2016-06-23T18:34:38.000Z",
            "end": "2016-06-23T18:34:38.000Z"
          },
          "individual": {
            "reference": "Practitioner/1590015",
            "display": "Strange, Doctor"
          }
        },
        {
          "type": [
            {
              "coding": [
                {
                  "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/333",
                  "code": "1126",
                  "display": "Referring Physician",
                  "userSelected": true
                }
              ],
              "text": "Referring Physician"
            }
          ],
          "period": {
            "start": "2016-06-22T21:06:58.000Z"
          },
          "individual": {
            "reference": "Practitioner/2101015",
            "display": "Dolittle, Doctor"
          }
        }
      ],
      "period": {
        "start": "2016-06-22T21:05:00.000Z"
      },
      "location": [
        {
          "location": {
            "reference": "Location/35646785",
            "display": "Baseline East Medical Center, BE Hospital, 1N, 0152, A"
          },
          "status": "active"
        }
      ],
      "serviceProvider": {
        "reference": "Organization/619848"
      }
    }

    R4_ENCOUNTER_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "21945492-aaba-4ea1-b62a-04cc38d956f5",
      "type": "searchset",
      "total": 1,
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-ehr.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Encounter?patient=4342010"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-ehr.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Encounter/4027918",
          "resource": {
            "resourceType": "Encounter",
            "id": "4027918",
            "meta": {
              "versionId": "2",
              "lastUpdated": "2018-05-17T20:51:38.000Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div>&lt;p>&lt;b>Encounter&lt;/b>&lt;/p>&lt;p>&lt;b>Location&lt;/b>: Baseline East Medical Center, BE Hospital, 1N, 0152, A&lt;/p>&lt;p>&lt;b>Type&lt;/b>: Inpatient&lt;/p>&lt;p>&lt;b>Class&lt;/b>: inpatient encounter&lt;/p>&lt;p>&lt;b>Status&lt;/b>: In Progress&lt;/p>&lt;p>&lt;b>Period Start Date&lt;/b>: Jun 22, 2016  9:05 P.M. UTC&lt;/p>&lt;p>&lt;b>Attending Physician&lt;/b>: Who, Doctor&lt;/p>&lt;/div>"
            },
            "identifier": [
              {
                "use": "usual",
                "type": {
                  "coding": [
                    {
                      "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/319",
                      "code": "1077",
                      "display": "FIN NBR",
                      "userSelected": true
                    }
                  ],
                  "text": "FIN NBR"
                },
                "system": "urn:oid:3.3.3.3.3.3",
                "value": "20003412",
                "period": {
                  "start": "2016-06-22T21:06:58.000Z"
                }
              }
            ],
            "status": "in-progress",
            "class": {
              "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode",
              "code": "IMP",
              "display": "inpatient encounter",
              "userSelected": false
            },
            "type": [
              {
                "coding": [
                  {
                    "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/71",
                    "code": "309308",
                    "display": "Inpatient",
                    "userSelected": true
                  }
                ],
                "text": "Inpatient"
              }
            ],
            "subject": {
              "reference": "Patient/4342010",
              "display": "SMART, JOE"
            },
            "participant": [
              {
                "type": [
                  {
                    "coding": [
                      {
                        "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/333",
                        "code": "1116",
                        "display": "Admitting Physician",
                        "userSelected": true
                      }
                    ],
                    "text": "Admitting Physician"
                  }
                ],
                "period": {
                  "start": "2016-11-09T18:07:16.000Z"
                },
                "individual": {
                  "reference": "Practitioner/1",
                  "display": "Who, Doctor"
                }
              },
              {
                "type": [
                  {
                    "coding": [
                      {
                        "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/333",
                        "code": "1119",
                        "display": "Attending Physician",
                        "userSelected": true
                      }
                    ],
                    "text": "Attending Physician"
                  }
                ],
                "period": {
                  "start": "2016-06-22T21:06:58.000Z"
                },
                "individual": {
                  "reference": "Practitioner/1912333",
                  "display": "Forrest, Fhir"
                }
              },
              {
                "type": [
                  {
                    "coding": [
                      {
                        "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/333",
                        "code": "1123",
                        "display": "Ordering Physician",
                        "userSelected": true
                      }
                    ],
                    "text": "Ordering Physician"
                  }
                ],
                "period": {
                  "start": "2016-06-27T15:03:36.000Z"
                },
                "individual": {
                  "reference": "Practitioner/1818009",
                  "display": "Song, River"
                }
              },
              {
                "type": [
                  {
                    "coding": [
                      {
                        "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/333",
                        "code": "1124",
                        "display": "Other",
                        "userSelected": true
                      }
                    ],
                    "text": "Other"
                  }
                ],
                "period": {
                  "start": "2016-06-23T18:34:38.000Z",
                  "end": "2016-06-23T18:34:38.000Z"
                },
                "individual": {
                  "reference": "Practitioner/1590015",
                  "display": "Strange, Doctor"
                }
              },
              {
                "type": [
                  {
                    "coding": [
                      {
                        "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/333",
                        "code": "1126",
                        "display": "Referring Physician",
                        "userSelected": true
                      }
                    ],
                    "text": "Referring Physician"
                  }
                ],
                "period": {
                  "start": "2016-06-22T21:06:58.000Z"
                },
                "individual": {
                  "reference": "Practitioner/2101015",
                  "display": "Dolittle, Doctor"
                }
              }
            ],
            "period": {
              "start": "2016-06-22T21:05:00.000Z"
            },
            "location": [
              {
                "location": {
                  "reference": "Location/35646785",
                  "display": "Baseline East Medical Center, BE Hospital, 1N, 0152, A"
                },
                "status": "active"
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
