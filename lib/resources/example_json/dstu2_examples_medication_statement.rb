# frozen_string_literal: true

module Cerner
  module Resources

    DSTU2_MEDICATION_STATEMENT_ENTRY ||= {
      'resourceType': 'MedicationStatement',
      'id': '309799821',
      'meta': {
        'versionId': '1',
        'lastUpdated': '2020-03-20T01:00:37.000Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div><p><b>Medication Statement</b></p><p><b>Patient Name</b>: SMART, JOE</p>'\
               '<p><b>Medication Name</b>: levoFLOXacin</p><p><b>Dosage Instructions</b>: 728 mg = 145.6 mL, '\
               'IV Piggyback, Daily</p><p><b>Status</b>: Active</p><p><b>Taken</b>: Yes</p></div>'
      },
      'extension': [
        {
          'url': 'https://fhir-ehr.cerner.com/dstu2/StructureDefinition/medication-statement-category',
          'valueCodeableConcept': {
            'coding': [
              {
                'system': 'http://hl7.org/fhir/medication-statement-category',
                'code': 'inpatient',
                'display': 'Inpatient'
              }
            ],
            'text': 'Inpatient'
          }
        }
      ],
      'patient': {
        'reference': 'Patient/12724067',
        'display': 'SMART, JOE'
      },
      'informationSource': {
        'reference': 'Practitioner/4122622',
        'display': 'Cerner Test, Physician - Hospitalist Cerner'
      },
      'dateAsserted': '2020-03-05T11:26:02.000-06:00',
      'status': 'active',
      'wasNotTaken': false,
      'effectivePeriod': {
        'start': '2020-03-05T11:26:00.000-06:00'
      },
      'supportingInformation': [
        {
          'reference': 'MedicationOrder/309799821'
        }
      ],
      'medicationCodeableConcept': {
        'coding': [
          {
            'system': 'http://www.nlm.nih.gov/research/umls/rxnorm',
            'code': '82122',
            'display': 'Levofloxacin',
            'userSelected': false
          }
        ],
        'text': 'levoFLOXacin'
      },
      'dosage': [
        {
          'text': '728 mg = 145.6 mL, IV Piggyback, Daily',
          '_text': {
            'extension': [
              {
                'url': 'https://fhir-ehr.cerner.com/dstu2/StructureDefinition/patient-friendly-display',
                'valueString': 'IV Piggyback every day. Refills: 0.'
              }
            ]
          },
          'timing': {
            'repeat': {
              'boundsPeriod': {
                'start': '2020-03-05T11:26:00.000-06:00'
              }
            },
            'code': {
              'coding': [
                {
                  'system': 'http://hl7.org/fhir/timing-abbreviation',
                  'code': 'QD',
                  'display': 'QD',
                  'userSelected': false
                }
              ],
              'text': 'Daily'
            }
          },
          'route': {
            'coding': [
              {
                'system': 'http://ncimeta.nci.nih.gov',
                'code': 'C38279',
                'display': 'INTRAVENOUS DRIP',
                'userSelected': false
              },
              {
                'system': 'http://snomed.info/sct',
                'code': '47625008',
                'display': 'Intravenous route (qualifier value)',
                'userSelected': false
              }
            ],
            'text': 'IV Piggyback'
          },
          'quantityQuantity': {
            'value': 728.0,
            'unit': 'mg',
            'system': 'http://unitsofmeasure.org',
            'code': 'mg'
          }
        }
      ]
    }.freeze

    DSTU2_MEDICATION_STATEMENT_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '07ff213c-cc9d-4a68-9969-737045211516',
      'type': 'searchset',
      'total': 2,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/'\
                 'MedicationStatement?patient=12724067'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/'\
                     'MedicationStatement/309799821',
          'resource': DSTU2_MEDICATION_STATEMENT_ENTRY
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/'\
                     'MedicationStatement/309799757',
          'resource': {
            'resourceType': 'MedicationStatement',
            'id': '309799757',
            'meta': {
              'versionId': '1',
              'lastUpdated': '2020-03-20T01:00:37.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div><p><b>Medication Statement</b></p><p><b>Patient Name</b>: SMART, JOE</p>'\
                     '<p><b>Medication Name</b>: vancomycin</p><p><b>Dosage Instructions</b>: 2,275 mg, '\
                     'IV Piggyback, Once</p><p><b>Status</b>: Active</p><p><b>Taken</b>: Yes</p></div>'
            },
            'extension': [
              {
                'url': 'https://fhir-ehr.cerner.com/dstu2/StructureDefinition/medication-statement-category',
                'valueCodeableConcept': {
                  'coding': [
                    {
                      'system': 'http://hl7.org/fhir/medication-statement-category',
                      'code': 'inpatient',
                      'display': 'Inpatient'
                    }
                  ],
                  'text': 'Inpatient'
                }
              }
            ],
            'patient': {
              'reference': 'Patient/12724067',
              'display': 'SMART, JOE'
            },
            'informationSource': {
              'reference': 'Practitioner/4122622',
              'display': 'Cerner Test, Physician - Hospitalist Cerner'
            },
            'dateAsserted': '2020-03-05T11:26:02.000-06:00',
            'status': 'active',
            'wasNotTaken': false,
            'effectivePeriod': {
              'start': '2020-03-05T11:26:00.000-06:00',
              'end': '2020-03-05T11:26:00.000-06:00'
            },
            'supportingInformation': [
              {
                'reference': 'MedicationOrder/309799757'
              }
            ],
            'medicationCodeableConcept': {
              'coding': [
                {
                  'system': 'http://www.nlm.nih.gov/research/umls/rxnorm',
                  'code': '11124',
                  'display': 'Vancomycin',
                  'userSelected': false
                }
              ],
              'text': 'vancomycin'
            },
            'dosage': [
              {
                'text': '2,275 mg, IV Piggyback, Once',
                '_text': {
                  'extension': [
                    {
                      'url': 'https://fhir-ehr.cerner.com/dstu2/StructureDefinition/'\
                             'patient-friendly-display',
                      'valueString': 'IV Piggyback once. Refills: 0.'
                    }
                  ]
                },
                'timing': {
                  'repeat': {
                    'boundsPeriod': {
                      'start': '2020-03-05T11:26:00.000-06:00',
                      'end': '2020-03-05T11:26:00.000-06:00'
                    }
                  },
                  'code': {
                    'text': 'Once'
                  }
                },
                'route': {
                  'coding': [
                    {
                      'system': 'http://ncimeta.nci.nih.gov',
                      'code': 'C38279',
                      'display': 'INTRAVENOUS DRIP',
                      'userSelected': false
                    },
                    {
                      'system': 'http://snomed.info/sct',
                      'code': '47625008',
                      'display': 'Intravenous route (qualifier value)',
                      'userSelected': false
                    }
                  ],
                  'text': 'IV Piggyback'
                },
                'quantityQuantity': {
                  'value': 2275.0,
                  'unit': 'mg',
                  'system': 'http://unitsofmeasure.org',
                  'code': 'mg'
                }
              }
            ]
          }
        }
      ]
    }.freeze

    DSTU2_MEDICATION_STATEMENT_CREATE ||= {
      'resourceType': 'MedicationStatement',
      'contained': [
        {
          'resourceType': 'Medication',
          'id': '123',
          'code': {
            'text': 'FHIR Test Medication'
          }
        }
      ],
      'patient': {
        'reference': 'Patient/12724067'
      },
      'status': 'active',
      'medicationReference': {
        'reference': '#123'
      },
      'dosage': [
        {
          'timing': {
            'code': {
              'coding': [
                {
                  'system': 'http://hl7.org/fhir/v3/vs/GTSAbbreviation',
                  'code': 'BID'
                }
              ],
              'text': 'BID'
            }
          },
          'quantityQuantity': {
            'value': 60.0,
            'units': 'mg',
            'system': 'http://unitsofmeasure.org',
            'code': 'mg'
          }
        }
      ]
    }.freeze

    DSTU2_MEDICATION_STATEMENT_UPDATE ||= {
      'resourceType': 'MedicationStatement',
      'id': '309799821',
      'status': 'completed',
      'patient': {
        'reference': 'Patient/12724067'
      },
      'medicationCodeableConcept': {
        'coding': [
          {
            'system': 'http://www.nlm.nih.gov/research/umls/rxnorm',
            'code': '82122',
            'display': 'Levofloxacin',
            'userSelected': false
          }
        ],
        'text': 'levoFLOXacin'
      }
    }.freeze

  end
end
