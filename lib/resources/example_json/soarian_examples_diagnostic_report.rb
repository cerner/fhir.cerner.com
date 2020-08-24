# frozen_string_literal: true

module Cerner
  module Resources

    SOARIAN_DIAGNOSTIC_REPORT_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': 'b295a021-37a3-4c56-87f8-10ba2415bba8',
      'meta': {
        'lastUpdated': '2018-04-10T09:45:51.632-04:00'
      },
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-myrecord.sandboxcerner.com/dstu2/0e885770-571b-4c0c-b30f-21df9a058d0d/DiagnosticReport'\
                 '?patientId=D4292B7B-AEDF-4CEF-B783-BD3AA1B0DD27&_format=json&page=2'
        },
        {
          'relation': 'next',
          'url': 'https://fhir-myrecord.sandboxcerner.com/dstu2/0e885770-571b-4c0c-b30f-21df9a058d0d/DiagnosticReport'\
                 '?patientId=D4292B7B-AEDF-4CEF-B783-BD3AA1B0DD27&_format=json&page=3'
        }
      ],
      'entry': [
        {
          'resource': {
            'resourceType': 'DiagnosticReport',
            'text': {
              'status': 'additional',
              'div': '&lt;span ccdRefId="ZCCD-Results.Chemistry..624">&lt;b>Hgb &lt;/b>10.2 g/dl&lt;font '\
                     'color="#737373">   (Reference Range: not available)&lt;/font>&lt;br/>&lt;/span>'
            },
            'identifier': [
              {
                'use': 'official',
                'value': 'ZCCD-Results.Chemistry..624'
              }
            ],
            'status': 'final',
            'code': {
              'coding': [
                {
                  'system': 'http://loinc.org',
                  'code': '30313-1'
                }
              ]
            },
            'subject': {
              'reference': 'Patient/7568F2F3-FC76-4185-A540-1DB56331A387'
            },
            'effectiveDateTime': '2015-06-22',
            'issued': '2015-06-22T13:00:00',
            'performer': {}
          }
        },
        {
          'resource': {
            'resourceType': 'DiagnosticReport',
            'text': {
              'status': 'additional',
              'div': '&lt;span ccdRefId="ZCCD-Results.Chemistry..626">&lt;b>PLT &lt;/b>123 10*3/ul&lt;font '\
                     'color="#737373">   (Reference Range: not available)&lt;/font>&lt;br/>&lt;/span>'
            },
            'identifier': [
              {
                'use': 'official',
                'value': 'ZCCD-Results.Chemistry..626'
              }
            ],
            'status': 'final',
            'code': {
              'coding': [
                {
                  'system': 'http://loinc.org',
                  'code': '26515-7'
                }
              ]
            },
            'subject': {
              'reference': 'Patient/7568F2F3-FC76-4185-A540-1DB56331A387'
            },
            'effectiveDateTime': '2015-06-22',
            'issued': '2015-06-22T13:00:00',
            'performer': {}
          }
        },
        {
          'resource': {
            'resourceType': 'DiagnosticReport',
            'text': {
              'status': 'additional',
              'div': '&lt;span ccdRefId="ZCCD-Results.Diag Image Rpt..13919">&lt;b>Chest X-Ray 2 Views &lt;/b>Lungs '\
                     'are not clear. Other tests are required to confirm Anemia. &lt;font color="#737373">   '\
                     '(Reference Range: not available)&lt;/font>&lt;br/>&lt;/span>'
            },
            'identifier': [
              {
                'use': 'official',
                'value': 'ZCCD-Results.Diag Image Rpt..13919'
              }
            ],
            'status': 'final',
            'code': {
              'coding': [
                {
                  'system': 'http://loinc.org',
                  'code': '36643-5'
                }
              ]
            },
            'subject': {
              'reference': 'Patient/7568F2F3-FC76-4185-A540-1DB56331A387'
            },
            'effectiveDateTime': '2015-06-22',
            'issued': '2015-06-22T14:00:00',
            'performer': {}
          }
        },
        {
          'resource': {
            'resourceType': 'DiagnosticReport',
            'text': {
              'status': 'additional',
              'div': '&lt;span ccdRefId="ZCCD-Results.Urinalysis.830">&lt;b>Protein [Mass/Urine] in urine by test '\
                     'strip &lt;/b>100 mg/dl&lt;i> (negative mg/dl)&lt;/i>&lt;/span>'
            },
            'identifier': [
              {
                'use': 'official',
                'value': 'ZCCD-Results.Urinalysis.830'
              }
            ],
            'status': 'final',
            'code': {
              'coding': [
                {
                  'system': 'http://loinc.org',
                  'code': '5804-0'
                }
              ]
            },
            'subject': {
              'reference': 'Patient/7568F2F3-FC76-4185-A540-1DB56331A387'
            },
            'effectiveDateTime': '2015-06-22',
            'issued': '2015-06-22T13:00:00',
            'performer': {}
          }
        }
      ]
    }.freeze

  end
end
