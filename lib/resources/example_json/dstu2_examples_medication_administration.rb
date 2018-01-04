module Cerner
  module Resources

    DSTU2_MEDICATION_ADMINISTRATION_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "a9117d85-042f-4dda-9e38-dce0286c57a4",
      "type": "searchset",
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/MedicationAdministration?patient=4642007"
        },
        {
          "relation": "next",
          "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/MedicationAdministration?patient=4642007&-pageContext=H4sIAAAAAAAAADWMuwoCMRBF_yW1BJN1iU4nrqVWW9hJSCYmYB6Ms4KI_25AvN3hHs5bNHtDAeJ8vMxi1Ymw8An93udUDgvXEPq7UAGHVJAgJw8uWmKJz65CiIna3b4kY25XilX-RPto0tUMRptRb4fexuInnvM_qkal9M4Mm3Xf5wtjreoSiQAAAA%3D%3D&-pageDirection=NEXT"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/MedicationAdministration/7283373",
          "resource": { # REGULAR, MLTP CODINGS
            "resourceType": "MedicationAdministration",
            "id": "7283373",
            "meta": {
              "versionId": "7283374",
              "lastUpdated": "2017-11-22T17:25:12.000Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div>&lt;p>&lt;b>Medication Administration&lt;/b>&lt;/p>&lt;p>&lt;b>Patient Name&lt;/b>: Smart, Connie&lt;/p>&lt;p>&lt;b>Medication Display&lt;/b>: acetaminophen&lt;/p>&lt;p>&lt;b>Was Not Given&lt;/b>: False&lt;/p>&lt;p>&lt;b>Dosage Quantity&lt;/b>: 120&lt;/p>&lt;p>&lt;b>Medication Status&lt;/b>: in-progress&lt;/p>&lt;p>&lt;b>Effective Time&lt;/b>: 2017-11-22T17:25:00.000Z&lt;/p>&lt;/div>"
            },
            "status": "in-progress",
            "patient": {
              "reference": "Patient/4642007",
              "display": "Smart, Connie"
            },
            "practitioner": {
              "reference": "Practitioner/1776007",
              "display": "Jones, Martha"
            },
            "encounter": {
              "reference": "Encounter/4251906"
            },
            "prescription": {
              "reference": "MedicationOrder/22954085"
            },
            "wasNotGiven": false,
            "effectiveTimeDateTime": "2017-11-22T17:25:00.000Z",
            "medicationCodeableConcept": {
              "coding": [
                {
                  "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
                  "code": "161",
                  "display": "Acetaminophen",
                  "userSelected": false
                }
              ],
              "text": "acetaminophen"
            },
            "dosage": {
              "text": "120 mg Oral q4hr",
              "route": {
                "coding": [
                  {
                    "system": "http://ncimeta.nci.nih.gov",
                    "code": "C38288",
                    "display": "ORAL",
                    "userSelected": false
                  },
                  {
                    "system": "http://snomed.info/sct",
                    "code": "26643006",
                    "display": "Oral route (qualifier value)",
                    "userSelected": false
                  }
                ],
                "text": "Oral"
              },
              "quantity": {
                "value": 120,
                "unit": "mg",
                "system": "http://unitsofmeasure.org"
              }
            }
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/MedicationAdministration/7283283",
          "resource": {
            "resourceType": "MedicationAdministration",
            "id": "7283283",
            "meta": {
              "versionId": "7283294",
              "lastUpdated": "2017-11-22T16:10:18.000Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div>&lt;p>&lt;b>Medication Administration&lt;/b>&lt;/p>&lt;p>&lt;b>Patient Name&lt;/b>: Smart, Connie&lt;/p>&lt;p>&lt;b>Medication Display&lt;/b>: Sodium Chloride 0.154 MEQ/ML Injectable Solution&lt;/p>&lt;p>&lt;b>Was Not Given&lt;/b>: False&lt;/p>&lt;p>&lt;b>Dosage Quantity&lt;/b>: 100&lt;/p>&lt;p>&lt;b>Medication Status&lt;/b>: in-progress&lt;/p>&lt;p>&lt;b>Effective Time&lt;/b>: 2017-11-22T16:09:00.000Z&lt;/p>&lt;/div>"
            },
            "contained": [
              {
                "resourceType": "Medication",
                "id": "7283283",
                "product": {
                  "ingredient": [
                    {
                      "item": {
                        "reference": "#7283285-1",
                        "display": "Sodium Chloride 0.154 MEQ/ML Injectable Solution"
                      },
                      "amount": {
                        "numerator": {
                          "value": 100,
                          "unit": "mL",
                          "system": "http://unitsofmeasure.org"
                        }
                      }
                    },
                    {
                      "item": {
                        "reference": "#7283287-2",
                        "display": "Glucose 50 MG/ML Injectable Solution"
                      },
                      "amount": {
                        "numerator": {
                          "value": 25,
                          "unit": "mL",
                          "system": "http://unitsofmeasure.org"
                        }
                      }
                    }
                  ]
                }
              },
              {
                "resourceType": "Medication",
                "id": "7283285-1",
                "code": {
                  "coding": [
                    {
                      "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
                      "code": "313002",
                      "display": "Sodium Chloride 0.154 MEQ/ML Injectable Solution",
                      "userSelected": false
                    }
                  ],
                  "text": "Sodium Chloride 0.9%"
                }
              },
              {
                "resourceType": "Medication",
                "id": "7283287-2",
                "code": {
                  "coding": [
                    {
                      "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
                      "code": "309778",
                      "display": "Glucose 50 MG/ML Injectable Solution",
                      "userSelected": false
                    }
                  ],
                  "text": "Dextrose 5% in Water"
                }
              }
            ],
            "status": "in-progress",
            "patient": {
              "reference": "Patient/4642007",
              "display": "Smart, Connie"
            },
            "practitioner": {
              "reference": "Practitioner/1776007",
              "display": "Jones, Martha"
            },
            "encounter": {
              "reference": "Encounter/4251906"
            },
            "prescription": {
              "reference": "MedicationOrder/22961893"
            },
            "wasNotGiven": false,
            "effectiveTimeDateTime": "2017-11-22T16:09:00.000Z",
            "medicationReference": {
              "reference": "#7283283",
              "display": "Sodium Chloride 0.154 MEQ/ML Injectable Solution"
            },
            "note": "PRODUCT NOTE\nADMIN NOTE\nOrder coment\n2017-11-22T16:10:18.000Z - 1776007",
            "dosage": {
              "text": "IV Piggyback BID",
              "siteCodeableConcept": {
                "coding": [
                  {
                    "system": "http://snomed.info/sct",
                    "code": "368208006",
                    "display": "left upper arm structure (body structure)",
                    "userSelected": false
                  }
                ],
                "text": "Left Upper Arm"
              },
              "route": {
                "coding": [
                  {
                    "system": "http://ncimeta.nci.nih.gov",
                    "code": "C38279",
                    "display": "INTRAVENOUS DRIP",
                    "userSelected": false
                  },
                  {
                    "system": "http://snomed.info/sct",
                    "code": "47625008",
                    "display": "Intravenous route (qualifier value)",
                    "userSelected": false
                  }
                ],
                "text": "IV Piggyback"
              },
              "quantity": {
                "value": 100,
                "unit": "mL",
                "system": "http://unitsofmeasure.org"
              }
            }
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/MedicationAdministration/7277367",
          "resource": {
            "resourceType": "MedicationAdministration",
            "id": "7277367",
            "meta": {
              "versionId": "7277366",
              "lastUpdated": "2017-11-21T22:26:04.000Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div>&lt;p>&lt;b>Medication Administration&lt;/b>&lt;/p>&lt;p>&lt;b>Patient Name&lt;/b>: Smart, Connie&lt;/p>&lt;p>&lt;b>Medication Display&lt;/b>: Dextrose 2.5% with 0.45% NaCl&lt;/p>&lt;p>&lt;b>Was Not Given&lt;/b>: False&lt;/p>&lt;p>&lt;b>Dosage Quantity&lt;/b>: 100&lt;/p>&lt;p>&lt;b>Dosage Rate&lt;/b>: 125&lt;/p>&lt;p>&lt;b>Medication Status&lt;/b>: in-progress&lt;/p>&lt;p>&lt;b>Effective Start Time&lt;/b>: 2017-11-21T22:40:00.000Z&lt;/p>&lt;p>&lt;b>Effective End Time&lt;/b>: 2017-11-21T23:00:00.000Z&lt;/p>&lt;/div>"
            },
            "status": "in-progress",
            "patient": {
              "reference": "Patient/4642007",
              "display": "Smart, Connie"
            },
            "practitioner": {
              "reference": "Practitioner/1776007",
              "display": "Jones, Martha"
            },
            "encounter": {
              "reference": "Encounter/4251906"
            },
            "prescription": {
              "reference": "MedicationOrder/22954301"
            },
            "wasNotGiven": false,
            "effectiveTimePeriod": {
              "start": "2017-11-21T22:40:00.000Z",
              "end": "2017-11-21T23:00:00.000Z"
            },
            "medicationCodeableConcept": {
              "coding": [
                {
                  "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
                  "code": "244095",
                  "display": "Glucose 25 MG/ML / Sodium Chloride 0.0769 MEQ/ML Injectable Solution",
                  "userSelected": false
                }
              ],
              "text": "Dextrose 2.5% with 0.45% NaCl"
            },
            "dosage": {
              "text": "1000 mL IV at 125 mL/hr",
              "siteCodeableConcept": {
                "coding": [
                  {
                    "system": "http://snomed.info/sct",
                    "code": "78791008",
                    "display": "structure of right hand (body structure)",
                    "userSelected": false
                  }
                ],
                "text": "Right Hand"
              },
              "quantity": {
                "value": 100,
                "unit": "mL",
                "system": "http://unitsofmeasure.org"
              },
              "rateRatio": {
                "numerator": {
                  "value": 125,
                  "unit": "mL",
                  "system": "http://unitsofmeasure.org"
                },
                "denominator": {
                  "value": 1,
                  "unit": "h",
                  "system": "http://unitsofmeasure.org"
                }
              }
            }
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/MedicationAdministration/7277321",
          "resource": {
            "resourceType": "MedicationAdministration",
            "id": "7277321",
            "meta": {
              "versionId": "7277322",
              "lastUpdated": "2017-11-21T21:56:15.000Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div>&lt;p>&lt;b>Medication Administration&lt;/b>&lt;/p>&lt;p>&lt;b>Patient Name&lt;/b>: Smart, Connie&lt;/p>&lt;p>&lt;b>Medication Display&lt;/b>: acetaminophen&lt;/p>&lt;p>&lt;b>Was Not Given&lt;/b>: True&lt;/p>&lt;p>&lt;b>Medication Status&lt;/b>: stopped&lt;/p>&lt;p>&lt;b>Effective Time&lt;/b>: 2017-11-21T21:56:00.000Z&lt;/p>&lt;/div>"
            },
            "status": "stopped",
            "patient": {
              "reference": "Patient/4642007",
              "display": "Smart, Connie"
            },
            "practitioner": {
              "reference": "Practitioner/1776007",
              "display": "Jones, Martha"
            },
            "encounter": {
              "reference": "Encounter/4251906"
            },
            "prescription": {
              "reference": "MedicationOrder/22954085"
            },
            "wasNotGiven": true,
            "reasonNotGiven": [
              {
                "coding": [
                  {
                    "code": "2593",
                    "display": "Not Done: Patient Sleeping",
                    "userSelected": true
                  }
                ],
                "text": "Not Done: Patient Sleeping"
              }
            ],
            "effectiveTimeDateTime": "2017-11-21T21:56:00.000Z",
            "medicationCodeableConcept": {
              "coding": [
                {
                  "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
                  "code": "161",
                  "display": "Acetaminophen",
                  "userSelected": false
                }
              ],
              "text": "acetaminophen"
            },
            "note": "2017-11-21T21:56:14.000Z - 1776007 - Result comment entered for acetaminophen - Chart Not Done workflow\n"
          }
        }
      ]
    }

    DSTU2_MEDICATION_ADMINISTRATION_ENTRY ||= {
      "resourceType": "MedicationAdministration",
      "id": "7283373",
      "meta": {
        "versionId": "7283374",
        "lastUpdated": "2017-11-22T17:25:12.000Z"
      },
      "text": {
        "status": "generated",
        "div": "&lt;div>&lt;p>&lt;b>Medication Administration&lt;/b>&lt;/p>&lt;p>&lt;b>Patient Name&lt;/b>: Smart, Connie&lt;/p>&lt;p>&lt;b>Medication Display&lt;/b>: acetaminophen&lt;/p>&lt;p>&lt;b>Was Not Given&lt;/b>: False&lt;/p>&lt;p>&lt;b>Dosage Quantity&lt;/b>: 120&lt;/p>&lt;p>&lt;b>Medication Status&lt;/b>: in-progress&lt;/p>&lt;p>&lt;b>Effective Time&lt;/b>: 2017-11-22T17:25:00.000Z&lt;/p>&lt;/div>"
      },
      "status": "in-progress",
      "patient": {
        "reference": "Patient/4642007",
        "display": "Smart, Connie"
      },
      "practitioner": {
        "reference": "Practitioner/1776007",
        "display": "Jones, Martha"
      },
      "encounter": {
        "reference": "Encounter/4251906"
      },
      "prescription": {
        "reference": "MedicationOrder/22954085"
      },
      "wasNotGiven": false,
      "effectiveTimeDateTime": "2017-11-22T17:25:00.000Z",
      "medicationCodeableConcept": {
        "coding": [
          {
            "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
            "code": "161",
            "display": "Acetaminophen",
            "userSelected": false
          }
        ],
        "text": "acetaminophen"
      },
      "dosage": {
        "text": "120 mg Oral q4hr",
        "route": {
          "coding": [
            {
              "system": "http://ncimeta.nci.nih.gov",
              "code": "C38288",
              "display": "ORAL",
              "userSelected": false
            },
            {
              "system": "http://snomed.info/sct",
              "code": "26643006",
              "display": "Oral route (qualifier value)",
              "userSelected": false
            }
          ],
          "text": "Oral"
        },
        "quantity": {
          "value": 120,
          "unit": "mg",
          "system": "http://unitsofmeasure.org"
        }
      }
    }

  end
end
