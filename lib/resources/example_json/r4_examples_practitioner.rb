module Cerner
  module Resources

    R4_PRACTITIONER_ENTRY ||= {
      "resourceType": "Practitioner",
      "id": "1994021",
      "meta": {
        "versionId": "0",
        "lastUpdated": "2013-11-04T13:25:17.000-06:00"
      },
      "text": {
        "status": "generated",
        "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Practitioner&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Name&lt;/b&gt;: Williams, Rory&lt;/p&gt;&lt;p&gt;&lt;b&gt;Identifiers&lt;/b&gt;: DOCDEA: 234234123&lt;/p&gt;&lt;p&gt;&lt;b&gt;Gender&lt;/b&gt;: Male&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;/div&gt;"
      },
      "identifier": [
        {
          "use": "usual",
          "type": {
            "coding": [
              {
                "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
                "code": "DEA",
                "display": "Drug Enforcement Administration registration number"
              }
            ],
            "text": "DOCDEA"
          },
          "value": "234234123",
          "period": {
            "start": "2013-11-08T00:00:00.000-06:00"
          }
        }
      ],
      "active": true,
      "name": [
        {
          "use": "usual",
          "text": "Williams, Rory",
          "family": "Williams",
          "given": [
            "Rory"
          ],
          "prefix": [
            "Dr."
          ],
          "suffix": [
            "M.D."
          ],
          "period": {
            "start": "2013-11-04T13:25:17.000-06:00"
          }
        }
      ],
      "telecom": [
        {
          "system": "phone",
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
          "district": "Jefferson",
          "state": "AL",
          "postalCode": "56265",
          "country": "USA"
        }
      ],
      "gender": "male"
    }

    R4_PRACTITIONER_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "5c966d5a-966c-499b-aa3c-6f903a628dd8",
      "type": "searchset",
      "total": 1,
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Practitioner?_id=1994021"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Practitioner/1994021",
          "resource": {
            "resourceType": "Practitioner",
            "id": "1994021",
            "meta": {
              "versionId": "0",
              "lastUpdated": "2013-11-04T13:25:17.000-06:00"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Practitioner&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Name&lt;/b&gt;: Williams, Rory&lt;/p&gt;&lt;p&gt;&lt;b&gt;Identifiers&lt;/b&gt;: DOCDEA: 234234123&lt;/p&gt;&lt;p&gt;&lt;b&gt;Gender&lt;/b&gt;: Male&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;/div&gt;"
            },
            "identifier": [
              {
                "use": "usual",
                "type": {
                  "coding": [
                    {
                      "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
                      "code": "DEA",
                      "display": "Drug Enforcement Administration registration number"
                    }
                  ],
                  "text": "DOCDEA"
                },
                "value": "234234123",
                "period": {
                  "start": "2013-11-08T00:00:00.000-06:00"
                }
              }
            ],
            "active": true,
            "name": [
                {
                "use": "usual",
                "text": "Williams, Rory",
                "family": "Williams",
                "given": [
                  "Rory"
                ],
                "prefix": [
                  "Dr."
                ],
                "suffix": [
                    "M.D."
                ],
                "period": {
                  "start": "2013-11-04T13:25:17.000-06:00"
                }
              }
            ],
            "telecom": [
              {
                "system": "phone",
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
                "district": "Jefferson",
                "state": "AL",
                "postalCode": "56265",
                "country": "USA"
              }
            ],
            "gender": "male"
          }
        }
      ]
    }

  end
end
