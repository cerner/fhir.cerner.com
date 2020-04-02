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
      "extension": [
        {
          "url": "http://hl7.org/fhir/StructureDefinition/patient-birthTime",
          "valueDateTime": "1947-03-16T13:36:00.000-06:00"
        },
        {
          "url": "http://fhir.org/guides/argonaut/StructureDefinition/argo-birthsex",
          "valueCode": "F"
        },
        {
          "url": "http://fhir.org/guides/argonaut/StructureDefinition/argo-race",
          "extension": [
            {
              "url": "ombCategory",
              "valueCoding": {
                "system": "http://hl7.org/fhir/v3/Race",
                "code": "2054-5",
                "display": "Black or African American",
                "userSelected": false
              }
            },
            {
              "url": "text",
              "valueString": "Black or African American"
            }
          ]
        },
        {
          "url": "http://fhir.org/guides/argonaut/StructureDefinition/argo-ethnicity",
          "extension": [
            {
              "url": "ombCategory",
              "valueCoding": {
                "system": "http://hl7.org/fhir/v3/Ethnicity",
                "code": "2135-2",
                "display": "Hispanic or Latino",
                "userSelected": false
              }
            },
            {
              "url": "text",
              "valueString": "Hispanic or Latino"
            }
          ]
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
      "communication": [
        {
          "language": {
            "coding": [
              {
                "system": "urn:ietf:bcp:47",
                "code": "en",
                "display": "English",
                "userSelected": false
              }
            ],
            "text": "English"
          },
          "preferred": true
        }
      ],
      "careProvider": [
        {
          "reference": "Practitioner/1912007",
          "display": "Forrest, Fhir"
        }
      ]
    }

    DSTU2_COMBINED_PATIENT_ENTRY ||= {
      "resourceType": "Patient",
      "id": "1504027",
      "meta": {
        "versionId": "0"
      },
      "text": {
        "status": "generated",
        "div": "&lt;div>&lt;p>&lt;b>Patient&lt;/b>&lt;/p>&lt;p>&lt;b>Replaced By&lt;/b>: Patient/1504028&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Inactive&lt;/p>&lt;/div>"
      },
      "active": false,
      "link": [
        {
          "other": {
            "reference": "Patient/1504028"
          },
          "type": "replace"
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
            "extension": [
              {
                "url": "http://hl7.org/fhir/StructureDefinition/patient-birthTime",
                "valueDateTime": "1980-08-11T12:33:00.000-05:00"
              },
              {
                "url": "http://fhir.org/guides/argonaut/StructureDefinition/argo-birthsex",
                "valueCode": "F"
              },
              {
                "url": "http://fhir.org/guides/argonaut/StructureDefinition/argo-race",
                "extension": [
                  {
                    "url": "ombCategory",
                    "valueCoding": {
                      "system": "http://hl7.org/fhir/v3/Race",
                      "code": "2106-3",
                      "display": "White",
                      "userSelected": false
                    }
                  },
                  {
                    "url": "text",
                    "valueString": "White"
                  }
                ]
              },
              {
                "url": "http://fhir.org/guides/argonaut/StructureDefinition/argo-ethnicity",
                "extension": [
                  {
                    "url": "ombCategory",
                    "valueCoding": {
                      "system": "http://hl7.org/fhir/v3/Ethnicity",
                      "code": "2186-5",
                      "display": "Not Hispanic or Latino",
                      "userSelected": false
                    }
                  },
                  {
                    "url": "text",
                    "valueString": "Not Hispanic or Latino"
                  }
                ]
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
            "communication": [
              {
                "language": {
                  "coding": [
                    {
                      "system": "urn:ietf:bcp:47",
                      "code": "en",
                      "display": "English",
                      "userSelected": false
                    }
                  ],
                  "text": "English"
                },
                "preferred": true
              }
            ],
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

    DSTU2_PATIENT_CREATE ||= {
      "resourceType": "Patient",
      "identifier": [
        {
          "assigner": {
            "reference": "Organization/619848"
          }
        }
      ],
      "active": true,
      "name": [
        {
          "use": "official",
          "family": [
            "Wolf"
          ],
          "given": [
            "Person",
            "Name"
          ],
          "period": {
            "start": "2010-05-17T14:54:31.000Z"
          }
        },
        {
          "use": "usual",
          "given": [
            "Bigby"
          ],
          "period": {
            "start": "2012-05-22T15:45:50.000Z"
          }
        }
      ],
      "telecom": [
        {
          "system": "phone",
          "value": "8168229121",
          "use": "home",
          "period": {
            "start": "2012-05-17T15:33:18.000Z"
          }
        }
      ],
      "gender": "male",
      "birthDate": "1990-09-15",
      "address": [
        {
          "use": "home",
          "line": [
            "121212 Metcalf Drive",
            "Apartment 403"
          ],
          "city": "Kansas City",
          "district": "Jackson",
          "state": "KS",
          "postalCode": "64199",
          "country": "United States of America",
          "period": {
            "start": "2012-05-17T15:33:18.000Z"
          }
        }
      ],
      "maritalStatus": {
        "coding": [
          {
            "system": "http://hl7.org/fhir/v3/NullFlavor",
            "code": "UNK",
            "display": "Unknown"
          }
        ],
        "text": "Unknown"
      },
      "communication": [
        {
          "language": {
            "coding": [
              {
                "system": "urn:ietf:bcp:47",
            	"code": "en",
                "display": "English"
              }
            ],
            "text": "English"
          },
          "preferred": true
        }
      ],
      "careProvider": [
        {
          "reference": "Practitioner/4594010"
        },
        {
          "reference": "Practitioner/4646007"
        }
      ]
    }
  end
end
