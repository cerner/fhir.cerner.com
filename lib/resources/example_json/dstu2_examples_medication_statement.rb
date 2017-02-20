module Cerner
  module Resources

    DSTU2_MEDICATION_STATEMENT_BUNDLE ||= {
    "resourceType": "Bundle",
    "id": "7aa4c6ad-fa0c-4169-83d2-49dd3a2dde28",
    "type": "searchset",
    "total": 4,
    "link": [{
        "relation": "self",
        "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/MedicationStatement?patient=4342010&_count=50"
    }],
    "entry": [{
        "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/MedicationStatement/21389901",
        "resource": {
            "resourceType": "MedicationStatement",
            "id": "21389901",
            "meta": {
                "versionId": "0",
                "lastUpdated": "2016-06-27T15:00:00.000Z"
            },
            "text": {
                "status": "generated",
                "div": "&lt;div>&lt;p>&lt;b>Medication Statement&lt;/b>&lt;/p>&lt;p>&lt;b>Patient Name&lt;/b>: Smart, Joe&lt;/p>&lt;p>&lt;b>Medication Name&lt;/b>: acebutolol (Sectral)&lt;/p>&lt;p>&lt;b>Dosage Instructions&lt;/b>: 200 mg, 1 caps, Oral, Daily&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Active&lt;/p>&lt;p>&lt;b>Taken&lt;/b>: Yes&lt;/p>&lt;/div>"
            },
            "patient": {
                "reference": "Patient/4342010",
                "display": "Smart, Joe"
            },
            "informationSource": {
                "reference": "Practitioner/1912007",
                "display": "Who, Doctor"
            },
            "dateAsserted": "2016-06-27T09:57:32.000-05:00",
            "status": "active",
            "wasNotTaken": false,
            "effectivePeriod": {
                "start": "2016-06-27T09:00:00.000-07:00"
            },
            "supportingInformation": [{
                "reference": "MedicationOrder/21389901"
            }],
            "medicationCodeableConcept": {
                "coding": [{
                    "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
                    "code": "9631",
                    "display": "Sectral",
                    "userSelected": false
                }],
                "text": "acebutolol (Sectral)"
            },
            "dosage": [{
                "text": "200 mg, 1 caps, Oral, Daily",
                "_text": {
                    "extension": [{
                        "url": "https://fhir-ehr.cerner.com/dstu2/StructureDefinition/patient-friendly-display",
                        "valueString": "200 Milligram Oral every day. Refills: 0."
                    }]
                },
                "timing": {
                    "repeat": {
                        "boundsPeriod": {
                            "start": "2016-06-27T09:00:00.000-07:00"
                        }
                    },
                    "code": {
                        "coding": [{
                            "system": "http://hl7.org/fhir/timing-abbreviation",
                            "code": "QD",
                            "display": "QD",
                            "userSelected": false
                        }],
                        "text": "Daily"
                    }
                },
                "route": {
                    "coding": [{
                        "system": "http://ncimeta.nci.nih.gov",
                        "code": "C38288",
                        "display": "ORAL",
                        "userSelected": false
                    }],
                    "text": "Oral"
                },
                "quantityQuantity": {
                    "value": 200.0,
                    "unit": "mg",
                    "system": "http://unitsofmeasure.org",
                    "code": "mg"
                }
            }]
        }
    }, {
        "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/MedicationStatement/21389899",
        "resource": {
            "resourceType": "MedicationStatement",
            "id": "21389899",
            "meta": {
                "versionId": "0",
                "lastUpdated": "2016-06-27T14:59:58.000Z"
            },
            "text": {
                "status": "generated",
                "div": "&lt;div>&lt;p>&lt;b>Medication Statement&lt;/b>&lt;/p>&lt;p>&lt;b>Patient Name&lt;/b>: Smart, Joe&lt;/p>&lt;p>&lt;b>Medication Name&lt;/b>: furosemide (Lasix)&lt;/p>&lt;p>&lt;b>Dosage Instructions&lt;/b>: 80 mg, 1 tabs, Oral, Daily&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Active&lt;/p>&lt;p>&lt;b>Taken&lt;/b>: Yes&lt;/p>&lt;/div>"
            },
            "patient": {
                "reference": "Patient/4342010",
                "display": "Smart, Joe"
            },
            "informationSource": {
                "reference": "Practitioner/1912007",
                "display": "Who, Doctor"
            },
            "dateAsserted": "2016-06-27T09:56:37.000-05:00",
            "status": "active",
            "wasNotTaken": false,
            "effectivePeriod": {
                "start": "2016-06-27T09:00:00.000-07:00"
            },
            "supportingInformation": [{
                "reference": "MedicationOrder/21389899"
            }],
            "medicationCodeableConcept": {
                "coding": [{
                    "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
                    "code": "202991",
                    "display": "Lasix",
                    "userSelected": false
                }],
                "text": "furosemide (Lasix)"
            },
            "dosage": [{
                "text": "80 mg, 1 tabs, Oral, Daily",
                "_text": {
                    "extension": [{
                        "url": "https://fhir-ehr.cerner.com/dstu2/StructureDefinition/patient-friendly-display",
                        "valueString": "80 Milligram Oral every day. Refills: 0."
                    }]
                },
                "timing": {
                    "repeat": {
                        "boundsPeriod": {
                            "start": "2016-06-27T09:00:00.000-07:00"
                        }
                    },
                    "code": {
                        "coding": [{
                            "system": "http://hl7.org/fhir/timing-abbreviation",
                            "code": "QD",
                            "display": "QD",
                            "userSelected": false
                        }],
                        "text": "Daily"
                    }
                },
                "route": {
                    "coding": [{
                        "system": "http://ncimeta.nci.nih.gov",
                        "code": "C38288",
                        "display": "ORAL",
                        "userSelected": false
                    }],
                    "text": "Oral"
                },
                "quantityQuantity": {
                    "value": 80.0,
                    "unit": "mg",
                    "system": "http://unitsofmeasure.org",
                    "code": "mg"
                }
            }]
        }
    }, {
        "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/MedicationStatement/22298109",
        "resource": {
            "resourceType": "MedicationStatement",
            "id": "22298109",
            "meta": {
                "versionId": "0",
                "lastUpdated": "2017-02-09T16:31:47.000Z"
            },
            "text": {
                "status": "generated",
                "div": "&lt;div>&lt;p>&lt;b>Medication Statement&lt;/b>&lt;/p>&lt;p>&lt;b>Patient Name&lt;/b>: Smart, Joe&lt;/p>&lt;p>&lt;b>Medication Name&lt;/b>: vancomycin&lt;/p>&lt;p>&lt;b>Dosage Instructions&lt;/b>: 1 g, IV, q12hr&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Active&lt;/p>&lt;p>&lt;b>Taken&lt;/b>: Yes&lt;/p>&lt;/div>"
            },
            "patient": {
                "reference": "Patient/4342010",
                "display": "Smart, Joe"
            },
            "informationSource": {
                "reference": "Practitioner/4474007",
                "display": "Song, River"
            },
            "dateAsserted": "2017-02-09T10:31:00.000-06:00",
            "status": "active",
            "wasNotTaken": false,
            "effectivePeriod": {
                "start": "2017-02-09T09:00:00.000-08:00"
            },
            "supportingInformation": [{
                "reference": "MedicationOrder/22298109"
            }],
            "medicationCodeableConcept": {
                "coding": [{
                    "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
                    "code": "11124",
                    "display": "Vancomycin",
                    "userSelected": false
                }],
                "text": "vancomycin"
            },
            "dosage": [{
                "text": "1 g, IV, q12hr",
                "_text": {
                    "extension": [{
                        "url": "https://fhir-ehr.cerner.com/dstu2/StructureDefinition/patient-friendly-display",
                        "valueString": "1 Gram Intravenous every 12 hours. Refills: 0."
                    }]
                },
                "timing": {
                    "repeat": {
                        "boundsPeriod": {
                            "start": "2017-02-09T09:00:00.000-08:00"
                        }
                    },
                    "code": {
                        "text": "q12hr"
                    }
                },
                "route": {
                    "coding": [{
                        "system": "http://ncimeta.nci.nih.gov",
                        "code": "C38276",
                        "display": "INTRAVENOUS",
                        "userSelected": false
                    }],
                    "text": "IV"
                },
                "quantityQuantity": {
                    "value": 1.0,
                    "unit": "g",
                    "system": "http://unitsofmeasure.org",
                    "code": "g"
                }
            }]
        }
    }, {
        "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/MedicationStatement/22298077",
        "resource": {
            "resourceType": "MedicationStatement",
            "id": "22298077",
            "meta": {
                "versionId": "1",
                "lastUpdated": "2017-02-09T16:30:45.000Z"
            },
            "text": {
                "status": "generated",
                "div": "&lt;div>&lt;p>&lt;b>Medication Statement&lt;/b>&lt;/p>&lt;p>&lt;b>Patient Name&lt;/b>: Smart, Joe&lt;/p>&lt;p>&lt;b>Medication Name&lt;/b>: vancomycin + Dextrose 5% in Water 100 mL&lt;/p>&lt;p>&lt;b>Dosage Instructions&lt;/b>: 100 mg, IV, q12hr&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Entered in Error&lt;/p>&lt;/div>"
            },
            "contained": [{
                "resourceType": "Medication",
                "id": "2770945",
                "code": {
                    "text": "vancomycin + Dextrose 5% in Water 100 mL"
                },
                "product": {
                    "ingredient": [{
                        "item": {
                            "reference": "#2770945-1",
                            "display": "vancomycin"
                        },
                        "amount": {
                            "numerator": {
                                "value": 100.0,
                                "unit": "mg",
                                "system": "http://unitsofmeasure.org",
                                "code": "mg"
                            },
                            "denominator": {
                                "value": 100.0,
                                "unit": "mL",
                                "system": "http://unitsofmeasure.org",
                                "code": "mL"
                            }
                        }
                    }, {
                        "item": {
                            "reference": "#2778758-2",
                            "display": "Dextrose 5% in Water"
                        },
                        "amount": {
                            "numerator": {
                                "value": 100.0,
                                "unit": "mL",
                                "system": "http://unitsofmeasure.org",
                                "code": "mL"
                            },
                            "denominator": {
                                "value": 100.0,
                                "unit": "mL",
                                "system": "http://unitsofmeasure.org",
                                "code": "mL"
                            }
                        }
                    }]
                }
            }, {
                "resourceType": "Medication",
                "id": "2770945-1",
                "code": {
                    "coding": [{
                        "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
                        "code": "11124",
                        "display": "Vancomycin",
                        "userSelected": false
                    }],
                    "text": "vancomycin"
                }
            }, {
                "resourceType": "Medication",
                "id": "2778758-2",
                "code": {
                    "coding": [{
                        "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
                        "code": "309778",
                        "display": "Glucose 50 MG/ML Injectable Solution",
                        "userSelected": false
                    }],
                    "text": "Dextrose 5% in Water"
                }
            }],
            "patient": {
                "reference": "Patient/4342010",
                "display": "Smart, Joe"
            },
            "informationSource": {
                "reference": "Practitioner/4474007",
                "display": "Song, River"
            },
            "dateAsserted": "2017-02-09T09:29:09.000-06:00",
            "status": "entered-in-error",
            "effectivePeriod": {
                "start": "2017-02-09T08:00:00.000-08:00",
                "end": "2017-02-09T08:30:45.000-08:00"
            },
            "supportingInformation": [{
                "reference": "MedicationOrder/22298077"
            }],
            "medicationReference": {
                "reference": "#2770945",
                "display": "vancomycin + Dextrose 5% in Water 100 mL"
            },
            "dosage": [{
                "text": "100 mg, IV, q12hr",
                "_text": {
                    "extension": [{
                        "url": "https://fhir-ehr.cerner.com/dstu2/StructureDefinition/patient-friendly-display",
                        "valueString": "Intravenous every 12 hours for 6 Days. Refills: 0."
                    }]
                },
                "timing": {
                    "repeat": {
                        "boundsQuantity": {
                            "value": 6,
                            "unit": "days",
                            "system": "http://unitsofmeasure.org",
                            "code": "d"
                        }
                    },
                    "code": {
                        "text": "q12hr"
                    }
                },
                "route": {
                    "coding": [{
                        "system": "http://ncimeta.nci.nih.gov",
                        "code": "C38276",
                        "display": "INTRAVENOUS",
                        "userSelected": false
                    }],
                    "text": "IV"
                },
                "quantityQuantity": {
                    "value": 100.0,
                    "unit": "mL",
                    "system": "http://unitsofmeasure.org",
                    "code": "mL"
                }
            }]
        }
    }]
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
