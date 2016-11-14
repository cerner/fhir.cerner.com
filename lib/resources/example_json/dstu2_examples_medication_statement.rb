module Cerner
  module Resources

    DSTU2_MEDICATION_STATEMENT_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "97dee263-b655-4f6b-948b-b510516ab4c2",
      "type": "searchset",
      "total": 4,
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-open.sandboxcerner.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/MedicationStatement?patient=4342008&_count=50"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/MedicationStatement/21369961",
          "resource": {
            "resourceType": "MedicationStatement",
            "id": "21369961",
            "meta": {
              "versionId": "0-21369975",
              "lastUpdated": "2016-06-24T10:10:51.000-05:00"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div>&lt;p>&lt;b>Medication Statement&lt;/b>&lt;/p>&lt;p>&lt;b>Patient Name&lt;/b>: Song, River&lt;/p>&lt;p>&lt;b>Medication Name&lt;/b>: aspirin (aspirin 81 mg oral tablet)&lt;/p>&lt;p>&lt;b>Dosage Instructions&lt;/b>: 1 - 2 tabs, Oral, BID, PRN: pain | Take 1 - 2 tabs twice per day as needed, 30 tabs, 1 Refill(s)&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Active&lt;/p>&lt;p>&lt;b>Taken&lt;/b>: Yes&lt;/p>&lt;/div>"
            },
            "patient": {
              "reference": "Patient/4342008",
              "display": "Song, River"
            },
            "dateAsserted": "2016-06-24T10:10:51.000-05:00",
            "status": "active",
            "wasNotTaken": false,
            "effectiveDateTime": "2016-06-24T10:10:51.000-05:00",
            "medicationCodeableConcept": {
              "coding": [
                {
                  "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
                  "code": "243670",
                  "display": "Aspirin 81 MG Oral Tablet",
                  "userSelected": false
                }
              ],
              "text": "aspirin (aspirin 81 mg oral tablet)"
            },
            "dosage": [
              {
                "text": "1 - 2 tabs, Oral, BID, PRN: pain | Take 1 - 2 tabs twice per day as needed, 30 tabs, 1 Refill(s)",
                "timing": {
                  "repeat": {
                    "boundsPeriod": {
                      "start": "2016-06-24T08:08:00.000-07:00"
                    }
                  },
                  "code": {
                    "coding": [
                      {
                        "system": "http://hl7.org/fhir/v3/GTSAbbreviation",
                        "code": "BID",
                        "display": "BID",
                        "userSelected": false
                      }
                    ],
                    "text": "BID"
                  }
                },
                "asNeededCodeableConcept": {
                  "text": "pain | Take 1 - 2 tabs twice per day as needed"
                },
                "route": {
                  "coding": [
                    {
                      "system": "http://ncimeta.nci.nih.gov",
                      "code": "C38288",
                      "display": "ORAL",
                      "userSelected": false
                    }
                  ],
                  "text": "Oral"
                }
              }
            ]
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/MedicationStatement/21369989",
          "resource": {
            "resourceType": "MedicationStatement",
            "id": "21369989",
            "meta": {
              "versionId": "0-21369975",
              "lastUpdated": "2016-06-24T15:27:06.000Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div>&lt;p>&lt;b>Medication Statement&lt;/b>&lt;/p>&lt;p>&lt;b>Patient Name&lt;/b>: Song, River&lt;/p>&lt;p>&lt;b>Medication Name&lt;/b>: morphine (morphine 24 hour extended release)&lt;/p>&lt;p>&lt;b>Dosage Instructions&lt;/b>: 30 mg, 1 caps, Oral, Daily, PRN: pain&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Active&lt;/p>&lt;p>&lt;b>Taken&lt;/b>: Yes&lt;/p>&lt;/div>"
            },
            "patient": {
              "reference": "Patient/4342008",
              "display": "Song, River"
            },
            "dateAsserted": "2016-06-24T10:10:51.000-05:00",
            "status": "active",
            "wasNotTaken": false,
            "effectiveDateTime": "2016-06-24T10:10:51.000-05:00",
            "supportingInformation": [
              {
                "reference": "MedicationOrder/21369989"
              }
            ],
            "medicationCodeableConcept": {
              "text": "morphine (morphine 24 hour extended release)"
            },
            "dosage": [
              {
                "text": "30 mg, 1 caps, Oral, Daily, PRN: pain",
                "timing": {
                  "repeat": {
                    "boundsPeriod": {
                      "start": "2016-06-24T08:24:00.000-07:00"
                    }
                  },
                  "code": {
                    "coding": [
                      {
                        "system": "http://hl7.org/fhir/timing-abbreviation",
                        "code": "QD",
                        "display": "QD",
                        "userSelected": false
                      }
                    ],
                    "text": "Daily"
                  }
                },
                "asNeededCodeableConcept": {
                  "coding": [
                    {
                      "system": "http://snomed.info/sct",
                      "code": "22253000",
                      "display": "pain (finding)",
                      "userSelected": false
                    }
                  ],
                  "text": "pain"
                },
                "route": {
                  "coding": [
                    {
                      "system": "http://ncimeta.nci.nih.gov",
                      "code": "C38288",
                      "display": "ORAL",
                      "userSelected": false
                    }
                  ],
                  "text": "Oral"
                },
                "quantityQuantity": {
                  "value": 30,
                  "unit": "mg",
                  "system": "http://unitsofmeasure.org",
                  "code": "mg"
                }
              }
            ]
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/MedicationStatement/17498403",
          "resource": {
            "resourceType": "MedicationStatement",
            "id": "17498403",
            "meta": {
              "versionId": "2-17498411",
              "lastUpdated": "2015-01-19T18:54:25.000Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div>&lt;p>&lt;b>Medication Statement&lt;/b>&lt;/p>&lt;p>&lt;b>Patient Name&lt;/b>: Song, River&lt;/p>&lt;p>&lt;b>Medication Name&lt;/b>: atorvastatin (atorvastatin 80 mg oral tablet)&lt;/p>&lt;p>&lt;b>Dosage Instructions&lt;/b>: 80 mg, 1 tab(s), Oral, Daily, PRN: Instruct, 90 tab(s)&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Completed&lt;/p>&lt;p>&lt;b>Taken&lt;/b>: Yes&lt;/p>&lt;/div>"
            },
            "patient": {
              "reference": "Patient/4342008",
              "display": "Song, River"
            },
            "informationSource": {
              "display": "Family"
            },
            "dateAsserted": "2015-01-19T12:50:48.000-06:00",
            "status": "completed",
            "wasNotTaken": false,
            "effectiveDateTime": "2015-01-19T12:50:48.000-06:00",
            "note": "Medication Compliance: only takes half a tab on a good day",
            "medicationCodeableConcept": {
              "coding": [
                {
                  "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
                  "code": "259255",
                  "display": "atorvastatin 80 MG Oral Tablet",
                  "userSelected": false
                }
              ],
              "text": "atorvastatin (atorvastatin 80 mg oral tablet)"
            },
            "dosage": [
              {
                "text": "80 mg, 1 tab(s), Oral, Daily, PRN: Instruct, 90 tab(s)",
                "timing": {
                  "repeat": {
                    "boundsPeriod": {
                      "start": "2015-01-19T12:51:00.000-06:00",
                      "end": "2015-01-19T12:54:25.000-06:00"
                    }
                  },
                  "code": {
                    "coding": [
                      {
                        "system": "http://hl7.org/fhir/timing-abbreviation",
                        "code": "QD",
                        "display": "QD",
                        "userSelected": false
                      }
                    ],
                    "text": "Daily"
                  }
                },
                "asNeededCodeableConcept": {
                  "text": "Instruct"
                },
                "route": {
                  "coding": [
                    {
                      "system": "http://ncimeta.nci.nih.gov",
                      "code": "C38288",
                      "display": "ORAL",
                      "userSelected": false
                    }
                  ],
                  "text": "Oral"
                },
                "quantityQuantity": {
                  "value": 1,
                  "unit": "tab(s)",
                  "system": "http://unitsofmeasure.org",
                  "code": "{tbl}"
                }
              }
            ]
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/MedicationStatement/9776226",
          "resource": {
            "resourceType": "MedicationStatement",
            "id": "9776226",
            "meta": {
              "versionId": "5-13917251",
              "lastUpdated": "2012-08-13T17:41:08.000-05:00"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div>&lt;p>&lt;b>Medication Statement&lt;/b>&lt;/p>&lt;p>&lt;b>Patient Name&lt;/b>: Song, River&lt;/p>&lt;p>&lt;b>Medication Name&lt;/b>: DOPamine 400 mg [3 mcg/kg/min] + Premix D5W 500 mL&lt;/p>&lt;p>&lt;b>Dosage Instructions&lt;/b>: 16.88 mL/hr, IV&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Active&lt;/p>&lt;p>&lt;b>Taken&lt;/b>: Yes&lt;/p>&lt;/div>"
            },
            "contained": [
              {
                "resourceType": "Medication",
                "id": "18925324",
                "code": {
                  "text": "DOPamine 400 mg [3 mcg/kg/min] + Premix D5W 500 mL"
                },
                "product": {
                  "form": {
                    "coding": [
                      {
                        "system": "http://ncimeta.nci.nih.gov",
                        "code": "C42986",
                        "display": "SOLUTION",
                        "userSelected": false
                      }
                    ],
                    "text": "Soln-IV"
                  },
                  "ingredient": [
                    {
                      "item": {
                        "reference": "#18925322-1",
                        "display": "Premix D5W"
                      },
                      "amount": {
                        "numerator": {
                          "value": 500,
                          "unit": "mL",
                          "system": "http://unitsofmeasure.org",
                          "code": "mL"
                        },
                        "denominator": {
                          "value": 500,
                          "unit": "mL",
                          "system": "http://unitsofmeasure.org",
                          "code": "mL"
                        }
                      }
                    },
                    {
                      "item": {
                        "reference": "#4310611-2",
                        "display": "DOPamine"
                      },
                      "amount": {
                        "numerator": {
                          "value": 400,
                          "unit": "mg",
                          "system": "http://unitsofmeasure.org",
                          "code": "mg"
                        },
                        "denominator": {
                          "value": 500,
                          "unit": "mL",
                          "system": "http://unitsofmeasure.org",
                          "code": "mL"
                        }
                      }
                    }
                  ]
                }
              },
              {
                "resourceType": "Medication",
                "id": "18925322-1",
                "code": {
                  "text": "Premix D5W"
                }
              },
              {
                "resourceType": "Medication",
                "id": "4310611-2",
                "code": {
                  "text": "DOPamine"
                }
              }
            ],
            "patient": {
              "reference": "Patient/4342008",
              "display": "Song, River"
            },
            "dateAsserted": "2012-08-13T17:41:08.000-05:00",
            "status": "active",
            "wasNotTaken": false,
            "effectiveDateTime": "2012-08-13T17:41:08.000-05:00",
            "supportingInformation": [
              {
                "reference": "MedicationOrder/9776226"
              }
            ],
            "medicationReference": {
              "reference": "#18925324",
              "display": "DOPamine 400 mg [3 mcg/kg/min] + Premix D5W 500 mL"
            },
            "dosage": [
              {
                "text": "16.88 mL/hr, IV",
                "timing": {
                  "repeat": {
                    "boundsPeriod": {
                      "start": "2009-06-25T12:52:00.000-05:00"
                    },
                    "duration": 29.6,
                    "durationUnits": "h"
                  }
                },
                "route": {
                  "coding": [
                    {
                      "system": "http://ncimeta.nci.nih.gov",
                      "code": "C38276",
                      "display": "INTRAVENOUS",
                      "userSelected": false
                    }
                  ],
                  "text": "IV"
                },
                "quantityQuantity": {
                  "value": 500,
                  "unit": "mL",
                  "system": "http://unitsofmeasure.org",
                  "code": "mL"
                },
                "rateRatio": {
                  "numerator": {
                    "value": 500,
                    "unit": "mL",
                    "system": "http://unitsofmeasure.org",
                    "code": "mL"
                  },
                  "denominator": {
                    "value": 29.6,
                    "unit": "hr",
                    "system": "http://unitsofmeasure.org",
                    "code": "h"
                  }
                }
              }
            ]
          }
        }
      ]
    }

    DSTU2_MEDICATION_STATEMENT_CREATE ||= {
      "resourceType": "MedicationStatement",
      "contained":
      [
        {
          "resourceType":"Medication",
          "id":"123",
          "code":{
            "text":"FHIR Test Medication"
          }
        }
      ],
      "patient": {
        "reference":"Patient/234"
      },
      "status":"active",
      "medicationReference":{
        "reference":"#123"
      },
      "dosage":
      [
        {
          "timing":{
            "code":{
              "coding":
              [
                {
                  "system":"http://hl7.org/fhir/v3/vs/GTSAbbreviation",
                  "code":"BID"
                }
              ],
              "text":"BID"
            }
          },
          "quantityQuantity":{
            "value":60.0,
            "units":"mg",
            "system":"http://unitsofmeasure.org",
            "code":"mg"
          }
        }
      ]
    }

    DSTU2_MEDICATION_STATEMENT_UPDATE ||= {
      "resourceType": "MedicationStatement",
      "id": "222",
      "contained":
      [
        {
          "resourceType":"Medication",
          "id":"123",
          "code":{
            "text":"FHIR Test Medication"
          }
        }
      ],
      "status": "completed",
      "patient": {
        "reference": "Patient/234"
      },
      "medicationReference": {
        "reference": "#123"
      }
    }
        
  end
end
