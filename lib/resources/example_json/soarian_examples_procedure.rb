# frozen_string_literal: true

module Cerner
  module Resources

    SOARIAN_PROCEDURE_ENTRY ||= {
      'resourceType': 'Bundle',
      'id': '04849360-4587-4ba8-a804-a2c8488e5eee',
      'meta': {
        'lastUpdated': '2018-04-10T09:49:00.451-04:00'
      },
      'extension': [
        {
          'url': 'http://cerner.hs.fhir.com/StructureDefinition/bundle-result-messages',
          'valueExtension': {
            'url': 'http://cerner.hs.fhir.com/StructureDefinition/bundle-result-messages',
            'extension': [
              {
                'url': 'Severity',
                'valueString': 'info'
              },
              {
                'url': 'Code',
                'valueString': 'papi011'
              },
              {
                'url': 'Message',
                'valueString': 'This section represents data charted for a single or set of encounter’s '\
                               'procedures performed. It does not represent a comprehensive procedure list.'
              }
            ]
          }
        }
      ],
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'base-url/123abc/Procedure?patientId=D4292B7B-AEDF-4CEF-B783-BD3AA1B0DD27&_format=json'
        }
      ],
      'entry': [
        {
          'resource': {
            'resourceType': 'Procedure',
            'text': {
              'status': 'additional',
              'div': '&lt;li ccdRefId="ZCCDProcedureList.CCDProcedureList.1503">Completed Bronchoscopy, on '\
                     '6/22/2015 12:00 AM&lt;/li>'
            },
            'identifier': [
              {
                'use': 'official',
                'value': 'ZCCDProcedureList.CCDProcedureList.1503'
              }
            ],
            'subject': {
              'reference': 'Patient/7568F2F3-FC76-4185-A540-1DB56331A387'
            },
            'status': 'completed',
            'code': {
              'coding': [
                {
                  'system': 'http://snomed.info/sct',
                  'code': '10847001',
                  'display': 'Bronchoscopy'
                }
              ],
              'text': 'Bronchoscopy'
            }
          }
        },
        {
          'resource': {
            'resourceType': 'Procedure',
            'text': {
              'status': 'additional',
              'div': '&lt;li ccdRefId="ZCCDProcedureList.CCDProcedureList.3001">Completed Chest X-Ray, PA and '\
                     'Lateral View, on 6/22/2015 12:00 AM&lt;/li>'
            },
            'identifier': [
              {
                'use': 'official',
                'value': 'ZCCDProcedureList.CCDProcedureList.3001'
              }
            ],
            'subject': {
              'reference': 'Patient/7568F2F3-FC76-4185-A540-1DB56331A387'
            },
            'status': 'completed',
            'code': {
              'coding': [
                {
                  'system': 'http://snomed.info/sct',
                  'code': '168731009',
                  'display': 'Chest X-Ray, PA and Lateral View'
                }
              ],
              'text': 'Chest X-Ray, PA and Lateral View'
            }
          }
        },
        {
          'resource': {
            'resourceType': 'Procedure',
            'text': {
              'status': 'additional',
              'div': '&lt;li ccdRefId="ZCCDProcedureList.CCDProcedureList.1505">Completed Introduction of '\
                     'Cardiac Pacemaker System via Vein, on 10/5/2011 12:00 AM&lt;/li>'
            },
            'identifier': [
              {
                'use': 'official',
                'value': 'ZCCDProcedureList.CCDProcedureList.1505'
              }
            ],
            'subject': {
              'reference': 'Patient/7568F2F3-FC76-4185-A540-1DB56331A387'
            },
            'status': 'completed',
            'code': {
              'coding': [
                {
                  'system': 'http://snomed.info/sct',
                  'code': '175135009',
                  'display': 'Introduction of Cardiac Pacemaker System via Vein'
                }
              ],
              'text': 'Introduction of Cardiac Pacemaker System via Vein'
            }
          }
        }
      ]
    }.freeze

  end
end
