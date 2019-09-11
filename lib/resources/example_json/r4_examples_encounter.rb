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
        "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Encounter</b></p><p><b>Patient</b>: SMART, JOE</p><p><b>Location</b>: Baseline East Medical Center, BE Hospital, BE CT</p><p><b>Type</b>: Inpatient</p><p><b>Service Type</b>: Emergency Medicine</p><p><b>Class</b>: inpatient encounter</p><p><b>Status</b>: In Progress</p><p><b>Period Start Date</b>: Apr 20, 2016  9:05 P.M. UTC</p><p><b>Reason For Visit</b>: Abdominal pain</p><p><b>Attending Physician</b>: Julius, Scott</p></div>"
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
      "serviceType": {
        "coding": [
          {
            "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/34",
            "code": "313004",
            "display": "Emergency Medicine",
            "userSelected": true
          },
          {
            "system": "http://snomed.info/sct",
            "code": "773568002",
            "display": "Emergency medicine (qualifier value)",
            "userSelected": false
          }
        ],
        "text": "Emergency Medicine"
      },
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
              "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Encounter</b></p><p><b>Patient</b>: SMART, JOE</p><p><b>Location</b>: Baseline East Medical Center, BE Hospital, BE CT</p><p><b>Type</b>: Inpatient</p><p><b>Service Type</b>: Emergency Medicine</p><p><b>Class</b>: inpatient encounter</p><p><b>Status</b>: In Progress</p><p><b>Period Start Date</b>: Apr 20, 2016  9:05 P.M. UTC</p><p><b>Reason For Visit</b>: Abdominal pain</p><p><b>Attending Physician</b>: Julius, Scott</p></div>"
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
            "serviceType": {
              "coding": [
                {
                  "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/34",
                  "code": "313004",
                  "display": "Emergency Medicine",
                  "userSelected": true
                }
              ],
              "text": "Emergency Medicine"
            },
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

    R4_ENCOUNTER_CREATE ||= {
      "resourceType": "Encounter",
      "status": "in-progress",
      "identifier": [
        {
          "use": "usual",
          "type": {
            "coding": [
              {
                "system": "http://hl7.org/fhir/v2/0203",
                "code": "FIN NBR"
              }
            ]
          },
          "system": "urn:oid:192.168.0.1",
          "value": "2000363999",
          "period": {
            "start": "2017-01-17T20:39:40.000Z"
          }
        }
      ],
      "type": [
        {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/v2-0004",
              "code": "O"
            }
          ]
        }
      ],
      "priority": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v3-ActPriority",
            "code": "EL"
          }
        ]
      },
      "subject": {
        "reference": "Patient/4342011"
      },
      "reasonCode": [
        {
          "text": "Neck Pain"
        }
      ],
      "hospitalization": {
        "admitSource": {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/admit-source",
              "code": "born"
            }
          ]
        },
        "dischargeDisposition": {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/discharge-disposition",
              "code": "other-hcf"
            }
          ]
        }
      },
      "location": [
        {
          "location": {
            "reference": "Location/35646787"
          }
        }
      ],
      "period": {
        "start": "2017-03-02T01:13:00Z",
  	    "end": "2017-03-05T00:00:00Z"
      },
      "participant": [
        {
          "type": [
            {
              "coding": [
                {
                  "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/333",
                  "code": "666813"
                }
              ]
            }
          ],
          "period": {
            "start": "2018-03-02T20:01:13.000Z"
          },
          "individual": {
            "reference": "Practitioner/1912007"
          }
        }
      ]
    }

    R4_ENCOUNTER_PATCH ||= [
      {
        "op": "replace",
        "path": "/period/start",
        "value":  "2015-09-01T00:00:00.000Z"
      },
      {
        "op": "replace",
        "path": "/period/end",
        "value":  "2017-09-01T00:00:00.000Z"
      },
      {
        "op": "replace",
        "path": "/type",
        "value":  [
          {
            "coding": [
              {
                "system": "http://terminology.hl7.org/CodeSystem/v2-0004",
                "code": "O",
                "display": "Outpatient",
                "userSelected": false
              }
            ]
          }
        ]
      }
    ]
  end
end
