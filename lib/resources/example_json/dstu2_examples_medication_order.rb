module Cerner
  module Resources

    DSTU2_MEDICATION_ORDER_BUNDLE ||=
      {
        "resourceType": "Bundle",
        "id": "062aa0c7-40ea-4dba-9613-0b2c50e76491",
        "type": "searchset",
        "total": 5,
        "link": [
          {
            "relation": "self",
            "url": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/MedicationOrder?patient=1083999&_count=25"
          }
        ],
        "entry": [
          {
            "fullUrl": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/MedicationOrder/12168993",
            "resource": {
              "resourceType": "MedicationOrder",
              "id": "12168993",
              "meta": {
                "versionId": "1",
                "lastUpdated": "2011-10-03T21:23:47.000Z"
              },
              "text": {
                "status": "generated",
                "div": "&lt;div>&lt;p>&lt;b>Medication Order&lt;/b>&lt;/p>&lt;p>&lt;b>Patient Name&lt;/b>: River Song&lt;/p>&lt;p>&lt;b>Medication Name&lt;/b>: Amino Acids 8.5% (TPN) 12.5 % + Dextrose 70% (TPN) 3 % + M.V.I. Pediatric 3.2 mL + Multiple Trace E&lt;/p>&lt;p>&lt;b>Dosage Instructions&lt;/b>: 8.33 mL/hr, IV&lt;/p>&lt;p>&lt;b>Status&lt;/b>: active&lt;/p>&lt;/div>"
              },
              "contained": [
                {
                  "resourceType": "Medication",
                  "id": "20657392",
                  "code": {
                    "text": "Amino Acids 8.5% (TPN) 12.5 % + Dextrose 70% (TPN) 3 % + M.V.I. Pediatric 3.2 mL + Multiple Trace E"
                  },
                  "product": {
                    "ingredient": [
                      {
                        "item": {
                          "reference": "#20653453-1",
                          "display": "Amino Acids 8.5% (TPN)"
                        },
                        "amount": {
                          "numerator": {
                            "value": 12.5,
                            "unit": "%",
                            "system": "http://unitsofmeasure.org",
                            "code": "%"
                          },
                          "denominator": {
                            "value": 200,
                            "unit": "mL",
                            "system": "http://unitsofmeasure.org",
                            "code": "mL"
                          }
                        }
                      },
                      {
                        "item": {
                          "reference": "#20653450-2",
                          "display": "Dextrose 70% (TPN)"
                        },
                        "amount": {
                          "numerator": {
                            "value": 3,
                            "unit": "%",
                            "system": "http://unitsofmeasure.org",
                            "code": "%"
                          },
                          "denominator": {
                            "value": 200,
                            "unit": "mL",
                            "system": "http://unitsofmeasure.org",
                            "code": "mL"
                          }
                        }
                      },
                      {
                        "item": {
                          "reference": "#2763960-3",
                          "display": "M.V.I. Pediatric"
                        },
                        "amount": {
                          "numerator": {
                            "value": 3.2,
                            "unit": "mL",
                            "system": "http://unitsofmeasure.org",
                            "code": "mL"
                          },
                          "denominator": {
                            "value": 200,
                            "unit": "mL",
                            "system": "http://unitsofmeasure.org",
                            "code": "mL"
                          }
                        }
                      },
                      {
                        "item": {
                          "reference": "#3976642-4",
                          "display": "Multiple Trace Element Neonatal"
                        },
                        "amount": {
                          "numerator": {
                            "value": 0.2,
                            "unit": "mL",
                            "system": "http://unitsofmeasure.org",
                            "code": "mL"
                          },
                          "denominator": {
                            "value": 200,
                            "unit": "mL",
                            "system": "http://unitsofmeasure.org",
                            "code": "mL"
                          }
                        }
                      },
                      {
                        "item": {
                          "reference": "#20653460-5",
                          "display": "Heparin (TPN)"
                        },
                        "amount": {
                          "numerator": {
                            "value": 100,
                            "unit": "units",
                            "system": "http://unitsofmeasure.org",
                            "code": "U"
                          },
                          "denominator": {
                            "value": 200,
                            "unit": "mL",
                            "system": "http://unitsofmeasure.org",
                            "code": "mL"
                          }
                        }
                      },
                      {
                        "item": {
                          "reference": "#20657392-6",
                          "display": "TPN Total Volume #1"
                        },
                        "amount": {
                          "numerator": {
                            "value": 200,
                            "unit": "mL",
                            "system": "http://unitsofmeasure.org",
                            "code": "mL"
                          },
                          "denominator": {
                            "value": 200,
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
                  "id": "20653453-1",
                  "code": {
                    "text": "Amino Acids 8.5% (TPN)"
                  }
                },
                {
                  "resourceType": "Medication",
                  "id": "20653450-2",
                  "code": {
                    "text": "Dextrose 70% (TPN)"
                  }
                },
                {
                  "resourceType": "Medication",
                  "id": "2763960-3",
                  "code": {
                    "text": "M.V.I. Pediatric"
                  }
                },
                {
                  "resourceType": "Medication",
                  "id": "3976642-4",
                  "code": {
                    "text": "Multiple Trace Element Neonatal"
                  }
                },
                {
                  "resourceType": "Medication",
                  "id": "20653460-5",
                  "code": {
                    "text": "Heparin (TPN)"
                  }
                },
                {
                  "resourceType": "Medication",
                  "id": "20657392-6",
                  "code": {
                    "text": "TPN Total Volume #1"
                  }
                }
              ],
              "dateWritten": "2011-10-03T16:23:24.000-05:00",
              "status": "active",
              "patient": {
                "reference": "Patient/1083999",
                "display": "River Song"
              },
              "prescriber": {
                "reference": "Practitioner/589923",
                "display": "Dr. Who"
              },
              "encounter": {
                "reference": "Encounter/1135920"
              },
              "medicationReference": {
                "reference": "#20657392",
                "display": "Amino Acids 8.5% (TPN) 12.5 % + Dextrose 70% (TPN) 3 % + M.V.I. Pediatric 3.2 mL + Multiple Trace E"
              },
              "dosageInstruction": [
                {
                  "text": "8.33 mL/hr, IV",
                  "timing": {
                    "repeat": {
                      "boundsPeriod": {
                        "start": "2011-10-03T16:23:00.000-05:00"
                      },
                      "duration": 24,
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
                  "doseQuantity": {
                    "value": 200,
                    "unit": "mL",
                    "system": "http://unitsofmeasure.org",
                    "code": "mL"
                  },
                  "rateRatio": {
                    "numerator": {
                      "value": 200,
                      "unit": "mL",
                      "system": "http://unitsofmeasure.org",
                      "code": "mL"
                    },
                    "denominator": {
                      "value": 24,
                      "unit": "hr",
                      "system": "http://unitsofmeasure.org",
                      "code": "h"
                    }
                  }
                }
              ],
              "dispenseRequest": {
                "validityPeriod": {
                  "start": "2011-10-03T16:23:24.000-05:00"
                }
              }
            }
          },
          {
            "fullUrl": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/MedicationOrder/12229327",
            "resource": {
              "resourceType": "MedicationOrder",
              "id": "12229327",
              "meta": {
                "versionId": "0",
                "lastUpdated": "2012-03-16T09:14:49.000Z"
              },
              "text": {
                "status": "generated",
                "div": "&lt;div>&lt;p>&lt;b>Medication Order&lt;/b>&lt;/p>&lt;p>&lt;b>Patient Name&lt;/b>: River Song&lt;/p>&lt;p>&lt;b>Medication Name&lt;/b>: Dextrose 5% in Water 1,000 mL&lt;/p>&lt;p>&lt;b>Dosage Instructions&lt;/b>: 100 mL/hr, IV&lt;/p>&lt;p>&lt;b>Status&lt;/b>: active&lt;/p>&lt;/div>"
              },
              "dateWritten": "2012-03-16T04:14:48.000-05:00",
              "status": "active",
              "patient": {
                "reference": "Patient/1083999",
                "display": "River Song"
              },
              "prescriber": {
                "reference": "Practitioner/589923",
                "display": "Dr. Who"
              },
              "encounter": {
                "reference": "Encounter/1135920"
              },
              "medicationCodeableConcept": {
                "text": "Dextrose 5% in Water 1,000 mL"
              },
              "dosageInstruction": [
                {
                  "text": "100 mL/hr, IV",
                  "timing": {
                    "repeat": {
                      "boundsPeriod": {
                        "start": "2012-03-16T04:14:00.000-05:00"
                      },
                      "duration": 10,
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
                  "doseQuantity": {
                    "value": 1000,
                    "unit": "mL",
                    "system": "http://unitsofmeasure.org",
                    "code": "mL"
                  },
                  "rateRatio": {
                    "numerator": {
                      "value": 1000,
                      "unit": "mL",
                      "system": "http://unitsofmeasure.org",
                      "code": "mL"
                    },
                    "denominator": {
                      "value": 10,
                      "unit": "hr",
                      "system": "http://unitsofmeasure.org",
                      "code": "h"
                    }
                  }
                }
              ],
              "dispenseRequest": {
                "validityPeriod": {
                  "start": "2012-03-16T04:14:48.000-05:00"
                }
              }
            }
          },
          {
            "fullUrl": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/MedicationOrder/12229374",
            "resource": {
              "resourceType": "MedicationOrder",
              "id": "12229374",
              "meta": {
                "versionId": "0",
                "lastUpdated": "2012-03-16T09:26:30.000Z"
              },
              "text": {
                "status": "generated",
                "div": "&lt;div>&lt;p>&lt;b>Medication Order&lt;/b>&lt;/p>&lt;p>&lt;b>Patient Name&lt;/b>: River Song&lt;/p>&lt;p>&lt;b>Medication Name&lt;/b>: amoxicillin&lt;/p>&lt;p>&lt;b>Dosage Instructions&lt;/b>: 125 mg, Oral, As Indicated, PRN: allergy symptoms&lt;/p>&lt;p>&lt;b>Status&lt;/b>: active&lt;/p>&lt;/div>"
              },
              "dateWritten": "2012-03-16T04:25:32.000-05:00",
              "status": "active",
              "patient": {
                "reference": "Patient/1083999",
                "display": "River Song"
              },
              "prescriber": {
                "reference": "Practitioner/1260008",
                "display": "Dr. Who"
              },
              "encounter": {
                "reference": "Encounter/1135920"
              },
              "medicationCodeableConcept": {
                "coding": [
                  {
                    "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
                    "code": "723",
                    "display": "Amoxicillin",
                    "userSelected": false
                  }
                ],
                "text": "amoxicillin"
              },
              "dosageInstruction": [
                {
                  "text": "125 mg, Oral, As Indicated, PRN: allergy symptoms",
                  "timing": {
                    "repeat": {
                      "boundsPeriod": {
                        "start": "2012-03-16T04:26:00.000-05:00"
                      }
                    },
                    "code": {
                      "text": "As Indicated"
                    }
                  },
                  "asNeededCodeableConcept": {
                    "coding": [
                      {
                        "system": "http://snomed.info/sct",
                        "code": "473011001",
                        "display": "allergic condition (disorder)",
                        "userSelected": false
                      }
                    ],
                    "text": "allergy symptoms"
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
                  "doseQuantity": {
                    "value": 125,
                    "unit": "mg",
                    "system": "http://unitsofmeasure.org",
                    "code": "mg"
                  }
                }
              ],
              "dispenseRequest": {
                "validityPeriod": {
                  "start": "2012-03-16T04:25:32.000-05:00"
                }
              }
            }
          },
          {
            "fullUrl": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/MedicationOrder/14958880",
            "resource": {
              "resourceType": "MedicationOrder",
              "id": "14958880",
              "meta": {
                "versionId": "0",
                "lastUpdated": "2012-11-07T21:11:50.000Z"
              },
              "text": {
                "status": "generated",
                "div": "&lt;div>&lt;p>&lt;b>Medication Order&lt;/b>&lt;/p>&lt;p>&lt;b>Patient Name&lt;/b>: River Song&lt;/p>&lt;p>&lt;b>Medication Name&lt;/b>: warfarin&lt;/p>&lt;p>&lt;b>Dosage Instructions&lt;/b>: 4 mg, Oral, Daily&lt;/p>&lt;p>&lt;b>Status&lt;/b>: active&lt;/p>&lt;/div>"
              },
              "dateWritten": "2012-11-07T15:11:13.000-06:00",
              "status": "active",
              "patient": {
                "reference": "Patient/1083999",
                "display": "River Song"
              },
              "prescriber": {
                "reference": "Practitioner/709938",
                "display": "Dr. Who"
              },
              "encounter": {
                "reference": "Encounter/1135920"
              },
              "medicationCodeableConcept": {
                "coding": [
                  {
                    "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
                    "code": "11289",
                    "display": "Warfarin",
                    "userSelected": false
                  }
                ],
                "text": "warfarin"
              },
              "dosageInstruction": [
                {
                  "text": "4 mg, Oral, Daily",
                  "timing": {
                    "repeat": {
                      "boundsPeriod": {
                        "start": "2012-11-07T15:11:00.000-06:00"
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
                  "doseQuantity": {
                    "value": 4,
                    "unit": "mg",
                    "system": "http://unitsofmeasure.org",
                    "code": "mg"
                  }
                }
              ],
              "dispenseRequest": {
                "validityPeriod": {
                  "start": "2012-11-07T15:11:13.000-06:00"
                }
              }
            }
          },
          {
            "fullUrl": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/MedicationOrder/12229319",
            "resource": {
              "resourceType": "MedicationOrder",
              "id": "12229319",
              "meta": {
                "versionId": "1",
                "lastUpdated": "2012-03-16T09:08:10.000Z"
              },
              "text": {
                "status": "generated",
                "div": "&lt;div>&lt;p>&lt;b>Medication Order&lt;/b>&lt;/p>&lt;p>&lt;b>Patient Name&lt;/b>: River Song&lt;/p>&lt;p>&lt;b>Medication Name&lt;/b>: ciprofloxacin (ciprofloxacin 750 mg oral tablet)&lt;/p>&lt;p>&lt;b>Dosage Instructions&lt;/b>: 750 mg, 1 tabs, Oral, Once, 1 tabs&lt;/p>&lt;p>&lt;b>Status&lt;/b>: completed&lt;/p>&lt;/div>"
              },
              "dateWritten": "2012-03-16T04:07:39.000-05:00",
              "status": "completed",
              "dateEnded": "2012-03-16T04:08:10.000-05:00",
              "patient": {
                "reference": "Patient/1083999",
                "display": "River Song"
              },
              "prescriber": {
                "reference": "Practitioner/1260008",
                "display": "Dr. Who"
              },
              "encounter": {
                "reference": "Encounter/1135920"
              },
              "medicationCodeableConcept": {
                "coding": [
                  {
                    "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
                    "code": "197512",
                    "display": "Ciprofloxacin 750 MG Oral Tablet",
                    "userSelected": false
                  }
                ],
                "text": "ciprofloxacin (ciprofloxacin 750 mg oral tablet)"
              },
              "dosageInstruction": [
                {
                  "text": "750 mg, 1 tabs, Oral, Once, 1 tabs",
                  "timing": {
                    "repeat": {
                      "boundsQuantity": {
                        "value": 1,
                        "unit": "days",
                        "system": "http://unitsofmeasure.org",
                        "code": "d"
                      }
                    },
                    "code": {
                      "text": "Once"
                    }
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
                  "doseQuantity": {
                    "value": 1,
                    "unit": "tabs",
                    "system": "http://unitsofmeasure.org",
                    "code": "{tbl}"
                  }
                }
              ],
              "dispenseRequest": {
                "validityPeriod": {
                  "start": "2012-03-16T04:07:39.000-05:00"
                },
                "quantity": {
                  "value": 1,
                  "unit": "tabs",
                  "system": "http://unitsofmeasure.org",
                  "code": "{tbl}"
                }
              }
            }
          }
        ]
      }

  end
end
