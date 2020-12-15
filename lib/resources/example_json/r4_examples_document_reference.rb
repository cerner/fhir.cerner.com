# frozen_string_literal: true

module Cerner
  module Resources
    R4_DOCUMENT_REFERENCE ||= {
      'resourceType': 'DocumentReference',
      'id': '197411797',
      'meta': {
        'versionId': '1',
        'lastUpdated': '2020-12-10T07:20:00.000Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Document Reference</b></p><p><b>Patient Name</b>: PETERS, TIM A</p><p><b>Document Type</b>: Consultation Note Generic</p><p><b>Document Title</b>: Auto TC Summary</p><p><b>Service End Date</b>: Dec 10, 2020  7:19 A.M. UTC</p><p><b>Document Status</b>: Final</p><p><b>Verifying Provider</b>: Portal, Portal</p></div>'
      },
      'status': 'current',
      'docStatus': 'final',
      'type': {
        'coding': [
          {
            'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/72',
            'code': '2820510',
            'display': 'Consultation Note Generic',
            'userSelected': true
          },
          {
            'system': 'http://loinc.org',
            'code': '11488-4',
            'userSelected': false
          }
        ],
        'text': 'Consultation Note Generic'
      },
      'category': [
        {
          'coding': [
            {
              'system': 'http://loinc.org',
              'code': '11488-4',
              'userSelected': false
            }
          ]
        },
        {
          'coding': [
            {
              'system': 'http://hl7.org/fhir/us/core/CodeSystem/us-core-documentreference-category',
              'code': 'clinical-note',
              'display': 'Clinical Note',
              'userSelected': false
            }
          ],
          'text': 'Clinical Note'
        }
      ],
      'subject': {
        'reference': 'Patient/12742400',
        'display': 'PETERS, TIM A'
      },
      'author': [
        {
          'reference': 'Practitioner/12742069',
          'display': 'Portal, Portal'
        }
      ],
      'authenticator': {
        'reference': 'Practitioner/12742069',
        'display': 'Portal, Portal'
      },
      'content': [
        {
          'attachment': {
            'contentType': 'application/pdf',
            'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Binary/XR-197411797',
            'title': 'Auto TC Summary',
            'creation': '2020-12-10T07:19:54.000Z'
          }
        }
      ],
      'context': {
        'encounter': [
          {
            'reference': 'Encounter/97953530'
          }
        ],
        'period': {
          'end': '2020-12-10T07:19:54.000Z'
        }
      }
    }.freeze

    R4_DOCUMENT_REFERENCE_PATIENT_ACCESS ||= {
      'resourceType': 'DocumentReference',
      'id': '197411797',
      'meta': {
        'versionId': '1',
        'lastUpdated': '2020-12-10T07:20:00.000Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Document Reference</b></p><p><b>Patient Name</b>: PETERS, TIM A</p><p><b>Document Type</b>: Consultation Note Generic</p><p><b>Document Title</b>: Auto TC Summary</p><p><b>Service End Date</b>: Dec 10, 2020  7:19 A.M. UTC</p><p><b>Document Status</b>: Final</p><p><b>Verifying Provider</b>: Portal, Portal</p></div>'
      },
      'status': 'current',
      'docStatus': 'final',
      'type': {
        'coding': [
          {
            'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/72',
            'code': '2820510',
            'display': 'Consultation Note Generic'
          },
          {
            'system': 'http://loinc.org',
            'code': '11488-4'
          }
        ],
        'text': 'Consultation Note Generic'
      },
      'category': [
        {
          'coding': [
            {
              'system': 'http://loinc.org',
              'code': '11488-4'
            }
          ]
        },
        {
          'coding': [
            {
              'system': 'http://hl7.org/fhir/us/core/CodeSystem/us-core-documentreference-category',
              'code': 'clinical-note',
              'display': 'Clinical Note'
            }
          ],
          'text': 'Clinical Note'
        }
      ],
      'subject': {
        'reference': 'Patient/12742400',
        'display': 'PETERS, TIM A'
      },
      'author': [
        {
          'reference': 'Practitioner/12742069',
          'display': 'Portal, Portal'
        }
      ],
      'authenticator': {
        'reference': 'Practitioner/12742069',
        'display': 'Portal, Portal'
      },
      'content': [
        {
          'attachment': {
            'contentType': 'application/pdf',
            'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Binary/XR-197411797',
            'title': 'Auto TC Summary',
            'creation': '2020-12-10T07:19:54.000Z'
          }
        }
      ],
      'context': {
        'encounter': [
          {
            'reference': 'Encounter/97953530'
          }
        ],
        'period': {
          'end': '2020-12-10T07:19:54.000Z'
        }
      }
    }.freeze

    R4_DOCUMENT_REFERENCE_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '941ab54e9-4501-446a-9cee-6cb14c37dab3',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference?patient=12742400'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference/197411797',
          'resource': R4_DOCUMENT_REFERENCE
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference/197411793',
          'resource': {
            'resourceType': 'DocumentReference',
            'id': '197411793',
            'meta': {
              'versionId': '1',
              'lastUpdated': '2020-12-10T07:19:56.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Document Reference</b></p><p><b>Patient Name</b>: PETERS, TIM A</p><p><b>Document Type</b>: Progress Note Generic</p><p><b>Document Title</b>: Auto TC Summary</p><p><b>Service End Date</b>: Dec 10, 2020  7:19 A.M. UTC</p><p><b>Document Status</b>: Final</p><p><b>Verifying Provider</b>: Portal, Portal</p></div>'
            },
            'status': 'current',
            'docStatus': 'final',
            'type': {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/72',
                  'code': '2820555',
                  'display': 'Progress Note Generic',
                  'userSelected': true
                },
                {
                  'system': 'http://loinc.org',
                  'code': '11506-3',
                  'userSelected': false
                }
              ],
              'text': 'Progress Note Generic'
            },
            'category': [
              {
                'coding': [
                  {
                    'system': 'http://loinc.org',
                    'code': '11506-3',
                    'userSelected': false
                  }
                ]
              },
              {
                'coding': [
                  {
                    'system': 'http://hl7.org/fhir/us/core/CodeSystem/us-core-documentreference-category',
                    'code': 'clinical-note',
                    'display': 'Clinical Note',
                    'userSelected': false
                  }
                ],
                'text': 'Clinical Note'
              }
            ],
            'subject': {
              'reference': 'Patient/12742400',
              'display': 'PETERS, TIM A'
            },
            'author': [
              {
                'reference': 'Practitioner/12742069',
                'display': 'Portal, Portal'
              }
            ],
            'authenticator': {
              'reference': 'Practitioner/12742069',
              'display': 'Portal, Portal'
            },
            'content': [
              {
                'attachment': {
                  'contentType': 'application/pdf',
                  'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Binary/XR-197411793',
                  'title': 'Auto TC Summary',
                  'creation': '2020-12-10T07:19:53.000Z'
                }
              }
            ],
            'context': {
              'encounter': [
                {
                  'reference': 'Encounter/97953530'
                }
              ],
              'period': {
                'end': '2020-12-10T07:19:53.000Z'
              }
            }
          }
        }
      ]
    }.freeze

    R4_DOCUMENT_REFERENCE_PATIENT_ACCESS_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '941ab54e9-4501-446a-9cee-6cb14c37dab3',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference?patient=12742400'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference/197411797',
          'resource': R4_DOCUMENT_REFERENCE_PATIENT_ACCESS
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference/197411793',
          'resource': {
            'resourceType': 'DocumentReference',
            'id': '197411793',
            'meta': {
              'versionId': '1',
              'lastUpdated': '2020-12-10T07:19:56.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Document Reference</b></p><p><b>Patient Name</b>: PETERS, TIM A</p><p><b>Document Type</b>: Progress Note Generic</p><p><b>Document Title</b>: Auto TC Summary</p><p><b>Service End Date</b>: Dec 10, 2020  7:19 A.M. UTC</p><p><b>Document Status</b>: Final</p><p><b>Verifying Provider</b>: Portal, Portal</p></div>'
            },
            'status': 'current',
            'docStatus': 'final',
            'type': {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/72',
                  'code': '2820555',
                  'display': 'Progress Note Generic'
                },
                {
                  'system': 'http://loinc.org',
                  'code': '11506-3'
                }
              ],
              'text': 'Progress Note Generic'
            },
            'category': [
              {
                'coding': [
                  {
                    'system': 'http://loinc.org',
                    'code': '11506-3'
                  }
                ]
              },
              {
                'coding': [
                  {
                    'system': 'http://hl7.org/fhir/us/core/CodeSystem/us-core-documentreference-category',
                    'code': 'clinical-note',
                    'display': 'Clinical Note'
                  }
                ],
                'text': 'Clinical Note'
              }
            ],
            'subject': {
              'reference': 'Patient/12742400',
              'display': 'PETERS, TIM A'
            },
            'author': [
              {
                'reference': 'Practitioner/12742069',
                'display': 'Portal, Portal'
              }
            ],
            'authenticator': {
              'reference': 'Practitioner/12742069',
              'display': 'Portal, Portal'
            },
            'content': [
              {
                'attachment': {
                  'contentType': 'application/pdf',
                  'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Binary/XR-197411793',
                  'title': 'Auto TC Summary',
                  'creation': '2020-12-10T07:19:53.000Z'
                }
              }
            ],
            'context': {
              'encounter': [
                {
                  'reference': 'Encounter/97953530'
                }
              ],
              'period': {
                'end': '2020-12-10T07:19:53.000Z'
              }
            }
          }
        }
      ]
    }.freeze

    R4_DOCUMENT_REFERENCE_POST ||= {
      'resourceType': 'DocumentReference',
      'status': 'current',
      'docStatus': 'final',
      'type': {
        'coding': [
          {
            'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/72',
            'code': '20732501',
            'display': 'Height Weight Allergy Rule - Text',
            'userSelected': true
          }
        ],
        'text': 'Height Weight Allergy Rule - Text'
      },
      'subject': {
        'reference': 'Patient/53663272'
      },
      'author': [
        {
          'reference': 'Practitioner/21500981'
        }
      ],
      'authenticator': {
        'reference': 'Practitioner/21500981'
      },
      'content': [
        {
          'attachment': {
            'contentType': 'application/xml;charset=utf-8',
            'data': 'PGh0bWw+Cjx0aXRsZT4gVGVzdCBEb2N1bWVudCA8L3RpdGxlPgoKRG9jdW1lbnQgY29udGVudCEKCjwvaHRtbD4=',
            'title': 'Height Weight Allergy Rule',
            'creation': '2020-07-29T21:02:04.000Z'
          }
        }
      ],
      'context': {
        'encounter': [
          {
            'reference': 'Encounter/4208059'
          }
        ],
        'period': {
          'start': '2020-01-01T00:00:00.000Z',
          'end': '2020-01-01T01:00:00.000Z'
        }
      }
    }.freeze

    R4_DOCUMENT_REFERENCE_UPDATE ||= {
      'resourceType': 'DocumentReference',
      'id': '16885181',
      'status': 'entered-in-error',
      'docStatus': 'amended',
      'type': {
        'coding': [
          {
            'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/72',
            'code': '2820507',
            'display': 'Admission Note-Physician',
            'userSelected': true
          }
        ]
      },
      'subject': {
        'reference': 'Patient/53663272'
      },
      'author': [
        {
          'reference': 'Practitioner/21500981'
        }
      ],
      'authenticator': {
        'reference': 'Practitioner/21500981'
      },
      'identifier': [
        {
          'system': 'https://fhir.cerner.com/location/source/0/0/1',
          'value': 'identifier 1'
        }
      ],
      'content': [
        'attachment': {
          'contentType': 'application/xml;charset=utf-8',
          'data': 'PGh08L3RpdGxlPgoKRG9jdW1lbnQgY29udGVudCEKCjwvaHRtbD4=',
          'title': 'Admission Note-Physician',
          'creation': '2020-08-15T14:35:29.000Z'
        }
      ],
      'context': {
        'encounter': [
          {
            'reference': 'Encounter/4208053'
          }
        ],
        'period': {
          'start': '2020-01-01T00:00:00.000Z',
          'end': '2020-01-01T01:00:00.000Z'
        }
      }
    }.freeze
  end
end
