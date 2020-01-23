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
          "url": "https://fhir-ehr.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Coverage?patient=589763"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-ehr.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Coverage/589763-11500257-11500257",
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

    R4_COVERAGE_ENCOUNTER_BUNDLE = {
      "resourceType": "Bundle",
      "id": "8cdbd4b8-6bae-4e18-a6f6-42e1a655e5d8",
      "type": "searchset",
      "total": 1,
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Coverage?-encounter=1175911"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Coverage/1175911-1760527",
          "resource": {
            "resourceType": "Coverage",
            "id": "1175911-1760527",
            "meta": {
              "versionId": "1",
              "lastUpdated": "2020-01-28T16:53:52.000Z"
            },
            "text": {
              "status": "extensions",
              "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\">&lt;p>&lt;b>Coverage&lt;/b>&lt;/p>&lt;p>&lt;b>Status&lt;/b>: active&lt;/p>&lt;p>&lt;b>Subscriber&lt;/b>: JUREVICIUS, DARSHELLE&lt;/p>&lt;p>&lt;b>Encounter&lt;/b>: 1175911&lt;/p>&lt;p>&lt;b>Beneficiary&lt;/b>: Jurevicius, BABYBOY&lt;/p>&lt;p>&lt;b>Dependent Number&lt;/b>: 1626016&lt;/p>&lt;p>&lt;b>Coverage Start Date&lt;/b>: Sep  5, 2014  2:30 P.M. UTC&lt;/p>&lt;p>&lt;b>Coverage End Date&lt;/b>: Sep  5, 2015  2:30 P.M. UTC&lt;/p>&lt;p>&lt;b>Payor&lt;/b>: Cigna&lt;/p>&lt;p>&lt;b>Class&lt;/b>: plan: Value: 729825 Name: Cigna, group: Value: 456 Name: name&lt;/p>&lt;/div>"
            },
            "extension": [
              {
                "url": "https://fhir-ehr.cerner.com/r4/StructureDefinition/coverage-encounter",
                "valueReference": {
                  "reference": "Encounter/1175911"
                }
              }
            ],
            "status": "active",
            "subscriber": {
              "reference": "Patient/1122005",
              "display": "JUREVICIUS, DARSHELLE"
            },
            "beneficiary": {
              "reference": "Patient/1122006",
              "display": "Jurevicius, BABYBOY"
            },
            "dependent": "1626016",
            "relationship": {
              "coding": [
                {
                  "system": "http://terminology.hl7.org/CodeSystem/subscriber-relationship",
                  "code": "other",
                  "display": "Other",
                  "userSelected": false
                }
              ],
              "text": "Brother"
            },
            "period": {
              "start": "2014-09-05T14:30:12.000Z",
              "end": "2015-09-05T14:30:12.000Z"
            },
            "payor": [
              {
                "reference": "Organization/643848",
                "display": "Cigna"
              }
            ],
            "class": [
              {
                "type": {
                  "coding": [
                    {
                      "system": "http://terminology.hl7.org/CodeSystem/coverage-class",
                      "code": "plan"
                    }
                  ]
                },
                "value": "729825",
                "name": "Cigna"
              },
              {
                "type": {
                  "coding": [
                    {
                      "system": "http://terminology.hl7.org/CodeSystem/coverage-class",
                      "code": "group"
                    }
                  ]
                },
                "value": "456",
                "name": "name"
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

    R4_COVERAGE_ENCOUNTER_PATCH ||= [
      {
        "op": "replace",
        "path": "/class/1/name",
        "value": "name"
      },
      {
        "op": "replace",
        "path": "/class/0/value",
        "value": "729825"
      },
      {
        "op": "replace",
        "path": "/class/1/value",
        "value": "456"
      },
      {
        "op": "replace",
        "path": "/dependent",
        "value": "1626016"
      },
      {
        "op": "replace",
        "path": "/period",
        "value": {
          "start": "2014-09-05T14:30:12.000Z",
          "end": "2015-09-05T14:30:12.000Z"
        }
      },
      {
        "op": "replace",
        "path": "/relationship",
        "value": {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/subscriber-relationship",
              "code": "parent"
            }
          ]
        }
      },
      {
        "op": "replace",
        "path": "/subscriberId",
        "value": "1626016"
      },
      {
        "op": "replace",
        "path": "/subscriber",
        "value": {
          "reference": "Patient/1626016"
        }
      }
    ]
  end
end
