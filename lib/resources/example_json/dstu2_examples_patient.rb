module Cerner
  module Resources

    DSTU2_PATIENT_ENTRY ||= {
      "resourceType": "Patient",
      "id": "4342008",
      "meta": {
        "versionId": "2",
        "lastUpdated": "2016-06-22T20:27:38.000Z"
      },
      "text": {
        "status": "generated",
        "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Name&lt;/b&gt;: Smart, Wilma&lt;/p&gt;&lt;p&gt;&lt;b&gt;DOB&lt;/b&gt;: 1947-03-16&lt;/p&gt;&lt;p&gt;&lt;b&gt;Sex&lt;/b&gt;: Female&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;/div&gt;"
      },
      "identifier": [
        {
          "use": "usual",
          "type": {
            "coding": [
              {
                "system": "http://hl7.org/fhir/v2/0203",
                "code": "MR",
                "display": "Medical record number",
                "userSelected": false
              }
            ],
            "text": "MRN"
          },
          "system": "urn:oid:1.1.1.1.1.1",
          "value": "10002700",
          "period": {
            "start": "2016-06-22T20:25:56.000Z"
          }
        }
      ],
      "active": true,
      "name": [
        {
          "use": "official",
          "text": "Smart, Wilma",
          "family": [
            "Smart"
          ],
          "given": [
            "Wilma"
          ],
          "period": {
            "start": "2016-06-22T20:25:58.000Z"
          }
        }
      ],
      "gender": "female",
      "birthDate": "1947-03-16",
      "careProvider": [
        {
          "reference": "Practitioner/1912007",
          "display": "Forrest, Fhir"
        }
      ]
    }

    DSTU2_PATIENT_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "567efe76-2573-46be-85dc-8ea698dfa9d0",
      "type": "searchset",
      "total": 1,
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Patient?_id=4342009&_count=20"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Patient/4342009",
          "resource": {
            "resourceType": "Patient",
            "id": "4342009",
            "meta": {
              "versionId": "2",
              "lastUpdated": "2016-06-22T20:51:35.000Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Name&lt;/b&gt;: Smart, Nancy&lt;/p&gt;&lt;p&gt;&lt;b&gt;DOB&lt;/b&gt;: 1980-08-11&lt;/p&gt;&lt;p&gt;&lt;b&gt;Sex&lt;/b&gt;: Female&lt;/p&gt;&lt;p&gt;&lt;b&gt;Marital Status&lt;/b&gt;: Married&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;/div&gt;"
            },
            "identifier": [
              {
                "use": "usual",
                "type": {
                  "coding": [
                    {
                      "system": "http://hl7.org/fhir/v2/0203",
                      "code": "MR",
                      "display": "Medical record number",
                      "userSelected": false
                    }
                  ],
                  "text": "MRN"
                },
                "system": "urn:oid:1.1.1.1.1.1",
                "value": "10002701",
                "period": {
                  "start": "2016-06-22T20:43:05.000Z"
                }
              }
            ],
            "active": true,
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
            "maritalStatus": {
              "coding": [
                {
                  "system": "http://hl7.org/fhir/v3/MaritalStatus",
                  "code": "M",
                  "display": "Married",
                  "userSelected": false
                }
              ],
              "text": "Married"
            },
            "careProvider": [
              {
                "reference": "Practitioner/1912007",
                "display": "Forrest, Fhir"
              }
            ]
          }
        }
      ]
    }

  end
end
