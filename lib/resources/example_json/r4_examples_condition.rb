# frozen_string_literal: true

module Cerner
  module Resources

    R4_CONDITION_ENTRY ||= {
      'resourceType': 'Condition',
      'id': 'p73077203',
      'meta': {
        'versionId': '73080185',
        'lastUpdated': '2020-06-11T04:05:04.000Z',
        'security': [
          {
            'system': 'http://terminology.hl7.org/CodeSystem/v3-ActCode',
            'code': 'PHY',
            'display': 'physician requested information sensitivity',
            'userSelected': false
          },
          {
            'system': 'http://terminology.hl7.org/CodeSystem/v3-ActCode',
            'code': 'PRS',
            'display': 'patient requested information sensitivity',
            'userSelected': false
          }
        ]
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Condition</b></p><p><b>Patient</b>: SMART, NANCY'\
               '</p><p><b>Problem</b>: Pregnant, Patient currently pregnant (finding)</p><p>'\
               '<b>Category Classification</b>: Medical</p><p><b>Clinical Status</b>: Resolved</p>'\
               '<p><b>Verification Status</b>: Confirmed</p><p><b>Onset</b>: Jun 12, 2019</p>'\
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
        },
        {
          'coding': [
            {
              'system': 'http://snomed.info/sct',
              'code': '74188005',
              'display': 'Medical (qualifier value)',
              'userSelected': false
            }
          ],
          'text': 'Medical'
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

    R4_PATIENT_CONDITION_ENTRY ||= {
      "resourceType": 'Condition',
      "id": 'p73875571',
      "meta": {
        "versionId": '73936721',
        "lastUpdated": '2023-08-01T16: 09: 08.000Z',
        'security': [
          {
            'system': 'http://terminology.hl7.org/CodeSystem/v3-ActCode',
            'code': 'PHY',
            'display': 'physician requested information sensitivity',
            'userSelected': false
          },
          {
            'system': 'http://terminology.hl7.org/CodeSystem/v3-ActCode',
            'code': 'PRS',
            'display': 'patient requested information sensitivity',
            'userSelected': false
          }
        ]
      },
      "text": {
        "status": 'generated',
        # rubocop:disable Layout/LineLength
        "div": '<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Condition</b></p><p><b>Patient</b>: Smart II, Nancy</p><p><b>Problem</b>: Opioid abuse, Opioid abuse</p><p><b>Category Classification</b>: Medical</p><p><b>Clinical Status</b>: Resolved</p><p><b>Verification Status</b>: Confirmed</p></div>'
        # rubocop:enable Layout/LineLength
      },
      "clinicalStatus": {
        "coding": [
          {
            "system": 'http: //terminology.hl7.org/CodeSystem/condition-clinical',
            "code": 'resolved',
            "display": 'Resolved',
            "userSelected": false
          }
        ],
        "text": 'Resolved'
      },
      "verificationStatus": {
        "coding": [
          {
            "system": 'http: //terminology.hl7.org/CodeSystem/condition-ver-status',
            "code": 'confirmed',
            "display": 'Confirmed',
            "userSelected": false
          }
        ],
        "text": 'Confirmed'
      },
      "category": [
        {
          "coding": [
            {
              "system": 'http: //terminology.hl7.org/CodeSystem/condition-category',
              "code": 'problem-list-item',
              "display": 'Problem List Item'
            }
          ],
          "text": 'Problem List Item'
        },
        {
          "coding": [
            {
              "system": 'http: //snomed.info/sct',
              "code": '74188005',
              "display": 'Medical (qualifier value)',
              "userSelected": false
            }
          ],
          "text": 'Medical'
        }
      ],
      "code": {
        "coding": [
          {
            "system": 'http: //e-imo.com/products/problem-it',
            "code": '87295',
            "display": 'Opioid abuse',
            "userSelected": false
          },
          {
            "system": 'http: //snomed.info/sct',
            "code": '5602001',
            "display": 'Opioid abuse (disorder)',
            "userSelected": false
          }
        ],
        "text": 'Opioid abuse'
      },
      "subject": {
        "reference": 'Patient/12724066',
        "display": 'Smart II, Nancy'
      },
      "recordedDate": '2023-05-21T02: 19: 13.000Z',
      "recorder": {
        "reference": 'Practitioner/12742069',
        "display": 'Portal, Portal'
      }
    }.freeze

    R4_PATIENT_ENTERED_IN_ERROR_ENTRY ||= {
      "resource": {
        "resourceType": 'Condition',
        "id": 'p73703587',
        "meta": {
          "versionId": '73875225',
          "lastUpdated": '2023-05-20T19:17:15.000Z',
          'security': [
            {
              'system': 'http://terminology.hl7.org/CodeSystem/v3-ActCode',
              'code': 'PHY',
              'display': 'physician requested information sensitivity',
              'userSelected': false
            },
            {
              'system': 'http://terminology.hl7.org/CodeSystem/v3-ActCode',
              'code': 'PRS',
              'display': 'patient requested information sensitivity',
              'userSelected': false
            }
          ]
        },
        "text": {
          "status": 'generated',
          # rubocop:disable Layout/LineLength
          "div": '<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Condition</b></p><p><b>Patient</b>: Smart II, Nancy</p><p><b>Problem</b>: Therapeutic drug monitoring, Patient encounter status (finding)</p><p><b>Category Classification</b>: Medical</p><p><b>Verification Status</b>: Entered in Error</p><p><b>Onset</b>: Aug 19, 2003</p></div>'
          # rubocop:enable Layout/LineLength
        },
        "verificationStatus": {
          "coding": [
            {
              "system": 'http://terminology.hl7.org/CodeSystem/condition-ver-status',
              "code": 'entered-in-error',
              "display": 'Entered in Error'
            }
          ],
          "text": 'Entered in Error'
        },
        "category": [
          {
            "coding": [
              {
                "system": 'http://terminology.hl7.org/CodeSystem/condition-category',
                "code": 'problem-list-item',
                "display": 'Problem List Item'
              }
            ],
            "text": 'Problem List Item'
          },
          {
            "coding": [
              {
                "system": 'http://snomed.info/sct',
                "code": '74188005',
                "display": 'Medical (qualifier value)',
                "userSelected": false
              }
            ],
            "text": 'Medical'
          }
        ],
        "code": {
          "coding": [
            {
              "system": 'http://snomed.info/sct',
              "code": '305058001',
              "display": 'Patient encounter status (finding)',
              "userSelected": false
            },
            {
              "system": 'http://e-imo.com/products/problem-it',
              "code": '818990',
              "display": 'Therapeutic drug monitoring',
              "userSelected": false
            }
          ],
          "text": 'Therapeutic drug monitoring'
        },
        "subject": {
          "reference": 'Patient/12724066',
          "display": 'Smart II, Nancy'
        },
        "onsetDateTime": '2003-08-19',
        "recordedDate": '2022-08-24T20:22:15.000Z',
        "recorder": {
          "reference": 'Practitioner/12742069',
          "display": 'Portal, Portal'
        }
      },
      "search": {
        "mode": 'match'
      }
    }.freeze

    R4_PATIENT_ACTIVE_ENTRY ||= {
      'resourceType': 'Condition',
      'id': 'a077dc30-8eee-4bb7-ae7f-ced1273f5c68',
      'meta': {
        'versionId': 'a077dc30-8eee-4bb7-ae7f-ced1273f5c68',
        'lastUpdated': '2020-12-03T22:47:30.000Z',
        'security': [
          {
            'system': 'http://terminology.hl7.org/CodeSystem/v3-ActCode',
            'code': 'PHY',
            'display': 'physician requested information sensitivity',
            'userSelected': false
          },
          {
            'system': 'http://terminology.hl7.org/CodeSystem/v3-ActCode',
            'code': 'PRS',
            'display': 'patient requested information sensitivity',
            'userSelected': false
          }
        ]
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
              'system': 'http://hl7.org/fhir/us/core/CodeSystem/condition-category',
              'code': 'health-concern',
              'display': 'Health Concern'
            }
          ],
          'text': 'Health Concern'
        }
      ],
      'code': {
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
          'lastUpdated': '2020-06-11T04:03:21.000Z',
          'security': [
            {
              'system': 'http://terminology.hl7.org/CodeSystem/v3-ActCode',
              'code': 'PHY',
              'display': 'physician requested information sensitivity',
              'userSelected': false
            },
            {
              'system': 'http://terminology.hl7.org/CodeSystem/v3-ActCode',
              'code': 'PRS',
              'display': 'patient requested information sensitivity',
              'userSelected': false
            }
          ]
        },
        'text': {
          'status': 'generated',
          'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Condition</b></p><p><b>Patient</b>: '\
                 'SMART, NANCY</p><p><b>Diagnosis</b>: Anemia, Anemia (disorder)</p><p><b>Diagnosis Type</b>'\
                 ': Discharge</p><p><b>Category Classification</b>: Medical</p><p><b>Clinical Status</b>: Active</p>'\
                 '<p><b>Verification Status</b>: Confirmed</p><p><b>Onset</b>: Jun 10, 2020  5:00 P.M. UTC</p></div>'
        },
        'extension': [
          {
            'valueCodeableConcept': {
              'coding': [
                {
                  'system': 'http://snomed.info/sct',
                  'code': '89100005',
                  'display': 'Final diagnosis (discharge) (contextual qualifier) (qualifier value)',
                  'userSelected': false
                }
              ],
              'text': 'Discharge'
            },
            'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/diagnosis-type'
          }
        ],
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
          },
          {
            'coding': [
              {
                'system': 'http://snomed.info/sct',
                'code': '74188005',
                'display': 'Medical (qualifier value)',
                'userSelected': false
              }
            ],
            'text': 'Medical'
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
          'lastUpdated': '2020-10-20T20:46:41.000Z',
          'security': [
            {
              'system': 'http://terminology.hl7.org/CodeSystem/v3-ActCode',
              'code': 'PHY',
              'display': 'physician requested information sensitivity',
              'userSelected': false
            },
            {
              'system': 'http://terminology.hl7.org/CodeSystem/v3-ActCode',
              'code': 'PRS',
              'display': 'patient requested information sensitivity',
              'userSelected': false
            }
          ]
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
                'system': 'http://hl7.org/fhir/us/core/CodeSystem/condition-category',
                'code': 'health-concern',
                'display': 'Health Concern'
              }
            ],
            'text': 'Health Concern'
          }
        ],
        'code': {
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

    R4_CONDITION_REVINCLUDE_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '27541846-3943-4168-8ccf-fc5dff9cdac3',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/'\
          'Condition?_id=00a5d6eb-c567-42f7-be07-53804cece075&_revinclude=Provenance%3Atarget'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/'\
          'Condition/00a5d6eb-c567-42f7-be07-53804cece075',
          'resource': {
            'resourceType': 'Condition',
            'id': '00a5d6eb-c567-42f7-be07-53804cece075',
            'meta': {
              'versionId': '00a5d6eb-c567-42f7-be07-53804cece075',
              'lastUpdated': '2020-07-06T19:36:23.000Z',
              'security': [
                {
                  'system': 'http://terminology.hl7.org/CodeSystem/v3-ActCode',
                  'code': 'PHY',
                  'display': 'physician requested information sensitivity',
                  'userSelected': false
                },
                {
                  'system': 'http://terminology.hl7.org/CodeSystem/v3-ActCode',
                  'code': 'PRS',
                  'display': 'patient requested information sensitivity',
                  'userSelected': false
                }
              ]
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Condition</b></p>'\
                     '<p><b>Patient</b>: SMART, NANCYU</p><p><b>Health Concern</b>'\
                     ': Afraid my community will not be as close with COVID19.</p><p><b>Clinical Status</b>'\
                     ': Active</p><p><b>Verification Status</b>: Confirmed</p><p><b>Onset</b>: Jul  6, 2020</p>'\
                     '<p><b>Recorder</b>: Spence, Stephen</p><p><b>Recorded Date</b>: Jul  6, 2020  7:36 P.M. UTC</p>'\
                     '<p><b>Asserter</b>: SMART, NANCYU</p></div>'
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
                    'system': 'http://hl7.org/fhir/us/core/CodeSystem/condition-category',
                    'code': 'health-concern',
                    'display': 'Health Concern'
                  }
                ],
                'text': 'Health Concern'
              }
            ],
            'code': {
              'text': 'Afraid my community will not be as close with COVID19.'
            },
            'subject': {
              'reference': 'Patient/12724066',
              'display': 'SMART, NANCYU'
            },
            'onsetDateTime': '2020-07-06',
            'recordedDate': '2020-07-06T19:36:23.000Z',
            'recorder': {
              'reference': 'Practitioner/12724064',
              'display': 'Spence, Stephen'
            },
            'asserter': {
              'reference': 'Patient/12724066',
              'display': 'SMART, NANCYU'
            },
            'note': [
              {
                'time': '2020-07-06T19:36:23.000Z',
                'text': 'Concerns with impact of COVID19 on community.'
              }
            ]
          },
          'search': {
            'mode': 'match'
          }
        },
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Provenance/INT.hcncrn-00a5d6eb-c567-42f7-be07-53804cece075',
          'resource': {
            'resourceType': 'Provenance',
            'id': 'INT.hcncrn-00a5d6eb-c567-42f7-be07-53804cece075',
            'meta': {
              'versionId': '00a5d6eb-c567-42f7-be07-53804cece075',
              'lastUpdated': '2020-07-06T19:36:23Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Provenance</b></p><p><b>Target</b>:</p>'\
                     '<ul><li>Condition/00a5d6eb-c567-42f7-be07-53804cece075</li></ul><p><b>Recorded'\
                     'Spence, Open Platform IA, Stephen</b>: Jul  6, 2020  7:36 P.M. UTC</p><p><b>Agents</b>'\
                     ':</p><dl><dt></dt><dd><b>Agent Type</b>: Author</dd><dd><b>Agent Role</b>: Source</dd></dl></div>'
            },
            'target': [
              {
                'reference': 'Condition/00a5d6eb-c567-42f7-be07-53804cece075'
              }
            ],
            'recorded': '2020-07-06T19:36:23Z',
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
                  'reference': 'Practitioner/12724064',
                  'display': 'Spence, Open Platform IA, Stephen'
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
