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
          'id': 'CI-12724068-12724066-0',
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
             ': NEWBORN, TESTTHREE</p><p><b>Status</b>: Active</p><p><b>Relationship</b>: Default Guarantor</p>'\
             '<p><b>Relationship</b>: Child</p><p><b>Relationship Level</b>: Encounter</p><p><b>Encounter</b>: 97697434'\
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
    "relationship": [
      {
        'id': 'CI-97982588-0-0',
        'coding': [
          {
            'system': 'https://fhir.cerner.com/dacc6494-e336-45ad-8729-b789ff8663c6/codeSet/351',
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
            'system': 'https://fhir.cerner.com/dacc6494-e336-45ad-8729-b789ff8663c6/codeSet/40',
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
            'system': 'https://fhir.cerner.com/dacc6494-e336-45ad-8729-b789ff8663c6/codeSet/36',
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
                'id': 'CI-12724069-12724066-0',
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
      'id': 'b0937853-58f1-44e6-be02-0fa5c4862af8',
      'type': 'searchset',
      'total': 1,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-ehr-latest.sandboxcerner.com/r4/dacc6494-e336-45ad-8729-b789ff8663c6/RelatedPerson?-encounter=97697434'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-ehr-latest.sandboxcerner.com/r4/dacc6494-e336-45ad-8729-b789ff8663c6/RelatedPerson/E-12457994-97697434',
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
                    'system': 'https://fhir.cerner.com/dacc6494-e336-45ad-8729-b789ff8663c6/codeSet/351',
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
                    'system': 'https://fhir.cerner.com/dacc6494-e336-45ad-8729-b789ff8663c6/codeSet/40',
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
                      'system': 'https://fhir.cerner.com/dacc6494-e336-45ad-8729-b789ff8663c6/codeSet/36',
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
      }
    ].freeze
  end
end
