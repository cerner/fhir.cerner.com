# frozen_string_literal: true

module Cerner
  module Resources
    R4_IMMUNIZATION_ENTRY ||= {
      'resourceType': 'Immunization',
      'id': 'M197197986',
      'meta': {
        'versionId': '1',
        'lastUpdated': '2019-12-26T13:12:59-06:00'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Immunization</b></p><p><b>Vaccine</b>: tetanus '\
               'toxoid</p><p><b>Occurrence</b>: 1982</p><p><b>Patient</b>: SMART, NANCY</p><p><b>Status</b>: '\
               'Completed</p></div>'
      },
      'status': 'completed',
      'vaccineCode': {
        'coding': [
          {
            'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/72',
            'code': '2798767',
            'display': 'tetanus toxoid',
            'userSelected': true
          },
          {
            'system': 'http://hl7.org/fhir/sid/cvx',
            'code': '112',
            'display': 'tetanus toxoid, unspecified formulation',
            'userSelected': false
          }
        ],
        'text': 'tetanus toxoid'
      },
      'patient': {
        'reference': 'Patient/12724066',
        'display': 'SMART, NANCY'
      },
      'encounter': {
        'reference': 'Encounter/97939518'
      },
      'occurrenceDateTime': '1982',
      'primarySource': false,
      'reportOrigin': {
        'coding': [
          {
            'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/30200',
            'code': '679978',
            'display': 'Self',
            'userSelected': true
          },
          {
            'system': 'http://terminology.hl7.org/CodeSystem/immunization-origin',
            'code': 'recall',
            'display': 'Parent/Guardian/Patient Recall',
            'userSelected': false
          }
        ],
        'text': 'Self'
      },
      'location': {
        'reference': 'Location/32545019',
        'display': 'A'
      },
      'doseQuantity': {
        'value': 0.0,
        'unit': 'unknown unit',
        'system': 'http://unitsofmeasure.org',
        'code': '{unknownunit}'
      }
    }.freeze

    R4_IMMUNIZATION_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '24685278-6535-4770-9705-974db80e729b',
      'type': 'searchset',
      'total': 2,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Immunization?patient=12724066'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Immunization/M197197986',
          'resource': R4_IMMUNIZATION_ENTRY
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Immunization/M197197982',
          'resource': {
            'resourceType': 'Immunization',
            'id': 'M197197982',
            'meta': {
              'versionId': '1',
              'lastUpdated': '2019-12-26T13:12:59-06:00'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Immunization</b></p><p><b>Vaccine</b>: '\
                     'influenza virus vaccine, live</p><p><b>Occurrence</b>: 2019</p><p><b>Patient</b>: SMART, NANCY'\
                     '</p><p><b>Status</b>: Completed</p></div>'
            },
            'status': 'completed',
            'vaccineCode': {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/72',
                  'code': '2820756',
                  'display': 'influenza virus vaccine, live',
                  'userSelected': true
                },
                {
                  'system': 'http://hl7.org/fhir/sid/cvx',
                  'code': '111',
                  'display': 'influenza, live, intranasal',
                  'userSelected': false
                }
              ],
              'text': 'influenza virus vaccine, live'
            },
            'patient': {
              'reference': 'Patient/12724066',
              'display': 'SMART, NANCY'
            },
            'encounter': {
              'reference': 'Encounter/97939518'
            },
            'occurrenceDateTime': '2019',
            'primarySource': false,
            'reportOrigin': {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/30200',
                  'code': '679978',
                  'display': 'Self',
                  'userSelected': true
                },
                {
                  'system': 'http://terminology.hl7.org/CodeSystem/immunization-origin',
                  'code': 'recall',
                  'display': 'Parent/Guardian/Patient Recall',
                  'userSelected': false
                }
              ],
              'text': 'Self'
            },
            'location': {
              'reference': 'Location/32545019',
              'display': 'A'
            },
            'doseQuantity': {
              'value': 0.0,
              'unit': 'unknown unit',
              'system': 'http://unitsofmeasure.org',
              'code': '{unknownunit}'
            }
          }
        }
      ]
    }.freeze

    R4_IMMUNIZATION_CREATE ||= {
      'resourceType': 'Immunization',
      'status': 'completed',
      'occurrenceDateTime': '2019-06-30T10:35:00-05:00',
      'vaccineCode': {
        'coding': [
          {
            'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/72',
            'code': '2798767',
            'display': 'tetanus toxoid',
            'userSelected': false
          }
        ],
        'text': 'tetanus toxoid'
      },
      'patient': {
        'reference': 'Patient/12724066'
      },
      'encounter': {
        'reference': 'Encounter/97939518'
      },
      'reportOrigin': {
        'coding': [
          {
            'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/30200',
            'code': '679978',
            'display': 'Self',
            'userSelected': true
          }
        ],
        'text': 'Self'
      },
      # TODO: Update Site and Route
      'site': {
        'coding': [
          {
            'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/97',
            'code': '610',
            'display': 'Right Hand',
            'userSelected': false
          }
        ],
        'text': 'Right Hand'
      },
      'route': {
        'coding': [
          {
            'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4001',
            'code': '318167',
            'display': 'IM',
            'userSelected': false
          }
        ],
        'text': 'IM'
      }
    }.freeze

    R4_IMMUNIZATION_UPDATE ||= {
      'resourceType': 'Immunization',
      'id': 'M197197986',
      'status': 'completed',
      'occurrenceDateTime': '2019-07-15T10:35:00-05:00',
      'vaccineCode': {
        'coding': [
          {
            'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/72',
            'code': '2798767',
            'display': 'tetanus toxoid',
            'userSelected': true
          }
        ],
        'text': 'tetanus toxoid'
      },
      'patient': {
        'reference': 'Patient/12724066'
      },
      'encounter': {
        'reference': 'Encounter/97939518'
      },
      'reportOrigin': {
        'coding': [
          {
            'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/30200',
            'code': '679978',
            'display': 'Self',
            'userSelected': true
          }
        ],
        'text': 'Self'
      },
      'performer': [
        {
          'function': {
            'coding': [
              {
                'system': 'http://terminology.hl7.org/CodeSystem/v2-0443',
                'code': 'AP',
                'display': 'Administering Provider'
              }
            ],
            'text': 'Administering Provider'
          },
          'actor': {
            'reference': 'Practitioner/4122622'
          }
        }
      ]
    }.freeze
  end
end
