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
              'div': '<div xmlns=\'http://www.w3.org/1999/xhtml\'><p><b>Service Request</b></p><p><b>Patient</b>: FRIAS,</p>'\
              '<p><b>Code</b>: Pain Assessment Adult</p><p><b>Occurrence</b>: every 4 hr</p><p><b>Priority</b>: Routine</p><'\
              'p><b>Status</b>: Entered in Error</p><p><b>Intent</b>: Order</p><p><b>Requester</b>: Martin, MD, Mary Cerner</p>'\
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
                'div': '<div xmlns=\'http://www.w3.org/1999/xhtml\'><p><b>Service Request</b></p><p><b>Patient</b>: FRIAS,</p>'\
                '<p><b>Code</b>: Consult to Case Management</p><p><b>Occurrence</b>: Dec  8, 2016  3:41 P.M. UTC</p>'\
                '<p><b>Priority</b>: Routine</p><p><b>Status</b>: Revoked</p><p><b>Intent</b>: Order</p>'\
                '<p><b>Requester</b>: Martin, MD, Mary Cerner</p><p><b>Order Detail</b>: 12/08/16 9:41:00 CST, Routine</p></div>'
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
              'div': '<div xmlns=\'http://www.w3.org/1999/xhtml\'><p><b>Service Request</b></p><p><b>Patient</b>: FRIAS,</p>'\
              '<p><b>Status</b>: Entered in Error</p><p><b>Intent</b>: Order</p></div>'
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
                'div': '<div xmlns=\'http://www.w3.org/1999/xhtml\'><p><b>Service Request</b></p><p><b>Patient</b>: FRIAS,</p>'\
                '<p><b>Code</b>: Consult to Case Management</p><p><b>Occurrence</b>: Dec  8, 2016  3:41 P.M. UTC</p>'\
                '<p><b>Priority</b>: Routine</p><p><b>Status</b>: Revoked</p><p><b>Intent</b>: Order</p>'\
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
  end
end
