# frozen_string_literal: true

module Cerner
  module Resources

    DSTU2_DOCUMENT_REFERENCE_DOCREF_BUNDLE_ENTRY ||= {
      'resourceType': 'DocumentReference',
      'id': '197286315',
      'meta': {
        'versionId': '197286314',
        'lastUpdated': '2020-04-05T04:00:46.000Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div><p><b>Document Reference</b></p><p><b>Patient Name</b>: SMART, NANCY</p><p><b>Document Type'\
               '</b>: Pregnancy Summary Document</p><p><b>Document Title</b>: Pregnancy Summary Document</p><p>'\
               '<b>Date</b>: Apr  5, 2020  4:00 A.M. UTC</p><p><b>Document Status</b>: Auth (Verified)</p></div>'
      },
      'subject': {
        'reference': 'Patient/12724066',
        'display': 'SMART, NANCY'
      },
      'type': {
        'coding': [
          {
            'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/72',
            'code': '22520442',
            'display': 'Pregnancy Summary Document',
            'userSelected': true
          },
          {
            'system': 'http://loinc.org',
            '_code': {
              'extension': [
                {
                  'url': 'http://hl7.org/fhir/StructureDefinition/data-absent-reason',
                  'valueCode': 'unknown'
                }
              ]
            }
          }
        ],
        'text': 'Pregnancy Summary Document'
      },
      'created': '2020-04-05T04:00:45.000Z',
      'indexed': '2020-04-05T04:00:45.000Z',
      'status': 'current',
      'docStatus': {
        'coding': [
          {
            'system': 'http://hl7.org/fhir/composition-status',
            'code': 'final',
            'display': 'Final'
          }
        ],
        'text': 'Auth (Verified)'
      },
      'description': 'Pregnancy Summary Document',
      'content': [
        {
          'attachment': {
            'contentType': 'application/pdf',
            'url': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Binary/XR-197286315',
            'title': 'Pregnancy Summary Document'
          }
        }
      ]
    }.freeze

    DSTU2_DOCUMENT_REFERENCE_DOCREF_SEARCH ||= {
      'resourceType': 'Bundle',
      'id': '0be75cc8-da20-460a-a39e-9825bdb87472',
      'type': 'searchset',
      'total': 1,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference'\
                 '?patient=12724066&created=ge2020-01-01&created=le2020-12-31'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference'\
                     '/197286315',
          'resource': DSTU2_DOCUMENT_REFERENCE_DOCREF_BUNDLE_ENTRY
        }
      ]
    }.freeze

    DSTU2_DOCUMENT_REFERENCE_DOCREF_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '33c6587c-ab3c-4846-a2c6-05724fe4013e',
      'type': 'searchset',
      'total': 1,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference'\
                 '/$docref?patient=12724066&type=http%3A%2F%2Floinc.org%7C34133-9'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference'\
                     '/c7d249c7-1742-47a8-9fca-1fc361728aa8',
          'resource': {
            'resourceType': 'DocumentReference',
            'id': 'c7d249c7-1742-47a8-9fca-1fc361728aa8',
            'subject': {
              'reference': 'Patient/12724066'
            },
            'type': {
              'coding': [
                {
                  'system': 'http://loinc.org',
                  'code': '34133-9'
                }
              ],
              'text': 'Summary of episode note'
            },
            'indexed': '2020-07-08T17:05:01Z',
            'status': 'current',
            'content': [
              {
                'attachment': {
                  'contentType': 'application/xml',
                  'url': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Binary'\
                         '/$autogen-ccd-if?patient=12724066'
                },
                'format': [
                  {
                    'system': 'urn:oid:1.3.6.1.4.1.19376.1.2.3',
                    'code': 'urn:hl7-org:sdwg:ccda-structuredBody:2.1',
                    'display': 'For documents following C-CDA constraints using a structured body.'
                  }
                ]
              }
            ]
          }
        }
      ]
    }.freeze

    DSTU2_DOCUMENT_REFERENCE_DOCREF_CREATE ||= {
      'resourceType': 'DocumentReference',
      'subject': {
        'reference': 'Patient/53663272'
      },
      'type': {
        'coding': [
          {
            'system': 'http://loinc.org',
            'code': '34840-9'
          }
        ]
      },
      'author': [
        {
          'reference': 'Practitioner/21500981'
        }
      ],
      'indexed': '2015-11-18T18:00:00Z',
      'status': 'current',
      'docStatus': {
        'coding': [
          {
            'system': 'http://hl7.org/fhir/composition-status',
            'code': 'final'
          }
        ]
      },
      'description': 'Rheumatology Note',
      'content': [
        {
          'attachment': {
            'contentType': 'application/xhtml+xml;charset=utf-8',
            'data': '<snipped for brevity>'
          }
        }
      ],
      'context': {
        'encounter': {
          'reference': 'Encounter/4208059'
        },
        'period': {
          'end': '2015-08-20T09:10:14Z'
        }
      }
    }.freeze

  end
end
