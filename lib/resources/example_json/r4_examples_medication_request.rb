module Cerner
  module Resources
    R4_MEDICATION_REQUEST ||={
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
          },
          {
              "relation": "next",
              "url": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/MedicationRequest?patient=1316024&-pageContext=119716044_119716045_1316024_1_1&-pageDirection=NEXT"
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
          },
          {
              "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/MedicationRequest/59705233",
              "resource": {
                  "resourceType": "MedicationRequest",
                  "id": "59705233",
                  "meta": {
                      "versionId": "0",
                      "lastUpdated": "2016-08-02T16:16:30.000Z"
                  },
                  "text": {
                      "status": "generated",
                      "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\"&gt;&lt;p&gt;&lt;b&gt;Medication Request&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Intent&lt;/b&gt;: Order&lt;/p&gt;&lt;p&gt;&lt;b&gt;Medication&lt;/b&gt;: Misc Prescription (Freetext Medication)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: PETERS, TIMOTHY&lt;/p&gt;&lt;p&gt;&lt;b&gt;Authored On&lt;/b&gt;: Aug  2, 2016 11:16 A.M. CDT&lt;/p&gt;&lt;/div&gt;"
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
                  "authoredOn": "2016-08-02T11:16:30.000-05:00",
                  "requester": {
                      "reference": "Practitioner/2050040",
                      "display": "Macklin, Burt"
                  },
                  "dosageInstruction": [
                      {
                          "timing": {
                              "repeat": {
                                  "boundsPeriod": {
                                      "start": "2016-08-02T11:16:00.000-05:00"
                                  }
                              }
                          }
                      }
                  ],
                  "dispenseRequest": {
                      "validityPeriod": {
                          "start": "2016-08-02T11:16:30.000-05:00"
                      }
                  }
              }
          },
          {
              "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/MedicationRequest/63490379",
              "resource": {
                  "resourceType": "MedicationRequest",
                  "id": "63490379",
                  "meta": {
                      "versionId": "0",
                      "lastUpdated": "2016-10-14T23:05:22.000Z"
                  },
                  "text": {
                      "status": "generated",
                      "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\"&gt;&lt;p&gt;&lt;b&gt;Medication Request&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Intent&lt;/b&gt;: Order&lt;/p&gt;&lt;p&gt;&lt;b&gt;Medication&lt;/b&gt;: Misc Prescription (FHIR Test Medication)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: PETERS, TIMOTHY&lt;/p&gt;&lt;p&gt;&lt;b&gt;Authored On&lt;/b&gt;: Oct 14, 2016  6:05 P.M. CDT&lt;/p&gt;&lt;/div&gt;"
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
                      "text": "Misc Prescription (FHIR Test Medication)"
                  },
                  "subject": {
                      "reference": "Patient/1316024",
                      "display": "PETERS, TIMOTHY"
                  },
                  "encounter": {
                      "reference": "Encounter/6188499"
                  },
                  "authoredOn": "2016-10-14T19:05:20.000-04:00",
                  "requester": {
                      "reference": "Practitioner/8540292",
                      "display": "Perkins, Ann"
                  },
                  "dosageInstruction": [
                      {
                          "timing": {
                              "repeat": {
                                  "boundsPeriod": {
                                      "start": "2016-10-14T19:05:00.000-04:00"
                                  }
                              }
                          }
                      }
                  ],
                  "dispenseRequest": {
                      "validityPeriod": {
                          "start": "2016-10-14T19:05:20.000-04:00"
                      }
                  }
              }
          },
          {
              "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/MedicationRequest/63490399",
              "resource": {
                  "resourceType": "MedicationRequest",
                  "id": "63490399",
                  "meta": {
                      "versionId": "0",
                      "lastUpdated": "2016-10-14T23:15:23.000Z"
                  },
                  "text": {
                      "status": "generated",
                      "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\"&gt;&lt;p&gt;&lt;b&gt;Medication Request&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Intent&lt;/b&gt;: Order&lt;/p&gt;&lt;p&gt;&lt;b&gt;Medication&lt;/b&gt;: Misc Prescription (FHIR Test Medication)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: PETERS, TIMOTHY&lt;/p&gt;&lt;p&gt;&lt;b&gt;Authored On&lt;/b&gt;: Oct 14, 2016  6:15 P.M. CDT&lt;/p&gt;&lt;/div&gt;"
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
                      "text": "Misc Prescription (FHIR Test Medication)"
                  },
                  "subject": {
                      "reference": "Patient/1316024",
                      "display": "PETERS, TIMOTHY"
                  },
                  "encounter": {
                      "reference": "Encounter/6188499"
                  },
                  "authoredOn": "2016-10-14T19:15:23.000-04:00",
                  "requester": {
                      "reference": "Practitioner/8540292",
                      "display": "Perkins, Ann"
                  },
                  "dosageInstruction": [
                      {
                          "timing": {
                              "repeat": {
                                  "boundsPeriod": {
                                      "start": "2016-10-14T19:15:00.000-04:00"
                                  }
                              }
                          }
                      }
                  ],
                  "dispenseRequest": {
                      "validityPeriod": {
                          "start": "2016-10-14T19:15:23.000-04:00"
                      }
                  }
              }
          },
          {
              "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/MedicationRequest/63557483",
              "resource": {
                  "resourceType": "MedicationRequest",
                  "id": "63557483",
                  "meta": {
                      "versionId": "0",
                      "lastUpdated": "2016-10-18T15:40:55.000Z"
                  },
                  "text": {
                      "status": "generated",
                      "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\"&gt;&lt;p&gt;&lt;b&gt;Medication Request&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Intent&lt;/b&gt;: Order&lt;/p&gt;&lt;p&gt;&lt;b&gt;Medication&lt;/b&gt;: Misc Prescription (FHIR Test Medication)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: PETERS, TIMOTHY&lt;/p&gt;&lt;p&gt;&lt;b&gt;Authored On&lt;/b&gt;: Oct 18, 2016 10:40 A.M. CDT&lt;/p&gt;&lt;/div&gt;"
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
                      "text": "Misc Prescription (FHIR Test Medication)"
                  },
                  "subject": {
                      "reference": "Patient/1316024",
                      "display": "PETERS, TIMOTHY"
                  },
                  "encounter": {
                      "reference": "Encounter/6188499"
                  },
                  "authoredOn": "2016-10-18T11:40:53.000-04:00",
                  "requester": {
                      "reference": "Practitioner/1824023",
                      "display": "Callamezzo, Joan"
                  },
                  "dosageInstruction": [
                      {
                          "timing": {
                              "repeat": {
                                  "boundsPeriod": {
                                      "start": "2016-10-18T11:40:00.000-04:00"
                                  }
                              }
                          }
                      }
                  ],
                  "dispenseRequest": {
                      "validityPeriod": {
                          "start": "2016-10-18T11:40:53.000-04:00"
                      }
                  }
              }
          },
          {
              "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/MedicationRequest/63557507",
              "resource": {
                  "resourceType": "MedicationRequest",
                  "id": "63557507",
                  "meta": {
                      "versionId": "0",
                      "lastUpdated": "2016-10-18T15:42:16.000Z"
                  },
                  "text": {
                      "status": "generated",
                      "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\"&gt;&lt;p&gt;&lt;b&gt;Medication Request&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Intent&lt;/b&gt;: Order&lt;/p&gt;&lt;p&gt;&lt;b&gt;Medication&lt;/b&gt;: Misc Prescription (FHIR Test Medication)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: PETERS, TIMOTHY&lt;/p&gt;&lt;p&gt;&lt;b&gt;Authored On&lt;/b&gt;: Oct 18, 2016 10:42 A.M. CDT&lt;/p&gt;&lt;/div&gt;"
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
                      "text": "Misc Prescription (FHIR Test Medication)"
                  },
                  "subject": {
                      "reference": "Patient/1316024",
                      "display": "PETERS, TIMOTHY"
                  },
                  "encounter": {
                      "reference": "Encounter/6188499"
                  },
                  "authoredOn": "2016-10-18T11:42:16.000-04:00",
                  "requester": {
                      "reference": "Practitioner/1824023",
                      "display": "Callamezzo, Joan"
                  },
                  "dosageInstruction": [
                      {
                          "timing": {
                              "repeat": {
                                  "boundsPeriod": {
                                      "start": "2016-10-18T11:42:00.000-04:00"
                                  }
                              }
                          }
                      }
                  ],
                  "dispenseRequest": {
                      "validityPeriod": {
                          "start": "2016-10-18T11:42:16.000-04:00"
                      }
                  }
              }
          },
          {
              "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/MedicationRequest/63557529",
              "resource": {
                  "resourceType": "MedicationRequest",
                  "id": "63557529",
                  "meta": {
                      "versionId": "0",
                      "lastUpdated": "2016-10-18T15:44:37.000Z"
                  },
                  "text": {
                      "status": "generated",
                      "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\"&gt;&lt;p&gt;&lt;b&gt;Medication Request&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Intent&lt;/b&gt;: Order&lt;/p&gt;&lt;p&gt;&lt;b&gt;Medication&lt;/b&gt;: Misc Prescription (FHIR Test Medication)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: PETERS, TIMOTHY&lt;/p&gt;&lt;p&gt;&lt;b&gt;Authored On&lt;/b&gt;: Oct 18, 2016 10:44 A.M. CDT&lt;/p&gt;&lt;/div&gt;"
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
                      "text": "Misc Prescription (FHIR Test Medication)"
                  },
                  "subject": {
                      "reference": "Patient/1316024",
                      "display": "PETERS, TIMOTHY"
                  },
                  "encounter": {
                      "reference": "Encounter/6188499"
                  },
                  "authoredOn": "2016-10-18T11:44:37.000-04:00",
                  "requester": {
                      "reference": "Practitioner/1824023",
                      "display": "Callamezzo, Joan"
                  },
                  "dosageInstruction": [
                      {
                          "timing": {
                              "repeat": {
                                  "boundsPeriod": {
                                      "start": "2016-10-18T11:44:00.000-04:00"
                                  }
                              }
                          }
                      }
                  ],
                  "dispenseRequest": {
                      "validityPeriod": {
                          "start": "2016-10-18T11:44:37.000-04:00"
                      }
                  }
              }
          },
          {
              "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/MedicationRequest/63557539",
              "resource": {
                  "resourceType": "MedicationRequest",
                  "id": "63557539",
                  "meta": {
                      "versionId": "0",
                      "lastUpdated": "2016-10-18T15:45:24.000Z"
                  },
                  "text": {
                      "status": "generated",
                      "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\"&gt;&lt;p&gt;&lt;b&gt;Medication Request&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Intent&lt;/b&gt;: Order&lt;/p&gt;&lt;p&gt;&lt;b&gt;Medication&lt;/b&gt;: Misc Prescription (Freetext Medication)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: PETERS, TIMOTHY&lt;/p&gt;&lt;p&gt;&lt;b&gt;Authored On&lt;/b&gt;: Oct 18, 2016 10:45 A.M. CDT&lt;/p&gt;&lt;/div&gt;"
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
                  "authoredOn": "2016-10-18T11:45:24.000-04:00",
                  "requester": {
                      "reference": "Practitioner/1852008",
                      "display": "Knope, Leslie"
                  },
                  "dosageInstruction": [
                      {
                          "timing": {
                              "repeat": {
                                  "boundsPeriod": {
                                      "start": "2016-10-18T11:45:00.000-04:00"
                                  }
                              }
                          }
                      }
                  ],
                  "dispenseRequest": {
                      "validityPeriod": {
                          "start": "2016-10-18T11:45:24.000-04:00"
                      }
                  }
              }
          },
          {
              "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/MedicationRequest/63557549",
              "resource": {
                  "resourceType": "MedicationRequest",
                  "id": "63557549",
                  "meta": {
                      "versionId": "0",
                      "lastUpdated": "2016-10-18T15:51:17.000Z"
                  },
                  "text": {
                      "status": "generated",
                      "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\"&gt;&lt;p&gt;&lt;b&gt;Medication Request&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Intent&lt;/b&gt;: Order&lt;/p&gt;&lt;p&gt;&lt;b&gt;Medication&lt;/b&gt;: Misc Prescription (Freetext Medication)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: PETERS, TIMOTHY&lt;/p&gt;&lt;p&gt;&lt;b&gt;Authored On&lt;/b&gt;: Oct 18, 2016 10:51 A.M. CDT&lt;/p&gt;&lt;/div&gt;"
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
                  "authoredOn": "2016-10-18T11:51:17.000-04:00",
                  "requester": {
                      "reference": "Practitioner/1852008",
                      "display": "Knope, Leslie"
                  },
                  "dosageInstruction": [
                      {
                          "timing": {
                              "repeat": {
                                  "boundsPeriod": {
                                      "start": "2016-10-18T11:51:00.000-04:00"
                                  }
                              }
                          }
                      }
                  ],
                  "dispenseRequest": {
                      "validityPeriod": {
                          "start": "2016-10-18T11:51:17.000-04:00"
                      }
                  }
              }
          },
          {
              "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/MedicationRequest/63557559",
              "resource": {
                  "resourceType": "MedicationRequest",
                  "id": "63557559",
                  "meta": {
                      "versionId": "0",
                      "lastUpdated": "2016-10-18T15:52:26.000Z"
                  },
                  "text": {
                      "status": "generated",
                      "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\"&gt;&lt;p&gt;&lt;b&gt;Medication Request&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Intent&lt;/b&gt;: Order&lt;/p&gt;&lt;p&gt;&lt;b&gt;Medication&lt;/b&gt;: Misc Prescription (Freetext Medication)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: PETERS, TIMOTHY&lt;/p&gt;&lt;p&gt;&lt;b&gt;Authored On&lt;/b&gt;: Oct 18, 2016 10:52 A.M. CDT&lt;/p&gt;&lt;/div&gt;"
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
                  "authoredOn": "2016-10-18T11:52:26.000-04:00",
                  "requester": {
                      "reference": "Practitioner/1852008",
                      "display": "Knope, Leslie"
                  },
                  "dosageInstruction": [
                      {
                          "timing": {
                              "repeat": {
                                  "boundsPeriod": {
                                      "start": "2016-10-18T11:52:00.000-04:00"
                                  }
                              }
                          }
                      }
                  ],
                  "dispenseRequest": {
                      "validityPeriod": {
                          "start": "2016-10-18T11:52:26.000-04:00"
                      }
                  }
              }
          },
          {
              "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/MedicationRequest/63559775",
              "resource": {
                  "resourceType": "MedicationRequest",
                  "id": "63559775",
                  "meta": {
                      "versionId": "0",
                      "lastUpdated": "2016-10-18T16:30:45.000Z"
                  },
                  "text": {
                      "status": "generated",
                      "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\"&gt;&lt;p&gt;&lt;b&gt;Medication Request&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Intent&lt;/b&gt;: Order&lt;/p&gt;&lt;p&gt;&lt;b&gt;Medication&lt;/b&gt;: Misc Prescription (FHIR Test Medication)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: PETERS, TIMOTHY&lt;/p&gt;&lt;p&gt;&lt;b&gt;Authored On&lt;/b&gt;: Oct 18, 2016 11:30 A.M. CDT&lt;/p&gt;&lt;/div&gt;"
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
                      "text": "Misc Prescription (FHIR Test Medication)"
                  },
                  "subject": {
                      "reference": "Patient/1316024",
                      "display": "PETERS, TIMOTHY"
                  },
                  "encounter": {
                      "reference": "Encounter/6188499"
                  },
                  "authoredOn": "2016-10-18T12:30:45.000-04:00",
                  "requester": {
                      "reference": "Practitioner/1824023",
                      "display": "Callamezzo, Joan"
                  },
                  "dosageInstruction": [
                      {
                          "timing": {
                              "repeat": {
                                  "boundsPeriod": {
                                      "start": "2016-10-18T12:30:00.000-04:00"
                                  }
                              }
                          }
                      }
                  ],
                  "dispenseRequest": {
                      "validityPeriod": {
                          "start": "2016-10-18T12:30:45.000-04:00"
                      }
                  }
              }
          },
          {
              "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/MedicationRequest/63969309",
              "resource": {
                  "resourceType": "MedicationRequest",
                  "id": "63969309",
                  "meta": {
                      "versionId": "0",
                      "lastUpdated": "2016-10-27T23:34:13.000Z"
                  },
                  "text": {
                      "status": "generated",
                      "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\"&gt;&lt;p&gt;&lt;b&gt;Medication Request&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Intent&lt;/b&gt;: Order&lt;/p&gt;&lt;p&gt;&lt;b&gt;Medication&lt;/b&gt;: Misc Prescription (Freetext)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: PETERS, TIMOTHY&lt;/p&gt;&lt;p&gt;&lt;b&gt;Authored On&lt;/b&gt;: Oct 27, 2016  6:34 P.M. CDT&lt;/p&gt;&lt;/div&gt;"
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
                      "text": "Misc Prescription (Freetext)"
                  },
                  "subject": {
                      "reference": "Patient/1316024",
                      "display": "PETERS, TIMOTHY"
                  },
                  "encounter": {
                      "reference": "Encounter/6188499"
                  },
                  "authoredOn": "2016-10-27T19:34:12.000-04:00",
                  "requester": {
                      "reference": "Practitioner/1852008",
                      "display": "Knope, Leslie"
                  },
                  "dosageInstruction": [
                      {
                          "timing": {
                              "repeat": {
                                  "boundsPeriod": {
                                      "start": "2016-10-27T19:34:00.000-04:00"
                                  }
                              }
                          }
                      }
                  ],
                  "dispenseRequest": {
                      "validityPeriod": {
                          "start": "2016-10-27T19:34:12.000-04:00"
                      }
                  }
              }
          },
          {
              "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/MedicationRequest/63969319",
              "resource": {
                  "resourceType": "MedicationRequest",
                  "id": "63969319",
                  "meta": {
                      "versionId": "0",
                      "lastUpdated": "2016-10-27T23:34:51.000Z"
                  },
                  "text": {
                      "status": "generated",
                      "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\"&gt;&lt;p&gt;&lt;b&gt;Medication Request&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Intent&lt;/b&gt;: Order&lt;/p&gt;&lt;p&gt;&lt;b&gt;Medication&lt;/b&gt;: Misc Prescription (Freetext)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: PETERS, TIMOTHY&lt;/p&gt;&lt;p&gt;&lt;b&gt;Authored On&lt;/b&gt;: Oct 27, 2016  6:34 P.M. CDT&lt;/p&gt;&lt;/div&gt;"
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
                      "text": "Misc Prescription (Freetext)"
                  },
                  "subject": {
                      "reference": "Patient/1316024",
                      "display": "PETERS, TIMOTHY"
                  },
                  "encounter": {
                      "reference": "Encounter/6188499"
                  },
                  "authoredOn": "2016-10-27T19:34:51.000-04:00",
                  "requester": {
                      "reference": "Practitioner/1852008",
                      "display": "Knope, Leslie"
                  },
                  "dosageInstruction": [
                      {
                          "timing": {
                              "repeat": {
                                  "boundsPeriod": {
                                      "start": "2016-10-27T19:34:00.000-04:00"
                                  }
                              }
                          }
                      }
                  ],
                  "dispenseRequest": {
                      "validityPeriod": {
                          "start": "2016-10-27T19:34:51.000-04:00"
                      }
                  }
              }
          },
          {
              "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/MedicationRequest/63969329",
              "resource": {
                  "resourceType": "MedicationRequest",
                  "id": "63969329",
                  "meta": {
                      "versionId": "0",
                      "lastUpdated": "2016-10-27T23:37:50.000Z"
                  },
                  "text": {
                      "status": "generated",
                      "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\"&gt;&lt;p&gt;&lt;b&gt;Medication Request&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Intent&lt;/b&gt;: Order&lt;/p&gt;&lt;p&gt;&lt;b&gt;Medication&lt;/b&gt;: Misc Prescription (Freetext)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: PETERS, TIMOTHY&lt;/p&gt;&lt;p&gt;&lt;b&gt;Authored On&lt;/b&gt;: Oct 27, 2016  6:37 P.M. CDT&lt;/p&gt;&lt;/div&gt;"
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
                      "text": "Misc Prescription (Freetext)"
                  },
                  "subject": {
                      "reference": "Patient/1316024",
                      "display": "PETERS, TIMOTHY"
                  },
                  "encounter": {
                      "reference": "Encounter/6188499"
                  },
                  "authoredOn": "2016-10-27T19:37:50.000-04:00",
                  "requester": {
                      "reference": "Practitioner/1900016",
                      "display": "Wyatt, Ben"
                  },
                  "dosageInstruction": [
                      {
                          "timing": {
                              "repeat": {
                                  "boundsPeriod": {
                                      "start": "2016-10-27T19:37:00.000-04:00"
                                  }
                              }
                          }
                      }
                  ],
                  "dispenseRequest": {
                      "validityPeriod": {
                          "start": "2016-10-27T19:37:50.000-04:00"
                      }
                  }
              }
          },
          {
              "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/MedicationRequest/63969339",
              "resource": {
                  "resourceType": "MedicationRequest",
                  "id": "63969339",
                  "meta": {
                      "versionId": "0",
                      "lastUpdated": "2016-10-27T23:42:35.000Z"
                  },
                  "text": {
                      "status": "generated",
                      "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\"&gt;&lt;p&gt;&lt;b&gt;Medication Request&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Intent&lt;/b&gt;: Order&lt;/p&gt;&lt;p&gt;&lt;b&gt;Medication&lt;/b&gt;: Misc Prescription (Freetext)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: PETERS, TIMOTHY&lt;/p&gt;&lt;p&gt;&lt;b&gt;Authored On&lt;/b&gt;: Oct 27, 2016  6:42 P.M. CDT&lt;/p&gt;&lt;/div&gt;"
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
                      "text": "Misc Prescription (Freetext)"
                  },
                  "subject": {
                      "reference": "Patient/1316024",
                      "display": "PETERS, TIMOTHY"
                  },
                  "encounter": {
                      "reference": "Encounter/6188499"
                  },
                  "authoredOn": "2016-10-27T19:42:35.000-04:00",
                  "requester": {
                      "reference": "Practitioner/1900016",
                      "display": "Wyatt, Ben"
                  },
                  "dosageInstruction": [
                      {
                          "timing": {
                              "repeat": {
                                  "boundsPeriod": {
                                      "start": "2016-10-27T19:42:00.000-04:00"
                                  }
                              }
                          }
                      }
                  ],
                  "dispenseRequest": {
                      "validityPeriod": {
                          "start": "2016-10-27T19:42:35.000-04:00"
                      }
                  }
              }
          },
          {
              "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/MedicationRequest/65509569",
              "resource": {
                  "resourceType": "MedicationRequest",
                  "id": "65509569",
                  "meta": {
                      "versionId": "0",
                      "lastUpdated": "2016-11-28T21:08:47.000Z"
                  },
                  "text": {
                      "status": "generated",
                      "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\"&gt;&lt;p&gt;&lt;b&gt;Medication Request&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Intent&lt;/b&gt;: Order&lt;/p&gt;&lt;p&gt;&lt;b&gt;Medication&lt;/b&gt;: Misc Prescription (FHIR Test Medication)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Dosage Instructions&lt;/b&gt;: 60 mg, BID&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: PETERS, TIMOTHY&lt;/p&gt;&lt;p&gt;&lt;b&gt;Authored On&lt;/b&gt;: Nov 28, 2016  3:08 P.M. CST&lt;/p&gt;&lt;/div&gt;"
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
                      "text": "Misc Prescription (FHIR Test Medication)"
                  },
                  "subject": {
                      "reference": "Patient/1316024",
                      "display": "PETERS, TIMOTHY"
                  },
                  "encounter": {
                      "reference": "Encounter/6188499"
                  },
                  "authoredOn": "2016-11-28T16:08:45.000-05:00",
                  "requester": {
                      "extension": [
                          {
                              "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
                              "valueCode": "unknown"
                          }
                      ]
                  },
                  "dosageInstruction": [
                      {
                          "text": "60 mg, BID",
                          "timing": {
                              "repeat": {
                                  "boundsPeriod": {
                                      "start": "2016-11-28T16:08:00.000-05:00"
                                  }
                              }
                          }
                      }
                  ],
                  "dispenseRequest": {
                      "validityPeriod": {
                          "start": "2016-11-28T16:08:45.000-05:00"
                      }
                  }
              }
          },
          {
              "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/MedicationRequest/65509579",
              "resource": {
                  "resourceType": "MedicationRequest",
                  "id": "65509579",
                  "meta": {
                      "versionId": "0",
                      "lastUpdated": "2016-11-28T21:09:13.000Z"
                  },
                  "text": {
                      "status": "generated",
                      "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\"&gt;&lt;p&gt;&lt;b&gt;Medication Request&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Intent&lt;/b&gt;: Order&lt;/p&gt;&lt;p&gt;&lt;b&gt;Medication&lt;/b&gt;: Misc Prescription (FHIR Test Medication)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Dosage Instructions&lt;/b&gt;: 60 mg, BID&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: PETERS, TIMOTHY&lt;/p&gt;&lt;p&gt;&lt;b&gt;Authored On&lt;/b&gt;: Nov 28, 2016  3:09 P.M. CST&lt;/p&gt;&lt;/div&gt;"
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
                      "text": "Misc Prescription (FHIR Test Medication)"
                  },
                  "subject": {
                      "reference": "Patient/1316024",
                      "display": "PETERS, TIMOTHY"
                  },
                  "encounter": {
                      "reference": "Encounter/6188499"
                  },
                  "authoredOn": "2016-11-28T16:09:12.000-05:00",
                  "requester": {
                      "extension": [
                          {
                              "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
                              "valueCode": "unknown"
                          }
                      ]
                  },
                  "dosageInstruction": [
                      {
                          "text": "60 mg, BID",
                          "timing": {
                              "repeat": {
                                  "boundsPeriod": {
                                      "start": "2016-11-28T16:09:00.000-05:00"
                                  }
                              }
                          }
                      }
                  ],
                  "dispenseRequest": {
                      "validityPeriod": {
                          "start": "2016-11-28T16:09:12.000-05:00"
                      }
                  }
              }
          },
          {
              "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/MedicationRequest/65587769",
              "resource": {
                  "resourceType": "MedicationRequest",
                  "id": "65587769",
                  "meta": {
                      "versionId": "0",
                      "lastUpdated": "2016-11-29T21:59:18.000Z"
                  },
                  "text": {
                      "status": "generated",
                      "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\"&gt;&lt;p&gt;&lt;b&gt;Medication Request&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Intent&lt;/b&gt;: Order&lt;/p&gt;&lt;p&gt;&lt;b&gt;Medication&lt;/b&gt;: Misc Prescription (Test Medication End Date)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Dosage Instructions&lt;/b&gt;: 1.0 caps, 1 caps, Oral, Daily, PRN: Instruct, 30 caps, 0 Refill(s), PRN: Instruct&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: PETERS, TIMOTHY&lt;/p&gt;&lt;p&gt;&lt;b&gt;Authored On&lt;/b&gt;: Nov 29, 2016  3:59 P.M. CST&lt;/p&gt;&lt;/div&gt;"
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
                      "text": "Misc Prescription (Test Medication End Date)"
                  },
                  "subject": {
                      "reference": "Patient/1316024",
                      "display": "PETERS, TIMOTHY"
                  },
                  "encounter": {
                      "reference": "Encounter/6188499"
                  },
                  "authoredOn": "2016-11-29T16:59:18.000-05:00",
                  "requester": {
                      "extension": [
                          {
                              "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
                              "valueCode": "unknown"
                          }
                      ]
                  },
                  "dosageInstruction": [
                      {
                          "text": "1.0 caps, 1 caps, Oral, Daily, PRN: Instruct, 30 caps, 0 Refill(s), PRN: Instruct",
                          "timing": {
                              "repeat": {
                                  "boundsPeriod": {
                                      "start": "2015-07-22T11:57:00.000-04:00"
                                  }
                              }
                          },
                          "asNeededBoolean": true
                      }
                  ],
                  "dispenseRequest": {
                      "validityPeriod": {
                          "start": "2016-11-29T16:59:18.000-05:00"
                      }
                  }
              }
          },
          {
              "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/MedicationRequest/65670889",
              "resource": {
                  "resourceType": "MedicationRequest",
                  "id": "65670889",
                  "meta": {
                      "versionId": "0",
                      "lastUpdated": "2016-12-01T15:26:43.000Z"
                  },
                  "text": {
                      "status": "generated",
                      "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\"&gt;&lt;p&gt;&lt;b&gt;Medication Request&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Intent&lt;/b&gt;: Order&lt;/p&gt;&lt;p&gt;&lt;b&gt;Medication&lt;/b&gt;: Misc Prescription (FHIR Test Medication)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Dosage Instructions&lt;/b&gt;: 60 mg, BID&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: PETERS, TIMOTHY&lt;/p&gt;&lt;p&gt;&lt;b&gt;Authored On&lt;/b&gt;: Dec  1, 2016  9:26 A.M. CST&lt;/p&gt;&lt;/div&gt;"
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
                      "text": "Misc Prescription (FHIR Test Medication)"
                  },
                  "subject": {
                      "reference": "Patient/1316024",
                      "display": "PETERS, TIMOTHY"
                  },
                  "encounter": {
                      "reference": "Encounter/6188499"
                  },
                  "authoredOn": "2016-12-01T10:26:42.000-05:00",
                  "requester": {
                      "extension": [
                          {
                              "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
                              "valueCode": "unknown"
                          }
                      ]
                  },
                  "dosageInstruction": [
                      {
                          "text": "60 mg, BID",
                          "timing": {
                              "repeat": {
                                  "boundsPeriod": {
                                      "start": "2016-12-01T10:26:00.000-05:00"
                                  }
                              }
                          }
                      }
                  ],
                  "dispenseRequest": {
                      "validityPeriod": {
                          "start": "2016-12-01T10:26:42.000-05:00"
                      }
                  }
              }
          },
          {
              "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/MedicationRequest/65670901",
              "resource": {
                  "resourceType": "MedicationRequest",
                  "id": "65670901",
                  "meta": {
                      "versionId": "0",
                      "lastUpdated": "2016-12-01T15:29:22.000Z"
                  },
                  "text": {
                      "status": "generated",
                      "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\"&gt;&lt;p&gt;&lt;b&gt;Medication Request&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Intent&lt;/b&gt;: Order&lt;/p&gt;&lt;p&gt;&lt;b&gt;Medication&lt;/b&gt;: Misc Prescription (FHIR Test Medication)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Dosage Instructions&lt;/b&gt;: 60 mg, BID&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: PETERS, TIMOTHY&lt;/p&gt;&lt;p&gt;&lt;b&gt;Authored On&lt;/b&gt;: Dec  1, 2016  9:29 A.M. CST&lt;/p&gt;&lt;/div&gt;"
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
                      "text": "Misc Prescription (FHIR Test Medication)"
                  },
                  "subject": {
                      "reference": "Patient/1316024",
                      "display": "PETERS, TIMOTHY"
                  },
                  "encounter": {
                      "reference": "Encounter/6188499"
                  },
                  "authoredOn": "2016-12-01T10:29:22.000-05:00",
                  "requester": {
                      "extension": [
                          {
                              "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
                              "valueCode": "unknown"
                          }
                      ]
                  },
                  "dosageInstruction": [
                      {
                          "text": "60 mg, BID",
                          "timing": {
                              "repeat": {
                                  "boundsPeriod": {
                                      "start": "2016-12-01T10:29:00.000-05:00"
                                  }
                              }
                          }
                      }
                  ],
                  "dispenseRequest": {
                      "validityPeriod": {
                          "start": "2016-12-01T10:29:22.000-05:00"
                      }
                  }
              }
          },
          {
              "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/MedicationRequest/65670997",
              "resource": {
                  "resourceType": "MedicationRequest",
                  "id": "65670997",
                  "meta": {
                      "versionId": "0",
                      "lastUpdated": "2016-12-01T16:02:57.000Z"
                  },
                  "text": {
                      "status": "generated",
                      "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\"&gt;&lt;p&gt;&lt;b&gt;Medication Request&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Intent&lt;/b&gt;: Order&lt;/p&gt;&lt;p&gt;&lt;b&gt;Medication&lt;/b&gt;: Misc Prescription (FHIR Test Medication)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Dosage Instructions&lt;/b&gt;: 60 mg, BID&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: PETERS, TIMOTHY&lt;/p&gt;&lt;p&gt;&lt;b&gt;Authored On&lt;/b&gt;: Dec  1, 2016 10:02 A.M. CST&lt;/p&gt;&lt;/div&gt;"
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
                      "text": "Misc Prescription (FHIR Test Medication)"
                  },
                  "subject": {
                      "reference": "Patient/1316024",
                      "display": "PETERS, TIMOTHY"
                  },
                  "encounter": {
                      "reference": "Encounter/6188499"
                  },
                  "authoredOn": "2016-12-01T11:02:56.000-05:00",
                  "requester": {
                      "extension": [
                          {
                              "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
                              "valueCode": "unknown"
                          }
                      ]
                  },
                  "dosageInstruction": [
                      {
                          "text": "60 mg, BID",
                          "timing": {
                              "repeat": {
                                  "boundsPeriod": {
                                      "start": "2016-12-01T11:02:00.000-05:00"
                                  }
                              }
                          }
                      }
                  ],
                  "dispenseRequest": {
                      "validityPeriod": {
                          "start": "2016-12-01T11:02:56.000-05:00"
                      }
                  }
              }
          },
          {
              "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/MedicationRequest/65870677",
              "resource": {
                  "resourceType": "MedicationRequest",
                  "id": "65870677",
                  "meta": {
                      "versionId": "0",
                      "lastUpdated": "2016-12-05T22:32:06.000Z"
                  },
                  "text": {
                      "status": "generated",
                      "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\"&gt;&lt;p&gt;&lt;b&gt;Medication Request&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Intent&lt;/b&gt;: Order&lt;/p&gt;&lt;p&gt;&lt;b&gt;Medication&lt;/b&gt;: Misc Prescription (FHIR Test Medication)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Dosage Instructions&lt;/b&gt;: 60 mg, BID&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: PETERS, TIMOTHY&lt;/p&gt;&lt;p&gt;&lt;b&gt;Authored On&lt;/b&gt;: Dec  5, 2016  4:32 P.M. CST&lt;/p&gt;&lt;/div&gt;"
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
                      "text": "Misc Prescription (FHIR Test Medication)"
                  },
                  "subject": {
                      "reference": "Patient/1316024",
                      "display": "PETERS, TIMOTHY"
                  },
                  "encounter": {
                      "reference": "Encounter/6188499"
                  },
                  "authoredOn": "2016-12-05T17:32:06.000-05:00",
                  "requester": {
                      "extension": [
                          {
                              "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
                              "valueCode": "unknown"
                          }
                      ]
                  },
                  "dosageInstruction": [
                      {
                          "text": "60 mg, BID",
                          "timing": {
                              "repeat": {
                                  "boundsPeriod": {
                                      "start": "2016-12-05T17:32:00.000-05:00"
                                  }
                              }
                          }
                      }
                  ],
                  "dispenseRequest": {
                      "validityPeriod": {
                          "start": "2016-12-05T17:32:06.000-05:00"
                      }
                  }
              }
          },
          {
              "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/MedicationRequest/65875851",
              "resource": {
                  "resourceType": "MedicationRequest",
                  "id": "65875851",
                  "meta": {
                      "versionId": "0",
                      "lastUpdated": "2016-12-05T22:59:31.000Z"
                  },
                  "text": {
                      "status": "generated",
                      "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\"&gt;&lt;p&gt;&lt;b&gt;Medication Request&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Intent&lt;/b&gt;: Order&lt;/p&gt;&lt;p&gt;&lt;b&gt;Medication&lt;/b&gt;: Misc Prescription (FHIR Test Medication)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Dosage Instructions&lt;/b&gt;: 60 mg, BID&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: PETERS, TIMOTHY&lt;/p&gt;&lt;p&gt;&lt;b&gt;Authored On&lt;/b&gt;: Dec  5, 2016  4:59 P.M. CST&lt;/p&gt;&lt;/div&gt;"
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
                      "text": "Misc Prescription (FHIR Test Medication)"
                  },
                  "subject": {
                      "reference": "Patient/1316024",
                      "display": "PETERS, TIMOTHY"
                  },
                  "encounter": {
                      "reference": "Encounter/6188499"
                  },
                  "authoredOn": "2016-12-05T17:59:31.000-05:00",
                  "requester": {
                      "extension": [
                          {
                              "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
                              "valueCode": "unknown"
                          }
                      ]
                  },
                  "dosageInstruction": [
                      {
                          "text": "60 mg, BID",
                          "timing": {
                              "repeat": {
                                  "boundsPeriod": {
                                      "start": "2016-02-16T03:00:00.000-05:00"
                                  }
                              }
                          }
                      }
                  ],
                  "dispenseRequest": {
                      "validityPeriod": {
                          "start": "2016-12-05T17:59:31.000-05:00"
                      }
                  }
              }
          },
          {
              "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/MedicationRequest/66529053",
              "resource": {
                  "resourceType": "MedicationRequest",
                  "id": "66529053",
                  "meta": {
                      "versionId": "0",
                      "lastUpdated": "2016-12-16T16:35:32.000Z"
                  },
                  "text": {
                      "status": "generated",
                      "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\"&gt;&lt;p&gt;&lt;b&gt;Medication Request&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Intent&lt;/b&gt;: Order&lt;/p&gt;&lt;p&gt;&lt;b&gt;Medication&lt;/b&gt;: Misc Prescription (FHIR Test Medication)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Dosage Instructions&lt;/b&gt;: 60 mg, BID&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: PETERS, TIMOTHY&lt;/p&gt;&lt;p&gt;&lt;b&gt;Authored On&lt;/b&gt;: Dec 16, 2016 10:35 A.M. CST&lt;/p&gt;&lt;/div&gt;"
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
                      "text": "Misc Prescription (FHIR Test Medication)"
                  },
                  "subject": {
                      "reference": "Patient/1316024",
                      "display": "PETERS, TIMOTHY"
                  },
                  "encounter": {
                      "reference": "Encounter/6188499"
                  },
                  "authoredOn": "2016-12-16T11:35:32.000-05:00",
                  "requester": {
                      "extension": [
                          {
                              "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
                              "valueCode": "unknown"
                          }
                      ]
                  },
                  "dosageInstruction": [
                      {
                          "text": "60 mg, BID",
                          "timing": {
                              "repeat": {
                                  "boundsPeriod": {
                                      "start": "2015-05-05T10:00:00.000-04:00"
                                  }
                              }
                          }
                      }
                  ],
                  "dispenseRequest": {
                      "validityPeriod": {
                          "start": "2016-12-16T11:35:32.000-05:00"
                      }
                  }
              }
          }
      ]
    }
  end
end
