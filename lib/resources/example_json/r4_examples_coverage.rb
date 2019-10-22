module Cerner
  module Resources

    R4_COVERAGE_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "d6343987-1e8f-486c-8f0f-dad4ac73510f",
      "type": "searchset",
      "total": 1,
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-ehr-latest.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Coverage?patient=589763"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-ehr-latest.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Coverage/589763-11500257-11500257",
          "resource": {
            "resourceType": "Coverage",
            "id": "589763-11500257-11500257",
            "meta": {
              "versionId": "0-0",
              "lastUpdated": "2019-10-22T18:10:49.000Z"
             },
            "text": {
                "status": "generated",
                "div": "&lt;div>&lt;p>&lt;b>Coverage&lt;/b>&lt;/p>&lt;p>&lt;b>Status&lt;/b>: active&lt;/p>&lt;p>&lt;b>Subscriber&lt;/b>: WOLFE, STEPHANIE T&lt;/p>&lt;p>&lt;b>Beneficiary&lt;/b>: Stephanie Wolfe&lt;/p>&lt;p>&lt;b>Dependent Number&lt;/b>: KEWIL4WW&lt;/p>&lt;p>&lt;b>Coverage Start Date&lt;/b>: Sep  5, 2012  9:30 A.M. CDT&lt;/p>&lt;p>&lt;b>Payor&lt;/b>: Aetna Missouri POS - Open&lt;/p>&lt;p>&lt;b>Class&lt;/b>: plan: Value: 729823 Name: Aetna Missouri POS Open&lt;/p>&lt;/div>"
            },
            "subscriber": {
                "reference": "Patient/1626016",
                "display": "WOLFE, STEPHANIE T"
            },
            "subscriberId": "1626016",
            "beneficiary": {
                "reference": "Patient/1626016",
                "display": "WOLFE, STEPHANIE T"
            },
            "dependent": "KEWIL4WW",
            "relationship": [
              {
                "coding": [
                  {
                    "system": "http://terminology.hl7.org/CodeSystem/subscriber-relationship",
                    "code": "child"
                  }
                ]
              }
            ],
            "period": {
              "start": "2012-09-05T14:30:12.000Z",
              "end": "2013-09-05T14:30:12.000Z"
            },
            "payor": {
                "reference": "Organization/643847",
                "display": "Aetna Missouri POS - Open"
            },
            "class": [
              {
                "type": {
                  "coding": [
                    {
                      "system": "http://hl7.org/fhir/ValueSet/coverage-class",
                      "code": "plan"
                    }
                  ],
                  "text": "plan"
                },
                "value": "729823",
                "name": "Aetna Missouri POS Open"
              }
            ]
          }
        }
      ]
    }

    R4_COVERAGE_CREATE ||= {
      "resourceType": "Coverage",
      "status": "active",
      "subscriber": {
        "reference": "Patient/589763"
      },
      "subscriberId": "123",
      "beneficiary": {
        "reference": "Patient/589763"
      },
      "relationship": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/subscriber-relationship",
            "code": "other"
          }
        ]
      },
      "period": {
        "start": "2014-09-05T14:30:12.000Z",
        "end": "2015-09-05T14:30:12.000Z"
      },
      "payor": [
        {
          "reference": "Organization/643847",
          "display": "Aetna Missouri POS - Open"
        }
      ],
      "class": [
        {
          "type": {
            "coding": [
              {
                "system": "http://hl7.org/fhir/ValueSet/coverage-class",
                "code": "plan"
              }
            ],
            "text": "plan"
          },
          "value": "729827",
          "name": "Aetna Missouri POS Open"
        },
        {
          "type": {
            "coding": [
              {
                "system": "http://hl7.org/fhir/ValueSet/coverage-class",
                "code": "group"
              }
            ],
            "text": "group"
          },
          "value": "729839",
          "name": "Aetna Missouri POS Open group"
        }
      ]
    }
  end
end
