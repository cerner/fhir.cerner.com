module Cerner
  module Resources
    R4_NUTRITION_ORDER_ENTRY ||= {
      "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/NutritionOrder/216493655",
      "resource": {
        "resourceType": "NutritionOrder",
        "id": "216493655",
        "meta": {
          "versionId": "0",
          "lastUpdated": "2020-04-06T17:08:18.000Z"
        },
        "text": {
            "status": "generated",
            "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\"&gt;&lt;p&gt;&lt;b&gt;Nutrition Order&lt;/b&gt;"\
                   "&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: SKYWALKER, LUKE&lt;/p&gt;"\
                   "&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Intent&lt;/b&gt;: Order"\
                   "&lt;/p&gt;&lt;p&gt;&lt;b&gt;Date&lt;/b&gt;: Apr  6, 2020 12:08 P.M. CDT&lt;/p&gt;&lt;p&gt;&lt;"\
                   "b&gt;Orderer&lt;/b&gt;: Pivonka, Fran M RN&lt;/p&gt;"\
                   "&lt;p&gt;&lt;b&gt;Diet Type&lt;/b&gt;: Regular Diet&lt;/p&gt;</div>"
        },
        "status": "active",
        "intent": "order",
        "patient": {
          "reference": "Patient/1882013",
          "display": "SKYWALKER, LUKE"
        },
        "encounter": {
          "reference": "Encounter/42476518"
        },
        "dateTime": "2020-04-06T12:08:06.000-05:00",
        "orderer": {
          "reference": "Practitioner/2028012",
          "display": "Pivonka, Fran M RN"
        },
        "foodPreferenceModifier": [
            {
              "coding": [
                {
                  "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/6102",
                  "code": "658486",
                  "display": "Kosher",
                  "userSelected": true
                }
              ],
              "text": "Kosher"
            },
            {
              "coding": [
                {
                  "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/6103",
                  "code": "658489",
                  "display": "No caffeinated beverages",
                  "userSelected": true
                }
              ],
              "text": "No caffeinated beverages"
            }
        ],
        "oralDiet": {
            "type": [
              {
                "text": "Regular Diet"
              }
            ],
            "schedule": [
              {
                "repeat": {
                  "boundsPeriod": {
                    "start": "2020-04-07T03:08:00.000+10:00"
                  },
                  "duration": 5,
                  "durationUnit": "d",
                  "when": [
                    "AC"
                  ]
                },
                "code": {
                  "coding": [
                    {
                      "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/4003",
                      "code": "696529",
                      "display": "TID",
                      "userSelected": true
                    },
                    {
                      "system": "http://terminology.hl7.org/CodeSystem/v3-GTSAbbreviation",
                      "code": "TID",
                      "display": "TID",
                      "userSelected": false
                    }
                  ],
                  "text": "TID"
                }
              }
            ],
            "instruction": "04/07/20 3:39:00 AEST, Start Meal: Breakfast, Vegetarian diet, No carbonated beverages, "\
                           "Low fat, Fluid: 1500 mL, Na: 2 gm, Fat: 25 gm, K: 4 gm (104 meq), Protein: 60 gm, TID"
        },
        "supplement": [
          {
            "type": {
              "coding": [
                  {
                      "system": "https://fhir.cerner.com/2c400054-42d8-4e74-87b7-80b5bd5fde9f/codeSet/6107",
                      "code": "658508",
                      "display": "High fiber supplement",
                      "userSelected": true
                  }
              ],
              "text": "High fiber supplement"
            }
          }
        ],
        "note": [
          {
            "text": "The diet should be stictly follwed."
          }
        ]
      }
    }

    R4_NUTRITION_ORDER_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "4227f490-f813-4f83-b7ce-44e1275174e2",
      "type": "searchset",
      "link": [
        {
          "relation": "self",
          "url":  "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/NutritionOrder?patient=1882013"
        }
      ],
      "entry": [
          R4_NUTRITION_ORDER_ENTRY
      ]
    }
  end
end
