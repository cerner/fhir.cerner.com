# frozen_string_literal: true

module Cerner
  module Resources
    R4_DOCUMENT_REFERENCE ||= {
      'resourceType': 'DocumentReference',
      'id': '207993296',
      'meta': {
        'versionId': '1',
        'lastUpdated': '2020-07-15T20:46:06.000Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Document Reference</b></p><p><b>Patient Name</b>: '\
               'PETERS, TIMOTHY CCCC</p><p><b>Document Title</b>: Test Prescription Calendar - DEVENG</p><p>'\
               '<b>Service End Date</b>: Mar 20, 2020  4:10 A.M. CDT</p><p><b>Document Status</b>: Final</p><p>'\
               '<b>Verifying Provider</b>: SYSTEM, SYSTEM</p></div>'
      },
      'identifier': [
        {
          'system': 'https://fhir.cerner.com/ceuuid',
          'value': 'CE52dd2c20-da69-41a3-a5dc-7c34f8103ac0-207993296-2020071520460600'
        }
      ],
      'status': 'current',
      'docStatus': 'final',
      'type': {
        'coding': [
          {
            'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/72',
            'code': '2820507',
            'userSelected': true
          },
          {
            'system': 'http://loinc.org',
            'code': '83805-2',
            'userSelected': false
          }
        ]
      },
      'category': [
        {
          'coding': [
            {
              'system': 'http://loinc.org',
              'code': '83805-2',
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
        'reference': 'Patient/1316024',
        'display': 'PETERS, TIMOTHY CCCC'
      },
      'author': [
        {
          'reference': 'Practitioner/1',
          'display': 'SYSTEM, SYSTEM'
        }
      ],
      'authenticator': {
        'reference': 'Practitioner/1',
        'display': 'SYSTEM, SYSTEM'
      },
      'content': [
        {
          'attachment': {
            'contentType': 'application/pdf',
            'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Binary/XR-207993296',
            'title': 'Test Prescription Calendar - DEVENG',
            'creation': '2020-03-18T18:00:00.000Z'
          }
        },
        {
          'attachment': {
            'contentType': 'text/html',
            'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Binary/TR-207993296',
            'title': 'Test Prescription Calendar - DEVENG',
            'creation': '2020-03-18T18:00:00.000Z'
          }
        }
      ],
      'context': {
        'encounter': [
          {
            'reference': 'Encounter/49681814'
          }
        ],
        'period': {
          'end': '2020-03-20T09:10:14.000Z'
        }
      }
    }.freeze

    R4_DOCUMENT_REFERENCE_PATIENT_ACCESS ||= {
      'resourceType': 'DocumentReference',
      'id': '207993296',
      'meta': {
        'versionId': '1',
        'lastUpdated': '2020-07-15T20:46:06.000Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Document Reference</b></p><p><b>Patient Name</b>: '\
               'PETERS, TIMOTHY CCCC</p><p><b>Document Title</b>: Test Prescription Calendar - DEVENG</p><p>'\
               '<b>Service End Date</b>: Mar 20, 2020  4:10 A.M. CDT</p><p><b>Document Status</b>: Final</p><p>'\
               '<b>Verifying Provider</b>: SYSTEM, SYSTEM</p></div>'
      },
      'identifier': [
        {
          'system': 'https://fhir.cerner.com/ceuuid',
          'value': 'CE52dd2c20-da69-41a3-a5dc-7c34f8103ac0-207993296-2020071520460600'
        }
      ],
      'status': 'current',
      'docStatus': 'final',
      'type': {
        'coding': [
          {
            'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/72',
            'code': '2820507'
          },
          {
            'system': 'http://loinc.org',
            'code': '83805-2'
          }
        ]
      },
      'category': [
        {
          'coding': [
            {
              'system': 'http://loinc.org',
              'code': '83805-2'
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
        'reference': 'Patient/1316024',
        'display': 'PETERS, TIMOTHY CCCC'
      },
      'author': [
        {
          'reference': 'Practitioner/1',
          'display': 'SYSTEM, SYSTEM'
        }
      ],
      'authenticator': {
        'reference': 'Practitioner/1',
        'display': 'SYSTEM, SYSTEM'
      },
      'content': [
        {
          'attachment': {
            'contentType': 'application/pdf',
            'url': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Binary/XR-207993296',
            'title': 'Test Prescription Calendar - DEVENG',
            'creation': '2020-03-18T18:00:00.000Z'
          }
        },
        {
          'attachment': {
            'contentType': 'text/html',
            'url': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Binary/TR-207993296',
            'title': 'Test Prescription Calendar - DEVENG',
            'creation': '2020-03-18T18:00:00.000Z'
          }
        }
      ],
      'context': {
        'encounter': [
          {
            'reference': 'Encounter/49681814'
          }
        ],
        'period': {
          'end': '2020-03-20T09:10:14.000Z'
        }
      }
    }.freeze

    R4_DOCUMENT_REFERENCE_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '2a7086d5-fc22-4314-af1e-a14903ab2884',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference?patient=1316024'
        },
        {
          'relation': 'next',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference?patient=1316024&-pageContext=T3BlblBsYXRmb3JtRmhpckNvbnRleHQ9dHJ1ZSZwYWdlQ29udGV4dD1lTnA5ajFGcmd6QVVoWDlMY1ktYUpsRmo4akRvcGpMNm9rWGJzYmR4amRFSkdvdW1aUnY5OFl2ZEJtT0RQVjBPOXh6T2QtUTRJS2ttclNZMHpHZUpaTl9wVGtLdnprb2JCQU84anhvZG9lMTBpLTZ1YWdldGlrZHQxS3R4TnF1YTE2SWh3TDJLWS1FRkNpcXZJb3g1akFCdEpGWVlnRmxia3BaeG1pWGI3TUVLLVc5blBjclQ4S084VUdicTdPdi1MVjMtcFRMNVVVMWd1bEhmZkJMOWRTeU1xNDFqcHROeXN2UnBfeHdmaWpJdnJLS2M0cEJnbDBRaGp3SWhtRXZDU0JEcUU1OWpqRjFzUFEzMDg1TGNGZW5qTmotVXY5STRjaW1PaFBEcE5jMERKc0tBQk45cE9fSGlYUEI2X1FKemFTeEtuWHh0dWwySVBnQ2Znblc5JmNvbmNlcHQ9Y2hhcnRlZA%3D%3D&-pageDirection=NEXT'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference/207993296',
          'resource': R4_DOCUMENT_REFERENCE
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference/182338606',
          'resource': {
            'resourceType': 'DocumentReference',
            'id': '182338606',
            'meta': {
              'versionId': '1',
              'lastUpdated': '2020-02-21T17:23:54.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Document Reference</b></p><p><b>'\
                     'Patient Name</b>: PETERS, TIMOTHY CCCC</p><p><b>Document Category</b>: Unknown</p><p>'\
                     '<b>Document Title</b>: Cardiology APSO Note- For Unscripted Testing</p><p><b>Service End Date'\
                     '</b>: Feb 24, 2020  5:19 P.M. CST</p><p><b>Document Status</b>: Final</p><p><b>'\
                     'Verifying Provider</b>: Snyder, Chris</p></div>'
            },
            'identifier': [
              {
                'system': 'https://fhir.cerner.com/ceuuid',
                'value': 'CE52dd2c20-da69-41a3-a5dc-7c34f8103ac0-182338606-2020022117235500'
              }
            ],
            'status': 'current',
            'docStatus': 'final',
            'type': {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/72',
                  'code': '2820643',
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
              ]
            },
            'category': [
              {
                'coding': [
                  {
                    'system': 'http://terminology.hl7.org/CodeSystem/data-absent-reason',
                    'code': 'unknown',
                    'display': 'Unknown'
                  }
                ],
                'text': 'Unknown'
              }
            ],
            'subject': {
              'reference': 'Patient/1316024',
              'display': 'PETERS, TIMOTHY CCCC'
            },
            'author': [
              {
                'reference': 'Practitioner/1956011',
                'display': 'Snyder, Chris'
              }
            ],
            'authenticator': {
              'reference': 'Practitioner/1956011',
              'display': 'Snyder, Chris'
            },
            'content': [
              {
                'attachment': {
                  'contentType': 'application/pdf',
                  'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Binary/XR-182338606',
                  'title': 'Cardiology APSO Note- For Unscripted Testing',
                  'creation': '2020-02-21T17:23:53.000Z'
                }
              },
              {
                'attachment': {
                  'contentType': 'text/html',
                  'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Binary/TR-182338606',
                  'title': 'Cardiology APSO Note- For Unscripted Testing',
                  'creation': '2020-02-21T17:23:53.000Z'
                }
              }
            ],
            'context': {
              'encounter': [
                {
                  'reference': 'Encounter/11137261'
                }
              ],
              'period': {
                'end': '2020-02-24T23:19:00.000Z'
              }
            }
          }
        }
      ]
    }.freeze

    R4_DOCUMENT_REFERENCE_PATIENT_ACCESS_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '740ced36-ecac-43b4-802c-4fef55bfb625',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference?patient=1316024'
        },
        {
          'relation': 'next',
          'url': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference?patient=1316024&-pageContext=T3BlblBsYXRmb3JtRmhpckNvbnRleHQ9dHJ1ZSZwYWdlQ29udGV4dD1lTnA5ajFGUGd6QVVoWF9MZ29fQWJrdWg3WVBKRklqWkN5emdqRy1tbElva1VCYm9Galg3OGJaVEU2T0pUemNuOTN3NTU4aHBES1dhdFpyRGNUbkpVQTY5N3FVWTFFbHBFNHBSdkU4NlBJaXUxMTE0YzFFNzBhbDAwa2E5R20temtnbmxMVkFXa0FhYWdHQWlBODRTQ0FSVFJMWUNXdGtrMXBibGRab1gyYmE0Yzh5X21lMGtqLU9QOEVxWnViZXYyN2ZjX1d0bHlvT2FoZWtuZmZYWjZLX0RkVnh0UERNZjNTbnl4X3VuZEZfVlpXVVZaaGhpQkQ2aU1hT0U4OFJITWVVSVJ5aGlBT0NEOVR5TFlYSGtyc29mdHVXLV9rVUQ5VEZRemlOOG9SbEplRXdRLWFidHhMTjNodlg2UlN5MXNWWGE3R3ZUdFd2MEFUVTlkV2M9JmNvbmNlcHQ9Y2hhcnRlZA%3D%3D&-pageDirection=NEXT'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference/207993296',
          'resource': R4_DOCUMENT_REFERENCE_PATIENT_ACCESS
        },
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference/182338606',
          'resource': {
            'resourceType': 'DocumentReference',
            'id': '182338606',
            'meta': {
              'versionId': '1',
              'lastUpdated': '2020-02-21T17:23:54.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Document Reference</b></p><p><b>Patient Name'\
                     '</b>: PETERS, TIMOTHY CCCC</p><p><b>Document Category</b>: Unknown</p><p><b>Document Title</b>: '\
                     'Cardiology APSO Note- For Unscripted Testing</p><p><b>Service End Date</b>: '\
                     'Feb 24, 2020  5:19 P.M. CST</p><p><b>Document Status</b>: Final</p><p><b>Verifying Provider'\
                     '</b>: Snyder, Chris</p></div>'
            },
            'identifier': [
              {
                'system': 'https://fhir.cerner.com/ceuuid',
                'value': 'CE52dd2c20-da69-41a3-a5dc-7c34f8103ac0-182338606-2020022117235500'
              }
            ],
            'status': 'current',
            'docStatus': 'final',
            'type': {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/72',
                  'code': '2820643'
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
              ]
            },
            'category': [
              {
                'coding': [
                  {
                    'system': 'http://terminology.hl7.org/CodeSystem/data-absent-reason',
                    'code': 'unknown',
                    'display': 'Unknown'
                  }
                ],
                'text': 'Unknown'
              }
            ],
            'subject': {
              'reference': 'Patient/1316024',
              'display': 'PETERS, TIMOTHY CCCC'
            },
            'author': [
              {
                'reference': 'Practitioner/1956011',
                'display': 'Snyder, Chris'
              }
            ],
            'authenticator': {
              'reference': 'Practitioner/1956011',
              'display': 'Snyder, Chris'
            },
            'content': [
              {
                'attachment': {
                  'contentType': 'application/pdf',
                  'url': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Binary/XR-182338606',
                  'title': 'Cardiology APSO Note- For Unscripted Testing',
                  'creation': '2020-02-21T17:23:53.000Z'
                }
              },
              {
                'attachment': {
                  'contentType': 'text/html',
                  'url': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Binary/TR-182338606',
                  'title': 'Cardiology APSO Note- For Unscripted Testing',
                  'creation': '2020-02-21T17:23:53.000Z'
                }
              }
            ],
            'context': {
              'encounter': [
                {
                  'reference': 'Encounter/11137261'
                }
              ],
              'period': {
                'end': '2020-02-24T23:19:00.000Z'
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
    R4_DOCUMENT_REFERENCE_CCD ||= {
      'resourceType': 'DocumentReference',
      'id': 'b79484c9-1170-44cd-9910-f9013ff2ea1f',
      'status': 'current',
      'type': {
        'coding': [
          {
            'system': 'http://loinc.org',
            'code': '34133-9',
            'display': 'Summary of episode note'
          }
        ],
        'text': 'Summary of episode note'
      },
      'subject': {
        'reference': 'Patient/13160351'
      },
      'date': '2020-12-14T08:20:26Z',
      'content': [
        {
          'attachment': {
            'contentType': 'application/xml',
            'url': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/Binary/$autogen-ccd-if?'\
                   'patient=13160351'
          },
          'format': {
            'system': 'urn:oid:1.3.6.1.4.1.19376.1.2.3',
            'code': 'urn:hl7-org:sdwg:ccda-structuredBody:2.1',
            'display': 'For documents following C-CDA constraints using a structured body.'
          }
        }
      ]
    }.freeze

    R4_DOCUMENT_REFERENCE_CCD_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '2cb9157f-0f05-4fe4-af14-95d5808a4070',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference'\
                '/$docref?patient=13160351'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d'\
          '/DocumentReference/b79484c9-1170-44cd-9910-f9013ff2ea1f',
          'resource': R4_DOCUMENT_REFERENCE_CCD
        }
      ]
    }.freeze

    R4_DOCUMENT_REFERENCE_CCD_PATIENT_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '2cb9157f-0f05-4fe4-af14-95d5808a4070',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference'\
                '/$docref?patient=13160351'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d'\
          '/DocumentReference/b79484c9-1170-44cd-9910-f9013ff2ea1f',
          'resource': R4_DOCUMENT_REFERENCE_CCD
        }
      ]
    }.freeze
  end
end
