module Cerner
    module Resources
  
        R4_OBSERVATION_BUNDLE ||=
        {
          "resourceType": "Bundle",
          "id": "79c71e5b-2793-4ace-bc5e-190e38784e80",
          "type": "searchset",
          "link": [
              {
                  "relation": "self",
                  "url": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation?patient=3998008&_count=50"
              }
          ],
          "entry": [
              {
                  "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/SH-93-5525867",
                  "resource": {
                      "resourceType": "Observation",
                      "id": "SH-93-5525867",
                      "meta": {
                          "versionId": "1252402",
                          "lastUpdated": "2016-01-26T21:58:41.000Z"
                      },
                      "text": {
                          "status": "generated",
                          "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\">&lt;p>&lt;b>Observation&lt;/b>&lt;/p>&lt;p>&lt;b>Patient Id&lt;/b>: 3998008&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Final&lt;/p>&lt;p>&lt;b>Categories&lt;/b>: Social History&lt;/p>&lt;p>&lt;b>Code&lt;/b>: Tobacco&lt;/p>&lt;p>&lt;b>Result&lt;/b>: Medium Risk&lt;/p>&lt;p>&lt;b>Issued Date&lt;/b>: Jan 26, 2016  9:58 P.M. UTC&lt;/p>&lt;/div>"
                      },
                      "status": "final",
                      "category": [
                          {
                              "coding": [
                                  {
                                      "system": "http://terminology.hl7.org/CodeSystem/observation-category",
                                      "code": "social-history",
                                      "display": "Social History"
                                  }
                              ],
                              "text": "Social History"
                          }
                      ],
                      "code": {
                          "coding": [
                              {
                                  "system": "http://snomed.info/sct",
                                  "code": "229819007",
                                  "display": "Tobacco use and exposure (observable entity)"
                              }
                          ],
                          "text": "Tobacco"
                      },
                      "subject": {
                          "reference": "Patient/3998008"
                      },
                      "issued": "2016-01-26T21:58:41.000Z",
                      "valueCodeableConcept": {
                          "coding": [
                              {
                                  "system": "http://snomed.info/sct",
                                  "code": "25594002",
                                  "display": "Moderate risk of (contextual qualifier) (qualifier value)"
                              }
                          ],
                          "text": "Medium Risk"
                      },
                      "hasMember": [
                          {
                              "reference": "Observation/SH-5525867-q6930400"
                          },
                          {
                              "reference": "Observation/SH-5525867-q6930404"
                          },
                          {
                              "reference": "Observation/SH-5525867-q6930316"
                          },
                          {
                              "reference": "Observation/SH-5525867-q6930360"
                          },
                          {
                              "reference": "Observation/SH-5525867-q6930372"
                          },
                          {
                              "reference": "Observation/SH-5525867-q6930368"
                          },
                          {
                              "reference": "Observation/SH-5525867-q6930376"
                          }
                      ]
                  }
              },
              {
                  "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/SH-5525867-q6930400",
                  "resource": {
                      "resourceType": "Observation",
                      "id": "SH-5525867-q6930400",
                      "meta": {
                          "versionId": "1252402",
                          "lastUpdated": "2016-01-26T21:58:41.000Z"
                      },
                      "text": {
                          "status": "generated",
                          "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\">&lt;p>&lt;b>Observation&lt;/b>&lt;/p>&lt;p>&lt;b>Patient Id&lt;/b>: 3998008&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Final&lt;/p>&lt;p>&lt;b>Categories&lt;/b>: Social History&lt;/p>&lt;p>&lt;b>Question&lt;/b>: SHX Tobacco use&lt;/p>&lt;p>&lt;b>Response&lt;/b>: Current some day smoker&lt;/p>&lt;p>&lt;b>Issued Date&lt;/b>: Jan 26, 2016  9:58 P.M. UTC&lt;/p>&lt;/div>"
                      },
                      "status": "final",
                      "category": [
                          {
                              "coding": [
                                  {
                                      "system": "http://terminology.hl7.org/CodeSystem/observation-category",
                                      "code": "social-history",
                                      "display": "Social History"
                                  }
                              ],
                              "text": "Social History"
                          }
                      ],
                      "code": {
                          "coding": [
                              {
                                  "system": "http://loinc.org",
                                  "code": "72166-2"
                              }
                          ],
                          "text": "SHX Tobacco use"
                      },
                      "subject": {
                          "reference": "Patient/3998008"
                      },
                      "issued": "2016-01-26T21:58:41.000Z",
                      "valueCodeableConcept": {
                          "coding": [
                              {
                                  "system": "http://snomed.info/sct",
                                  "code": "428041000124106",
                                  "display": "Occasional tobacco smoker (finding)"
                              }
                          ],
                          "text": "Current some day smoker"
                      }
                  }
              },
              {
                  "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/SH-5525867-q6930404",
                  "resource": {
                      "resourceType": "Observation",
                      "id": "SH-5525867-q6930404",
                      "meta": {
                          "versionId": "1252402",
                          "lastUpdated": "2016-01-26T21:58:41.000Z"
                      },
                      "text": {
                          "status": "generated",
                          "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\">&lt;p>&lt;b>Observation&lt;/b>&lt;/p>&lt;p>&lt;b>Patient Id&lt;/b>: 3998008&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Final&lt;/p>&lt;p>&lt;b>Categories&lt;/b>: Social History&lt;/p>&lt;p>&lt;b>Question&lt;/b>: SHX Tobacco type&lt;/p>&lt;p>&lt;b>Response&lt;/b>: Cigarettes, Chewing tobacco&lt;/p>&lt;p>&lt;b>Issued Date&lt;/b>: Jan 26, 2016  9:58 P.M. UTC&lt;/p>&lt;/div>"
                      },
                      "status": "final",
                      "category": [
                          {
                              "coding": [
                                  {
                                      "system": "http://terminology.hl7.org/CodeSystem/observation-category",
                                      "code": "social-history",
                                      "display": "Social History"
                                  }
                              ],
                              "text": "Social History"
                          }
                      ],
                      "code": {
                          "text": "SHX Tobacco type"
                      },
                      "subject": {
                          "reference": "Patient/3998008"
                      },
                      "issued": "2016-01-26T21:58:41.000Z",
                      "component": [
                          {
                              "code": {
                                  "text": "SHX Tobacco type"
                              },
                              "valueCodeableConcept": {
                                  "text": "Cigarettes"
                              }
                          },
                          {
                              "code": {
                                  "text": "SHX Tobacco type"
                              },
                              "valueCodeableConcept": {
                                  "coding": [
                                      {
                                          "system": "http://snomed.info/sct",
                                          "code": "81911001",
                                          "display": "Chewing tobacco (substance)"
                                      }
                                  ],
                                  "text": "Chewing tobacco"
                              }
                          }
                      ]
                  }
              },
              {
                  "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/SH-5525867-q6930316",
                  "resource": {
                      "resourceType": "Observation",
                      "id": "SH-5525867-q6930316",
                      "meta": {
                          "versionId": "1252402",
                          "lastUpdated": "2016-01-26T21:58:41.000Z"
                      },
                      "text": {
                          "status": "generated",
                          "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\">&lt;p>&lt;b>Observation&lt;/b>&lt;/p>&lt;p>&lt;b>Patient Id&lt;/b>: 3998008&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Final&lt;/p>&lt;p>&lt;b>Categories&lt;/b>: Social History&lt;/p>&lt;p>&lt;b>Question&lt;/b>: SHX Tobacco number of years&lt;/p>&lt;p>&lt;b>Response&lt;/b>: 10&lt;/p>&lt;p>&lt;b>Issued Date&lt;/b>: Jan 26, 2016  9:58 P.M. UTC&lt;/p>&lt;/div>"
                      },
                      "status": "final",
                      "category": [
                          {
                              "coding": [
                                  {
                                      "system": "http://terminology.hl7.org/CodeSystem/observation-category",
                                      "code": "social-history",
                                      "display": "Social History"
                                  }
                              ],
                              "text": "Social History"
                          }
                      ],
                      "code": {
                          "text": "SHX Tobacco number of years"
                      },
                      "subject": {
                          "reference": "Patient/3998008"
                      },
                      "issued": "2016-01-26T21:58:41.000Z",
                      "valueString": "10"
                  }
              },
              {
                  "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/SH-5525867-q6930360",
                  "resource": {
                      "resourceType": "Observation",
                      "id": "SH-5525867-q6930360",
                      "meta": {
                          "versionId": "1252402",
                          "lastUpdated": "2016-01-26T21:58:41.000Z"
                      },
                      "text": {
                          "status": "generated",
                          "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\">&lt;p>&lt;b>Observation&lt;/b>&lt;/p>&lt;p>&lt;b>Patient Id&lt;/b>: 3998008&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Final&lt;/p>&lt;p>&lt;b>Categories&lt;/b>: Social History&lt;/p>&lt;p>&lt;b>Question&lt;/b>: SHX Tobacco started at age&lt;/p>&lt;p>&lt;b>Response&lt;/b>: 22 Years&lt;/p>&lt;p>&lt;b>Issued Date&lt;/b>: Jan 26, 2016  9:58 P.M. UTC&lt;/p>&lt;/div>"
                      },
                      "status": "final",
                      "category": [
                          {
                              "coding": [
                                  {
                                      "system": "http://terminology.hl7.org/CodeSystem/observation-category",
                                      "code": "social-history",
                                      "display": "Social History"
                                  }
                              ],
                              "text": "Social History"
                          }
                      ],
                      "code": {
                          "text": "SHX Tobacco started at age"
                      },
                      "subject": {
                          "reference": "Patient/3998008"
                      },
                      "issued": "2016-01-26T21:58:41.000Z",
                      "valueString": "22 Years"
                  }
              },
              {
                  "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/SH-5525867-q6930372",
                  "resource": {
                      "resourceType": "Observation",
                      "id": "SH-5525867-q6930372",
                      "meta": {
                          "versionId": "1252402",
                          "lastUpdated": "2016-01-26T21:58:41.000Z"
                      },
                      "text": {
                          "status": "generated",
                          "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\">&lt;p>&lt;b>Observation&lt;/b>&lt;/p>&lt;p>&lt;b>Patient Id&lt;/b>: 3998008&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Final&lt;/p>&lt;p>&lt;b>Categories&lt;/b>: Social History&lt;/p>&lt;p>&lt;b>Question&lt;/b>: SHX Tobacco readiness to change&lt;/p>&lt;p>&lt;b>Response&lt;/b>: No&lt;/p>&lt;p>&lt;b>Issued Date&lt;/b>: Jan 26, 2016  9:58 P.M. UTC&lt;/p>&lt;/div>"
                      },
                      "status": "final",
                      "category": [
                          {
                              "coding": [
                                  {
                                      "system": "http://terminology.hl7.org/CodeSystem/observation-category",
                                      "code": "social-history",
                                      "display": "Social History"
                                  }
                              ],
                              "text": "Social History"
                          }
                      ],
                      "code": {
                          "text": "SHX Tobacco readiness to change"
                      },
                      "subject": {
                          "reference": "Patient/3998008"
                      },
                      "issued": "2016-01-26T21:58:41.000Z",
                      "valueCodeableConcept": {
                          "coding": [
                              {
                                  "system": "http://snomed.info/sct",
                                  "code": "373067005",
                                  "display": "No (qualifier value)"
                              }
                          ],
                          "text": "No"
                      }
                  }
              },
              {
                  "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/SH-5525867-q6930368",
                  "resource": {
                      "resourceType": "Observation",
                      "id": "SH-5525867-q6930368",
                      "meta": {
                          "versionId": "1252402",
                          "lastUpdated": "2016-01-26T21:58:41.000Z"
                      },
                      "text": {
                          "status": "generated",
                          "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\">&lt;p>&lt;b>Observation&lt;/b>&lt;/p>&lt;p>&lt;b>Patient Id&lt;/b>: 3998008&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Final&lt;/p>&lt;p>&lt;b>Categories&lt;/b>: Social History&lt;/p>&lt;p>&lt;b>Question&lt;/b>: SHX Tobacco previous treatment&lt;/p>&lt;p>&lt;b>Response&lt;/b>: None&lt;/p>&lt;p>&lt;b>Issued Date&lt;/b>: Jan 26, 2016  9:58 P.M. UTC&lt;/p>&lt;/div>"
                      },
                      "status": "final",
                      "category": [
                          {
                              "coding": [
                                  {
                                      "system": "http://terminology.hl7.org/CodeSystem/observation-category",
                                      "code": "social-history",
                                      "display": "Social History"
                                  }
                              ],
                              "text": "Social History"
                          }
                      ],
                      "code": {
                          "text": "SHX Tobacco previous treatment"
                      },
                      "subject": {
                          "reference": "Patient/3998008"
                      },
                      "issued": "2016-01-26T21:58:41.000Z",
                      "valueCodeableConcept": {
                          "coding": [
                              {
                                  "system": "http://snomed.info/sct",
                                  "code": "260413007",
                                  "display": "None (qualifier value)"
                              }
                          ],
                          "text": "None"
                      }
                  }
              },
              {
                  "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/SH-5525867-q6930376",
                  "resource": {
                      "resourceType": "Observation",
                      "id": "SH-5525867-q6930376",
                      "meta": {
                          "versionId": "1252402",
                          "lastUpdated": "2016-01-26T21:58:41.000Z"
                      },
                      "text": {
                          "status": "generated",
                          "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\">&lt;p>&lt;b>Observation&lt;/b>&lt;/p>&lt;p>&lt;b>Patient Id&lt;/b>: 3998008&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Final&lt;/p>&lt;p>&lt;b>Categories&lt;/b>: Social History&lt;/p>&lt;p>&lt;b>Question&lt;/b>: SHX Tobacco household concerns&lt;/p>&lt;p>&lt;b>Response&lt;/b>: Yes&lt;/p>&lt;p>&lt;b>Issued Date&lt;/b>: Jan 26, 2016  9:58 P.M. UTC&lt;/p>&lt;/div>"
                      },
                      "status": "final",
                      "category": [
                          {
                              "coding": [
                                  {
                                      "system": "http://terminology.hl7.org/CodeSystem/observation-category",
                                      "code": "social-history",
                                      "display": "Social History"
                                  }
                              ],
                              "text": "Social History"
                          }
                      ],
                      "code": {
                          "text": "SHX Tobacco household concerns"
                      },
                      "subject": {
                          "reference": "Patient/3998008"
                      },
                      "issued": "2016-01-26T21:58:41.000Z",
                      "valueCodeableConcept": {
                          "coding": [
                              {
                                  "system": "http://snomed.info/sct",
                                  "code": "373066001",
                                  "display": "Yes (qualifier value)"
                              }
                          ],
                          "text": "Yes"
                      }
                  }
              },
              {
                  "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/M-7167327",
                  "resource": {
                      "resourceType": "Observation",
                      "id": "M-7167327",
                      "meta": {
                          "versionId": "1",
                          "lastUpdated": "2017-09-12T17:01:08.000Z"
                      },
                      "text": {
                          "status": "generated",
                          "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\">&lt;p>&lt;b>Observation&lt;/b>&lt;/p>&lt;p>&lt;b>Patient Id&lt;/b>: 3998008&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Final&lt;/p>&lt;p>&lt;b>Categories&lt;/b>: Vital Signs&lt;/p>&lt;p>&lt;b>Code&lt;/b>: Temperature Oral&lt;/p>&lt;p>&lt;b>Result&lt;/b>: 37 DegC&lt;/p>&lt;p>&lt;b>Interpretation&lt;/b>: Normal&lt;/p>&lt;p>&lt;b>Effective Date&lt;/b>: Sep 12, 2017  5:00 P.M. UTC&lt;/p>&lt;p>&lt;b>Reference Range&lt;/b>: 34.00-37.40 DegC&lt;/p>&lt;/div>"
                      },
                      "identifier": [
                        {
                          "system": "https://fhir.cerner.com/ceuuid",
                          "value": "CEfda49233-ccfa-4ed4-afbc-9f5082c2bf0c-17003791-2020030912450100"
                        }
                      ],
                      "basedOn": [
                           {
                              "reference": "ServiceRequest/8213648"
                            }
                        ],
                      "status": "final",
                      "category": [
                          {
                              "coding": [
                                  {
                                      "system": "http://terminology.hl7.org/CodeSystem/observation-category",
                                      "code": "vital-signs",
                                      "display": "Vital Signs"
                                  }
                              ],
                              "text": "Vital Signs"
                          }
                      ],
                      "code": {
                          "coding": [
                              {
                                  "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/72",
                                  "code": "703558",
                                  "display": "Temperature Oral",
                                  "userSelected": true
                              },
                              {
                                  "system": "http://loinc.org",
                                  "code": "8331-1"
                              },
                              {
                                  "system": "http://loinc.org",
                                  "code": "8331-1"
                              }
                          ],
                          "text": "Temperature Oral"
                      },
                      "subject": {
                          "reference": "Patient/3998008"
                      },
                      "encounter": {
                          "reference": "Encounter/3651924"
                      },
                      "effectiveDateTime": "2017-09-12T17:00:00.000Z",
                      "issued": "2017-09-12T17:00:48.000Z",
                      "performer": [
                        {
                          "reference": "Practitioner/1994021",
                          "extension": [
                            {
                                "url": "http://hl7.org/fhir/StructureDefinition/event-performerFunction",
                                "valueCodeableConcept": {
                                    "coding": [
                                        {
                                            "system": "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
                                            "code": "LA",
                                            "display": "legal authenticator"
                                        }
                                    ],
                                    "text": "legal authenticator"
                                }
                            }
                          ]
                        }
                      ],
                      "valueQuantity": {
                          "value": 37,
                          "unit": "DegC",
                          "system": "http://unitsofmeasure.org",
                          "code": "Cel"
                      },
                      "interpretation": [
                          {
                              "coding": [
                                  {
                                      "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/52",
                                      "code": "214",
                                      "userSelected": true
                                  },
                                  {
                                      "system": "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                                      "code": "N",
                                      "display": "Normal"
                                  }
                              ]
                          }
                      ],
                      "referenceRange": [
                          {
                              "low": {
                                  "value": 34.00,
                                  "unit": "DegC",
                                  "system": "http://unitsofmeasure.org",
                                  "code": "Cel"
                              },
                              "high": {
                                  "value": 37.40,
                                  "unit": "DegC",
                                  "system": "http://unitsofmeasure.org",
                                  "code": "Cel"
                              },
                              "type": {
                                "coding": [
                                    {
                                        "system": "http://terminology.hl7.org/CodeSystem/referencerange-meaning",
                                        "code": "normal",
                                        "display": "Normal Range"
                                    }
                                ],
                                "text": "Normal Range"
                            }     
                          }
                      ]
                  }
              }
          ]
      }

      R4_OBSERVATION_CREATE ||= {
        "resourceType": "Observation",
        "status": "final",
        "meta": {
            "source": "43ba6d6a-1006-4546-bf28-48d84a98dbb1"
        },
        "identifier": [
            {
                "system": "https://fhir.cerner.com/ceuuid",
                "value": "CE52dd2c20-da69-41a3-a5dc-7c34f8103ac0-185730321-2020030921575800"
            }
        ],
        "category": [
            {
                "coding": [
                    {
                        "system": "http://terminology.hl7.org/CodeSystem/observation-category",
                        "code": "vital-signs",
                        "display": "vital signs"
                    }
                ],
                "text": "vital signs"
            }
        ],
        "code": {
            "coding": [
                {
                    "system": "http://loinc.org",
                    "code": "8331-1",
                    "display": "Temperature Oral"
                }
            ]
        },
        "valueQuantity": {
            "value": 12,
            "unit": "degF",
            "system": "http://unitsofmeasure.org",
            "code": "[degF]"
        },
        "subject": {
            "reference": "Patient/1400012"
        },
        "encounter": {
            "reference": "Encounter/1359915"
        },
        "performer": [
            {
                "reference": "Practitioner/2"
            }
        ],
        "referenceRange": [
            {
                "low": {
                    "value": 60,
                    "unit": "degF",
                    "system": "http://unitsofmeasure.org",
                    "code": "[degF]"
                },
                "high": {
                    "value": 120,
                    "unit": "degF",
                    "system": "http://unitsofmeasure.org",
                    "code": "[degF]"
                }
            }
        ],
        "interpretation":[
        {
              "coding":[
                 {
                    "system": "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                    "code": "H",
                    "display": "High"
                 }
              ],
              "text": "HI"
           }
        ],
        "effectiveDateTime": "2001-06-20T21:24:00.000Z",
        "issued": "2001-06-20T21:25:54.000Z"
      }
    end
  end
  