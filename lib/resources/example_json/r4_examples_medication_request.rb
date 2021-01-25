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
          'div': '<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Medication Request</b></p>\
          <p><b>Status</b>: Active</p>\
          <p><b>Intent</b>: Order</p>\
          <p><b>Medication</b>: lisinopril-hydroCHLOROthiazide
          (lisinopril-hydroCHLOROthiazide 10 mg-12.5 mg oral tablet)</p>\
          <p><b>Dosage Instructions</b>: 1 tab, Oral, Daily</p>\
          <p><b>Patient</b>: PETERS, TIM A</p><p><b>Authored On</b>: Nov 21, 2020  8:59 P.M. UTC</p></div>'
        },
        'extension': [
            {
                'valueCoding': {
                    'system': 'http://electronichealth.se/fhir/ValueSet/prescription-format',
                    'code': 'ELECTRONIC',
                    'display': 'Electronic'
                },
                'url': 'http://electronichealth.se/fhir/StructureDefinition/NLLPrescriptionFormat'
            },
            {
                'valueCoding': {
                    'system': 'http://ehalsomyndigheten.se/fhir/ValueSet/registration-basis-codes',
                    'code': 'ELECTRONIC',
                    'display': 'Electronic'
                },
                'url': 'http://electronichealth.se/fhir/StructureDefinition/NLLRegistrationBasis'
            }
        ],
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
            'extension': [
              {
                'valueString': '40 mcg = 1 mL, IM, Once, First Dose: 12/07/16 16:00:00 CST',
                'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/clinical-instruction'
              }
            ],
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
            'extension': [
                {
                    'valueBoolean': false,
                    'url': 'http://electronichealth.se/fhir/StructureDefinition/NLLDosePackaging'
                }
            ],
            'validityPeriod': {
                'start': '2020-07-06T15:37:13.000-05:00'
            }
        }
      }
    }.freeze

    R4_MEDICATION_REQUEST_PATIENT_ENTRY ||= {
      'resourceType': 'MedicationRequest',
      'id': '314010287',
      'meta': {
        'versionId': '0',
        'lastUpdated': '2020-07-14T14:45:37.000Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Medication Request</b></p>\
        <p><b>Status</b>: Active</p><p><b>Intent</b>: Order</p>\
        <p><b>Medication</b>: acetaminophen (acetaminophen 325 mg oral capsule)</p>\
        <p><b>Dosage Instructions</b>: 650 mg = 2 cap, Oral, every 4 hr,
         PRN: as needed for pain, 90 cap, 0 Refill(s)</p>\
        <p><b>Patient</b>: SMART, WILMA</p><p><b>Authored On</b>: Jul 14, 2020  2:45 P.M. UTC</p></div>'
      },
      'extension': [
          {
              'valueCoding': {
                  'system': 'http://electronichealth.se/fhir/ValueSet/prescription-format',
                  'code': 'ELECTRONIC',
                  'display': 'Electronic'
              },
              'url': 'http://electronichealth.se/fhir/StructureDefinition/NLLPrescriptionFormat'
          },
          {
              'valueCoding': {
                  'system': 'http://ehalsomyndigheten.se/fhir/ValueSet/registration-basis-codes',
                  'code': 'ELECTRONIC',
                  'display': 'Electronic'
              },
              'url': 'http://electronichealth.se/fhir/StructureDefinition/NLLRegistrationBasis'
          }
      ],
      'status': 'active',
      'intent': 'order',
      'category': [
        {
          'coding': [
            {
              'system': 'http://terminology.hl7.org/CodeSystem/medicationrequest-category',
              'code': 'community',
              'display': 'Community',
              'userSelected': false
            }
          ]
        },
        {
          'coding': [
            {
              'system': 'http://terminology.hl7.org/CodeSystem/medicationrequest-category',
              'code': 'discharge',
              'display': 'Discharge',
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
            'code': '198436',
            'display': 'Acetaminophen 325 MG Oral Capsule'
          },
          {
            'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/synonym',
            'code': '276230589',
            'display': 'acetaminophen 325 mg oral capsule'
          }
        ],
        'text': 'acetaminophen (acetaminophen 325 mg oral capsule)'
      },
      'subject': {
        'reference': 'Patient/12724065',
        'display': 'SMART, WILMA'
      },
      'encounter': {
        'reference': 'Encounter/97953483'
      },
      'authoredOn': '2020-07-14T09:45:15.000-05:00',
      'requester': {
        'reference': 'Practitioner/12732044',
        'display': 'PWMedActionPlan, Physician - Primary Care'
      },
      'courseOfTherapyType': {
        'coding': [
          {
            'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4009',
            'code': '2338',
            'display': 'Soft Stop'
          },
          {
            'system': 'http://terminology.hl7.org/CodeSystem/medicationrequest-course-of-therapy',
            'code': 'continuous',
            'display': 'Continuous long term therapy'
          }
        ],
        'text': 'Maintenance'
      },
      'dosageInstruction': [
        {
          'text': '650 mg = 2 cap, Oral, every 4 hr, PRN: as needed for pain, 90 cap, 0 Refill(s)',
          'patientInstruction': '2 Capsules Oral (given by mouth) every 4 hours as needed as needed for pain.
           Refills: 0.',
          'timing': {
            'repeat': {
              'boundsPeriod': {
                'start': '2020-07-14T09:45:00.000-05:00'
              }
            },
            'code': {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4003',
                  'code': '696547',
                  'display': 'every 4 hr'
                },
                {
                  'system': 'http://terminology.hl7.org/CodeSystem/v3-GTSAbbreviation',
                  'code': 'Q4H',
                  'display': 'Q4H'
                },
                {
                  'system': 'http://snomed.info/sct',
                  'code': '225756002',
                  'display': 'Every four hours (qualifier value)'
                }
              ],
              'text': 'every 4 hr'
            }
          },
          'asNeededCodeableConcept': {
            'text': 'as needed for pain'
          },
          'route': {
            'coding': [
              {
                'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4001',
                'code': '318185',
                'display': 'Oral',
                'userSelected': true
              },
              {
                'system': 'http://snomed.info/sct',
                'code': '26643006',
                'display': 'Oral route (qualifier value)',
                'userSelected': false
              }
            ],
            'text': 'Oral'
          },
          'doseAndRate': [
            {
              'doseQuantity': {
                'value': 2,
                'unit': 'cap',
                'system': 'http://unitsofmeasure.org',
                'code': '{Capsule}'
              }
            }
          ]
        }
      ],
      'dispenseRequest': {
            'extension': [
                {
                    'valueBoolean': false,
                    'url': 'http://electronichealth.se/fhir/StructureDefinition/NLLDosePackaging'
                }
            ],
            'validityPeriod': {
                'start': '2020-07-14T09:45:15.000-05:00'
            },
        'numberOfRepeatsAllowed': 0,
        'quantity': {
          'value': 90,
          'unit': 'cap',
          'system': 'http://unitsofmeasure.org',
          'code': '{Capsule}'
        }
      },
      'substitution': {
        'allowedBoolean': true
      }
    }.freeze

    R4_MEDICATION_REQUEST_ENTERED_IN_ERROR ||= {
      'resourceType': 'MedicationRequest',
      'id': '261542609',
      'meta': {
        'versionId': '4',
        'lastUpdated': '2020-12-09T05:29:49.000Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Medication Request</b></p>\
        <p><b>Status</b>: Entered in Error</p><p><b>Intent</b>: Order</p>/
        <p><b>Medication</b>: Error</p><p><b>Patient</b>: MARSTON, JACK</p></div>'
      },
      'extension': [
          {
              'valueCoding': {
                  'system': 'http://electronichealth.se/fhir/ValueSet/prescription-format',
                  'code': 'ELECTRONIC',
                  'display': 'Electronic'
              },
              'url': 'http://electronichealth.se/fhir/StructureDefinition/NLLPrescriptionFormat'
          },
          {
              'valueCoding': {
                  'system': 'http://ehalsomyndigheten.se/fhir/ValueSet/registration-basis-codes',
                  'code': 'ELECTRONIC',
                  'display': 'Electronic'
              },
              'url': 'http://electronichealth.se/fhir/StructureDefinition/NLLRegistrationBasis'
          }
      ],
      'status': 'entered-in-error',
      'intent': 'order',
      'medicationCodeableConcept': {
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
        'reference': 'Patient/166045489',
        'display': 'MARSTON, JACK'
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

    R4_MEDICATION_REQUEST_PATIENT_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '40d441d8-d53c-4bd6-b20e-d0c1af3244a3',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationRequest?patient=12724065'
        },
        {
          'relation': 'next',
          'url': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationRequest?patient=12724065&-pageContext=T3BlblBsYXRmb3JtRmhpckNvbnRleHQ9dHJ1ZSZwYWdlQ29udGV4dD02MDY4MDUwXzYwNjgwNTFfMTI3MjQwNjVfMTI5MjMwOV8xJmNvbmNlcHQ9Y2hhcnRlZA%3D%3D&-pageDirection=NEXT'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationRequest/314010287',
          'resource': R4_MEDICATION_REQUEST_PATIENT_ENTRY
        }
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
    R4_MEDICATION_REQUEST_PATCH ||= [
      {
        'op': 'replace',
        'path': '/status',
        'value': 'stopped'
      }
    ].freeze
  end
end
