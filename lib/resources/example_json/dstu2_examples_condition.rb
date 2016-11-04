module Cerner
  module Resources

    DSTU2_CONDITION_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "ec23d759-25d6-4c77-8f94-b78d14dda2d2",
      "type": "searchset",
      "total": 3,
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Condition?patient=2744123"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Condition/d21591615",
          "resource": {
            "resourceType": "Condition",
            "id": "d21591615",
            "meta": {
              "versionId": "21591516",
              "lastUpdated": "2013-02-08T18:03:09.000Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div>&lt;p>&lt;b>Condition&lt;/b>&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: RHEUM, TEST ONE&lt;/p>&lt;p>&lt;b>Category&lt;/b>: Diagnosis&lt;/p>&lt;p>&lt;b>Code&lt;/b>: Absence seizures, 345.0&lt;/p>&lt;p>&lt;b>Verification Status&lt;/b>: Confirmed&lt;/p>&lt;p>&lt;b>Severity&lt;/b>: &lt;/p>&lt;p>&lt;b>Onset&lt;/b>: 2009-05-04&lt;/p>&lt;/div>"
            },
            "patient": {
              "reference": "Patient/2744123",
              "display": "Joe, Test"
            },
            "encounter": {
              "reference": "Encounter/1309819"
            },
            "asserter": {
              "reference": "Practitioner/2770007",
              "display": "Song, River"
            },
            "dateRecorded": "2013-02-08",
            "code": {
              "coding": [
                {
                  "system": "http://hl7.org/fhir/sid/icd-9",
                  "code": "345.0",
                  "display": "Generalized nonconvulsive epilepsy",
                  "userSelected": true
                }
              ],
              "text": "Absence seizures"
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
            "verificationStatus": "confirmed",
            "onsetDateTime": "2009-05-04"
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Condition/p1167189",
          "resource": {
            "resourceType": "Condition",
            "id": "p1167189",
            "meta": {
              "versionId": "1207870",
              "lastUpdated": "2013-04-26T04:10:45.000Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div>&lt;p>&lt;b>Condition&lt;/b>&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: RHEUM, TEST ONE&lt;/p>&lt;p>&lt;b>Code&lt;/b>: 5problem&lt;/p>&lt;p>&lt;b>Verification Status&lt;/b>: Entered In Error&lt;/p>&lt;p>&lt;b>Severity&lt;/b>: &lt;/p>&lt;p>&lt;b>Onset&lt;/b>: &lt;/p>&lt;p>&lt;b>Abatement&lt;/b>: false&lt;/p>&lt;/div>"
            },
            "patient": {
              "reference": "Patient/2744123",
              "display": "Joe, Test"
            },
            "asserter": {
              "reference": "Practitioner/2770007",
              "display": "Song, River"
            },
            "dateRecorded": "2013-02-08",
            "code": {
              "text": "5problem"
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
            "verificationStatus": "entered-in-error"
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Condition/p1250846",
          "resource": {
            "resourceType": "Condition",
            "id": "p1250846",
            "meta": {
              "versionId": "1250668",
              "lastUpdated": "2015-08-13T18:11:37.000Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div>&lt;p>&lt;b>Condition&lt;/b>&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: RHEUM, TEST ONE&lt;/p>&lt;p>&lt;b>Code&lt;/b>: Pyogenic Arthritis Involving Multiple Sites, 711.09&lt;/p>&lt;p>&lt;b>Verification Status&lt;/b>: Confirmed&lt;/p>&lt;p>&lt;b>Severity&lt;/b>: &lt;/p>&lt;p>&lt;b>Onset&lt;/b>: &lt;/p>&lt;p>&lt;b>Abatement&lt;/b>: false&lt;/p>&lt;/div>"
            },
            "patient": {
              "reference": "Patient/2744123",
              "display": "Joe, Test"
            },
            "code": {
              "coding": [
                {
                  "system": "http://hl7.org/fhir/sid/icd-9",
                  "code": "711.09",
                  "display": "Pyogenic arthritis involving multiple sites",
                  "userSelected": true
                }
              ],
              "text": "Pyogenic Arthritis Involving Multiple Sites"
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
