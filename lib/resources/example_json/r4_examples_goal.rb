# frozen_string_literal: true

module Cerner
  module Resources
    R4_GOAL ||= {
      'resourceType': 'Goal',
      'id': '187042107',
      'meta': {
        'versionId': '1607035687000',
        'lastUpdated': '2020-12-03T22:48:07.000Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Goal</b></p><p><b>Subject</b>: SMART, TIMMY</p>'\
               '<p><b>Description</b>: Maintain a healthy weight</p><p><b>Expressed By</b>: SMART, TIMMY</p><p><p>'\
               '<b>Status</b>: Active</p><p><b>Start Date</b>: Dec  3, 2020</p>'\
               '<p><b>Target Date</b>: Dec 31, 2020</p></div>'
      },
      'lifecycleStatus': 'active',
      'achievementStatus': {
        'coding': [
          {
            'system': 'http://hl7.org/fhir/goal-achievement',
            'code': 'achieved',
            'display': 'Achieved'
          }
        ],
        'text': 'Achieved'
      },
      'category': [
        {
          'coding': [
            {
              'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4003016',
              'code': '25481501',
              'display': 'Physiologic',
              'userSelected': true
            },
            {
              'system': 'http://terminology.hl7.org/CodeSystem/goal-category',
              'code': 'physiotherapy',
              'display': 'Physiotherapy',
              'userSelected': false
            }
          ],
          'text': 'Physiologic'
        }
      ],
      'description': {
        'text': 'Maintain a healthy weight'
      },
      'subject': {
        'reference': 'Patient/12724069',
        'display': 'SMART, TIMMY'
      },
      'startDate': '2020-12-03',
      'target': [
        {
          'dueDate': '2020-12-31'
        }
      ],
      'statusDate': '2020-12-03',
      'expressedBy': {
        'reference': 'Patient/12724069',
        'display': 'SMART, TIMMY'
      },
      'note': [
        {
          'authorReference': {
            'reference': 'Practitioner/995932',
            'display': 'Smart, John'
          },
          'time': '2020-11-12T16:14:20.000Z',
          'text': 'Daily exercise'
        }
      ]
    }.freeze

    R4_GOAL_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': 'c0dab9bc-3a6e-4f0f-b0b7-213ed80c3d4b',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Goal?patient=12724069'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Goal/187042107',
          'resource': R4_GOAL
        }
      ]
    }.freeze

    R4_GOAL_BUNDLE_BY_ID ||= {
      'resourceType': 'Bundle',
      'id': 'b399773c-51f2-43f1-a539-ec85e5d6609c',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Goal?_id=187042107'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Goal/187042107',
          'resource': R4_GOAL
        }
      ]
    }.freeze

    R4_GOAL_BUNDLE_BY_DATE ||= {
      'resourceType': 'Bundle',
      'id': 'b399773c-51f2-43f1-a539-ec85e5d6609c',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Goal?patient=12724069&target-date=gt2021-01-12'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Goal/187042107',
          'resource': R4_GOAL
        }
      ]
    }.freeze

    R4_GOAL_PATIENT_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': 'c0dab9bc-3a6e-4f0f-b0b7-213ed80c3d4b',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Goal?patient=12724069'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Goal/187042107',
          'resource': R4_GOAL
        }
      ]
    }.freeze

    R4_GOAL_ENTERED_IN_ERROR_STATUS ||= {
      'resourceType': 'Goal',
      'id': '187042111',
      'meta': {
        'versionId': '1607035809000',
        'lastUpdated': '2020-12-03T22:50:09.000Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Goal</b></p><p><b>Subject</b>: SMART, TIMMY</p>'\
                '<p><b>Description</b>: Error</p><p><b>Status</b>: Entered in Error</p></div>'
      },
      'lifecycleStatus': 'entered-in-error',
      'description': {
        'coding': [
          {
            'system': 'http://terminology.hl7.org/CodeSystem/data-absent-reason',
            'code': 'error',
            'display': 'Error'
          }
        ],
        'text': 'Error'
      },
      'subject': {
        'reference': 'Patient/12724069',
        'display': 'SMART, TIMMY'
      }
    }.freeze
  end
end
