# frozen_string_literal: true

module Cerner
  module Resources

    SOARIAN_R4_BULK_EXPORT_COMPLETE ||= {
      "resourceType": 'Bundle',
      "id": '2fa0b1dc-ecab-4744-bb53-d4a21f3e7b73',
      "type": 'searchset',
      "timestamp": '2021-02-15T15:09:40-05:00',
      "entry": [
        {
          "fullUrl": 'https://fhir-myrecord-sc.cerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/Patient/A879904FD2FE4B2D90C89FDA84E1285F',
          "resource": {
            "resourceType": 'Patient',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F',
            "meta": {
              "lastUpdated": '2021-01-21T15:08:01-05:00'
            },
            "gender": 'female',
            "birthDate": '2010-03-11',
            "communication": [
              {
                "language": {
                  "coding": [
                    {
                      "system": 'urn:ietf:bcp:47',
                      "code": 'EN'
                    }
                  ],
                  "text": 'English'
                }
              }
            ],
            "active": true,
            "name": [
              {
                "use": 'usual',
                "text": 'Mcgovern,Astrid Santiago',
                "family": 'Mcgovern',
                "given": [
                  'Astrid',
                  'Santiago'
                ],
                "suffix": [
                  'Mrs.'
                ]
              }
            ],
            "identifier": [
              {
                "type": {
                  "coding": [
                    {
                      "system": 'http://terminology.hl7.org/CodeSystem/v2-0203',
                      "code": 'SB',
                      "display": 'Social Beneficiary Identifier'
                    }
                  ],
                  "text": 'SSN'
                },
                "system": 'http://hl7.org/fhir/sid/us-ssn',
                "value": '598-00-4749'
              },
              {
                "type": {
                  "coding": [
                    {
                      "system": 'http://terminology.hl7.org/CodeSystem/v2-0203',
                      "code": 'MR',
                      "display": 'Medical record number'
                    }
                  ],
                  "text": 'MR'
                },
                "system": 'urn:oid:2.1.5.234.99.1.3.7.1',
                "value": 'INF103'
              },
              {
                "type": {
                  "coding": [
                    {
                      "system": 'http://terminology.hl7.org/CodeSystem/v2-0203',
                      "code": 'PI',
                      "display": 'Patient internal identifier'
                    }
                  ],
                  "text": 'MPI'
                },
                "system": 'urn:oid:2.1.5.234.99.1.3.7.2',
                "value": 'INF1003'
              }
            ],
            "extension": [
              {
                "url": 'http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex',
                "valueCode": 'F'
              },
              {
                "url": 'http://hl7.org/fhir/us/core/StructureDefinition/us-core-race',
                "extension": [
                  {
                    "url": 'ombCategory',
                    "valueCoding": {
                      "system": 'urn:oid:2.16.840.1.113883.6.238',
                      "code": '2106-3',
                      "display": 'White'
                    }
                  },
                  {
                    "url": 'text',
                    "valueString": 'White'
                  }
                ]
              },
              {
                "url": 'http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity',
                "extension": [
                  {
                    "url": 'ombCategory',
                    "valueCoding": {
                      "system": 'urn:oid:2.16.840.1.113883.6.238',
                      "code": '2135-2',
                      "display": 'Hispanic or Latino'
                    }
                  },
                  {
                    "url": 'text',
                    "valueString": 'Hispanic or Latino'
                  }
                ]
              }
            ],
            "address": [
              {
                "use": 'home',
                "text": 'PO Box 549,Des Moines ,IA,50301-0549',
                "line": [
                  'PO Box 549'
                ],
                "city": 'Des Moines ',
                "state": 'IA',
                "postalCode": '50301-0549',
                "period": {
                  "start": '2020-04-15T00:00:00-04:00'
                }
              }
            ],
            "telecom": [
              {
                "system": 'phone',
                "value": '(818)999-555-4444',
                "use": 'home',
                "period": {
                  "start": '2020-04-15T00:00:00-04:00'
                }
              }
            ],
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Patient</b><br /><b>Status</b>:Active;<b>Name</b>:Mcgovern,Astrid Santiago;<b>DOB</b>:2010-03-11;<b>Administrative Gender</b>:female;</div>'
              # rubocop:enable Layout/LineLength
            }
          }
        }
      ],
      "link": [
        {
          "relation": 'self',
          "url": 'https://fhir-myrecord-sc.cerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/Patient?_id=A879904FD2FE4B2D90C89FDA84E1285F'
        }
      ]
    }.freeze

    SOARIAN_R4_READ_BY_ID_ENTRY ||= {
      "resourceType": 'Patient',
      "id": 'A879904FD2FE4B2D90C89FDA84E1285F',
      "meta": {
        "lastUpdated": '2021-01-21T15:08:01-05:00'
      },
      "gender": 'female',
      "birthDate": '2010-03-11',
      "communication": [
        {
          "language": {
            "coding": [
              {
                "system": 'urn:ietf:bcp:47',
                "code": 'EN'
              }
            ],
            "text": 'English'
          }
        }
      ],
      "active": true,
      "name": [
        {
          "use": 'usual',
          "text": 'Mcgovern,Astrid Santiago',
          "family": 'Mcgovern',
          "given": [
            'Astrid',
            'Santiago'
          ],
          "suffix": [
            'Mrs.'
          ]
        }
      ],
      "identifier": [
        {
          "type": {
            "coding": [
              {
                "system": 'http://terminology.hl7.org/CodeSystem/v2-0203',
                "code": 'SB',
                "display": 'Social Beneficiary Identifier'
              }
            ],
            "text": 'SSN'
          },
          "system": 'http://hl7.org/fhir/sid/us-ssn',
          "value": '598-00-4749'
        },
        {
          "type": {
            "coding": [
              {
                "system": 'http://terminology.hl7.org/CodeSystem/v2-0203',
                "code": 'MR',
                "display": 'Medical record number'
              }
            ],
            "text": 'MR'
          },
          "system": 'urn:oid:2.1.5.234.99.1.3.7.1',
          "value": 'INF103'
        },
        {
          "type": {
            "coding": [
              {
                "system": 'http://terminology.hl7.org/CodeSystem/v2-0203',
                "code": 'PI',
                "display": 'Patient internal identifier'
              }
            ],
            "text": 'MPI'
          },
          "system": 'urn:oid:2.1.5.234.99.1.3.7.2',
          "value": 'INF1003'
        }
      ],
      "extension": [
        {
          "url": 'http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex',
          "valueCode": 'F'
        },
        {
          "url": 'http://hl7.org/fhir/us/core/StructureDefinition/us-core-race',
          "extension": [
            {
              "url": 'ombCategory',
              "valueCoding": {
                "system": 'urn:oid:2.16.840.1.113883.6.238',
                "code": '2106-3',
                "display": 'White'
              }
            },
            {
              "url": 'text',
              "valueString": 'White'
            }
          ]
        },
        {
          "url": 'http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity',
          "extension": [
            {
              "url": 'ombCategory',
              "valueCoding": {
                "system": 'urn:oid:2.16.840.1.113883.6.238',
                "code": '2135-2',
                "display": 'Hispanic or Latino'
              }
            },
            {
              "url": 'text',
              "valueString": 'Hispanic or Latino'
            }
          ]
        }
      ],
      "address": [
        {
          "use": 'home',
          "text": 'PO Box 549,Des Moines ,IA,50301-0549',
          "line": [
            'PO Box 549'
          ],
          "city": 'Des Moines ',
          "state": 'IA',
          "postalCode": '50301-0549',
          "period": {
            "start": '2020-04-15T00:00:00-04:00'
          }
        }
      ],
      "telecom": [
        {
          "system": 'phone',
          "value": '(818)999-555-4444',
          "use": 'home',
          "period": {
            "start": '2020-04-15T00:00:00-04:00'
          }
        }
      ],
      "text": {
        "status": 'generated',
        # rubocop:disable Layout/LineLength
        "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Patient</b><br /><b>Status</b>:Active;<b>Name</b>:Mcgovern,Astrid Santiago;<b>DOB</b>:2010-03-11;<b>Administrative Gender</b>:female;</div>'
        # rubocop:enable Layout/LineLength
      }
    }.freeze

    SOARIAN_R4_MERGE ||= {
      "resourceType": 'Bundle',
      "id": '33db58d6-4a16-4987-8976-40793f9077af',
      "type": 'searchset',
      "timestamp": '2021-02-15T16:40:28-05:00',
      "entry": [
        {
          "fullUrl": 'https://fhir-myrecord-sc.cerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/Patient/0A1119CA2414486AAD618F5A2D25556B',
          "resource": {
            "resourceType": 'Patient',
            "id": '0A1119CA2414486AAD618F5A2D25556B',
            "active": false,
            "gender": 'unknown',
            "name": [
              {
                "extension": [
                  {
                    "url": 'http://hl7.org/fhir/StructureDefinition/data-absent-reason',
                    "valueCode": 'unknown'
                  }
                ]
              }
            ],
            "link": [
              {
                "other": {
                  "reference": 'Patient/3280623E3DD547CFA210B9E645748EEA'
                },
                "type": 'replaced-by'
              }
            ],
            "identifier": [
              {
                "extension": [
                  {
                    "url": 'http://hl7.org/fhir/StructureDefinition/data-absent-reason',
                    "valueCode": 'unknown'
                  }
                ]
              }
            ],
            "text": {
              "status": 'generated',
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Patient</b><br /><b>Status</b>:Inactive;</div>'
            }
          }
        }
      ],
      "link": [
        {
          "relation": 'self',
          "url": 'https://fhir-myrecord-sc.cerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/Patient?_id=0A1119CA2414486AAD618F5A2D25556B&_format=json'
        }
      ]
    }.freeze
  end
end
