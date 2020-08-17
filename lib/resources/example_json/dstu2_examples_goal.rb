# frozen_string_literal: true

module Cerner
  module Resources
    DSTU2_GOAL ||= {
      'resourceType': 'Goal',
      'id': '183353727',
      'meta': {
        'versionId': '1594062592000',
        'lastUpdated': '2020-07-06T19:09:52.000Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div><p><b>Goal</b></p><p><b>Subject</b>: SMART, NANCY</p><p><b>Description</b>: '\
               'Walk 2 miles a day</p><p><b>Author</b>: SMART, NANCY</p><p><b>Status</b>: In Progress</p>'\
               '<p><b>Start Date</b>: Jul  6, 2020</p><p><b>Target Date</b>: Jul  1, 2021</p></div>'
      },
      'subject': {
        'reference': 'Patient/12724066',
        'display': 'SMART, NANCY'
      },
      'startDate': '2020-07-06',
      'targetDate': '2021-07-01',
      'category': [
        {
          'text': 'Family'
        }
      ],
      'description': 'Walk 2 miles a day',
      'status': 'in-progress',
      'statusDate': '2020-07-06',
      'author': {
        'reference': 'Patient/12724066',
        'display': 'SMART, NANCY'
      }
    }.freeze

    DSTU2_GOAL_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '94553cc2-fba5-410f-a0a4-fe760b4a8c72',
      'type': 'searchset',
      'total': 1,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Goal?patient=12724066'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Goal/183353727',
          'resource': DSTU2_GOAL
        }
      ]
    }.freeze

    DSTU2_GOAL_BUNDLE_BY_ID ||= {
      'resourceType': 'Bundle',
      'id': 'b399773c-51f2-43f1-a539-ec85e5d6609c',
      'type': 'searchset',
      'total': 1,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Goal?_id=183353727'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Goal/183353727',
          'resource': DSTU2_GOAL
        }
      ]
    }.freeze
  end
end
