module Cerner
  module Resources
    R4_ALLERGY_INTOLERANCE_ENTRY ||= {
      "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/AllergyIntolerance/983733",
      "resource": {
        "resourceType": "AllergyIntolerance",
        "id": "983733",
        "meta": {
          "versionId": "983733",
          "lastUpdated": "2012-07-11T08:57:32.000Z"
        },
        "text": {
          "status": "generated",
          "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Allergy Intolerance&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: "\
                 "Picka, Guru 1013&lt;/p&gt;&lt;p&gt;&lt;b&gt;Allergy&lt;/b&gt;: Environment&lt;/p&gt;&lt;p&gt;&lt;b&gt;"\
                 "Verification Status&lt;/b&gt;: Confirmed&lt;/p&gt;&lt;p&gt;&lt;b&gt;Clinical Status&lt;/b&gt;: Resolved&lt;"\
                 "/p&gt;&lt;p&gt;&lt;b&gt;Criticality&lt;/b&gt;: High Risk&lt;/p&gt;&lt;p&gt;&lt;b&gt;Category&lt;/b&gt;: "\
                 "Environment&lt;/p&gt;&lt;p&gt;&lt;b&gt;Onset&lt;/b&gt;: 1990&lt;/p&gt;&lt;/div&gt;"
        },
        "contained": [
          {
            "resourceType": "RelatedPerson",
            "id": "19775876",
            "patient": {
              "reference": "Patient/1420008",
              "display": "Picka, Guru 1013"
            },
            "relationship": {
              "coding": [
                {
                  "system": "http://snomed.info/sct",
                  "code": "40683002",
                  "display": "Parent (person)",
                  "userSelected": false
                },
                {
                  "system": "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
                  "code": "PRN",
                  "display": "parent",
                  "userSelected": false
                }
              ],
              "text": "parent"
            }
          }
        ],
        "clinicalStatus": {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
              "code": "resolved",
              "display": "Resolved",
              "userSelected": false
            }
          ],
          "text": "Resolved"
        },
        "verificationStatus": {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
              "code": "confirmed",
              "display": "Confirmed",
              "userSelected": false
            }
          ],
          "text": "Resolved"
        },
        "category": [
          "environment"
        ],
        "criticality": "high",
        "code": {
          "coding": [
            {
              "system": "http://snomed.info/sct",
              "code": "33008008",
              "display": "Dust (substance)",
              "userSelected": false
            }
          ],
          "text": "Dust"
        },
        "patient": {
          "reference": "Patient/1420008",
          "display": "Picka, Guru 1013"
        },
        "onsetDateTime": "1990",
        "recordedDate": "2012-07-11T03:57:32.000-05:00",
        "recorder": {
          "reference": "Practitioner/1",
          "display": "SYSTEM, SYSTEM"
        },
        "asserter": {
          "reference": "#19775876"
        }
      }
    }

    R4_ALLERGY_INTOLERANCE_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "160ad230-6a5c-4813-96e2-2b36be102145",
      "type": "searchset",
      "total": 1,
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/AllergyIntolerance?_id=983733"
        }
      ],
      "entry": [
        "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/AllergyIntolerance/983733",
        "resource": R4_ALLERGY_INTOLERANCE_ENTRY
      ]
    }
  end
end
