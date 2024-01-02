# frozen_string_literal: true

module Cerner
  module Resources

    R4_PRACTITIONER_ENTRY ||= {
      'resourceType': 'Practitioner',
      'id': '4122622',
      'meta': {
        'versionId': '20',
        'lastUpdated': '2023-11-08T20:50:26.000Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns=\'http://www.w3.org/1999/xhtml\'><p><b>Practitioner</b></p><p><b>Name</b>: Cerner Test, '\
          'Physician - Hospitalist Cerner</p><p><b>Identifiers</b>: NPI: 1111111111</p><p><b>Gender</b>: Other</p>'\
          '<p><b>Status</b>: Active</p></div>'
      },
      'extension': [
        {
          'valueBoolean': true,
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/is-physician'
        }
      ],
      'identifier': [
        {
          'use': 'usual',
          'type': {
            'coding': [
              {
                'system': 'http://terminology.hl7.org/CodeSystem/v2-0203',
                'code': 'NPI',
                'display': 'National provider identifier'
              }
            ],
            'text': 'National Provider Identifier'
          },
          'system': 'http://hl7.org/fhir/sid/us-npi',
          'value': '1111111111',
          'period': {
            'start': '2015-10-14T05:00:00.000Z'
          }
        }
      ],
      'active': true,
      'name': [
        {
          'use': 'usual',
          'text': 'Cerner Test, Physician - Hospitalist Cerner',
          'family': 'Cerner Test',
          'given': [
            'Physician - Hospitalist',
            'Cerner'
          ],
          'period': {
            'start': '2015-09-22T20:58:42.000Z'
          }
        }
      ],
      'telecom': [
        {
          'system': 'phone',
          'value': '5555550001',
          'use': 'work'
        }
      ],
      'address': [
        {
          'use': 'billing',
          'text': '1989 Cornelia St\nKansas City, MO 64012\nUS',
          'line': [
            '1989 Cornelia St'
          ],
          'city': 'Kansas City',
          'district': 'Jackson',
          'state': 'MO',
          'postalCode': '64012',
          'country': 'US'
        },
        {
          'use': 'work',
          'text': '1234 Main\nKansas City, MO 64111\nUS',
          'line': [
            '1234 Main'
          ],
          'city': 'Kansas City',
          'state': 'MO',
          'postalCode': '64111',
          'country': 'US'
        }
      ],
      'gender': 'other',
      'qualification': [
        {
          'code': {
            'coding': [
              {
                'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/29600',
                'code': '677018',
                'display': 'AMA',
                'userSelected': true
              }
            ],
            'text': 'AMA'
          },
          'period': {
            'start': '2016-11-08T06:00:00.000Z'
          }
        }
      ]
    }.freeze

    R4_PRACTITIONER_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '7ec264d2-c7c7-49b2-8478-22351c82db73',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Practitioner?'\
            'identifier=http%3A%2F%2Fhl7.org%2Ffhir%2Fsid%2Fus-npi%7C1111111111'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Practitioner/4122622',
          'resource': R4_PRACTITIONER_ENTRY
        }
      ]
    }.freeze

    R4_PRACTITIONER_CREATE ||= {
      'resourceType': 'Practitioner',
      'active': true,
      'name': [
        {
          'family': 'Williams',
          'given': [
            'Rory', 'James'
          ],
          'prefix': [
            'Dr.'
          ],
          'suffix': [
            'M.D.'
          ],
          'period': {
            'start': '2019-12-01T00:00:00.000Z'
          }
        }
      ],
      'identifier': [
        {
          'type': {
            'coding': [
              {
                'code': 'DEA',
                'system': 'http://terminology.hl7.org/CodeSystem/v2-0203'
              }
            ]
          },
          'system': 'urn:oid:2.16.840.1.113883.4.814',
          'value': 'CW1234563',
          'period': {
            'start': '2019-12-01T00:00:00.000Z',
            'end': '2029-12-01T23:59:59.000Z'
          }
        }
      ]
    }.freeze

  end
end
