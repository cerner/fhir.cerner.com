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
      "id": "4860007",
      "meta": {
        "versionId": "0"
      },
      "active": false,
      "link": [
        {
          "other": {
            "reference": "Patient/4342008"
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

  end
end
