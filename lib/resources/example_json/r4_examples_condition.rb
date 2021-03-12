# frozen_string_literal: true

module Cerner
  module Resources

    R4_CONDITION_ENTRY ||= {
      'resourceType': 'Condition',
      'id': 'p73077203',
      'meta': {
        'versionId': '73080185',
        'lastUpdated': '2020-06-11T04:05:04.000Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Condition</b></p><p><b>Patient</b>: SMART, NANCY'\
               '</p><p><b>Problem</b>: Pregnant, Patient currently pregnant (finding)</p><p><b>Clinical Status'\
               '</b>: Resolved</p><p><b>Verification Status</b>: Confirmed</p><p><b>Onset</b>: Jun 12, 2019</p>'\
               '<p><b>Resolved</b>: Apr  4, 2020  5:00 P.M. UTC</p></div>'
      },
      'clinicalStatus': {
        'coding': [
          {
            'system': 'http://terminology.hl7.org/CodeSystem/condition-clinical',
            'code': 'resolved',
            'display': 'Resolved',
            'userSelected': false
          }
        ],
        'text': 'Resolved'
      },
      'verificationStatus': {
        'coding': [
          {
            'system': 'http://terminology.hl7.org/CodeSystem/condition-ver-status',
            'code': 'confirmed',
            'display': 'Confirmed',
            'userSelected': false
          }
        ],
        'text': 'Confirmed'
      },
      'category': [
        {
          'coding': [
            {
              'system': 'http://terminology.hl7.org/CodeSystem/condition-category',
              'code': 'problem-list-item',
              'display': 'Problem List Item'
            }
          ],
          'text': 'Problem List Item'
        }
      ],
      'code': {
        'coding': [
          {
            'system': 'http://snomed.info/sct',
            'code': '77386006',
            'display': 'Patient currently pregnant (finding)',
            'userSelected': true
          }
        ],
        'text': 'Pregnant'
      },
      'subject': {
        'reference': 'Patient/12724066',
        'display': 'SMART, NANCY'
      },
      'onsetDateTime': '2019-06-12',
      'abatementDateTime': '2020-04-04T17:00:00.000Z',
      'recordedDate': '2020-03-05T16:54:50.000Z',
      'recorder': {
        'reference': 'Practitioner/683925',
        'display': "Cerner Test, Women's Health - Nurse Cerner"
      }
    }.freeze

    R4_CONDITION_HEALTH_CONCERNS_ENTRY ||= {
      'resourceType': 'Condition',
      'id': '11eb6f9378da739688c749b03f4a6e42',
      'meta': {
        'versionId': '0',
        'lastUpdated': '2021-02-15T13:41:14.339Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Condition</b></p>'\
        '<p><b>Patient</b>: MARSTON, JACK </p><p><b>Health Concern</b>: Unknown, Unknown</p>'\
        '<p><b>Clinical Status</b>: Active</p><p><b>Verification Status</b>: Confirmed</p>'\
        '<p><b>Recorder</b>: oneplan oneplan</p><p><b>Recorded Date</b>: Feb 15, 2021 7:41 A.M. CST</p></div>'
      },
      'clinicalStatus': {
        'coding': [
          {
            'system': 'http://terminology.hl7.org/CodeSystem/condition-clinical',
            'code': 'active',
            'display': 'Active',
            'userSelected': false
          }
        ]
      },
      'verificationStatus': {
        'coding': [
          {
            'system': 'http://terminology.hl7.org/CodeSystem/condition-ver-status',
            'code': 'confirmed',
            'display': 'Confirmed',
            'userSelected': false
          }
        ]
      },
      'category': [
        {
          'coding': [
            {
              'system': 'http://www.hl7.org/fhir/us/core/ValueSet-us-core-condition-category',
              'code': 'health-concern',
              'display': 'Health Concern'
            }
          ],
          'text': 'Health Concern'
        }
      ],
      'code': {
        'coding': [
          {
            'system': 'http://terminology.hl7.org/CodeSystem/data-absent-reason',
            'code': 'unknown',
            'display': 'Unknown'
          }
        ],
        'text': 'Unknown'
      },
      'subject': {
        'reference': 'Patient/166045489',
        'display': 'MARSTON, JACK '
      },
      'recordedDate': '2021-02-15T13:41:14.339Z',
      'recorder': {
        'display': 'oneplan oneplan'
      }
    }.freeze

    R4_PATIENT_CONDITION_ENTRY ||= {
      'resourceType': 'Condition',
      'id': 'p109117485',
      'meta': {
        'versionId': '109117485',
        'lastUpdated': '2020-06-11T04:05:04.000Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Condition</b></p><p><b>Patient</b>: SMART, NANCY'\
               '</p><p><b>Problem</b>: Pregnant, Patient currently pregnant (finding)</p><p><b>Clinical Status'\
               '</b>: Resolved</p><p><b>Verification Status</b>: Confirmed</p><p><b>Onset</b>: Jun 12, 2019</p>'\
               '<p><b>Resolved</b>: Apr  4, 2020  5:00 P.M. UTC</p></div>'
      },
      'clinicalStatus': {
        'coding': [
          {
            'system': 'http://terminology.hl7.org/CodeSystem/condition-clinical',
            'code': 'resolved',
            'display': 'Resolved',
            'userSelected': false
          }
        ],
        'text': 'Resolved'
      },
      'verificationStatus': {
        'coding': [
          {
            'system': 'http://terminology.hl7.org/CodeSystem/condition-ver-status',
            'code': 'confirmed',
            'display': 'Confirmed',
            'userSelected': false
          }
        ],
        'text': 'Confirmed'
      },
      'category': [
        {
          'coding': [
            {
              'system': 'http://terminology.hl7.org/CodeSystem/condition-category',
              'code': 'problem-list-item',
              'display': 'Problem List Item'
            }
          ],
          'text': 'Problem List Item'
        }
      ],
      'code': {
        'coding': [
          {
            'system': 'http://snomed.info/sct',
            'code': '77386006',
            'display': 'Patient currently pregnant (finding)',
            'userSelected': true
          }
        ],
        'text': 'Pregnant'
      },
      'subject': {
        'reference': 'Patient/12742400',
        'display': 'SMART, NANCY'
      },
      'onsetDateTime': '2019-06-12',
      'abatementDateTime': '2020-04-04T17:00:00.000Z',
      'recordedDate': '2020-03-05T16:54:50.000Z'
    }.freeze

    R4_PATIENT_ENTERED_IN_ERROR_ENTRY ||= {
      'resourceType': 'Condition',
      'id': 'd2266495305',
      'meta': {
        'versionId': '2266495305'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Condition</b></p><p><b>Diagnosis</b>:'\
            ' Error, Error</p><p><b>Verification Status</b>: Entered in Error</p></div>'
      },
      'verificationStatus': {
        'coding': [
          {
            'system': 'http://terminology.hl7.org/CodeSystem/condition-clinical',
            'code': 'entered-in-error',
            'display': 'Entered in Error'
          }
        ],
        'text': 'Entered in Error'
      },
      'category': [
        {
          'coding': [
            {
              'system': 'http://terminology.hl7.org/CodeSystem/condition-category',
              'code': 'encounter-diagnosis',
              'display': 'Encounter Diagnosis'
            }
          ],
          'text': 'Encounter Diagnosis'
        }
      ],
      'code': {
        'coding': [
          {
            'system': 'http://terminology.hl7.org/CodeSystem/data-absent-reason',
            'code': 'error',
            'display': 'Error'
          }
        ],
        'text': 'Error'
      },
      'subject': {
        'reference': 'Patient/12742400'
      }
    }.freeze

    R4_PATIENT_ACTIVE_ENTRY ||= {
      'resourceType': 'Condition',
      'id': 'a077dc30-8eee-4bb7-ae7f-ced1273f5c68',
      'meta': {
        'versionId': 'a077dc30-8eee-4bb7-ae7f-ced1273f5c68',
        'lastUpdated': '2020-12-03T22:47:30.000Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Condition</b></p><p><b>Patient</b>: '\
              'SMART, TIMMY</p><p><b>Health Concern</b>: THIS IS A TEST GOAL, THIS IS A TEST GOAL</p>'\
              '<p><b>Clinical Status</b>: Active</p><p><b>Verification Status</b>: Confirmed</p><p>'\
              '<b>Onset</b>: Dec  3, 2020</p><p><b>Recorded Date</b>: Dec  3, 2020 10:47 P.M. UTC</p></div>'
      },
      'clinicalStatus': {
        'coding': [
          {
            'system': 'http://terminology.hl7.org/CodeSystem/condition-clinical',
            'code': 'active',
            'display': 'Active',
            'userSelected': false
          }
        ],
        'text': 'Active'
      },
      'verificationStatus': {
        'coding': [
          {
            'system': 'http://terminology.hl7.org/CodeSystem/condition-ver-status',
            'code': 'confirmed',
            'display': 'Confirmed',
            'userSelected': false
          }
        ],
        'text': 'Confirmed'
      },
      'category': [
        {
          'coding': [
            {
              'system': 'http://terminology.hl7.org/CodeSystem/condition-category',
              'code': 'health-concern',
              'display': 'Health Concern'
            }
          ],
          'text': 'Health Concern'
        }
      ],
      'code': {
        'coding': [
          {
            'display': 'THIS IS A TEST GOAL'
          }
        ],
        'text': 'THIS IS A TEST GOAL'
      },
      'subject': {
        'reference': 'Patient/12742400',
        'display': 'SMART, TIMMY'
      },
      'onsetDateTime': '2020-12-03',
      'recordedDate': '2020-12-03T22:47:30.000Z'
    }.freeze

    R4_CONDITION_PROBLEM ||= {
      'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Condition/p73077203',
      'resource': R4_CONDITION_ENTRY
    }.freeze

    R4_CONDITION_DIAGNOSIS ||= {
      'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Condition/d2572382197',
      'resource': {
        'resourceType': 'Condition',
        'id': 'd2572382197',
        'meta': {
          'versionId': '2572382197',
          'lastUpdated': '2020-06-11T04:03:21.000Z'
        },
        'text': {
          'status': 'generated',
          'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Condition</b></p><p><b>Patient</b>: '\
                 'SMART, NANCY</p><p><b>Diagnosis</b>: Anemia, Anemia (disorder)</p><p><b>Clinical Status</b>: '\
                 'Active</p><p><b>Verification Status</b>: Confirmed</p><p><b>Onset</b>: Jun 10, 2020  5:00 '\
                 'P.M. UTC</p></div>'
        },
        'clinicalStatus': {
          'coding': [
            {
              'system': 'http://terminology.hl7.org/CodeSystem/condition-clinical',
              'code': 'active',
              'display': 'Active'
            }
          ],
          'text': 'Active'
        },
        'verificationStatus': {
          'coding': [
            {
              'system': 'http://terminology.hl7.org/CodeSystem/condition-ver-status',
              'code': 'confirmed',
              'display': 'Confirmed',
              'userSelected': false
            }
          ],
          'text': 'Confirmed'
        },
        'category': [
          {
            'coding': [
              {
                'system': 'http://terminology.hl7.org/CodeSystem/condition-category',
                'code': 'encounter-diagnosis',
                'display': 'Encounter Diagnosis'
              }
            ],
            'text': 'Encounter Diagnosis'
          }
        ],
        'code': {
          'coding': [
            {
              'system': 'http://snomed.info/sct',
              'code': '271737000',
              'display': 'Anemia (disorder)',
              'userSelected': true
            },
            {
              'system': 'http://hl7.org/fhir/sid/icd-10-cm',
              'code': 'D64.9',
              'display': 'Anemia, unspecified',
              'userSelected': false
            }
          ],
          'text': 'Anemia'
        },
        'subject': {
          'reference': 'Patient/12724066',
          'display': 'SMART, NANCY'
        },
        'encounter': {
          'reference': 'Encounter/97953477'
        },
        'onsetDateTime': '2020-06-10T17:00:00.000Z',
        'recordedDate': '2020-06-11T04:03:21.000Z',
        'recorder': {
          'reference': 'Practitioner/4122630',
          'display': "Cerner Test, Physician - Women's Health Cerner"
        }
      }
    }.freeze

    R4_CONDITION_HEALTH_CONCERN ||= {
      'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Condition/bed1c2ec-1f33-4097-8296-f6aa01824387',
      'resource': {
        'resourceType': 'Condition',
        'id': 'bed1c2ec-1f33-4097-8296-f6aa01824387',
        'meta': {
          'versionId': 'bed1c2ec-1f33-4097-8296-f6aa01824387',
          'lastUpdated': '2020-10-20T20:46:41.000Z'
        },
        'text': {
          'status': 'generated',
          'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Condition</b></p><p><b>Health Concern</b>: '\
                'description, description</p><p><b>Clinical Status</b>: Active</p><p><b>Verification Status</b>'\
                ': Confirmed</p><p><b>Onset</b>: Sep 20, 2020</p><p><b>Recorder</b>: '\
              'DEXLast2020-10-20T20:46:41.123Z_11, DEXFirst2020-10-20T20:46:41.122Z_48</p>'\
              '<p><b>Recorded Date</b>: Oct 13, 2020  3:46 P.M. CDT</p></div>'
        },
        'clinicalStatus': {
          'coding': [
            {
              'system': 'http://terminology.hl7.org/CodeSystem/condition-clinical',
              'code': 'active',
              'display': 'Active'
            }
          ],
          'text': 'Active'
        },
        'verificationStatus': {
          'coding': [
            {
              'system': 'http://terminology.hl7.org/CodeSystem/condition-ver-status',
              'code': 'confirmed',
              'display': 'Confirmed'
            }
          ],
          'text': 'Confirmed'
        },
        'category': [
          {
            'coding': [
              {
                'system': 'http://terminology.hl7.org/CodeSystem/condition-category',
                'code': 'health-concern',
                'display': 'Health Concern'
              }
            ],
            'text': 'Health Concern'
          }
        ],
        'code': {
          'coding': [
            {
              'display': 'description'
            }
          ],
          'text': 'description'
        },
        'subject': {
          'reference': 'Patient/9279171'
        },
        'onsetDateTime': '2020-09-20',
        'recordedDate': '2020-10-13T20:46:40.000Z',
        'recorder': {
          'reference': 'Practitioner/9279172',
          'display': 'DEXLast2020-10-20T20:46:41.123Z_11, DEXFirst2020-10-20T20:46:41.122Z_48'
        },
        'note': [
          {
            'time': '2020-10-20T20:46:41.000Z',
            'text': 'comments'
          }
        ]
      }
    }.freeze

    R4_CONDITION_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '9a115304-90d2-47d7-98c4-026f7fe1580e',
      'type': 'searchset',
      'total': 2,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Condition?patient=12724066'
        }
      ],
      'entry': [
        R4_CONDITION_PROBLEM, R4_CONDITION_DIAGNOSIS, R4_CONDITION_HEALTH_CONCERN
      ]
    }.freeze

    R4_CONDITION_HEALTH_CONCERNS_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '9a115304-90d2-47d7-98c4-026f7fe1580e',
      'type': 'searchset',
      'total': 2,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Condition?patient=12724066'
        }
      ],
      'entry': [
        R4_CONDITION_HEALTH_CONCERNS_ENTRY
      ]
    }.freeze

    R4_CONDITION_CREATE ||= {
      'resourceType': 'Condition',
      'subject': {
        'reference': 'Patient/12724066'
      },
      'code': {
        'coding': [
          {
            'system': 'http://snomed.info/sct',
            'code': '209832007',
            'display': 'Concussion NOS (disorder)',
            'userSelected': true
          }
        ],
        'text': 'Concussion with loss of consciousness'
      },
      'category': [
        {
          'coding': [
            {
              'system': 'http://terminology.hl7.org/CodeSystem/condition-category',
              'code': 'problem-list-item'
            }
          ],
          'text': 'Problem'
        }
      ],
      'clinicalStatus': {
        'coding': [
          {
            'system': 'http://terminology.hl7.org/CodeSystem/condition-clinical',
            'code': 'resolved'
          }
        ]
      },
      'verificationStatus': {
        'coding': [
          {
            'system': 'http://terminology.hl7.org/CodeSystem/condition-ver-status',
            'code': 'confirmed'
          }
        ]
      },
      'severity': {
        'coding': [
          {
            'system': 'http://snomed.info/sct',
            'code': '6736007',
            'display': 'Moderate'
          }
        ],
        'text': 'Moderate'
      },
      'abatementDateTime': '2020-01-01',
      'onsetDateTime': '2018-01-01',
      'note': [
        {
          'authorString': 'Freetext author',
          'text': 'Test Comment 1'
        },
        {
          'authorReference': {
            'reference': 'Practitioner/683925',
            'display': 'Leroux, Erik'
          },
          'text': 'Test Comment 2'
        }
      ]
    }.freeze

    R4_CONDITION_UPDATE ||= {
      'resourceType': 'Condition',
      'id': 'p73077203',
      'subject': {
        'reference': 'Patient/12724066'
      },
      'code': {
        'coding': [
          {
            'system': 'http://snomed.info/sct',
            'code': '77386006',
            'display': 'Patient currently pregnant (finding)',
            'userSelected': true
          }
        ],
        'text': 'Pregnant'
      },
      'category': [
        {
          'coding': [
            {
              'system': 'http://terminology.hl7.org/CodeSystem/condition-category',
              'code': 'problem-list-item'
            }
          ],
          'text': 'Problem'
        }
      ],
      'clinicalStatus': {
        'coding': [
          {
            'system': 'http://terminology.hl7.org/CodeSystem/condition-clinical',
            'code': 'resolved'
          }
        ]
      },
      'verificationStatus': {
        'coding': [
          {
            'system': 'http://terminology.hl7.org/CodeSystem/condition-ver-status',
            'code': 'differential'
          }
        ]
      },
      'onsetDateTime': '2019-06-12',
      'abatementDateTime': '2020-04-04T17:00:00.000Z',
      'note': [
        {
          'authorReference': {
            'reference': 'Practitioner/683925'
          },
          'text': 'Test Comment'
        }
      ]
    }.freeze

    R4_PATIENT_CONDITION_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '9a115304-90d2-47d7-98c4-026f7fe1580e',
      'type': 'searchset',
      'total': 2,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Condition?patient=12742400'
        }
      ],
      'entry': [
        R4_PATIENT_CONDITION_ENTRY, R4_PATIENT_ENTERED_IN_ERROR_ENTRY, R4_PATIENT_ACTIVE_ENTRY
      ]
    }.freeze
  end
end
