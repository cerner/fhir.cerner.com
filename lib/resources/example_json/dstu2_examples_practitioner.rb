# frozen_string_literal: true

module Cerner
  module Resources

    DSTU2_PRACTITIONER_ENTRY ||= {
      'resourceType': 'Practitioner',
      'id': '4122622',
      'meta': {
        'versionId': '19',
        'lastUpdated': '2021-07-01T13:16:02.000Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div><p><b>Practitioner</b></p><p><b>Name</b>: Cerner Test, Physician - Hospitalist Cerner</p>'\
          '<p><b>Identifiers</b>: NPI: 1111111111</p><p><b>Status</b>: Active</p></div>'
      },
      'identifier': [
        {
          'use': 'usual',
          'type': {
            'coding': [
              {
                'system': 'http://hl7.org/fhir/v2/0203',
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
      'name': {
        'use': 'usual',
        'text': 'Cerner Test, Physician - Hospitalist Cerner',
        'family': [
          'Cerner Test'
        ],
        'given': [
          'Physician - Hospitalist',
          'Cerner'
        ],
        'period': {
          'start': '2015-09-22T20:58:42.000Z'
        }
      }
    }.freeze

    DSTU2_PRACTITIONER_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': 'b9c0e2fa-cba0-4325-ae5f-4b5bd9916d86',
      'type': 'searchset',
      'total': 1,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Practitioner?_id=4122622'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Practitioner/4122622',
          'resource': DSTU2_PRACTITIONER_ENTRY
        }
      ]
    }.freeze

  end
end
