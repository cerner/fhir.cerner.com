module Cerner
  module Resources
    R4_MEDICATION_REQUEST ||= {
      "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/MedicationRequest/56770371",
      "resource": {
        "resourceType": "MedicationRequest",
        "id": "56770371",
        "meta": {
          "versionId": "0",
          "lastUpdated": "2016-06-27T00:12:26.000Z"
        },
        "text": {
          "status": "generated",
          "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\"&gt;&lt;p&gt;&lt;b&gt;Medication Request&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Intent&lt;/b&gt;: Order&lt;/p&gt;&lt;p&gt;&lt;b&gt;Medication&lt;/b&gt;: Magic Mouthwash&lt;/p&gt;&lt;p&gt;&lt;b&gt;Dosage Instructions&lt;/b&gt;: 5 mL, Oral, Daily&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: PETERS, TIMOTHY&lt;/p&gt;&lt;p&gt;&lt;b&gt;Authored On&lt;/b&gt;: Jun 24, 2016 10:38 A.M. CDT&lt;/p&gt;&lt;/div&gt;"
        },
        "contained": [
          {
            "resourceType": "Medication",
            "id": "4354245",
            "code": {
              "text": "Magic Mouthwash"
            },
            "form": {
              "coding": [
                {
                  "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/4002",
                  "code": "3874335",
                  "display": "Susp-Oral",
                  "userSelected": true
                },
                {
                  "system": "http://snomed.info/sct",
                  "code": "385024007",
                  "display": "Oral suspension (product)",
                  "userSelected": false
                }
              ],
              "text": "Susp-Oral"
            },
            "ingredient": [
              {
                "itemCodeableConcept": {
                  "text": "Magic Mouthwash"
                },
                "strength": {
                  "numerator": {
                    "value": 5.0,
                    "unit": "mL",
                    "system": "http://unitsofmeasure.org",
                    "code": "mL"
                  }
                }
              },
              {
                "itemCodeableConcept": {
                  "coding": [
                    {
                      "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
                      "code": "466588",
                      "display": "Aluminum Hydroxide / Magnesium Hydroxide / Simethicone",
                      "userSelected": false
                    }
                  ],
                  "text": "Al hydroxide/Mg hydroxide/simethicone"
                }
              },
              {
                "itemCodeableConcept": {
                  "coding": [
                    {
                      "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
                      "code": "3498",
                      "display": "Diphenhydramine",
                      "userSelected": false
                    }
                  ],
                  "text": "diphenhydrAMINE"
                }
              },
              {
                "itemCodeableConcept": {
                  "coding": [
                    {
                      "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
                      "code": "6387",
                      "display": "Lidocaine",
                      "userSelected": false
                    }
                  ],
                  "text": "lidocaine topical"
                }
              }
            ]
          }
        ],
        "status": "active",
        "intent": "order",
        "category": [
          {
            "coding": [
              {
                "system": "http://terminology.hl7.org/CodeSystem/medicationrequest-category",
                "code": "outpatient",
                "display": "Outpatient",
                "userSelected": false
              }
            ]
          }
        ],
        "reportedBoolean": false,
        "medicationReference": {
          "reference": "#4354245",
          "display": "Magic Mouthwash"
        },
        "subject": {
          "reference": "Patient/1316024",
          "display": "PETERS, TIMOTHY"
        },
        "encounter": {
          "reference": "Encounter/6188499"
        },
        "authoredOn": "2016-06-24T10:38:59.000-05:00",
        "requester": {
          "reference": "Practitioner/1852008",
          "display": "Knope, Leslie"
        },
        "dosageInstruction": [
          {
            "text": "5 mL, Oral, Daily",
            "patientInstruction": "5 Milliliter Oral every day. Refills: 0.",
            "timing": {
              "repeat": {
                "boundsPeriod": {
                  "start": "2016-06-24T10:39:00.000-05:00"
                }
              },
              "code": {
                "coding": [
                  {
                    "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/4003",
                    "code": "696530",
                    "display": "Daily",
                    "userSelected": true
                  },
                  {
                    "system": "http://terminology.hl7.org/CodeSystem/v3-GTSAbbreviation",
                    "code": "QD",
                    "display": "QD",
                    "userSelected": false
                  }
                ],
                "text": "Daily"
              }
            },
            "route": {
              "coding": [
                {
                  "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/4001",
                  "code": "318185",
                  "display": "PO",
                  "userSelected": true
                },
                {
                  "system": "http://snomed.info/sct",
                  "code": "26643006",
                  "display": "Oral route (qualifier value)",
                  "userSelected": false
                }
              ],
              "text": "Oral"
            }
          }
        ],
        "dispenseRequest": {
          "validityPeriod": {
            "start": "2016-06-24T10:38:59.000-05:00"
          }
        }
      }
    }

    R4_MEDICATION_REQUEST_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "b630105a-2ec0-4877-8f8c-3b26b53cacd9",
      "type": "searchset",
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/MedicationRequest?patient=1316024"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/MedicationRequest/56770371",
          "resource": {
            "resourceType": "MedicationRequest",
            "id": "56770371",
            "meta": {
              "versionId": "0",
              "lastUpdated": "2016-06-27T00:12:26.000Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\"&gt;&lt;p&gt;&lt;b&gt;Medication Request&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Intent&lt;/b&gt;: Order&lt;/p&gt;&lt;p&gt;&lt;b&gt;Medication&lt;/b&gt;: Magic Mouthwash&lt;/p&gt;&lt;p&gt;&lt;b&gt;Dosage Instructions&lt;/b&gt;: 5 mL, Oral, Daily&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: PETERS, TIMOTHY&lt;/p&gt;&lt;p&gt;&lt;b&gt;Authored On&lt;/b&gt;: Jun 24, 2016 10:38 A.M. CDT&lt;/p&gt;&lt;/div&gt;"
            },
            "contained": [
              {
                "resourceType": "Medication",
                "id": "4354245",
                "code": {
                  "text": "Magic Mouthwash"
                },
                "form": {
                  "coding": [
                    {
                      "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/4002",
                      "code": "3874335",
                      "display": "Susp-Oral",
                      "userSelected": true
                    },
                    {
                      "system": "http://snomed.info/sct",
                      "code": "385024007",
                      "display": "Oral suspension (product)",
                      "userSelected": false
                    }
                  ],
                  "text": "Susp-Oral"
                },
                "ingredient": [
                  {
                    "itemCodeableConcept": {
                      "text": "Magic Mouthwash"
                    },
                    "strength": {
                      "numerator": {
                        "value": 5.0,
                        "unit": "mL",
                        "system": "http://unitsofmeasure.org",
                        "code": "mL"
                      }
                    }
                  },
                  {
                    "itemCodeableConcept": {
                      "coding": [
                        {
                          "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
                          "code": "466588",
                          "display": "Aluminum Hydroxide / Magnesium Hydroxide / Simethicone",
                          "userSelected": false
                        }
                      ],
                      "text": "Al hydroxide/Mg hydroxide/simethicone"
                    }
                  },
                  {
                    "itemCodeableConcept": {
                      "coding": [
                        {
                          "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
                          "code": "3498",
                          "display": "Diphenhydramine",
                          "userSelected": false
                        }
                      ],
                      "text": "diphenhydrAMINE"
                    }
                  },
                  {
                    "itemCodeableConcept": {
                      "coding": [
                        {
                          "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
                          "code": "6387",
                          "display": "Lidocaine",
                          "userSelected": false
                        }
                      ],
                      "text": "lidocaine topical"
                    }
                  }
                ]
              }
            ],
            "status": "active",
            "intent": "order",
            "category": [
              {
                "coding": [
                  {
                    "system": "http://terminology.hl7.org/CodeSystem/medicationrequest-category",
                    "code": "outpatient",
                    "display": "Outpatient",
                    "userSelected": false
                  }
                ]
              }
            ],
            "reportedBoolean": false,
            "medicationReference": {
              "reference": "#4354245",
              "display": "Magic Mouthwash"
            },
            "subject": {
              "reference": "Patient/1316024",
              "display": "PETERS, TIMOTHY"
            },
            "encounter": {
              "reference": "Encounter/6188499"
            },
            "authoredOn": "2016-06-24T10:38:59.000-05:00",
            "requester": {
              "reference": "Practitioner/1852008",
              "display": "Knope, Leslie"
            },
            "dosageInstruction": [
              {
                "text": "5 mL, Oral, Daily",
                "patientInstruction": "5 Milliliter Oral every day. Refills: 0.",
                "timing": {
                  "repeat": {
                    "boundsPeriod": {
                      "start": "2016-06-24T10:39:00.000-05:00"
                    }
                  },
                  "code": {
                    "coding": [
                      {
                        "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/4003",
                        "code": "696530",
                        "display": "Daily",
                        "userSelected": true
                      },
                      {
                        "system": "http://terminology.hl7.org/CodeSystem/v3-GTSAbbreviation",
                        "code": "QD",
                        "display": "QD",
                        "userSelected": false
                      }
                    ],
                    "text": "Daily"
                  }
                },
                "route": {
                  "coding": [
                    {
                      "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/4001",
                      "code": "318185",
                      "display": "PO",
                      "userSelected": true
                    },
                    {
                      "system": "http://snomed.info/sct",
                      "code": "26643006",
                      "display": "Oral route (qualifier value)",
                      "userSelected": false
                    }
                  ],
                  "text": "Oral"
                }
              }
            ],
            "dispenseRequest": {
              "validityPeriod": {
                "start": "2016-06-24T10:38:59.000-05:00"
              }
            }
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/MedicationRequest/59705223",
          "resource": {
            "resourceType": "MedicationRequest",
            "id": "59705223",
            "meta": {
              "versionId": "0",
              "lastUpdated": "2016-08-02T16:15:48.000Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\"&gt;&lt;p&gt;&lt;b&gt;Medication Request&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Intent&lt;/b&gt;: Order&lt;/p&gt;&lt;p&gt;&lt;b&gt;Medication&lt;/b&gt;: Misc Prescription (Freetext Medication)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: PETERS, TIMOTHY&lt;/p&gt;&lt;p&gt;&lt;b&gt;Authored On&lt;/b&gt;: Aug  2, 2016 11:15 A.M. CDT&lt;/p&gt;&lt;/div&gt;"
            },
            "status": "active",
            "intent": "order",
            "category": [
              {
                "coding": [
                  {
                    "system": "http://terminology.hl7.org/CodeSystem/medicationrequest-category",
                    "code": "community",
                    "display": "Community",
                    "userSelected": false
                  }
                ]
              },
              {
                "coding": [
                  {
                    "system": "http://terminology.hl7.org/CodeSystem/medication-statement-category",
                    "code": "patientspecified",
                    "display": "Patient Specified",
                    "userSelected": false
                  }
                ]
              }
            ],
            "reportedBoolean": true,
            "medicationCodeableConcept": {
              "text": "Misc Prescription (Freetext Medication)"
            },
            "subject": {
              "reference": "Patient/1316024",
              "display": "PETERS, TIMOTHY"
            },
            "encounter": {
              "reference": "Encounter/6188499"
            },
            "authoredOn": "2016-08-02T11:15:47.000-05:00",
            "requester": {
              "reference": "Practitioner/2050040",
              "display": "Macklin, Burt"
            },
            "dosageInstruction": [
              {
                "timing": {
                  "repeat": {
                    "boundsPeriod": {
                      "start": "2016-08-02T11:15:00.000-05:00"
                    }
                  }
                }
              }
            ],
            "dispenseRequest": {
              "validityPeriod": {
                "start": "2016-08-02T11:15:47.000-05:00"
              }
            }
          }
        }
      ]
    }

    R4_MEDICATION_REQUEST_CREATE ||= {
      "resourceType": "MedicationRequest",
      "status": "active",
      "intent": "order",
      "doNotPerform": false,
      "reportedBoolean": true,
      "medicationCodeableConcept": {
        "coding": [
          {
            "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
            "code": "352362"
          }
        ],
        "text": "Acetaminophen"
      },
      "subject": {
        "reference": "Patient/1316024"
      },
      "encounter": {
        "reference": "Encounter/1621910"
      },
      "note": [
        {
          "authorString": "Leslie Knope",
          "time": "2020-03-03T20:07:53Z",
          "text": "Patient has had medication in past."
        }
      ],
      "dosageInstruction": [
        {
          "text": "5 mL, Oral, Daily.",
          "additionalInstruction": [
            {
              "text": "Take with food."
            }
          ],
          "timing": {
            "repeat": {
              "boundsPeriod": {
                "start": "2020-02-25T23:19:10Z",
                "end": "2021-02-27T23:19:10Z"
              },
              "count": 1,
              "duration": 1.0,
              "durationUnit": "d"
            },
            "code": {
              "coding": [
                {
                  "system": "http://terminology.hl7.org/CodeSystem/v3-GTSAbbreviation",
                  "code": "BID"
                }
              ]
            }
          },
          "asNeededBoolean": true,
          "site": {
            "coding": [
              {
                "system": "http://snomed.info/sct",
                "code": "368208006"
              }
            ]
          },
          "route": {
            "coding": [
              {
                "system": "http://snomed.info/sct",
                "code": "41974700"
              }
            ]
          },
          "doseAndRate": [
            {
              "doseQuantity": {
                "value": 23.0,
                "unit": "tabs",
                "system": "http://unitsofmeasure.org",
                "code": "tbl"
              }
            }
          ]
        }
      ],
      "dispenseRequest": {
        "numberOfRepeatsAllowed": 5,
        "quantity": {
          "value": 10.0,
          "system": "http://unitsofmeasure.org",
          "code": "tbl"
        }
      },
      "substitution": {
        "allowedBoolean": true
      }
    }
  end
end
