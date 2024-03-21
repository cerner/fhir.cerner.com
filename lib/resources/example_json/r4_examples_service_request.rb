# frozen_string_literal: true

module Cerner
  module Resources
    R4_SERVICE_REQUEST ||= {
      'resourceType': 'ServiceRequest',
      'id': '294672281',
      'meta': {
        'versionId': '1',
        'lastUpdated': '2018-02-05T16:01:45.000Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns=\'http://www.w3.org/1999/xhtml\'><p><b>Service Request</b></p>'\
        '<p><b>Patient</b>: FRIAS,</p><p><b>Code</b>: Pain Assessment Adult</p>'\
        '<p><b>Occurrence Starts</b>: Dec 12, 2016 12:00 P.M. UTC</p>'\
        '<p><b>Occurrence Ends</b>: Feb  5, 2018  4:01 P.M. UTC</p>'\
        '<p><b>Priority</b>: Routine</p><p><b>Status</b>: Revoked</p>'\
        '<p><b>Intent</b>: Instance Order</p><p><b>Requester</b>: Martin, MD, Mary Cerner</p>'\
        '<p><b>Order Detail</b>: 12/12/16 6:00:00 CST</p></div>'
      },
      'basedOn': [
        {
          'reference': 'ServiceRequest/294664205'
        }
      ],
      'status': 'revoked',
      'intent': 'instance-order',
      'category': [
        {
          'coding': [
            {
              'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/6000',
              'code': '2515',
              'display': 'Patient Care',
              'userSelected': true
            }
          ],
          'text': 'Patient Care'
        }
      ],
      'priority': 'routine',
      'code': {
        'coding': [
          {
            'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/200',
            'code': '2780687',
            'userSelected': true
          }
        ],
        'text': 'Pain Assessment Adult'
      },
      'orderDetail': [
        {
          'text': '12/12/16 6:00:00 CST'
        }
      ],
      'subject': {
        'reference': 'Patient/12457977',
        'display': 'FRIAS,'
      },
      'encounter': {
        'reference': 'Encounter/97697398'
      },
      'occurrencePeriod': {
        'start': '2016-12-12T06:00:00.000-06:00',
        'end': '2018-02-05T10:01:45.000-06:00'
      },
      'authoredOn': '2016-12-08T09:41:35.000-06:00',
      'requester': {
        'reference': 'Practitioner/11724002',
        'display': 'Martin, MD, Mary Cerner'
      },
      'note': [
        {
          'text': 'Additional assessments may be required if pain level unacceptable'
        }
      ]
    }.freeze

    R4_SERVICE_REQUEST_PATIENT_ACCESS ||= {
      'resourceType': 'ServiceRequest',
      'id': '294672281',
      'meta': {
        'versionId': '1',
        'lastUpdated': '2018-02-05T16:01:45.000Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns=\'http://www.w3.org/1999/xhtml\'><p><b>Service Request</b></p>'\
        '<p><b>Patient</b>: FRIAS,</p><p><b>Code</b>: Pain Assessment Adult</p>'\
        '<p><b>Occurrence Starts</b>: Dec 12, 2016 12:00 P.M. UTC</p>'\
        '<p><b>Occurrence Ends</b>: Feb  5, 2018  4:01 P.M. UTC</p>'\
        '<p><b>Priority</b>: Routine</p><p><b>Status</b>: Revoked</p>'\
        '<p><b>Intent</b>: Instance Order</p><p><b>Requester</b>: Martin, MD, Mary Cerner</p></div>'
      },
      'basedOn': [
        {
          'reference': 'ServiceRequest/294664205'
        }
      ],
      'status': 'revoked',
      'intent': 'instance-order',
      'category': [
        {
          'coding': [
            {
              'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/6000',
              'code': '2515',
              'display': 'Patient Care',
              'userSelected': true
            }
          ],
          'text': 'Patient Care'
        }
      ],
      'priority': 'routine',
      'code': {
        'coding': [
          {
            'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/200',
            'code': '2780687',
            'userSelected': true
          }
        ],
        'text': 'Pain Assessment Adult'
      },
      'subject': {
        'reference': 'Patient/12457977',
        'display': 'FRIAS,'
      },
      'encounter': {
        'reference': 'Encounter/97697398'
      },
      'occurrencePeriod': {
        'start': '2016-12-12T06:00:00.000-06:00',
        'end': '2018-02-05T10:01:45.000-06:00'
      },
      'authoredOn': '2016-12-08T09:41:35.000-06:00',
      'requester': {
        'reference': 'Practitioner/11724002',
        'display': 'Martin, MD, Mary Cerner'
      }
    }.freeze

    R4_SERVICE_REQUEST_PATIENT_ACCESS_ENTERED_IN_ERROR ||= {
      'resourceType': 'ServiceRequest',
      'id': '294664205',
      'meta': {
        'versionId': '2',
        'lastUpdated': '2018-02-02T20:01:59.000Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns=\'http://www.w3.org/1999/xhtml\'><p><b>Service Request</b></p><p><b>Patient</b>: FRIAS,</p>'\
        '<p><b>Status</b>: Entered in Error</p><p><b>Intent</b>: Order</p></div>'
      },
      'status': 'entered-in-error',
      'intent': 'order',
      'subject': {
        'reference': 'Patient/12457977',
        'display': 'FRIAS,'
      }
    }.freeze

    R4_SERVICE_REQUEST_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '209b1587-251d-4ac8-9d6d-35660e9476fb',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/ServiceRequest?patient=12457977'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/ServiceRequest/294664205',
          'resource': {
            'resourceType': 'ServiceRequest',
            'id': '294664205',
            'meta': {
              'versionId': '2',
              'lastUpdated': '2018-02-02T20:01:59.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns=\'http://www.w3.org/1999/xhtml\'><p><b>Service Request</b></p>'\
              '<p><b>Patient</b>: FRIAS,</p><p><b>Code</b>: Pain Assessment Adult</p>'\
              '<p><b>Occurrence</b>: every 4 hr</p><p><b>Priority</b>: Routine</p><p><b>Status</b>: Entered in Error'\
              '</p><p><b>Intent</b>: Order</p><p><b>Requester</b>: Martin, MD, Mary Cerner</p>'\
              '<p><b>Order Detail</b>: 12/08/16 9:41:00 CST, every 4 hr</p></div>'
            },
            'status': 'entered-in-error',
            'intent': 'order',
            'category': [
              {
                'coding': [
                  {
                    'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/6000',
                    'code': '2515',
                    'display': 'Patient Care',
                    'userSelected': true
                  }
                ],
                'text': 'Patient Care'
              }
            ],
            'priority': 'routine',
            'code': {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/200',
                  'code': '2780687',
                  'userSelected': true
                }
              ],
              'text': 'Pain Assessment Adult'
            },
            'orderDetail': [
              {
                'text': '12/08/16 9:41:00 CST, every 4 hr'
              }
            ],
            'subject': {
              'reference': 'Patient/12457977',
              'display': 'FRIAS,'
            },
            'encounter': {
              'reference': 'Encounter/97697398'
            },
            'occurrenceTiming': {
              'repeat': {
                'boundsPeriod': {
                  'start': '2016-12-08T09:41:00.000-06:00',
                  'end': '2018-02-02T14:01:59.000-06:00'
                }
              },
              'code': {
                'coding': [
                  {
                    'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4003',
                    'code': '696547',
                    'display': 'every 4 hr',
                    'userSelected': true
                  },
                  {
                    'system': 'http://terminology.hl7.org/CodeSystem/v3-GTSAbbreviation',
                    'code': 'Q4H',
                    'display': 'Q4H',
                    'userSelected': false
                  }
                ],
                'text': 'every 4 hr'
              }
            },
            'authoredOn': '2016-12-08T09:41:35.000-06:00',
            'requester': {
              'reference': 'Practitioner/11724002',
              'display': 'Martin, MD, Mary Cerner'
            },
            'note': [
              {
                'text': 'Additional assessments may be required if pain level unacceptable'
              }
            ]
          }
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/ServiceRequest/294664221',
          'resource': {
            'resourceType': 'ServiceRequest',
            'id': '294664221',
            'meta': {
              'versionId': '1',
              'lastUpdated': '2016-12-29T02:00:21.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns=\'http://www.w3.org/1999/xhtml\'><p><b>Service Request</b></p>'\
              '<p><b>Patient</b>: FRIAS,</p><p><b>Code</b>: Consult to Case Management</p>'\
              '<p><b>Occurrence</b>: Dec  8, 2016  3:41 P.M. UTC</p><p><b>Priority</b>: Routine</p>'\
              '<p><b>Status</b>: Revoked</p><p><b>Intent</b>: Order</p><p><b>Requester'\
              '</b>: Martin, MD, Mary Cerner</p><p><b>Order Detail</b>: 12/08/16 9:41:00 CST, Routine</p></div>'
            },
            'status': 'revoked',
            'intent': 'order',
            'category': [
              {
                'coding': [
                  {
                    'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/6000',
                    'code': '636063',
                    'display': 'Consults',
                    'userSelected': true
                  }
                ],
                'text': 'Consults'
              }
            ],
            'priority': 'routine',
            'code': {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/200',
                  'code': '2551292823',
                  'userSelected': true
                }
              ],
              'text': 'Consult to Case Management'
            },
            'orderDetail': [
              {
                'text': '12/08/16 9:41:00 CST, Routine'
              }
            ],
            'subject': {
              'reference': 'Patient/12457977',
              'display': 'FRIAS,'
            },
            'encounter': {
              'reference': 'Encounter/97697398'
            },
            'occurrenceDateTime': '2016-12-08T09:41:00.000-06:00',
            'authoredOn': '2016-12-08T09:41:54.000-06:00',
            'requester': {
              'reference': 'Practitioner/11724002',
              'display': 'Martin, MD, Mary Cerner'
            },
            'note': [
              {
                'text': 'Appropriate discharge referrals and schedule follow-up appointment before discharge'
              }
            ]
          }
        }
      ]
    }.freeze

    R4_SERVICE_REQUEST_PATIENT_ACCESS_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '209b1587-251d-4ac8-9d6d-35660e9476fb',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/ServiceRequest?patient=12457977'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/ServiceRequest/294664205',
          'resource': {
            'resourceType': 'ServiceRequest',
            'id': '294664205',
            'meta': {
              'versionId': '2',
              'lastUpdated': '2018-02-02T20:01:59.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns=\'http://www.w3.org/1999/xhtml\'><p><b>Service Request</b></p>'\
              '<p><b>Patient</b>: FRIAS,</p><p><b>Status</b>: Entered in Error</p><p><b>Intent</b>: Order</p></div>'
            },
            'status': 'entered-in-error',
            'intent': 'order',
            'subject': {
              'reference': 'Patient/12457977',
              'display': 'FRIAS,'
            }
          }
        },
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/ServiceRequest/294664221',
          'resource': {
            'resourceType': 'ServiceRequest',
            'id': '294664221',
            'meta': {
              'versionId': '1',
              'lastUpdated': '2016-12-29T02:00:21.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns=\'http://www.w3.org/1999/xhtml\'><p><b>Service Request</b></p>'\
              '<p><b>Patient</b>: FRIAS,</p><p><b>Code</b>: Consult to Case Management</p>'\
              '<p><b>Occurrence</b>: Dec  8, 2016  3:41 P.M. UTC</p><p><b>Priority</b>: Routine</p>'\
              '<p><b>Status</b>: Revoked</p><p><b>Intent</b>: Order</p>'\
              '<p><b>Requester</b>: Martin, MD, Mary Cerner</p></div>'
            },
            'status': 'revoked',
            'intent': 'order',
            'category': [
              {
                'coding': [
                  {
                    'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/6000',
                    'code': '636063',
                    'display': 'Consults',
                    'userSelected': true
                  }
                ],
                'text': 'Consults'
              }
            ],
            'priority': 'routine',
            'code': {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/200',
                  'code': '2551292823',
                  'userSelected': true
                }
              ],
              'text': 'Consult to Case Management'
            },
            'subject': {
              'reference': 'Patient/12457977',
              'display': 'FRIAS,'
            },
            'encounter': {
              'reference': 'Encounter/97697398'
            },
            'occurrenceDateTime': '2016-12-08T09:41:00.000-06:00',
            'authoredOn': '2016-12-08T09:41:54.000-06:00',
            'requester': {
              'reference': 'Practitioner/11724002',
              'display': 'Martin, MD, Mary Cerner'
            }
          }
        }
      ]
    }.freeze

    R4_SERVICE_REQUEST_SEARCH_BY_REVINCLUDE ||= {
      "resourceType": 'Bundle',
      "id": '5e6832ef-6254-4cff-abfc-fd04edf63869',
      "type": 'searchset',
      "link": [
        {
          "relation": 'self',
          "url": 'https://fhir-ehr-latest.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/ServiceRequest?_id=309358493%2C309307167&_revinclude=Provenance%3Atarget'
        }
      ],
      "entry": [
        {
          "fullUrl": 'https://fhir-ehr-latest.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/ServiceRequest/309307167',
          "resource": {
            "resourceType": 'ServiceRequest',
            "id": '309307167',
            "meta": {
              "versionId": '2',
              "lastUpdated": '2020-07-21T23:50:53Z'
            },
            "text": {
              "status": 'generated',
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Service Request</b></p><p><b>Patient'\
              '</b>: LAB, TESTONE</p><p><b>Code</b>: CT Brain/Head w/ Contrast</p><p><b>Occurrence Starts'\
              '</b>: Jul 13, 2020  3:13 P.M. CDT</p><p><b>Occurrence Ends</b>: Jul 21, 2020  6:50 P.M. CDT'\
              '\</p><p><b>Priority</b>: Routine</p><p><b>Reason</b>:</p><ul><li>Testing Phys Doc data</li>'\
              '</ul><p><b>Status</b>: Completed</p><p><b>Intent</b>: Order</p><p><b>Requester'\
              '</b>: Griffin, Wendy</p><p><b>Order Detail</b>: 07/13/20 15:13:00 CDT,'\
              ' Routine, Reason: Testing Phys Doc data</p></div>'
            },
            "status": 'completed',
            "intent": 'order',
            "category": [
              {
                "coding": [
                  {
                    "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/6000',
                    "code": '2517',
                    "display": 'Radiology',
                    "userSelected": true
                  },
                  {
                    "system": 'http://snomed.info/sct',
                    "code": '363679005',
                    "display": 'Imaging (procedure)',
                    "userSelected": false
                  }
                ],
                "text": 'Radiology'
              }
            ],
            "priority": 'routine',
            "code": {
              "coding": [
                {
                  "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/200',
                  "code": '2906727',
                  "userSelected": true
                }
              ],
              "text": 'CT Brain/Head w/ Contrast'
            },
            "orderDetail": [
              {
                "text": '07/13/20 15:13:00 CDT, Routine, Reason: Testing Phys Doc data'
              }
            ],
            "subject": {
              "reference": 'Patient/12479978',
              "display": 'LAB, TESTONE'
            },
            "encounter": {
              "reference": 'Encounter/97985521'
            },
            "occurrencePeriod": {
              "start": '2020-07-13T20:13:00Z',
              "end": '2020-07-21T23:50:53Z'
            },
            "authoredOn": '2020-07-13T20:13:00Z',
            "requester": {
              "reference": 'Practitioner/12772050',
              "display": 'Griffin, Wendy'
            },
            "reasonCode": [
              {
                "text": 'Testing Phys Doc data'
              }
            ]
          },
          "search": {
            "mode": 'match'
          }
        },
        {
          "fullUrl": 'https://fhir-ehr-latest.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/ServiceRequest/309358493',
          "resource": {
            "resourceType": 'ServiceRequest',
            "id": '309358493',
            "meta": {
              "versionId": '1',
              "lastUpdated": '2023-03-02T05:32:42Z'
            },
            "text": {
              "status": 'generated',
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Service Request</b></p><p><b>Patient'\
              '</b>: LAB, TESTONE</p><p><b>Code</b>: Throat Culture</p><p><b>Occurrence</b>: Once</p><p><b>'\
              'Priority</b>: Routine</p><p><b>Body Site</b>:</p><ul><li>Abdomen</li></ul><p><b>Status'\
              '</b>: Active</p><p><b>Intent</b>: Order</p><p><b>Requester</b>: A J, Priyanka</p><p><b>'\
              'Order Detail</b>: Throat, Abdomen, RT collect, 03/01/23 23:31:00 CST, Once, Collected,'\
              ' Micro Spec, 03/01/23 23:31:00 CST</p></div>'
            },
            "status": 'active',
            "intent": 'order',
            "category": [
              {
                "coding": [
                  {
                    "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/6000',
                    "code": '2513',
                    "display": 'Laboratory',
                    "userSelected": true
                  },
                  {
                    "system": 'http://snomed.info/sct',
                    "code": '108252007',
                    "display": 'Laboratory procedure (procedure)',
                    "userSelected": false
                  }
                ],
                "text": 'Laboratory'
              }
            ],
            "priority": 'routine',
            "code": {
              "coding": [
                {
                  "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/200',
                  "code": '2922071',
                  "userSelected": true
                }
              ],
              "text": 'Throat Culture'
            },
            "orderDetail": [
              {
                "text": 'Throat, Abdomen, RT collect, 03/01/23 23:31:00 CST, Once, Collected, Micro'\
                ' Spec, 03/01/23 23:31:00 CST'
              }
            ],
            "subject": {
              "reference": 'Patient/12479978',
              "display": 'LAB, TESTONE'
            },
            "encounter": {
              "reference": 'Encounter/97717398'
            },
            "occurrenceTiming": {
              "repeat": {
                "boundsPeriod": {
                  "start": '2023-03-02T05:31:00Z',
                  "end": '2023-03-02T05:31:00Z'
                }
              },
              "code": {
                "coding": [
                  {
                    "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4003',
                    "code": '696531',
                    "display": 'Once',
                    "userSelected": true
                  }
                ],
                "text": 'Once'
              }
            },
            "authoredOn": '2023-03-02T05:31:00Z',
            "requester": {
              "reference": 'Practitioner/12804533',
              "display": 'A J, Priyanka'
            },
            "bodySite": [
              {
                "coding": [
                  {
                    "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/1028',
                    "code": '309342',
                    "display": 'Abdomen',
                    "userSelected": true
                  },
                  {
                    "system": 'http://snomed.info/sct',
                    "code": '818983003',
                    "display": 'Structure of abdominopelvic cavity and/or content of abdominopelvic'\
                    ' cavity and/or anterior abdominal wall (body structure)',
                    "userSelected": false
                  }
                ],
                "text": 'Abdomen'
              }
            ]
          },
          "search": {
            "mode": 'match'
          }
        },
        {
          "fullUrl": 'https://fhir-ehr-latest.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Provenance/SER-INT.med-309358493',
          "resource": {
            "resourceType": 'Provenance',
            "id": 'SER-INT.med-309358493',
            "meta": {
              "versionId": '309358493',
              "lastUpdated": '2023-03-02T05:32:42Z'
            },
            "text": {
              "status": 'generated',
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Provenance</b></p><p><b>Target'\
              '</b>:</p><ul><li>ServiceRequest/309358493</li></ul><p><b>Recorded</b>: Mar  1, 2023 11:32 P.M. CST'\
              '</p><p><b>Agents</b>:</p><dl><dt>Model Hospital</dt><dd><b>Agent Type</b>: Author</dd>'\
              '<dd><b>Agent Role</b>: Source</dd></dl></div>'
            },
            "target": [
              {
                "reference": 'ServiceRequest/309358493'
              }
            ],
            "recorded": '2023-03-02T05:32:42Z',
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
                  "reference": 'Organization/675844',
                  "display": 'Model Hospital'
                }
              }
            ]
          },
          "search": {
            "mode": 'include'
          }
        },
        {
          "fullUrl": 'https://fhir-ehr-latest.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Provenance/SER-INT.med-309307167',
          "resource": {
            "resourceType": 'Provenance',
            "id": 'SER-INT.med-309307167',
            "meta": {
              "versionId": '309307167',
              "lastUpdated": '2020-07-21T23:50:53Z'
            },
            "text": {
              "status": 'generated',
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Provenance</b></p><p><b>Target</b>:</p>'\
              '<ul><li>ServiceRequest/309307167</li></ul><p><b>Recorded</b>: Jul 21, 2020  6:50 P.M. CDT</p>'\
              '<p><b>Agents</b>:</p><dl><dt>Griffin, Wendy</dt><dd><b>Agent Type</b>: Author</dd><dd><b>Agent Role'\
              '</b>: Source</dd><dt>Model Hospital</dt><dd><b>Agent Type</b>: Author</dd><dd><b>Agent Role'\
              '</b>: Source</dd></dl></div>'
            },
            "target": [
              {
                "reference": 'ServiceRequest/309307167'
              }
            ],
            "recorded": '2020-07-21T23:50:53Z',
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
                  "reference": 'Practitioner/12772050',
                  "display": 'Griffin, Wendy'
                },
                "onBehalfOf": {
                  "reference": 'Organization/675844',
                  "display": 'Model Hospital'
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
                  "reference": 'Organization/675844',
                  "display": 'Model Hospital'
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
