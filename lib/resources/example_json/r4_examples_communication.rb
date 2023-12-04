# frozen_string_literal: true

module Cerner
  module Resources

    R4_COMMUNICATION_ENTRY ||= {
      'resourceType': 'Communication',
      'id': '489580643.0.-4.prsnl',
      'meta': {
        'versionId': '0',
        'lastUpdated': '2020-07-16T21:31:35.457Z'
      },
      'text': {
        'status': 'generated',
        'div': "&lt;div xmlns=\'http://www.w3.org/1999/xhtml\'>&lt;p>&lt;b>Communication&lt;/b>&lt;/p>&lt;/div>"
      },
      'extension': [
        {
          'valueCodeableConcept': {
            'coding': [
              {
                'system': 'http://hl7.org/fhir/task-status',
                'code': 'completed',
                'display': 'Completed'
              }
            ],
            'text': 'Completed'
          },
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/email-status'
        }
      ],
      'inResponseTo': [
        {
          'reference': 'Communication/512657279.0.-4.prsnl'
        }
      ],
      'status': 'completed',
      'category': [
        {
          'coding': [
            {
              'system': 'http://terminology.hl7.org/CodeSystem/communication-category',
              'code': 'notification',
              'display': 'Notification'
            }
          ],
          'text': 'Notification'
        }
      ],
      'priority': 'urgent',
      'subject': {
        'reference': 'Patient/12505984',
        'display': 'JOHNSON, MARIE'
      },
      'topic': {
        'text': 'CDI Query'
      },
      'encounter': {
        'reference': 'Encounter/97739401'
      },
      'sent': '2020-07-16T21:31:35.457Z',
      'received': '2020-07-16T21:31:35.457Z',
      'recipient': [
        {
          'reference': 'Practitioner/12093978',
          'display': 'Stone, RN, Sally Cerner'
        },
        {
          'reference': 'Group/1568',
          'display': 'HEALTHE Receiver Group'
        }
      ],
      'sender': {
        'reference': 'Practitioner/11875977',
        'display': 'Stratford, Angela Cerner'
      },
      'payload': [
        {
          'contentReference': {
            'reference': 'Binary/489580643.0.-4.prsnl'
          }
        }
      ]
    }.freeze

    R4_COMMUNICATION_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': 'e989e20d-5cfc-4b11-ab43-95ba1a684063',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Communication?_id=489580643.0.-4.prsnl'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Communication/489580643.0.-4.prsnl',
          'resource': R4_COMMUNICATION_ENTRY
        }
      ]
    }.freeze

    R4_COMMUNICATION_CREATE ||= {
      'resourceType': 'Communication',
      'extension': [
        {
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/reply-to',
          'valueReference': {
            'reference': 'Group/6345478364'
          }
        }
      ],
      'status': 'completed',
      'category': [
        {
          'coding': [
            {
              'system': 'http://terminology.hl7.org/CodeSystem/communication-category',
              'code': 'notification'
            }
          ]
        }
      ],
      'priority': 'urgent',
      'subject': {
        'reference': 'Patient/12457978'
      },
      'topic': {
        'text': 'CDI Query'
      },
      'encounter': {
        'reference': 'Encounter/97697401'
      },
      'recipient': [
        {
          'reference': 'Practitioner/744113'
        },
        {
          'reference': 'Group/6345478364'
        }
      ],
      'sender': {
        'reference': 'Practitioner/593923'
      },
      'payload': [
        {
          'contentAttachment': {
            'contentType': 'text/plain',
            'data': 'Q29tbXVuaWNhdGlvbg=='
          }
        }
      ]
    }.freeze

    R4_COMMUNICATION_PATCH ||= [
      {
        'path': '/extension',
        'op': 'replace',
        'value': [
          {
            'valueCodeableConcept': {
              'coding': [
                {
                  'system': 'http://hl7.org/fhir/task-status',
                  'code': 'completed'
                }
              ]
            },
            'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/email-status'
          }
        ]
      }
    ].freeze
  end
end
