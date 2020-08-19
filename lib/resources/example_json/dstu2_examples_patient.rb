# frozen_string_literal: true

module Cerner
  module Resources

    DSTU2_PATIENT_ENTRY ||= {
      'resourceType': 'Patient',
      'id': '12724067',
      'meta': {
        'versionId': '6',
        'lastUpdated': '2020-03-30T19:43:17.000Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div><p><b>Patient</b></p><p><b>Name</b>: SMART, JOE</p><p><b>DOB</b>: Apr 29, 1976</p>'\
               '<p><b>Administrative Gender</b>: Male</p><p><b>Marital Status</b>: Married</p><p><b>Status</b>: '\
               'Active</p></div>'
      },
      'extension': [
        {
          'url': 'http://fhir.org/guides/argonaut/StructureDefinition/argo-race',
          'extension': [
            {
              'url': 'ombCategory',
              'valueCoding': {
                'system': 'http://hl7.org/fhir/v3/Race',
                'code': '2106-3',
                'display': 'White',
                'userSelected': false
              }
            },
            {
              'url': 'detailed',
              'valueCoding': {
                'system': 'http://hl7.org/fhir/v3/Race',
                'code': '2106-3',
                'userSelected': false
              }
            },
            {
              'url': 'text',
              'valueString': 'White'
            }
          ]
        },
        {
          'url': 'http://fhir.org/guides/argonaut/StructureDefinition/argo-ethnicity',
          'extension': [
            {
              'url': 'ombCategory',
              'valueCoding': {
                'system': 'http://hl7.org/fhir/v3/Ethnicity',
                'code': '2186-5',
                'display': 'Not Hispanic or Latino',
                'userSelected': false
              }
            },
            {
              'url': 'detailed',
              'valueCoding': {
                'system': 'http://hl7.org/fhir/v3/Ethnicity',
                'code': '2186-5',
                'userSelected': false
              }
            },
            {
              'url': 'text',
              'valueString': 'Not Hispanic, Latino, or Spanish Origin'
            }
          ]
        }
      ],
      'identifier': [
        {
          'use': 'usual',
          'type': {
            'coding': [
              {
                'system': 'http://hl7.org/fhir/v2/0203',
                'code': 'MR',
                'display': 'Medical record number',
                'userSelected': false
              }
            ],
            'text': 'MRN'
          },
          'system': 'urn:oid:2.16.840.1.113883.6.1000',
          'value': '6931',
          '_value': {
            'extension': [
              {
                'url': 'http://hl7.org/fhir/StructureDefinition/rendered-value',
                'valueString': '00000006931'
              }
            ]
          },
          'period': {
            'start': '2019-12-26T15:14:12.000Z'
          }
        }
      ],
      'active': true,
      'name': [
        {
          'use': 'official',
          'text': 'SMART, JOE',
          'family': [
            'SMART'
          ],
          'given': [
            'JOE'
          ],
          'period': {
            'start': '2019-12-26T15:14:12.000Z'
          }
        }
      ],
      'telecom': [
        {
          'system': 'phone',
          'value': '8168888886',
          'use': 'home',
          'period': {
            'start': '2019-12-26T15:14:12.000Z'
          }
        }
      ],
      'gender': 'male',
      'birthDate': '1976-04-29',
      'deceasedBoolean': false,
      'address': [
        {
          'use': 'home',
          'text': '12345 Main St\nKansas city, MO 64116\nUS',
          'line': [
            '12345 Main St'
          ],
          'city': 'Kansas city',
          'district': 'Jackson',
          'state': 'MO',
          'postalCode': '64116',
          'country': 'US',
          'period': {
            'start': '2019-12-26T15:13:36.000Z'
          }
        }
      ],
      'maritalStatus': {
        'coding': [
          {
            'system': 'http://hl7.org/fhir/v3/MaritalStatus',
            'code': 'M',
            'display': 'Married',
            'userSelected': false
          }
        ],
        'text': 'Married'
      },
      'communication': [
        {
          'language': {
            'coding': [
              {
                'system': 'urn:ietf:bcp:47',
                'code': 'en',
                'display': 'English',
                'userSelected': false
              }
            ],
            'text': 'English'
          },
          'preferred': true
        }
      ],
      'careProvider': [
        {
          'reference': 'Practitioner/4122622',
          'display': 'Cerner Test, Physician - Hospitalist Cerner'
        }
      ]
    }.freeze

    DSTU2_COMBINED_PATIENT_ENTRY ||= {
      'resourceType': 'Patient',
      'id': '12742633',
      'meta': {
        'versionId': '0'
      },
      'text': {
        'status': 'generated',
        'div': '<div><p><b>Patient</b></p><p><b>Replaced By</b>: Patient/12724067</p>'\
               '<p><b>Status</b>: Inactive</p></div>'
      },
      'active': false,
      '_gender': {
        'extension': [
          {
            'url': 'http://hl7.org/fhir/StructureDefinition/data-absent-reason',
            'valueCode': 'unknown'
          }
        ]
      },
      'link': [
        {
          'other': {
            'reference': 'Patient/12724067'
          },
          'type': 'replace'
        }
      ]
    }.freeze

    DSTU2_PATIENT_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '917b3535-59c9-4b9d-b5bd-604eccb6aaee',
      'type': 'searchset',
      'total': 1,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Patient?_id=12724067'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Patient/12724067',
          'resource': DSTU2_PATIENT_ENTRY
        }
      ]
    }.freeze

    DSTU2_PATIENT_CREATE ||= {
      'resourceType': 'Patient',
      'identifier': [
        {
          'assigner': {
            'reference': 'Organization/685844'
          }
        }
      ],
      'active': true,
      'name': [
        {
          'use': 'official',
          'family': [
            'Wolf'
          ],
          'given': [
            'Person',
            'Name'
          ],
          'period': {
            'start': '2010-05-17T14:54:31.000Z'
          }
        },
        {
          'use': 'usual',
          'given': [
            'Bigby'
          ],
          'period': {
            'start': '2012-05-22T15:45:50.000Z'
          }
        }
      ],
      'telecom': [
        {
          'system': 'phone',
          'value': '8168229121',
          'use': 'home',
          'period': {
            'start': '2012-05-17T15:33:18.000Z'
          }
        }
      ],
      'gender': 'male',
      'birthDate': '1990-09-15',
      'address': [
        {
          'use': 'home',
          'line': [
            '121212 Metcalf Drive',
            'Apartment 403'
          ],
          'city': 'Kansas City',
          'district': 'Jackson',
          'state': 'KS',
          'postalCode': '64199',
          'country': 'United States of America',
          'period': {
            'start': '2012-05-17T15:33:18.000Z'
          }
        }
      ],
      'maritalStatus': {
        'coding': [
          {
            'system': 'http://hl7.org/fhir/v3/NullFlavor',
            'code': 'UNK',
            'display': 'Unknown'
          }
        ],
        'text': 'Unknown'
      },
      'communication': [
        {
          'language': {
            'coding': [
              {
                'system': 'urn:ietf:bcp:47',
                'code': 'en',
                'display': 'English'
              }
            ],
            'text': 'English'
          },
          'preferred': true
        }
      ],
      'careProvider': [
        {
          'reference': 'Practitioner/4122622'
        }
      ]
    }.freeze
  end
end
