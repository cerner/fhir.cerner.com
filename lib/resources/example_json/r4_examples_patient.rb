module Cerner
  module Resources

    R4_COMBINED_PATIENT_ENTRY ||= {
      "resourceType": "Patient",
      "id": "1011933",
      "meta": {
        "versionId": "0"
      },
      "text": {
        "status": "generated",
        "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Inactive&lt;/p&gt;&lt;/div&gt;"
      },
      "identifier": [
        {
          "extension": [
              {
              "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
              "valueCode": "unknown"
            }
          ]
        }
      ],
      "active": false,
      "name": [
        {
          "extension": [
              {
              "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
              "valueCode": "unknown"
            }
          ]
        }
      ],
      "_gender": {
        "extension": [
          {
            "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
            "valueCode": "unknown"
          }
        ]
      },
      "link": [
        {
          "other": {
            "reference": "Patient/1011932"
          },
          "type": "replaced-by"
        }
      ]
    }

    R4_PATIENT_ENTRY ||= {
      "resourceType": "Patient",
      "id": "4342009",
      "meta": {
        "versionId": "43",
        "lastUpdated": "2019-03-27T15:51:22.000Z"
      },
      "text": {
         "status": "generated",
         "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Name&lt;/b&gt;: SMART, NANCY&lt;/p&gt;&lt;p&gt;&lt;b&gt;DOB&lt;/b&gt;: Aug 11, 1980&lt;/p&gt;&lt;p&gt;&lt;b&gt;Administrative Gender&lt;/b&gt;: Female&lt;/p&gt;&lt;p&gt;&lt;b&gt;Marital Status&lt;/b&gt;: Married&lt;/p&gt;&lt;/div&gt;"
      },
      "extension": [
        {
          "url": "http://hl7.org/fhir/us/core/StructureDefinition/us-core-race",
          "extension": [
            {
              "url": "detailed",
              "valueCoding": {
                "system": "urn:oid:2.16.840.1.113883.6.238",
                "code": "2131-1",
                "display": "Other Race",
                "userSelected": false
              }
            },
            {
              "url": "text",
              "valueString": "White"
            }
          ]
        }
      ],
      "identifier": [
        {
          "id": "CI-6810232-0",
          "use": "usual",
          "type": {
            "coding": [
                {
                "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/4",
                "code": "10",
                "display": "MRN",
                "userSelected": true
              }
            ],
            "text": "MRN"
          },
          "system": "urn:oid:1.1.1.1.1.1",
          "value": "10002701",
          "period": {
            "start": "2016-06-22T20:43:05.000Z"
          }
        },
        {
          "id": "CI-8934209-2",
          "use": "usual",
          "type": {
            "coding": [
                {
                "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/4",
                "code": "670843",
                "display": "Messaging",
                "userSelected": true
              }
            ],
            "text": "Messaging"
          },
          "system": "urn:oid:2.16.840.1.113883.3.13.8",
          "value": "B3F1E729F3804CE78EE48A077965FA15",
          "period": {
            "start": "2018-09-13T16:39:25.000Z"
          }
        },
        {
          "id": "CI-7754298-3",
          "use": "usual",
          "type": {
            "coding": [
                {
                "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/4",
                "code": "36322657",
                "display": "Federated Person Principal",
                "userSelected": true
              }
            ],
            "text": "Federated Person Principal"
          },
          "system": "urn:oid:2.16.840.1.113883.3.13.6",
          "value": "URN:CERNER:IDENTITY-FEDERATION:REALM:0B8A0111-E8E6-4C26-A91C-5069CBC6B1CA:PRINCIPAL:ABC123",
          "period": {
            "start": "2017-09-26T05:00:00.000Z",
            "end": "2019-01-02T05:00:00.000Z"
          }
        },
        {
          "id": "CI-7476206-4",
          "use": "usual",
          "type": {
            "coding": [
              {
                "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/4",
                "code": "36322657",
                "display": "Federated Person Principal",
                "userSelected": true
              }
            ],
            "text": "Federated Person Principal"
          },
          "system": "urn:oid:2.16.840.1.113883.3.13.6",
          "value": "URN:CERNER:IDENTITY-FEDERATION:REALM:687F29DD-69DD-4DE5-ACB1-FD8A2241EF3A:PRINCIPAL:YP2QT7JS2SA",
          "period": {
            "start": "2016-11-01T10:00:00.000Z"
          }
        },
        {
          "id": "CI-7476207-5",
          "use": "usual",
          "type": {
            "coding": [
              {
                "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/4",
                "code": "36322657",
                "display": "Federated Person Principal",
                "userSelected": true
              }
            ],
            "text": "Federated Person Principal"
          },
          "system": "urn:oid:2.16.840.1.113883.3.13.6",
          "value": "urn:cerner:identity-federation:realm:687f29dd-69dd-4de5-acb1-fd8a2241ef3a:principal:YP2qT7jS2sa",
          "period": {
            "start": "2016-11-01T10:00:00.000Z"
          }
        }
      ],
      "active": true,
      "name": [
        {
          "id": "CI-4342009-0",
          "use": "official",
          "text": "SMART, NANCY",
          "family": "SMART",
          "given": [
            "NANCY"
          ],
          "period": {
            "start": "2016-06-22T20:43:05.000Z"
          }
        }
      ],
      "telecom": [
        {
          "id": "CI-EM-2399938-0",
          "system": "email",
          "value": "joe.smart@hl7.com",
          "use": "home",
          "period": {
            "start": "2018-09-13T16:37:32.000Z"
          }
        }
      ],
      "gender": "female",
      "birthDate": "1980-08-11",
      "maritalStatus": {
        "coding": [
          {
            "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/38",
            "code": "309237",
            "display": "Married",
            "userSelected": true
          },
          {
            "system": "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus",
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
                  "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/351",
                  "code": "36327661",
                  "display": "Authorized Representative",
                  "userSelected": true
                }
              ],
              "text": "Authorized Representative"
            }
          ],
          "name": {
            "id": "CI-4342010-0",
            "use": "official",
            "text": "SMART, JOE",
            "family": "SMART",
            "given": [
              "JOE"
            ],
            "period": {
              "start": "2016-06-22T21:06:59.000Z"
            }
          },
          "telecom": [
            {
              "system": "phone",
              "value": "9139898765",
              "use": "home",
              "period": {
                "start": "2017-06-27T21:47:16.000Z"
              }
            },
            {
              "system": "phone",
              "value": "9137876555",
              "use": "mobile",
              "period": {
                "start": "2017-06-27T21:47:16.000Z"
              }
            },
            {
              "system": "email",
              "value": "joe.smart@hl7.com",
              "use": "home",
              "period": {
                "start": "2018-09-13T16:43:28.000Z"
              }
            }
          ],
          "address": {
            "text": "1234 Blvd\nOverland Park, KS 66213\nUSA",
            "line": [
              "1234 Blvd"
            ],
            "city": "Overland Park",
            "district": "Johnson",
            "state": "KS",
            "postalCode": "66213",
            "country": "USA",
            "period": {
              "start": "2017-06-27T21:47:16.000Z"
            }
          },
          "gender": "male",
          "period": {
            "start": "2017-07-07T18:28:24.000Z",
            "end": "2017-09-20T15:18:54.000Z"
          }
        },
        {
          "relationship": [
            {
              "coding": [
                  {
                  "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/351",
                  "code": "36327661",
                  "display": "Authorized Representative",
                  "userSelected": true
                }
              ],
              "text": "Authorized Representative"
            }
          ],
          "name": {
            "id": "CI-4342010-0",
            "use": "official",
            "text": "SMART, JOE",
            "family": "SMART",
            "given": [
              "JOE"
            ],
            "period": {
              "start": "2016-06-22T21:06:59.000Z"
            }
          },
          "telecom": [
            {
              "system": "phone",
              "value": "9139898765",
              "use": "home",
              "period": {
                "start": "2017-06-27T21:47:16.000Z"
              }
            },
            {
              "system": "phone",
              "value": "9137876555",
              "use": "mobile",
              "period": {
                "start": "2017-06-27T21:47:16.000Z"
              }
            },
            {
              "system": "email",
              "value": "joe.smart@hl7.com",
              "use": "home",
              "period": {
                "start": "2018-09-13T16:43:28.000Z"
              }
            }
          ],
          "address": {
            "text": "1234 Blvd\nOverland Park, KS 66213\nUSA",
            "line": [
              "1234 Blvd"
            ],
            "city": "Overland Park",
            "district": "Johnson",
            "state": "KS",
            "postalCode": "66213",
            "country": "USA",
            "period": {
              "start": "2017-06-27T21:47:16.000Z"
            }
          },
          "gender": "male",
          "period": {
            "start": "2017-06-09T13:46:54.000Z",
            "end": "2017-06-20T15:28:11.000Z"
          }
        }
      ],
      "generalPractitioner": [
        {
          "id": "CI-6810238-1",
          "reference": "Practitioner/1912007",
          "display": "Smart, Joe"
        }
      ]
    }

    R4_PATIENT_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "b8e08a98-849f-4544-9fa8-985aa445e31b",
      "type": "searchset",
      "total": 1,
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Patient?_id=4342009"
        }
      ],
      "entry": [
        "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Patient/4342009",
        "resource": R4_PATIENT_ENTRY
      ]
    }

    R4_PATIENT_CREATE ||= {
      "resourceType": "Patient",
      "extension": [
        {
          "url": "http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex",
          "valueCode": "M"
        },
        {
          "url": "http://hl7.org/fhir/us/core/StructureDefinition/us-core-race",
          "extension": [
            {
              "url": "ombCategory",
              "valueCoding": {
                "system": "urn:oid:2.16.840.1.113883.6.238",
                "code": "2028-9",
                "display": "Asian"
              }
            },
            {
              "url": "detailed",
              "valueCoding": {
                "system": "urn:oid:2.16.840.1.113883.6.238",
                "code": "2039-6",
                "display": "Japanese"
              }
            }
          ]
        },
        {
          "url": "http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity",
          "extension": [
            {
              "url": "ombCategory",
              "valueCoding": {
                "system": "urn:oid:2.16.840.1.113883.6.238",
                "code": "2186-5",
                "display": "Non Hispanic or Latino"
              }
            }
          ]
        }
      ],
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
          "family": "Wolf",
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
            "system": "http://terminology.hl7.org/CodeSystem/v3-NullFlavor",
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
      "generalPractitioner": [
        {
          "reference": "Practitioner/605926"
        }
      ]
    }

    R4_PATIENT_PATCH ||= [
      {
        "op": "add",
        "path": "/identifier/-",
        "value": {
          "type": {
            "coding": [
              {
                "code": "MR",
                "system": "http://hl7.org/fhir/v2/0203"
              }
            ]
          },
          "system": "urn:oid:1.1.1.1.1.1",
          "value": "THIS:IS:A:UNIQUE:IDENTIFIER",
          "period": {
            "start": "2018-01-02T00:00:00-05:00",
            "end": "2022-01-02T00:00:00-05:00"
          }
        }
      },
      {
        "path": "/name/0/id",
        "op": "test",
        "value": "CI-5786010-0"
      },
      {
        "path": "/name/0/given",
        "op": "replace",
        "value": [
          "Harrison",
          "James"
        ]
      },
      {
        "path": "/telecom/0/id",
        "op": "test",
        "value": "CI-PH-2807950-0"
      },
      {
        "path": "/telecom/0",
        "op": "remove"
      },
      {
        "path": "/maritalStatus",
        "op": "replace",
        "value": {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus",
              "code": "M"
            }
          ]
        }
      },
      {
        "path": "/communication",
        "op": "replace",
        "value": [
          {
            "language": {
              "coding": [
                {
                  "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/36",
                  "code": "312729",
                }
              ]
            },
            "preferred": true
          }
        ]
      },
      {
        "path": "/extension",
        "op": "replace",
        "value": [
          {
            "url": "http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex",
            "valueCode": "M"
          },
          {
            "url": "http://hl7.org/fhir/us/core/StructureDefinition/us-core-race",
            "extension": [
              {
                "url": "ombCategory",
                "valueCoding": {
                  "system": "urn:oid:2.16.840.1.113883.6.238",
                  "code": "2106-3",
                  "display": "White"
                }
              },
              {
                "url": "detailed",
                "valueCoding": {
                  "system": "urn:oid:2.16.840.1.113883.6.238",
                  "code": "2110-5",
                  "display": "English"
                }
              }
            ]
          },
          {
            "url": "http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity",
            "extension": [
              {
                "url": "ombCategory",
                "valueCoding": {
                  "system": "urn:oid:2.16.840.1.113883.6.238",
                  "code": "2135-2",
                  "display": "Hispanic or Latino"
                }
              },
              {
                "url": "detailed",
                "valueCoding": {
                  "system": "urn:oid:2.16.840.1.113883.6.238",
                  "code": "2156-8",
                  "display": "Costa Rican"
                }
              }
            ]
          }
        ]
      }
    ]
  end
end
