# frozen_string_literal: true

module Cerner
  module Resources

    DSTU2_DIAGNOSTIC_REPORT_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '05cb2a6a-1de9-4de9-a3ff-16c1f347f910',
      'type': 'searchset',
      'total': 1,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/DiagnosticReport'\
                 '?patient=12724066&_count=10'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/DiagnosticReport'\
                     '/197198634',
          'resource': {
            'resourceType': 'DiagnosticReport',
            'id': '197198634',
            'meta': {
              'versionId': '1',
              'lastUpdated': '2019-12-26T21:36:00.000Z'
            },
            'text': {
              'status': 'additional',
              'div': '<div><p><b>Diagnostic Report</b></p><p><b>Document Type</b>: Radiology Reports</p>'\
                     '<p><b>Document Title</b>: Admission H &amp; P - Radiology</p><p><b>Effective Date'\
                     '</b>: 2019-12-26T21:35:07.000Z</p><p><b>Issued</b>: 2019-12-26T21:35:59.000Z</p>'\
                     '<p><b>Patient</b>: SMART, NANCY</p><p><b>Status</b>: Final</p><p>'\
                     '<b>Verifying Provider</b>: Cerner Test, Physician - Hospitalist Cerner</p></div>'
            },
            'status': 'final',
            'category': {
              'coding': [
                {
                  'system': 'http://hl7.org/fhir/v2/0074',
                  'code': 'RAD',
                  'display': 'Radiology',
                  'userSelected': false
                }
              ],
              'text': 'Radiology Reports'
            },
            'code': {
              'text': 'Radiology Reports'
            },
            'subject': {
              'reference': 'Patient/12724066',
              'display': 'SMART, NANCY'
            },
            'encounter': {
              'reference': 'Encounter/97939518'
            },
            'effectiveDateTime': '2019-12-26T21:35:07.000Z',
            'issued': '2019-12-26T21:35:59.000Z',
            'performer': {
              'reference': 'Practitioner/4122622',
              'display': 'Cerner Test, Physician - Hospitalist Cerner'
            },
            'presentedForm': [
              {
                'contentType': 'text/html',
                'url': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Binary'\
                       '/TR-197198634',
                'title': 'Admission H & P - Radiology'
              },
              {
                'contentType': 'application/pdf',
                'url': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Binary'\
                       '/XR-197198634',
                'title': 'Admission H & P - Radiology'
              }
            ]
          }
        }
      ]
    }.freeze

  end
end
