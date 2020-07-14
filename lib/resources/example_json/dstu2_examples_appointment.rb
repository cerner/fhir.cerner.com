# frozen_string_literal: true

module Cerner
  module Resources

    DSTU2_APPOINTMENT_READ ||= {
      'resourceType': 'Appointment',
      'id': '4817508',
      'meta': {
        'versionId': '1',
        'lastUpdated': '2020-07-06T16:41:32.000Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div><p><b>Appointment</b></p><p><b>Description</b>: PT Eval</p><p><b>Type</b>: PT Eval</p>'\
               '<p><b>Start</b>: Oct  6, 2020  2:00 P.M. UTC</p><p><b>End</b>: Oct  6, 2020  3:00 P.M. UTC</p>'\
               '<p><b>Duration</b>: 60 Minutes</p><p><b>Status</b>: Booked</p><p><b>Reason</b>: torn ACL</p>'\
               '<p><b>Location</b>: OP Rehab1</p><p><b>Participants</b>:</p><p><b>Patient</b>: SMART, NANCY</p>'\
               '<br /><p><b>Participant</b>: Sisko, Jon PT</p><p><b>Primary</b>: Yes</p></div>'
      },
      'status': 'booked',
      'type': {
        'coding': [
          {
            'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/14249',
            'code': '26054577',
            'display': 'PT Eval',
            'userSelected': true
          }
        ],
        'text': 'PT Eval'
      },
      'reason': {
        'coding': [
          {
            'extension': [
              {
                'url': 'http://hl7.org/fhir/StructureDefinition/data-absent-reason',
                'valueCode': 'unsupported'
              }
            ]
          }
        ],
        'text': 'torn ACL'
      },
      'description': 'PT Eval',
      'start': '2020-10-06T14:00:00.000Z',
      'end': '2020-10-06T15:00:00.000Z',
      'minutesDuration': 60,
      'participant': [
        {
          'type': [
            {
              'coding': [
                {
                  'extension': [
                    {
                      'url': 'http://hl7.org/fhir/StructureDefinition/data-absent-reason',
                      'valueCode': 'unknown'
                    }
                  ]
                }
              ],
              'text': 'PT Therapists'
            },
            {
              'coding': [
                {
                  'system': 'http://hl7.org/fhir/v3/ParticipationType',
                  'code': 'PPRF',
                  'display': 'primary performer',
                  'userSelected': false
                }
              ]
            }
          ],
          'actor': {
            'display': 'Sisko, Jon PT'
          },
          'required': 'required',
          'status': 'accepted'
        },
        {
          'type': [
            {
              'coding': [
                {
                  'extension': [
                    {
                      'url': 'http://hl7.org/fhir/StructureDefinition/data-absent-reason',
                      'valueCode': 'unknown'
                    }
                  ]
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
            'reference': 'Location/21503380',
            'display': 'OP Rehab1'
          },
          'required': 'required',
          'status': 'accepted'
        }
      ]
    }.freeze

    DSTU2_APPOINTMENT_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': 'c1502c8d-2f96-4d7e-996c-5b39f96046c8',
      'type': 'searchset',
      'total': 1,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Appointment'\
                 '?date=2020&patient=12724066&_count=50'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Appointment'\
                     '/4817508',
          'resource': DSTU2_APPOINTMENT_READ
        }
      ]
    }.freeze

    DSTU2_APPOINTMENT_UPDATE ||= {
      'resourceType': 'Appointment',
      'id': '4817508',
      'meta': {
        'versionId': '1',
        'lastUpdated': '2020-07-06T16:41:32.000Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div><p><b>Appointment</b></p><p><b>Description</b>: PT Eval</p><p><b>Type</b>: PT Eval</p>'\
               '<p><b>Start</b>: Oct  6, 2020  2:00 P.M. UTC</p><p><b>End</b>: Oct  6, 2020  3:00 P.M. UTC</p>'\
               '<p><b>Duration</b>: 60 Minutes</p><p><b>Status</b>: Booked</p><p><b>Reason</b>: torn ACL</p>'\
               '<p><b>Location</b>: OP Rehab1</p><p><b>Participants</b>:</p><p><b>Patient</b>: SMART, NANCY</p>'\
               '<br /><p><b>Participant</b>: Sisko, Jon PT</p><p><b>Primary</b>: Yes</p></div>'
      },
      'status': 'accepted',
      'type': {
        'coding': [
          {
            'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/14249',
            'code': '26054577',
            'display': 'PT Eval',
            'userSelected': true
          }
        ],
        'text': 'PT Eval'
      },
      'reason': {
        'coding': [
          {
            'extension': [
              {
                'url': 'http://hl7.org/fhir/StructureDefinition/data-absent-reason',
                'valueCode': 'unsupported'
              }
            ]
          }
        ],
        'text': 'torn ACL'
      },
      'description': 'PT Eval',
      'start': '2020-10-06T14:00:00.000Z',
      'end': '2020-10-06T15:00:00.000Z',
      'minutesDuration': 60,
      'participant': [
        {
          'type': [
            {
              'coding': [
                {
                  'extension': [
                    {
                      'url': 'http://hl7.org/fhir/StructureDefinition/data-absent-reason',
                      'valueCode': 'unknown'
                    }
                  ]
                }
              ],
              'text': 'PT Therapists'
            },
            {
              'coding': [
                {
                  'system': 'http://hl7.org/fhir/v3/ParticipationType',
                  'code': 'PPRF',
                  'display': 'primary performer',
                  'userSelected': false
                }
              ]
            }
          ],
          'actor': {
            'display': 'Sisko, Jon PT'
          },
          'required': 'required',
          'status': 'accepted'
        },
        {
          'type': [
            {
              'coding': [
                {
                  'extension': [
                    {
                      'url': 'http://hl7.org/fhir/StructureDefinition/data-absent-reason',
                      'valueCode': 'unknown'
                    }
                  ]
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
            'reference': 'Location/21503380',
            'display': 'OP Rehab1'
          },
          'required': 'required',
          'status': 'accepted'
        }
      ]
    }.freeze

    DSTU2_APPOINTMENT_CREATE ||= {
      'resourceType': 'Appointment',
      'slot': [
        {
          'reference': 'Slot/24477854-21304876-62852027-0'
        }
      ],
      'participant': [
        {
          'actor': {
            'reference': 'Patient/12724066'
          },
          'status': 'needs-action'
        }
      ],
      'status': 'proposed'
    }.freeze
  end
end
