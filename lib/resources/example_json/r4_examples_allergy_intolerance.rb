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
        "type": "allergy",
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
        "encounter": {
          "reference": "Encounter/657884"
        },
        "onsetDateTime": "1990",
        "recordedDate": "2012-07-11T03:57:32.000-05:00",
        "recorder": {
          "reference": "Practitioner/1",
          "display": "SYSTEM, SYSTEM"
        },
        "asserter": {
          "reference": "#19775876"
        },
        "reaction": [
          {
            "id": "58297369",
            "manifestation": [
              {
                "coding": [
                  {
                    "system": "http://snomed.info/sct",
                    "code": "247472004",
                    "display": "Weal (disorder)"
                  }
                ],
                "text": "Blastobacter"
              }
            ],
            "severity": "severe"
          }
        ]
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
        R4_ALLERGY_INTOLERANCE_ENTRY
      ]
    }

    R4_ALLERGY_INTOLERANCE_CREATE ||= {
      "resourceType": "AllergyIntolerance",
      "contained":[
        {
          "resourceType": "PractitionerRole",
          "id": "638995",
          "code":[
            {
              "coding":[
                {
                  "system": "http://terminology.hl7.org/CodeSystem/practitioner-role",
                  "code": "nurse"
                }
              ]
            }
          ]
        }
      ],
      "clinicalStatus":{
        "coding":[
           {
              "system": "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
              "code": "active"
           }
        ]
      },
      "verificationStatus":{
        "coding":[
           {
              "system": "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
              "code": "confirmed"
           }
        ]
      },
      "type": "allergy",
      "category":[
        "medication"
      ],
      "criticality": "high",
      "code":{
        "coding":[
          {
            "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
            "code": "723"
          }
        ],
        "text": "amoxicillin"
      },
      "patient":{
        "reference": "Patient/1316020"
      },
      "encounter":{
        "reference": "Encounter/4749909"
      },
      "onsetDateTime": "2019-09-11T05:00:00.000Z",
      "asserter":{
        "reference": "#638995"
      },
      "note": [
        {
          "authorReference": {
            "reference": "Practitioner/2578010"
          },
          "text": "Updated with additional details provided by patient."
        }
      ],
      "reaction":[
        {
          "manifestation":[
            {
              "coding":[
                {
                  "system": "http://snomed.info/sct",
                  "code": "271757001"
                }
              ],
              "text": "Papular eruption"
            }
          ],
          "severity": "severe"
        }
      ]
    }

    R4_ALLERGY_INTOLERANCE_UPDATE ||= {
      "resourceType": "AllergyIntolerance",
      "id": "7403733",
      "clinicalStatus": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
            "code": "active"
          }
        ]
      },
      "verificationStatus": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
            "code": "unconfirmed"
          }
        ]
      },
      "category": [
        "food"
      ],
      "code": {
        "coding": [
          {
            "system": "http://snomed.info/sct",
            "code": "91935009",
            "display": "Allergy to peanuts (disorder)"
          }
        ],
        "text": "Allergy to peanuts"
      },
      "patient": {
        "reference": "Patient/4342008",
        "display": "SMART, WILMA"
      },
      "recordedDate": "2019-02-08T00:00:00Z",
      "recorder": {
        "reference": "Practitioner/2042017",
        "display": "Generated Domain User for 0"
      },
      "note": [
        {
          "text": "Updated with additional details provided by patient."
        }
      ]
    }
  end
end
