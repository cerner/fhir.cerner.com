# frozen_string_literal: true

module Cerner
  module Resources

    R4_RELATEDPERSON_ENTRY ||= {
      'resourceType': 'RelatedPerson',
      'id': '12724068-12724066',
      'meta': {
        'versionId': 6,
        'lastUpdated': '2020-06-30T20:26:39.000Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Related Person</b></p><p><b>Name</b>: SMART, HAILEY'\
               '</p><p><b>DOB</b>: Dec  2, 2003</p><p><b>Gender</b>: female</p><p><b>Patient</b>: SMART, NANCY</p>'\
               '<p><b>Status</b>: Active</p><p><b>Relationship</b>: Family Member</p>'\
               '<p><b>Relationship Level</b>: Patient</p></div>'
      },
      'extension': [
        {
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/relationship-level',
          'valueCodeableConcept': {
            'coding': [
              {
                'system': 'http://hl7.org/fhir/resource-types',
                'code': 'Patient',
                'display': 'Patient'
              }
            ],
            'text': 'Patient'
          }
        }
      ],
      'identifier': [
        {
          'id': 'CI-490068357-1',
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
                   '332TE8FP7VD3RT4C',
          'period': {
            'start': '2020-06-30T20:26:38.000Z'
          }
        }
      ],
      'active': true,
      'patient': {
        'reference': 'Patient/12724066',
        'display': 'SMART, NANCY'
      },
      'relationship': [
        {
          'id': 'CI-490017058-0-0',
          'coding': [
            {
              'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/351',
              'code': '1153',
              'display': 'Family Member',
              'userSelected': true
            },
            {
              'system': 'http://terminology.hl7.org/CodeSystem/v3-RoleCode',
              'code': 'FAMMEMB',
              'display': 'family member',
              'userSelected': false
            }
          ],
          'text': 'Family Member'
        }
      ],
      'name': [
        {
          'id': 'CI-12724068-0',
          'use': 'official',
          'text': 'SMART, HAILEY',
          'family': 'SMART',
          'given': [
            'HAILEY'
          ],
          'period': {
            'start': '2019-12-26T15:15:35.000Z'
          }
        }
      ],
      'telecom': [
        {
          'id': 'CI-PH-29811922-0',
          'system': 'phone',
          'value': '8168888886',
          'use': 'home',
          'period': {
            'start': '2019-12-26T15:15:35.000Z'
          }
        },
        {
          'id': 'CI-EM-29822897-0',
          'system': 'email',
          'value': 'haileysmart@yopmail.com',
          'use': 'home',
          'period': {
            'start': '2020-06-30T19:56:19.000Z'
          }
        }
      ],
      'gender': 'female',
      'birthDate': '2003-12-02',
      'address': [
        {
          'id': 'CI-24313555-0',
          'use': 'home',
          'text': '12345 Main St\nKansas City, MO 64116\nUS',
          'line': [
            '12345 Main St'
          ],
          'city': 'Kansas City',
          'district': 'Jackson',
          'state': 'MO',
          'postalCode': '64116',
          'country': 'US',
          'period': {
            'start': '2019-12-26T15:15:03.000Z'
          }
        }
      ],
      'communication': [
        {
          'preferred': 'true',
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
          }
        }
      ]
    }.freeze

    R4_RELATEDPERSON_ENTRY_PATIENT_ACCESS ||= {
      'resourceType': 'RelatedPerson',
      'id': '170778458-166045489',
      'meta': {
        'versionId': 31,
        'lastUpdated': '2020-10-09T07:29:32.000Z'
      },
      'text': {
        'status': 'extensions',
        'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Related Person</b></p><p>'\
        '<b>Name</b>: MARSTON, Dutch</p><p><b>DOB</b>: Apr 13, 1990</p><p><b>Gender</b>: male</p>'\
        '<p><b>Patient</b>: MARSTON, JACK</p><p><b>Status</b>: Active</p>'\
        '<p><b>Relationship Level</b>: Patient</p></div>'
      },
      'extension': [
        {
          'valueCodeableConcept': {
            'coding': [
              {
                'system': 'http://hl7.org/fhir/resource-types',
                'code': 'Patient',
                'display': 'Patient'
              }
            ],
            'text': 'Patient'
          },
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/relationship-level'
        }
      ],
      'identifier': [
        {
          'id': 'CI-60184890-0',
          'use': 'usual',
          'type': {
            'coding': [
              {
                'system': 'https://fhir-ehr.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4',
                'code': '80979357',
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
          'value': 'URN:CERNER:IDENTITY-FEDERATION:REALM:AC193C1A-9763-45E1-9FA2-C1C3AA4BA16D:PRINCIPAL'\
          ':BS9PK8RX6RS9CY5Y',
          'period': {
            'start': '2020-08-26T14:56:41.000Z'
          }
        }
      ],
      'active': true,
      'patient': {
        'reference': 'Patient/166045489',
        'display': 'MARSTON, JACK'
      },
      'name': [
        {
          'id': 'CI-170778458-0',
          'use': 'official',
          'text': 'MARSTON, Dutch',
          'family': 'MARSTON',
          'given': [
            'Dutch'
          ],
          'period': {
            'start': '2020-08-26T14:44:08.000Z'
          }
        }
      ],
      'telecom': [
        {
          'id': 'CI-EM-43565450-0',
          'system': 'email',
          'value': 'kaishwaryaramesh@gmail.com',
          'use': 'home',
          'period': {
            'start': '2020-10-09T07:29:32.000Z'
          }
        },
        {
          'id': 'CI-EM-42203920-1',
          'system': 'email',
          'value': 'abigail.testpatient@gmail.com',
          'use': 'home',
          'period': {
            'start': '2020-08-26T14:45:59.000Z'
          }
        },
        {
          'id': 'CI-EM-42213451-2',
          'system': 'email',
          'value': 'abigail.testpatient@gmail.com',
          'use': 'home',
          'period': {
            'start': '2020-08-26T16:47:31.000Z'
          }
        },
        {
          'id': 'CI-EM-42261446-3',
          'system': 'email',
          'value': 'abigail.testpatient@gmail.com',
          'use': 'home',
          'period': {
            'start': '2020-08-27T20:27:31.000Z'
          }
        },
        {
          'id': 'CI-EM-42287446-4',
          'system': 'email',
          'value': 'abigail.testpatient@gmail.com',
          'use': 'home',
          'period': {
            'start': '2020-08-28T15:24:19.000Z'
          }
        },
        {
          'id': 'CI-EM-42351584-5',
          'system': 'email',
          'value': 'abigail.testpatient@gmail.com',
          'use': 'home',
          'period': {
            'start': '2020-08-31T15:16:18.000Z'
          }
        },
        {
          'id': 'CI-EM-42848090-6',
          'system': 'email',
          'value': 'abigail.testpatient@gmail.com',
          'use': 'home',
          'period': {
            'start': '2020-09-10T20:41:05.000Z'
          }
        },
        {
          'id': 'CI-EM-42871299-7',
          'system': 'email',
          'value': 'abigail.testpatient@gmail.com',
          'use': 'home',
          'period': {
            'start': '2020-09-11T15:52:04.000Z'
          }
        }
      ],
      'gender': 'male',
      'birthDate': '1990-04-13'
    }.freeze

    R4_RELATEDPERSON_ENCOUNTER_ENTRY ||= {
      'resourceType': 'RelatedPerson',
      'id': 'E-12457994-97697434',
      'meta': {
        'versionId': '21',
        'lastUpdated': '2018-10-30T14:17:47.000Z'
      },
      'text': {
        'status': 'extensions',
        'div': '<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Related Person</b></p><p><b>Name</b>'\
               ': MATERNITY, TESTTHREE</p><p><b>DOB</b>: Jun 20, 1987</p><p><b>Gender</b>: female</p><p><b>Patient</b>'\
               ': NEWBORN, TESTTHREE</p><p><b>Status</b>: Active</p><p><b>Relationship</b>: Default Guarantor</p><p>'\
               '<b>Relationship</b>: Child</p><p><b>Relationship Level</b>: Encounter</p><p><b>Encounter</b>: 97697434'\
               '</p></div>'
      },
      'extension': [
        {
          'valueReference': {
            'reference': 'Encounter/97697434'
          },
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/related-person-encounter'
        },
        {
          'valueCodeableConcept': {
            'coding': [
              {
                'system': 'http://hl7.org/fhir/resource-types',
                'code': 'Encounter',
                'display': 'Encounter'
              }
            ],
            'text': 'Encounter'
          },
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/relationship-level'
        }
      ],
      'active': true,
      'patient': {
        'reference': 'Patient/12457995',
        'display': 'NEWBORN, TESTTHREE'
      },
      'relationship': [
        {
          'id': 'CI-97982588-0-0',
          'coding': [
            {
              'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/351',
              'code': '1150',
              'display': 'Default Guarantor',
              'userSelected': true
            },
            {
              'system': 'http://terminology.hl7.org/CodeSystem/v3-RoleCode',
              'code': 'GT',
              'display': 'Guarantor',
              'userSelected': false
            }
          ],
          'text': 'Default Guarantor'
        },
        {
          'id': 'CI-97982588-1-0',
          'coding': [
            {
              'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/40',
              'code': '670847',
              'display': 'Child',
              'userSelected': true
            },
            {
              'system': 'http://terminology.hl7.org/CodeSystem/v3-RoleCode',
              'code': 'CHILD',
              'display': 'child',
              'userSelected': false
            }
          ],
          'text': 'Child'
        }
      ],
      'name': [
        {
          'id': 'CI-12457994-0',
          'use': 'official',
          'text': 'MATERNITY, TESTTHREE',
          'family': 'MATERNITY',
          'given': [
            'TESTTHREE'
          ],
          'period': {
            'start': '2016-12-08T21:28:22.000Z'
          }
        }
      ],
      'telecom': [
        {
          'id': 'CI-PH-29583893-0',
          'system': 'phone',
          'value': '4264758753',
          'use': 'home',
          'period': {
            'start': '2016-12-08T21:28:22.000Z'
          }
        }
      ],
      'gender': 'female',
      'birthDate': '1987-06-20',
      'address': [
        {
          'id': 'CI-24079465-0',
          'use': 'home',
          'text': "3343 Genessee St\nKansas City, MO 64111\nUS",
          'line': [
            '3343 Genessee St'
          ],
          'city': 'Kansas City',
          'state': 'MO',
          'postalCode': '64111',
          'country': 'US',
          'period': {
            'start': '2016-12-08T21:05:59.000Z'
          }
        }
      ],
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
          'preferred': 'true'
        }
      ]
    }.freeze

    R4_RELATEDPERSON_ENCOUNTER_ENTRY_PATIENT_ACCESS ||= {
      'resourceType': 'RelatedPerson',
      'id': 'E-173417344-51678301',
      'meta': {
        'versionId': '0',
        'lastUpdated': '2020-09-17T14:10:03.000Z'
      },
      'text': {
        'status': 'extensions',
        'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Related Person</b></p>'\
        '<p><b>Name</b>: Li, Mike</p><p><b>DOB</b>: Dec 10, 1994</p>\'
        <p><b>Gender</b>: male</p><p><b>Patient</b>: MARSTON, JACK</p>'\
        '<p><b>Status</b>: Active</p><p><b>Relationship</b>: Guardian</p>'\
        '<p><b>Relationship</b>: Unknown</p><p><b>Relationship Level</b>: Encounter</p>'\
        '<p><b>Encounter</b>: 51678301</p></div>'
      },
      'extension': [
        {
          'valueReference': {
            'reference': 'Encounter/51678301'
          },
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/related-person-encounter'
        },
        {
          'valueCodeableConcept': {
            'coding': [
              {
                'system': 'http://hl7.org/fhir/resource-types',
                'code': 'Encounter',
                'display': 'Encounter'
              }
            ],
            'text': 'Encounter'
          },
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/relationship-level'
        }
      ],
      'active': true,
      'patient': {
        'reference': 'Patient/166045489',
        'display': 'MARSTON, JACK'
      },
      'relationship': [
        {
          'id': 'CI-58863376-0-0',
          'coding': [
            {
              'system': 'https://fhir-ehr.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/351',
              'code': '1156',
              'display': 'Guardian',
              'userSelected': true
            }
          ],
          'text': 'Guardian'
        },
        {
          'id': 'CI-58863376-1-0',
          'coding': [
            {
              'system': 'https://fhir-ehr.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/40',
              'code': '670861',
              'display': 'Unknown',
              'userSelected': true
            },
            {
              'system': 'http://terminology.hl7.org/CodeSystem/v2-0131',
              'code': 'U',
              'display': 'Unknown',
              'userSelected': false
            }
          ],
          'text': 'Unknown'
        }
      ],
      'name': [
        {
          'id': 'CI-173417344-0',
          'use': 'official',
          'text': 'Li, Mike',
          'family': 'Li',
          'given': [
            'Mike'
          ],
          'period': {
            'start': '2020-09-17T14:10:03.000Z'
          }
        }
      ],
      'telecom': [
        {
          'id': 'CI-EM-42995448-0',
          'system': 'email',
          'value': 'zonglin.li@cerner.com',
          'use': 'home',
          'period': {
            'start': '2020-08-25T17:44:43.000Z'
          }
        }
      ],
      'gender': 'male',
      'birthDate': '1994-12-10'
    }.freeze

    R4_RELATEDPERSON_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '106abf01-6358-44d4-8f66-37526caa6ab4',
      'type': 'searchset',
      'total': 2,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/RelatedPerson?patient=12724066'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/RelatedPerson/12724068-12724066',
          'resource': R4_RELATEDPERSON_ENTRY
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/RelatedPerson/12724069-12724066',
          'resource': {
            'resourceType': 'RelatedPerson',
            'id': '12724069-12724066',
            'meta': {
              'versionId': 8,
              'lastUpdated': '2020-07-06T17:03:43.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Related Person</b></p><p><b>Name</b>: '\
                     'SMART, TIMMY</p><p><b>DOB</b>: Feb 19, 2012</p><p><b>Gender</b>: male</p><p><b>Patient</b>: '\
                     'SMART, NANCY</p><p><b>Status</b>: Active</p><p><b>Relationship</b>: Family Member</p>'\
                     '<p><b>Relationship Level</b>: Patient</p></div>'
            },
            'extension': [
              {
                'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/relationship-level',
                'valueCodeableConcept': {
                  'coding': [
                    {
                      'system': 'http://hl7.org/fhir/resource-types',
                      'code': 'Patient',
                      'display': 'Patient'
                    }
                  ],
                  'text': 'Patient'
                }
              }
            ],
            'active': true,
            'patient': {
              'reference': 'Patient/12724066',
              'display': 'SMART, NANCY'
            },
            'relationship': [
              {
                'id': 'CI-490068375-0-0',
                'coding': [
                  {
                    'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/351',
                    'code': '1153',
                    'display': 'Family Member',
                    'userSelected': true
                  },
                  {
                    'system': 'http://terminology.hl7.org/CodeSystem/v3-RoleCode',
                    'code': 'FAMMEMB',
                    'display': 'family member',
                    'userSelected': false
                  }
                ],
                'text': 'Family Member'
              }
            ],
            'name': [
              {
                'id': 'CI-12724069-0',
                'use': 'official',
                'text': 'SMART, TIMMY',
                'family': 'SMART',
                'given': [
                  'TIMMY'
                ],
                'period': {
                  'start': '2019-12-26T15:17:05.000Z'
                }
              }
            ],
            'telecom': [
              {
                'id': 'CI-PH-29811924-0',
                'system': 'phone',
                'value': '8168888886',
                'use': 'home',
                'period': {
                  'start': '2019-12-26T15:17:05.000Z'
                }
              },
              {
                'id': 'CI-EM-29822901-0',
                'system': 'email',
                'value': 'timmysmart@yopmail.com',
                'use': 'home',
                'period': {
                  'start': '2020-06-30T20:41:33.000Z'
                }
              }
            ],
            'gender': 'male',
            'birthDate': '2012-02-19',
            'address': [
              {
                'id': 'CI-24313557-0',
                'use': 'home',
                'text': '12345 Main St\nKansas City, MO 64116\nUS',
                'line': [
                  '12345 Main St'
                ],
                'city': 'Kansas City',
                'district': 'Jackson',
                'state': 'MO',
                'postalCode': '64116',
                'country': 'US',
                'period': {
                  'start': '2019-12-26T15:16:36.000Z'
                }
              }
            ],
            'communication': [
              {
                'preferred': 'true',
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
                }
              }
            ]
          }
        }
      ]
    }.freeze

    R4_RELATEDPERSON_BUNDLE_PATIENT_ACCESS ||= {
      'resourceType': 'Bundle',
      'id': 'f43050ff-10b5-4b41-83f1-305cf07b9d1f',
      'type': 'searchset',
      'total': 10,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/RelatedPerson?patient=166045489'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/RelatedPerson/166624790-166045489',
          'resource': {
            'resourceType': 'RelatedPerson',
            'id': '166624790-166045489',
            'meta': {
              'versionId': 3,
              'lastUpdated': '2020-07-21T13:50:47.000Z'
            },
            'text': {
              'status': 'extensions',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Related Person</b></p>'\
              '<p><b>Name</b>: Marston, Joe</p><p><b>DOB</b>: Jun 17, 1950</p><p>'\
              '<b>Gender</b>: male</p><p><b>Patient</b>: MARSTON, JACK</p><p>'\
              '<b>Status</b>: Active</p><p><b>Relationship</b>: Authorized Representative</p>'\
              '<p><b>Relationship</b>: Father</p><p><b>Relationship</b>: Family Member</p>'\
              '<p><b>Relationship Level</b>: Patient</p></div>'
            },
            'extension': [
              {
                'valueCodeableConcept': {
                  'coding': [
                    {
                      'system': 'http://hl7.org/fhir/resource-types',
                      'code': 'Patient',
                      'display': 'Patient'
                    }
                  ],
                  'text': 'Patient'
                },
                'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/relationship-level'
              }
            ],
            'identifier': [
              {
                'id': 'CI-59302419-0',
                'use': 'usual',
                'type': {
                  'coding': [
                    {
                      'system': 'https://fhir-ehr.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4',
                      'code': '80979357',
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
                'value': 'URN:CERNER:IDENTITY-FEDERATION:REALM:AC193C1A-9763-45E1-9FA2-C1C3AA4BA16D:'\
                'PRINCIPAL:DP4JS8KI7JQ2MQ5W',
                'period': {
                  'start': '2020-07-21T13:50:43.000Z'
                }
              }
            ],
            'active': true,
            'patient': {
              'reference': 'Patient/166045489',
              'display': 'MARSTON, JACK'
            },
            'relationship': [
              {
                'id': 'CI-59302320-0-0',
                'coding': [
                  {
                    'system': 'https://fhir-ehr.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/351',
                    'code': '83266815',
                    'display': 'Authorized Representative',
                    'userSelected': true
                  }
                ],
                'text': 'Authorized Representative'
              },
              {
                'id': 'CI-59302320-1-0',
                'coding': [
                  {
                    'system': 'https://fhir-ehr.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/40',
                    'code': '155',
                    'display': 'Father',
                    'userSelected': true
                  },
                  {
                    'system': 'http://terminology.hl7.org/CodeSystem/v3-RoleCode',
                    'code': 'FTH',
                    'display': 'father',
                    'userSelected': false
                  }
                ],
                'text': 'Father'
              },
              {
                'id': 'CI-59302323-0-1',
                'coding': [
                  {
                    'system': 'https://fhir-ehr.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/351',
                    'code': '1153',
                    'display': 'Family Member',
                    'userSelected': true
                  },
                  {
                    'system': 'http://terminology.hl7.org/CodeSystem/v3-RoleCode',
                    'code': 'FAMMEMB',
                    'display': 'family member',
                    'userSelected': false
                  }
                ],
                'text': 'Family Member'
              }
            ],
            'name': [
              {
                'id': 'CI-166624790-0',
                'use': 'official',
                'text': 'Marston, Joe',
                'family': 'Marston',
                'given': [
                  'Joe'
                ],
                'period': {
                  'start': '2020-07-21T13:47:07.000Z'
                }
              }
            ],
            'telecom': [
              {
                'id': 'CI-EM-41245834-0',
                'system': 'email',
                'value': 'justbrittany@gmail.com',
                'use': 'home',
                'period': {
                  'start': '2020-07-21T13:35:28.000Z'
                }
              }
            ],
            'gender': 'male',
            'birthDate': '1950-06-17'
          }
        },
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/RelatedPerson/170778458-166045489',
          'resource': R4_RELATEDPERSON_ENTRY_PATIENT_ACCESS
        },
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/RelatedPerson/170788641-166045489',
          'resource': {
            'resourceType': 'RelatedPerson',
            'id': '170788641-166045489',
            'meta': {
              'versionId': 0,
              'lastUpdated': '2020-08-26T15:37:04.000Z'
            },
            'text': {
              'status': 'extensions',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Related Person</b></p>'\
              '<p><b>Name</b>: Li, Mike</p><p><b>DOB</b>: Dec 10, 1994</p>'\
              '<p><b>Gender</b>: male</p><p><b>Patient</b>: MARSTON, JACK</p>'\
              '<p><b>Status</b>: Active</p><p><b>Relationship</b>: Authorized Representative</p>'\
              '<p><b>Relationship</b>: Family Member</p><p><b>Relationship</b>: Guardian</p>'\
              '<p><b>Relationship</b>: Unknown</p><p><b>Relationship Level</b>: Patient</p></div>'
            },
            'extension': [
              {
                'valueCodeableConcept': {
                  'coding': [
                    {
                      'system': 'http://hl7.org/fhir/resource-types',
                      'code': 'Patient',
                      'display': 'Patient'
                    }
                  ],
                  'text': 'Patient'
                },
                'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/relationship-level'
              }
            ],
            'active': true,
            'patient': {
              'reference': 'Patient/166045489',
              'display': 'MARSTON, JACK'
            },
            'relationship': [
              {
                'id': 'CI-60188027-0-0',
                'coding': [
                  {
                    'system': 'https://fhir-ehr.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/351',
                    'code': '83266815',
                    'display': 'Authorized Representative',
                    'userSelected': true
                  }
                ],
                'text': 'Authorized Representative'
              },
              {
                'id': 'CI-60187332-0-1',
                'coding': [
                  {
                    'system': 'https://fhir-ehr.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/351',
                    'code': '1153',
                    'display': 'Family Member',
                    'userSelected': true
                  },
                  {
                    'system': 'http://terminology.hl7.org/CodeSystem/v3-RoleCode',
                    'code': 'FAMMEMB',
                    'display': 'family member',
                    'userSelected': false
                  }
                ],
                'text': 'Family Member'
              },
              {
                'id': 'CI-60187327-0-2',
                'coding': [
                  {
                    'system': 'https://fhir-ehr.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/351',
                    'code': '1156',
                    'display': 'Guardian',
                    'userSelected': true
                  }
                ],
                'text': 'Guardian'
              },
              {
                'id': 'CI-60187327-1-2',
                'coding': [
                  {
                    'system': 'https://fhir-ehr.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/40',
                    'code': '670861',
                    'display': 'Unknown',
                    'userSelected': true
                  },
                  {
                    'system': 'http://terminology.hl7.org/CodeSystem/v2-0131',
                    'code': 'U',
                    'display': 'Unknown',
                    'userSelected': false
                  }
                ],
                'text': 'Unknown'
              }
            ],
            'name': [
              {
                'id': 'CI-170788641-0',
                'use': 'official',
                'text': 'Li, Mike',
                'family': 'Li',
                'given': [
                  'Mike'
                ],
                'period': {
                  'start': '2020-08-26T15:37:05.000Z'
                }
              }
            ],
            'telecom': [
              {
                'id': 'CI-EM-42207446-0',
                'system': 'email',
                'value': 'zonglin.li@cerner.com',
                'use': 'home',
                'period': {
                  'start': '2020-08-25T17:44:43.000Z'
                }
              }
            ],
            'gender': 'male',
            'birthDate': '1994-12-10'
          }
        }
      ]
    }.freeze

    R4_RELATEDPERSON_CREATE ||= {

      'resourceType': 'RelatedPerson',
      'extension': [
        {
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/related-person-encounter',
          'valueReference': {
            'reference': 'Encounter/97939518'
          }
        },
        {
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/relationship-level',
          'valueCodeableConcept': {
            'coding': [
              {
                'system': 'http://hl7.org/fhir/resource-types',
                'code': 'Encounter'
              }
            ]
          }
        }
      ],
      'patient': {
        'reference': 'Patient/12724066'
      },
      'relationship': [
        {
          'coding': [
            {
              'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/351',
              'code': '1152',
              'display': 'Emergency Contact'
            }
          ]
        }
      ],
      'name': [
        {
          'use': 'official',
          'family': 'Doe',
          'given': [
            'John',
            'Smith'
          ],
          'period': {
            'start': '2010-05-17T14:54:31.000Z'
          }
        }
      ],
      'communication': [
        {
          'language': {
            'coding': [
              {
                'system': 'urn:ietf:bcp:47',
                'code': 'en',
                'display': 'English'
              }
            ]
          },
          'preferred': true
        }
      ],
      'identifier': [
        {
          'type': {
            'coding': [
              {
                'code': 'AN',
                'system': 'http://terminology.hl7.org/CodeSystem/v2-0203'
              }
            ]
          },
          'system': 'urn:oid:5.5.5.5.5.5',
          'value': '<UNIQUE IDENTIFIER>',
          'period': {
            'start': '2016-01-02T00:00:00-05:00',
            'end': '2020-01-02T00:00:00-05:00'
          }
        }
      ],
      'address': [
        {
          'use': 'home',
          'line': [
            '1212 Faircastle Drive',
            'Apartment 406'
          ],
          'city': 'KC',
          'district': 'Jackson',
          'state': 'KS',
          'postalCode': '64199',
          'country': 'United States of America',
          'period': {
            'start': '2012-05-17T15:33:18.000Z'
          }
        }
      ],
      'gender': 'male',
      'birthDate': '1990-09-15',
      'telecom': [
        {
          'system': 'phone',
          'value': '8168229121',
          'use': 'home',
          'period': {
            'start': '2012-05-17T15:33:18.000Z'
          }
        },
        {
          'system': 'email',
          'value': 'testemail@example.com',
          'use': 'home',
          'period': {
            'start': '2008-01-10T15:33:18.000Z'
          }
        }
      ]
    }.freeze

    R4_RELATEDPERSON_ENCOUNTER_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '8de80541-8f9c-4168-a308-bce0c576e945',
      'type': 'searchset',
      'total': 1,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/RelatedPerson?-encounter=97697434'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/RelatedPerson/E-12457994-97697434',
          'resource': {
            'resourceType': 'RelatedPerson',
            'id': 'E-12457994-97697434',
            'meta': {
              'versionId': '21',
              'lastUpdated': '2018-10-30T14:17:47.000Z'
            },
            'text': {
              'status': 'extensions',
              'div': '<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Related Person</b></p><p><b>Name</b>:'\
                      'MATERNITY, TESTTHREE</p><p><b>DOB</b>: Jun 20, 1987</p><p><b>Gender</b>:'\
                      'female</p><p><b>Patient</b>: NEWBORN, TESTTHREE</p><p><b>Status</b>:'\
                      'Active</p><p><b>Relationship</b>: Default Guarantor</p><p><b>Relationship</b>:'\
                      'Child</p><p><b>Relationship Level</b>: Encounter</p><p><b>Encounter</b>: 97697434</p></div>'
            },
            'extension': [
              {
                'valueReference': {
                  'reference': 'Encounter/97697434'
                },
                'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/related-person-encounter'
              },
              {
                'valueCodeableConcept': {
                  'coding': [
                    {
                      'system': 'http://hl7.org/fhir/resource-types',
                      'code': 'Encounter',
                      'display': 'Encounter'
                    }
                  ],
                  'text': 'Encounter'
                },
                'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/relationship-level'
              }
            ],
            'active': true,
            'patient': {
              'reference': 'Patient/12457995',
              'display': 'NEWBORN, TESTTHREE'
            },
            'relationship': [
              {
                'id': 'CI-97982588-0-0',
                'coding': [
                  {
                    'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/351',
                    'code': '1150',
                    'display': 'Default Guarantor',
                    'userSelected': true
                  },
                  {
                    'system': 'http://terminology.hl7.org/CodeSystem/v3-RoleCode',
                    'code': 'GT',
                    'display': 'Guarantor',
                    'userSelected': false
                  }
                ],
                'text': 'Default Guarantor'
              },
              {
                'id': 'CI-97982588-1-0',
                'coding': [
                  {
                    'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/40',
                    'code': '670847',
                    'display': 'Child',
                    'userSelected': true
                  },
                  {
                    'system': 'http://terminology.hl7.org/CodeSystem/v3-RoleCode',
                    'code': 'CHILD',
                    'display': 'child',
                    'userSelected': false
                  }
                ],
                'text': 'Child'
              }
            ],
            'name': [
              {
                'id': 'CI-12457994-0',
                'use': 'official',
                'text': 'MATERNITY, TESTTHREE',
                'family': 'MATERNITY',
                'given': [
                  'TESTTHREE'
                ],
                'period': {
                  'start': '2016-12-08T21:28:22.000Z'
                }
              }
            ],
            'telecom': [
              {
                'id': 'CI-PH-29583893-0',
                'system': 'phone',
                'value': '4264758753',
                'use': 'home',
                'period': {
                  'start': '2016-12-08T21:28:22.000Z'
                }
              }
            ],
            'gender': 'female',
            'birthDate': '1987-06-20',
            'address': [
              {
                'id': 'CI-24079465-0',
                'use': 'home',
                'text': '3343 Genessee St\nKansas City, MO 64111\nUS',
                'line': [
                  '3343 Genessee St'
                ],
                'city': 'Kansas City',
                'state': 'MO',
                'postalCode': '64111',
                'country': 'US',
                'period': {
                  'start': '2016-12-08T21:05:59.000Z'
                }
              }
            ],
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
                'preferred': 'true'
              }
            ]
          }
        }
      ]
    }.freeze

    R4_RELATEDPERSON_ENCOUNTER_BUNDLE_PATIENT_ACCESS ||= {
      'resourceType': 'Bundle',
      'id': '7f8ccaa8-1666-4752-98ba-27e1290672d1',
      'type': 'searchset',
      'total': 1,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/RelatedPerson?-encounter=51678301'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/RelatedPerson/E-173417344-51678301',
          'resource': R4_RELATEDPERSON_ENCOUNTER_ENTRY_PATIENT_ACCESS
        }
      ]
    }.freeze

    R4_RELATEDPERSON_PATCH ||= [
      {
        'op': 'add',
        'path': '/relationship/-',
        'value': {
          'coding': [
            {
              'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/351',
              'code': '1152'
            }
          ]
        }
      },
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
            'start': '2016-01-02T00:00:00-05:00',
            'end': '2020-01-02T00:00:00-05:00'
          }
        }
      },
      {
        'op': 'add',
        'path': '/address/-',
        'value': {
          'use': 'home',
          'line': [
            '1212 Faircastle Drive',
            'Apartment 406'
          ],
          'city': 'KC',
          'district': 'Jackson',
          'state': 'KS',
          'postalCode': '64199',
          'country': 'United States of America',
          'period': {
            'start': '2012-05-17T15:33:18.000Z'
          }
        }
      },
      {
        'op': 'test',
        'path': '/address/0/id',
        'value': 'CI-24079465-0'
      },
      {
        'op': 'remove',
        'path': '/address/0'
      },
      {
        'op': 'test',
        'path': '/name/0/id',
        'value': 'CI-12467982-0'
      },
      {
        'op': 'replace',
        'path': '/name/0/family',
        'value': 'Potter'
      },
      {
        'op': 'replace',
        'path': '/name/0/prefix',
        'value': ['Mr.']
      },
      {
        'op': 'replace',
        'path': '/name/0/given',
        'value': ['Harry', 'James']
      }
    ].freeze
  end
end
