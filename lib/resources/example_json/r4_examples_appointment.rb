# frozen_string_literal: true

module Cerner
  module Resources
    R4_APPOINTMENT_ENTRY ||= {
      'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Appointment/4817517',
      'resource': {
        'resourceType': 'Appointment',
        'id': '4817517',
        'meta': {
          'versionId': '1',
          'lastUpdated': '2020-07-06T18:46:08.000Z'
        },
        'text': {
          'status': 'generated',
          'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Appointment</b></p><p><b>Status</b>: Booked</p>'\
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

    R4_APPOINTMENT_VIDEO_VISIT_ENTRY ||= {
      'resourceType': 'Appointment',
      'id': '4817572',
      'meta': {
        'versionId': '2-1',
        'lastUpdated': '2020-07-11T05:05:01.000Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Appointment</b></p><p><b>Status</b>: No Show</p>'\
               '<p><b>Service Type</b>: Video Visit</p><p><b>Start</b>: Jul 10, 2020  1:00 P.M. UTC</p><p><b>End</b>: '\
               'Jul 10, 2020  1:15 P.M. UTC</p><p><b>Participants</b>: Patient: SMART, NANCY, Practitioner: Applegate '\
               'MD, Christina, Location: MX Clinic 1</p><p><b>Video Visit</b>: Yes</p></div>'
      },
      'contained': [
        {
          'resourceType': 'HealthcareService',
          'id': '28',
          'type': [
            {
              'text': 'Patient Virtual Meeting Room'
            }
          ],
          'telecom': [
            {
              'system': 'url',
              'value': 'https://www.google.com/',
              'period': {
                'start': '2020-07-13T08:00:00.000Z',
                'end': '2020-07-13T08:10:00.000Z'
              }
            }
          ]
        },
        {
          'resourceType': 'HealthcareService',
          'id': '31',
          'type': [
            {
              'text': 'Provider Virtual Meeting Room'
            }
          ],
          'telecom': [
            {
              'system': 'url',
              'value': 'https://www.google.com/',
              'period': {
                'start': '2020-07-13T08:00:00.000Z',
                'end': '2020-07-13T08:10:00.000Z'
              }
            }
          ]
        }
      ],
      'status': 'noshow',
      'serviceType': [
        {
          'coding': [
            {
              'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/14249',
              'code': '2572307911',
              'display': 'Video Visit',
              'userSelected': true
            }
          ],
          'text': 'Video Visit'
        }
      ],
      'reasonCode': [
        {
          'text': 'Testing Video Visit'
        }
      ],
      'description': 'Video Visit',
      'start': '2020-07-10T13:00:00.000Z',
      'end': '2020-07-10T13:15:00.000Z',
      'minutesDuration': 15,
      'participant': [
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
          'type': [
            {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/14250',
                  'code': '4574',
                  'display': 'Resource',
                  'userSelected': true
                }
              ],
              'text': 'Resource'
            },
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
            'display': 'Applegate MD, Christina'
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
        },
        {
          'type': [
            {
              'text': 'Patient Virtual Meeting Room'
            }
          ],
          'actor': {
            'reference': '#28'
          },
          'status': 'accepted'
        },
        {
          'type': [
            {
              'text': 'Provider Virtual Meeting Room'
            }
          ],
          'actor': {
            'reference': '#31'
          },
          'status': 'accepted'
        }
      ],
      'requestedPeriod': [
        {
          'start': '2020-07-10T13:00:00.000Z',
          'end': '2020-07-10T13:15:00.000Z'
        }
      ]
    }.freeze

    R4_APPOINTMENT_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '69eeaac3-5def-4ffd-8e51-04150cbb5385',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Appointment'\
                 '?date=ge2020-01-01T22%3A22%3A16.270Z&patient=4817663'
        }
      ],
      'entry': [
        'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Appointment/4817517',
        'resource': R4_APPOINTMENT_ENTRY
      ]
    }.freeze

    R4_APPOINTMENT_PATCH ||= [
      {
        'op': 'replace',
        'path': '/status',
        'value': 'cancelled'
      }
    ].freeze

    R4_APPOINTMENT_BOOKED_PATCH ||= [
      {
        'op': 'add',
        'path': '/slot',
        'value': [
          {
            'reference': 'Slot/24477854-21304876-62852027-0'
          }
        ]
      },
      {
        'op': 'replace',
        'path': '/status',
        'value': 'booked'
      }
    ].freeze

    R4_APPOINTMENT_REASONCODE_PATCH ||= [
      {
        'op': 'add',
        'path': '/slot',
        'value': [
          {
            'reference': 'Slot/24477854-21304876-62852027-0'
          }
        ]
      },
      {
        'op': 'replace',
        'path': '/status',
        'value': 'booked'
      },
      {
        'op': 'add',
        'path': '/reasonCode',
        'value': [
          {
            'text': 'I have a headache'
          }
        ]
      }
    ].freeze

    R4_APPOINTMENT_VIDEO_VISIT_ADD_PATCH ||= [
      {
        'op': 'add',
        'path': '/contained/0/telecom/0/value',
        'value': 'http://providerlink.vmr.net'
      },
      {
        'op': 'add',
        'path': '/contained/1/telecom/0/value',
        'value': 'http://patientlink.vmr.net'
      },
      {
        'op': 'add',
        'path': '/contained/0/telecom/0/period/start',
        'value': '2019-07-13T08:00:00.000Z'
      },
      {
        'op': 'add',
        'path': '/contained/0/telecom/0/period/end',
        'value': '2019-07-13T08:10:00.000Z'
      }
    ].freeze

    R4_APPOINTMENT_VIDEO_VISIT_REPLACE_PATCH ||= [
      {
        'op': 'replace',
        'path': '/contained/0/telecom/0/value',
        'value': 'http://providerlink.vmr.net'
      },
      {
        'op': 'replace',
        'path': '/contained/1/telecom/0/value',
        'value': 'http://patientlink.vmr.net'
      },
      {
        'op': 'replace',
        'path': '/contained/0/telecom/0/period/start',
        'value': '2019-07-13T08:00:00.000Z'
      },
      {
        'op': 'replace',
        'path': '/contained/0/telecom/0/period/end',
        'value': '2019-07-13T08:10:00.000Z'
      }
    ].freeze

    R4_APPOINTMENT_CREATE ||= {
      'resourceType': 'Appointment',
      'status': 'booked',
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
          'status': 'accepted'
        }
      ],
      'reasonCode': [
        {
          'text': 'I have a cramp'
        }
      ]
    }.freeze

    R4_PROPOSED_APPOINTMENT_CREATE ||= {
      'resourceType': 'Appointment',
      'status': 'proposed',
      'serviceType': [
        {
          'coding': [
            {
              'code': '394586005',
              'system': 'http://snomed.info/sct'
            }
          ]
        }
      ],
      'reasonCode': [
        {
          'text': 'I have a cramp'
        }
      ],
      'comment': 'Appointment request comment',
      'participant': [
        {
          'actor': {
            'reference': 'Patient/12724066'
          },
          'status': 'needs-action'
        },
        {
          'actor': {
            'reference': 'Location/21304876',
            'display': 'MX Clinic 1'
          },
          'status': 'needs-action'
        }
      ],
      'requestedPeriod': [
        {
          'start': '2020-02-07T13:28:17-05:00',
          'end': '2021-02-07T13:28:17-05:00'
        }
      ]
    }.freeze
  end
end
