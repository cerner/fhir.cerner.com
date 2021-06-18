# frozen_string_literal: true

module Cerner
  module Resources

    R4_COVERAGE_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': 'a8876443-c615-4244-9044-047dea2d92dd',
      'type': 'searchset',
      'total': 1,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Coverage?patient=12724066'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Coverage'\
                     '/12724066-490016987-490016987',
          'resource': {
            'resourceType': 'Coverage',
            'id': '12724066-490016987-490016987',
            'meta': {
              'versionId': '24-24',
              'lastUpdated': '2020-07-06T17:03:43.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Coverage</b></p><p><b>Status</b>: '\
                           'Active</p><p><b>Subscriber</b>: SMART, NANCY</p><p><b>Beneficiary</b>: SMART, NANCY'\
                           '</p><p><b>Coverage Start Date</b>: Aug 14, 2015  7:07 P.M. UTC</p><p><b>Payor</b>: '\
                           'SELF PAY</p><p><b>Class</b>: plan: Value: 2800235 Name: Self Pay</p></div>'
            },
            'status': 'active',
            'subscriber': {
              'reference': 'Patient/12724066',
              'display': 'SMART, NANCY'
            },
            'beneficiary': {
              'reference': 'Patient/12724066',
              'display': 'SMART, NANCY'
            },
            'relationship': {
              'coding': [
                {
                  'system': 'http://terminology.hl7.org/CodeSystem/subscriber-relationship',
                  'code': 'self',
                  'display': 'Self',
                  'userSelected': false
                }
              ],
              'text': 'Self'
            },
            'period': {
              'start': '2015-08-14T19:07:56.000Z'
            },
            'payor': [
              {
                'reference': 'Organization/589803',
                'display': 'SELF PAY'
              }
            ],
            'class': [
              {
                'type': {
                  'coding': [
                    {
                      'system': 'http://terminology.hl7.org/CodeSystem/coverage-class',
                      'code': 'plan'
                    }
                  ]
                },
                'value': '2800235',
                'name': 'Self Pay'
              }
            ]
          }
        }
      ]
    }.freeze

    R4_COVERAGE_ENCOUNTER_BUNDLE = {
      'resourceType': 'Bundle',
      'id': 'd42baa44-1566-458c-8457-10fbfacfc3e5',
      'type': 'searchset',
      'total': 1,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Coverage?-encounter=97954095'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Coverage/97954095-98320174',
          'resource': {
            'resourceType': 'Coverage',
            'id': '97954095-98320174',
            'meta': {
              'versionId': '0',
              'lastUpdated': '2020-07-27T21:01:55.000Z'
            },
            'text': {
              'status': 'extensions',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Coverage</b></p><p><b>Status</b>: Active</p><p>'\
                     '<b>Subscriber</b>: SMART, NANCY</p><p><b>Subscriber Id</b>: 12345</p><p><b>Encounter</b>: '\
                     '97954095</p><p><b>Beneficiary</b>: SMART, NANCY</p><p><b>Dependent Number</b>: 12345</p><p>'\
                     '<b>Coverage Start Date</b>: Feb  2, 2020  6:00 A.M. UTC</p><p><b>Coverage End Date</b>: Feb  '\
                     '3, 2021  5:59 A.M. UTC</p><p><b>Payor</b>: Aetna</p><p><b>Class</b>: plan: Value: 2830233 Name: '\
                     'Aetna</p></div>'
            },
            'extension': [
              {
                'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/coverage-encounter',
                'valueReference': {
                  'reference': 'Encounter/97954095'
                }
              }
            ],
            'status': 'active',
            'subscriber': {
              'reference': 'Patient/12724066',
              'display': 'SMART, NANCY'
            },
            'subscriberId': '12345',
            'beneficiary': {
              'reference': 'Patient/12724066',
              'display': 'SMART, NANCY'
            },
            'dependent': '12345',
            'relationship': {
              'coding': [
                {
                  'system': 'http://terminology.hl7.org/CodeSystem/subscriber-relationship',
                  'code': 'self',
                  'display': 'Self',
                  'userSelected': false
                }
              ],
              'text': 'Self'
            },
            'period': {
              'start': '2020-02-02T06:00:00.000Z',
              'end': '2021-02-03T05:59:59.000Z'
            },
            'payor': [
              {
                'reference': 'Organization/3064032',
                'display': 'Aetna'
              }
            ],
            'class': [
              {
                'type': {
                  'coding': [
                    {
                      'system': 'http://terminology.hl7.org/CodeSystem/coverage-class',
                      'code': 'plan'
                    }
                  ]
                },
                'value': '2830233',
                'name': 'Aetna'
              }
            ]
          }
        }
      ]
    }.freeze

    R4_COVERAGE_ENCOUNTER_SOCIAL_HEALTHCARE_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '1714d1b5-cabf-4c4a-bb76-c1e2e4d76d64',
      'type': 'searchset',
      'total': 1,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Coverage?-encounter=97701467'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Coverage/PH-98371617-97701467',
          'resource': {
            'resourceType': 'Coverage',
            'id': 'PH-98371617-97701467',
            'meta': {
              'versionId': '2-0',
              'lastUpdated': '2020-09-24T17:11:10.000Z'
            },
            'text': {
              'status': 'extensions',
              'div': '<div xmlns=\'http://www.w3.org/1999/xhtml\'><p><b>Coverage</b></p><p><b>Status</b>: Active</p>'\
                     '<p><b>Encounter</b>: 97701467</p><p><b>Beneficiary</b>: TRAUMA SURGERY, TESTONE</p>'\
                     '<p><b>Coverage Start Date</b>: Jul  1, 2022  5:00 A.M. UTC</p><p><b>Coverage End Date</b>'\
                     ': Jul  1, 2025  5:00 A.M. UTC</p><p><b>Payor</b>: Government</p><p><b>Class</b>:</p><dl>'\
                     '<dt>Class</dt><dd><b>Value</b>: 2572499881</dd><dd><b>Name</b>: Charging Category</dd></dl>'\
                     '<p><b>Type</b>: public healthcare</p></div>'
            },
            'extension': [
              {
                'valueReference': {
                  'reference': 'Encounter/97701467'
                },
                'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/coverage-encounter'
              }
            ],
            'status': 'active',
            'type': {
              'coding': [
                {
                  'system': 'http://terminology.hl7.org/CodeSystem/v3-ActCode',
                  'code': 'PUBLICPOL',
                  'display': 'public healthcare'
                }
              ],
              'text': 'public healthcare'
            },
            'beneficiary': {
              'reference': 'Patient/12462008',
              'display': 'TRAUMA SURGERY, TESTONE'
            },
            'period': {
              'start': '2022-07-01T05:00:00.000Z',
              'end': '2025-07-01T05:00:00.000Z'
            },
            'payor': [
              {
                'display': 'Government'
              }
            ],
            'class': [
              {
                'type': {
                  'coding': [
                    {
                      'system': 'http://terminology.hl7.org/CodeSystem/coverage-class',
                      'code': 'class'
                    }
                  ]
                },
                'value': '2572499881',
                'name': 'Charging Category'
              }
            ]
          }
        }
      ]
    }.freeze

    R4_COVERAGE_PATIENT_SOCIAL_HEALTHCARE_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '8ff4481d-ce55-4b3f-ac2c-4d4fd3cad4c0',
      'type': 'searchset',
      'total': 1,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Coverage?patient=12724066'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Coverage/PHP-490218084-12724066',
          'resource': {
            'resourceType': 'Coverage',
            'id': 'PHP-490218084-12724066',
            'meta': {
              'versionId': '134-0',
              'lastUpdated': '2021-03-16T20:04:11.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Coverage</b></p><p><b>Status</b>: Active</p>'\
              '<p><b>Beneficiary</b>: SMART, NANCY</p><p><b>Coverage Start Date</b>: Mar 16, 2021  8:04 P.M. UTC</p>'\
              '<p><b>Payor</b>: Government</p><p><b>Class</b>:</p><dl><dt>Charging Category</dt><dd><b>Value</b>:'\
               '2572940471</dd><dd><b>Name</b>: 10-OPC, Class II</dd></dl><p><b>Type</b>: public healthcare</p></div>'
            },
            'status': 'active',
            'type': {
              'coding': [
                {
                  'system': 'http://terminology.hl7.org/CodeSystem/v3-ActCode',
                  'code': 'PUBLICPOL',
                  'display': 'public healthcare'
                }
              ],
              'text': 'public healthcare'
            },
            'beneficiary': {
              'reference': 'Patient/12462008',
              'display': 'TRAUMA SURGERY, TESTONE'
            },
            'period': {
              'start': '2021-03-16T20:04:11.000Z'
            },
            'payor': [
              {
                'display': 'Government'
              }
            ],
            'class': [
              {
                'type': {
                  'text': 'Charging Category'
                },
                'value': '2572940471',
                'name': '10-OPC, Class II'
              }
            ]
          }
        }
      ]
    }.freeze

    R4_COVERAGE_CREATE ||= {
      'resourceType': 'Coverage',
      'status': 'active',
      'subscriber': {
        'reference': 'Patient/589763'
      },
      'subscriberId': '123',
      'beneficiary': {
        'reference': 'Patient/589763'
      },
      'relationship': {
        'coding': [
          {
            'system': 'http://terminology.hl7.org/CodeSystem/subscriber-relationship',
            'code': 'other'
          }
        ]
      },
      'period': {
        'start': '2014-09-05T14:30:12.000Z',
        'end': '2015-09-05T14:30:12.000Z'
      },
      'payor': [
        {
          'reference': 'Organization/643847',
          'display': 'Aetna Missouri POS - Open'
        }
      ],
      'class': [
        {
          'type': {
            'coding': [
              {
                'system': 'http://hl7.org/fhir/ValueSet/coverage-class',
                'code': 'plan'
              }
            ],
            'text': 'plan'
          },
          'value': '729827',
          'name': 'Aetna Missouri POS Open'
        },
        {
          'type': {
            'coding': [
              {
                'system': 'http://hl7.org/fhir/ValueSet/coverage-class',
                'code': 'group'
              }
            ],
            'text': 'group'
          },
          'value': '729839',
          'name': 'Aetna Missouri POS Open group'
        }
      ]
    }.freeze

    R4_COVERAGE_PATIENT_SOCIAL_HEALTHCARE_CREATE ||= {
      'resourceType': 'Coverage',
      'status': 'active',
      'beneficiary': {
        'reference': 'Patient/1626016'
      },
      'period': {
        'start': '2021-01-18T14:30:20.000Z',
        'end': '2021-01-18T14:30:21.000Z'
      },
      'payor': [
        {
          'display': 'Government'
        }
      ],
      'class': [
        {
          'type': {
            'text': 'Charging Category'
          },
          'value': '2572940471',
          'name': '10-OPC, Class II'
        }
      ]
    }

    R4_COVERAGE_ENCOUNTER_SOCIAL_HEALTHCARE_CREATE ||= {
      'resourceType': 'Coverage',
      'status': 'active',
      'beneficiary': {
        'reference': 'Patient/1626016'
      },
      'period': {
        'start': '2021-01-18T14:30:20.000Z',
        'end': '2021-01-18T14:30:21.000Z'
      },
      'payor': [
        {
          'display': 'Government'
        }
      ],
      'extension': [
        {
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/coverage-encounter',
          'valueReference': {
            'reference': 'Encounter/31363178'
          }
        }
      ],
      'class': [
        {
          'type': {
            'text': 'Charging Category'
          },
          'value': '2572940471',
          'name': '10-OPC, Class II'
        }
      ]
    }

    R4_COVERAGE_ENCOUNTER_PATCH ||= [
      {
        'op': 'replace',
        'path': '/class/0/value',
        'value': '729825'
      },
      {
        'op': 'replace',
        'path': '/class/1/value',
        'value': '456'
      },
      {
        'op': 'replace',
        'path': '/class/1/name',
        'value': 'Miscellaneous Commercial Health Plan'
      },
      {
        'op': 'replace',
        'path': '/dependent',
        'value': '9816564'
      },
      {
        'op': 'replace',
        'path': '/period',
        'value': {
          'start': '2014-09-05T14:30:12.000Z',
          'end': '2015-09-05T14:30:12.000Z'
        }
      },
      {
        'op': 'replace',
        'path': '/relationship',
        'value': {
          'coding': [
            {
              'system': 'http://terminology.hl7.org/CodeSystem/subscriber-relationship',
              'code': 'parent'
            }
          ]
        }
      },
      {
        'op': 'replace',
        'path': '/subscriberId',
        'value': '4655446'
      },
      {
        'op': 'replace',
        'path': '/subscriber',
        'value': {
          'reference': 'Patient/1626016'
        }
      }
    ].freeze

    R4_COVERAGE_ENCOUNTER_CREATE ||= {
      'resourceType': 'Coverage',
      'status': 'active',
      'subscriber': {
        'reference': 'Patient/1626016',
        'display': 'WOLFE, STEPHANIE T'
      },
      'extension': [
        {
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/coverage-encounter',
          'valueReference': {
            'reference': 'Encounter/31363178'
          }
        }
      ],
      'subscriberId': '2461235',
      'dependent': '74965675',
      'beneficiary': {
        'reference': 'Patient/1626016'
      },
      'relationship': {
        'coding': [
          {
            'system': 'https://fhir.cerner.com/2c400054-42d8-4e74-87b7-80b5bd5fde9f/codeSet/40',
            'code': '156',
            'display': 'child',
            'userSelected': true
          }
        ]
      },
      'period': {
        'start': '2014-09-05T14:30:12.000Z',
        'end': '2015-09-05T14:30:12.000Z'
      },
      'payor': [
        {
          'reference': 'Organization/643847',
          'display': 'Aetna Missouri POS - Open'
        }
      ],
      'class': [
        {
          'type': {
            'coding': [
              {
                'system': 'http://hl7.org/fhir/ValueSet/coverage-class',
                'code': 'plan'
              }
            ],
            'text': 'plan'
          },
          'value': '729825',
          'name': 'Aetna Missouri POS Open'
        },
        {
          'type': {
            'coding': [
              {
                'system': 'http://hl7.org/fhir/ValueSet/coverage-class',
                'code': 'group'
              }
            ],
            'text': 'group'
          },
          'value': '8939999',
          'name': 'Aetna Missouri POS Open group'
        }
      ]
    }.freeze

  end
end
