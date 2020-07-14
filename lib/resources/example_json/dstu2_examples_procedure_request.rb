# frozen_string_literal: true

module Cerner
  module Resources

    DSTU2_PROCEDURE_REQUEST_ENTRY ||= {
      'resourceType': 'ProcedureRequest',
      'id': '309771147',
      'meta': {
        'versionId': '1',
        'lastUpdated': '2020-03-19T01:01:01.000Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div><p><b>Procedure Request</b></p><p><b>Subject</b>: SMART, JOE</p>'\
               '<p><b>Procedure</b>: Immunizations Quality Measures</p><p><b>Scheduled</b>: Mar  4, 2020  '\
               '5:52 P.M. UTC</p><p><b>Status</b>: Accepted</p><p><b>Orderer</b>: SYSTEM, SYSTEM Cerner</p></div>'
      },
      'subject': {
        'reference': 'Patient/12724067',
        'display': 'SMART, JOE'
      },
      'code': {
        'text': 'Immunizations Quality Measures'
      },
      'scheduledDateTime': '2020-03-04T11:52:15.000-06:00',
      'encounter': {
        'reference': 'Encounter/97953480'
      },
      'status': 'accepted',
      'orderedOn': '2020-03-04T11:52:15.000-06:00',
      'orderer': {
        'reference': 'Practitioner/1',
        'display': 'SYSTEM, SYSTEM Cerner'
      }
    }.freeze

    DSTU2_PROCEDURE_REQUEST_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '311a684c-3bc5-42c0-8a4e-a75a1bb6c9fd',
      'type': 'searchset',
      'total': 1,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/ProcedureRequest'\
                 '?patient=12724067'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/ProcedureRequest'\
                     '/309771147',
          'resource': DSTU2_PROCEDURE_REQUEST_ENTRY
        }
      ]
    }.freeze

  end
end
