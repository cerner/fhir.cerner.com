# frozen_string_literal: true

module Cerner
  module Resources

    DSTU2_IMMUNIZATION_1 ||= {
      'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Immunization/M197197986',
      'resource': {
        'resourceType': 'Immunization',
        'id': 'M197197986',
        'meta': {
          'versionId': '1',
          'lastUpdated': '2019-12-26T13:12:59-06:00'
        },
        'text': {
          'status': 'generated',
          'div': '<div><p><b>Immunization</b></p><p><b>Status</b>: Completed</p><p><b>Vaccine</b>: '\
                 'tetanus toxoid</p><p><b>Date</b>: 1982</p><p><b>Patient Name</b>: SMART, NANCY</p><p>'\
                 '<b>Given</b>: Yes</p><p><b>Administered by</b>: Graham, Joshua</p><p><b>Reported</b>: Yes'\
                 '</p></div>'
        },
        'status': 'completed',
        'date': '1982',
        'vaccineCode': {
          'coding': [
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
        'wasNotGiven': false,
        'reported': true,
        'performer': {
          'reference': 'Practitioner/12724045',
          'display': 'Graham, Joshua'
        },
        'encounter': {
          'reference': 'Encounter/97939518'
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
    }.freeze

    DSTU2_IMMUNIZATION_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '13809232-3eab-4d1a-a1a4-42bc9aa6e381',
      'type': 'searchset',
      'total': 2,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Immunization'\
                 '?patient=12724066'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Immunization'\
                     '/M197197986',
          'resource': DSTU2_IMMUNIZATION_1
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Immunization'\
                     '/M197197982',
          'resource': {
            'resourceType': 'Immunization',
            'id': 'M197197982',
            'meta': {
              'versionId': '1',
              'lastUpdated': '2019-12-26T13:12:59-06:00'
            },
            'text': {
              'status': 'generated',
              'div': '<div><p><b>Immunization</b></p><p><b>Status</b>: Completed</p><p><b>Vaccine</b>: '\
                     'influenza virus vaccine, live</p><p><b>Date</b>: 2019</p><p><b>Patient Name</b>: '\
                     'SMART, NANCY</p><p><b>Given</b>: Yes</p><p><b>Administered by</b>: Graham, Joshua</p>'\
                     '<p><b>Reported</b>: Yes</p></div>'
            },
            'status': 'completed',
            'date': '2019',
            'vaccineCode': {
              'coding': [
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
            'wasNotGiven': false,
            'reported': true,
            'performer': {
              'reference': 'Practitioner/12724045',
              'display': 'Graham, Joshua'
            },
            'encounter': {
              'reference': 'Encounter/97939518'
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

  end
end
