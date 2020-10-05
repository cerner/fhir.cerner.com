# frozen_string_literal: true

module Cerner
  module Resources

    R4_CARE_TEAM_ENTRY ||= {
      'resourceType': 'CareTeam',
      'id': 'CT-119078440-34768489-17490349-4048128-0-22554767',
      'meta': {
          'versionId': 1584980008,
          'lastUpdated': '2020-03-23T16:13:28Z'
      },
      'text': {
          'status': 'generated',
          'div': '<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Care Team</b></p><p><b>Patient</b>: FHIR, FIRE3</p><p><b>Care Team Name</b>: Psychology;Blue Team</p><p><b>Status</b>: Active</p><p><b>Category</b>: Encounter-focused care team</p><p><b>Encounter</b>: 34768489</p><p><b>Participant</b>:</p><ul><li>Name:Dickey, Bo; Role:Psychologist (occupation)</li></ul></div>'
      },
      'status': 'active',
      'category': [
          {
              'coding': [
                  {
                      'system': 'http://loinc.org',
                      'code': 'LA27976-2',
                      'display': 'Encounter-focused care team'
                  }
              ],
              'text': 'Encounter-focused care team'
          }
      ],
      'name': 'Psychology;Blue Team',
      'subject': {
          'reference': 'Patient/119078440',
          'display': 'FHIR, FIRE3'
      },
      'encounter': {
          'reference': 'Encounter/34768489'
      },
      'participant': [
          {
              'role': [
                  {
                      'coding': [
                          {
                              'system': 'http://snomed.info/sct',
                              'code': '59944000',
                              'display': 'Psychologist (occupation)'
                          }
                      ],
                      'text': 'Psychologist (occupation)'
                  }
              ],
              'member': {
                  'reference': 'Practitioner/17490349',
                  'display': 'Dickey, Bo'
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
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/CareTeam?patient=119078440&category=encounter'
        },
        {
          'relation': 'next',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/CareTeam?patient=119078440'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/CareTeam/CT-119078440-34768489-17490349-4048128-0-22554767',
          'resource': R4_CARE_TEAM_ENTRY
        }
      ]
    }.freeze
  end
end
