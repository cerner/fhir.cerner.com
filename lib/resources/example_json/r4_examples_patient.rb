# frozen_string_literal: true

module Cerner
  module Resources

    R4_COMBINED_PATIENT_ENTRY ||= {
      'resourceType': 'Patient',
      'id': '12742633',
      'meta': {
        'versionId': '0'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Patient</b></p><p><b>Status</b>: Inactive</p>'\
               '<p><b>Replaced By</b>: Patient/12724067</p></div>'
      },
      'identifier': [
        {
          'extension': [
            {
              'valueCode': 'unknown',
              'url': 'http://hl7.org/fhir/StructureDefinition/data-absent-reason'
            }
          ]
        }
      ],
      'active': false,
      'name': [
        {
          'extension': [
            {
              'valueCode': 'unknown',
              'url': 'http://hl7.org/fhir/StructureDefinition/data-absent-reason'
            }
          ]
        }
      ],
      '_gender': {
        'extension': [
          {
            'valueCode': 'unknown',
            'url': 'http://hl7.org/fhir/StructureDefinition/data-absent-reason'
          }
        ]
      },
      'link': [
        {
          'other': {
            'reference': 'Patient/12724067'
          },
          'type': 'replaced-by'
        }
      ]
    }.freeze

    R4_PATIENT_ENTRY ||= {
      'resourceType': 'Patient',
      'id': '12724067',
      'meta': {
        'versionId': '10',
        'lastUpdated': '2020-07-06T21:21:22.000Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Patient</b></p><p><b>Name</b>: SMART, JOE</p>'\
               '<p><b>Status</b>: Active</p><p><b>DOB</b>: Apr 29, 1976</p><p><b>Administrative Gender</b>: Male</p>'\
               '<p><b>Marital Status</b>: Married</p></div>'
      },
      'extension': [
        {
          'extension': [
            {
              'valueCoding': {
                'system': 'urn:oid:2.16.840.1.113883.6.238',
                'code': '2106-3',
                'display': 'White',
                'userSelected': false
              },
              'url': 'ombCategory'
            },
            {
              'valueString': 'White',
              'url': 'text'
            }
          ],
          'url': 'http://hl7.org/fhir/us/core/StructureDefinition/us-core-race'
        },
        {
          'extension': [
            {
              'valueCoding': {
                'system': 'urn:oid:2.16.840.1.113883.6.238',
                'code': '2186-5',
                'display': 'Non Hispanic or Latino',
                'userSelected': false
              },
              'url': 'ombCategory'
            },
            {
              'valueString': 'Not Hispanic, Latino, or Spanish Origin',
              'url': 'text'
            }
          ],
          'url': 'http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity'
        }
      ],
      'identifier': [
        {
          'id': 'CI-490016886-0',
          'use': 'usual',
          'type': {
            'coding': [
              {
                'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4',
                'code': '10',
                'display': 'MRN',
                'userSelected': true
              },
              {
                'system': 'http://terminology.hl7.org/CodeSystem/v2-0203',
                'code': 'MR',
                'display': 'Medical record number',
                'userSelected': false
              }
            ],
            'text': 'MRN'
          },
          'system': 'urn:oid:2.16.840.1.113883.6.1000',
          'value': '6931',
          'period': {
            'start': '2019-12-26T15:14:12.000Z'
          }
        },
        {
          'id': 'CI-490058771-1',
          'use': 'usual',
          'type': {
            'coding': [
              {
                'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4',
                'code': '10',
                'display': 'MRN',
                'userSelected': true
              },
              {
                'system': 'http://terminology.hl7.org/CodeSystem/v2-0203',
                'code': 'MR',
                'display': 'Medical record number',
                'userSelected': false
              }
            ],
            'text': 'MRN'
          },
          'system': 'urn:oid:2.16.840.1.113883.6.1000',
          'value': '6978',
          'period': {
            'end': '2020-07-06T21:21:25.000Z'
          }
        },
        {
          'id': 'CI-490059574-3',
          'use': 'usual',
          'type': {
            'coding': [
              {
                'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4',
                'code': '670843',
                'display': 'Messaging',
                'userSelected': true
              },
              {
                'system': 'http://terminology.hl7.org/CodeSystem/v2-0203',
                'code': 'U',
                'display': 'Unspecified identifier',
                'userSelected': false
              }
            ],
            'text': 'Messaging'
          },
          '_system': {
            'extension': [
              {
                'valueCode': 'unknown',
                'url': 'http://hl7.org/fhir/StructureDefinition/data-absent-reason'
              }
            ]
          },
          'value': '3C36293A3B964994AD8E6C0305F3330A',
          'period': {
            'start': '2020-06-30T20:08:26.000Z'
          }
        },
        {
          'id': 'CI-490058805-4',
          'use': 'usual',
          'type': {
            'coding': [
              {
                'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4',
                'code': '670843',
                'display': 'Messaging',
                'userSelected': true
              },
              {
                'system': 'http://terminology.hl7.org/CodeSystem/v2-0203',
                'code': 'U',
                'display': 'Unspecified identifier',
                'userSelected': false
              }
            ],
            'text': 'Messaging'
          },
          '_system': {
            'extension': [
              {
                'valueCode': 'unknown',
                'url': 'http://hl7.org/fhir/StructureDefinition/data-absent-reason'
              }
            ]
          },
          'value': '43DA797A657B47548F258A9B50EB41F5',
          'period': {
            'start': '2020-06-12T16:03:32.000Z'
          }
        },
        {
          'id': 'CI-490059570-5',
          'use': 'usual',
          'type': {
            'coding': [
              {
                'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4',
                'code': '2553236771',
                'display': 'Federated Person Principal',
                'userSelected': true
              },
              {
                'system': 'http://terminology.hl7.org/CodeSystem/v2-0203',
                'code': 'AN',
                'display': 'Account number',
                'userSelected': false
              }
            ],
            'text': 'Federated Person Principal'
          },
          'system': 'urn:oid:2.16.840.1.113883.3.13.6',
          'value': 'URN:CERNER:IDENTITY-FEDERATION:REALM:E8A84236-C258-4952-98B7-A6FF8A9C587A-CH:PRINCIPAL:'\
                   'AN7TD9A62CV8Z53Z',
          'period': {
            'start': '2020-06-30T20:08:25.000Z'
          }
        },
        {
          'id': 'CI-490058801-6',
          'use': 'usual',
          'type': {
            'coding': [
              {
                'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4',
                'code': '2553236771',
                'display': 'Federated Person Principal',
                'userSelected': true
              },
              {
                'system': 'http://terminology.hl7.org/CodeSystem/v2-0203',
                'code': 'AN',
                'display': 'Account number',
                'userSelected': false
              }
            ],
            'text': 'Federated Person Principal'
          },
          'system': 'urn:oid:2.16.840.1.113883.3.13.6',
          'value': 'URN:CERNER:IDENTITY-FEDERATION:REALM:E8A84236-C258-4952-98B7-A6FF8A9C587A-CH:PRINCIPAL:'\
                   'KR8KC9MI9EQ8KC23',
          'period': {
            'start': '2020-06-12T16:03:29.000Z'
          }
        }
      ],
      'active': true,
      'name': [
        {
          'id': 'CI-12724067-0',
          'use': 'official',
          'text': 'SMART, JOE',
          'family': 'SMART',
          'given': [
            'JOE'
          ],
          'period': {
            'start': '2019-12-26T15:14:12.000Z'
          }
        },
        {
          'id': 'CI-490059796-0',
          'use': 'old',
          'text': 'SMART, STEPHEN ALLEN',
          'family': 'SMART',
          'given': [
            'STEPHEN',
            'ALLEN'
          ],
          'period': {
            'end': '2020-07-06T21:21:26.000Z'
          }
        }
      ],
      'telecom': [
        {
          'id': 'CI-PH-29811920-0',
          'system': 'phone',
          'value': '8168888886',
          'use': 'home',
          'rank': '1',
          'period': {
            'start': '2019-12-26T15:14:12.000Z'
          }
        },
        {
          'id': 'CI-EM-29822662-0',
          'system': 'email',
          'value': 'joesmart@yopmail.com',
          'use': 'home',
          'rank': '1',
          'period': {
            'start': '2020-03-30T19:31:11.000Z'
          }
        }
      ],
      'gender': 'male',
      'birthDate': '1976-04-29',
      'deceasedBoolean': false,
      'address': [
        {
          'id': 'CI-24313553-0',
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
            'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/38',
            'code': '309237',
            'display': 'Married',
            'userSelected': true
          },
          {
            'system': 'http://terminology.hl7.org/CodeSystem/v3-MaritalStatus',
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
                'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/36',
                'code': '151',
                'display': 'English',
                'userSelected': true
              },
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
      'generalPractitioner': [
        {
          'id': 'CI-490017023-0',
          'reference': 'Practitioner/4122622',
          'display': 'Cerner Test, Physician - Hospitalist Cerner'
        }
      ]
    }.freeze

    R4_PATIENT_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': 'b8e08a98-849f-4544-9fa8-985aa445e31b',
      'type': 'searchset',
      'total': 1,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Patient?_id=12724067'
        }
      ],
      'entry': [
        'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Patient/12724067',
        'resource': R4_PATIENT_ENTRY
      ]
    }.freeze

    R4_PATIENT_CREATE ||= {
      'resourceType': 'Patient',
      'extension': [
        {
          'url': 'http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex',
          'valueCode': 'M'
        },
        {
          'url': 'http://hl7.org/fhir/us/core/StructureDefinition/us-core-race',
          'extension': [
            {
              'url': 'ombCategory',
              'valueCoding': {
                'system': 'urn:oid:2.16.840.1.113883.6.238',
                'code': '2028-9',
                'display': 'Asian'
              }
            },
            {
              'url': 'detailed',
              'valueCoding': {
                'system': 'urn:oid:2.16.840.1.113883.6.238',
                'code': '2039-6',
                'display': 'Japanese'
              }
            }
          ]
        },
        {
          'url': 'http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity',
          'extension': [
            {
              'url': 'ombCategory',
              'valueCoding': {
                'system': 'urn:oid:2.16.840.1.113883.6.238',
                'code': '2186-5',
                'display': 'Non Hispanic or Latino'
              }
            }
          ]
        }
      ],
      'identifier': [
        {
          'assigner': {
            'reference': 'Organization/675844'
          }
        }
      ],
      'active': true,
      'name': [
        {
          'use': 'official',
          'family': 'Wolf',
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
            'system': 'http://terminology.hl7.org/CodeSystem/v3-NullFlavor',
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
      'generalPractitioner': [
        {
          'reference': 'Practitioner/4122622'
        }
      ]
    }.freeze

    R4_PATIENT_PATCH ||= [
      {
        'op': 'add',
        'path': '/identifier/-',
        'value': {
          'type': {
            'coding': [
              {
                'code': 'MR',
                'system': 'http://hl7.org/fhir/v2/0203'
              }
            ]
          },
          'system': '2.16.840.1.113883.6.1000',
          'value': 'THIS:IS:A:UNIQUE:IDENTIFIER',
          'period': {
            'start': '2018-01-02T00:00:00-05:00',
            'end': '2022-01-02T00:00:00-05:00'
          }
        }
      },
      {
        'path': '/name/0/id',
        'op': 'test',
        'value': 'CI-12724067-0'
      },
      {
        'path': '/name/0/given',
        'op': 'replace',
        'value': [
          'Joe',
          'Smarty'
        ]
      },
      {
        'path': '/telecom/0/id',
        'op': 'test',
        'value': 'CI-PH-29811920-0'
      },
      {
        'path': '/telecom/0',
        'op': 'remove'
      },
      {
        'path': '/maritalStatus',
        'op': 'replace',
        'value': {
          'coding': [
            {
              'system': 'http://terminology.hl7.org/CodeSystem/v3-MaritalStatus',
              'code': 'D'
            }
          ]
        }
      },
      {
        'path': '/communication',
        'op': 'replace',
        'value': [
          {
            'language': {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/36',
                  'code': '151'
                }
              ]
            },
            'preferred': true
          }
        ]
      },
      {
        'path': '/extension',
        'op': 'replace',
        'value': [
          {
            'url': 'http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex',
            'valueCode': 'M'
          },
          {
            'url': 'http://hl7.org/fhir/us/core/StructureDefinition/us-core-race',
            'extension': [
              {
                'url': 'ombCategory',
                'valueCoding': {
                  'system': 'urn:oid:2.16.840.1.113883.6.238',
                  'code': '2106-3',
                  'display': 'White'
                }
              },
              {
                'url': 'detailed',
                'valueCoding': {
                  'system': 'urn:oid:2.16.840.1.113883.6.238',
                  'code': '2110-5',
                  'display': 'English'
                }
              }
            ]
          },
          {
            'url': 'http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity',
            'extension': [
              {
                'url': 'ombCategory',
                'valueCoding': {
                  'system': 'urn:oid:2.16.840.1.113883.6.238',
                  'code': '2135-2',
                  'display': 'Hispanic or Latino'
                }
              },
              {
                'url': 'detailed',
                'valueCoding': {
                  'system': 'urn:oid:2.16.840.1.113883.6.238',
                  'code': '2156-8',
                  'display': 'Costa Rican'
                }
              }
            ]
          }
        ]
      }
    ].freeze
  end
end
