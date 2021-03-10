# frozen_string_literal: true

module Cerner
  module Resources
    R4_ORGANIZATION_ENTRY ||= {
      'resourceType': 'Organization',
      'id': '675844',
      'meta': {
        'versionId': '29',
        'lastUpdated': '2018-05-22T16:46:28Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Organization</b></p><p><b>Name</b>: '\
               'Model Hospital</p><p><b>Status</b>: Active</p><p><b>TAXID</b>: 123456785</p></div>'
      },
      'identifier': [
        {
          'use': 'official',
          'type': {
            'coding': [
              {
                'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/334',
                'code': 'TAXID',
                'display': 'zzTax Identifier',
                'userSelected': true
              },
              {
                'system': 'http://terminology.hl7.org/CodeSystem/v2-0203',
                'code': 'TAX',
                'display': 'Tax ID number'
              }
            ],
            'text': 'zzTax Identifier'
          },
          'system': 'urn:oid:2.16.840.1.113883.4.4',
          'value': '123456785'
        }
      ],
      'active': true,
      'type': [
        {
          'coding': [
            {
              'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/278',
              'code': 'EMPLOYER',
              'display': 'Employer',
              'userSelected': true
            }
          ],
          'text': 'Employer'
        },
        {
          'coding': [
            {
              'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/278',
              'code': 'PLACEOFSVC',
              'display': 'Place of Service',
              'userSelected': true
            },
            {
              'system': 'http://terminology.hl7.org/CodeSystem/organization-type',
              'code': 'prov',
              'display': 'Healthcare Provider'
            }
          ],
          'text': 'Place of Service'
        },
        {
          'coding': [
            {
              'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/278',
              'code': 'CLIENT',
              'display': 'Client',
              'userSelected': true
            }
          ],
          'text': 'Client'
        },
        {
          'coding': [
            {
              'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/278',
              'code': 'LABORATORY',
              'display': 'Exchange Lab',
              'userSelected': true
            }
          ],
          'text': 'Exchange Lab'
        },
        {
          'coding': [
            {
              'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/278',
              'code': 'FACILITY',
              'display': 'Facility',
              'userSelected': true
            }
          ],
          'text': 'Facility'
        }
      ],
      'name': 'Model Hospital',
      'telecom': [
        {
          'system': 'phone',
          'value': '5555550013',
          'use': 'work'
        }
      ],
      'address': [
        {
          'use': 'work',
          'text': '6276 Rockriver Drive\nKansas City, MO 64117\nUS',
          'line': [
            '6276 Rockriver Drive'
          ],
          'city': 'Kansas City',
          'state': 'MO',
          'postalCode': '64117',
          'country': 'US'
        },
        {
          'use': 'billing',
          'text': '6276 Rockriver Drive\nKansas City, MO 64117\nUS',
          'line': [
            '6276 Rockriver Drive'
          ],
          'city': 'Kansas City',
          'state': 'MO',
          'postalCode': '64117',
          'country': 'US'
        },
        {
          'use': 'billing',
          'text': '6276 Rockriver Drive\nKansas City, MO 64117\nUS',
          'line': [
            '6276 Rockriver Drive'
          ],
          'city': 'Kansas City',
          'state': 'MO',
          'postalCode': '64117',
          'country': 'US'
        },
        {
          'text': '6276 Rockriver Drive\nKansas City, MO 64117\nUS',
          'line': [
            '6276 Rockriver Drive'
          ],
          'city': 'Kansas City',
          'state': 'MO',
          'postalCode': '64117',
          'country': 'US'
        },
        {
          'text': '6276 Rockriver Drive\nKansas City, MO 64117\nUS',
          'line': [
            '6276 Rockriver Drive'
          ],
          'city': 'Kansas City',
          'state': 'MO',
          'postalCode': '64117',
          'country': 'US'
        }
      ]
    }.freeze

    R4_ORGANIZATION_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '572dbd7f-2505-41cd-a9ac-240db77545a1',
      'type': 'searchset',
      'total': 1,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Organization?_id=675844'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Organization/675844',
          'resource': R4_ORGANIZATION_ENTRY
        }
      ]
    }.freeze

    R4_ORGANIZATION_CREATE ||= {
      'resourceType': 'Organization',
      'identifier': [
        {
          'system': 'http://hl7.org/fhir/sid/us-npi',
          'value': 'FHIR-NPI-10191',
          'type': {
            'coding': [
              {
                'system': 'http://terminology.hl7.org/CodeSystem/v2-0203',
                'code': 'NPI'
              }
            ]
          }
        }
      ],
      'active': true,
      'name': 'sandbox-fhir-org1',
      'type': [
        {
          'coding': [
            {
              'system': 'http://terminology.hl7.org/CodeSystem/organization-type',
              'code': 'govt'
            }
          ]
        }
      ]
    }.freeze

    R4_ORGANIZATION_CAREGIVER_SEARCH_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '02116a06-1bef-4397-9347-8d9ae1e98173',
      'type': 'searchset',
      'total': 1,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Organization/$get-cg-for-mrcu?_id=3304067'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Organization/3304066',
          'resource': {
            'resourceType': 'Organization',
            'id': '3304066',
            'meta': {
              'versionId': '1',
              'lastUpdated': '2020-12-11T21:05:24Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Organization</b></p><p><b>Name</b>: '\
                     's5gcq4ZbcYMSVC CORE test organization1ZybNk7kCr0</p><p><b>Status</b>: Active</p><p><b>TAXID'\
                     '</b>: zYuYtCHkmh</p><p><b>OID</b>: urn:oid:2.4.8.6.1.6</p></div>'
            },
            'identifier': [
              {
                'use': 'official',
                'system': 'urn:oid:2.16.840.1.113883.4.4',
                'value': 'zYuYtCHkmh'
              },
              {
                'use': 'official',
                'type': {
                  'coding': [
                    {
                      'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/334',
                      'code': 'OID',
                      'display': 'OID',
                      'userSelected': true
                    },
                    {
                      'system': 'urn:ietf:rfc:3986',
                      'code': 'urn:oid',
                      'display': 'OID'
                    }
                  ],
                  'text': 'OID'
                },
                'system': 'urn:ietf:rfc:3986',
                'value': 'urn:oid:2.4.8.6.1.6'
              }
            ],
            'active': true,
            'type': [
              {
                'coding': [
                  {
                    'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/278',
                    'code': 'HOSPITAL',
                    'display': 'Hospital',
                    'userSelected': true
                  },
                  {
                    'system': 'http://terminology.hl7.org/CodeSystem/organization-type',
                    'code': 'prov',
                    'display': 'Healthcare Provider'
                  }
                ],
                'text': 'Hospital'
              },
              {
                'coding': [
                  {
                    'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/278',
                    'code': 'CHARTACCESS',
                    'display': 'Chart Access',
                    'userSelected': true
                  }
                ],
                'text': 'Chart Access'
              },
              {
                'coding': [
                  {
                    'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/278',
                    'code': 'PHARMACY',
                    'display': 'Pharmacy',
                    'userSelected': true
                  },
                  {
                    'system': 'http://terminology.hl7.org/CodeSystem/organization-type',
                    'code': 'dept',
                    'display': 'Hospital Department'
                  }
                ],
                'text': 'Pharmacy'
              }
            ],
            'name': 's5gcq4ZbcYMSVC CORE test organization1ZybNk7kCr0',
            'telecom': [
              {
                'system': 'sms',
                'value': '88793851',
                'use': 'mobile'
              },
              {
                'system': 'phone',
                'value': '13294723851',
                'use': 'work'
              },
              {
                'system': 'email',
                'value': 'external@cerner.com'
              }
            ],
            'address': [
              {
                'use': 'work',
                'text': '6276 Rockriver Drive\\nKansas City, MO 64117\\nUS',
                'line': [
                  '6276 Rockriver Drive'
                ],
                'city': 'Kansas City',
                'state': 'MO',
                'postalCode': '64117',
                'country': 'US'
              },
              {
                'use': 'billing',
                'text': '6276 Rockriver Drive\nKansas City, MO 64117\nUS',
                'line': [
                  '6276 Rockriver Drive'
                ],
                'city': 'Kansas City',
                'state': 'MO',
                'postalCode': '64117',
                'country': 'US'
              }
            ]
          }
        }
      ]
    }.freeze
  end
end
