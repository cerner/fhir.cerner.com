module Cerner
  module Resources

    DSTU2_PERSON_ENTRY ||= {
      "resourceType": "Person",
      "id": "14149269",
      "meta": {
        "versionId": "1",
        "lastUpdated": "2016-10-18T18:22:32.000Z"
      },
      "text": {
        "status": "generated",
        "div": "&lt;div>&lt;p>&lt;b>Person&lt;/b>&lt;/p>&lt;p>&lt;b>Name&lt;/b>: NOAH, SANDRA&lt;/p>&lt;p>&lt;b>DOB&lt;/b>: 1958-10-01&lt;/p>&lt;p>&lt;b>Sex&lt;/b>: Female&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Active&lt;/p>&lt;/div>"
      },
      "identifier": [
        {
          "use": "usual",
          "type": {
            "coding": [
              {
                "system": "http://hl7.org/fhir/v2/0203",
                "code": "AN",
                "display": "Account number",
                "userSelected": false
              }
            ],
            "text": "Federated Person Principal"
          },
          "system": "urn:oid:2.16.840.1.113883.3.13.6",
          "value": "URN:CERNER:IDENTITY-FEDERATION:REALM:AC193C1A-9763-45E1-9FA2-C1C3AA4BA16D:PRINCIPAL:R53HZ5ZL9ZX",
          "period": {
            "start": "2016-01-01T10:00:00.000Z"
          }
        }
      ],
      "name": [
        {
          "use": "official",
          "text": "NOAH, SANDRA",
          "family": [
            "NOAH"
          ],
          "given": [
            "SANDRA"
          ],
          "period": {
            "start": "2016-10-18T17:31:01.000Z"
          }
        }
      ],
      "gender": "female",
      "birthDate": "1958-10-01",
      "active": true
    }

    
    DSTU2_PERSON_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "a9c100d2-eb56-4500-9178-8cbab089c18e",
      "type": "searchset",
      "total": 1,
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Person?identifier=urn%3Aoid%3A2.16.840.1.113883.3.13.6%7CURN%3ACERNER%3AIDENTITY-FEDERATION%3AREALM%3AAC193C1A-9763-45E1-9FA2-C1C3AA4BA16D%3APRINCIPAL%3AR53HZ5ZL9ZX"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Person/14149269",
          "resource": {
            "resourceType": "Person",
            "id": "14149269",
            "meta": {
              "versionId": "1",
              "lastUpdated": "2016-10-18T18:22:32.000Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div>&lt;p>&lt;b>Person&lt;/b>&lt;/p>&lt;p>&lt;b>Name&lt;/b>: NOAH, SANDRA&lt;/p>&lt;p>&lt;b>DOB&lt;/b>: 1958-10-01&lt;/p>&lt;p>&lt;b>Sex&lt;/b>: Female&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Active&lt;/p>&lt;/div>"
            },
            "identifier": [
              {
                "use": "usual",
                "type": {
                  "coding": [
                    {
                      "system": "http://hl7.org/fhir/v2/0203",
                      "code": "AN",
                      "display": "Account number",
                      "userSelected": false
                    }
                  ],
                  "text": "Federated Person Principal"
                },
                "system": "urn:oid:2.16.840.1.113883.3.13.6",
                "value": "URN:CERNER:IDENTITY-FEDERATION:REALM:AC193C1A-9763-45E1-9FA2-C1C3AA4BA16D:PRINCIPAL:R53HZ5ZL9ZX",
                "period": {
                  "start": "2016-01-01T10:00:00.000Z"
                }
              }
            ],
            "name": [
              {
                "use": "official",
                "text": "NOAH, SANDRA",
                "family": [
                  "NOAH"
                ],
                "given": [
                  "SANDRA"
                ],
                "period": {
                  "start": "2016-10-18T17:31:01.000Z"
                }
              }
            ],
            "gender": "female",
            "birthDate": "1958-10-01",
            "active": true
          }
        }
      ]
    }

  end
end
