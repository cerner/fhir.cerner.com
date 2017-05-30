module Cerner
  module Resources

    SOARIAN_PATIENT_ENTRY ||= {
      "resourceType": "Bundle",
      "id": "9c745c40-93f8-4cfe-9540-78c2a3a44902",
      "meta": {
        "lastUpdated": "2017-03-01T11:17:27.125-05:00"
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
                "valueString": "papi003"
              },
              {
                "url": "Message",
                "valueString": "This is the most current, known Patient data and may not reflect the state of information known at a previous date."
              }
            ]
          }
        }
      ],
      "type": "searchset",
      "link": [
        {
          "relation": "self",
          "url": "base-url/bf615549-44cc-4899-bfa9-2cfd86bf358c/Patient?patientId=393EC770-CFC9-4F5A-8B3A-784F2508F245&_format=json"
        }
      ],
      "entry": [
        {
          "resource": {
            "resourceType": "Patient",
            "id": "393EC770-CFC9-4F5A-8B3A-784F2508F245",
            "extension": [
              {
                "url": "http://hl7.org/fhir/StructureDefinition/us-core-birth-sex",
                "valueCodeableConcept": {
                  "coding": [
                    {
                      "system": "http://hl7.org/fhir/administrative-gender",
                      "code": "M",
                      "display": "Male"
                    }
                  ],
                  "text": "Male"
                }
              }
            ],
            "text": {
              "status": "generated",
              "div": "&lt;div>&lt;b>Name&lt;/b>: testy test&lt;br/>&lt;b>Date of Birth&lt;/b>: 1992-08-09&lt;br/>&lt;b>Sex&lt;/b>: Male&lt;br/>&lt;/div>"
            },
            "identifier": [
              {
                "use": "usual",
                "type": {
                  "coding": [
                    {
                      "system": "http://hl7.org/fhir/v2/0203",
                      "code": "MR"
                    }
                  ]
                },
                "value": "Downtown (Usability) - 2342344"
              }
            ],
            "active": true,
            "name": [
              {
                "use": "usual",
                "text": "testy,test null null",
                "family": [
                  "testy"
                ],
                "given": [
                  "test"
                ]
              }
            ],
            "gender": "male",
            "birthDate": "1992-08-09",
            "maritalStatus": {
              "coding": [
                {
                  "system": "http://hl7.org/fhir/v3/NullFlavor",
                  "code": "UNK"
                }
              ]
            }
          }
        }
      ]
    }
  end
end
