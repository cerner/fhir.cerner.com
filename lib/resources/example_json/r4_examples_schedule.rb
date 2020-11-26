# frozen_string_literal: true

module Cerner
  module Resources
    R4_SCHEDULE_ENTRY ||= {
      'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Schedule/4817517',
      'resource': {
        'resourceType': 'Schedule',
        'id': '4817517',
        'meta': {
          'versionId': '1',
          'lastUpdated': '2020-07-06T18:46:08.000Z'
        },
        'text': {
          'status': 'generated',
          'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Schedule</b></p><p><b>Status</b>: booked</p>'\
                 '<p><b>Service Type</b>: Established Patient</p><p><b>Start</b>: Jul  8, 2020  1:00 P.M. UTC</p>'\
                 '<p><b>End</b>: Jul  8, 2020  1:15 P.M. UTC</p><p><b>Participants</b>: Practitioner: Cerner Test, '\
                 'Physician - Primary Care Cerner, Patient: SMART, NANCY, Location: MX Clinic 1</p></div>'
        },
        'status': 'booked',
        'serviceType': [
          {
            'coding': [
              {
                'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/14249',
                'code': '24477854',
                'display': 'Established Patient',
                'userSelected': true
              }
            ],
            'text': 'Established Patient'
          }
        ],
        'description': 'Established Patient',
        'start': '2020-07-08T13:00:00.000Z',
        'end': '2020-07-08T13:15:00.000Z',
        'minutesDuration': 15,
        'participant': [
          {
            'type': [
              {
                'coding': [
                  {
                    'system': 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                    'code': 'PPRF',
                    'display': 'primary performer'
                  }
                ]
              }
            ],
            'actor': {
              'reference': 'Practitioner/593923',
              'display': 'Cerner Test, Physician - Primary Care Cerner'
            },
            'required': 'required',
            'status': 'accepted'
          },
          {
            'type': [
              {
                'coding': [
                  {
                    'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/14250',
                    'code': '4572',
                    'display': 'Patient',
                    'userSelected': true
                  }
                ],
                'text': 'Patient'
              }
            ],
            'actor': {
              'reference': 'Patient/12724066',
              'display': 'SMART, NANCY'
            },
            'required': 'required',
            'status': 'accepted'
          },
          {
            'actor': {
              'reference': 'Location/21304876',
              'display': 'MX Clinic 1'
            },
            'required': 'required',
            'status': 'accepted'
          }
        ],
        'requestedPeriod': [
          {
            'start': '2020-07-08T13:00:00.000Z',
            'end': '2020-07-08T13:15:00.000Z'
          }
        ]
      }
    }.freeze

    R4_SCHEDULE_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '69eeaac3-5def-4ffd-8e51-04150cbb5385',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Schedule'\
                 '?date=ge2020-01-01T22%3A22%3A16.270Z&patient=4817663'
        }
      ],
      'entry': [
        'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Schedule/4817517',
        'resource': R4_SCHEDULE_ENTRY
      ]
    }.freeze
  end
end
