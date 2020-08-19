# frozen_string_literal: true

module Cerner
  module Resources

    R4_PROCEDURE_ENTRY ||= {
      'resourceType': 'Procedure',
      'id': '2572382193',
      'meta': {
        'versionId': '0',
        'lastUpdated': '2020-06-11T04:02:54Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Procedure</b></p><p><b>Patient</b>: SMART, NANCY</p>'\
               '<p><b>Procedure</b>: Appendectomy;</p><p><b>Date</b>: 2002</p><p><b>Status</b>: Completed</p>'\
               '<p><b>Recorder</b>: Cerner Test, Physician - Women&apos;s Health Cerner</p></div>'
      },
      'status': 'completed',
      'code': {
        'coding': [
          {
            'system': 'http://www.ama-assn.org/go/cpt',
            'code': '44950',
            'display': 'Appendectomy;',
            'userSelected': true
          }
        ],
        'text': 'Appendectomy;'
      },
      'subject': {
        'reference': 'Patient/12724066',
        'display': 'SMART, NANCY'
      },
      'encounter': {
        'reference': 'Encounter/97953477'
      },
      'performedDateTime': '2002',
      'recorder': {
        'reference': 'Practitioner/4122630',
        'display': "Cerner Test, Physician - Women's Health Cerner"
      }
    }.freeze

    R4_PROCEDURE_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '3b3b1ce0-3b6e-4a41-bbb4-9696e2f4b8ed',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Procedure?patient=12724066'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Procedure/2572382193',
          'resource': R4_PROCEDURE_ENTRY
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Procedure/2572383421',
          'resource': {
            'resourceType': 'Procedure',
            'id': '2572383421',
            'meta': {
              'versionId': '0',
              'lastUpdated': '2020-06-16T21:09:27Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Procedure</b></p><p><b>Patient</b>: SMART, NANCY'\
                     '</p><p><b>Procedure</b>: Coronary artery bypass, using arterial graft(s); 2 coronary arterial '\
                     'grafts</p><p><b>Date</b>: 2018</p><p><b>Status</b>: Completed</p><p><b>Recorder</b>: Cerner '\
                     'Test, Physician - Oncology Cerner</p></div>'
            },
            'status': 'completed',
            'code': {
              'coding': [
                {
                  'system': 'http://www.ama-assn.org/go/cpt',
                  'code': '33534',
                  'display': 'Coronary artery bypass, using arterial graft(s); two coronary arterial grafts',
                  'userSelected': true
                }
              ],
              'text': 'Coronary artery bypass, using arterial graft(s); 2 coronary arterial grafts'
            },
            'subject': {
              'reference': 'Patient/12724066',
              'display': 'SMART, NANCY'
            },
            'encounter': {
              'reference': 'Encounter/97953477'
            },
            'performedDateTime': '2018',
            'recorder': {
              'reference': 'Practitioner/763923',
              'display': 'Cerner Test, Physician - Oncology Cerner'
            }
          }
        }
      ]
    }.freeze

    R4_PROCEDURE_CREATE ||= {
      'resourceType': 'Procedure',
      'status': 'completed',
      'subject': {
        'reference': 'Patient/12724066'
      },
      'code': {
        'coding': [
          {
            'system': 'http://snomed.info/sct',
            'code': '119954001',
            'display': 'Adenoid excision (procedure)',
            'userSelected': true
          }
        ],
        'text': 'Adenoid excision (text)'
      },
      'encounter': {
        'reference': 'Encounter/97953477'
      },
      'location': {
        'display': 'Baseline East'
      },
      'performedDateTime': '2019-04-05T20:21:46Z',
      'performer': [
        {
          'function': {
            'coding': [
              {
                'system': 'http://snomed.info/sct',
                'code': '223366009',
                'display': 'Healthcare professional (occupation)',
                'userSelected': true
              }
            ],
            'text': 'Healthcare professional (occupation)'
          },
          'actor': {
            'reference': 'Practitioner/4122630'
          }
        }
      ],
      'note': [
        {
          'text': 'Procedure comment',
          'time': '2019-04-05T20:21:46Z',
          'authorReference': {
            'reference': 'Practitioner/4122630'
          }
        }
      ]
    }.freeze
  end
end
