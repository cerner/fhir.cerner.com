# frozen_string_literal: true

module Cerner
  module Resources

    R4_RELATEDPERSON_ENTRY ||= {
      'resourceType': 'RelatedPerson',
      'id': '12724066-12724068',
      'meta': {
        'versionId': 145,
        'lastUpdated': '2021-03-22T14:12:37.000Z'
      },
      'text': {
        'status': 'extensions',
        'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Related Person</b></p><p><b>Name</b>:'\
               ' SMART, NANCY</p><p><b>DOB</b>: Aug 11, 1980</p><p><b>Gender</b>: female</p><p><b>Patient</b>:'\
               ' SMART, HAILEY</p><p><b>Status</b>: Active</p><p><b>Relationship</b>: Default Guarantor</p><p>'\
               '<b>Relationship</b>: Child</p><p><b>Relationship</b>: Family Member</p><p><b>Relationship Level</b>:'\
               ' Patient</p></div>'
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
          'id': 'CI-490060520-1',
          'use': 'usual',
          'type': {
            'coding': [
              {
                'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4',
                'code': '22',
                'display': 'Military Id',
                'userSelected': true
              }
            ],
            'text': 'Military Id'
          },
          'system': 'urn:oid:2.16.840.1.113883.3.42.10001.100001.12',
          'value': '1000000105'
        },
        {
          'id': 'CI-490068325-2',
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
          'value': 'URN:CERNER:IDENTITY-FEDERATION:REALM:EC2458F2-1E24-41C8-B71B-0E701AF7583D-CH:PRINCIPAL:'\
                   'RS7MH9WX3XB8VY63',
          'period': {
            'start': '2020-08-10T14:29:20.000Z'
          }
        },
        {
          'id': 'CI-490059563-3',
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
                   'RS7MH9WX3XB8VY63',
          'period': {
            'start': '2020-06-30T20:06:42.000Z'
          }
        },
        {
          'id': 'CI-490153231-4',
          'use': 'usual',
          'type': {
            'coding': [
              {
                'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4',
                'code': '2553236785',
                'display': 'MIllennium Person Identifier',
                'userSelected': true
              }
            ],
            'text': 'MIllennium Person Identifier'
          },
          'value': '12868',
          'period': {
            'start': '2020-12-18T19:15:06.000Z'
          }
        }
      ],
      'active': true,
      'patient': {
        'reference': 'Patient/12724068',
        'display': 'SMART, HAILEY'
      },
      'relationship': [
        {
          'id': 'CI-490017041-0',
          'extension': [
            {
              'valuePeriod': {
                'start': '2019-12-26T16:06:26.000Z'
              },
              'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/period'
            },
            {
              'valueCodeableConcept': {
                'coding': [
                  {
                    'system': 'https://fhir.cerner.com/2c400054-42d8-4e74-87b7-80b5bd5fde9f/codeSet/40',
                    'code': '156',
                    'display': 'Mother',
                    'userSelected': true
                  },
                  {
                    'system': 'http://terminology.hl7.org/CodeSystem/v3-RoleCode',
                    'code': 'MTH',
                    'display': 'mother',
                    'userSelected': false
                  }
                ],
                'text': 'Mother'
              },
              'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/relation'
            }
          ],
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
          'id': 'CI-490017055-1',
          'extension': [
            {
              'valuePeriod': {
                'start': '2019-12-26T16:06:26.000Z'
              },
              'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/period'
            },
            {
              'valueCodeableConcept': {
                'coding': [
                  {
                    'system': 'https://fhir.cerner.com/2c400054-42d8-4e74-87b7-80b5bd5fde9f/codeSet/40',
                    'code': '156',
                    'display': 'Mother',
                    'userSelected': true
                  },
                  {
                    'system': 'http://terminology.hl7.org/CodeSystem/v3-RoleCode',
                    'code': 'MTH',
                    'display': 'mother',
                    'userSelected': false
                  },
                  'text': 'Mother'
                ]
              },
              'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/relation'
            }
          ],
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
          'id': 'CI-12724066-0',
          'use': 'official',
          'text': 'SMART, NANCY',
          'family': 'SMART',
          'given': [
            'NANCY'
          ],
          'period': {
            'start': '2019-12-26T15:12:34.000Z'
          }
        }
      ],
      'telecom': [
        {
          'id': 'CI-PH-29852801-0',
          'extension': [
            {
              'valueUrl': '13215555555',
              'url': 'http://hl7.org/fhir/StructureDefinition/iso21090-TEL-address'
            }
          ],
          'system': 'phone',
          'value': '13215555555',
          'use': 'work',
          'period': {
            'start': '2021-03-22T14:12:37.000Z'
          }
        },
        {
          'id': 'CI-PH-29811918-1',
          'extension': [
            {
              'valueUrl': '(987)654-3210',
              'url': 'http://hl7.org/fhir/StructureDefinition/iso21090-TEL-address'
            }
          ],
          'system': 'phone',
          'value': '9876543210',
          'use': 'home',
          'period': {
            'start': '2019-12-26T15:12:34.000Z'
          }
        },
        {
          'id': 'CI-PH-29844706-2',
          'extension': [
            {
              'valueUrl': '(503)400-8675',
              'url': 'http://hl7.org/fhir/StructureDefinition/iso21090-TEL-address'
            }
          ],
          'system': 'phone',
          'value': '5034008675',
          'use': 'mobile',
          'period': {
            'start': '2021-01-25T05:00:00.000Z'
          }
        },
        {
          'id': 'CI-PH-29844710-3',
          'extension': [
            {
              'valueUrl': '5034008675',
              'url': 'http://hl7.org/fhir/StructureDefinition/iso21090-TEL-address'
            }
          ],
          'system': 'phone',
          'value': '5034008675',
          'use': 'mobile',
          'period': {
            'start': '2021-01-25T05:00:00.000Z'
          }
        },
        {
          'id': 'CI-PH-29844690-4',
          'extension': [
            {
              'valueUrl': '5034008675',
              'url': 'http://hl7.org/fhir/StructureDefinition/iso21090-TEL-address'
            }
          ],
          'system': 'phone',
          'value': '5034008675',
          'use': 'mobile',
          'period': {
            'start': '2021-01-25T05:00:00.000Z'
          }
        },
        {
          'id': 'CI-PH-29844708-5',
          'extension': [
            {
              'valueUrl': '5034008675',
              'url': 'http://hl7.org/fhir/StructureDefinition/iso21090-TEL-address'
            }
          ],
          'system': 'phone',
          'value': '5034008675',
          'use': 'mobile',
          'period': {
            'start': '2021-01-25T05:00:00.000Z'
          }
        },
        {
          'id': 'CI-PH-29844688-6',
          'extension': [
            {
              'valueUrl': '5034008675',
              'url': 'http://hl7.org/fhir/StructureDefinition/iso21090-TEL-address'
            }
          ],
          'system': 'phone',
          'value': '5034008675',
          'use': 'mobile',
          'period': {
            'start': '2021-01-25T00:33:18.000Z'
          }
        },
        {
          'id': 'CI-EM-29822894-0',
          'system': 'email',
          'value': 'workemail@gmail.com',
          'use': 'home',
          'period': {
            'start': '2020-06-30T19:47:10.000Z'
          }
        }
      ],
      'gender': 'female',
      'birthDate': '1980-08-11',
      'address': [
        {
          'id': 'CI-24313551-0',
          'use': 'home',
          'text': '3P\nKANSAS CITY, MO 641510001\nUS',
          'line': [
            '3P'
          ],
          'city': 'KANSAS CITY',
          'district': 'Jackson',
          'state': 'MO',
          'postalCode': '641510001',
          'country': 'US',
          'period': {
            'start': '2020-12-08T15:05:44.000Z'
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
          'id': 'CI-97982588-0',
          'extension': [
            {
              'valuePeriod': {
                'start': '2016-12-08T21:53:53.000Z'
              },
              'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/period'
            },
            {
              'valueCodeableConcept': {
                'coding': [
                  {
                    'system': 'https://fhir.cerner.com/2c400054-42d8-4e74-87b7-80b5bd5fde9f/codeSet/40',
                    'code': '156',
                    'display': 'Mother',
                    'userSelected': true
                  },
                  {
                    'system': 'http://terminology.hl7.org/CodeSystem/v3-RoleCode',
                    'code': 'MTH',
                    'display': 'mother',
                    'userSelected': false
                  }
                ],
                'text': 'Mother'
              },
              'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/relation'
            }
          ],
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
          'extension': [
            {
              'valueUrl': '426-475-8753',
              'url': 'http://hl7.org/fhir/StructureDefinition/iso21090-TEL-address'
            }
          ],
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
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/RelatedPerson/12724066-12724068',
          'resource': R4_RELATEDPERSON_ENTRY
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/RelatedPerson/12724066-12724069',
          'resource': {
            'resourceType': 'RelatedPerson',
            'id': '12724066-12724069',
            'meta': {
              'versionId': 145,
              'lastUpdated': '2021-03-22T14:12:37.000Z'
            },
            'text': {
              'status': 'extensions',
              'div': '<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Related Person</b></p><p><b>Name</b>'\
                     ': SMART, NANCY</p><p><b>DOB</b>: Aug 11, 1980</p><p><b>Gender</b>: female</p><p>'\
                     '<b>Patient</b>: SMART, TIMMY</p><p><b>Status</b>: Active</p><p><b>Relationship</b>'\
                     ': Authorized Representative</p><p><b>Relationship</b>: Default Guarantor</p><p>'\
                     '<b>Relationship</b>: Child</p><p><b>Relationship</b>: Family Member</p><p>'\
                     '<b>Relationship Level</b>: Patient</p></div>'
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
                'id': 'CI-490060520-1',
                'use': 'usual',
                'type': {
                  'coding': [
                    {
                      'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4',
                      'code': '22',
                      'display': 'Military Id',
                      'userSelected': true
                    }
                  ],
                  'text': 'Military Id'
                },
                'system': 'urn:oid:2.16.840.1.113883.3.42.10001.100001.12',
                'value': '1000000105'
              },
              {
                'id': 'CI-490068325-2',
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
                'value': 'URN:CERNER:IDENTITY-FEDERATION:REALM:EC2458F2-1E24-41C8-B71B-0E701AF7583D-CH:PRINCIPAL'\
                         ':RS7MH9WX3XB8VY63',
                'period': {
                  'start': '2020-08-10T14:29:20.000Z'
                }
              },
              {
                'id': 'CI-490059563-3',
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
                         'RS7MH9WX3XB8VY63',
                'period': {
                  'start': '2020-06-30T20:06:42.000Z'
                }
              },
              {
                'id': 'CI-490153231-4',
                'use': 'usual',
                'type': {
                  'coding': [
                    {
                      'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4',
                      'code': '2553236785',
                      'display': 'MIllennium Person Identifier',
                      'userSelected': true
                    }
                  ],
                  'text': 'MIllennium Person Identifier'
                },
                'value': '12868',
                'period': {
                  'start': '2020-12-18T19:15:06.000Z'
                }
              }
            ],
            'active': true,
            'patient': {
              'reference': 'Patient/12724069',
              'display': 'SMART, TIMMY'
            },
            'relationship': [
              {
                'id': 'CI-490068369-0',
                'extension': [
                  {
                    'valuePeriod': {
                      'start': '2020-08-10T16:37:51.000Z'
                    },
                    'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/period'
                  },
                  {
                    'valueCodeableConcept': {
                      'coding': [
                        {
                          'system': 'https://fhir.cerner.com/2c400054-42d8-4e74-87b7-80b5bd5fde9f/codeSet/40',
                          'code': '156',
                          'display': 'Mother',
                          'userSelected': true
                        },
                        {
                          'system': 'http://terminology.hl7.org/CodeSystem/v3-RoleCode',
                          'code': 'MTH',
                          'display': 'mother',
                          'userSelected': false
                        }
                      ],
                      'text': 'Mother'
                    },
                    'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/relation'
                  }
                ],
                'coding': [
                  {
                    'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/351',
                    'code': '2553243305',
                    'display': 'Authorized Representative',
                    'userSelected': true
                  }
                ],
                'text': 'Authorized Representative'
              },
              {
                'id': 'CI-490017075-1',
                'extension': [
                  {
                    'valuePeriod': {
                      'start': '2019-12-26T16:09:36.000Z'
                    },
                    'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/period'
                  },
                  {
                    'valueCodeableConcept': {
                      'coding': [
                        {
                          'system': 'https://fhir.cerner.com/2c400054-42d8-4e74-87b7-80b5bd5fde9f/codeSet/40',
                          'code': '156',
                          'display': 'Mother',
                          'userSelected': true
                        },
                        {
                          'system': 'http://terminology.hl7.org/CodeSystem/v3-RoleCode',
                          'code': 'MTH',
                          'display': 'mother',
                          'userSelected': false
                        }
                      ],
                      'text': 'Mother'
                    },
                    'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/relation'
                  }
                ],
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
                'id': 'CI-490068372-2',
                'extension': [
                  {
                    'valuePeriod': {
                      'start': '2020-08-10T16:37:51.000Z'
                    },
                    'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/period'
                  },
                  {
                    'valueCodeableConcept': {
                      'coding': [
                        {
                          'system': 'https://fhir.cerner.com/2c400054-42d8-4e74-87b7-80b5bd5fde9f/codeSet/40',
                          'code': '152'
                        }
                      ]
                    },
                    'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/relation'
                  }
                ],
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
                'id': 'CI-12724066-0',
                'use': 'official',
                'text': 'SMART, NANCY',
                'family': 'SMART',
                'given': [
                  'NANCY'
                ],
                'period': {
                  'start': '2019-12-26T15:12:34.000Z'
                }
              }
            ],
            'telecom': [
              {
                'id': 'CI-PH-29852801-0',
                'extension': [
                  {
                    'valueUrl': '13215555555',
                    'url': 'http://hl7.org/fhir/StructureDefinition/iso21090-TEL-address'
                  }
                ],
                'system': 'phone',
                'value': '13215555555',
                'use': 'work',
                'period': {
                  'start': '2021-03-22T14:12:37.000Z'
                }
              },
              {
                'id': 'CI-PH-29811918-1',
                'extension': [
                  {
                    'valueUrl': '(987)654-3210',
                    'url': 'http://hl7.org/fhir/StructureDefinition/iso21090-TEL-address'
                  }
                ],
                'system': 'phone',
                'value': '9876543210',
                'use': 'home',
                'period': {
                  'start': '2019-12-26T15:12:34.000Z'
                }
              },
              {
                'id': 'CI-PH-29844706-2',
                'extension': [
                  {
                    'valueUrl': '(503)400-8675',
                    'url': 'http://hl7.org/fhir/StructureDefinition/iso21090-TEL-address'
                  }
                ],
                'system': 'phone',
                'value': '5034008675',
                'use': 'mobile',
                'period': {
                  'start': '2021-01-25T05:00:00.000Z'
                }
              },
              {
                'id': 'CI-PH-29844710-3',
                'extension': [
                  {
                    'valueUrl': '5034008675',
                    'url': 'http://hl7.org/fhir/StructureDefinition/iso21090-TEL-address'
                  }
                ],
                'system': 'phone',
                'value': '5034008675',
                'use': 'mobile',
                'period': {
                  'start': '2021-01-25T05:00:00.000Z'
                }
              },
              {
                'id': 'CI-PH-29844690-4',
                'extension': [
                  {
                    'valueUrl': '5034008675',
                    'url': 'http://hl7.org/fhir/StructureDefinition/iso21090-TEL-address'
                  }
                ],
                'system': 'phone',
                'value': '5034008675',
                'use': 'mobile',
                'period': {
                  'start': '2021-01-25T05:00:00.000Z'
                }
              },
              {
                'id': 'CI-PH-29844708-5',
                'extension': [
                  {
                    'valueUrl': '5034008675',
                    'url': 'http://hl7.org/fhir/StructureDefinition/iso21090-TEL-address'
                  }
                ],
                'system': 'phone',
                'value': '5034008675',
                'use': 'mobile',
                'period': {
                  'start': '2021-01-25T05:00:00.000Z'
                }
              },
              {
                'id': 'CI-PH-29844688-6',
                'extension': [
                  {
                    'valueUrl': '5034008675',
                    'url': 'http://hl7.org/fhir/StructureDefinition/iso21090-TEL-address'
                  }
                ],
                'system': 'phone',
                'value': '5034008675',
                'use': 'mobile',
                'period': {
                  'start': '2021-01-25T00:33:18.000Z'
                }
              },
              {
                'id': 'CI-EM-29822894-0',
                'system': 'email',
                'value': 'workemail@gmail.com',
                'use': 'home',
                'period': {
                  'start': '2020-06-30T19:47:10.000Z'
                }
              }
            ],
            'gender': 'female',
            'birthDate': '1980-08-11',
            'address': [
              {
                'id': 'CI-24313551-0',
                'use': 'home',
                'text': '3P\nKANSAS CITY, MO 641510001\nUS',
                'line': [
                  '3P'
                ],
                'city': 'KANSAS CITY',
                'district': 'Jackson',
                'state': 'MO',
                'postalCode': '641510001',
                'country': 'US',
                'period': {
                  'start': '2020-12-08T15:05:44.000Z'
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
          ],
          'extension': [
            {
              'valuePeriod': {
                'start': '2016-12-19T16:44:25.000Z',
                'end': '2022-05-01T16:56:56.000Z'
              },
              'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/period'
            },
            {
              'valueCodeableConcept': {
                'coding': [
                  {
                    'system': 'https://fhir.cerner.com/2c400054-42d8-4e74-87b7-80b5bd5fde9f/codeSet/40',
                    'code': '155'
                  }
                ]
              },
              'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/relation'
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
                'id': 'CI-97982588-0',
                'extension': [
                  {
                    'valuePeriod': {
                      'start': '2016-12-08T21:53:53.000Z'
                    },
                    'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/period'
                  },
                  {
                    'valueCodeableConcept': {
                      'coding': [
                        {
                          'system': 'https://fhir.cerner.com/2c400054-42d8-4e74-87b7-80b5bd5fde9f/codeSet/40',
                          'code': '156',
                          'display': 'Mother',
                          'userSelected': true
                        },
                        {
                          'system': 'http://terminology.hl7.org/CodeSystem/v3-RoleCode',
                          'code': 'MTH',
                          'display': 'mother',
                          'userSelected': false
                        }
                      ],
                      'text': 'Mother'
                    },
                    'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/relation'
                  }
                ],
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
                'extension': [
                  {
                    'valueUrl': '816-888-8886',
                    'url': 'http://hl7.org/fhir/StructureDefinition/iso21090-TEL-address'
                  }
                ],
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
          ],
          'extension': [
            {
              'valuePeriod': {
                'start': '2016-12-19T16:44:25.000Z',
                'end': '2022-05-01T16:56:56.000Z'
              },
              'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/period'
            },
            {
              'valueCodeableConcept': {
                'coding': [
                  {
                    'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/40',
                    'code': '155'
                  }
                ]
              },
              'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/relation'
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
        "op": 'add',
        "path": '/telecom/-',
        "value": {
          "use": 'home',
          "system": 'email',
          "value": 'test@test.com',
          "period": {
            "start": '2018-01-05T22:24:32.000Z'
          }
        }
      },
      {
        "op": 'add',
        "path": '/telecom/-',
        "value": {
          "use": 'home',
          "system": 'phone',
          "value": '913-444-8881',
          "period": {
            "start": '2018-01-05T22:24:32.000Z'
          }
        }
      },
      {
        'op': 'test',
        'path': '/telecom/0/id',
        'value': 'CI-PH-29811920-0'
      },
      {
        'op': 'remove',
        'path': '/telecom/0'
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
        'path': '/relationship/0/id',
        'value': 'CI-98278577-0'
      },
      {
        'op': 'remove',
        'path': '/relationship/0'
      },
      {
        'op': 'replace',
        'path': '/relationship/0/extension',
        'value': [
          {
            'valuePeriod': {
              'start': '2016-12-30T22:26:08.000Z',
              'end': '2036-12-30T22:26:08.000Z'
            },
            'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/period'
          },
          {
            'valueCodeableConcept': {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/2c400054-42d8-4e74-87b7-80b5bd5fde9f/codeSet/40',
                  'code': '155'
                }
              ]
            },
            'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/relation'
          }
        ]
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
      },
      {
        'op': 'replace',
        'path': '/name/0/suffix',
        'value': ['Jr.']
      }
    ].freeze
  end
end
