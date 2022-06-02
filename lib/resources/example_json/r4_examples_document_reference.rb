# frozen_string_literal: true

module Cerner
  module Resources
    R4_DOCUMENT_REFERENCE ||= {
      'resourceType': 'DocumentReference',
      'id': '21961261',
      'meta': {
        'versionId': '1',
        'lastUpdated': '2021-03-12T22:35:03.000Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Document Reference</b></p><p><b>Patient Name</b>: '\
               'Parnell, Stephen M</p><p><b>Document Type</b>: Admission Note-Physician</p><p><b>Document Category'\
               '</b>: Clinical Note</p><p><b>Document Title</b>: Admission H &amp; P</p><p><b>Service End Date</b>: '\
               'Mar 12, 2021  4:31 P.M. CST</p><p><b>Document Status</b>: Final</p><p><b>Verifying Provider</b>: '\
               'Braus, Sasha</p></div>'
      },
      'identifier': [
        {
          'system': 'https://fhir.cerner.com/ceuuid',
          'value': 'CEfda49233-ccfa-4ed4-afbc-9f5082c2bf0c-21961261-2021031216350400'
        }
      ],
      'status': 'current',
      'docStatus': 'final',
      'type': {
        'coding': [
          {
            'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/72',
            'code': '2820507',
            'display': 'Admission Note-Physician',
            'userSelected': true
          },
          {
            'system': 'http://loinc.org',
            'code': '83805-2',
            'userSelected': false
          }
        ],
        'text': 'Admission Note-Physician'
      },
      'category': [
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
        },
        {
          'coding': [
            {
              'system': 'http://loinc.org',
              'code': '83805-2',
              'userSelected': false
            }
          ]
        }
      ],
      'subject': {
        'reference': 'Patient/2798003',
        'display': 'Parnell, Stephen M'
      },
      'author': [
        {
          'reference': 'Practitioner/2797943',
          'display': 'Braus, Sasha'
        }
      ],
      'authenticator': {
        'reference': 'Practitioner/2797943',
        'display': 'Braus, Sasha'
      },
      'content': [
        {
          'attachment': {
            'contentType': 'application/pdf',
            'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Binary/XR-21961261',
            'title': 'Admission H & P',
            'creation': '2021-03-12T22:35:03.000Z'
          }
        },
        {
          'attachment': {
            'contentType': 'text/html',
            'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Binary/TR-21961261',
            'title': 'Admission H & P',
            'creation': '2021-03-12T22:35:03.000Z'
          }
        }
      ],
      'context': {
        'encounter': [
          {
            'reference': 'Encounter/2673908'
          }
        ],
        'period': {
          'end': '2021-03-12T22:31:38.000Z'
        }
      }
    }.freeze

    R4_DOCUMENT_REFERENCE_SEARCH_BY_ENCOUNTER_FILTER_PATIENT_DOCUMENTS ||= {
      "resourceType": 'DocumentReference',
      "id": '8676968',
      "meta": {
        "versionId": '4',
        "lastUpdated": '2014-12-08T21:18:56.000Z'
      },
      "text": {
        "status": 'generated',
        "div": '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Document Reference</b></p><p><b>Patient Name</b>: '\
        'Test, Blood Bank</p><p><b>Document Type</b>: Bone Marrow Report</p><p><b>Document Category</b>: '\
        'Unknown</p><p><b>Document Title</b>: Bone Marrow Final Report</p><p><b>Service Start Date</b>: '\
        'Dec  8, 2014  3:04 P.M. CST</p><p><b>Service End Date</b>: Dec  8, 2014  3:04 P.M. '\
        'CST</p><p><b>Document Status</b>: Final</p><p><b>Verifying Provider</b>: Desani, Santosh</p></div>'
      },
      "status": 'current',
      "docStatus": 'final',
      "type": {
        "coding": [
          {
            "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/72',
            "code": '4184837',
            "display": 'Bone Marrow Report',
            "userSelected": true
          },
          {
            "system": 'http://terminology.hl7.org/CodeSystem/v3-NullFlavor',
            "code": 'UNK',
            "display": 'unknown'
          }
        ],
        "text": 'Bone Marrow Report'
      },
      "category": [
        {
          "coding": [
            {
              "system": 'http://terminology.hl7.org/CodeSystem/data-absent-reason',
              "code": 'unknown',
              "display": 'Unknown'
            }
          ],
          "text": 'Unknown'
        }
      ],
      "subject": {
        "reference": 'Patient/823932',
        "display": 'Test, Blood Bank'
      },
      "authenticator": {
        "reference": 'Practitioner/1994008',
        "display": 'Desani, Santosh'
      },
      "content": [
        {
          "attachment": {
            "contentType": 'application/pdf',
            "url": 'https://fhir-ehr.devcerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Binary/XR-8676968',
            "title": 'Bone Marrow Final Report',
            "creation": '2014-12-08T21:04:50.000Z'
          }
        }
      ],
      "context": {
        "encounter": [
          {
            "reference": 'Encounter/863887'
          }
        ],
        "period": {
          "start": '2014-12-08T21:04:50.000Z',
          "end": '2014-12-08T21:04:50.000Z'
        }
      }
    }.freeze

    R4_DOCUMENT_REFERENCE_PATIENT_ACCESS ||= {
      'resourceType': 'DocumentReference',
      'id': '21961261',
      'meta': {
        'versionId': '1',
        'lastUpdated': '2021-03-12T22:35:03.000Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Document Reference</b></p><p><b>Patient Name</b>: '\
               'Parnell, Stephen M</p><p><b>Document Type</b>: Admission Note-Physician</p><p><b>Document Category'\
               '</b>: Clinical Note</p><p><b>Document Title</b>: Admission H &amp; P</p><p><b>Service End Date</b>: '\
               'Mar 12, 2021  4:31 P.M. CST</p><p><b>Document Status</b>: Final</p><p><b>Verifying Provider</b>: '\
               'Braus, Sasha</p></div>'
      },
      'identifier': [
        {
          'system': 'https://fhir.cerner.com/ceuuid',
          'value': 'CEfda49233-ccfa-4ed4-afbc-9f5082c2bf0c-21961261-2021031216350400'
        }
      ],
      'status': 'current',
      'docStatus': 'final',
      'type': {
        'coding': [
          {
            'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/72',
            'code': '2820507',
            'display': 'Admission Note-Physician'
          },
          {
            'system': 'http://loinc.org',
            'code': '83805-2'
          }
        ],
        'text': 'Admission Note-Physician'
      },
      'category': [
        {
          'coding': [
            {
              'system': 'http://hl7.org/fhir/us/core/CodeSystem/us-core-documentreference-category',
              'code': 'clinical-note',
              'display': 'Clinical Note'
            }
          ],
          'text': 'Clinical Note'
        },
        {
          'coding': [
            {
              'system': 'http://loinc.org',
              'code': '83805-2'
            }
          ]
        }
      ],
      'subject': {
        'reference': 'Patient/2798003',
        'display': 'Parnell, Stephen M'
      },
      'author': [
        {
          'reference': 'Practitioner/2797943',
          'display': 'Braus, Sasha'
        }
      ],
      'authenticator': {
        'reference': 'Practitioner/2797943',
        'display': 'Braus, Sasha'
      },
      'content': [
        {
          'attachment': {
            'contentType': 'application/pdf',
            'url': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Binary/XR-21961261',
            'title': 'Admission H & P',
            'creation': '2021-03-12T22:35:03.000Z'
          }
        }
      ],
      'context': {
        'encounter': [
          {
            'reference': 'Encounter/2673908'
          }
        ],
        'period': {
          'end': '2021-03-12T22:31:38.000Z'
        }
      }
    }.freeze

    R4_DOCUMENT_REFERENCE_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '271fc608-6a12-48f3-a9f8-2d1bfe395328',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference?patient=2798003'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference/21961261',
          'resource': R4_DOCUMENT_REFERENCE
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference/21674656',
          'resource': {
            'resourceType': 'DocumentReference',
            'id': '21674656',
            'meta': {
              'versionId': '1',
              'lastUpdated': '2021-03-05T16:48:42.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Document Reference</b></p><p><b>Patient Name'\
                     '</b>: Parnell, Stephen M</p><p><b>Document Type</b>: Abdominal Ultrasound</p><p><b>'\
                     'Document Category</b>: Unknown</p><p><b>Document Title</b>: test images</p><p><b>'\
                     'Service End Date</b>: Mar  5, 2021 10:47 A.M. CST</p><p><b>Document Status</b>: Preliminary</p>'\
                     '</div>'
            },
            'identifier': [
              {
                'system': 'https://fhir.cerner.com/ceuuid',
                'value': 'CEfda49233-ccfa-4ed4-afbc-9f5082c2bf0c-21674656-2021030510484300'
              }
            ],
            'status': 'current',
            'docStatus': 'preliminary',
            'type': {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/72',
                  'code': '2820643',
                  'display': 'Abdominal Ultrasound',
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
              'text': 'Abdominal Ultrasound'
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
              'reference': 'Patient/2798003',
              'display': 'Parnell, Stephen M'
            },
            'author': [
              {
                'reference': 'Practitioner/2797943',
                'display': 'Braus, Sasha'
              }
            ],
            'content': [
              {
                'attachment': {
                  'contentType': 'application/pdf',
                  'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Binary/XR-20801159',
                  'title': 'Admission H & P',
                  'creation': '2021-02-10T23:27:20.000Z'
                }
              },
              {
                'attachment': {
                  'contentType': 'text/html',
                  'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Binary/TR-20801159',
                  'title': 'Admission H & P',
                  'creation': '2021-02-10T23:27:20.000Z'
                }
              }
            ],
            'context': {
              'encounter': [
                {
                  'reference': 'Encounter/2673908'
                }
              ],
              'period': {
                'end': '2021-03-05T16:47:00.000Z'
              }
            }
          }
        }
      ]
    }.freeze

    R4_DOCUMENT_REFERENCE_PATIENT_ACCESS_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '74e2c51e-96af-4f95-abd1-bbbe566e386b',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference?patient=2798003'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference/21961261',
          'resource': R4_DOCUMENT_REFERENCE_PATIENT_ACCESS
        },
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference/21674656',
          'resource': {
            'resourceType': 'DocumentReference',
            'id': '21674656',
            'meta': {
              'versionId': '1',
              'lastUpdated': '2021-03-05T16:48:42.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Document Reference</b></p><p><b>Patient Name'\
                     '</b>: Parnell, Stephen M</p><p><b>Document Type</b>: Abdominal Ultrasound</p><p><b>'\
                     'Document Category</b>: Unknown</p><p><b>Document Title</b>: test images</p><p><b>'\
                     'Service End Date</b>: Mar  5, 2021 10:47 A.M. CST</p><p><b>Document Status</b>: Preliminary</p>'\
                     '</div>'
            },
            'identifier': [
              {
                'system': 'https://fhir.cerner.com/ceuuid',
                'value': 'CEfda49233-ccfa-4ed4-afbc-9f5082c2bf0c-21674656-2021030510484300'
              }
            ],
            'status': 'current',
            'docStatus': 'preliminary',
            'type': {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/72',
                  'code': '2820643',
                  'display': 'Abdominal Ultrasound'
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
              'text': 'Abdominal Ultrasound'
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
              'reference': 'Patient/2798003',
              'display': 'Parnell, Stephen M'
            },
            'author': [
              {
                'reference': 'Practitioner/2797943',
                'display': 'Braus, Sasha'
              }
            ],
            'content': [
              {
                'attachment': {
                  'contentType': 'application/pdf',
                  'url': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Binary/XR-20801159',
                  'title': 'Admission H & P',
                  'creation': '2021-02-10T23:27:20.000Z'
                }
              }
            ],
            'context': {
              'encounter': [
                {
                  'reference': 'Encounter/2673908'
                }
              ],
              'period': {
                'end': '2021-03-05T16:47:00.000Z'
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

    R4_DOCUMENT_REFERENCE_REVINCLUDE_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '11d98db4-e637-4586-af8f-f7256ec5539b',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference?_id=214938095&_revinclude=Provenance%3Atarget'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference/214938095',
          'resource': {
            'resourceType': 'DocumentReference',
            'id': '214938095',
            'meta': {
              'versionId': '1',
              'lastUpdated': '2020-10-29T09:40:27.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Document Reference</b></p>'\
              '<p><b>Patient Name</b>: PETERS, TIMOTHY CCCC</p>'\
              '<p><b>Document Type</b>: Rheumatology Consultation</p>'\
              '<p><b>Document Title</b>: TEST TIMEZONE A17</p>'\
              '<p><b>Service End Date</b>: Jul 30, 2020  6:20 A.M. CDT</p>'\
              '<p><b>Document Status</b>: Final</p><p><b>Verifying Provider</b>: M, SANGEETHA</p></div>'
            },
            'identifier': [
              {
                'system': 'https://fhir.cerner.com/ceuuid',
                'value': 'CE52dd2c20-da69-41a3-a5dc-7c34f8103ac0-214938095-2020102909402700'
              }
            ],
            'status': 'current',
            'docStatus': 'final',
            'type': {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/72',
                  'code': '2820583',
                  'display': 'Rheumatology Consultation',
                  'userSelected': true
                },
                {
                  'system': 'http://loinc.org',
                  'code': '34839-1',
                  'userSelected': false
                }
              ],
              'text': 'Rheumatology Consultation'
            },
            'category': [
              {
                'coding': [
                  {
                    'system': 'http://loinc.org',
                    'code': '34839-1',
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
                'reference': 'Practitioner/159105544',
                'display': 'M, SANGEETHA'
              }
            ],
            'authenticator': {
              'reference': 'Practitioner/159105544',
              'display': 'M, SANGEETHA'
            },
            'content': [
              {
                'attachment': {
                  'contentType': 'application/pdf',
                  'url': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Binary/XR-214938095',
                  'title': 'TEST TIMEZONE A17',
                  'creation': '2020-07-30T11:20:00.000Z'
                }
              }
            ],
            'context': {
              'encounter': [
                {
                  'reference': 'Encounter/32487567'
                }
              ],
              'period': {
                'end': '2020-07-30T11:20:00.000Z'
              }
            }
          },
          'search': {
            'mode': 'match'
          }
        },
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Provenance/INT.doc-214938095',
          'resource': {
            'resourceType': 'Provenance',
            'id': 'INT.doc-214938095',
            'meta': {
              'versionId': '214938095',
              'lastUpdated': '2020-07-30T11:20:00Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Provenance</b></p>'\
              '<p><b>Target</b>:</p><ul><li>DocumentReference/214938095</li></ul>'\
              '<p><b>Recorded</b>: Jul 30, 2020  6:20 A.M. CDT</p>'\
              '<p><b>Agents</b>:</p>'\
              '<dl><dt>M, SANGEETHA</dt><dd><b>Agent Type</b>: Author</dd>'\
              '<dd><b>Agent Role</b>: Source</dd><dt>DEVENG-DEFAULT-PROV</dt>'\
              '<dd><b>Agent Type</b>: Author</dd><dd><b>Agent Role</b>: Source</dd></dl></div>'
            },
            'target': [
              {
                'reference': 'DocumentReference/214938095'
              }
            ],
            'recorded': '2020-07-30T11:20:00Z',
            'agent': [
              {
                'type': {
                  'coding': [
                    {
                      'system': 'http://terminology.hl7.org/CodeSystem/provenance-participant-type',
                      'code': 'author'
                    }
                  ],
                  'text': 'Author'
                },
                'role': [
                  {
                    'coding': [
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/contractsignertypecodes',
                        'code': 'SOURCE'
                      }
                    ],
                    'text': 'Source'
                  }
                ],
                'who': {
                  'reference': 'Practitioner/159105544',
                  'display': 'M, SANGEETHA'
                }
              },
              {
                'type': {
                  'coding': [
                    {
                      'system': 'http://terminology.hl7.org/CodeSystem/provenance-participant-type',
                      'code': 'author'
                    }
                  ],
                  'text': 'Author'
                },
                'role': [
                  {
                    'coding': [
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/contractsignertypecodes',
                        'code': 'SOURCE'
                      }
                    ],
                    'text': 'Source'
                  }
                ],
                'who': {
                  'reference': 'Organization/57535538',
                  'display': 'DEVENG-DEFAULT-PROV'
                }
              }
            ]
          },
          'search': {
            'mode': 'include'
          }
        }
      ]
    }.freeze
  end
end
