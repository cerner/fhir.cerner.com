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
        "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\"&gt;&lt;p&gt;&lt;b&gt;Encounter&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: SMART, JOE&lt;/p&gt;&lt;p&gt;&lt;b&gt;Location&lt;/b&gt;: Baseline East Medical Center, BE Hospital, BE CT&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Inpatient&lt;/p&gt;&lt;p&gt;&lt;b&gt;Service Type&lt;/b&gt;: Emergency Medicine&lt;/p&gt;&lt;p&gt;&lt;b&gt;Class&lt;/b&gt;: inpatient encounter&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: In Progress&lt;/p&gt;&lt;p&gt;&lt;b&gt;Period Start Date&lt;/b&gt;: Apr 20, 2016  9:05 P.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;Reason For Visit&lt;/b&gt;: Abdominal pain&lt;/p&gt;&lt;p&gt;&lt;b&gt;Attending Physician&lt;/b&gt;: Julius, Scott&lt;/p&gt;&lt;/div&gt;"
      },
      "extension": [
        {
          "url": "https://fhir-ehr.cerner.com/r4/StructureDefinition/client-organization",
          "valueReference": {
            "reference": "Organization/675844"
          }
        },
        {
          "url": "https://fhir-ehr.cerner.com/r4/StructureDefinition/estimated-financial-responsibility-amount",
          "valueMoney": {
            "value": 60.0,
            "currency": "SEK"
          }
        },
        {
          "url": "https://fhir-ehr.cerner.com/r4/StructureDefinition/payment-collection-status",
          "valueCodeableConcept": {
            "coding": [
              {
                "system": "https://fhir.cerner.com/fb8067d7-e012-4703-8888-17b86d11f0f8/codeSet/4003489",
                "code": "40016413",
                "display": "1st Attempt - Left Message",
                "userSelected": true
              }
            ],
            "text": "1st Attempt - Left Message"
          }
        },
        {
          "url": "https://fhir-ehr.cerner.com/r4/StructureDefinition/estimated-financial-responsibility-not-collected-reason",
          "valueCodeableConcept": {
            "coding": [
              {
                "system": "https://fhir.cerner.com/fb8067d7-e012-4703-8888-17b86d11f0f8/codeSet/4660008",
                "code": "70189603",
                "display": "Under 21 Years of Age",
                "userSelected": true
              }
            ],
            "text": "Under 21 Years of Age"
          }
        }
      ],
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
              "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\"&gt;&lt;p&gt;&lt;b&gt;Encounter&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: SMART, JOE&lt;/p&gt;&lt;p&gt;&lt;b&gt;Location&lt;/b&gt;: Baseline East Medical Center, BE Hospital, BE CT&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Inpatient&lt;/p&gt;&lt;p&gt;&lt;b&gt;Service Type&lt;/b&gt;: Emergency Medicine&lt;/p&gt;&lt;p&gt;&lt;b&gt;Class&lt;/b&gt;: inpatient encounter&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: In Progress&lt;/p&gt;&lt;p&gt;&lt;b&gt;Period Start Date&lt;/b&gt;: Apr 20, 2016  9:05 P.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;Reason For Visit&lt;/b&gt;: Abdominal pain&lt;/p&gt;&lt;p&gt;&lt;b&gt;Attending Physician&lt;/b&gt;: Julius, Scott&lt;/p&gt;&lt;/div&gt;"
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
        }
      ]
    }

    R4_ENCOUNTER_CREATE ||= {
      "resourceType": "Encounter",
      "status": "in-progress",
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
      "serviceProvider": {
        "reference": "Organization/619848"
      },
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
