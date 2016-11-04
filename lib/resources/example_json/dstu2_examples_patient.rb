module Cerner
  module Resources

    DSTU2_PATIENT_1 ||= {
      "resourceType": "Patient",
      "id": "9827347",
      "meta": {
        "versionId": "11",
        "lastUpdated": "2012-09-25T16:04:36.000Z"
      },
      "text": {
        "status": "generated",
        "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Name&lt;/b&gt;: Pond, Amy&lt;/p&gt;&lt;p&gt;&lt;b&gt;DOB&lt;/b&gt;: 1981-09-10&lt;/p&gt;&lt;p&gt;&lt;b&gt;Sex&lt;/b&gt;: Female&lt;/p&gt;&lt;p&gt;&lt;b&gt;Marital Status&lt;/b&gt;: Married&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;/div&gt;"
      },
      "extension": [
        {
          "url": "http://hl7.org/fhir/StructureDefinition/patient-birthTime",
          "valueDateTime": "1981-09-10T13:09:00.000-05:00"
        }
      ],
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
            "text": "Community Medical Record Number"
          },
          "system": "urn:oid:2.16.840.1.113883.3.13.3.90.274.100.1",
          "value": "10012938",
          "period": {
            "start": "2015-05-07T16:39:21.000Z"
          }
        }
      ],
      "active": true,
      "name": [
        {
          "use": "official",
          "text": "Pond, Amy",
          "family": [
            "Pond"
          ],
          "given": [
            "Amy"
          ],
          "period": {
            "start": "2012-05-17T15:41:35.000Z"
          }
        }
      ],
      "telecom": [
        {
          "system": "phone",
          "value": "81676505276",
          "use": "home",
          "period": {
            "start": "2012-05-17T15:41:34.000Z"
          }
        }
      ],
      "gender": "female",
      "birthDate": "1981-09-10",
      "address": [
        {
          "use": "home",
          "text": "12 Grimmauld Place\nIslington, London 34943\nEngland",
          "line": [
            "12 Grimmauld Place"
          ],
          "city": "Islington",
          "district": "Kent",
          "state": "London",
          "postalCode": "34943",
          "country": "England",
          "period": {
            "start": "2012-05-17T15:41:34.000Z"
          }
        }
      ],
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
      "contact": [
        {
          "relationship": [
            {
              "coding": [
                {
                  "system": "http://hl7.org/fhir/patient-contact-relationship",
                  "code": "family",
                  "display": "Family",
                  "userSelected": false
                }
              ],
              "text": "Family Member"
            }
          ],
          "name": {
            "use": "official",
            "text": "Pond, Melody",
            "family": [
              "Pond"
            ],
            "given": [
              "Melody"
            ],
            "period": {
              "start": "2013-01-03T22:25:05.000Z"
            }
          },
          "telecom": [
            {
              "system": "phone",
              "value": "87644689",
              "use": "home",
              "period": {
                "start": "2015-09-20T04:16:16.000Z"
              }
            }
          ],
          "address": {
            "use": "home",
            "text": "4 Prevet Drive\nLittle Whinning, Surrey 12983\nEngland",
            "line": [
              "4 Prevet Drive"
            ],
            "city": "Little Whinning",
            "state": "Surrey",
            "postalCode": "12983",
            "country": "England",
            "period": {
              "start": "2015-09-20T04:16:16.000Z"
            }
          },
          "gender": "male",
          "period": {
            "start": "2013-01-03T22:20:05.000Z"
          }
        }
      ],
      "careProvider": [
        {
          "reference": "Practitioner/1298321",
          "display": "Song, River"
        }
      ]
    }

    DSTU2_PATIENT_2 ||= {
      "resourceType": "Patient",
      "id": "12389912",
      "meta": {
        "versionId": "5",
        "lastUpdated": "2012-09-25T14:24:36.000Z"
      },
      "text": {
        "status": "generated",
        "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Name&lt;/b&gt;: Williams, Rory&lt;/p&gt;&lt;p&gt;&lt;b&gt;DOB&lt;/b&gt;: 1977-12-12&lt;/p&gt;&lt;p&gt;&lt;b&gt;Sex&lt;/b&gt;: Female&lt;/p&gt;&lt;p&gt;&lt;b&gt;Marital Status&lt;/b&gt;: Separated&lt;/p&gt;&lt;p&gt;&lt;b&gt;Deceased&lt;/b&gt;: Sun Jan  1 06:00:00 2012&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;/div&gt;"
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
          "value": "10930286",
          "period": {
            "start": "2006-12-08T14:58:50.000Z"
          }
        }
      ],
      "active": true,
      "name": [
        {
          "use": "official",
          "text": "Williams, Rory",
          "family": [
            "Williams"
          ],
          "given": [
            "Rory"
          ],
          "period": {
            "start": "2006-12-08T14:58:50.000Z"
          }
        },
        {
          "use": "nickname",
          "given": [
            "Rory"
          ],
          "period": {
            "start": "2006-12-08T19:32:34.000Z"
          }
        }
      ],
      "telecom": [
        {
          "system": "phone",
          "value": "2313434652",
          "use": "home",
          "period": {
            "start": "2006-12-08T14:58:50.000Z"
          }
        }
      ],
      "gender": "female",
      "birthDate": "1977-12-12",
      "deceasedDateTime": "2012-01-01T06:00:00.000Z",
      "address": [
        {
          "use": "home",
          "text": "9972 Bright Horse Farms\nPtarmigan, Nevada 661-5137\nUSA",
          "line": [
            "9972 Bright Horse Farms"
          ],
          "city": "Ptarmigan",
          "state": "Nevada",
          "postalCode": "661-5137",
          "country": "USA",
          "period": {
            "start": "2006-12-08T14:58:50.000Z"
          }
        }
      ],
      "maritalStatus": {
        "coding": [
          {
            "system": "http://hl7.org/fhir/v3/MaritalStatus",
            "code": "L",
            "display": "Legally Separated",
            "userSelected": false
          }
        ],
        "text": "Separated"
      }
    }

    DSTU2_PATIENT_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "7f105a3b-ec18-45df-96f7-61fe8e520db9",
      "type": "searchset",
      "total": 2,
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Patient?name=Carr&_count=20"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Patient/9827347",
          "resource": DSTU2_PATIENT_1
        },
        {
          "fullUrl": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Patient/12389912",
          "resource": DSTU2_PATIENT_2
        }
      ]
    }

  end
end