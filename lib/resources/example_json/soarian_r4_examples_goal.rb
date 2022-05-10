# frozen_string_literal: true

module Cerner
  module Resources

    SOARIAN_R4_GOAL_SEARCH_BY_PT ||= {
      "resourceType": 'Bundle',
      "id": '0cebf130-3245-405e-9e83-96c498cbd602',
      "type": 'searchset',
      "timestamp": '2022-05-10T01:45:56-04:00',
      "entry": [
        {
          "fullUrl": 'https://fhir-myrecord-sc.cerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Goal/A879904FD2FE4B2D90C89FDA84E1285F.NRS.43083',
          "resource": {
            "resourceType": 'Goal',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.NRS.43083',
            "meta": {
              "lastUpdated": '2020-11-15T16:21:24-05:00'
            },
            "lifecycleStatus": 'active',
            "subject": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid Santiago'
            },
            "target": [
              {
                "dueDate": '2022-11-30'
              }
            ],
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Goal</b><br /><b>Patient</b>:Mcgovern,Astrid Santiago<br /><b>Status</b>:active<br /><b>DueDate</b>:2022-11-30<br /><b>Description</b>:<ul><li>Goal 1: Decrease Sodium Intake</li></ul><br /></div>'
              # rubocop:enable Layout/LineLength
            },
            "description": {
              "text": '<ul><li>Goal 1: Decrease Sodium Intake</li></ul><br/>'
            }
          }
        }
      ],
      "link": [
        {
          "relation": 'self',
          "url": 'https://fhir-myrecord-sc.cerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Goal?patient=A879904FD2FE4B2D90C89FDA84E1285F&_format=json'
        }
      ]
    }.freeze

    SOARIAN_R4_GOAL_SEARCH_BY_ID ||= {
      "resourceType": 'Bundle',
      "id": '0cebf130-3245-405e-9e83-96c498cbd602',
      "type": 'searchset',
      "timestamp": '2022-05-10T01:45:56-04:00',
      "entry": [
        {
          "fullUrl": 'https://fhir-myrecord-sc.cerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Goal/A879904FD2FE4B2D90C89FDA84E1285F.NRS.43083',
          "resource": {
            "resourceType": 'Goal',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.NRS.43083',
            "meta": {
              "lastUpdated": '2020-11-15T16:21:24-05:00'
            },
            "lifecycleStatus": 'active',
            "subject": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid Santiago'
            },
            "target": [
              {
                "dueDate": '2022-11-30'
              }
            ],
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Goal</b><br /><b>Patient</b>:Mcgovern,Astrid Santiago<br /><b>Status</b>:active<br /><b>DueDate</b>:2022-11-30<br /><b>Description</b>:<ul><li>Goal 1: Decrease Sodium Intake</li></ul><br /></div>'
              # rubocop:enable Layout/LineLength
            },
            "description": {
              "text": '<ul><li>Goal 1: Decrease Sodium Intake</li></ul><br/>'
            }
          }
        }
      ],
      "link": [
        {
          "relation": 'self',
          "url": 'https://fhir-myrecord-sc.cerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Goal?patient=A879904FD2FE4B2D90C89FDA84E1285F&_format=json'
        }
      ]
    }.freeze

    SOARIAN_R4_GOAL_READ ||= {
      "resourceType": 'Goal',
      "id": 'A879904FD2FE4B2D90C89FDA84E1285F.NRS.43083',
      "meta": {
        "lastUpdated": '2020-11-15T16:21:24-05:00'
      },
      "lifecycleStatus": 'active',
      "subject": {
        "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
        "display": 'Mcgovern,Astrid Santiago'
      },
      "target": [
        {
          "dueDate": '2022-11-30'
        }
      ],
      "text": {
        "status": 'generated',
        # rubocop:disable Layout/LineLength
        "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Goal</b><br /><b>Patient</b>:Mcgovern,Astrid Santiago<br /><b>Status</b>:active<br /><b>DueDate</b>:2022-11-30<br /><b>Description</b>:<ul><li>Goal 1: Decrease Sodium Intake</li></ul><br /></div>'
        # rubocop:enable Layout/LineLength
      },
      "description": {
        "text": '<ul><li>Goal 1: Decrease Sodium Intake</li></ul><br/>'
      }
    }.freeze
  end
end
