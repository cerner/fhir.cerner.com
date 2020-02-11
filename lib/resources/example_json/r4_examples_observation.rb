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
                              }
                          }
                      ]
                  }
              },
              {
                  "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/M-5853330",
                  "resource": {
                      "resourceType": "Observation",
                      "id": "M-5853330",
                      "meta": {
                          "versionId": "1",
                          "lastUpdated": "2016-01-27T17:01:58.000Z"
                      },
                      "text": {
                          "status": "generated",
                          "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\">&lt;p>&lt;b>Observation&lt;/b>&lt;/p>&lt;p>&lt;b>Patient Id&lt;/b>: 3998008&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Final&lt;/p>&lt;p>&lt;b>Categories&lt;/b>: Laboratory&lt;/p>&lt;p>&lt;b>Code&lt;/b>: ALT&lt;/p>&lt;p>&lt;b>Result&lt;/b>: 40&lt;/p>&lt;p>&lt;b>Interpretation&lt;/b>: Normal&lt;/p>&lt;p>&lt;b>Effective Date&lt;/b>: Jan 27, 2016  4:47 P.M. UTC&lt;/p>&lt;p>&lt;b>Reference Range&lt;/b>: 10-50&lt;/p>&lt;/div>"
                      },
                      "status": "final",
                      "category": [
                          {
                              "coding": [
                                  {
                                      "system": "http://terminology.hl7.org/CodeSystem/observation-category",
                                      "code": "laboratory",
                                      "display": "Laboratory"
                                  }
                              ],
                              "text": "Laboratory"
                          }
                      ],
                      "code": {
                          "coding": [
                              {
                                  "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/72",
                                  "code": "4218636",
                                  "display": "ALT",
                                  "userSelected": true
                              },
                              {
                                  "system": "http://loinc.org",
                                  "code": "1742-6"
                              }
                          ],
                          "text": "ALT"
                      },
                      "subject": {
                          "reference": "Patient/3998008"
                      },
                      "encounter": {
                          "reference": "Encounter/3651924"
                      },
                      "effectiveDateTime": "2016-01-27T16:47:00.000Z",
                      "issued": "2016-01-27T17:01:57.000Z",
                      "valueQuantity": {
                          "value": 40
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
                                  "value": 10
                              },
                              "high": {
                                  "value": 50
                              }
                          }
                      ]
                  }
              },
              {
                  "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/M-5853280",
                  "resource": {
                      "resourceType": "Observation",
                      "id": "M-5853280",
                      "meta": {
                          "versionId": "1",
                          "lastUpdated": "2016-01-27T16:57:51.000Z"
                      },
                      "text": {
                          "status": "generated",
                          "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\">&lt;p>&lt;b>Observation&lt;/b>&lt;/p>&lt;p>&lt;b>Patient Id&lt;/b>: 3998008&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Final&lt;/p>&lt;p>&lt;b>Categories&lt;/b>: Laboratory&lt;/p>&lt;p>&lt;b>Code&lt;/b>: Bili Total&lt;/p>&lt;p>&lt;b>Result&lt;/b>: 1.0 mg/dL&lt;/p>&lt;p>&lt;b>Interpretation&lt;/b>: Normal&lt;/p>&lt;p>&lt;b>Effective Date&lt;/b>: Jan 27, 2016  4:47 P.M. UTC&lt;/p>&lt;p>&lt;b>Reference Range&lt;/b>: 0.3-1.0 mg/dL&lt;/p>&lt;/div>"
                      },
                      "status": "final",
                      "category": [
                          {
                              "coding": [
                                  {
                                      "system": "http://terminology.hl7.org/CodeSystem/observation-category",
                                      "code": "laboratory",
                                      "display": "Laboratory"
                                  }
                              ],
                              "text": "Laboratory"
                          }
                      ],
                      "code": {
                          "coding": [
                              {
                                  "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/72",
                                  "code": "4218435",
                                  "display": "Bili Total",
                                  "userSelected": true
                              },
                              {
                                  "system": "http://loinc.org",
                                  "code": "1975-2"
                              }
                          ],
                          "text": "Bili Total"
                      },
                      "subject": {
                          "reference": "Patient/3998008"
                      },
                      "encounter": {
                          "reference": "Encounter/3651924"
                      },
                      "effectiveDateTime": "2016-01-27T16:47:00.000Z",
                      "issued": "2016-01-27T16:57:50.000Z",
                      "valueQuantity": {
                          "value": 1.0,
                          "unit": "mg/dL",
                          "system": "http://unitsofmeasure.org",
                          "code": "mg/dL"
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
                                  "value": 0.3,
                                  "unit": "mg/dL",
                                  "system": "http://unitsofmeasure.org",
                                  "code": "mg/dL"
                              },
                              "high": {
                                  "value": 1.0,
                                  "unit": "mg/dL",
                                  "system": "http://unitsofmeasure.org",
                                  "code": "mg/dL"
                              }
                          }
                      ]
                  }
              },
              {
                  "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/M-5853276",
                  "resource": {
                      "resourceType": "Observation",
                      "id": "M-5853276",
                      "meta": {
                          "versionId": "1",
                          "lastUpdated": "2016-01-27T16:41:02.000Z"
                      },
                      "text": {
                          "status": "generated",
                          "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\">&lt;p>&lt;b>Observation&lt;/b>&lt;/p>&lt;p>&lt;b>Patient Id&lt;/b>: 3998008&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Final&lt;/p>&lt;p>&lt;b>Categories&lt;/b>: Laboratory&lt;/p>&lt;p>&lt;b>Code&lt;/b>: Chloride&lt;/p>&lt;p>&lt;b>Result&lt;/b>: 100 mmol/L&lt;/p>&lt;p>&lt;b>Interpretation&lt;/b>: Normal&lt;/p>&lt;p>&lt;b>Effective Date&lt;/b>: Jan 26, 2016 10:02 P.M. UTC&lt;/p>&lt;p>&lt;b>Reference Range&lt;/b>: 98-107 mmol/L&lt;/p>&lt;/div>"
                      },
                      "status": "final",
                      "category": [
                          {
                              "coding": [
                                  {
                                      "system": "http://terminology.hl7.org/CodeSystem/observation-category",
                                      "code": "laboratory",
                                      "display": "Laboratory"
                                  }
                              ],
                              "text": "Laboratory"
                          }
                      ],
                      "code": {
                          "coding": [
                              {
                                  "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/72",
                                  "code": "4218713",
                                  "display": "Chloride",
                                  "userSelected": true
                              },
                              {
                                  "system": "http://loinc.org",
                                  "code": "2075-0"
                              }
                          ],
                          "text": "Chloride"
                      },
                      "subject": {
                          "reference": "Patient/3998008"
                      },
                      "encounter": {
                          "reference": "Encounter/3651924"
                      },
                      "effectiveDateTime": "2016-01-26T22:02:00.000Z",
                      "issued": "2016-01-27T16:41:01.000Z",
                      "valueQuantity": {
                          "value": 100,
                          "unit": "mmol/L",
                          "system": "http://unitsofmeasure.org",
                          "code": "mmol/L"
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
                                  "value": 98,
                                  "unit": "mmol/L",
                                  "system": "http://unitsofmeasure.org",
                                  "code": "mmol/L"
                              },
                              "high": {
                                  "value": 107,
                                  "unit": "mmol/L",
                                  "system": "http://unitsofmeasure.org",
                                  "code": "mmol/L"
                              }
                          }
                      ]
                  }
              },
              {
                  "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/M-5853272",
                  "resource": {
                      "resourceType": "Observation",
                      "id": "M-5853272",
                      "meta": {
                          "versionId": "1",
                          "lastUpdated": "2016-01-27T16:39:53.000Z"
                      },
                      "text": {
                          "status": "generated",
                          "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\">&lt;p>&lt;b>Observation&lt;/b>&lt;/p>&lt;p>&lt;b>Patient Id&lt;/b>: 3998008&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Final&lt;/p>&lt;p>&lt;b>Categories&lt;/b>: Laboratory&lt;/p>&lt;p>&lt;b>Code&lt;/b>: Potassium Lvl&lt;/p>&lt;p>&lt;b>Result&lt;/b>: 2.50 mEq/L&lt;/p>&lt;p>&lt;b>Interpretation&lt;/b>: CRIT&lt;/p>&lt;p>&lt;b>Effective Date&lt;/b>: Jan 26, 2016 10:02 P.M. UTC&lt;/p>&lt;p>&lt;b>Reference Range&lt;/b>: 3.50-5.10 mEq/L&lt;/p>&lt;/div>"
                      },
                      "status": "final",
                      "category": [
                          {
                              "coding": [
                                  {
                                      "system": "http://terminology.hl7.org/CodeSystem/observation-category",
                                      "code": "laboratory",
                                      "display": "Laboratory"
                                  }
                              ],
                              "text": "Laboratory"
                          }
                      ],
                      "code": {
                          "coding": [
                              {
                                  "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/72",
                                  "code": "4218562",
                                  "display": "Potassium Lvl",
                                  "userSelected": true
                              },
                              {
                                  "system": "http://loinc.org",
                                  "code": "2823-3"
                              }
                          ],
                          "text": "Potassium Lvl"
                      },
                      "subject": {
                          "reference": "Patient/3998008"
                      },
                      "encounter": {
                          "reference": "Encounter/3651924"
                      },
                      "effectiveDateTime": "2016-01-26T22:02:00.000Z",
                      "issued": "2016-01-27T16:39:52.000Z",
                      "valueQuantity": {
                          "value": 2.50,
                          "unit": "mEq/L",
                          "system": "http://unitsofmeasure.org",
                          "code": "meq/L"
                      },
                      "interpretation": [
                          {
                              "coding": [
                                  {
                                      "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/52",
                                      "code": "203",
                                      "display": "CRIT",
                                      "userSelected": true
                                  },
                                  {
                                      "system": "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                                      "code": "AA",
                                      "display": "Critical abnormal"
                                  }
                              ],
                              "text": "CRIT"
                          }
                      ],
                      "referenceRange": [
                          {
                              "low": {
                                  "value": 3.50,
                                  "unit": "mEq/L",
                                  "system": "http://unitsofmeasure.org",
                                  "code": "meq/L"
                              },
                              "high": {
                                  "value": 5.10,
                                  "unit": "mEq/L",
                                  "system": "http://unitsofmeasure.org",
                                  "code": "meq/L"
                              }
                          }
                      ]
                  }
              },
              {
                  "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/M-5853264",
                  "resource": {
                      "resourceType": "Observation",
                      "id": "M-5853264",
                      "meta": {
                          "versionId": "1",
                          "lastUpdated": "2016-01-27T16:32:19.000Z"
                      },
                      "text": {
                          "status": "generated",
                          "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\">&lt;p>&lt;b>Observation&lt;/b>&lt;/p>&lt;p>&lt;b>Patient Id&lt;/b>: 3998008&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Final&lt;/p>&lt;p>&lt;b>Categories&lt;/b>: Laboratory&lt;/p>&lt;p>&lt;b>Code&lt;/b>: Glucose Fasting&lt;/p>&lt;p>&lt;b>Result&lt;/b>: 76 mg/dL&lt;/p>&lt;p>&lt;b>Interpretation&lt;/b>: NA&lt;/p>&lt;p>&lt;b>Effective Date&lt;/b>: Jan 26, 2016 10:02 P.M. UTC&lt;/p>&lt;/div>"
                      },
                      "status": "final",
                      "category": [
                          {
                              "coding": [
                                  {
                                      "system": "http://terminology.hl7.org/CodeSystem/observation-category",
                                      "code": "laboratory",
                                      "display": "Laboratory"
                                  }
                              ],
                              "text": "Laboratory"
                          }
                      ],
                      "code": {
                          "coding": [
                              {
                                  "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/72",
                                  "code": "4218481",
                                  "display": "Glucose Fasting",
                                  "userSelected": true
                              },
                              {
                                  "system": "http://loinc.org",
                                  "code": "1558-6"
                              }
                          ],
                          "text": "Glucose Fasting"
                      },
                      "subject": {
                          "reference": "Patient/3998008"
                      },
                      "encounter": {
                          "reference": "Encounter/3651924"
                      },
                      "effectiveDateTime": "2016-01-26T22:02:00.000Z",
                      "issued": "2016-01-27T16:32:12.000Z",
                      "valueQuantity": {
                          "value": 76,
                          "unit": "mg/dL",
                          "system": "http://unitsofmeasure.org",
                          "code": "mg/dL"
                      },
                      "interpretation": [
                          {
                              "coding": [
                                  {
                                      "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/52",
                                      "code": "212",
                                      "display": "NA",
                                      "userSelected": true
                                  }
                              ],
                              "text": "NA"
                          }
                      ]
                  }
              },
              {
                  "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/M-5851302",
                  "resource": {
                      "resourceType": "Observation",
                      "id": "M-5851302",
                      "meta": {
                          "versionId": "1",
                          "lastUpdated": "2016-01-26T20:03:52.000Z"
                      },
                      "text": {
                          "status": "generated",
                          "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\">&lt;p>&lt;b>Observation&lt;/b>&lt;/p>&lt;p>&lt;b>Patient Id&lt;/b>: 3998008&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Final&lt;/p>&lt;p>&lt;b>Categories&lt;/b>: Vital Signs&lt;/p>&lt;p>&lt;b>Code&lt;/b>: Weight Measured&lt;/p>&lt;p>&lt;b>Result&lt;/b>: 61 kg&lt;/p>&lt;p>&lt;b>Effective Date&lt;/b>: Jan 26, 2016  8:01 P.M. UTC&lt;/p>&lt;/div>"
                      },
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
                                  "code": "4228747",
                                  "display": "Weight Measured",
                                  "userSelected": true
                              },
                              {
                                  "system": "http://loinc.org",
                                  "code": "3141-9"
                              },
                              {
                                  "system": "http://loinc.org",
                                  "code": "3141-9"
                              }
                          ],
                          "text": "Weight Measured"
                      },
                      "subject": {
                          "reference": "Patient/3998008"
                      },
                      "encounter": {
                          "reference": "Encounter/3651924"
                      },
                      "effectiveDateTime": "2016-01-26T20:01:00.000Z",
                      "issued": "2016-01-26T20:01:08.000Z",
                      "valueQuantity": {
                          "value": 61,
                          "unit": "kg",
                          "system": "http://unitsofmeasure.org",
                          "code": "kg"
                      }
                  }
              },
              {
                  "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/M-5851300",
                  "resource": {
                      "resourceType": "Observation",
                      "id": "M-5851300",
                      "meta": {
                          "versionId": "1",
                          "lastUpdated": "2016-01-26T20:03:52.000Z"
                      },
                      "text": {
                          "status": "generated",
                          "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\">&lt;p>&lt;b>Observation&lt;/b>&lt;/p>&lt;p>&lt;b>Patient Id&lt;/b>: 3998008&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Final&lt;/p>&lt;p>&lt;b>Code&lt;/b>: Usual Height&lt;/p>&lt;p>&lt;b>Result&lt;/b>: 172 cm&lt;/p>&lt;p>&lt;b>Effective Date&lt;/b>: Jan 26, 2016  8:01 P.M. UTC&lt;/p>&lt;/div>"
                      },
                      "status": "final",
                      "category": [
                          {
                              "extension": [
                                  {
                                      "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
                                      "valueCode": "unknown"
                                  }
                              ]
                          }
                      ],
                      "code": {
                          "coding": [
                              {
                                  "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/72",
                                  "code": "705271",
                                  "display": "Usual Height",
                                  "userSelected": true
                              },
                              {
                                  "system": "http://loinc.org",
                                  "code": "3138-5"
                              }
                          ],
                          "text": "Usual Height"
                      },
                      "subject": {
                          "reference": "Patient/3998008"
                      },
                      "encounter": {
                          "reference": "Encounter/3651924"
                      },
                      "effectiveDateTime": "2016-01-26T20:01:00.000Z",
                      "issued": "2016-01-26T20:01:08.000Z",
                      "valueQuantity": {
                          "value": 172,
                          "unit": "cm",
                          "system": "http://unitsofmeasure.org",
                          "code": "cm"
                      }
                  }
              },
              {
                  "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/M-5851290",
                  "resource": {
                      "resourceType": "Observation",
                      "id": "M-5851290",
                      "meta": {
                          "versionId": "1",
                          "lastUpdated": "2016-01-26T20:03:52.000Z"
                      },
                      "text": {
                          "status": "generated",
                          "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\">&lt;p>&lt;b>Observation&lt;/b>&lt;/p>&lt;p>&lt;b>Patient Id&lt;/b>: 3998008&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Final&lt;/p>&lt;p>&lt;b>Code&lt;/b>: Onset of Symptoms&lt;/p>&lt;p>&lt;b>Result&lt;/b>: 3 days&lt;/p>&lt;p>&lt;b>Effective Date&lt;/b>: Jan 26, 2016  8:01 P.M. UTC&lt;/p>&lt;/div>"
                      },
                      "status": "final",
                      "category": [
                          {
                              "extension": [
                                  {
                                      "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
                                      "valueCode": "unknown"
                                  }
                              ]
                          }
                      ],
                      "code": {
                          "coding": [
                              {
                                  "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/72",
                                  "code": "705268",
                                  "display": "Onset of Symptoms",
                                  "userSelected": true
                              }
                          ],
                          "text": "Onset of Symptoms"
                      },
                      "subject": {
                          "reference": "Patient/3998008"
                      },
                      "encounter": {
                          "reference": "Encounter/3651924"
                      },
                      "effectiveDateTime": "2016-01-26T20:01:00.000Z",
                      "issued": "2016-01-26T20:01:08.000Z",
                      "valueString": "3 days"
                  }
              },
              {
                  "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/M-5851288",
                  "resource": {
                      "resourceType": "Observation",
                      "id": "M-5851288",
                      "meta": {
                          "versionId": "1",
                          "lastUpdated": "2016-01-26T20:03:52.000Z"
                      },
                      "text": {
                          "status": "generated",
                          "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\">&lt;p>&lt;b>Observation&lt;/b>&lt;/p>&lt;p>&lt;b>Patient Id&lt;/b>: 3998008&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Final&lt;/p>&lt;p>&lt;b>Code&lt;/b>: Chief Complaint&lt;/p>&lt;p>&lt;b>Result&lt;/b>: Pain in left leg after falling.&lt;/p>&lt;p>&lt;b>Effective Date&lt;/b>: Jan 26, 2016  8:01 P.M. UTC&lt;/p>&lt;/div>"
                      },
                      "status": "final",
                      "category": [
                          {
                              "extension": [
                                  {
                                      "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
                                      "valueCode": "unknown"
                                  }
                              ]
                          }
                      ],
                      "code": {
                          "coding": [
                              {
                                  "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/72",
                                  "code": "704668",
                                  "display": "Chief Complaint",
                                  "userSelected": true
                              },
                              {
                                  "system": "http://loinc.org",
                                  "code": "8661-1"
                              }
                          ],
                          "text": "Chief Complaint"
                      },
                      "subject": {
                          "reference": "Patient/3998008"
                      },
                      "encounter": {
                          "reference": "Encounter/3651924"
                      },
                      "effectiveDateTime": "2016-01-26T20:01:00.000Z",
                      "issued": "2016-01-26T20:01:08.000Z",
                      "valueString": "Pain in left leg after falling."
                  }
              },
              {
                  "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/M-5851292",
                  "resource": {
                      "resourceType": "Observation",
                      "id": "M-5851292",
                      "meta": {
                          "versionId": "1",
                          "lastUpdated": "2016-01-26T20:03:52.000Z"
                      },
                      "text": {
                          "status": "generated",
                          "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\">&lt;p>&lt;b>Observation&lt;/b>&lt;/p>&lt;p>&lt;b>Patient Id&lt;/b>: 3998008&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Final&lt;/p>&lt;p>&lt;b>Categories&lt;/b>: Vital Signs&lt;/p>&lt;p>&lt;b>Code&lt;/b>: Temperature Oral&lt;/p>&lt;p>&lt;b>Result&lt;/b>: 37.9 DegC&lt;/p>&lt;p>&lt;b>Interpretation&lt;/b>: HI&lt;/p>&lt;p>&lt;b>Effective Date&lt;/b>: Jan 26, 2016  8:01 P.M. UTC&lt;/p>&lt;p>&lt;b>Reference Range&lt;/b>: 34.00-37.40 DegC&lt;/p>&lt;/div>"
                      },
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
                      "effectiveDateTime": "2016-01-26T20:01:00.000Z",
                      "issued": "2016-01-26T20:01:08.000Z",
                      "valueQuantity": {
                          "value": 37.9,
                          "unit": "DegC",
                          "system": "http://unitsofmeasure.org",
                          "code": "Cel"
                      },
                      "interpretation": [
                          {
                              "coding": [
                                  {
                                      "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/52",
                                      "code": "207",
                                      "display": "HI",
                                      "userSelected": true
                                  },
                                  {
                                      "system": "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                                      "code": "H",
                                      "display": "High"
                                  }
                              ],
                              "text": "HI"
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
                              }
                          }
                      ]
                  }
              },
              {
                  "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/BP-5851294-5851296",
                  "resource": {
                      "resourceType": "Observation",
                      "id": "BP-5851294-5851296",
                      "meta": {
                          "versionId": "1-1",
                          "lastUpdated": "2016-01-26T20:03:52.000Z"
                      },
                      "text": {
                          "status": "generated",
                          "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\">&lt;p>&lt;b>Observation&lt;/b>&lt;/p>&lt;p>&lt;b>Patient Id&lt;/b>: 3998008&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Final&lt;/p>&lt;p>&lt;b>Categories&lt;/b>: Vital Signs&lt;/p>&lt;p>&lt;b>Code&lt;/b>: Blood pressure&lt;/p>&lt;p>&lt;b>Components&lt;/b>:&lt;/p>&lt;dl>&lt;dt>Systolic Blood Pressure&lt;/dt>&lt;dd>&lt;b>Result&lt;/b>: 125 mmHg&lt;/dd>&lt;dd>&lt;b>Reference Range&lt;/b>: 80-120 mmHg&lt;/dd>&lt;dd>&lt;b>Interpretation&lt;/b>: HI&lt;/dd>&lt;dt>Diastolic Blood Pressure&lt;/dt>&lt;dd>&lt;b>Result&lt;/b>: 117 mmHg&lt;/dd>&lt;dd>&lt;b>Reference Range&lt;/b>: 70-80 mmHg&lt;/dd>&lt;dd>&lt;b>Interpretation&lt;/b>: &gt;HHI&lt;/dd>&lt;/dl>&lt;p>&lt;b>Effective Date&lt;/b>: Jan 26, 2016  8:01 P.M. UTC&lt;/p>&lt;/div>"
                      },
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
                                  "system": "http://snomed.info/sct",
                                  "code": "75367002",
                                  "display": "Blood pressure (observable entity)"
                              },
                              {
                                  "system": "http://loinc.org",
                                  "code": "85354-9",
                                  "display": "Blood pressure panel with all children optional"
                              }
                          ],
                          "text": "Blood pressure"
                      },
                      "subject": {
                          "reference": "Patient/3998008"
                      },
                      "encounter": {
                          "reference": "Encounter/3651924"
                      },
                      "effectiveDateTime": "2016-01-26T20:01:00.000Z",
                      "issued": "2016-01-26T20:01:08.000Z",
                      "component": [
                          {
                              "code": {
                                  "coding": [
                                      {
                                          "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/72",
                                          "code": "703501",
                                          "display": "Systolic Blood Pressure",
                                          "userSelected": true
                                      },
                                      {
                                          "system": "http://loinc.org",
                                          "code": "8480-6"
                                      },
                                      {
                                          "system": "http://loinc.org",
                                          "code": "8480-6"
                                      }
                                  ],
                                  "text": "Systolic Blood Pressure"
                              },
                              "valueQuantity": {
                                  "value": 125,
                                  "unit": "mmHg",
                                  "system": "http://unitsofmeasure.org",
                                  "code": "mm[Hg]"
                              },
                              "interpretation": [
                                  {
                                      "coding": [
                                          {
                                              "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/52",
                                              "code": "207",
                                              "display": "HI",
                                              "userSelected": true
                                          },
                                          {
                                              "system": "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                                              "code": "H",
                                              "display": "High"
                                          }
                                      ],
                                      "text": "HI"
                                  }
                              ],
                              "referenceRange": [
                                  {
                                      "low": {
                                          "value": 80,
                                          "unit": "mmHg",
                                          "system": "http://unitsofmeasure.org",
                                          "code": "mm[Hg]"
                                      },
                                      "high": {
                                          "value": 120,
                                          "unit": "mmHg",
                                          "system": "http://unitsofmeasure.org",
                                          "code": "mm[Hg]"
                                      }
                                  }
                              ]
                          },
                          {
                              "code": {
                                  "coding": [
                                      {
                                          "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/72",
                                          "code": "703516",
                                          "display": "Diastolic Blood Pressure",
                                          "userSelected": true
                                      },
                                      {
                                          "system": "http://loinc.org",
                                          "code": "8462-4"
                                      },
                                      {
                                          "system": "http://loinc.org",
                                          "code": "8462-4"
                                      }
                                  ],
                                  "text": "Diastolic Blood Pressure"
                              },
                              "valueQuantity": {
                                  "value": 117,
                                  "unit": "mmHg",
                                  "system": "http://unitsofmeasure.org",
                                  "code": "mm[Hg]"
                              },
                              "interpretation": [
                                  {
                                      "coding": [
                                          {
                                              "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/52",
                                              "code": "205",
                                              "display": ">HHI",
                                              "userSelected": true
                                          },
                                          {
                                              "system": "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                                              "code": ">",
                                              "display": "Off scale high"
                                          }
                                      ],
                                      "text": ">HHI"
                                  }
                              ],
                              "referenceRange": [
                                  {
                                      "low": {
                                          "value": 70,
                                          "unit": "mmHg",
                                          "system": "http://unitsofmeasure.org",
                                          "code": "mm[Hg]"
                                      },
                                      "high": {
                                          "value": 80,
                                          "unit": "mmHg",
                                          "system": "http://unitsofmeasure.org",
                                          "code": "mm[Hg]"
                                      }
                                  }
                              ]
                          }
                      ]
                  }
              },
              {
                  "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/M-5851298",
                  "resource": {
                      "resourceType": "Observation",
                      "id": "M-5851298",
                      "meta": {
                          "versionId": "1",
                          "lastUpdated": "2016-01-26T20:03:52.000Z"
                      },
                      "text": {
                          "status": "generated",
                          "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\">&lt;p>&lt;b>Observation&lt;/b>&lt;/p>&lt;p>&lt;b>Patient Id&lt;/b>: 3998008&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Final&lt;/p>&lt;p>&lt;b>Categories&lt;/b>: Vital Signs&lt;/p>&lt;p>&lt;b>Code&lt;/b>: Mean Arterial Pressure, Cuff&lt;/p>&lt;p>&lt;b>Result&lt;/b>: 120 mmHg&lt;/p>&lt;p>&lt;b>Effective Date&lt;/b>: Jan 26, 2016  8:01 P.M. UTC&lt;/p>&lt;/div>"
                      },
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
                                  "code": "703306",
                                  "display": "Mean Arterial Pressure, Cuff",
                                  "userSelected": true
                              },
                              {
                                  "system": "http://loinc.org",
                                  "code": "8478-0"
                              }
                          ],
                          "text": "Mean Arterial Pressure, Cuff"
                      },
                      "subject": {
                          "reference": "Patient/3998008"
                      },
                      "encounter": {
                          "reference": "Encounter/3651924"
                      },
                      "effectiveDateTime": "2016-01-26T20:01:00.000Z",
                      "issued": "2016-01-26T20:01:08.000Z",
                      "valueQuantity": {
                          "value": 120,
                          "unit": "mmHg",
                          "system": "http://unitsofmeasure.org",
                          "code": "mm[Hg]"
                      }
                  }
              },
              {
                  "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/M-5851282",
                  "resource": {
                      "resourceType": "Observation",
                      "id": "M-5851282",
                      "meta": {
                          "versionId": "1",
                          "lastUpdated": "2016-01-26T19:54:14.000Z"
                      },
                      "text": {
                          "status": "generated",
                          "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\">&lt;p>&lt;b>Observation&lt;/b>&lt;/p>&lt;p>&lt;b>Patient Id&lt;/b>: 3998008&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Final&lt;/p>&lt;p>&lt;b>Categories&lt;/b>: Laboratory&lt;/p>&lt;p>&lt;b>Code&lt;/b>: Instr WBC&lt;/p>&lt;p>&lt;b>Result&lt;/b>: 6 x10(6)/mcL&lt;/p>&lt;p>&lt;b>Interpretation&lt;/b>: Normal&lt;/p>&lt;p>&lt;b>Effective Date&lt;/b>: Jan 26, 2016  7:41 P.M. UTC&lt;/p>&lt;p>&lt;b>Reference Range&lt;/b>: 4-10 x10(6)/mcL&lt;/p>&lt;/div>"
                      },
                      "status": "final",
                      "category": [
                          {
                              "coding": [
                                  {
                                      "system": "http://terminology.hl7.org/CodeSystem/observation-category",
                                      "code": "laboratory",
                                      "display": "Laboratory"
                                  }
                              ],
                              "text": "Laboratory"
                          }
                      ],
                      "code": {
                          "coding": [
                              {
                                  "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/72",
                                  "code": "4218774",
                                  "display": "Instr WBC",
                                  "userSelected": true
                              },
                              {
                                  "system": "http://loinc.org",
                                  "code": "6690-2"
                              }
                          ],
                          "text": "Instr WBC"
                      },
                      "subject": {
                          "reference": "Patient/3998008"
                      },
                      "encounter": {
                          "reference": "Encounter/3651924"
                      },
                      "effectiveDateTime": "2016-01-26T19:41:00.000Z",
                      "issued": "2016-01-26T19:54:07.000Z",
                      "valueQuantity": {
                          "value": 6,
                          "unit": "x10(6)/mcL",
                          "system": "http://unitsofmeasure.org",
                          "code": "10*6/uL"
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
                                  "value": 4,
                                  "unit": "x10(6)/mcL",
                                  "system": "http://unitsofmeasure.org",
                                  "code": "10*6/uL"
                              },
                              "high": {
                                  "value": 10,
                                  "unit": "x10(6)/mcL",
                                  "system": "http://unitsofmeasure.org",
                                  "code": "10*6/uL"
                              }
                          }
                      ]
                  }
              },
              {
                  "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/M-5851264",
                  "resource": {
                      "resourceType": "Observation",
                      "id": "M-5851264",
                      "meta": {
                          "versionId": "1",
                          "lastUpdated": "2016-01-26T19:54:14.000Z"
                      },
                      "text": {
                          "status": "generated",
                          "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\">&lt;p>&lt;b>Observation&lt;/b>&lt;/p>&lt;p>&lt;b>Patient Id&lt;/b>: 3998008&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Final&lt;/p>&lt;p>&lt;b>Categories&lt;/b>: Laboratory&lt;/p>&lt;p>&lt;b>Code&lt;/b>: Hgb&lt;/p>&lt;p>&lt;b>Result&lt;/b>: 24 %&lt;/p>&lt;p>&lt;b>Interpretation&lt;/b>: HI&lt;/p>&lt;p>&lt;b>Effective Date&lt;/b>: Jan 26, 2016  7:41 P.M. UTC&lt;/p>&lt;p>&lt;b>Reference Range&lt;/b>: 12-16 %&lt;/p>&lt;/div>"
                      },
                      "status": "final",
                      "category": [
                          {
                              "coding": [
                                  {
                                      "system": "http://terminology.hl7.org/CodeSystem/observation-category",
                                      "code": "laboratory",
                                      "display": "Laboratory"
                                  }
                              ],
                              "text": "Laboratory"
                          }
                      ],
                      "code": {
                          "coding": [
                              {
                                  "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/72",
                                  "code": "4218696",
                                  "display": "Hgb",
                                  "userSelected": true
                              },
                              {
                                  "system": "http://loinc.org",
                                  "code": "718-7"
                              }
                          ],
                          "text": "Hgb"
                      },
                      "subject": {
                          "reference": "Patient/3998008"
                      },
                      "encounter": {
                          "reference": "Encounter/3651924"
                      },
                      "effectiveDateTime": "2016-01-26T19:41:00.000Z",
                      "issued": "2016-01-26T19:54:07.000Z",
                      "valueQuantity": {
                          "value": 24,
                          "unit": "%",
                          "system": "http://unitsofmeasure.org",
                          "code": "%"
                      },
                      "interpretation": [
                          {
                              "coding": [
                                  {
                                      "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/52",
                                      "code": "207",
                                      "display": "HI",
                                      "userSelected": true
                                  },
                                  {
                                      "system": "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                                      "code": "H",
                                      "display": "High"
                                  }
                              ],
                              "text": "HI"
                          }
                      ],
                      "referenceRange": [
                          {
                              "low": {
                                  "value": 12,
                                  "unit": "%",
                                  "system": "http://unitsofmeasure.org",
                                  "code": "%"
                              },
                              "high": {
                                  "value": 16,
                                  "unit": "%",
                                  "system": "http://unitsofmeasure.org",
                                  "code": "%"
                              }
                          }
                      ]
                  }
              },
              {
                  "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/M-5851280",
                  "resource": {
                      "resourceType": "Observation",
                      "id": "M-5851280",
                      "meta": {
                          "versionId": "1",
                          "lastUpdated": "2016-01-26T19:54:14.000Z"
                      },
                      "text": {
                          "status": "generated",
                          "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\">&lt;p>&lt;b>Observation&lt;/b>&lt;/p>&lt;p>&lt;b>Patient Id&lt;/b>: 3998008&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Final&lt;/p>&lt;p>&lt;b>Categories&lt;/b>: Laboratory&lt;/p>&lt;p>&lt;b>Code&lt;/b>: WBC&lt;/p>&lt;p>&lt;b>Result&lt;/b>: 14 x10(6)/mcL&lt;/p>&lt;p>&lt;b>Interpretation&lt;/b>: CRIT&lt;/p>&lt;p>&lt;b>Effective Date&lt;/b>: Jan 26, 2016  7:41 P.M. UTC&lt;/p>&lt;p>&lt;b>Reference Range&lt;/b>: 4-10 x10(6)/mcL&lt;/p>&lt;/div>"
                      },
                      "status": "final",
                      "category": [
                          {
                              "coding": [
                                  {
                                      "system": "http://terminology.hl7.org/CodeSystem/observation-category",
                                      "code": "laboratory",
                                      "display": "Laboratory"
                                  }
                              ],
                              "text": "Laboratory"
                          }
                      ],
                      "code": {
                          "coding": [
                              {
                                  "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/72",
                                  "code": "4218692",
                                  "display": "WBC",
                                  "userSelected": true
                              },
                              {
                                  "system": "http://loinc.org",
                                  "code": "6690-2"
                              }
                          ],
                          "text": "WBC"
                      },
                      "subject": {
                          "reference": "Patient/3998008"
                      },
                      "encounter": {
                          "reference": "Encounter/3651924"
                      },
                      "effectiveDateTime": "2016-01-26T19:41:00.000Z",
                      "issued": "2016-01-26T19:54:07.000Z",
                      "valueQuantity": {
                          "value": 14,
                          "unit": "x10(6)/mcL",
                          "system": "http://unitsofmeasure.org",
                          "code": "10*6/uL"
                      },
                      "interpretation": [
                          {
                              "coding": [
                                  {
                                      "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/52",
                                      "code": "203",
                                      "display": "CRIT",
                                      "userSelected": true
                                  },
                                  {
                                      "system": "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                                      "code": "AA",
                                      "display": "Critical abnormal"
                                  }
                              ],
                              "text": "CRIT"
                          }
                      ],
                      "referenceRange": [
                          {
                              "low": {
                                  "value": 4,
                                  "unit": "x10(6)/mcL",
                                  "system": "http://unitsofmeasure.org",
                                  "code": "10*6/uL"
                              },
                              "high": {
                                  "value": 10,
                                  "unit": "x10(6)/mcL",
                                  "system": "http://unitsofmeasure.org",
                                  "code": "10*6/uL"
                              }
                          }
                      ]
                  }
              },
              {
                  "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/M-5851278",
                  "resource": {
                      "resourceType": "Observation",
                      "id": "M-5851278",
                      "meta": {
                          "versionId": "1",
                          "lastUpdated": "2016-01-26T19:54:14.000Z"
                      },
                      "text": {
                          "status": "generated",
                          "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\">&lt;p>&lt;b>Observation&lt;/b>&lt;/p>&lt;p>&lt;b>Patient Id&lt;/b>: 3998008&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Final&lt;/p>&lt;p>&lt;b>Categories&lt;/b>: Laboratory&lt;/p>&lt;p>&lt;b>Code&lt;/b>: RDW&lt;/p>&lt;p>&lt;b>Result&lt;/b>: 13 %&lt;/p>&lt;p>&lt;b>Interpretation&lt;/b>: Normal&lt;/p>&lt;p>&lt;b>Effective Date&lt;/b>: Jan 26, 2016  7:41 P.M. UTC&lt;/p>&lt;p>&lt;b>Reference Range&lt;/b>: 12-14 %&lt;/p>&lt;/div>"
                      },
                      "status": "final",
                      "category": [
                          {
                              "coding": [
                                  {
                                      "system": "http://terminology.hl7.org/CodeSystem/observation-category",
                                      "code": "laboratory",
                                      "display": "Laboratory"
                                  }
                              ],
                              "text": "Laboratory"
                          }
                      ],
                      "code": {
                          "coding": [
                              {
                                  "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/72",
                                  "code": "4218575",
                                  "display": "RDW",
                                  "userSelected": true
                              },
                              {
                                  "system": "http://loinc.org",
                                  "code": "788-0"
                              }
                          ],
                          "text": "RDW"
                      },
                      "subject": {
                          "reference": "Patient/3998008"
                      },
                      "encounter": {
                          "reference": "Encounter/3651924"
                      },
                      "effectiveDateTime": "2016-01-26T19:41:00.000Z",
                      "issued": "2016-01-26T19:54:07.000Z",
                      "valueQuantity": {
                          "value": 13,
                          "unit": "%",
                          "system": "http://unitsofmeasure.org",
                          "code": "%"
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
                                  "value": 12,
                                  "unit": "%",
                                  "system": "http://unitsofmeasure.org",
                                  "code": "%"
                              },
                              "high": {
                                  "value": 14,
                                  "unit": "%",
                                  "system": "http://unitsofmeasure.org",
                                  "code": "%"
                              }
                          }
                      ]
                  }
              },
              {
                  "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/M-5851276",
                  "resource": {
                      "resourceType": "Observation",
                      "id": "M-5851276",
                      "meta": {
                          "versionId": "1",
                          "lastUpdated": "2016-01-26T19:54:14.000Z"
                      },
                      "text": {
                          "status": "generated",
                          "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\">&lt;p>&lt;b>Observation&lt;/b>&lt;/p>&lt;p>&lt;b>Patient Id&lt;/b>: 3998008&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Final&lt;/p>&lt;p>&lt;b>Categories&lt;/b>: Laboratory&lt;/p>&lt;p>&lt;b>Code&lt;/b>: RBC&lt;/p>&lt;p>&lt;b>Result&lt;/b>: 5 x10(3)/mcL&lt;/p>&lt;p>&lt;b>Interpretation&lt;/b>: Normal&lt;/p>&lt;p>&lt;b>Effective Date&lt;/b>: Jan 26, 2016  7:41 P.M. UTC&lt;/p>&lt;p>&lt;b>Reference Range&lt;/b>: 4-6 x10(3)/mcL&lt;/p>&lt;/div>"
                      },
                      "status": "final",
                      "category": [
                          {
                              "coding": [
                                  {
                                      "system": "http://terminology.hl7.org/CodeSystem/observation-category",
                                      "code": "laboratory",
                                      "display": "Laboratory"
                                  }
                              ],
                              "text": "Laboratory"
                          }
                      ],
                      "code": {
                          "coding": [
                              {
                                  "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/72",
                                  "code": "4218572",
                                  "display": "RBC",
                                  "userSelected": true
                              },
                              {
                                  "system": "http://loinc.org",
                                  "code": "789-8"
                              }
                          ],
                          "text": "RBC"
                      },
                      "subject": {
                          "reference": "Patient/3998008"
                      },
                      "encounter": {
                          "reference": "Encounter/3651924"
                      },
                      "effectiveDateTime": "2016-01-26T19:41:00.000Z",
                      "issued": "2016-01-26T19:54:07.000Z",
                      "valueQuantity": {
                          "value": 5,
                          "unit": "x10(3)/mcL",
                          "system": "http://unitsofmeasure.org",
                          "code": "10*3/uL"
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
                      "note": [
                          {
                              "text": "{\\rtf1\\ansi\\ansicpg1252\\uc0\\deff0{\\fonttbl\r\n{\\f0\\fswiss\\fcharset0\\fprq2 Arial;}\r\n{\\f1\\froman\\fcharset2\\fprq2 Symbol;}}\r\n{\\colortbl;\\red0\\green0\\blue0;\\red255\\green255\\blue255;}\r\n{\\*\\generator TX_RTF32 10.1.323.501;}\r\n\\deftab1134\\pard\\plain\\f0\\fs24\\cb2\\chshdng0\\chcfpat0\\chcbpat2 This is interpretative data for RBC.  This should apply to all routed to service resources.\\par\\pard\\par }"
                          }
                      ],
                      "referenceRange": [
                          {
                              "low": {
                                  "value": 4,
                                  "unit": "x10(3)/mcL",
                                  "system": "http://unitsofmeasure.org",
                                  "code": "10*3/uL"
                              },
                              "high": {
                                  "value": 6,
                                  "unit": "x10(3)/mcL",
                                  "system": "http://unitsofmeasure.org",
                                  "code": "10*3/uL"
                              }
                          }
                      ]
                  }
              },
              {
                  "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/M-5851274",
                  "resource": {
                      "resourceType": "Observation",
                      "id": "M-5851274",
                      "meta": {
                          "versionId": "1",
                          "lastUpdated": "2016-01-26T19:54:14.000Z"
                      },
                      "text": {
                          "status": "generated",
                          "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\">&lt;p>&lt;b>Observation&lt;/b>&lt;/p>&lt;p>&lt;b>Patient Id&lt;/b>: 3998008&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Final&lt;/p>&lt;p>&lt;b>Categories&lt;/b>: Laboratory&lt;/p>&lt;p>&lt;b>Code&lt;/b>: Platelet&lt;/p>&lt;p>&lt;b>Result&lt;/b>: 255 x10(3)/mcL&lt;/p>&lt;p>&lt;b>Interpretation&lt;/b>: Normal&lt;/p>&lt;p>&lt;b>Effective Date&lt;/b>: Jan 26, 2016  7:41 P.M. UTC&lt;/p>&lt;p>&lt;b>Reference Range&lt;/b>: 150-400 x10(3)/mcL&lt;/p>&lt;/div>"
                      },
                      "status": "final",
                      "category": [
                          {
                              "coding": [
                                  {
                                      "system": "http://terminology.hl7.org/CodeSystem/observation-category",
                                      "code": "laboratory",
                                      "display": "Laboratory"
                                  }
                              ],
                              "text": "Laboratory"
                          }
                      ],
                      "code": {
                          "coding": [
                              {
                                  "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/72",
                                  "code": "4218558",
                                  "display": "Platelet",
                                  "userSelected": true
                              },
                              {
                                  "system": "http://loinc.org",
                                  "code": "777-3"
                              }
                          ],
                          "text": "Platelet"
                      },
                      "subject": {
                          "reference": "Patient/3998008"
                      },
                      "encounter": {
                          "reference": "Encounter/3651924"
                      },
                      "effectiveDateTime": "2016-01-26T19:41:00.000Z",
                      "issued": "2016-01-26T19:54:07.000Z",
                      "valueQuantity": {
                          "value": 255,
                          "unit": "x10(3)/mcL",
                          "system": "http://unitsofmeasure.org",
                          "code": "10*3/uL"
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
                                  "value": 150,
                                  "unit": "x10(3)/mcL",
                                  "system": "http://unitsofmeasure.org",
                                  "code": "10*3/uL"
                              },
                              "high": {
                                  "value": 400,
                                  "unit": "x10(3)/mcL",
                                  "system": "http://unitsofmeasure.org",
                                  "code": "10*3/uL"
                              }
                          }
                      ]
                  }
              },
              {
                  "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/M-5851272",
                  "resource": {
                      "resourceType": "Observation",
                      "id": "M-5851272",
                      "meta": {
                          "versionId": "1",
                          "lastUpdated": "2016-01-26T19:54:14.000Z"
                      },
                      "text": {
                          "status": "generated",
                          "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\">&lt;p>&lt;b>Observation&lt;/b>&lt;/p>&lt;p>&lt;b>Patient Id&lt;/b>: 3998008&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Final&lt;/p>&lt;p>&lt;b>Categories&lt;/b>: Laboratory&lt;/p>&lt;p>&lt;b>Code&lt;/b>: MPV&lt;/p>&lt;p>&lt;b>Result&lt;/b>: 6 fL&lt;/p>&lt;p>&lt;b>Interpretation&lt;/b>: LOW&lt;/p>&lt;p>&lt;b>Effective Date&lt;/b>: Jan 26, 2016  7:41 P.M. UTC&lt;/p>&lt;p>&lt;b>Reference Range&lt;/b>: 8-11 fL&lt;/p>&lt;/div>"
                      },
                      "status": "final",
                      "category": [
                          {
                              "coding": [
                                  {
                                      "system": "http://terminology.hl7.org/CodeSystem/observation-category",
                                      "code": "laboratory",
                                      "display": "Laboratory"
                                  }
                              ],
                              "text": "Laboratory"
                          }
                      ],
                      "code": {
                          "coding": [
                              {
                                  "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/72",
                                  "code": "4218526",
                                  "display": "MPV",
                                  "userSelected": true
                              },
                              {
                                  "system": "http://loinc.org",
                                  "code": "32623-1"
                              }
                          ],
                          "text": "MPV"
                      },
                      "subject": {
                          "reference": "Patient/3998008"
                      },
                      "encounter": {
                          "reference": "Encounter/3651924"
                      },
                      "effectiveDateTime": "2016-01-26T19:41:00.000Z",
                      "issued": "2016-01-26T19:54:07.000Z",
                      "valueQuantity": {
                          "value": 6,
                          "unit": "fL",
                          "system": "http://unitsofmeasure.org",
                          "code": "fL"
                      },
                      "interpretation": [
                          {
                              "coding": [
                                  {
                                      "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/52",
                                      "code": "211",
                                      "display": "LOW",
                                      "userSelected": true
                                  },
                                  {
                                      "system": "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                                      "code": "L",
                                      "display": "Low"
                                  }
                              ],
                              "text": "LOW"
                          }
                      ],
                      "referenceRange": [
                          {
                              "low": {
                                  "value": 8,
                                  "unit": "fL",
                                  "system": "http://unitsofmeasure.org",
                                  "code": "fL"
                              },
                              "high": {
                                  "value": 11,
                                  "unit": "fL",
                                  "system": "http://unitsofmeasure.org",
                                  "code": "fL"
                              }
                          }
                      ]
                  }
              },
              {
                  "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/M-5851270",
                  "resource": {
                      "resourceType": "Observation",
                      "id": "M-5851270",
                      "meta": {
                          "versionId": "1",
                          "lastUpdated": "2016-01-26T19:54:14.000Z"
                      },
                      "text": {
                          "status": "generated",
                          "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\">&lt;p>&lt;b>Observation&lt;/b>&lt;/p>&lt;p>&lt;b>Patient Id&lt;/b>: 3998008&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Final&lt;/p>&lt;p>&lt;b>Categories&lt;/b>: Laboratory&lt;/p>&lt;p>&lt;b>Code&lt;/b>: MCV&lt;/p>&lt;p>&lt;b>Result&lt;/b>: 79 fL&lt;/p>&lt;p>&lt;b>Interpretation&lt;/b>: LOW&lt;/p>&lt;p>&lt;b>Effective Date&lt;/b>: Jan 26, 2016  7:41 P.M. UTC&lt;/p>&lt;p>&lt;b>Reference Range&lt;/b>: 80-96 fL&lt;/p>&lt;/div>"
                      },
                      "status": "final",
                      "category": [
                          {
                              "coding": [
                                  {
                                      "system": "http://terminology.hl7.org/CodeSystem/observation-category",
                                      "code": "laboratory",
                                      "display": "Laboratory"
                                  }
                              ],
                              "text": "Laboratory"
                          }
                      ],
                      "code": {
                          "coding": [
                              {
                                  "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/72",
                                  "code": "4218513",
                                  "display": "MCV",
                                  "userSelected": true
                              },
                              {
                                  "system": "http://loinc.org",
                                  "code": "787-2"
                              }
                          ],
                          "text": "MCV"
                      },
                      "subject": {
                          "reference": "Patient/3998008"
                      },
                      "encounter": {
                          "reference": "Encounter/3651924"
                      },
                      "effectiveDateTime": "2016-01-26T19:41:00.000Z",
                      "issued": "2016-01-26T19:54:07.000Z",
                      "valueQuantity": {
                          "value": 79,
                          "unit": "fL",
                          "system": "http://unitsofmeasure.org",
                          "code": "fL"
                      },
                      "interpretation": [
                          {
                              "coding": [
                                  {
                                      "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/52",
                                      "code": "211",
                                      "display": "LOW",
                                      "userSelected": true
                                  },
                                  {
                                      "system": "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                                      "code": "L",
                                      "display": "Low"
                                  }
                              ],
                              "text": "LOW"
                          }
                      ],
                      "referenceRange": [
                          {
                              "low": {
                                  "value": 80,
                                  "unit": "fL",
                                  "system": "http://unitsofmeasure.org",
                                  "code": "fL"
                              },
                              "high": {
                                  "value": 96,
                                  "unit": "fL",
                                  "system": "http://unitsofmeasure.org",
                                  "code": "fL"
                              }
                          }
                      ]
                  }
              },
              {
                  "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/M-5851268",
                  "resource": {
                      "resourceType": "Observation",
                      "id": "M-5851268",
                      "meta": {
                          "versionId": "1",
                          "lastUpdated": "2016-01-26T19:54:14.000Z"
                      },
                      "text": {
                          "status": "generated",
                          "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\">&lt;p>&lt;b>Observation&lt;/b>&lt;/p>&lt;p>&lt;b>Patient Id&lt;/b>: 3998008&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Final&lt;/p>&lt;p>&lt;b>Categories&lt;/b>: Laboratory&lt;/p>&lt;p>&lt;b>Code&lt;/b>: MCHC&lt;/p>&lt;p>&lt;b>Result&lt;/b>: 42 %&lt;/p>&lt;p>&lt;b>Interpretation&lt;/b>: HI&lt;/p>&lt;p>&lt;b>Effective Date&lt;/b>: Jan 26, 2016  7:41 P.M. UTC&lt;/p>&lt;p>&lt;b>Reference Range&lt;/b>: 31-36 %&lt;/p>&lt;/div>"
                      },
                      "status": "final",
                      "category": [
                          {
                              "coding": [
                                  {
                                      "system": "http://terminology.hl7.org/CodeSystem/observation-category",
                                      "code": "laboratory",
                                      "display": "Laboratory"
                                  }
                              ],
                              "text": "Laboratory"
                          }
                      ],
                      "code": {
                          "coding": [
                              {
                                  "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/72",
                                  "code": "4218512",
                                  "display": "MCHC",
                                  "userSelected": true
                              },
                              {
                                  "system": "http://loinc.org",
                                  "code": "786-4"
                              }
                          ],
                          "text": "MCHC"
                      },
                      "subject": {
                          "reference": "Patient/3998008"
                      },
                      "encounter": {
                          "reference": "Encounter/3651924"
                      },
                      "effectiveDateTime": "2016-01-26T19:41:00.000Z",
                      "issued": "2016-01-26T19:54:07.000Z",
                      "valueQuantity": {
                          "value": 42,
                          "unit": "%",
                          "system": "http://unitsofmeasure.org",
                          "code": "%"
                      },
                      "interpretation": [
                          {
                              "coding": [
                                  {
                                      "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/52",
                                      "code": "207",
                                      "display": "HI",
                                      "userSelected": true
                                  },
                                  {
                                      "system": "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                                      "code": "H",
                                      "display": "High"
                                  }
                              ],
                              "text": "HI"
                          }
                      ],
                      "referenceRange": [
                          {
                              "low": {
                                  "value": 31,
                                  "unit": "%",
                                  "system": "http://unitsofmeasure.org",
                                  "code": "%"
                              },
                              "high": {
                                  "value": 36,
                                  "unit": "%",
                                  "system": "http://unitsofmeasure.org",
                                  "code": "%"
                              }
                          }
                      ]
                  }
              },
              {
                  "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/M-5851266",
                  "resource": {
                      "resourceType": "Observation",
                      "id": "M-5851266",
                      "meta": {
                          "versionId": "1",
                          "lastUpdated": "2016-01-26T19:54:14.000Z"
                      },
                      "text": {
                          "status": "generated",
                          "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\">&lt;p>&lt;b>Observation&lt;/b>&lt;/p>&lt;p>&lt;b>Patient Id&lt;/b>: 3998008&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Final&lt;/p>&lt;p>&lt;b>Categories&lt;/b>: Laboratory&lt;/p>&lt;p>&lt;b>Code&lt;/b>: MCH&lt;/p>&lt;p>&lt;b>Result&lt;/b>: 30 pg&lt;/p>&lt;p>&lt;b>Interpretation&lt;/b>: Normal&lt;/p>&lt;p>&lt;b>Effective Date&lt;/b>: Jan 26, 2016  7:41 P.M. UTC&lt;/p>&lt;p>&lt;b>Reference Range&lt;/b>: 27-33 pg&lt;/p>&lt;/div>"
                      },
                      "status": "final",
                      "category": [
                          {
                              "coding": [
                                  {
                                      "system": "http://terminology.hl7.org/CodeSystem/observation-category",
                                      "code": "laboratory",
                                      "display": "Laboratory"
                                  }
                              ],
                              "text": "Laboratory"
                          }
                      ],
                      "code": {
                          "coding": [
                              {
                                  "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/72",
                                  "code": "4218511",
                                  "display": "MCH",
                                  "userSelected": true
                              },
                              {
                                  "system": "http://loinc.org",
                                  "code": "785-6"
                              }
                          ],
                          "text": "MCH"
                      },
                      "subject": {
                          "reference": "Patient/3998008"
                      },
                      "encounter": {
                          "reference": "Encounter/3651924"
                      },
                      "effectiveDateTime": "2016-01-26T19:41:00.000Z",
                      "issued": "2016-01-26T19:54:07.000Z",
                      "valueQuantity": {
                          "value": 30,
                          "unit": "pg",
                          "system": "http://unitsofmeasure.org",
                          "code": "pg"
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
                                  "value": 27,
                                  "unit": "pg",
                                  "system": "http://unitsofmeasure.org",
                                  "code": "pg"
                              },
                              "high": {
                                  "value": 33,
                                  "unit": "pg",
                                  "system": "http://unitsofmeasure.org",
                                  "code": "pg"
                              }
                          }
                      ]
                  }
              },
              {
                  "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/M-5851262",
                  "resource": {
                      "resourceType": "Observation",
                      "id": "M-5851262",
                      "meta": {
                          "versionId": "1",
                          "lastUpdated": "2016-01-26T19:54:14.000Z"
                      },
                      "text": {
                          "status": "generated",
                          "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\">&lt;p>&lt;b>Observation&lt;/b>&lt;/p>&lt;p>&lt;b>Patient Id&lt;/b>: 3998008&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Final&lt;/p>&lt;p>&lt;b>Categories&lt;/b>: Laboratory&lt;/p>&lt;p>&lt;b>Code&lt;/b>: Hct&lt;/p>&lt;p>&lt;b>Result&lt;/b>: 40 %&lt;/p>&lt;p>&lt;b>Interpretation&lt;/b>: Normal&lt;/p>&lt;p>&lt;b>Effective Date&lt;/b>: Jan 26, 2016  7:41 P.M. UTC&lt;/p>&lt;p>&lt;b>Reference Range&lt;/b>: 37-47 %&lt;/p>&lt;/div>"
                      },
                      "status": "final",
                      "category": [
                          {
                              "coding": [
                                  {
                                      "system": "http://terminology.hl7.org/CodeSystem/observation-category",
                                      "code": "laboratory",
                                      "display": "Laboratory"
                                  }
                              ],
                              "text": "Laboratory"
                          }
                      ],
                      "code": {
                          "coding": [
                              {
                                  "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/72",
                                  "code": "4218489",
                                  "display": "Hct",
                                  "userSelected": true
                              },
                              {
                                  "system": "http://loinc.org",
                                  "code": "4544-3"
                              }
                          ],
                          "text": "Hct"
                      },
                      "subject": {
                          "reference": "Patient/3998008"
                      },
                      "encounter": {
                          "reference": "Encounter/3651924"
                      },
                      "effectiveDateTime": "2016-01-26T19:41:00.000Z",
                      "issued": "2016-01-26T19:54:07.000Z",
                      "valueQuantity": {
                          "value": 40,
                          "unit": "%",
                          "system": "http://unitsofmeasure.org",
                          "code": "%"
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
                                  "value": 37,
                                  "unit": "%",
                                  "system": "http://unitsofmeasure.org",
                                  "code": "%"
                              },
                              "high": {
                                  "value": 47,
                                  "unit": "%",
                                  "system": "http://unitsofmeasure.org",
                                  "code": "%"
                              }
                          }
                      ]
                  }
              }
          ]
      }
    end
  end
  