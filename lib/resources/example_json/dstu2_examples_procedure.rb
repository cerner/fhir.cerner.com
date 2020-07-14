# frozen_string_literal: true

module Cerner
  module Resources

    DSTU2_PROCEDURE_ENTRY ||= {
      'resourceType': 'Procedure',
      'id': '2572382193',
      'meta': {
        'versionId': '0',
        'lastUpdated': '2020-06-11T04:02:54.000Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div><p><b>Procedure</b></p><p><b>Subject</b>: SMART, NANCY</p>'\
               '<p><b>Code</b>: Appendectomy;</p><p><b>Status</b>: Completed</p></div>'
      },
      'subject': {
        'reference': 'Patient/12724066',
        'display': 'SMART, NANCY'
      },
      'status': 'completed',
      'code': {
        'coding': [
          {
            'system': 'http://www.ama-assn.org/go/cpt',
            'code': '44950',
            'display': 'Appendectomy;'
          }
        ],
        'text': 'Appendectomy;'
      },
      'performedDateTime': '2002',
      'encounter': {
        'reference': 'Encounter/97953477'
      }
    }.freeze

    DSTU2_PROCEDURE_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '936b19a5-9a5b-4032-96b9-ebeaf55097e1',
      'type': 'searchset',
      'total': 2,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Procedure?patient=12724066'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Procedure/2572382193',
          'resource': DSTU2_PROCEDURE_ENTRY
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Procedure/2572383421',
          'resource': {
            'resourceType': 'Procedure',
            'id': '2572383421',
            'meta': {
              'versionId': '0',
              'lastUpdated': '2020-06-16T21:09:27.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div><p><b>Procedure</b></p><p><b>Subject</b>: SMART, NANCY</p><p><b>Code</b>: Coronary '\
                     'artery bypass, using arterial graft(s); 2 coronary arterial grafts</p><p><b>Status</b>: '\
                     'Completed</p></div>'
            },
            'subject': {
              'reference': 'Patient/12724066',
              'display': 'SMART, NANCY'
            },
            'status': 'completed',
            'code': {
              'coding': [
                {
                  'system': 'http://www.ama-assn.org/go/cpt',
                  'code': '33534',
                  'display': 'Coronary artery bypass, using arterial graft(s); two coronary arterial grafts'
                }
              ],
              'text': 'Coronary artery bypass, using arterial graft(s); 2 coronary arterial grafts'
            },
            'performedDateTime': '2018',
            'encounter': {
              'reference': 'Encounter/97953477'
            }
          }
        }
      ]
    }.freeze

  end
end
