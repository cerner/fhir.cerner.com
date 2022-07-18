# frozen_string_literal: true

module Cerner
  module Resources
    R4_DOCUMENT_REFERENCE ||= {
      "resourceType": 'DocumentReference',
      "id": '198381924',
      "meta": {
        "versionId": '1',
        "lastUpdated": '2022-07-07T09:43:56.000Z'
      },
      "text": {
        "status": 'generated',
        "div": '<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Document Reference</b></p><p><b>Patient Name</b>: '\
        'GETEST, PatientOneHundredSixtySix</p><p><b>Document Type</b>: '\
        'Waveform Strip</p><p><b>Document Category</b>: '\
        'Unknown</p><p><b>Document Title</b>: test1</p><p><b>Service Start Date</b>: '\
        'Jul  7, 2022  9:43 A.M. UTC</p><p><b>Service End Date</b>: '\
        'Jul  7, 2022  9:43 A.M. UTC</p><p><b>Document Status</b>: '\
        'Final</p><p><b>Verifying Provider</b>: Model, User 154 Cerner</p></div>"'
      },
      "identifier": [
        {
          "system": 'https://fhir.cerner.com/ceuuid',
          "value": 'CE87caf4b7-9397-4667-9897-702218017c9e-198381924-2022070709435600'
        }
      ],
      "status": 'current',
      "docStatus": 'final',
      "type": {
        "coding": [
          {
            "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/72',
            "code": '2574499721',
            "display": 'Waveform Strip',
            "userSelected": true
          },
          {
            "system": 'http://terminology.hl7.org/CodeSystem/v3-NullFlavor',
            "code": 'UNK',
            "display": 'unknown'
          }
        ],
        "text": 'Waveform Strip'
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
        "reference": 'Patient/12769853',
        "display": 'GETEST, PatientOneHundredSixtySix'
      },
      "date": '2022-07-07T09:43:56Z',
      "author": [
        {
          "reference": 'Practitioner/11638428',
          "display": 'Model, User 154 Cerner'
        }
      ],
      "authenticator": {
        "reference": 'Practitioner/11638428',
        "display": 'Model, User 154 Cerner'
      },
      "content": [
        {
          "attachment": {
            "contentType": 'application/pdf',
            "url": 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Binary/XR-198381924',
            "title": 'test1',
            "creation": '2022-07-07T09:43:56.000Z'
          },
          "format": {
            "system": 'http://terminology.hl7.org/CodeSystem/data-absent-reason',
            "code": 'unknown',
            "display": 'Unknown'
          }
        }
      ],
      "context": {
        "encounter": [
          {
            "reference": 'Encounter/97966172'
          }
        ],
        "period": {
          "start": '2022-07-07T09:43:56.000Z',
          "end": '2022-07-07T09:43:56.000Z'
        }
      }
    }.freeze

    R4_DOCUMENT_REFERENCE_SEARCH_BY_ENCOUNTER_FILTER_PATIENT_DOCUMENTS ||= {
      "resourceType": 'DocumentReference',
      "id": '198381924',
      "meta": {
        "versionId": '1',
        "lastUpdated": '2022-07-07T09:43:56.000Z'
      },
      "text": {
        "status": 'generated',
        "div": '<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Document Reference</b></p><p><b>Patient Name</b>: '\
        'GETEST, PatientOneHundredSixtySix</p><p><b>Document Type</b>: Waveform Strip</p><p><b>Document Category</b>: '\
        'Unknown</p><p><b>Document Title</b>: test1</p><p><b>Service Start Date</b>: '\
        'Jul  7, 2022  9:43 A.M. UTC</p><p><b>Service End Date</b>: '\
        'Jul  7, 2022  9:43 A.M. UTC</p><p><b>Document Status</b>: '\
        'Final</p><p><b>Verifying Provider</b>: M., User 154 Cerner</p></div>'
      },
      "identifier": [
        {
          "system": 'https://fhir.cerner.com/ceuuid',
          "value": 'CE87caf4b7-9397-4667-9897-702218017c9e-198381924-2022070709435600'
        }
      ],
      "status": 'current',
      "docStatus": 'final',
      "type": {
        "coding": [
          {
            "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/72',
            "code": '2574499721',
            "display": 'Waveform Strip'
          },
          {
            "system": 'http://terminology.hl7.org/CodeSystem/v3-NullFlavor',
            "code": 'UNK',
            "display": 'unknown'
          }
        ],
        "text": 'Waveform Strip'
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
        "reference": 'Patient/12769853',
        "display": 'GETEST, PatientOneHundredSixtySix'
      },
      "date": '2022-07-07T09:43:56Z',
      "author": [
        {
          "reference": 'Practitioner/11638428',
          "display": 'M., User 154 Cerner'
        }
      ],
      "authenticator": {
        "reference": 'Practitioner/11638428',
        "display": 'M., User 154 Cerner'
      },
      "content": [
        {
          "attachment": {
            "contentType": 'application/pdf',
            "url": 'https://fhir-ehr.devcerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Binary/XR-198381924',
            "title": 'test1',
            "creation": '2022-07-07T09:43:56.000Z'
          },
          "format": {
            "system": 'http://terminology.hl7.org/CodeSystem/data-absent-reason',
            "code": 'unknown',
            "display": 'Unknown'
          }
        }
      ],
      "context": {
        "encounter": [
          {
            "reference": 'Encounter/97966172'
          }
        ],
        "period": {
          "start": '2022-07-07T09:43:56.000Z',
          "end": '2022-07-07T09:43:56.000Z'
        }
      }
    }.freeze

    R4_DOCUMENT_REFERENCE_PATIENT_ACCESS ||= {
      "resourceType": 'DocumentReference',
      "id": '198381924',
      "meta": {
        "versionId": '1',
        "lastUpdated": '2022-07-07T09:43:56.000Z'
      },
      "text": {
        "status": 'generated',
        "div": '<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Document Reference</b></p><p><b>Patient Name</b>: '\
        'GETEST, PatientOneHundredSixtySix</p><p><b>Document Type</b>: Waveform Strip</p><p><b>Document Category</b>: '\
        'Unknown</p><p><b>Document Title</b>: test1</p><p><b>Service Start Date</b>: '\
        'Jul  7, 2022  9:43 A.M. UTC</p><p><b>Service End Date</b>: '\
        'Jul  7, 2022  9:43 A.M. UTC</p><p><b>Document Status</b>: '\
        'Final</p><p><b>Verifying Provider</b>: M., User 154 Cerner</p></div>'
      },
      "identifier": [
        {
          "system": 'https://fhir.cerner.com/ceuuid',
          "value": 'CE87caf4b7-9397-4667-9897-702218017c9e-198381924-2022070709435600'
        }
      ],
      "status": 'current',
      "docStatus": 'final',
      "type": {
        "coding": [
          {
            "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/72',
            "code": '2574499721',
            "display": 'Waveform Strip'
          },
          {
            "system": 'http://terminology.hl7.org/CodeSystem/v3-NullFlavor',
            "code": 'UNK',
            "display": 'unknown'
          }
        ],
        "text": 'Waveform Strip'
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
        "reference": 'Patient/12769853',
        "display": 'GETEST, PatientOneHundredSixtySix'
      },
      "date": '2022-07-07T09:43:56Z',
      "author": [
        {
          "reference": 'Practitioner/11638428',
          "display": 'M., User 154 Cerner'
        }
      ],
      "authenticator": {
        "reference": 'Practitioner/11638428',
        "display": 'M., User 154 Cerner'
      },
      "content": [
        {
          "attachment": {
            "contentType": 'application/pdf',
            "url": 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Binary/XR-198381924',
            "title": 'test1',
            "creation": '2022-07-07T09:43:56.000Z'
          },
          "format": {
            "system": 'http://terminology.hl7.org/CodeSystem/data-absent-reason',
            "code": 'unknown',
            "display": 'Unknown'
          }
        }
      ],
      "context": {
        "encounter": [
          {
            "reference": 'Encounter/97966172'
          }
        ],
        "period": {
          "start": '2022-07-07T09:43:56.000Z',
          "end": '2022-07-07T09:43:56.000Z'
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
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference?patient=12769853'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference/198381924',
          'resource': R4_DOCUMENT_REFERENCE
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference/198381926',
          'resource': {
            "resourceType": 'DocumentReference',
            "id": '198381926',
            "meta": {
              "versionId": '1',
              "lastUpdated": '2022-07-07T09:43:56.000Z'
            },
            "text": {
              "status": 'generated',
              "div": '<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Document Reference</b></p>'\
              '<p><b>Patient Name</b>: '\
              'GETEST, PatientOneHundredSixtySix</p><p><b>Document Type</b>: '\
              'Waveform Strip</p><p><b>Document Category</b>: '\
              'Unknown</p><p><b>Document Title</b>: test1</p><p><b>Service Start Date</b>: '\
              'Jul  7, 2022  9:43 A.M. UTC</p><p><b>Service End Date</b>: '\
              'Jul  7, 2022  9:43 A.M. UTC</p><p><b>Document Status</b>: Final</p></div>'
            },
            "identifier": [
              {
                "system": 'https://fhir.cerner.com/ceuuid',
                "value": 'CE87caf4b7-9397-4667-9897-702218017c9e-198381926-2022070709435600'
              }
            ],
            "status": 'current',
            "docStatus": 'final',
            "type": {
              "coding": [
                {
                  "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/72',
                  "code": '2574499721',
                  "display": 'Waveform Strip',
                  "userSelected": true
                },
                {
                  "system": 'http://terminology.hl7.org/CodeSystem/v3-NullFlavor',
                  "code": 'UNK',
                  "display": 'unknown'
                }
              ],
              "text": 'Waveform Strip'
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
              "reference": 'Patient/12769853',
              "display": 'GETEST, PatientOneHundredSixtySix'
            },
            "date": '2022-07-07T09:43:56Z',
            "content": [
              {
                "attachment": {
                  "contentType": 'application/pdf',
                  "url": 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Binary/XR-198381926',
                  "title": 'test1',
                  "creation": '2022-07-07T09:43:56.000Z'
                },
                "format": {
                  "system": 'http://terminology.hl7.org/CodeSystem/data-absent-reason',
                  "code": 'unknown',
                  "display": 'Unknown'
                }
              }
            ],
            "context": {
              "encounter": [
                {
                  "reference": 'Encounter/97966172'
                }
              ],
              "period": {
                "start": '2022-07-07T09:43:56.000Z',
                "end": '2022-07-07T09:43:56.000Z'
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
          'url': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference?patient=12769853'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference/198381924',
          'resource': R4_DOCUMENT_REFERENCE_PATIENT_ACCESS
        },
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference/198381926',
          'resource': {
            "resourceType": 'DocumentReference',
            "id": '198381926',
            "meta": {
              "versionId": '1',
              "lastUpdated": '2022-07-07T09:43:56.000Z'
            },
            "text": {
              "status": 'generated',
              "div": '<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Document Reference</b></p><p><b>Patient Name</b>: '\
              'GETEST, PatientOneHundredSixtySix</p><p><b>Document Type</b>: Waveform Strip</p><p><b>Document Category</b>: '\
              'Unknown</p><p><b>Document Title</b>: test1</p><p><b>Service Start Date</b>: '\
              'Jul  7, 2022  9:43 A.M. UTC</p><p><b>Service End Date</b>: '\
              'Jul  7, 2022  9:43 A.M. UTC</p><p><b>Document Status</b>: Final</p></div>'
            },
            "identifier": [
              {
                "system": 'https://fhir.cerner.com/ceuuid',
                "value": 'CE87caf4b7-9397-4667-9897-702218017c9e-198381926-2022070709435600'
              }
            ],
            "status": 'current',
            "docStatus": 'final',
            "type": {
              "coding": [
                {
                  "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/72',
                  "code": '2574499721',
                  "display": 'Waveform Strip'
                },
                {
                  "system": 'http://terminology.hl7.org/CodeSystem/v3-NullFlavor',
                  "code": 'UNK',
                  "display": 'unknown'
                }
              ],
              "text": 'Waveform Strip'
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
              "reference": 'Patient/12769853',
              "display": 'GETEST, PatientOneHundredSixtySix'
            },
            "date": '2022-07-07T09:43:56Z',
            "content": [
              {
                "attachment": {
                  "contentType": 'application/pdf',
                  "url": 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Binary/XR-198381926',
                  "title": 'test1',
                  "creation": '2022-07-07T09:43:56.000Z'
                },
                "format": {
                  "system": 'http://terminology.hl7.org/CodeSystem/data-absent-reason',
                  "code": 'unknown',
                  "display": 'Unknown'
                }
              }
            ],
            "context": {
              "encounter": [
                {
                    "reference": 'Encounter/97966172'
                }
              ],
              "period": {
                "start": '2022-07-07T09:43:56.000Z',
                "end": '2022-07-07T09:43:56.000Z'
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
      "resourceType": 'Bundle',
      "id": 'e6af8dd8-78e2-4e9e-b04c-760b76128426',
      "type": 'searchset',
      "link": [
        {
          "relation": 'self',
          "url": 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference?_id=198449751&_revinclude=Provenance%3Atarget'
        }
      ],
      "entry": [
        {
          "fullUrl": 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference/198449751',
          "resource": {
            "resourceType": 'DocumentReference',
            "id": '198449751',
            "meta": {
              "versionId": '1',
              "lastUpdated": '2022-07-15T07:45:48.000Z'
            },
            "text": {
              "status": 'generated',
              "div": '<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Document Reference</b></p>'\
              '<p><b>Patient Name</b>: '\
              'SMART, WILMA</p><p><b>Document Type</b>: Height Weight Allergy Rule - Text</p>'\
              '<p><b>Document Category</b>: '\
              'Unknown</p><p><b>Document Title</b>: Clinical Note</p><p><b>Service Start Date</b>: '\
              'Jul 15, 2022  1:15 P.M. UTC</p><p><b>Service End Date</b>: '\
              'Jul 15, 2022  1:15 P.M. UTC</p><p><b>Document Status</b>: '\
              'Final</p><p><b>Verifying Provider</b>: Allen, Jodi</p></div>'
            },
            "identifier": [
              {
                "system": 'https://fhir.cerner.com/ceuuid',
                "value": 'CE87caf4b7-9397-4667-9897-702218017c9e-198449751-2022071507454800'
              }
            ],
            "status": 'current',
            "docStatus": 'final',
            "type": {
              "coding": [
                {
                  "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/72',
                  "code": '20732501',
                  "display": 'Height Weight Allergy Rule - Text',
                  "userSelected": true
                },
                {
                  "system": 'http://terminology.hl7.org/CodeSystem/v3-NullFlavor',
                  "code": 'UNK',
                  "display": 'unknown'
                }
              ],
              "text": 'Height Weight Allergy Rule - Text'
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
              "reference": 'Patient/12724065',
              "display": 'SMART, WILMA'
            },
            "date": '2022-07-15T07:45:48Z',
            "author": [
              {
                "reference": 'Practitioner/12743472',
                "display": 'Allen, Jodi'
              }
            ],
            "authenticator": {
              "reference": 'Practitioner/12743472',
              "display": 'Allen, Jodi'
            },
            "content": [
              {
                "attachment": {
                  "contentType": 'text/plain',
                  "url": 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Binary/R-198449751',
                  "title": 'Clinical Note',
                  "creation": '2022-07-15T13:15:46.000Z'
                },
                "format": {
                  "system": 'http://terminology.hl7.org/CodeSystem/data-absent-reason',
                  "code": 'unknown',
                  "display": 'Unknown'
                }
              }
            ],
            "context": {
              "encounter": [
                {
                  "reference": 'Encounter/97953483'
                }
              ],
              "period": {
                "start": '2022-07-15T13:15:46.000Z',
                "end": '2022-07-15T13:15:46.000Z'
              }
            }
          },
          "search": {
            "mode": 'match'
          }
        },
        {
          "fullUrl": 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Provenance/INT.doc-198449751',
          "resource": {
            "resourceType": 'Provenance',
            "id": 'INT.doc-198449751',
            "meta": {
              "versionId": '198449751',
              "lastUpdated": '2022-07-15T07:45:48Z'
            },
            "text": {
              "status": 'generated',
              "div": '<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Provenance</b></p><p><b>Target</b>:'\
              '</p><ul><li>DocumentReference/198449751</li></ul><p><b>Recorded</b>: '\
              'Jul 15, 2022  7:45 A.M. UTC</p><p><b>Agents</b>:</p><dl><dt>Allen, Jodi</dt><dd><b>Agent Type</b>: '\
              'Author</dd><dd><b>Agent Role</b>: Source</dd><dt>Model Cancer Center</dt><dd><b>Agent Type</b>: '\
              'Author</dd><dd><b>Agent Role</b>: Source</dd></dl></div>'
            },
            "target": [
              {
                "reference": 'DocumentReference/198449751'
              }
            ],
            "recorded": '2022-07-15T07:45:48Z',
            "agent": [
              {
                "type": {
                  "coding": [
                    {
                      "system": 'http://terminology.hl7.org/CodeSystem/provenance-participant-type',
                      "code": 'author'
                    }
                  ],
                  "text": 'Author'
                },
                "role": [
                  {
                    "coding": [
                      {
                        "system": 'http://terminology.hl7.org/CodeSystem/contractsignertypecodes',
                        "code": 'SOURCE'
                      }
                    ],
                    "text": 'Source'
                  }
                ],
                "who": {
                  "reference": 'Practitioner/12743472',
                  "display": 'Allen, Jodi'
                }
              },
              {
                "type": {
                  "coding": [
                    {
                      "system": 'http://terminology.hl7.org/CodeSystem/provenance-participant-type',
                      "code": 'author'
                    }
                  ],
                  "text": 'Author'
                },
                "role": [
                  {
                    "coding": [
                      {
                        "system": 'http://terminology.hl7.org/CodeSystem/contractsignertypecodes',
                        "code": 'SOURCE'
                      }
                    ],
                    "text": 'Source'
                  }
                ],
                "who": {
                  "reference": 'Organization/1024451',
                  "display": 'Model Cancer Center'
                }
              }
            ]
          },
          "search": {
            "mode": 'include'
          }
        }
      ]
    }.freeze
  end
end
