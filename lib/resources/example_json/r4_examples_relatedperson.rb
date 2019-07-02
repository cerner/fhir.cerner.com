module Cerner
    module Resources
  
    R4_RELATEDPERSON_ENTRY ||= {
      "resourceType":"RelatedPerson",
      "id":"633923-633923",
      "meta":{  
          "versionId":139,
          "lastUpdated":"2007-05-15T15:06:54.000Z"
      },
      "text":{  
          "status":"generated",
          "div":"&lt;div>&lt;p>&lt;b>Related Person&lt;/b>&lt;/p>&lt;p>&lt;b>Name&lt;/b>: HOLLAND, BO CERNER&lt;/p>&lt;p>&lt;b>DOB&lt;/b>: Jan  6, 2004&lt;/p>&lt;p>&lt;b>Gender&lt;/b>: male&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: HOLLAND, BO CERNER&lt;/p>&lt;p>&lt;b>Relationship&lt;/b>: Default Guarantor&lt;/p>&lt;p>&lt;b>Relationship&lt;/b>: SELF&lt;/p>&lt;/div>"
      },
      "active":true,
      "patient":{  
          "reference":"Patient/633923",
          "display":"HOLLAND, BO CERNER"
      },
      "relationship":[  
          {  
          "coding":[  
              {  
              "system":"https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/351",
              "code":"1150",
              "display":"Default Guarantor",
              "userSelected":true
              }
          ],
          "text":"Default Guarantor"
          },
          {  
          "coding":[  
              {  
              "system":"https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/40",
              "code":"158",
              "display":"SELF",
              "userSelected":true
              }
          ],
          "text":"SELF"
          }
      ],
      "name":{  
          "use":"official",
          "text":"HOLLAND, BO CERNER",
          "family":"HOLLAND",
          "given":[  
          "BO",
          "CERNER"
          ],
          "period":{  
          "start":"2004-09-20T15:37:08.000Z"
          }
      },
      "telecom":[  
          {  
          "system":"Phone",
          "value":"9230943204",
          "use":"Home",
          "period":{  
              "start":"2004-04-05T14:10:29.000Z"
          }
          }
      ],
      "gender":"male",
      "birthDate":"2004-01-06",
      "address":[  
          {  
          "use":"home",
          "text":"100 test street\nKC, MO 66226\nUSA",
          "line":[  
              "100 test street"
          ],
          "city":"KC",
          "district":"Jack",
          "state":"MO",
          "postalCode":"66226",
          "country":"USA",
          "period":{  
              "start":"2004-04-05T14:10:28.000Z"
          }
          }
      ],
      "communication":{  
          "preferred":"true",
          "language":{  
          "coding":[  
              {  
              "system":"https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/36",
              "code":"312745",
              "display":"Gaelic",
              "userSelected":true
              },
              {  
              "system":"urn:ietf:bcp:47",
              "code":"cel",
              "display":"Celtic languages",
              "userSelected":false
              }
          ],
          "text":"Gaelic"
          }
      }
    }
        
    R4_RELATEDPERSON_BUNDLE ||= {
        "id":"e8274221-8809-4f7a-ba44-dc4ac55a5318",
        "resourceType":"Bundle",
        "type":"searchset",
        "total":1,
        "link":[
          {
            "relation":"self",
            "url":"http://localhost:3000/r4/2c400054-42d8-4e74-87b7-80b5bd5fde9f/RelatedPerson?_id=633923-633923"
          }
        ],
        "entry":[
          {
            "fullUrl":"http://localhost:3000/r4/2c400054-42d8-4e74-87b7-80b5bd5fde9f/RelatedPerson/633923-633923",
            "resource": R4_RELATEDPERSON_ENTRY
          }
        ]
      }
  end
end
  