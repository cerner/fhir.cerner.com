module Cerner
  module Resources

    SOARIAN_MEDICATION_STATEMENT_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "7b5ba1a8-8d5f-4122-83fb-1e6192d1662b",
      "meta": {
        "lastUpdated": "2016-07-29T15:55:32.360-04:00"
      },
      "extension": [
        {
          "url": "http://cerner.hs.fhir.com/StructureDefinition/bundle-result-messages",
          "valueExtension": {
            "url": "http://cerner.hs.fhir.com/StructureDefinition/bundle-result-messages",
            "extension": [
              {
                "url": "Severity",
                "valueString": "info"
              },
              {
                "url": "Code",
                "valueString": "papi025"
              },
              {
                "url": "Message",
                "valueString": "This is the most current, known medication list and may not reflect the state of medications known at a previous date. It is the responsibility of the patient or patient representative to confirm the list of medications with either the patient's personal care provider or the patient's follow-up care provider to ensure the patient has an appropriate list of medications to take at home."
              }
            ]
          }
        }
      ],
      "type": "searchset",
      "link": [
        {
          "relation": "self",
          "url": "base-url/a7a929b8-2a11-4ed4-9803-c22906517844/MedicationStatement?patientId=393EC770-CFC9-4F5A-8B3A-784F2508F245&_format=json"
        }
      ],
      "entry": [
        {
          "resource": {
            "resourceType": "MedicationStatement",
            "text": {
              "status": "additional",
              "div": "&lt;div>acetaminophen (Tylenol Extra Strength) 500 mg Tablet, Ordered By: Admin  Admin&lt;br/>Directions: 2 tablet oral daily&lt;/div>"
            },
            "contained": [
              {
                "resourceType": "Medication",
                "id": "1",
                "code": {
                  "coding": [
                    {
                      "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
                      "code": "209459",
                      "display": "acetaminophen (Tylenol Extra Strength) 500 mg Tablet"
                    }
                  ]
                }
              }
            ],
            "identifier": [
              {
                "use": "official",
                "value": "I607_p_64533_1"
              }
            ],
            "patient": {
              "reference": "Patient/JacksonHerman324567"
            },
            "status": "active",
            "_status": {
              "extension": [
                {
                  "url": "http://cerner.hs.fhir.com/StructureDefinition/additional-status",
                  "valueString": "modified"
                }
              ]
            },
            "wasNotTaken": false,
            "medicationReference": {
              "reference": "#1",
              "display": "Medication/I607_p_64533_1"
            }
          }
        },
        {
          "resource": {
            "resourceType": "MedicationStatement",
            "text": {
              "status": "additional",
              "div": "&lt;div>diltiazem HCl (Cardizem) 180 mg Tablet, Ordered By: Admin  Admin&lt;br/>Directions: 1 tablet oral daily&lt;/div>"
            },
            "contained": [
              {
                "resourceType": "Medication",
                "id": "1",
                "code": {
                  "coding": [
                    {
                      "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
                      "display": "diltiazem HCl (Cardizem) 180 mg Tablet"
                    }
                  ]
                }
              }
            ],
            "identifier": [
              {
                "use": "official",
                "value": "I607_p_64533_3"
              }
            ],
            "patient": {
              "reference": "Patient/JacksonHerman324567"
            },
            "status": "active",
            "_status": {
              "extension": [
                {
                  "url": "http://cerner.hs.fhir.com/StructureDefinition/additional-status",
                  "valueString": "modified"
                }
              ]
            },
            "wasNotTaken": false,
            "medicationReference": {
              "reference": "#1",
              "display": "Medication/I607_p_64533_3"
            }
          }
        },
        {
          "resource": {
            "resourceType": "MedicationStatement",
            "text": {
              "status": "additional",
              "div": "&lt;div>diltiazem HCl 180 mg Tablet Extended Release 24 hr, Held By: Admin  Admin&lt;br/>Directions: 1 tablet oral twice a day&lt;/div>"
            },
            "contained": [
              {
                "resourceType": "Medication",
                "id": "1",
                "code": {
                  "coding": [
                    {
                      "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
                      "code": "830877",
                      "display": "diltiazem HCl 180 mg Tablet Extended Release 24 hr"
                    }
                  ]
                }
              }
            ],
            "identifier": [
              {
                "use": "official",
                "value": "I607_p_73019_0"
              }
            ],
            "patient": {
              "reference": "Patient/JacksonHerman324567"
            },
            "status": "intended",
            "wasNotTaken": true,
            "medicationReference": {
              "reference": "#1",
              "display": "Medication/I607_p_73019_0"
            }
          }
        },
        {
          "resource": {
            "resourceType": "MedicationStatement",
            "text": {
              "status": "additional",
              "div": "&lt;div>atorvastatin 40 mg Tablet&lt;br/>Directions: 1 tablet oral once&lt;/div>"
            },
            "contained": [
              {
                "resourceType": "Medication",
                "id": "1",
                "code": {
                  "coding": [
                    {
                      "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
                      "display": "atorvastatin 40 mg Tablet"
                    }
                  ]
                }
              }
            ],
            "identifier": [
              {
                "use": "official",
                "value": "I607_p_73020_0"
              }
            ],
            "patient": {
              "reference": "Patient/JacksonHerman324567"
            },
            "status": "completed",
            "wasNotTaken": true,
            "medicationReference": {
              "reference": "#1",
              "display": "Medication/I607_p_73020_0"
            }
          }
        }
      ]
    }
  end
end
