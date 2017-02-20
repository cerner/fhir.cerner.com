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
        "id": "7e526ecc-99ef-4c34-bbaa-f17f732b36e9",
        "type": "searchset",
        "total": 1,
        "link": [{
            "relation": "self",
            "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Person?identifier=urn%3Aoid%3A2.16.840.1.113883.3.13.6%7Curn%3Acerner%3Aidentity-federation%3Arealm%3A687f29dd-69dd-4de5-acb1-fd8a2241ef3a%3Aprincipal%3AEC4Ax54P8GI"
        }],
        "entry": [{
            "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Person/1316024",
            "resource": {
                "resourceType": "Person",
                "id": "1316024",
                "meta": {
                    "versionId": "32",
                    "lastUpdated": "2017-01-12T17:51:03.000Z"
                },
                "text": {
                    "status": "generated",
                    "div": "&lt;div>&lt;p>&lt;b>Person&lt;/b>&lt;/p>&lt;p>&lt;b>Name&lt;/b>: Williams, Rory&lt;/p>&lt;p>&lt;b>DOB&lt;/b>: 1961-04-30&lt;/p>&lt;p>&lt;b>Sex&lt;/b>: Male&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Active&lt;/p>&lt;/div>"
                },
                "identifier": [{
                    "use": "usual",
                    "type": {
                        "coding": [{
                            "system": "http://hl7.org/fhir/v2/0203",
                            "code": "AN",
                            "display": "Account number",
                            "userSelected": false
                        }],
                        "text": "Federated Person Principal"
                    },
                    "system": "urn:oid:2.16.840.1.113883.3.13.6",
                    "value": "URN:CERNER:IDENTITY-FEDERATION:REALM:687F29DD-69DD-4DE5-ACB1-FD8A2241EF3A:PRINCIPAL:EC4AX54P8GI",
                    "period": {
                        "start": "2016-11-01T10:00:00.000Z"
                    }
                }, {
                    "use": "usual",
                    "type": {
                        "coding": [{
                            "system": "http://hl7.org/fhir/v2/0203",
                            "code": "AN",
                            "display": "Account number",
                            "userSelected": false
                        }],
                        "text": "Federated Person Principal"
                    },
                    "system": "urn:oid:2.16.840.1.113883.3.13.6",
                    "value": "urn:cerner:identity-federation:realm:687f29dd-69dd-4de5-acb1-fd8a2241ef3a:principal:EC4Ax54P8GI",
                    "period": {
                        "start": "2016-11-01T10:00:00.000Z"
                    }
                }, {
                    "use": "usual",
                    "type": {
                        "coding": [{
                            "system": "http://hl7.org/fhir/v2/0203",
                            "code": "AN",
                            "display": "Account number",
                            "userSelected": false
                        }],
                        "text": "Federated Person Principal"
                    },
                    "system": "urn:oid:2.16.840.1.113883.3.13.6",
                    "value": "NEW-FEDPRINCIPAL-ALIAS-12212016",
                    "period": {
                        "start": "2016-01-02T05:00:00.000Z",
                        "end": "2017-01-02T05:00:00.000Z"
                    }
                }],
                "name": [{
                    "use": "official",
                    "text": "Williams, Rory",
                    "family": ["Williams"],
                    "given": ["Rory"],
                    "period": {
                        "start": "2012-05-17T14:54:31.000Z"
                    }
                }, {
                    "given": ["Rory"],
                    "period": {
                        "start": "2012-05-22T15:45:50.000Z"
                    }
                }],
                "telecom": [{
                    "system": "phone",
                    "value": "1231231231",
                    "use": "work",
                    "period": {
                        "start": "2013-03-11T07:17:03.000Z"
                    }
                }, {
                    "system": "phone",
                    "value": "8168229121",
                    "use": "home",
                    "period": {
                        "start": "2012-05-17T15:33:18.000Z"
                    }
                }, {
                    "system": "phone",
                    "value": "8162324455",
                    "use": "mobile",
                    "period": {
                        "start": "2013-01-30T14:56:59.000Z"
                    }
                }],
                "gender": "male",
                "birthDate": "1961-04-30",
                "address": [{
                    "use": "home",
                    "text": "101 Someplace Cool\nKansas City, MO 64199\nUSA",
                    "line": ["101 Someplace Cool"],
                    "city": "Kansas City",
                    "district": "Jackson",
                    "state": "MO",
                    "postalCode": "64199",
                    "country": "USA",
                    "period": {
                        "start": "2012-05-17T15:33:18.000Z"
                    }
                }],
                "active": true
            }
        }]
    }

  end
end
