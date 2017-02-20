module Cerner
  module Resources

    DSTU2_CONDITION_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "5a31a14a-9740-459c-bc52-b105b81ebebc",
      "type": "searchset",
      "total": 2,
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Condition?patient=4342012"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Condition/d35686553",
          "resource": {
            "resourceType": "Condition",
            "id": "d35686553",
            "meta": {
              "versionId": "35686553",
              "lastUpdated": "2016-06-27T19:02:31.000Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Condition&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: Smart, Timmy&lt;/p&gt;&lt;p&gt;&lt;b&gt;Diagnosis&lt;/b&gt;: Ear Infection (Right)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Clinical Status&lt;/b&gt;: active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Verification Status&lt;/b&gt;: Unknown&lt;/p&gt;&lt;p&gt;&lt;b&gt;Onset&lt;/b&gt;: 2016-06-27&lt;/p&gt;&lt;/div&gt;"
            },
            "patient": {
              "reference": "Patient/4342012",
              "display": "Smart, Timmy"
            },
            "encounter": {
              "reference": "Encounter/4027933"
            },
            "asserter": {
              "reference": "Practitioner/1912007",
              "display": "Forrest, Fhir"
            },
            "dateRecorded": "2016-06-27",
            "code": {
              "text": "Ear Infection (Right)"
            },
            "category": {
              "coding": [
                {
                  "system": "http://hl7.org/fhir/condition-category",
                  "code": "diagnosis",
                  "display": "Diagnosis"
                }
              ],
              "text": "Diagnosis"
            },
            "clinicalStatus": "active",
            "verificationStatus": "unknown",
            "onsetDateTime": "2016-06-27"
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Condition/p6317881",
          "resource": {
            "resourceType": "Condition",
            "id": "p6317881",
            "meta": {
              "versionId": "6317881",
              "lastUpdated": "2016-06-27T18:51:27.000Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Condition&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: Smart, Timmy&lt;/p&gt;&lt;p&gt;&lt;b&gt;Problem&lt;/b&gt;: Ear infection&lt;/p&gt;&lt;p&gt;&lt;b&gt;Clinical Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Verification Status&lt;/b&gt;: Confirmed&lt;/p&gt;&lt;p&gt;&lt;b&gt;Resolved&lt;/b&gt;: false&lt;/p&gt;&lt;/div&gt;"
            },
            "patient": {
              "reference": "Patient/4342012",
              "display": "Smart, Timmy"
            },
            "asserter": {
              "reference": "Practitioner/1912007",
              "display": "Forrest, Fhir"
            },
            "dateRecorded": "2016-06-27",
            "code": {
              "text": "Ear infection"
            },
            "category": {
              "coding": [
                {
                  "system": "http://argonaut.hl7.org/extension-codes",
                  "code": "problem",
                  "display": "Problem"
                }
              ],
              "text": "Problem"
            },
            "clinicalStatus": "active",
            "verificationStatus": "confirmed"
          }
        }
      ]
    }

    DSTU2_CONDITION_PROBLEM_CREATE ||= {
      "resourceType": "Condition",
      "patient": {
        "reference": "Patient/2744123"
      },
      "code": {
        "text": "Freetext Condition"
      },
      "category": {
        "coding": [
          {
            "system": "http://argonaut.hl7.org/extension-codes",
            "code": "problem",
            "display": "Problem"
          }
        ],
        "text": "Problem"
      },
      "clinicalStatus": "resolved",
      "verificationStatus": "differential",
      "abatementDateTime": "2014-01-01T00:00:00Z"
    }

    DSTU2_CONDITION_DIAGNOSIS_CREATE ||= {
      "resourceType": "Condition",
      "patient": {
        "reference": "Patient/2744123"
      },
      "code": {
        "text": "Freetext Condition"
      },
      "category": {
        "coding": [
          {
            "system": "http://hl7.org/fhir/condition-category",
            "code": "diagnosis",
            "display": "Diagnosis"
          }
        ],
        "text": "Diagnosis"
      },
      "clinicalStatus": "active",
      "verificationStatus": "differential",
      "encounter": {
        "reference": "Encounter/1309819"
      }
    }

    DSTU2_CONDITION_PROBLEM_UPDATE ||= {
      "resourceType": "Condition",
      "id": "d21591615",
      "patient": {
        "reference": "Patient/2770007"
      },
      "code": {
        "text": "Freetext Condition"
      },
      "category": {
        "coding": [
          {
            "system": "http://argonaut.hl7.org/extension-codes",
            "code": "problem",
            "display": "Problem"
          }
        ],
        "text": "Problem"
      },
      "clinicalStatus": "resolved",
      "verificationStatus": "differential",
      "abatementDateTime": "2014-01-01T00:00:00Z"
    }

    DSTU2_CONDITION_DIAGNOSIS_UPDATE ||= {
      "resourceType": "Condition",
      "id": "p1250846",
      "patient": {
        "reference": "Patient/2744123"
      },
      "code": {
        "text": "Freetext Condition"
      },
      "category": {
        "coding": [
          {
            "system": "http://hl7.org/fhir/condition-category",
            "code": "diagnosis",
            "display": "Diagnosis"
          }
        ],
        "text": "Diagnosis"
      },
      "clinicalStatus": "resolved",
      "verificationStatus": "differential",
      "encounter": {
        "reference": "Encounter/1309819"
      }
    }
    
  end
end
