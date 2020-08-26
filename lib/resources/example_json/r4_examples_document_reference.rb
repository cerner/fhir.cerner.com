# frozen_string_literal: true

module Cerner
  module Resources
    R4_DOCUMENT_REFERENCE ||= {
      'resourceType': 'DocumentReference',
      'id': '197292845',
      'meta': {
        'versionId': '1',
        'lastUpdated': '2020-07-06T21:02:56.000Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Document Reference</b></p><p><b>Patient Name</b>: '\
               'SMART, NANCY</p><p><b>Document Type</b>: Height Weight Allergy Rule - Text</p><p><b>Document Title'\
               '</b>: Height Weight Allergy Rule</p><p><b>Service End Date</b>: Jul  6, 2020  9:02 P.M. UTC</p><p>'\
               '<b>Document Status</b>: Final</p><p><b>Verifying Provider</b>: Spence, Open Platform IA, Stephen</p>'\
               '</div>'
      },
      'status': 'current',
      'docStatus': 'final',
      'type': {
        'coding': [
          {
            'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/72',
            'code': '20732501',
            'display': 'Height Weight Allergy Rule - Text',
            'userSelected': true
          },
          {
            'system': 'http://loinc.org',
            '_code': {
              'extension': [
                {
                  'valueCode': 'unknown',
                  'url': 'http://hl7.org/fhir/StructureDefinition/data-absent-reason'
                }
              ]
            }
          }
        ],
        'text': 'Height Weight Allergy Rule - Text'
      },
      'subject': {
        'reference': 'Patient/12724066',
        'display': 'SMART, NANCY'
      },
      'author': [
        {
          'reference': 'Practitioner/12724064',
          'display': 'Spence, Open Platform IA, Stephen'
        }
      ],
      'authenticator': {
        'reference': 'Practitioner/12724064',
        'display': 'Spence, Open Platform IA, Stephen'
      },
      'content': [
        {
          'attachment': {
            'contentType': 'application/pdf',
            'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Binary/XR-197292845',
            'title': 'Height Weight Allergy Rule',
            'creation': '2020-07-06T21:02:47.000Z'
          }
        }
      ],
      'context': {
        'encounter': [
          {
            'reference': 'Encounter/97939539'
          }
        ],
        'period': {
          'end': '2020-07-06T21:02:00.000Z'
        }
      }
    }.freeze

    R4_DOCUMENT_REFERENCE_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '93314497-f3f1-46c4-93ca-ad058c1d4ba4',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference'\
                 '?patient=12724066'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference/197292845',
          'resource': R4_DOCUMENT_REFERENCE
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference/197292833',
          'resource': {
            'resourceType': 'DocumentReference',
            'id': '197292833',
            'meta': {
              'versionId': '1',
              'lastUpdated': '2020-07-06T20:39:24.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Document Reference</b></p><p><b>Patient Name'\
                     '</b>: SMART, NANCY</p><p><b>Document Type</b>: Height Weight Allergy Rule - Text</p><p>'\
                     '<b>Document Title</b>: Height Weight Allergy Rule</p><p><b>Service End Date</b>: Jul  6, 2020  '\
                     '8:37 P.M. UTC</p><p><b>Document Status</b>: Final</p><p><b>Verifying Provider</b>: Spence, '\
                     'Open Platform IA, Stephen</p></div>'
            },
            'status': 'current',
            'docStatus': 'final',
            'type': {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/72',
                  'code': '20732501',
                  'display': 'Height Weight Allergy Rule - Text',
                  'userSelected': true
                },
                {
                  'system': 'http://loinc.org',
                  '_code': {
                    'extension': [
                      {
                        'valueCode': 'unknown',
                        'url': 'http://hl7.org/fhir/StructureDefinition/data-absent-reason'
                      }
                    ]
                  }
                }
              ],
              'text': 'Height Weight Allergy Rule - Text'
            },
            'subject': {
              'reference': 'Patient/12724066',
              'display': 'SMART, NANCY'
            },
            'author': [
              {
                'reference': 'Practitioner/12724064',
                'display': 'Spence, Open Platform IA, Stephen'
              }
            ],
            'authenticator': {
              'reference': 'Practitioner/12724064',
              'display': 'Spence, Open Platform IA, Stephen'
            },
            'content': [
              {
                'attachment': {
                  'contentType': 'application/pdf',
                  'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Binary/XR-197292833',
                  'title': 'Height Weight Allergy Rule',
                  'creation': '2020-07-06T20:37:35.000Z'
                }
              }
            ],
            'context': {
              'encounter': [
                {
                  'reference': 'Encounter/97953477'
                }
              ],
              'period': {
                'end': '2020-07-06T20:37:00.000Z'
              }
            }
          }
        }
      ]
    }.freeze

    R4_DOCUMENT_REFERENCE_POST ||= {
      "resourceType": "DocumentReference",
      "status": "current",
      "docStatus": "final",
      "type": {
        "coding": [
          {
            "system": "http://loinc.org",
            "code": "83805-2",
            "userSelected": false
          }
        ],
      },
      "subject": {
        "reference": "Patient/1415936"
      },
      "author": [
        {
          "reference": "Practitioner/123456",
        }
      ],
      "authenticator": {
        "reference": "Practitioner/123456"
      },
      "content": [
        {
          "attachment": {
            "contentType": "text/xml",
            "url": "https://fhir-open.devcerner.com/r4/eb2384f8-839e-4c6e-8b29-18e71db1a0b1/Binary/R-17821258",
            "title": "title",
            "creation": "2020-07-29T21:02:04.000Z"
          }
        }
      ],
      "context": {
        "encounter": [
          {
            "reference": "Encounter/123456"
          }
        ],
        "period": {
          "start": "2020-01-01T00:00:00.000Z",
          "end": "2020-01-01T01:00:00.000Z"
        }
      }
    }.freeze

  end
end
