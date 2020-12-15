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
          'validityPeriod': {
            'start': '2020-07-06T15:37:13.000-05:00'
          }
        }
      }
    }.freeze

    R4_MEDICATION_REQUEST_PATIENT_ENTRY ||= {
      'resourceType': 'MedicationRequest',
      'id': '262448077',
      'meta': {
        'versionId': '2',
        'lastUpdated': '2020-12-09T05:59:32.000Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Medication Request</b></p>/
        <p><b>Status</b>: Active</p><p><b>Intent</b>: Order</p>
        <p><b>Medication</b>: influenza virus vaccine, inactivated (influenza virus vaccine intramuscular solution)</p>/
        <p><b>Dosage Instructions</b>: 0.5 mL, Subcutaneous, Once, 4, PRN: agitation</p>/
        <p><b>Patient</b>: MARSTON, JACK</p>/
        <p><b>Authored On</b>: Sep 16, 2020 10:16 A.M. CDT</p></div>'
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
      'priority': 'routine',
      'reportedBoolean': false,
      'medicationCodeableConcept': {
        'coding': [
          {
            'system': 'https://fhir.cerner.com/2c400054-42d8-4e74-87b7-80b5bd5fde9f/synonym',
            'code': '2760938',
            'display': 'influenza virus vaccine intramuscular solution'
          }
        ],
        'text': 'influenza virus vaccine, inactivated (influenza virus vaccine intramuscular solution)'
      },
      'subject': {
        'reference': 'Patient/166045489',
        'display': 'MARSTON, JACK'
      },
      'encounter': {
        'reference': 'Encounter/49785642'
      },
      'authoredOn': '2020-09-16T10:16:07.000-05:00',
      'requester': {
        'reference': 'Practitioner/605926',
        'display': 'Carter, Kristen Cerner'
      },
      'courseOfTherapyType': {
        'coding': [
          {
            'system': 'https://fhir.cerner.com/2c400054-42d8-4e74-87b7-80b5bd5fde9f/codeSet/4009',
            'code': '2337',
            'display': 'Physician Stop'
          },
          {
            'system': 'http://terminology.hl7.org/CodeSystem/medicationrequest-course-of-therapy',
            'code': 'acute',
            'display': 'Short course (acute) therapy'
          }
        ],
        'text': 'Physician Stop'
      },
      'dosageInstruction': [
        {
          'text': '0.5 mL, Subcutaneous, Once, 4, PRN: agitation',
          'patientInstruction': '0.5 Milliliter Subcutaneous once as needed for agitation. Refills: 0.',
          'timing': {
            'repeat': {
              'boundsPeriod': {
                'start': '2020-12-08T21:58:00.000-08:00'
              }
            },
            'code': {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/2c400054-42d8-4e74-87b7-80b5bd5fde9f/codeSet/4003',
                  'code': '696531',
                  'display': 'Once'
                },
                {
                  'system': 'http://snomed.info/sct',
                  'code': '422114001',
                  'display': 'Once - dosing instruction fragment (qualifier value)'
                }
              ],
              'text': 'Once'
            }
          },
          'asNeededCodeableConcept': {
            'coding': [
              {
                'system': 'https://fhir.cerner.com/2c400054-42d8-4e74-87b7-80b5bd5fde9f/codeSet/4005',
                'code': '2075066111',
                'display': 'agitation'
              },
              {
                'system': 'http://snomed.info/sct',
                'code': '24199005',
                'display': 'Feeling agitated (finding)'
              }
            ],
            'text': 'agitation'
          },
          'route': {
            'coding': [
              {
                'system': 'https://fhir.cerner.com/2c400054-42d8-4e74-87b7-80b5bd5fde9f/codeSet/4001',
                'code': '318189',
                'display': 'Subcutaneous',
                'userSelected': true
              },
              {
                'system': 'http://snomed.info/sct',
                'code': '34206005',
                'display': 'Subcutaneous route (qualifier value)',
                'userSelected': false
              }
            ],
            'text': 'Subcutaneous'
          },
          'doseAndRate': [
            {
              'doseQuantity': {
                'value': 0.5,
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
          'start': '2020-09-16T10:16:07.000-05:00'
        }
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
        'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Medication Request</b></p>\
        <p><b>Status</b>: Entered in Error</p><p><b>Intent</b>: Order</p>/
        <p><b>Medication</b>: Error</p><p><b>Patient</b>: MARSTON, JACK</p></div>'
      },
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
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationRequest?patient=12724065'
        },
        {
          'relation': 'next',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationRequest?patient=12724065&-pageContext=T3BlblBsYXRmb3JtRmhpckNvbnRleHQ9dHJ1ZSZwYWdlQ29udGV4dD02MDY4MDUwXzYwNjgwNTFfMTI3MjQwNjVfMTI5MjMwOV8xJmNvbmNlcHQ9Y2hhcnRlZA%3D%3D&-pageDirection=NEXT'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationRequest/314010287',
          'resource': {
            'resourceType': 'MedicationRequest',
            'id': '314010287',
            'meta': {
              'versionId': '0',
              'lastUpdated': '2020-07-14T14:45:37.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Medication Request</b></p>/
              <p><b>Status</b>: Active</p><p><b>Intent</b>: Order</p>/
              <p><b>Medication</b>: acetaminophen (acetaminophen 325 mg oral capsule)</p>\
              <p><b>Dosage Instructions</b>: 650 mg = 2 cap, Oral, every 4 hr,
              PRN: as needed for pain, 90 cap, 0 Refill(s)</p>/
              <p><b>Patient</b>: SMART, WILMA</p><p><b>Authored On</b>: Jul 14, 2020  2:45 P.M. UTC</p></div>'
            },
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
          }
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationRequest/314010037',
          'resource': {
            'resourceType': 'MedicationRequest',
            'id': '314010037',
            'meta': {
              'versionId': '1',
              'lastUpdated': '2020-07-14T13:49:30.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Medication Request</b></p>/
              <p><b>Status</b>: Active</p><p><b>Intent</b>: Order</p>/
              <p><b>Medication</b>: cloNIDine (Catapres-TTS-3 0.3 mg/24 hr transdermal film,
               extended release)</p>/
              <p><b>Dosage Instructions</b>: 1 patches, Topical, every week,
               12 patches, 0 Refill(s)</p><p><b>Patient</b>: SMART, WILMA</p>\
              <p><b>Authored On</b>: Jul 14, 2020  1:31 P.M. UTC</p></div>'
            },
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
                  'code': '998681',
                  'display': '168 HR Clonidine 0.0125 MG/HR Transdermal Patch [Catapres-TTS-3]'
                },
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/synonym',
                  'code': '2754139',
                  'display': 'Catapres-TTS-3 0.3 mg/24 hr transdermal film, extended release'
                }
              ],
              'text': 'cloNIDine (Catapres-TTS-3 0.3 mg/24 hr transdermal film, extended release)'
            },
            'subject': {
              'reference': 'Patient/12724065',
              'display': 'SMART, WILMA'
            },
            'encounter': {
              'reference': 'Encounter/97953483'
            },
            'authoredOn': '2020-07-14T08:31:21.000-05:00',
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
                'text': '1 patches, Topical, every week, 12 patches, 0 Refill(s)',
                'patientInstruction': '1 patch(es) Topical (on the skin) every week. Refills: 0.',
                'timing': {
                  'repeat': {
                    'boundsPeriod': {
                      'start': '2020-07-14T08:31:00.000-05:00'
                    }
                  },
                  'code': {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4003',
                        'code': '696617',
                        'display': 'every week'
                      },
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/v3-GTSAbbreviation',
                        'code': 'WK',
                        'display': 'weekly'
                      },
                      {
                        'system': 'http://snomed.info/sct',
                        'code': '225769003',
                        'display': 'Once a week (qualifier value)'
                      }
                    ],
                    'text': 'every week'
                  }
                },
                'route': {
                  'coding': [
                    {
                      'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4001',
                      'code': '318190',
                      'display': 'Topical',
                      'userSelected': true
                    },
                    {
                      'system': 'http://snomed.info/sct',
                      'code': '6064005',
                      'display': 'Topical route (qualifier value)',
                      'userSelected': false
                    }
                  ],
                  'text': 'Topical'
                },
                'doseAndRate': [
                  {
                    'doseQuantity': {
                      'value': 1,
                      'unit': 'patches',
                      'system': 'http://unitsofmeasure.org',
                      'code': '{Patch}'
                    }
                  }
                ]
              }
            ],
            'dispenseRequest': {
              'validityPeriod': {
                'start': '2020-07-14T08:31:21.000-05:00'
              },
              'numberOfRepeatsAllowed': 0,
              'quantity': {
                'value': 12,
                'unit': 'patches',
                'system': 'http://unitsofmeasure.org',
                'code': '{Patch}'
              }
            },
            'substitution': {
              'allowedBoolean': true
            },
            'priorPrescription': {
              'reference': 'MedicationRequest/313983017'
            }
          }
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationRequest/314974791',
          'resource': {
            'resourceType': 'MedicationRequest',
            'id': '314974791',
            'meta': {
              'versionId': '0',
              'lastUpdated': '2020-08-12T13:50:03.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Medication Request</b></p>/
              <p><b>Status</b>: Draft</p>/
              <p><b>Intent</b>: Order</p>/
              <p><b>Medication</b>: cloNIDine (Catapres-TTS-3 0.3 mg/24 hr transdermal film, extended release)</p>/
              <p><b>Dosage Instructions</b>: 1 patches, Topical, every week</p>
              <p><b>Patient</b>: SMART, WILMA</p><p><b>Authored On</b>: Aug 12, 2020  1:48 P.M. UTC</p></div>'
            },
            'status': 'draft',
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
                  'code': '998681',
                  'display': '168 HR Clonidine 0.0125 MG/HR Transdermal Patch [Catapres-TTS-3]'
                },
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/synonym',
                  'code': '2754139',
                  'display': 'Catapres-TTS-3 0.3 mg/24 hr transdermal film, extended release'
                }
              ],
              'text': 'cloNIDine (Catapres-TTS-3 0.3 mg/24 hr transdermal film, extended release)'
            },
            'subject': {
              'reference': 'Patient/12724065',
              'display': 'SMART, WILMA'
            },
            'encounter': {
              'reference': 'Encounter/97953483'
            },
            'authoredOn': '2020-08-12T08:48:57.000-05:00',
            'requester': {
              'extension': [
                {
                  'valueCode': 'unknown',
                  'url': 'http://hl7.org/fhir/StructureDefinition/data-absent-reason'
                }
              ]
            },
            'dosageInstruction': [
              {
                'text': '1 patches, Topical, every week',
                'patientInstruction': '1 patch(es) Topical (on the skin) every week. Refills: 0.',
                'timing': {
                  'repeat': {
                    'boundsPeriod': {
                      'start': '2020-08-12T09:00:00.000-05:00'
                    }
                  },
                  'code': {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4003',
                        'code': '696617',
                        'display': 'every week'
                      },
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/v3-GTSAbbreviation',
                        'code': 'WK',
                        'display': 'weekly'
                      },
                      {
                        'system': 'http://snomed.info/sct',
                        'code': '225769003',
                        'display': 'Once a week (qualifier value)'
                      }
                    ],
                    'text': 'every week'
                  }
                },
                'route': {
                  'coding': [
                    {
                      'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4001',
                      'code': '318190',
                      'display': 'Topical',
                      'userSelected': true
                    },
                    {
                      'system': 'http://snomed.info/sct',
                      'code': '6064005',
                      'display': 'Topical route (qualifier value)',
                      'userSelected': false
                    }
                  ],
                  'text': 'Topical'
                },
                'doseAndRate': [
                  {
                    'doseQuantity': {
                      'value': 1,
                      'unit': 'patches',
                      'system': 'http://unitsofmeasure.org',
                      'code': '{Patch}'
                    }
                  }
                ]
              }
            ],
            'dispenseRequest': {
              'validityPeriod': {
                'start': '2020-08-12T08:48:57.000-05:00'
              }
            },
            'priorPrescription': {
              'reference': 'MedicationRequest/314010037'
            }
          }
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationRequest/311877117',
          'resource': {
            'resourceType': 'MedicationRequest',
            'id': '311877117',
            'meta': {
              'versionId': '0',
              'lastUpdated': '2020-05-11T15:15:43.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Medication Request</b></p>/
              <p><b>Status</b>: Active</p>/
              <p><b>Intent</b>: Order</p><p><b>Medication</b>: docusate (Colace 100 mg oral capsule)</p>/
              <p><b>Dosage Instructions</b>: 100 mg = 1 cap, Oral, BID, 20 cap, 0 Refill(s)</p>/
              <p><b>Patient</b>: SMART, WILMA</p>/
              <p><b>Authored On</b>: May 11, 2020  3:15 P.M. UTC</p></div>'
            },
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
                  'code': '1247756',
                  'display': 'Docusate Sodium 100 MG Oral Capsule [Colace]'
                },
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/synonym',
                  'code': '2756372',
                  'display': 'Colace 100 mg oral capsule'
                }
              ],
              'text': 'docusate (Colace 100 mg oral capsule)'
            },
            'subject': {
              'reference': 'Patient/12724065',
              'display': 'SMART, WILMA'
            },
            'encounter': {
              'reference': 'Encounter/97953483'
            },
            'authoredOn': '2020-05-11T10:15:20.000-05:00',
            'requester': {
              'reference': 'Practitioner/12742384',
              'display': 'PWMEDACTIONPLAN, Physician - Hospitalist'
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
                'text': '100 mg = 1 cap, Oral, BID, 20 cap, 0 Refill(s)',
                'patientInstruction': '1 Capsules Oral (given by mouth) 2 times a day. Refills: 0.',
                'timing': {
                  'repeat': {
                    'boundsPeriod': {
                      'start': '2020-05-11T10:15:00.000-05:00'
                    }
                  },
                  'code': {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4003',
                        'code': '696528',
                        'display': 'BID'
                      },
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/v3-GTSAbbreviation',
                        'code': 'BID',
                        'display': 'BID'
                      },
                      {
                        'system': 'http://snomed.info/sct',
                        'code': '229799001',
                        'display': 'Twice a day (qualifier value)'
                      }
                    ],
                    'text': 'BID'
                  }
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
                      'value': 1,
                      'unit': 'cap',
                      'system': 'http://unitsofmeasure.org',
                      'code': '{Capsule}'
                    }
                  }
                ]
              }
            ],
            'dispenseRequest': {
              'validityPeriod': {
                'start': '2020-05-11T10:15:20.000-05:00'
              },
              'numberOfRepeatsAllowed': 0,
              'quantity': {
                'value': 20,
                'unit': 'cap',
                'system': 'http://unitsofmeasure.org',
                'code': '{Capsule}'
              }
            },
            'substitution': {
              'allowedBoolean': true
            }
          }
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationRequest/314974793',
          'resource': {
            'resourceType': 'MedicationRequest',
            'id': '314974793',
            'meta': {
              'versionId': '0',
              'lastUpdated': '2020-08-12T13:50:04.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Medication Request</b></p>/
              <p><b>Status</b>: Draft</p>/
              <p><b>Intent</b>: Order</p>/
              <p><b>Medication</b>: docusate (Colace 100 mg oral capsule)</p>/
              <p><b>Dosage Instructions</b>: 100 mg = 1 cap, Oral, BID</p>/
              <p><b>Patient</b>: SMART, WILMA</p><p><b>Authored On</b>: Aug 12, 2020  1:49 P.M. UTC</p></div>'
            },
            'status': 'draft',
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
                  'code': '1247756',
                  'display': 'Docusate Sodium 100 MG Oral Capsule [Colace]'
                },
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/synonym',
                  'code': '2756372',
                  'display': 'Colace 100 mg oral capsule'
                }
              ],
              'text': 'docusate (Colace 100 mg oral capsule)'
            },
            'subject': {
              'reference': 'Patient/12724065',
              'display': 'SMART, WILMA'
            },
            'encounter': {
              'reference': 'Encounter/97953483'
            },
            'authoredOn': '2020-08-12T08:49:06.000-05:00',
            'requester': {
              'extension': [
                {
                  'valueCode': 'unknown',
                  'url': 'http://hl7.org/fhir/StructureDefinition/data-absent-reason'
                }
              ]
            },
            'dosageInstruction': [
              {
                'text': '100 mg = 1 cap, Oral, BID',
                'patientInstruction': '1 Capsules Oral (given by mouth) 2 times a day. Refills: 0.',
                'timing': {
                  'repeat': {
                    'boundsPeriod': {
                      'start': '2020-08-12T09:00:00.000-05:00'
                    }
                  },
                  'code': {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4003',
                        'code': '696528',
                        'display': 'BID'
                      },
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/v3-GTSAbbreviation',
                        'code': 'BID',
                        'display': 'BID'
                      },
                      {
                        'system': 'http://snomed.info/sct',
                        'code': '229799001',
                        'display': 'Twice a day (qualifier value)'
                      }
                    ],
                    'text': 'BID'
                  }
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
                      'value': 1,
                      'unit': 'cap',
                      'system': 'http://unitsofmeasure.org',
                      'code': '{Capsule}'
                    }
                  }
                ]
              }
            ],
            'dispenseRequest': {
              'validityPeriod': {
                'start': '2020-08-12T08:49:06.000-05:00'
              }
            },
            'priorPrescription': {
              'reference': 'MedicationRequest/311877117'
            }
          }
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationRequest/311876937',
          'resource': {
            'resourceType': 'MedicationRequest',
            'id': '311876937',
            'meta': {
              'versionId': '0',
              'lastUpdated': '2020-05-11T15:04:35.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p>/
              <b>Medication Request</b></p><p><b>Status</b>: Active</p>/
              <p><b>Intent</b>: Order</p><p><b>Medication</b>: furosemide (furosemide 40 mg oral tablet)</p>/
              <p><b>Dosage Instructions</b>: 40 mg = 1 tab, Oral, BID, 30 tab, 0 Refill(s)</p>/
              <p><b>Patient</b>: SMART, WILMA</p>/
              <p><b>Authored On</b>: May 11, 2020  3:04 P.M. UTC</p></div>'
            },
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
                  'code': '313988',
                  'display': 'Furosemide 40 MG Oral Tablet'
                },
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/synonym',
                  'code': '2758804',
                  'display': 'furosemide 40 mg oral tablet'
                }
              ],
              'text': 'furosemide (furosemide 40 mg oral tablet)'
            },
            'subject': {
              'reference': 'Patient/12724065',
              'display': 'SMART, WILMA'
            },
            'encounter': {
              'reference': 'Encounter/97953483'
            },
            'authoredOn': '2020-05-11T10:04:12.000-05:00',
            'requester': {
              'reference': 'Practitioner/12742384',
              'display': 'PWMEDACTIONPLAN, Physician - Hospitalist'
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
                'text': '40 mg = 1 tab, Oral, BID, 30 tab, 0 Refill(s)',
                'patientInstruction': '1 tab Oral (given by mouth) 2 times a day. Refills: 0.',
                'timing': {
                  'repeat': {
                    'boundsPeriod': {
                      'start': '2020-05-11T10:04:00.000-05:00'
                    }
                  },
                  'code': {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4003',
                        'code': '696528',
                        'display': 'BID'
                      },
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/v3-GTSAbbreviation',
                        'code': 'BID',
                        'display': 'BID'
                      },
                      {
                        'system': 'http://snomed.info/sct',
                        'code': '229799001',
                        'display': 'Twice a day (qualifier value)'
                      }
                    ],
                    'text': 'BID'
                  }
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
                      'value': 1,
                      'unit': 'tab',
                      'system': 'http://unitsofmeasure.org',
                      'code': '{tbl}'
                    }
                  }
                ]
              }
            ],
            'dispenseRequest': {
              'validityPeriod': {
                'start': '2020-05-11T10:04:12.000-05:00'
              },
              'numberOfRepeatsAllowed': 0,
              'quantity': {
                'value': 30,
                'unit': 'tab',
                'system': 'http://unitsofmeasure.org',
                'code': '{tbl}'
              }
            },
            'substitution': {
              'allowedBoolean': true
            }
          }
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationRequest/311877367',
          'resource': {
            'resourceType': 'MedicationRequest',
            'id': '311877367',
            'meta': {
              'versionId': '1',
              'lastUpdated': '2020-07-14T13:47:08.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Medication Request</b></p>/
              <p><b>Status</b>: Active</p><p><b>Intent</b>: Order</p>/
              <p><b>Medication</b>: insulin lispro (HumaLOG 100 units/mL injectable solution)</p>/
              <p><b>Dosage Instructions</b>: See Instructions, Insulin Correction Sliding Scale.
              Take 2 units of insulin if glucose level is 151 - 200 mg/dL.
              Take an additional unit of insulin for every increase 50 mg/dL of glucose up to 12 units.,
              15 mL, 0 Refill(s)</p>/
              <p><b>Patient</b>: SMART, WILMA</p><p><b>Authored On</b>: May 11, 2020  4:01 P.M. UTC</p></div>'
            },
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
                  'code': '865098',
                  'display': 'Insulin Lispro 100 UNT/ML Injectable Solution [Humalog]'
                },
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/synonym',
                  'code': '2556420307',
                  'display': 'HumaLOG 100 units/mL injectable solution'
                }
              ],
              'text': 'insulin lispro (HumaLOG 100 units/mL injectable solution)'
            },
            'subject': {
              'reference': 'Patient/12724065',
              'display': 'SMART, WILMA'
            },
            'encounter': {
              'reference': 'Encounter/97953483'
            },
            'authoredOn': '2020-05-11T11:01:01.000-05:00',
            'requester': {
              'reference': 'Practitioner/12742384',
              'display': 'PWMEDACTIONPLAN, Physician - Hospitalist'
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
                'text': 'See Instructions, Insulin Correction Sliding Scale.
                 Take 2 units of insulin if glucose level is 151 - 200 mg/dL.
                 Take an additional unit of insulin for every increase 50 mg/dL of glucose up to 12 units.,
                 15 mL, 0 Refill(s)',
                'additionalInstruction': [
                  {
                    'text': 'Insulin Correction Sliding Scale.
                     Take 2 units of insulin if glucose level is 151 - 200 mg/dL.
                    Take an additional unit of insulin for every increase 50 mg/dL of glucose up to 12 units.'
                  }
                ],
                'patientInstruction': 'Insulin Correction Sliding Scale.
                Take 2 units of insulin if glucose level is 151 - 200 mg/dL.
                Take an additional unit of insulin for every increase 50 mg/dL of glucose up to 12 units.. Refills: 0.',
                'timing': {
                  'repeat': {
                    'boundsPeriod': {
                      'start': '2020-05-11T11:01:00.000-05:00'
                    }
                  }
                }
              }
            ],
            'dispenseRequest': {
              'validityPeriod': {
                'start': '2020-05-11T11:01:01.000-05:00'
              },
              'numberOfRepeatsAllowed': 0,
              'quantity': {
                'value': 15,
                'unit': 'mL',
                'system': 'http://unitsofmeasure.org',
                'code': 'mL'
              }
            },
            'substitution': {
              'allowedBoolean': true
            }
          }
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationRequest/311877067',
          'resource': {
            'resourceType': 'MedicationRequest',
            'id': '311877067',
            'meta': {
              'versionId': '0',
              'lastUpdated': '2020-05-11T15:12:49.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Medication Request</b></p>/
              <p><b>Status</b>: Active</p>/
              <p><b>Intent</b>: Order</p>/
              <p><b>Medication</b>: metoprolol (Lopressor 50 mg oral tablet)</p>/
              <p><b>Dosage Instructions</b>: 25 mg = 0.5 tab, Oral, BID, 60 tab, 0 Refill(s)</p>/
              <p><b>Patient</b>: SMART, WILMA</p><p><b>Authored On</b>: May 11, 2020  3:12 P.M. UTC</p></div>'
            },
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
                  'code': '866516',
                  'display': 'Metoprolol Tartrate 50 MG Oral Tablet [Lopressor]'
                },
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/synonym',
                  'code': '2763438',
                  'display': 'Lopressor 50 mg oral tablet'
                }
              ],
              'text': 'metoprolol (Lopressor 50 mg oral tablet)'
            },
            'subject': {
              'reference': 'Patient/12724065',
              'display': 'SMART, WILMA'
            },
            'encounter': {
              'reference': 'Encounter/97953483'
            },
            'authoredOn': '2020-05-11T10:12:24.000-05:00',
            'requester': {
              'reference': 'Practitioner/12742384',
              'display': 'PWMEDACTIONPLAN, Physician - Hospitalist'
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
                'text': '25 mg = 0.5 tab, Oral, BID, 60 tab, 0 Refill(s)',
                'patientInstruction': '0.5 tab Oral (given by mouth) 2 times a day. Refills: 0.',
                'timing': {
                  'repeat': {
                    'boundsPeriod': {
                      'start': '2020-05-11T10:12:00.000-05:00'
                    }
                  },
                  'code': {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4003',
                        'code': '696528',
                        'display': 'BID'
                      },
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/v3-GTSAbbreviation',
                        'code': 'BID',
                        'display': 'BID'
                      },
                      {
                        'system': 'http://snomed.info/sct',
                        'code': '229799001',
                        'display': 'Twice a day (qualifier value)'
                      }
                    ],
                    'text': 'BID'
                  }
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
                      'value': 0.5,
                      'unit': 'tab',
                      'system': 'http://unitsofmeasure.org',
                      'code': '{tbl}'
                    }
                  }
                ]
              }
            ],
            'dispenseRequest': {
              'validityPeriod': {
                'start': '2020-05-11T10:12:24.000-05:00'
              },
              'numberOfRepeatsAllowed': 0,
              'quantity': {
                'value': 60,
                'unit': 'tab',
                'system': 'http://unitsofmeasure.org',
                'code': '{tbl}'
              }
            },
            'substitution': {
              'allowedBoolean': true
            }
          }
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationRequest/311877713',
          'resource': {
            'resourceType': 'MedicationRequest',
            'id': '311877713',
            'meta': {
              'versionId': '3',
              'lastUpdated': '2020-11-19T14:20:41.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Medication Request</b></p>/
              <p><b>Status</b>: Active</p><p><b>Intent</b>: Order</p>/
              <p><b>Medication</b>: predniSONE (predniSONE 1 mg oral tablet)</p>/
              <p><b>Dosage Instructions</b>: See Instructions, Taper twice a day.
              Take 3 tablets twice a day. Reduce dose by 1/2 tablet every week.,
              30 tab, 0 Refill(s)</p>/
              <p><b>Patient</b>: SMART, WILMA</p><p><b>Authored On</b>: May 11, 2020  8:19 P.M. UTC</p></div>'
            },
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
                  'code': '198144',
                  'display': 'Prednisone 1 MG Oral Tablet'
                },
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/synonym',
                  'code': '2767465',
                  'display': 'predniSONE 1 mg oral tablet'
                }
              ],
              'text': 'predniSONE (predniSONE 1 mg oral tablet)'
            },
            'subject': {
              'reference': 'Patient/12724065',
              'display': 'SMART, WILMA'
            },
            'encounter': {
              'reference': 'Encounter/97953483'
            },
            'authoredOn': '2020-05-11T15:19:43.000-05:00',
            'requester': {
              'reference': 'Practitioner/12742384',
              'display': 'PWMEDACTIONPLAN, Physician - Hospitalist'
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
                'text': 'See Instructions, Taper twice a day. Take 3 tablets twice a day.
                Reduce dose by 1/2 tablet every week., 30 tab, 0 Refill(s)',
                'additionalInstruction': [
                  {
                    'text': 'Taper twice a day. Take 3 tablets twice a day.
                    Reduce dose by 1/2 tablet every week.'
                  }
                ],
                'patientInstruction': 'Taper twice a day. Take 3 tablets twice a day.
                 Reduce dose by 1/2 tablet every week.. Refills: 0.',
                'timing': {
                  'repeat': {
                    'boundsPeriod': {
                      'start': '2020-05-11T15:19:00.000-05:00'
                    }
                  }
                }
              }
            ],
            'dispenseRequest': {
              'validityPeriod': {
                'start': '2020-05-11T15:19:43.000-05:00'
              },
              'numberOfRepeatsAllowed': 0,
              'quantity': {
                'value': 30,
                'unit': 'tab',
                'system': 'http://unitsofmeasure.org',
                'code': '{tbl}'
              }
            },
            'substitution': {
              'allowedBoolean': true
            }
          }
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationRequest/311877245',
          'resource': {
            'resourceType': 'MedicationRequest',
            'id': '311877245',
            'meta': {
              'versionId': '0',
              'lastUpdated': '2020-05-11T15:27:07.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Medication Request</b></p>/
              <p><b>Status</b>: Active</p>/
              <p><b>Intent</b>: Order</p>/
              <p><b>Medication</b>: warfarin (warfarin 4 mg oral tablet)</p>/
              <p><b>Dosage Instructions</b>: 4 mg = 1 tab, Oral, Sun/Tu/Th/Sa, 18 tab, 0 Refill(s)</p>/
              <p><b>Patient</b>: SMART, WILMA</p><p><b>Authored On</b>: May 11, 2020  3:26 P.M. UTC</p></div>'
            },
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
                  'code': '855324',
                  'display': 'Warfarin Sodium 4 MG Oral Tablet'
                },
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/synonym',
                  'code': '2771197',
                  'display': 'warfarin 4 mg oral tablet'
                }
              ],
              'text': 'warfarin (warfarin 4 mg oral tablet)'
            },
            'subject': {
              'reference': 'Patient/12724065',
              'display': 'SMART, WILMA'
            },
            'encounter': {
              'reference': 'Encounter/97953483'
            },
            'authoredOn': '2020-05-11T10:26:31.000-05:00',
            'requester': {
              'reference': 'Practitioner/12742384',
              'display': 'PWMEDACTIONPLAN, Physician - Hospitalist'
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
                'text': '4 mg = 1 tab, Oral, Sun/Tu/Th/Sa, 18 tab, 0 Refill(s)',
                'patientInstruction': '1 tab Oral (given by mouth) Sun/Tu/Th/Sa. Refills: 0.',
                'timing': {
                  'repeat': {
                    'boundsPeriod': {
                      'start': '2020-05-11T10:26:00.000-05:00'
                    }
                  },
                  'code': {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4003',
                        'code': '23362267',
                        'display': 'Sun/Tu/Th/Sa'
                      },
                      {
                        'system': 'http://snomed.info/sct',
                        'code': '2181000175104',
                        'display': 'Sunday, Tuesday, Thursday, Saturday (qualifier value)'
                      }
                    ],
                    'text': 'Sun/Tu/Th/Sa'
                  }
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
                      'value': 1,
                      'unit': 'tab',
                      'system': 'http://unitsofmeasure.org',
                      'code': '{tbl}'
                    }
                  }
                ]
              }
            ],
            'dispenseRequest': {
              'validityPeriod': {
                'start': '2020-05-11T10:26:31.000-05:00'
              },
              'numberOfRepeatsAllowed': 0,
              'quantity': {
                'value': 18,
                'unit': 'tab',
                'system': 'http://unitsofmeasure.org',
                'code': '{tbl}'
              }
            },
            'substitution': {
              'allowedBoolean': true
            }
          }
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationRequest/311877281',
          'resource': {
            'resourceType': 'MedicationRequest',
            'id': '311877281',
            'meta': {
              'versionId': '0',
              'lastUpdated': '2020-05-11T15:27:52.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Medication Request</b></p>/
              <p><b>Status</b>: Active</p><p><b>Intent</b>: Order</p>/
              <p><b>Medication</b>: warfarin (warfarin 3 mg oral tablet)</p>/
              <p><b>Dosage Instructions</b>: 3 mg = 1 tab, Oral, Mon/Wed/Fri, 13 tab, 0 Refill(s)</p>/
              <p><b>Patient</b>: SMART, WILMA</p><p><b>Authored On</b>: May 11, 2020  3:27 P.M. UTC</p></div>'
            },
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
                  'code': '855318',
                  'display': 'Warfarin Sodium 3 MG Oral Tablet'
                },
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/synonym',
                  'code': '2771196',
                  'display': 'warfarin 3 mg oral tablet'
                }
              ],
              'text': 'warfarin (warfarin 3 mg oral tablet)'
            },
            'subject': {
              'reference': 'Patient/12724065',
              'display': 'SMART, WILMA'
            },
            'encounter': {
              'reference': 'Encounter/97953483'
            },
            'authoredOn': '2020-05-11T10:27:18.000-05:00',
            'requester': {
              'reference': 'Practitioner/12742384',
              'display': 'PWMEDACTIONPLAN, Physician - Hospitalist'
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
                'text': '3 mg = 1 tab, Oral, Mon/Wed/Fri, 13 tab, 0 Refill(s)',
                'patientInstruction': '1 tab Oral (given by mouth) Mon/Wed/Fri. Refills: 0.',
                'timing': {
                  'repeat': {
                    'boundsPeriod': {
                      'start': '2020-05-11T10:27:00.000-05:00'
                    }
                  },
                  'code': {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4003',
                        'code': '696604',
                        'display': 'Mon/Wed/Fri'
                      },
                      {
                        'system': 'http://snomed.info/sct',
                        'code': '2111000175107',
                        'display': 'Monday, Wednesday, Friday (qualifier value)'
                      }
                    ],
                    'text': 'Mon/Wed/Fri'
                  }
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
                      'value': 1,
                      'unit': 'tab',
                      'system': 'http://unitsofmeasure.org',
                      'code': '{tbl}'
                    }
                  }
                ]
              }
            ],
            'dispenseRequest': {
              'validityPeriod': {
                'start': '2020-05-11T10:27:18.000-05:00'
              },
              'numberOfRepeatsAllowed': 0,
              'quantity': {
                'value': 13,
                'unit': 'tab',
                'system': 'http://unitsofmeasure.org',
                'code': '{tbl}'
              }
            },
            'substitution': {
              'allowedBoolean': true
            }
          }
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationRequest/319129271',
          'resource': {
            'resourceType': 'MedicationRequest',
            'id': '319129271',
            'meta': {
              'versionId': '2',
              'lastUpdated': '2020-11-24T13:48:55.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Medication Request</b></p>/
              <p><b>Status</b>: Completed</p><p><b>Intent</b>: Order</p>/
              <p><b>Medication</b>: dexamethasone (dexamethasone 0.5 mg oral tablet)</p>/
              <p><b>Dosage Instructions</b>: See Instructions, Take as directed., 5 tab, 0 Refill(s)</p>/
              <p><b>Patient</b>: SMART, WILMA</p><p><b>Authored On</b>: Nov 18, 2020 11:05 P.M. UTC</p></div>'
            },
            'status': 'completed',
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
                  'code': '197577',
                  'display': 'Dexamethasone 0.5 MG Oral Tablet'
                },
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/synonym',
                  'code': '2755118',
                  'display': 'dexamethasone 0.5 mg oral tablet'
                }
              ],
              'text': 'dexamethasone (dexamethasone 0.5 mg oral tablet)'
            },
            'subject': {
              'reference': 'Patient/12724065',
              'display': 'SMART, WILMA'
            },
            'encounter': {
              'reference': 'Encounter/97954082'
            },
            'authoredOn': '2020-11-18T17:05:07.000-06:00',
            'requester': {
              'reference': 'Practitioner/12742384',
              'display': 'PWMEDACTIONPLAN, Physician - Hospitalist'
            },
            'courseOfTherapyType': {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4009',
                  'code': '2337',
                  'display': 'Physician Stop'
                },
                {
                  'system': 'http://terminology.hl7.org/CodeSystem/medicationrequest-course-of-therapy',
                  'code': 'acute',
                  'display': 'Short course (acute) therapy'
                }
              ],
              'text': 'Acute'
            },
            'dosageInstruction': [
              {
                'text': 'See Instructions, Take as directed., 5 tab, 0 Refill(s)',
                'additionalInstruction': [
                  {
                    'text': 'Take as directed.'
                  }
                ],
                'patientInstruction': 'Take as directed.. Refills: 0.',
                'timing': {
                  'repeat': {
                    'boundsPeriod': {
                      'start': '2020-11-18T17:05:00.000-06:00',
                      'end': '2020-11-24T07:48:55.000-06:00'
                    }
                  }
                }
              }
            ],
            'dispenseRequest': {
              'validityPeriod': {
                'start': '2020-11-18T17:05:07.000-06:00'
              },
              'numberOfRepeatsAllowed': 0,
              'quantity': {
                'value': 5,
                'unit': 'tab',
                'system': 'http://unitsofmeasure.org',
                'code': '{tbl}'
              }
            },
            'substitution': {
              'allowedBoolean': true
            }
          }
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationRequest/319129181',
          'resource': {
            'resourceType': 'MedicationRequest',
            'id': '319129181',
            'meta': {
              'versionId': '1',
              'lastUpdated': '2020-11-18T23:01:53.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Medication Request</b></p>/
              <p><b>Status</b>: Cancelled</p><p><b>Intent</b>: Order</p>/
              <p><b>Medication</b>: dexamethasone (dexamethasone 0.5 mg oral tablet)</p>/
              <p><b>Dosage Instructions</b>: See Instructions, Take as directed, 3 tab, 0 Refill(s)</p>/
              <p><b>Patient</b>: SMART, WILMA</p><p><b>Authored On</b>: Nov 18, 2020 10:16 P.M. UTC</p></div>'
            },
            'status': 'cancelled',
            'statusReason': {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/1309',
                  'code': '633922',
                  'display': 'Physician Request',
                  'userSelected': true
                }
              ],
              'text': 'Physician Request'
            },
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
                  'code': '197577',
                  'display': 'Dexamethasone 0.5 MG Oral Tablet'
                },
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/synonym',
                  'code': '2755118',
                  'display': 'dexamethasone 0.5 mg oral tablet'
                }
              ],
              'text': 'dexamethasone (dexamethasone 0.5 mg oral tablet)'
            },
            'subject': {
              'reference': 'Patient/12724065',
              'display': 'SMART, WILMA'
            },
            'encounter': {
              'reference': 'Encounter/97954082'
            },
            'authoredOn': '2020-11-18T16:16:42.000-06:00',
            'requester': {
              'reference': 'Practitioner/12742384',
              'display': 'PWMEDACTIONPLAN, Physician - Hospitalist'
            },
            'courseOfTherapyType': {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4009',
                  'code': '2337',
                  'display': 'Physician Stop'
                },
                {
                  'system': 'http://terminology.hl7.org/CodeSystem/medicationrequest-course-of-therapy',
                  'code': 'acute',
                  'display': 'Short course (acute) therapy'
                }
              ],
              'text': 'Acute'
            },
            'dosageInstruction': [
              {
                'text': 'See Instructions, Take as directed, 3 tab, 0 Refill(s)',
                'additionalInstruction': [
                  {
                    'text': 'Take as directed'
                  }
                ],
                'patientInstruction': 'Take as directed. Refills: 0.',
                'timing': {
                  'repeat': {
                    'boundsPeriod': {
                      'start': '2020-11-18T20:00:00.000-06:00',
                      'end': '2020-11-18T17:01:00.000-06:00'
                    }
                  }
                }
              }
            ],
            'dispenseRequest': {
              'validityPeriod': {
                'start': '2020-11-18T16:16:42.000-06:00'
              },
              'numberOfRepeatsAllowed': 0,
              'quantity': {
                'value': 3,
                'unit': 'tab',
                'system': 'http://unitsofmeasure.org',
                'code': '{tbl}'
              }
            },
            'substitution': {
              'allowedBoolean': true
            }
          }
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationRequest/315918203',
          'resource': {
            'resourceType': 'MedicationRequest',
            'id': '315918203',
            'meta': {
              'versionId': '1',
              'lastUpdated': '2020-11-02T19:06:58.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Medication Request</b></p>/
              <p><b>Status</b>: Stopped</p><p><b>Intent</b>: Order</p><p><b>Medication</b>: traMADol-acetaminophen</p>/
              <p><b>Dosage Instructions</b>: 23.0 tabs, BID, for 1 doses, 5 mL, Oral, Daily.
               Take with food., PRN, 10, 5 Refill(s)</p>/
              <p><b>Patient</b>: SMART, WILMA</p><p><b>Authored On</b>: Sep 10, 2020 10:02 A.M. UTC</p></div>'
            },
            'status': 'stopped',
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
                    'system': 'http://terminology.hl7.org/CodeSystem/medication-statement-category',
                    'code': 'patientspecified',
                    'display': 'Patient Specified',
                    'userSelected': false
                  }
                ]
              }
            ],
            'reportedBoolean': true,
            'medicationCodeableConcept': {
              'coding': [
                {
                  'system': 'http://www.nlm.nih.gov/research/umls/rxnorm',
                  'code': '352362',
                  'display': 'Acetaminophen / Tramadol'
                },
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/synonym',
                  'code': '2748396',
                  'display': 'traMADol-acetaminophen'
                }
              ],
              'text': 'traMADol-acetaminophen'
            },
            'subject': {
              'reference': 'Patient/12724065',
              'display': 'SMART, WILMA'
            },
            'encounter': {
              'reference': 'Encounter/97939515'
            },
            'authoredOn': '2020-09-10T05:02:29.000-05:00',
            'requester': {
              'extension': [
                {
                  'valueCode': 'unknown',
                  'url': 'http://hl7.org/fhir/StructureDefinition/data-absent-reason'
                }
              ]
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
              'text': 'Soft Stop'
            },
            'dosageInstruction': [
              {
                'text': '23.0 tabs, BID, for 1 doses, 5 mL, Oral, Daily. Take with food., PRN, 10, 5 Refill(s)',
                'additionalInstruction': [
                  {
                    'text': '5 mL, Oral, Daily.\nTake with food.'
                  }
                ],
                'patientInstruction': '23.0 tabs 2 times a day as needed for 1 Doses.
                 5 mL, Oral, Daily.\nTake with food..',
                'timing': {
                  'repeat': {
                    'boundsPeriod': {
                      'start': '2020-02-25T17:19:10.000-06:00',
                      'end': '2020-11-02T13:06:00.000-06:00'
                    },
                    'count': 1
                  },
                  'code': {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4003',
                        'code': '696528',
                        'display': 'BID'
                      },
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/v3-GTSAbbreviation',
                        'code': 'BID',
                        'display': 'BID'
                      },
                      {
                        'system': 'http://snomed.info/sct',
                        'code': '229799001',
                        'display': 'Twice a day (qualifier value)'
                      }
                    ],
                    'text': 'BID'
                  }
                },
                'asNeededBoolean': true
              }
            ],
            'dispenseRequest': {
              'validityPeriod': {
                'start': '2020-09-10T05:02:29.000-05:00'
              },
              'numberOfRepeatsAllowed': 5
            },
            'substitution': {
              'allowedBoolean': false
            }
          }
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationRequest/314974795',
          'resource': {
            'resourceType': 'MedicationRequest',
            'id': '314974795',
            'meta': {
              'versionId': '2',
              'lastUpdated': '2020-09-28T20:01:49.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Medication Request</b></p>/
              <p><b>Status</b>: Stopped</p><p><b>Intent</b>: Order</p>/
              <p><b>Medication</b>: furosemide</p>/
              <p><b>Dosage Instructions</b>: 40 mg = 1 tab, Oral, BID</p>/
              <p><b>Patient</b>: SMART, WILMA</p>/
              <p><b>Authored On</b>: Aug 12, 2020  1:49 P.M. UTC</p></div>'
            },
            'status': 'stopped',
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
                  'code': '4603',
                  'display': 'Furosemide'
                },
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/synonym',
                  'code': '2758799',
                  'display': 'furosemide'
                }
              ],
              'text': 'furosemide'
            },
            'subject': {
              'reference': 'Patient/12724065',
              'display': 'SMART, WILMA'
            },
            'encounter': {
              'reference': 'Encounter/97953483'
            },
            'authoredOn': '2020-08-12T08:49:08.000-05:00',
            'requester': {
              'extension': [
                {
                  'valueCode': 'unknown',
                  'url': 'http://hl7.org/fhir/StructureDefinition/data-absent-reason'
                }
              ]
            },
            'dosageInstruction': [
              {
                'text': '40 mg = 1 tab, Oral, BID',
                'patientInstruction': '40 Milligrams Oral (given by mouth) 2 times a day. Refills: 0.',
                'timing': {
                  'repeat': {
                    'boundsPeriod': {
                      'start': '2020-08-12T09:00:00.000-05:00',
                      'end': '2020-09-28T15:01:49.000-05:00'
                    }
                  },
                  'code': {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4003',
                        'code': '696528',
                        'display': 'BID'
                      },
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/v3-GTSAbbreviation',
                        'code': 'BID',
                        'display': 'BID'
                      },
                      {
                        'system': 'http://snomed.info/sct',
                        'code': '229799001',
                        'display': 'Twice a day (qualifier value)'
                      }
                    ],
                    'text': 'BID'
                  }
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
                      'value': 40,
                      'unit': 'mg',
                      'system': 'http://unitsofmeasure.org',
                      'code': 'mg'
                    }
                  }
                ]
              }
            ],
            'dispenseRequest': {
              'validityPeriod': {
                'start': '2020-08-12T08:49:08.000-05:00'
              }
            },
            'priorPrescription': {
              'reference': 'MedicationRequest/311876937'
            }
          }
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationRequest/315266931',
          'resource': {
            'resourceType': 'MedicationRequest',
            'id': '315266931',
            'meta': {
              'versionId': '0',
              'lastUpdated': '2020-08-31T21:57:56.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Medication Request</b></p>/
              <p><b>Status</b>: Active</p><p><b>Intent</b>: Order</p>/
              <p><b>Medication</b>: influenza virus vaccine, live</p>/
              <p><b>Dosage Instructions</b>: 1 sprays, Nasal, Once</p>/
              <p><b>Patient</b>: SMART, WILMA</p>/
              <p><b>Authored On</b>: Aug 31, 2020  9:57 P.M. UTC</p></div>'
            },
            'status': 'active',
            'intent': 'order',
            'category': [
              {
                'coding': [
                  {
                    'system': 'http://terminology.hl7.org/CodeSystem/medicationrequest-category',
                    'code': 'outpatient',
                    'display': 'Outpatient',
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
                  'code': '2054180',
                  'display': 'influenza A virus A/Singapore/INFIMH-16-0019/2016 (H3N2) antigen /
                   influenza A virus A/Slovenia/2903/2015 (H1N1) antigen /
                   influenza B virus B/Colorado/06/2017 antigen / influenza B virus B/Phuket/3073/2013 antigen'
                },
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/synonym',
                  'code': '2760947',
                  'display': 'influenza virus vaccine, live'
                }
              ],
              'text': 'influenza virus vaccine, live'
            },
            'subject': {
              'reference': 'Patient/12724065',
              'display': 'SMART, WILMA'
            },
            'encounter': {
              'reference': 'Encounter/97954467'
            },
            'authoredOn': '2020-08-31T16:57:49.000-05:00',
            'requester': {
              'reference': 'Practitioner/12742812',
              'display': 'PWMettle, MD card'
            },
            'courseOfTherapyType': {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4009',
                  'code': '2337',
                  'display': 'Physician Stop'
                },
                {
                  'system': 'http://terminology.hl7.org/CodeSystem/medicationrequest-course-of-therapy',
                  'code': 'acute',
                  'display': 'Short course (acute) therapy'
                }
              ],
              'text': 'Physician Stop'
            },
            'dosageInstruction': [
              {
                'text': '1 sprays, Nasal, Once',
                'patientInstruction': '1 Sprays Nasal (into the nose) once. Refills: 0.',
                'timing': {
                  'repeat': {
                    'boundsPeriod': {
                      'start': '2020-08-31T16:57:00.000-05:00',
                      'end': '2020-08-31T16:57:00.000-05:00'
                    }
                  },
                  'code': {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4003',
                        'code': '696531',
                        'display': 'Once'
                      },
                      {
                        'system': 'http://snomed.info/sct',
                        'code': '422114001',
                        'display': 'Once - dosing instruction fragment (qualifier value)'
                      }
                    ],
                    'text': 'Once'
                  }
                },
                'route': {
                  'coding': [
                    {
                      'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4001',
                      'code': '318177',
                      'display': 'Nasal',
                      'userSelected': true
                    },
                    {
                      'system': 'http://snomed.info/sct',
                      'code': '46713006',
                      'display': 'Nasal route (qualifier value)',
                      'userSelected': false
                    }
                  ],
                  'text': 'Nasal'
                },
                'doseAndRate': [
                  {
                    'doseQuantity': {
                      'value': 1,
                      'unit': 'sprays',
                      'system': 'http://unitsofmeasure.org',
                      'code': '{spray}'
                    }
                  }
                ]
              }
            ],
            'dispenseRequest': {
              'validityPeriod': {
                'start': '2020-08-31T16:57:49.000-05:00'
              }
            }
          }
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationRequest/311877091',
          'resource': {
            'resourceType': 'MedicationRequest',
            'id': '311877091',
            'meta': {
              'versionId': '1',
              'lastUpdated': '2020-07-14T18:22:37.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Medication Request</b></p>/
              <p><b>Status</b>: Stopped</p><p><b>Intent</b>: Order</p>/
              <p><b>Medication</b>: ergocalciferol (ergocalciferol 50,000 intl units (1.25 mg) oral capsule)</p>/
              <p><b>Dosage Instructions</b>: 50,000 IntlUnit = 1 cap, Oral, every week, 4 cap, 0 Refill(s)</p>/
              <p><b>Patient</b>: SMART, WILMA</p>/
              <p><b>Authored On</b>: May 11, 2020  3:13 P.M. UTC</p></div>'
            },
            'status': 'stopped',
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
                  'code': '1367410',
                  'display': 'Ergocalciferol 50000 UNT Oral Capsule'
                },
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/synonym',
                  'code': '2757287',
                  'display': 'ergocalciferol 50,000 intl units (1.25 mg) oral capsule'
                }
              ],
              'text': 'ergocalciferol (ergocalciferol 50,000 intl units (1.25 mg) oral capsule)'
            },
            'subject': {
              'reference': 'Patient/12724065',
              'display': 'SMART, WILMA'
            },
            'encounter': {
              'reference': 'Encounter/97953483'
            },
            'authoredOn': '2020-05-11T10:13:37.000-05:00',
            'requester': {
              'reference': 'Practitioner/12742384',
              'display': 'PWMEDACTIONPLAN, Physician - Hospitalist'
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
                'text': '50,000 IntlUnit = 1 cap, Oral, every week, 4 cap, 0 Refill(s)',
                'patientInstruction': '1 Capsules Oral (given by mouth) every week. Refills: 0.',
                'timing': {
                  'repeat': {
                    'boundsPeriod': {
                      'start': '2020-05-11T10:13:00.000-05:00',
                      'end': '2020-07-14T13:22:00.000-05:00'
                    }
                  },
                  'code': {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4003',
                        'code': '696617',
                        'display': 'every week'
                      },
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/v3-GTSAbbreviation',
                        'code': 'WK',
                        'display': 'weekly'
                      },
                      {
                        'system': 'http://snomed.info/sct',
                        'code': '225769003',
                        'display': 'Once a week (qualifier value)'
                      }
                    ],
                    'text': 'every week'
                  }
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
                      'value': 1,
                      'unit': 'cap',
                      'system': 'http://unitsofmeasure.org',
                      'code': '{Capsule}'
                    }
                  }
                ]
              }
            ],
            'dispenseRequest': {
              'validityPeriod': {
                'start': '2020-05-11T10:13:37.000-05:00'
              },
              'numberOfRepeatsAllowed': 0,
              'quantity': {
                'value': 4,
                'unit': 'cap',
                'system': 'http://unitsofmeasure.org',
                'code': '{Capsule}'
              }
            },
            'substitution': {
              'allowedBoolean': true
            }
          }
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationRequest/311876951',
          'resource': {
            'resourceType': 'MedicationRequest',
            'id': '311876951',
            'meta': {
              'versionId': '1',
              'lastUpdated': '2020-07-14T17:55:08.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Medication Request</b></p>/
              <p><b>Status</b>: Stopped</p><p><b>Intent</b>: Order</p>/
              <p><b>Medication</b>: lisinopril (lisinopril 10 mg oral tablet)</p>/
              <p><b>Dosage Instructions</b>: 10 mg = 1 tab, Oral, Daily, 30 tab, 0 Refill(s)</p>/
              <p><b>Patient</b>: SMART, WILMA</p>/
              <p><b>Authored On</b>: May 11, 2020  3:04 P.M. UTC</p></div>'
            },
            'status': 'stopped',
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
                  'code': '314076',
                  'display': 'Lisinopril 10 MG Oral Tablet'
                },
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/synonym',
                  'code': '2762241',
                  'display': 'lisinopril 10 mg oral tablet'
                }
              ],
              'text': 'lisinopril (lisinopril 10 mg oral tablet)'
            },
            'subject': {
              'reference': 'Patient/12724065',
              'display': 'SMART, WILMA'
            },
            'encounter': {
              'reference': 'Encounter/97953483'
            },
            'authoredOn': '2020-05-11T10:04:50.000-05:00',
            'requester': {
              'reference': 'Practitioner/12742384',
              'display': 'PWMEDACTIONPLAN, Physician - Hospitalist'
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
                'text': '10 mg = 1 tab, Oral, Daily, 30 tab, 0 Refill(s)',
                'patientInstruction': '1 tab Oral (given by mouth) every day. Refills: 0.',
                'timing': {
                  'repeat': {
                    'boundsPeriod': {
                      'start': '2020-05-11T10:04:00.000-05:00',
                      'end': '2020-07-14T12:55:00.000-05:00'
                    }
                  },
                  'code': {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4003',
                        'code': '696530',
                        'display': 'Daily'
                      },
                      {
                        'system': 'http://snomed.info/sct',
                        'code': '229797004',
                        'display': 'Once daily (qualifier value)'
                      },
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/v3-GTSAbbreviation',
                        'code': 'QD',
                        'display': 'QD'
                      }
                    ],
                    'text': 'Daily'
                  }
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
                      'value': 1,
                      'unit': 'tab',
                      'system': 'http://unitsofmeasure.org',
                      'code': '{tbl}'
                    }
                  }
                ]
              }
            ],
            'dispenseRequest': {
              'validityPeriod': {
                'start': '2020-05-11T10:04:50.000-05:00'
              },
              'numberOfRepeatsAllowed': 0,
              'quantity': {
                'value': 30,
                'unit': 'tab',
                'system': 'http://unitsofmeasure.org',
                'code': '{tbl}'
              }
            },
            'substitution': {
              'allowedBoolean': true
            }
          }
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationRequest/311877045',
          'resource': {
            'resourceType': 'MedicationRequest',
            'id': '311877045',
            'meta': {
              'versionId': '1',
              'lastUpdated': '2020-07-14T17:55:02.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Medication Request</b></p>/
              <p><b>Status</b>: Stopped</p><p><b>Intent</b>: Order</p>/
              <p><b>Medication</b>: glipiZIDE (glipiZIDE 5 mg oral tablet)</p>/
              <p><b>Dosage Instructions</b>: 5 mg = 1 tab, Oral, BID, 30 tab, 0 Refill(s)</p>/
              <p><b>Patient</b>: SMART, WILMA</p>/
              <p><b>Authored On</b>: May 11, 2020  3:11 P.M. UTC</p></div>'
            },
            'status': 'stopped',
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
                  'code': '310490',
                  'display': 'Glipizide 5 MG Oral Tablet'
                },
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/synonym',
                  'code': '2759007',
                  'display': 'glipiZIDE 5 mg oral tablet'
                }
              ],
              'text': 'glipiZIDE (glipiZIDE 5 mg oral tablet)'
            },
            'subject': {
              'reference': 'Patient/12724065',
              'display': 'SMART, WILMA'
            },
            'encounter': {
              'reference': 'Encounter/97953483'
            },
            'authoredOn': '2020-05-11T10:11:28.000-05:00',
            'requester': {
              'reference': 'Practitioner/12742384',
              'display': 'PWMEDACTIONPLAN, Physician - Hospitalist'
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
                'text': '5 mg = 1 tab, Oral, BID, 30 tab, 0 Refill(s)',
                'patientInstruction': '1 tab Oral (given by mouth) 2 times a day. Refills: 0.',
                'timing': {
                  'repeat': {
                    'boundsPeriod': {
                      'start': '2020-05-11T10:11:00.000-05:00',
                      'end': '2020-07-14T12:54:00.000-05:00'
                    }
                  },
                  'code': {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4003',
                        'code': '696528',
                        'display': 'BID'
                      },
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/v3-GTSAbbreviation',
                        'code': 'BID',
                        'display': 'BID'
                      },
                      {
                        'system': 'http://snomed.info/sct',
                        'code': '229799001',
                        'display': 'Twice a day (qualifier value)'
                      }
                    ],
                    'text': 'BID'
                  }
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
                      'value': 1,
                      'unit': 'tab',
                      'system': 'http://unitsofmeasure.org',
                      'code': '{tbl}'
                    }
                  }
                ]
              }
            ],
            'dispenseRequest': {
              'validityPeriod': {
                'start': '2020-05-11T10:11:28.000-05:00'
              },
              'numberOfRepeatsAllowed': 0,
              'quantity': {
                'value': 30,
                'unit': 'tab',
                'system': 'http://unitsofmeasure.org',
                'code': '{tbl}'
              }
            },
            'substitution': {
              'allowedBoolean': true
            }
          }
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationRequest/311877749',
          'resource': {
            'resourceType': 'MedicationRequest',
            'id': '311877749',
            'meta': {
              'versionId': '1',
              'lastUpdated': '2020-07-14T14:59:17.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Medication Request</b></p>/
              <p><b>Status</b>: Stopped</p>/
              <p><b>Intent</b>: Order</p>/
              <p><b>Medication</b>: fluticasone-salmeterol (Advair HFA 230 mcg-21 mcg/inh inhalation aerosol)</p>/
              <p><b>Dosage Instructions</b>: 2 puffs, Inhale, BID, 180 EA, 0 Refill(s)</p>/
              <p><b>Patient</b>: SMART, WILMA</p>/
              <p><b>Authored On</b>: May 11, 2020  8:20 P.M. UTC</p></div>'
            },
            'status': 'stopped',
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
                  'code': '896273',
                  'display': '120 ACTUAT Fluticasone propionate 0.23 MG/ACTUAT /
                  salmeterol 0.021 MG/ACTUAT Metered Dose Inhaler [Advair]'
                },
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/synonym',
                  'code': '4187620',
                  'display': 'Advair HFA 230 mcg-21 mcg/inh inhalation aerosol'
                }
              ],
              'text': 'fluticasone-salmeterol (Advair HFA 230 mcg-21 mcg/inh inhalation aerosol)'
            },
            'subject': {
              'reference': 'Patient/12724065',
              'display': 'SMART, WILMA'
            },
            'encounter': {
              'reference': 'Encounter/97953483'
            },
            'authoredOn': '2020-05-11T15:20:40.000-05:00',
            'requester': {
              'reference': 'Practitioner/12742384',
              'display': 'PWMEDACTIONPLAN, Physician - Hospitalist'
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
                'text': '2 puffs, Inhale, BID, 180 EA, 0 Refill(s)',
                'patientInstruction': '2 Puffs Inhale (breathe in) 2 times a day. Refills: 0.',
                'timing': {
                  'repeat': {
                    'boundsPeriod': {
                      'start': '2020-05-11T15:20:00.000-05:00',
                      'end': '2020-07-14T09:59:00.000-05:00'
                    }
                  },
                  'code': {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4003',
                        'code': '696528',
                        'display': 'BID'
                      },
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/v3-GTSAbbreviation',
                        'code': 'BID',
                        'display': 'BID'
                      },
                      {
                        'system': 'http://snomed.info/sct',
                        'code': '229799001',
                        'display': 'Twice a day (qualifier value)'
                      }
                    ],
                    'text': 'BID'
                  }
                },
                'route': {
                  'coding': [
                    {
                      'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4001',
                      'code': '318168',
                      'display': 'Inhale',
                      'userSelected': true
                    },
                    {
                      'system': 'http://snomed.info/sct',
                      'code': '447694001',
                      'display': 'Respiratory tract route (qualifier value)',
                      'userSelected': false
                    }
                  ],
                  'text': 'Inhale'
                },
                'doseAndRate': [
                  {
                    'doseQuantity': {
                      'value': 2,
                      'unit': 'puffs',
                      'system': 'http://unitsofmeasure.org',
                      'code': '{Puff}'
                    }
                  }
                ]
              }
            ],
            'dispenseRequest': {
              'validityPeriod': {
                'start': '2020-05-11T15:20:40.000-05:00'
              },
              'numberOfRepeatsAllowed': 0,
              'quantity': {
                'value': 180,
                'unit': 'EA',
                'system': 'http://unitsofmeasure.org',
                'code': '{Each}'
              }
            },
            'substitution': {
              'allowedBoolean': true
            }
          }
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationRequest/314010113',
          'resource': {
            'resourceType': 'MedicationRequest',
            'id': '314010113',
            'meta': {
              'versionId': '1',
              'lastUpdated': '2020-07-14T14:46:54.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Medication Request</b></p>/
              <p><b>Status</b>: Stopped</p>/
              <p><b>Intent</b>: Order</p>/
              <p><b>Medication</b>: acetaminophen (acetaminophen 80 mg oral tablet, disintegrating)</p>/
              <p><b>Dosage Instructions</b>: 80 mg = 1 tab, Oral, every 6 hr,
              PRN: as needed for pain, 12 tab, 0 Refill(s)</p>/
              <p><b>Patient</b>: SMART, WILMA</p>/
              <p><b>Authored On</b>: Jul 14, 2020  1:33 P.M. UTC</p></div>'
            },
            'status': 'stopped',
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
                  'code': '251374',
                  'display': 'Acetaminophen 80 MG Disintegrating Tablet'
                },
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/synonym',
                  'code': '3616765',
                  'display': 'acetaminophen 80 mg oral tablet, disintegrating'
                }
              ],
              'text': 'acetaminophen (acetaminophen 80 mg oral tablet, disintegrating)'
            },
            'subject': {
              'reference': 'Patient/12724065',
              'display': 'SMART, WILMA'
            },
            'encounter': {
              'reference': 'Encounter/97953483'
            },
            'authoredOn': '2020-07-14T08:33:59.000-05:00',
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
                'text': '80 mg = 1 tab, Oral, every 6 hr, PRN: as needed for pain, 12 tab, 0 Refill(s)',
                'patientInstruction': '1 tab Oral (given by mouth) every 6 hours as needed as needed for pain.
                 Refills: 0.',
                'timing': {
                  'repeat': {
                    'boundsPeriod': {
                      'start': '2020-07-14T08:33:00.000-05:00',
                      'end': '2020-07-14T09:46:00.000-05:00'
                    }
                  },
                  'code': {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4003',
                        'code': '696553',
                        'display': 'every 6 hr'
                      },
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/v3-GTSAbbreviation',
                        'code': 'Q6H',
                        'display': 'Q6H'
                      },
                      {
                        'system': 'http://snomed.info/sct',
                        'code': '307468000',
                        'display': 'Every six hours (qualifier value)'
                      }
                    ],
                    'text': 'every 6 hr'
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
                      'value': 1,
                      'unit': 'tab',
                      'system': 'http://unitsofmeasure.org',
                      'code': '{tbl}'
                    }
                  }
                ]
              }
            ],
            'dispenseRequest': {
              'validityPeriod': {
                'start': '2020-07-14T08:33:59.000-05:00'
              },
              'numberOfRepeatsAllowed': 0,
              'quantity': {
                'value': 12,
                'unit': 'tab',
                'system': 'http://unitsofmeasure.org',
                'code': '{tbl}'
              }
            },
            'substitution': {
              'allowedBoolean': true
            }
          }
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationRequest/314010247',
          'resource': {
            'resourceType': 'MedicationRequest',
            'id': '314010247',
            'meta': {
              'versionId': '1',
              'lastUpdated': '2020-07-14T14:46:54.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Medication Request</b></p>/
              <p><b>Status</b>: Stopped</p><p><b>Intent</b>: Order</p>/
              <p><b>Medication</b>: acetaminophen (acetaminophen 80 mg oral tablet, disintegrating)</p>/
              <p><b>Dosage Instructions</b>: 80 mg = 1 tab, Oral, every 6 hr,
               PRN: as needed for fever, 24 tab, 0 Refill(s)</p>/
              <p><b>Patient</b>: SMART, WILMA</p><p><b>Authored On</b>: Jul 14, 2020  2:42 P.M. UTC</p></div>'
            },
            'status': 'stopped',
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
                  'code': '251374',
                  'display': 'Acetaminophen 80 MG Disintegrating Tablet'
                },
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/synonym',
                  'code': '3616765',
                  'display': 'acetaminophen 80 mg oral tablet, disintegrating'
                }
              ],
              'text': 'acetaminophen (acetaminophen 80 mg oral tablet, disintegrating)'
            },
            'subject': {
              'reference': 'Patient/12724065',
              'display': 'SMART, WILMA'
            },
            'encounter': {
              'reference': 'Encounter/97953483'
            },
            'authoredOn': '2020-07-14T09:42:30.000-05:00',
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
                'text': '80 mg = 1 tab, Oral, every 6 hr,
                PRN: as needed for fever, 24 tab, 0 Refill(s)',
                'patientInstruction': '1 tab Oral (given by mouth) every 6 hours as needed as needed for fever.
                 Refills: 0.',
                'timing': {
                  'repeat': {
                    'boundsPeriod': {
                      'start': '2020-07-14T09:42:00.000-05:00',
                      'end': '2020-07-14T09:46:00.000-05:00'
                    }
                  },
                  'code': {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4003',
                        'code': '696553',
                        'display': 'every 6 hr'
                      },
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/v3-GTSAbbreviation',
                        'code': 'Q6H',
                        'display': 'Q6H'
                      },
                      {
                        'system': 'http://snomed.info/sct',
                        'code': '307468000',
                        'display': 'Every six hours (qualifier value)'
                      }
                    ],
                    'text': 'every 6 hr'
                  }
                },
                'asNeededCodeableConcept': {
                  'text': 'as needed for fever'
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
                      'value': 1,
                      'unit': 'tab',
                      'system': 'http://unitsofmeasure.org',
                      'code': '{tbl}'
                    }
                  }
                ]
              }
            ],
            'dispenseRequest': {
              'validityPeriod': {
                'start': '2020-07-14T09:42:30.000-05:00'
              },
              'numberOfRepeatsAllowed': 0,
              'quantity': {
                'value': 24,
                'unit': 'tab',
                'system': 'http://unitsofmeasure.org',
                'code': '{tbl}'
              }
            },
            'substitution': {
              'allowedBoolean': true
            }
          }
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationRequest/313592065',
          'resource': {
            'resourceType': 'MedicationRequest',
            'id': '313592065',
            'meta': {
              'versionId': '3',
              'lastUpdated': '2020-07-14T13:33:35.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Medication Request</b></p>/
              <p><b>Status</b>: Stopped</p><p><b>Intent</b>: Order</p>/
              <p><b>Medication</b>: acetaminophen (acetaminophen 325 mg Tab)</p>/
              <p><b>Dosage Instructions</b>: 325 mg, Oral, Daily, 30 EA, 3 Refill(s)</p>/
              <p><b>Patient</b>: SMART, WILMA</p><p><b>Authored On</b>: Jul  1, 2020  1:21 P.M. UTC</p></div>'
            },
            'status': 'stopped',
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
                  'code': '313782',
                  'display': 'Acetaminophen 325 MG Oral Tablet'
                },
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/synonym',
                  'code': '2550507775',
                  'display': 'acetaminophen 325 mg Tab'
                }
              ],
              'text': 'acetaminophen (acetaminophen 325 mg Tab)'
            },
            'subject': {
              'reference': 'Patient/12724065',
              'display': 'SMART, WILMA'
            },
            'encounter': {
              'reference': 'Encounter/97954082'
            },
            'authoredOn': '2020-07-01T08:21:26.000-05:00',
            'requester': {
              'reference': 'Practitioner/2',
              'display': 'CERNER, CERNER CERNER'
            },
            'courseOfTherapyType': {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4009',
                  'code': '2336',
                  'display': 'Hard Stop'
                },
                {
                  'system': 'http://terminology.hl7.org/CodeSystem/medicationrequest-course-of-therapy',
                  'code': 'acute',
                  'display': 'Short course (acute) therapy'
                }
              ],
              'text': 'Hard Stop'
            },
            'dosageInstruction': [
              {
                'text': '325 mg, Oral, Daily, 30 EA, 3 Refill(s)',
                'patientInstruction': '325 Milligrams Oral (given by mouth) every day. Refills: 3.',
                'timing': {
                  'repeat': {
                    'boundsPeriod': {
                      'start': '2020-07-01T00:00:00.000-05:00',
                      'end': '2020-07-14T08:33:00.000-05:00'
                    }
                  },
                  'code': {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4003',
                        'code': '696530',
                        'display': 'Daily'
                      },
                      {
                        'system': 'http://snomed.info/sct',
                        'code': '229797004',
                        'display': 'Once daily (qualifier value)'
                      },
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/v3-GTSAbbreviation',
                        'code': 'QD',
                        'display': 'QD'
                      }
                    ],
                    'text': 'Daily'
                  }
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
                      'value': 325,
                      'unit': 'mg',
                      'system': 'http://unitsofmeasure.org',
                      'code': 'mg'
                    }
                  }
                ]
              }
            ],
            'dispenseRequest': {
              'validityPeriod': {
                'start': '2020-07-01T08:21:26.000-05:00',
                'end': '2021-07-01T23:59:59.000-05:00'
              },
              'numberOfRepeatsAllowed': 3,
              'quantity': {
                'value': 30,
                'unit': 'EA',
                'system': 'http://unitsofmeasure.org',
                'code': '{Each}'
              },
              'expectedSupplyDuration': {
                'value': 30,
                'unit': 'day(s)',
                'system': 'http://unitsofmeasure.org',
                'code': 'd'
              }
            }
          }
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationRequest/313983017',
          'resource': {
            'resourceType': 'MedicationRequest',
            'id': '313983017',
            'meta': {
              'versionId': '3',
              'lastUpdated': '2020-07-14T13:32:26.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Medication Request</b></p>/
              <p><b>Status</b>: Completed</p><p><b>Intent</b>: Order</p>/
              <p><b>Medication</b>: cloNIDine (Catapres-TTS-3 0.3 mg/24 hr transdermal film, extended release)</p>/
              <p><b>Dosage Instructions</b>: 1 patches, Topical, every week, 12 patches, 0 Refill(s)</p>/
              <p><b>Patient</b>: SMART, WILMA</p><p><b>Authored On</b>: Jul 13, 2020  8:30 P.M. UTC</p></div>'
            },
            'status': 'completed',
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
                  'code': '998681',
                  'display': '168 HR Clonidine 0.0125 MG/HR Transdermal Patch [Catapres-TTS-3]'
                },
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/synonym',
                  'code': '2754139',
                  'display': 'Catapres-TTS-3 0.3 mg/24 hr transdermal film, extended release'
                }
              ],
              'text': 'cloNIDine (Catapres-TTS-3 0.3 mg/24 hr transdermal film, extended release)'
            },
            'subject': {
              'reference': 'Patient/12724065',
              'display': 'SMART, WILMA'
            },
            'encounter': {
              'reference': 'Encounter/97953483'
            },
            'authoredOn': '2020-07-13T15:30:11.000-05:00',
            'requester': {
              'reference': 'Practitioner/12732044',
              'display': 'PWMedActionPlan, Physician - Primary Care'
            },
            'courseOfTherapyType': {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4009',
                  'code': '2336',
                  'display': 'Hard Stop'
                },
                {
                  'system': 'http://terminology.hl7.org/CodeSystem/medicationrequest-course-of-therapy',
                  'code': 'acute',
                  'display': 'Short course (acute) therapy'
                }
              ],
              'text': 'Hard Stop'
            },
            'dosageInstruction': [
              {
                'text': '1 patches, Topical, every week, 12 patches, 0 Refill(s)',
                'patientInstruction': '1 patch(es) Topical (on the skin) every week. Refills: 0.',
                'timing': {
                  'repeat': {
                    'boundsPeriod': {
                      'start': '2020-07-13T15:30:00.000-05:00',
                      'end': '2020-07-14T08:32:26.000-05:00'
                    }
                  },
                  'code': {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4003',
                        'code': '696617',
                        'display': 'every week'
                      },
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/v3-GTSAbbreviation',
                        'code': 'WK',
                        'display': 'weekly'
                      },
                      {
                        'system': 'http://snomed.info/sct',
                        'code': '225769003',
                        'display': 'Once a week (qualifier value)'
                      }
                    ],
                    'text': 'every week'
                  }
                },
                'route': {
                  'coding': [
                    {
                      'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4001',
                      'code': '318190',
                      'display': 'Topical',
                      'userSelected': true
                    },
                    {
                      'system': 'http://snomed.info/sct',
                      'code': '6064005',
                      'display': 'Topical route (qualifier value)',
                      'userSelected': false
                    }
                  ],
                  'text': 'Topical'
                },
                'doseAndRate': [
                  {
                    'doseQuantity': {
                      'value': 1,
                      'unit': 'patches',
                      'system': 'http://unitsofmeasure.org',
                      'code': '{Patch}'
                    }
                  }
                ]
              }
            ],
            'dispenseRequest': {
              'validityPeriod': {
                'start': '2020-07-13T15:30:11.000-05:00'
              },
              'numberOfRepeatsAllowed': 0,
              'quantity': {
                'value': 12,
                'unit': 'patches',
                'system': 'http://unitsofmeasure.org',
                'code': '{Patch}'
              }
            },
            'substitution': {
              'allowedBoolean': true
            }
          }
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationRequest/311877679',
          'resource': {
            'resourceType': 'MedicationRequest',
            'id': '311877679',
            'meta': {
              'versionId': '1',
              'lastUpdated': '2020-07-14T13:30:56.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Medication Request</b></p>/
              <p><b>Status</b>: Stopped</p><p><b>Intent</b>: Order</p>/
              <p><b>Medication</b>: acetaminophen (acetaminophen 325 mg oral tablet)</p>/
              <p><b>Dosage Instructions</b>: 650 mg = 2 tab, Oral, every 4 hr,
              PRN: as needed for fever, 30 tab, 0 Refill(s)</p>/
              <p><b>Patient</b>: SMART, WILMA</p>/
              <p><b>Authored On</b>: May 11, 2020  8:10 P.M. UTC</p></div>'
            },
            'status': 'stopped',
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
                  'code': '313782',
                  'display': 'Acetaminophen 325 MG Oral Tablet'
                },
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/synonym',
                  'code': '2748055',
                  'display': 'acetaminophen 325 mg oral tablet'
                }
              ],
              'text': 'acetaminophen (acetaminophen 325 mg oral tablet)'
            },
            'subject': {
              'reference': 'Patient/12724065',
              'display': 'SMART, WILMA'
            },
            'encounter': {
              'reference': 'Encounter/97953483'
            },
            'authoredOn': '2020-05-11T15:10:42.000-05:00',
            'requester': {
              'reference': 'Practitioner/12742384',
              'display': 'PWMEDACTIONPLAN, Physician - Hospitalist'
            },
            'courseOfTherapyType': {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4009',
                  'code': '2337',
                  'display': 'Physician Stop'
                },
                {
                  'system': 'http://terminology.hl7.org/CodeSystem/medicationrequest-course-of-therapy',
                  'code': 'acute',
                  'display': 'Short course (acute) therapy'
                }
              ],
              'text': 'Acute'
            },
            'dosageInstruction': [
              {
                'text': '650 mg = 2 tab, Oral, every 4 hr, PRN: as needed for fever, 30 tab, 0 Refill(s)',
                'patientInstruction': '2 tab Oral (given by mouth) every 4 hours as needed as needed for fever.
                Refills: 0.',
                'timing': {
                  'repeat': {
                    'boundsPeriod': {
                      'start': '2020-05-11T15:10:00.000-05:00',
                      'end': '2020-07-14T08:30:00.000-05:00'
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
                  'text': 'as needed for fever'
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
                      'unit': 'tab',
                      'system': 'http://unitsofmeasure.org',
                      'code': '{tbl}'
                    }
                  }
                ]
              }
            ],
            'dispenseRequest': {
              'validityPeriod': {
                'start': '2020-05-11T15:10:42.000-05:00'
              },
              'numberOfRepeatsAllowed': 0,
              'quantity': {
                'value': 30,
                'unit': 'tab',
                'system': 'http://unitsofmeasure.org',
                'code': '{tbl}'
              }
            },
            'substitution': {
              'allowedBoolean': true
            }
          }
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
