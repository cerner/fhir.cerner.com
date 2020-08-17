# frozen_string_literal: true

module Cerner
  module Resources

    DSTU2_ENCOUNTER ||= {
      'resourceType': 'Encounter',
      'id': '97953477',
      'meta': {
        'versionId': '2',
        'lastUpdated': '2020-03-05T16:53:11.000Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div><p><b>Encounter</b></p><p><b>Patient Name</b>: SMART, NANCY</p><p><b>Location</b>'\
               ': Model Hospital, MX Hospital, MAT, MB01, A</p><p><b>Type</b>: Inpatient</p><p><b>Class</b>: '\
               'Inpatient</p><p><b>Status</b>: in Progress</p><p><b>Period Start Date</b>: Mar  4, 2020  5:01 '\
               'P.M. UTC</p><p><b>Reason For Visit</b>: Maternity</p><p><b>Attending Physician</b>: Carter, '\
               'Kristin Cerner</p></div>'
      },
      'extension': [
        {
          'url': 'https://fhir-ehr.cerner.com/dstu2/StructureDefinition/encounter-guarantor',
          'extension': [
            {
              'url': 'party',
              'valueReference': {
                'reference': 'Patient/12724066',
                'display': 'SMART, NANCY'
              }
            },
            {
              'url': 'period',
              'valuePeriod': {
                'start': '2020-03-04T17:19:56.000Z'
              }
            }
          ]
        }
      ],
      'identifier': [
        {
          'use': 'usual',
          'type': {
            'text': 'FIN NBR'
          },
          'value': '16000',
          'period': {
            'start': '2020-03-04T17:19:56.000Z'
          }
        }
      ],
      'status': 'in-progress',
      'class': 'inpatient',
      'type': [
        {
          'text': 'Inpatient'
        }
      ],
      'priority': {
        'text': 'Labor and Delivery'
      },
      'patient': {
        'reference': 'Patient/12724066',
        'display': 'SMART, NANCY'
      },
      'participant': [
        {
          'type': [
            {
              'coding': [
                {
                  'system': 'http://hl7.org/fhir/v3/ParticipationType',
                  'code': 'ADM',
                  'display': 'admitter',
                  'userSelected': false
                }
              ],
              'text': 'Admitting Physician'
            }
          ],
          'period': {
            'start': '2020-03-05T16:53:11.000Z'
          },
          'individual': {
            'reference': 'Practitioner/4122622',
            'display': 'Cerner Test, Physician - Hospitalist Cerner'
          }
        },
        {
          'type': [
            {
              'coding': [
                {
                  'system': 'http://hl7.org/fhir/v3/ParticipationType',
                  'code': 'ATND',
                  'display': 'attender',
                  'userSelected': false
                }
              ],
              'text': 'Attending Physician'
            }
          ],
          'period': {
            'start': '2020-03-05T16:53:11.000Z'
          },
          'individual': {
            'reference': 'Practitioner/11817978',
            'display': 'Carter, Kristin Cerner'
          }
        },
        {
          'type': [
            {
              'coding': [
                {
                  'system': 'http://hl7.org/fhir/v3/ParticipationType',
                  'code': 'ATND',
                  'display': 'attender',
                  'userSelected': false
                }
              ],
              'text': 'Attending Physician'
            }
          ],
          'period': {
            'start': '2020-03-04T17:19:56.000Z',
            'end': '2020-03-05T16:53:11.000Z'
          },
          'individual': {
            'reference': 'Practitioner/4122630',
            'display': "Cerner Test, Physician - Women's Health Cerner"
          }
        },
        {
          'type': [
            {
              'text': 'Other'
            }
          ],
          'period': {
            'start': '2020-04-21T16:19:37.000Z'
          },
          'individual': {
            'reference': 'Practitioner/12742510',
            'display': 'Kaehr, Andrew'
          }
        },
        {
          'type': [
            {
              'text': 'Registered Nurse'
            }
          ],
          'period': {
            'start': '2020-03-05T16:53:00.000Z',
            'end': '2020-03-06T09:01:27.000Z'
          },
          'individual': {
            'reference': 'Practitioner/683925',
            'display': "Cerner Test, Women's Health - Nurse Cerner"
          }
        },
        {
          'type': [
            {
              'coding': [
                {
                  'system': 'http://hl7.org/fhir/v3/ParticipationType',
                  'code': 'REF',
                  'display': 'referrer',
                  'userSelected': false
                }
              ],
              'text': 'Referring Physician'
            }
          ],
          'period': {
            'start': '2020-03-04T17:19:56.000Z'
          },
          'individual': {
            'reference': 'Practitioner/4122630',
            'display': "Cerner Test, Physician - Women's Health Cerner"
          }
        }
      ],
      'period': {
        'start': '2020-03-04T17:01:59.000Z'
      },
      'reason': [
        {
          'text': 'Maternity'
        }
      ],
      'hospitalization': {
        'admitSource': {
          'coding': [
            {
              'system': 'http://hl7.org/fhir/admit-source',
              'code': 'other',
              'display': 'Other',
              'userSelected': false
            }
          ],
          'text': 'Information Not Available'
        }
      },
      'location': [
        {
          'location': {
            'reference': 'Location/31100793',
            'display': 'Model Hospital, MX Hospital, MAT, MB01, A'
          },
          'status': 'active'
        }
      ],
      'serviceProvider': {
        'reference': 'Organization/675844'
      }
    }.freeze

    DSTU2_ENCOUNTER_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '73b0b7c8-e5e0-4e72-96f9-dcfb257fc40a',
      'type': 'searchset',
      'total': 1,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Encounter'\
                 '?patient=12724066'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Encounter/97953477',
          'resource': DSTU2_ENCOUNTER
        }
      ]
    }.freeze

  end
end
