module Cerner
  module Resources

    DSTU2_PRACTITIONER_ENTRY ||= {
      "resourceType": "Practitioner",
      "id": "1994021",
      "meta": {
        "versionId": "0",
        "lastUpdated": "2013-11-04T13:25:17.000-06:00"
      },
      "text": {
        "status": "generated",
        "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Practitioner&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Name&lt;/b&gt;: PCTAUT, OrdersPhy3&lt;/p&gt;&lt;p&gt;&lt;b&gt;Identifiers&lt;/b&gt;: DOCDEA: 234234123&lt;/p&gt;&lt;p&gt;&lt;b&gt;Gender&lt;/b&gt;: Male&lt;/p&gt;&lt;p&gt;&lt;b&gt;Birthdate&lt;/b&gt;: 1975-10-12&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;/div&gt;"
      },
      "identifier": [
        {
          "use": "usual",
          "type": {
            "text": "DOCDEA"
          },
          "value": "234234123",
          "period": {
            "start": "2013-11-08T00:00:00.000-06:00"
          }
        }
      ],
      "active": true,
      "name": {
        "use": "usual",
        "text": "PCTAUT, OrdersPhy3",
        "family": [
          "PCTAUT"
        ],
        "given": [
          "OrdersPhy3"
        ],
        "period": {
          "start": "2013-11-04T13:25:17.000-06:00"
        }
      },
      "telecom": [
        {
          "value": "8165550192",
          "use": "work"
        }
      ],
      "address": [
        {
          "use": "work",
          "text": "123 Main St.\nBirmingham, AL 56265\nUSA",
          "line": [
            "123 Main St."
          ],
          "city": "Birmingham",
          "state": "AL",
          "postalCode": "56265",
          "country": "USA"
        }
      ],
      "gender": "male",
      "birthDate": "1975-10-12"
    }


    DSTU2_PRACTITIONER_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "5c966d5a-966c-499b-aa3c-6f903a628dd8",
      "type": "searchset",
      "total": 1,
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Practitioner?_id=1994021"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Practitioner/1994021",
          "resource": {
            "resourceType": "Practitioner",
            "id": "1994021",
            "meta": {
              "versionId": "0",
              "lastUpdated": "2013-11-04T13:25:17.000-06:00"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Practitioner&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Name&lt;/b&gt;: PCTAUT, OrdersPhy3&lt;/p&gt;&lt;p&gt;&lt;b&gt;Identifiers&lt;/b&gt;: DOCDEA: 234234123&lt;/p&gt;&lt;p&gt;&lt;b&gt;Gender&lt;/b&gt;: Male&lt;/p&gt;&lt;p&gt;&lt;b&gt;Birthdate&lt;/b&gt;: 1975-10-12&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;/div&gt;"
            },
            "identifier": [
              {
                "use": "usual",
                "type": {
                  "text": "DOCDEA"
                },
                "value": "234234123",
                "period": {
                  "start": "2013-11-08T00:00:00.000-06:00"
                }
              }
            ],
            "active": true,
            "name": {
              "use": "usual",
              "text": "PCTAUT, OrdersPhy3",
              "family": [
                "PCTAUT"
              ],
              "given": [
                "OrdersPhy3"
              ],
              "period": {
                "start": "2013-11-04T13:25:17.000-06:00"
              }
            },
            "telecom": [
              {
                "value": "8165550192",
                "use": "work"
              }
            ],
            "address": [
              {
                "use": "work",
                "text": "123 Main St.\nBirmingham, AL 56265\nUSA",
                "line": [
                  "123 Main St."
                ],
                "city": "Birmingham",
                "state": "AL",
                "postalCode": "56265",
                "country": "USA"
              }
            ],
            "gender": "male",
            "birthDate": "1975-10-12"
          }
        }
      ]
    }

  end
end
