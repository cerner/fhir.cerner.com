# frozen_string_literal: true

module Cerner
  module Resources
    R4_SERVICE_REQUEST ||= {
      'resourceType': 'ServiceRequest',
      'id': '309771111',
      'meta': {
        'versionId': '1',
        'lastUpdated': '2020-03-19T01:01:01.000Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns=\'http://www.w3.org/1999/xhtml\'><p><b>Service Request</b></p>'\
               '<p><b>Patient</b>: SMART, NANCY</p><p><b>Code</b>: Immunizations Quality Measures</p>'\
               '<p><b>Occurrence</b>: Mar  4, 2020  5:20 P.M. UTC</p><p><b>Priority</b>: Routine</p>'\
               '<p><b>Status</b>: Active</p><p><b>Intent</b>: Order</p>'\
               '<p><b>Requester</b>: SYSTEM, SYSTEM Cerner</p></div>'
      },
      'status': 'active',
      'intent': 'order',
      'category': [
        {
          'coding': [
            {
              'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/6000',
              'code': '2515',
              'display': 'Patient Care',
              'userSelected': true
            }
          ],
          'text': 'Patient Care'
        }
      ],
      'priority': 'routine',
      'code': {
        'coding': [
          {
            'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/200',
            'code': '22337316',
            'userSelected': true
          }
        ],
        'text': 'Immunizations Quality Measures'
      },
      'subject': {
        'reference': 'Patient/12724066',
        'display': 'SMART, NANCY'
      },
      'encounter': {
        'reference': 'Encounter/97953477'
      },
      'occurrenceDateTime': '2020-03-04T11:20:01.000-06:00',
      'authoredOn': '2020-03-04T11:20:01.000-06:00',
      'requester': {
        'reference': 'Practitioner/1',
        'display': 'SYSTEM, SYSTEM Cerner'
      }
    }.freeze

    R4_SERVICE_REQUEST_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': 'b630105a-2ec0-4877-8f8c-3b26b53cacd9',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/ServiceRequest?patient=12724066'
        }
      ],
      'entry': [
        R4_SERVICE_REQUEST
      ]
    }.freeze
  end
end
