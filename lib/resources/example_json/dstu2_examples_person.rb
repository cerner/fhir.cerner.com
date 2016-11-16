module Cerner
  module Resources

    DSTU2_PERSON_ENTRY ||= {
      "resourceType": "Person",
      "id": "4342009",
      "meta": {
        "versionId": "3",
        "lastUpdated": "2016-11-11T18:10:13.000Z"
      },
      "text": {
        "status": "generated",
        "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Person&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Name&lt;/b&gt;: Smart, Nancy&lt;/p&gt;&lt;p&gt;&lt;b&gt;DOB&lt;/b&gt;: 1980-08-11&lt;/p&gt;&lt;p&gt;&lt;b&gt;Sex&lt;/b&gt;: Female&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;/div&gt;"
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
          "value": "urn:cerner:identity-federation:realm:687f29dd-69dd-4de5-acb1-fd8a2241ef3a:principal:YP2qT7jS2sa",
          "period": {
            "start": "2016-11-01T10:00:00.000Z"
          }
        },
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
          "value": "URN:CERNER:IDENTITY-FEDERATION:REALM:687F29DD-69DD-4DE5-ACB1-FD8A2241EF3A:PRINCIPAL:YP2QT7JS2SA",
          "period": {
            "start": "2016-11-01T10:00:00.000Z"
          }
        }
      ],
      "name": [
        {
          "use": "official",
          "text": "Smart, Nancy",
          "family": [
            "Smart"
          ],
          "given": [
            "Nancy"
          ],
          "period": {
            "start": "2016-06-22T20:43:05.000Z"
          }
        }
      ],
      "gender": "female",
      "birthDate": "1980-08-11",
      "active": true
    }


    DSTU2_PERSON_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "7e466362-8165-4aee-aad4-438e6b147689",
      "type": "searchset",
      "total": 1,
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Person?identifier=urn%3Aoid%3A2.16.840.1.113883.3.13.6%7Curn%3Acerner%3Aidentity-federation%3Arealm%3A687f29dd-69dd-4de5-acb1-fd8a2241ef3a%3Aprincipal%3AuH3IW35N5RE"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Person/4478007",
          "resource": {
            "resourceType": "Person",
            "id": "4478007",
            "meta": {
              "versionId": "7",
              "lastUpdated": "2016-11-11T18:23:27.000Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Person&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Name&lt;/b&gt;: SMART, FRED RICK&lt;/p&gt;&lt;p&gt;&lt;b&gt;DOB&lt;/b&gt;: 1946-08-22&lt;/p&gt;&lt;p&gt;&lt;b&gt;Sex&lt;/b&gt;: Male&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;/div&gt;"
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
                "value": "urn:cerner:identity-federation:realm:687f29dd-69dd-4de5-acb1-fd8a2241ef3a:principal:uH3IW35N5RE",
                "period": {
                  "start": "2016-01-01T10:00:00.000Z"
                }
              },
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
                "value": "URN:CERNER:IDENTITY-FEDERATION:REALM:687F29DD-69DD-4DE5-ACB1-FD8A2241EF3A:PRINCIPAL:UH3IW35N5RE",
                "period": {
                  "start": "2016-01-01T10:00:00.000Z"
                }
              }
            ],
            "name": [
              {
                "use": "official",
                "text": "SMART, FRED RICK",
                "family": [
                  "SMART"
                ],
                "given": [
                  "FRED",
                  "RICK"
                ],
                "period": {
                  "start": "2016-08-31T18:24:54.000Z"
                }
              }
            ],
            "gender": "male",
            "birthDate": "1946-08-22",
            "active": true
          }
        }
      ]
    }

  end
end
