module Cerner
  module Resources

    DSTU2_MEDICATION_ORDER_BUNDLE ||=
      {
        "resourceType": "Bundle",
        "id": "4f4c9bbd-dfb5-4144-8dfc-3e7431372776",
        "type": "searchset",
        "total": 2,
        "link": [
          {
            "relation": "self",
            "url": "https://fhir-open.sandboxcerner.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/MedicationOrder?patient=4342008&_count=25"
          }
        ],
        "entry": [
          {
            "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/MedicationOrder/21369989",
            "resource": {
              "resourceType": "MedicationOrder",
              "id": "21369989",
              "meta": {
                "versionId": "0",
                "lastUpdated": "2016-06-24T15:27:06.000Z"
              },
              "text": {
                "status": "generated",
                "div": "<div><p><b>Medication Order</b></p><p><b>Patient Name</b>: Smart, Wilma</p><p><b>Medication Name</b>: morphine (morphine 24 hour extended release)</p><p><b>Dosage Instructions</b>: 30 mg, 1 caps, Oral, Daily, PRN: pain</p><p><b>Status</b>: Active</p></div>"
              },
              "dateWritten": "2016-06-24T10:24:14.000-05:00",
              "status": "active",
              "patient": {
                "reference": "Patient/4342008",
                "display": "Smart, Wilma"
              },
              "prescriber": {
                "reference": "Practitioner/1912007",
                "display": "Forrest, Fhir"
              },
              "encounter": {
                "reference": "Encounter/4027906"
              },
              "medicationCodeableConcept": {
                "text": "morphine (morphine 24 hour extended release)"
              },
              "dosageInstruction": [
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
                  "doseQuantity": {
                    "value": 30,
                    "unit": "mg",
                    "system": "http://unitsofmeasure.org",
                    "code": "mg"
                  }
                }
              ],
              "dispenseRequest": {
                "validityPeriod": {
                  "start": "2016-06-24T10:24:14.000-05:00"
                }
              }
            }
          },
          {
            "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/MedicationOrder/21369987",
            "resource": {
              "resourceType": "MedicationOrder",
              "id": "21369987",
              "meta": {
                "versionId": "0",
                "lastUpdated": "2016-06-24T15:27:05.000Z"
              },
              "text": {
                "status": "generated",
                "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Medication Order&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient Name&lt;/b&gt;: Smart, Wilma&lt;/p&gt;&lt;p&gt;&lt;b&gt;Medication Name&lt;/b&gt;: oxycodone (oxycodone extended release)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Dosage Instructions&lt;/b&gt;: 80 mg, 2 tabs, Oral, q12hr, PRN: pain&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;/div&gt;"
              },
              "dateWritten": "2016-06-24T10:23:40.000-05:00",
              "status": "active",
              "patient": {
                "reference": "Patient/4342008",
                "display": "Smart, Wilma"
              },
              "prescriber": {
                "reference": "Practitioner/1912007",
                "display": "Forrest, Fhir"
              },
              "encounter": {
                "reference": "Encounter/4027906"
              },
              "medicationCodeableConcept": {
                "text": "oxycodone (oxycodone extended release)"
              },
              "dosageInstruction": [
                {
                  "text": "80 mg, 2 tabs, Oral, q12hr, PRN: pain",
                  "timing": {
                    "repeat": {
                      "boundsPeriod": {
                        "start": "2016-06-24T08:24:00.000-07:00"
                      }
                    },
                    "code": {
                      "text": "q12hr"
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
                  "doseQuantity": {
                    "value": 80,
                    "unit": "mg",
                    "system": "http://unitsofmeasure.org",
                    "code": "mg"
                  }
                }
              ],
              "dispenseRequest": {
                "validityPeriod": {
                  "start": "2016-06-24T10:23:40.000-05:00"
                }
              }
            }
          }
        ]
      }

  end
end
