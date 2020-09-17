# frozen_string_literal: true

module Cerner
  module Resources
    R4_MEDICATION_REQUEST_ENTRY ||= {
      'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationRequest/313757847',
      'resource': {
        'resourceType': 'MedicationRequest',
        'id': '313757847',
        'meta': {
          'versionId': '3',
          'lastUpdated': '2020-07-21T01:00:49.000Z'
        },
        'text': {
          'status': 'generated',
          'div': '&lt;div xmlns=&#39;http://www.w3.org/1999/xhtml&#39;&gt;&lt;p&gt;&lt;b&gt;Medication Request&lt;'\
                 '/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Intent&lt;'\
                 '/b&gt;: Order&lt;/p&gt;&lt;p&gt;&lt;b&gt;Medication&lt;/b&gt;'\
                 ': hepatitis B adult vaccine (hepatitis B adult vaccine dialysis 40 mcg/mL intramuscular suspension)'\
                 '&lt;/p&gt;&lt;p&gt;&lt;b&gt;Dosage Instructions&lt;/b&gt;: 40 mcg = 1 mL, IM, Once&lt;/p&gt;&lt;p'\
                 '&gt;&lt;b&gt;Patient&lt;/b&gt;: SMART, NANCY&lt;/p&gt;&lt;p&gt;&lt;b&gt;Authored On&lt;'\
                 '/b&gt;: Jul  6, 2020  8:37 P.M. UTC&lt;/p&gt;&lt;/div&gt;'
        },
        'status': 'active',
        'intent': 'order',
        'category': [
          {
            'coding': [
              {
                'system': 'http://terminology.hl7.org/CodeSystem/medicationrequest-category',
                'code': 'inpatient',
                'display': 'Inpatient',
                'userSelected': false
              }
            ]
          }
        ],
        'reportedBoolean': false,
        'medicationCodeableConcept': {
          'coding': [
            {
              'system': 'http://www.nlm.nih.gov/research/umls/rxnorm',
              'code': '830261',
              'display': 'Hepatitis B Surface Antigen Vaccine 0.04 MG/ML Injectable Suspension',
              'userSelected': false
            },
            {
              'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/synonym',
              'code': '19953289',
              'display': 'hepatitis B adult vaccine dialysis 40 mcg/mL intramuscular suspension',
              'userSelected': true
            }
          ],
          'text': 'hepatitis B adult vaccine (hepatitis B adult vaccine dialysis 40 mcg/mL intramuscular suspension)'
        },
        'subject': {
          'reference': 'Patient/12724066',
          'display': 'SMART, NANCY'
        },
        'encounter': {
          'reference': 'Encounter/97953477'
        },
        'authoredOn': '2020-07-06T15:37:13.000-05:00',
        'requester': {
          'reference': 'Practitioner/2',
          'display': 'CERNER, CERNER CERNER'
        },
        'courseOfTherapyType': {
          'coding': [
            {
              'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4009',
              'code': '2337',
              'display': 'Physician Stop',
              'userSelected': true
            },
            {
              'system': 'http://terminology.hl7.org/CodeSystem/medicationrequest-course-of-therapy',
              'code': 'acute',
              'display': 'Short course (acute) therapy',
              'userSelected': false
            }
          ],
          'text': 'Physician Stop'
        },
        'dosageInstruction': [
          {
            'text': '40 mcg = 1 mL, IM, Once',
            'patientInstruction': '1 Milliliters Intramuscular (in a muscle) once. Refills: 0.',
            'timing': {
              'repeat': {
                'boundsPeriod': {
                  'start': '2020-07-06T16:00:00.000-05:00',
                  'end': '2020-07-06T16:00:00.000-05:00'
                }
              },
              'code': {
                'coding': [
                  {
                    'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4003',
                    'code': '696531',
                    'display': 'Once',
                    'userSelected': true
                  }
                ],
                'text': 'Once'
              }
            },
            'route': {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4001',
                  'code': '318167',
                  'display': 'IM',
                  'userSelected': true
                },
                {
                  'system': 'http://snomed.info/sct',
                  'code': '78421000',
                  'display': 'Intramuscular route (qualifier value)',
                  'userSelected': false
                }
              ],
              'text': 'IM'
            },
            'doseAndRate': [
              {
                'doseQuantity': {
                  'value': 1.0,
                  'unit': 'mL',
                  'system': 'http://unitsofmeasure.org',
                  'code': 'mL'
                }
              }
            ]
          }
        ],
        'dispenseRequest': {
          'validityPeriod': {
            'start': '2020-07-06T15:37:13.000-05:00'
          }
        }
      }
    }.freeze

    R4_MEDICATION_REQUEST_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': 'b630105a-2ec0-4877-8f8c-3b26b53cacd9',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationRequest'\
                 '?patient=1316024'
        }
      ],
      'entry': [
        R4_MEDICATION_REQUEST_ENTRY
      ]
    }.freeze

    R4_MEDICATION_REQUEST_CREATE ||= {
      'resourceType': 'MedicationRequest',
      'status': 'active',
      'intent': 'order',
      'doNotPerform': false,
      'reportedBoolean': true,
      'medicationCodeableConcept': {
        'coding': [
          {
            'system': 'http://www.nlm.nih.gov/research/umls/rxnorm',
            'code': '352362'
          }
        ],
        'text': 'Acetaminophen'
      },
      'subject': {
        'reference': 'Patient/12742400'
      },
      'encounter': {
        'reference': 'Encounter/97953530'
      },
      'note': [
        {
          'authorString': 'Leslie Knope',
          'time': '2020-03-03T20:07:53Z',
          'text': 'Patient has had medication in past.'
        }
      ],
      'dosageInstruction': [
        {
          'text': '5 mL, Oral, Daily.',
          'additionalInstruction': [
            {
              'text': 'Take with food.'
            }
          ],
          'timing': {
            'repeat': {
              'boundsPeriod': {
                'start': '2020-02-25T23:19:10Z',
                'end': '2021-02-27T23:19:10Z'
              },
              'count': 1,
              'duration': 1.0,
              'durationUnit': 'd'
            },
            'code': {
              'coding': [
                {
                  'system': 'http://terminology.hl7.org/CodeSystem/v3-GTSAbbreviation',
                  'code': 'BID'
                }
              ]
            }
          },
          'asNeededBoolean': true,
          'site': {
            'coding': [
              {
                'system': 'http://snomed.info/sct',
                'code': '368208006'
              }
            ]
          },
          'route': {
            'coding': [
              {
                'system': 'http://snomed.info/sct',
                'code': '41974700'
              }
            ]
          },
          'doseAndRate': [
            {
              'doseQuantity': {
                'value': 23.0,
                'unit': 'tabs',
                'system': 'http://unitsofmeasure.org',
                'code': 'tbl'
              }
            }
          ]
        }
      ],
      'dispenseRequest': {
        'numberOfRepeatsAllowed': 5,
        'quantity': {
          'value': 10.0,
          'system': 'http://unitsofmeasure.org',
          'code': 'tbl'
        }
      },
      'substitution': {
        'allowedBoolean': true
      }
    }.freeze
  end
end
