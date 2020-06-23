module Cerner
  module Resources
    R4_COMBINED_PERSON_ENTRY ||= {
      "resourceType": "Person",
      "id": "971923",
      "meta": {
        "versionId": "0"
      },
      "text": {
        "status": "generated",
        "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\"&gt;&lt;p&gt;&lt;b&gt;Person&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Inactive&lt;/p&gt;&lt;p&gt;&lt;b&gt;Link&lt;/b&gt;: Person/933924&lt;/p&gt;&lt;/div&gt;"
      },
      "active": false,
      "link": [
        {
          "target": {
            "reference": "Person/933924"
          }
        }
      ]
    }

    R4_PERSON_ENTRY ||= {
      "resourceType": "Person",
      "id": "725944",
      "meta": {
        "versionId": "10",
        "lastUpdated": "2020-03-04T15:25:48.000Z"
      },
      "text": {
        "status": "generated",
        "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\"&gt;&lt;p&gt;&lt;b&gt;Person&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Name&lt;/b&gt;: SMITH, MORGAN&lt;/p&gt;&lt;p&gt;&lt;b&gt;DOB&lt;/b&gt;: Jan  1, 1970&lt;/p&gt;&lt;p&gt;&lt;b&gt;Administrative Gender&lt;/b&gt;: Female&lt;/p&gt;&lt;/div&gt;"
      },
      "identifier": [
        {
          "id": "CI-1312161-0",
          "use": "usual",
          "type": {
            "coding": [
              {
                "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/4",
                "code": "10",
                "display": "MRN",
                "userSelected": true
              },
              {
                "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
                "code": "MR",
                "display": "Medical record number",
                "userSelected": false
              }
            ],
            "text": "MRN"
          },
          "system": "urn:oid:1.1.1.1.1.1",
          "value": "10000057",
          "period": {
            "start": "2007-03-07T17:56:56.000Z"
          }
        },
        {
          "id": "CI-858753-1",
          "use": "usual",
          "type": {
            "coding": [
              {
                "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/4",
                "code": "10",
                "display": "MRN",
                "userSelected": true
              },
              {
                "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
                "code": "MR",
                "display": "Medical record number",
                "userSelected": false
              }
            ],
            "text": "MRN"
          },
          "value": "10000086",
          "period": {
            "start": "2006-09-20T22:28:53.000Z"
          }
        }
      ],
      "name": [
        {
          "id": "CI-725944-0",
          "use": "official",
          "text": "SMITH, MORGAN",
          "family": "SMITH",
          "given": [
            "MORGAN"
          ],
          "period": {
            "start": "2006-09-20T21:55:51.000Z"
          }
        },
        {
          "id": "CI-17446991-0",
          "use": "official",
          "text": "lastName Jr., firstName middleName",
          "family": "lastName",
          "given": [
            "firstName",
            "middleName"
          ],
          "prefix": [
            "Dr."
          ],
          "suffix": [
            "Jr."
          ],
          "period": {
            "start": "2014-01-20T15:48:39.000Z",
            "end": "2014-03-20T15:48:39.000Z"
          }
        }
      ],
      "telecom": [
        {
          "id": "CI-PH-693923-0",
          "system": "phone",
          "value": "8168675234",
          "use": "home",
          "rank": "1",
          "period": {
            "start": "2006-09-20T21:55:51.000Z"
          }
        }
      ],
      "gender": "female",
      "birthDate": "1970-01-01",
      "address": [
        {
          "id": "CI-717915-0",
          "use": "home",
          "text": "123 Sesame Street\nKansas City, MO 64112\nUSA",
          "line": [
            "123 Sesame Street"
          ],
          "city": "Kansas City",
          "district": "Jackson",
          "state": "MO",
          "postalCode": "64112",
          "country": "USA",
          "period": {
            "start": "2006-09-20T21:55:51.000Z"
          }
        }
      ],
      "active": true
    }

    R4_PERSON_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "d44e3941-2944-455f-b3d0-a34d3039e470",
      "type": "searchset",
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Person?identifier=urn%3Aoid%3A1.1.1.1.1.1%7C10000360"
        }
      ],
      "entry": [
        "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Person/1316024",
        "resource":  R4_PERSON_ENTRY
      ]
    }

  end
end
