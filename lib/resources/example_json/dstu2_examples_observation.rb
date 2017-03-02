module Cerner
  module Resources

    DSTU2_OBSERVATION_BUNDLE ||=
      {
        "resourceType": "Bundle",
        "id": "2f43050f-af18-423d-8b11-d699193ef760",
        "type": "searchset",
        "link": [
          {
            "relation": "self",
            "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation?subject%3APatient=3998008&_count=50"
          }
        ],
        "entry": [
          {
            "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/93-5525867",
            "resource": {
              "resourceType": "Observation",
              "id": "93-5525867",
              "meta": {
                "versionId": "1252402",
                "lastUpdated": "2016-01-26T21:58:41.000Z"
              },
              "status": "final",
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
              "related": [
                {
                  "type": "has-member",
                  "target": {
                    "reference": "Observation/5525867"
                  }
                }
              ]
            }
          },
          {
            "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/5525867",
            "resource": {
              "resourceType": "Observation",
              "id": "5525867",
              "meta": {
                "versionId": "1252402",
                "lastUpdated": "2016-01-26T21:58:41.000Z"
              },
              "status": "final",
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
              "related": [
                {
                  "type": "has-member",
                  "target": {
                    "reference": "Observation/5525867-q6930400"
                  }
                },
                {
                  "type": "has-member",
                  "target": {
                    "reference": "Observation/5525867-q6930404-0"
                  }
                },
                {
                  "type": "has-member",
                  "target": {
                    "reference": "Observation/5525867-q6930404-1"
                  }
                },
                {
                  "type": "has-member",
                  "target": {
                    "reference": "Observation/5525867-q6930316"
                  }
                },
                {
                  "type": "has-member",
                  "target": {
                    "reference": "Observation/5525867-q6930360"
                  }
                }
              ]
            }
          },
          {
            "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/5525867-q6930400",
            "resource": {
              "resourceType": "Observation",
              "id": "5525867-q6930400",
              "meta": {
                "versionId": "1252402",
                "lastUpdated": "2016-01-26T21:58:41.000Z"
              },
              "status": "final",
              "code": {
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
                    "code": "8517006",
                    "display": "Ex-smoker (finding)"
                  }
                ],
                "text": "Former smoker"
              }
            }
          },
          {
            "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/5525867-q6930404-0",
            "resource": {
              "resourceType": "Observation",
              "id": "5525867-q6930404-0",
              "meta": {
                "versionId": "1252402",
                "lastUpdated": "2016-01-26T21:58:41.000Z"
              },
              "status": "final",
              "code": {
                "text": "SHX Tobacco type"
              },
              "subject": {
                "reference": "Patient/3998008"
              },
              "issued": "2016-01-26T21:58:41.000Z",
              "valueCodeableConcept": {
                "text": "Cigarettes"
              }
            }
          },
          {
            "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/5525867-q6930404-1",
            "resource": {
              "resourceType": "Observation",
              "id": "5525867-q6930404-1",
              "meta": {
                "versionId": "1252402",
                "lastUpdated": "2016-01-26T21:58:41.000Z"
              },
              "status": "final",
              "code": {
                "text": "SHX Tobacco type"
              },
              "subject": {
                "reference": "Patient/3998008"
              },
              "issued": "2016-01-26T21:58:41.000Z",
              "valueCodeableConcept": {
                "text": "Chewing tobacco"
              }
            }
          },
          {
            "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/5525867-q6930316",
            "resource": {
              "resourceType": "Observation",
              "id": "5525867-q6930316",
              "meta": {
                "versionId": "1252402",
                "lastUpdated": "2016-01-26T21:58:41.000Z"
              },
              "status": "final",
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
            "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/5525867-q6930360",
            "resource": {
              "resourceType": "Observation",
              "id": "5525867-q6930360",
              "meta": {
                "versionId": "1252402",
                "lastUpdated": "2016-01-26T21:58:41.000Z"
              },
              "status": "final",
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
            "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/M5853272",
            "resource": {
              "resourceType": "Observation",
              "id": "M5853272",
              "meta": {
                "versionId": "1-5853271",
                "lastUpdated": "2016-01-27T16:39:53.000Z"
              },
              "text": {
                "status": "generated",
                "div": "&lt;div>&lt;p>&lt;b>Observation&lt;/b>&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: 3998008&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Auth (Verified)&lt;/p>&lt;p>&lt;b>Code&lt;/b>: Potassium Lvl&lt;/p>&lt;p>&lt;b>Result&lt;/b>: 2.50 mEq/L&lt;/p>&lt;p>&lt;b>Risk Level&lt;/b>: CRIT&lt;/p>&lt;p>&lt;b>Date&lt;/b>: 2016-01-26T22:02:00.000Z&lt;/p>&lt;p>&lt;b>Risk Level Detail&lt;/b>: Low: 3.50 mEq/L High: 5.10 mEq/L&lt;/p>&lt;/div>"
              },
              "status": "final",
              "category": {
                "coding": [
                  {
                    "system": "http://hl7.org/fhir/observation-category",
                    "code": "laboratory",
                    "display": "Laboratory"
                  }
                ],
                "text": "Laboratory"
              },
              "code": {
                "coding": [
                  {
                    "system": "http://loinc.org",
                    "code": "2823-3",
                    "display": "POTASSIUM:SCNC:PT:SER/PLAS:QN:"
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
                "value": 2.5,
                "unit": "mEq/L",
                "system": "http://unitsofmeasure.org",
                "code": "meq/L"
              },
              "interpretation": {
                "text": "CRIT"
              },
              "referenceRange": [
                {
                  "low": {
                    "value": 3.5,
                    "unit": "mEq/L",
                    "system": "http://unitsofmeasure.org",
                    "code": "meq/L"
                  },
                  "high": {
                    "value": 5.1,
                    "unit": "mEq/L",
                    "system": "http://unitsofmeasure.org",
                    "code": "meq/L"
                  }
                }
              ]
            }
          },
          {
            "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/M5851292",
            "resource": {
              "resourceType": "Observation",
              "id": "M5851292",
              "meta": {
                "versionId": "1-5851291",
                "lastUpdated": "2016-01-26T20:03:52.000Z"
              },
              "text": {
                "status": "generated",
                "div": "&lt;div>&lt;p>&lt;b>Observation&lt;/b>&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: 3998008&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Auth (Verified)&lt;/p>&lt;p>&lt;b>Code&lt;/b>: Temperature Oral&lt;/p>&lt;p>&lt;b>Result&lt;/b>: 37.9 DegC&lt;/p>&lt;p>&lt;b>Risk Level&lt;/b>: Above high normal&lt;/p>&lt;p>&lt;b>Date&lt;/b>: 2016-01-26T20:01:00.000Z&lt;/p>&lt;p>&lt;b>Risk Level Detail&lt;/b>: Low: 34.00 DegC High: 37.40 DegC&lt;/p>&lt;/div>"
              },
              "status": "final",
              "code": {
                "coding": [
                  {
                    "system": "http://loinc.org",
                    "code": "8331-1",
                    "display": "Body temperature - Mouth"
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
                "unit": "DegC"
              },
              "interpretation": {
                "coding": [
                  {
                    "system": "http://hl7.org/fhir/v2/0078",
                    "code": "H",
                    "display": "Above high normal"
                  }
                ],
                "text": "HI"
              },
              "referenceRange": [
                {
                  "low": {
                    "value": 34,
                    "unit": "DegC"
                  },
                  "high": {
                    "value": 37.4,
                    "unit": "DegC"
                  }
                }
              ]
            }
          },
          {
            "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/BP-5851294-5851296",
            "resource": {
              "resourceType": "Observation",
              "id": "BP-5851294-5851296",
              "meta": {
                "versionId": "1-5851293-1-5851295",
                "lastUpdated": "2016-01-26T20:03:52.000Z"
              },
              "text": {
                "status": "generated",
                "div": "&lt;div>&lt;p>&lt;b>Observation&lt;/b>&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: 3998008&lt;/p>&lt;p>&lt;b>Status&lt;/b>: final&lt;/p>&lt;p>&lt;b>Code&lt;/b>: Systolic Blood Pressure: Systolic Blood Pressure Diastolic Blood Pressure: Diastolic Blood Pressure&lt;/p>&lt;p>&lt;b>Result&lt;/b>: Systolic Blood Pressure: 125 mmHg Diastolic Blood Pressure: 117 mmHg&lt;/p>&lt;p>&lt;b>Risk Level&lt;/b>: Above absolute high-off instrument scale&lt;/p>&lt;p>&lt;b>Date&lt;/b>: 2016-01-26T20:01:00.000Z&lt;/p>&lt;p>&lt;b>Risk Level Detail&lt;/b>: Systolic Blood Pressure: Low: 80 mmHg High: 120 mmHg Diastolic Blood Pressure: Low: 70 mmHg High: 80 mmHg&lt;/p>&lt;/div>"
              },
              "status": "final",
              "code": {
                "coding": [
                  {
                    "system": "http://snomed.info/sct",
                    "code": "75367002",
                    "display": "Blood pressure (observable entity)"
                  },
                  {
                    "system": "http://loinc.org",
                    "code": "55284-4",
                    "display": "Blood pressure systolic and diastolic"
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
              "interpretation": {
                "coding": [
                  {
                    "system": "http://hl7.org/fhir/v2/0078",
                    "code": ">",
                    "display": "Above absolute high-off instrument scale"
                  }
                ],
                "text": ">HHI"
              },
              "component": [
                {
                  "code": {
                    "coding": [
                      {
                        "system": "http://loinc.org",
                        "code": "8480-6",
                        "display": "Systolic blood pressure"
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
                        "system": "http://loinc.org",
                        "code": "8462-4",
                        "display": "Diastolic blood pressure"
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
          }
        ]
      }

  end
end
