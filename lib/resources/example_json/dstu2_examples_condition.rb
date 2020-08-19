# frozen_string_literal: true

module Cerner
  module Resources

    DSTU2_CONDITION_PROBLEM_RESOURCE = {
      'resourceType': 'Condition',
      'id': 'p73077203',
      'meta': {
        'versionId': '73079095',
        'lastUpdated': '2020-04-05T04:00:46.000Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div><p><b>Condition</b></p><p><b>Patient</b>: SMART, NANCY</p><p><b>Problem</b>: Pregnant, '\
               'Patient currently pregnant (finding)</p><p><b>Clinical Status</b>: Resolved</p><p><b>Verification '\
               'Status</b>: Confirmed</p><p><b>Onset</b>: Jun 12, 2019</p><p><b>Resolved</b>: Apr  4, 2020  '\
               '5:00 P.M. UTC</p></div>'
      },
      'patient': {
        'reference': 'Patient/12724066',
        'display': 'SMART, NANCY'
      },
      'asserter': {
        'reference': 'Practitioner/683925',
        'display': "Cerner Test, Women's Health - Nurse Cerner"
      },
      'dateRecorded': '2020-03-05',
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
      'category': {
        'coding': [
          {
            'system': 'http://argonaut.hl7.org',
            'code': 'problem',
            'display': 'Problem'
          }
        ],
        'text': 'Problem'
      },
      'clinicalStatus': 'resolved',
      'verificationStatus': 'confirmed',
      'onsetDateTime': '2019-06-12',
      'abatementDateTime': '2020-04-04T17:00:00.000Z'
    }.freeze

    DSTU2_CONDITION_DIAGNOSIS_RESOURCE = {
      'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Condition/d2572382197',
      'resource': {
        'resourceType': 'Condition',
        'id': 'd2572382197',
        'meta': {
          'versionId': '2572382197',
          'lastUpdated': '2020-06-11T04:03:21.000Z'
        },
        'text': {
          'status': 'generated',
          'div': '<div><p><b>Condition</b></p><p><b>Patient</b>: SMART, NANCY</p><p><b>Diagnosis</b>: Anemia, '\
                 'Anemia (disorder)</p><p><b>Clinical Status</b>: Active</p><p><b>Verification Status</b>: '\
                 'Confirmed</p><p><b>Onset</b>: Jun 10, 2020  5:00 P.M. UTC</p></div>'
        },
        'patient': {
          'reference': 'Patient/12724066',
          'display': 'SMART, NANCY'
        },
        'encounter': {
          'reference': 'Encounter/97953477'
        },
        'asserter': {
          'reference': 'Practitioner/4122630',
          'display': "Cerner Test, Physician - Women's Health Cerner"
        },
        'dateRecorded': '2020-06-11',
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
        'category': {
          'coding': [
            {
              'system': 'http://hl7.org/fhir/condition-category',
              'code': 'diagnosis',
              'display': 'Diagnosis'
            }
          ],
          'text': 'Diagnosis'
        },
        'clinicalStatus': 'active',
        'verificationStatus': 'confirmed',
        'onsetDateTime': '2020-06-10T17:00:00.000Z'
      }
    }.freeze

    DSTU2_CONDITION_HEALTH_CONCERN_RESOURCE = {
      'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Condition'\
                 '/00a5d6eb-c567-42f7-be07-53804cece075',
      'resource': {
        'resourceType': 'Condition',
        'id': '00a5d6eb-c567-42f7-be07-53804cece075',
        'meta': {
          'versionId': '00a5d6eb-c567-42f7-be07-53804cece075',
          'lastUpdated': '2020-07-06T19:36:23.000Z'
        },
        'text': {
          'status': 'generated',
          'div': '<div><p><b>Condition</b></p><p><b>Patient</b>: SMART, NANCY</p><p><b>Health Concern</b>: '\
                  'Afraid my community will not be as close with COVID19.</p><p><b>Clinical Status</b>: Active'\
                  '</p><p><b>Verification Status</b>: Confirmed</p><p><b>Onset</b>: Jul  6, 2020</p><p><b>'\
                  'Resolved</b>: False</p></div>'
        },
        'patient': {
          'reference': 'Patient/12724066',
          'display': 'SMART, NANCY'
        },
        'asserter': {
          'reference': 'Patient/12724066',
          'display': 'SMART, NANCY'
        },
        'dateRecorded': '2020-07-06',
        'code': {
          'text': 'Afraid my community will not be as close with COVID19.'
        },
        'category': {
          'coding': [
            {
              'system': 'http://argonaut.hl7.org',
              'code': 'health-concern',
              'display': 'Health Concern'
            }
          ],
          'text': 'Health Concern'
        },
        'clinicalStatus': 'active',
        'verificationStatus': 'confirmed',
        'onsetDateTime': '2020-07-06',
        'abatementBoolean': false,
        'notes': 'Concerns with impact of COVID19 on community.'
      }
    }.freeze

    DSTU2_CONDITION_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '5a31a14a-9740-459c-bc52-b105b81ebebc',
      'type': 'searchset',
      'total': 3,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Condition?patient=12724066'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Condition/d2572382197',
          'resource': DSTU2_CONDITION_DIAGNOSIS_RESOURCE
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Condition/p73077203',
          'resource': DSTU2_CONDITION_PROBLEM_RESOURCE
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Condition'\
                     '/00a5d6eb-c567-42f7-be07-53804cece075',
          'resource': DSTU2_CONDITION_HEALTH_CONCERN_RESOURCE
        }
      ]
    }.freeze

    DSTU2_CONDITION_BUNDLE_BY_ID ||= {
      'resourceType': 'Bundle',
      'id': '5a31a14a-9740-459c-bc52-b105b81ebebc',
      'type': 'searchset',
      'total': 3,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Condition'\
                 '?_id=d2572382197,p73077203,00a5d6eb-c567-42f7-be07-53804cece075'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Condition/d2572382197',
          'resource': DSTU2_CONDITION_DIAGNOSIS_RESOURCE
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Condition/p73077203',
          'resource': DSTU2_CONDITION_PROBLEM_RESOURCE
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Condition'\
                     '/00a5d6eb-c567-42f7-be07-53804cece075',
          'resource': DSTU2_CONDITION_HEALTH_CONCERN_RESOURCE
        }
      ]
    }.freeze

    DSTU2_CONDITION_PROBLEM_CREATE ||= {
      'resourceType': 'Condition',
      'patient': {
        'reference': 'Patient/12724066'
      },
      'code': {
        'text': 'Freetext Condition'
      },
      'category': {
        'coding': [
          {
            'system': 'http://argonaut.hl7.org',
            'code': 'problem',
            'display': 'Problem'
          }
        ],
        'text': 'Problem'
      },
      'clinicalStatus': 'resolved',
      'verificationStatus': 'differential',
      'abatementDateTime': '2017-01-01T00:00:00Z'
    }.freeze

    DSTU2_CONDITION_DIAGNOSIS_CREATE ||= {
      'resourceType': 'Condition',
      'patient': {
        'reference': 'Patient/12724066'
      },
      'code': {
        'text': 'Freetext Diagnosis'
      },
      'category': {
        'coding': [
          {
            'system': 'http://hl7.org/fhir/condition-category',
            'code': 'diagnosis',
            'display': 'Diagnosis'
          }
        ],
        'text': 'Diagnosis'
      },
      'clinicalStatus': 'active',
      'verificationStatus': 'differential',
      'encounter': {
        'reference': 'Encounter/97953477'
      }
    }.freeze

    DSTU2_CONDITION_DIAGNOSIS_UPDATE ||= {
      'resourceType': 'Condition',
      'id': 'd2572382197',
      'meta': {
        'versionId': '2572382197',
        'lastUpdated': '2020-06-11T04:03:21.000Z'
      },
      'patient': {
        'reference': 'Patient/12724066'
      },
      'encounter': {
        'reference': 'Encounter/97953477'
      },
      'asserter': {
        'reference': 'Practitioner/4122630'
      },
      'dateRecorded': '2020-06-11',
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
      'category': {
        'coding': [
          {
            'system': 'http://hl7.org/fhir/condition-category',
            'code': 'diagnosis',
            'display': 'Diagnosis'
          }
        ],
        'text': 'Diagnosis'
      },
      'clinicalStatus': 'resolved',
      'verificationStatus': 'differential',
      'onsetDateTime': '2020-06-10T17:00:00.000Z'
    }.freeze

  end
end
