module Cerner
  module Resources

    SOARIAN_ALLERGY_INTOLERANCE_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "9f29ee0a-16b9-4967-bfdf-51c21a0faf8b",
      "meta": {
        "lastUpdated": "2017-02-27T15:54:09.388-05:00"
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
                "valueString": "papi001"
              },
              {
                "url": "Message",
                "valueString": "This is the most current, known allergy list and may not reflect the state of allergies known at a previous date."
              }
            ]
          }
        }
      ],
      "type": "searchset",
      "link": [
        {
          "relation": "self",
          "url": "base-url/bf615549-44cc-4899-bfa9-2cfd86bf358c/AllergyIntolerance?patientId=52930295-B52D-4685-B922-DC5F181CF786&_format=json"
        }
      ],
      "entry": [
        {
          "resource": {
            "resourceType": "AllergyIntolerance",
            "id": "10433",
            "text": {
              "status": "additional",
              "div": "&lt;div ccdRefId=\"ZCCD-Allergies.CCD-Allergies.10433\"> &lt;b>aspirin&lt;/b> causes Moderate Bleeding. Onset Last year.&lt;/div>"
            },
            "identifier": [
              {
                "use": "official",
                "value": "10433"
              }
            ],
            "patient": {
              "reference": "Patient/52930295-B52D-4685-B922-DC5F181CF786"
            },
            "substance": {
              "coding": [
                {
                  "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
                  "code": "1191",
                  "display": "Aspirin"
                }
              ],
              "text": "aspirin"
            },
            "status": "active",
            "type": "allergy",
            "category": "medication",
            "reaction": [
              {
                "manifestation": [
                  {
                    "coding": [
                      {
                        "display": "Bleeding"
                      }
                    ],
                    "text": "Bleeding"
                  }
                ],
                "severity": "moderate"
              }
            ]
          }
        },
        {
          "resource": {
            "resourceType": "AllergyIntolerance",
            "id": "NKFA",
            "text": {
              "status": "additional",
              "div": "&lt;div ccdRefId=\"ZCCD-Allergies.CCD-Allergies.NKFA\">No Known Food Allergies.&lt;/div>"
            },
            "patient": {
              "reference": "Patient/52930295-B52D-4685-B922-DC5F181CF786"
            },
            "substance": {
              "coding": [
                {
                  "system": "http://snomed.info/sct",
                  "code": "429625007",
                  "display": "No Known Food Allergies"
                }
              ],
              "text": "No Known Food Allergies"
            }
          }
        },
        {
          "resource": {
            "resourceType": "AllergyIntolerance",
            "id": "NoLatex",
            "text": {
              "status": "additional",
              "div": "&lt;div ccdRefId=\"ZCCD-Allergies.CCD-Allergies.NoLatex\">No Latex Allergy.&lt;/div>"
            },
            "patient": {
              "reference": "Patient/52930295-B52D-4685-B922-DC5F181CF786"
            },
            "substance": {
              "text": "No Latex Allergy"
            }
          }
        },
        {
          "resource": {
            "resourceType": "AllergyIntolerance",
            "id": "NoContrast",
            "text": {
              "status": "additional",
              "div": "&lt;div ccdRefId=\"ZCCD-Allergies.CCD-Allergies.NoContrast\">No IV Contrast Allergy.&lt;/div>"
            },
            "patient": {
              "reference": "Patient/52930295-B52D-4685-B922-DC5F181CF786"
            },
            "substance": {
              "text": "No IV Contrast Allergy"
            }
          }
        }
      ]
    }
  end
end
