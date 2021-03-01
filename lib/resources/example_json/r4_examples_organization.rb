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
      'id': '9cdc9b0a-1f7f-4a33-8c57-76514a7c7cdb',
      'type': 'searchset',
      'total': 2,
      'link': [
        {
          'relation': 'self',
          'url': 'http://localhost:3000/r4/5a12b3e8-5941-4076-8592-1fb463441c68/Organization/$get-cg-for-mrcu?_id=3172822'
        }
      ],
      'entry': [
        {
          'fullUrl': 'http://localhost:3000/r4/5a12b3e8-5941-4076-8592-1fb463441c68/Organization/3172821',
          'resource': {
            'resourceType': 'Organization',
            'id': '3172821',
            'meta': {
              'versionId': '4',
              'lastUpdated': '2020-02-20T06:44:22Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Organization</b></p><p><b>Name</b>: '\
                     'CH Caregiver</p><p><b>Status</b>: Active</p></div>'
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
            'active': true,
            'type': [
              {
                'coding': [
                  {
                    'system': 'https://fhir.cerner.com/5a12b3e8-5941-4076-8592-1fb463441c68/codeSet/278',
                    'code': 'CAREGIVER',
                    'display': 'Caregiver',
                    'userSelected': true
                  }
                ],
                'text': 'Caregiver'
              }
            ],
            'name': 'CH Caregiver',
            'telecom': [
              {
                'extension': [
                  {
                    'valueCode': 'unknown',
                    'url': 'http://hl7.org/fhir/StructureDefinition/data-absent-reason'
                  }
                ]
              }
            ],
            'address': [
              {
                'extension': [
                  {
                    'valueCode': 'unknown',
                    'url': 'http://hl7.org/fhir/StructureDefinition/data-absent-reason'
                  }
                ]
              }
            ]
          }
        },
        {
          'fullUrl': 'http://localhost:3000/r4/5a12b3e8-5941-4076-8592-1fb463441c68/Organization/3282939',
          'resource': {
            'resourceType': 'Organization',
            'id': '3282939',
            'meta': {
              'versionId': '0',
              'lastUpdated': '2020-05-11T08:53:29Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Organization</b></p><p><b>Name</b>: '\
                     'skn test caregiver</p><p><b>Status</b>: Active</p></div>'
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
            'active': true,
            'type': [
              {
                'coding': [
                  {
                    'system': 'https://fhir.cerner.com/5a12b3e8-5941-4076-8592-1fb463441c68/codeSet/278',
                    'code': 'BBCLIENT',
                    'display': 'BB Client',
                    'userSelected': true
                  }
                ],
                'text': 'BB Client'
              },
              {
                'coding': [
                  {
                    'system': 'https://fhir.cerner.com/5a12b3e8-5941-4076-8592-1fb463441c68/codeSet/278',
                    'code': 'CAREGIVER',
                    'display': 'Caregiver',
                    'userSelected': true
                  }
                ],
                'text': 'Caregiver'
              }
            ],
            'name': 'skn test caregiver',
            'telecom': [
              {
                'extension': [
                  {
                    'valueCode': 'unknown',
                    'url': 'http://hl7.org/fhir/StructureDefinition/data-absent-reason'
                  }
                ]
              }
            ],
            'address': [
              {
                'extension': [
                  {
                    'valueCode': 'unknown',
                    'url': 'http://hl7.org/fhir/StructureDefinition/data-absent-reason'
                  }
                ]
              }
            ]
          }
        }
      ]
    }.freeze
  end
end
