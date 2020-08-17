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
        R4_CONDITION_PROBLEM, R4_CONDITION_DIAGNOSIS
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
  end
end
