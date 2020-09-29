# frozen_string_literal: true

module Cerner
  module Resources

    # TODO: Missing data
    R4_CARE_TEAM_ENTRY ||= {
      'resourceType': 'CareTeam',
      'id': 'SA-1316020-2076906-7016273-0-0-0',
      'meta': {
        'versionId': '1',
        'lastUpdated': '2016-03-10T13:43:45.000-06:00'
      },
      'text': {
        'status': 'additional',
        'div': '&lt;div xmlns="http://www.w3.org/1999/xhtml"&gt;&lt;p&gt;&lt;b&gt;Care Team&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: new, testfa2&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Category&lt;/b&gt;: Encounter-focused care team&lt&lt;/p&gt;&lt;p&gt;Encounter&lt;/b&gt;: 2076906&&lt;/p&gt;lt;p&gt;&lt;b&gt;Participant&lt;/b&gt;:&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Name:, Parimi Vaishnavi; Role:Respiratory Therapy&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;' # rubocop:disable Layout/LineLength
      },
      'status': 'active',
      "category": [
        {
          "coding": [
            {
              "system": 'http://loinc.org',
              "code": 'LA27976-2',
              "display": 'Encounter-focused care team'
            }
          ],
          "text": 'Encounter-focused care team'
        }
      ],
      "subject": {
        "reference": 'Patient/1316020',
        "display": 'new, testfa2'
      },
      "encounter": {
        "reference": 'Encounter/2076906'
      },
      "participant": [
        {
          "role": [
            {
              "text": 'Respiratory Therapy'
            }
          ],
          "member": {
            "reference": 'Practitioner/7016273',
            "display": ', Parimi Vaishnavi'
          }
        }
      ]
    }.freeze

    R4_CARE_TEAM_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '8c34294c-ba46-492d-bb8e-9937db0ddd5b',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/CareTeam?patient='\
                 '1316020&category=assess-team'
        },
        {
          'relation': 'next',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/CareTeam?patient=1316020'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/CareTeam/SA-1316020-2076906-7016273-0-0-0',
          'resource': R4_CARE_TEAM_ENTRY
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/CareTeam/SA-1316020-2076906-7016273-0-0-0',
          'resource': {
            'resourceType': 'CareTeam',
            'id': 'SA-1316020-2076906-7016273-0-0-0',
            'meta': {
              'versionId': '1',
              'lastUpdated': '2015-10-23T10:28:03.000-05:00'
            },
            'text': {
              'status': 'additional',
              'div': '&lt;div xmlns="http://www.w3.org/1999/xhtml"&gt;&lt;p&gt;&lt;b&gt;Care Team&lt;/b&gt;&lt;/p&gt;'\
                     '&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: Houde, Harry Potter&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;'\
                     '/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;p&gt;&lt;b&gt;Category&lt;/b&gt;: Encounter-focused care team'\
                     '&lt;/p&gt;&lt;p&gt;&lt;p&gt;Encounter&lt;/b&gt;: 2076906&&lt;/p&gt;lt;p&gt;&lt;b&gt;Participant&lt;'\
                     '/b&gt;:&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Name:, Parimi Vaishnavi; Role:Respiratory Therapy&lt;/li&gt;&lt'\
                     ';/ul&gt;&lt;/div&gt;'
            },
            'status': 'active',
            'category': [
              {
                'coding': [
                  {
                    'system': 'http://hl7.org/fhir/us/core/CodeSystem/careteam-category',
                    'code': 'assess-team',
                    'display': 'Encounter-focused care team'
                  }
                ],
                'text': 'Encounter-focused care team'
              }
            ],
            'title': 'Admission H & P',
            'subject': {
              'reference': 'Patient/1316020',
              'display': 'Houde, Harry Potter'
            },
            'encounter': {
              'reference': 'Encounter/1693915'
            },
            "participant": [
              {
                "role": [
                  {
                    "text": 'Respiratory Therapy'
                  }
                ],
                "member": {
                  "reference": 'Practitioner/7016273',
                  "display": ', Parimi Vaishnavi'
                }
              }
            ]
          }
        }
      ]
    }.freeze
  end
  end
