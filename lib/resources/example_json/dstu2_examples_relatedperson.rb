module Cerner
  module Resources

    DSTU2_RELATEDPERSON_ENTRY ||= {
      "resourceType": "RelatedPerson",
      "id": "5796399",
      "meta": {
        "versionId": "30"
      },
      "text": {
        "status": "generated",
        "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;RelatedPerson&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Name&lt;/b&gt;: PETERS, TIMOTHY&lt;/p&gt;&lt;p&gt;&lt;b&gt;DOB&lt;/b&gt;: 1961-04-30&lt;/p&gt;&lt;p&gt;&lt;b&gt;Sex&lt;/b&gt;: Male&lt;/p&gt;&lt;/div&gt;"
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
          "value": "URN:CERNER:IDENTITY-FEDERATION:REALM:687F29DD-69DD-4DE5-ACB1-FD8A2241EF3A:PRINCIPAL:EC4AX54P8GI",
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
          "value": "urn:cerner:identity-federation:realm:687f29dd-69dd-4de5-acb1-fd8a2241ef3a:principal:EC4Ax54P8GI",
          "period": {
            "start": "2016-11-01T10:00:00.000Z"
          }
        }
      ],
      "patient": {
        "reference": "Patient/3838011",
        "display": "Peters, Timothy"
      },
      "name": {
        "use": "official",
        "text": "PETERS, TIMOTHY",
        "family": [
          "PETERS"
        ],
        "given": [
          "TIMOTHY"
        ],
        "period": {
          "start": "2012-05-17T14:54:31.000Z"
        }
      },
      "telecom": [
        {
          "system": "phone",
          "value": "1231231231",
          "use": "work",
          "period": {
            "start": "2013-03-11T07:17:03.000Z"
          }
        },
        {
          "system": "phone",
          "value": "8168229121",
          "use": "home",
          "period": {
            "start": "2012-05-17T15:33:18.000Z"
          }
        },
        {
          "system": "phone",
          "value": "8162324455",
          "use": "mobile",
          "period": {
            "start": "2013-01-30T14:56:59.000Z"
          }
        }
      ],
      "gender": "male",
      "birthDate": "1961-04-30",
      "address": [
        {
          "use": "home",
          "text": "9430 Blue Ridge Blvd\nKansas City, MO 64199\nUSA",
          "line": [
            "9430 Blue Ridge Blvd"
          ],
          "city": "Kansas City",
          "district": "Jackson",
          "state": "MO",
          "postalCode": "64199",
          "country": "USA",
          "period": {
            "start": "2012-05-17T15:33:18.000Z"
          }
        }
      ],
      "period": {
        "start": "2015-10-30T06:50:09.000Z"
      }
    }

    DSTU2_RELATEDPERSON_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "be20eb42-4ce3-47bd-a657-a9de36603300",
      "type": "searchset",
      "total": 1,
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/RelatedPerson?identifier=urn%3Aoid%3A2.16.840.1.113883.3.13.6%7Curn%3Acerner%3Aidentity-federation%3Arealm%3A687f29dd-69dd-4de5-acb1-fd8a2241ef3a%3Aprincipal%3AEC4Ax54P8GI"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/RelatedPerson/5796399",
          "resource": {
            "resourceType": "RelatedPerson",
            "id": "5796399",
            "meta": {
              "versionId": "30"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;RelatedPerson&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Name&lt;/b&gt;: PETERS, TIMOTHY&lt;/p&gt;&lt;p&gt;&lt;b&gt;DOB&lt;/b&gt;: 1961-04-30&lt;/p&gt;&lt;p&gt;&lt;b&gt;Sex&lt;/b&gt;: Male&lt;/p&gt;&lt;/div&gt;"
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
                "value": "URN:CERNER:IDENTITY-FEDERATION:REALM:687F29DD-69DD-4DE5-ACB1-FD8A2241EF3A:PRINCIPAL:EC4AX54P8GI",
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
                "value": "urn:cerner:identity-federation:realm:687f29dd-69dd-4de5-acb1-fd8a2241ef3a:principal:EC4Ax54P8GI",
                "period": {
                  "start": "2016-11-01T10:00:00.000Z"
                }
              }
            ],
            "patient": {
              "reference": "Patient/3838011",
              "display": "Peters, Jennifer"
            },
            "name": {
              "use": "official",
              "text": "PETERS, TIMOTHY",
              "family": [
                "PETERS"
              ],
              "given": [
                "TIMOTHY"
              ],
              "period": {
                "start": "2012-05-17T14:54:31.000Z"
              }
            },
            "telecom": [
              {
                "system": "phone",
                "value": "1231231231",
                "use": "work",
                "period": {
                  "start": "2013-03-11T07:17:03.000Z"
                }
              },
              {
                "system": "phone",
                "value": "8168229121",
                "use": "home",
                "period": {
                  "start": "2012-05-17T15:33:18.000Z"
                }
              },
              {
                "system": "phone",
                "value": "8162324455",
                "use": "mobile",
                "period": {
                  "start": "2013-01-30T14:56:59.000Z"
                }
              }
            ],
            "gender": "male",
            "birthDate": "1961-04-30",
            "address": [
              {
                "use": "home",
                "text": "9430 Blue Ridge Blvd\nKansas City, MO 64199\nUSA",
                "line": [
                  "9430 Blue Ridge Blvd"
                ],
                "city": "Kansas City",
                "district": "Jackson",
                "state": "MO",
                "postalCode": "64199",
                "country": "USA",
                "period": {
                  "start": "2012-05-17T15:33:18.000Z"
                }
              }
            ],
            "period": {
              "start": "2015-10-30T06:50:09.000Z"
            }
          }
        }
      ]
    }

  end
end
