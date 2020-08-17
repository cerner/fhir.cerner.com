# frozen_string_literal: true

module Cerner
  module Resources

    DSTU2_PERSON_ENTRY ||= {
      'resourceType': 'Person',
      'id': '12724067',
      'meta': {
        'versionId': '6',
        'lastUpdated': '2020-03-30T19:43:17.000Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div><p><b>Person</b></p><p><b>Name</b>: SMART, JOE</p><p><b>DOB</b>: Apr 29, 1976</p>'\
               '<p><b>Administrative Gender</b>: Male</p><p><b>Status</b>: Active</p></div>'
      },
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
      'active': true
    }.freeze

    DSTU2_COMBINED_PERSON_ENTRY ||= {
      'resourceType': 'Person',
      'id': '12742633',
      'active': false,
      'link': [
        {
          'target': {
            'reference': 'Person/12724067'
          }
        }
      ]
    }.freeze

    DSTU2_PERSON_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '50b40472-6a6f-4852-b26a-526804bf69ec',
      'type': 'searchset',
      'total': 1,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Person'\
                 '?identifier=urn%3Aoid%3A2.16.840.1.113883.6.1000%7C6931'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Person/12724067',
          'resource': DSTU2_PERSON_ENTRY
        }
      ]
    }.freeze

  end
end
