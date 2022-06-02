# frozen_string_literal: true

module Cerner
  module Resources
    R4_MEDICATION_ADMINISTRATION_ENTRY ||= {
      'resourceType': 'MedicationAdministration',
      'id': '197287785',
      'meta': {
        'versionId': '197287788',
        'lastUpdated': '2020-05-11T21:29:30.000Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns=\'http://www.w3.org/1999/xhtml\'><p><b>Medication Administration</b></p>
        <p><b>Patient</b>: PWDOSEMERX, PWDOSEMERX ONE</p><p><b>Medication</b>
        : potassium acetate + K-Sol + Dextrose 10% with 0.2% NaCl</p>
        <p><b>Dosage</b>: 250 milliliter (iso1000)</p><p><b>Status</b>: Completed</p>
        <p><b>Effective Time</b>: May 11, 2020  9:27 P.M. UTC</p></div>'
      },
      'contained': [
        {
          'resourceType': 'Medication',
          'id': '197287785',
          'code': {
            'text': 'potassium acetate + K-Sol + Dextrose 10% with 0.2% NaCl'
          },
          'ingredient': [
            {
              'itemCodeableConcept': {
                'coding': [
                  {
                    'system': 'http://www.nlm.nih.gov/research/umls/rxnorm',
                    'code': '237381',
                    'display': 'Potassium Acetate 2 MEQ/ML Injectable Solution',
                    'userSelected': false
                  }
                ],
                'text': 'potassium acetate'
              },
              'strength': {
                'numerator': {
                  'value': 40,
                  'unit': 'milliequivalents (chemical)',
                  'system': 'http://unitsofmeasure.org',
                  'code': 'meq'
                },
                'denominator': {
                  'value': 250,
                  'unit': 'milliliter (iso1000)',
                  'system': 'http://unitsofmeasure.org',
                  'code': 'mL'
                }
              }
            },
            {
              'itemCodeableConcept': {
                'coding': [
                  {
                    'system': 'http://www.nlm.nih.gov/research/umls/rxnorm',
                    'code': '204520',
                    'display': 'Potassium Chloride 2 MEQ/ML Injectable Solution',
                    'userSelected': false
                  }
                ],
                'text': 'K-Sol'
              },
              'strength': {
                'numerator': {
                  'value': 40,
                  'unit': 'milliequivalents (chemical)',
                  'system': 'http://unitsofmeasure.org',
                  'code': 'meq'
                },
                'denominator': {
                  'value': 250,
                  'unit': 'milliliter (iso1000)',
                  'system': 'http://unitsofmeasure.org',
                  'code': 'mL'
                }
              }
            },
            {
              'itemCodeableConcept': {
                'coding': [
                  {
                    'system': 'http://www.nlm.nih.gov/research/umls/rxnorm',
                    'code': '245220',
                    'display': 'Glucose 100 MG/ML / Sodium Chloride 0.0342 MEQ/ML Injectable Solution',
                    'userSelected': false
                  }
                ],
                'text': 'Dextrose 10% with 0.2% NaCl'
              },
              'strength': {
                'numerator': {
                  'value': 250,
                  'unit': 'milliliter (iso1000)',
                  'system': 'http://unitsofmeasure.org',
                  'code': 'mL'
                },
                'denominator': {
                  'value': 250,
                  'unit': 'milliliter (iso1000)',
                  'system': 'http://unitsofmeasure.org',
                  'code': 'mL'
                }
              }
            }
          ]
        }
      ],
      'extension': [
        {
          'valueQuantity': {
            'value': 120.00,
            'unit': 'minutes',
            'system': 'http://unitsofmeasure.org',
            'code': 'min'
          },
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/infuse-over-time'
        }
      ],
      'status': 'completed',
      'medicationReference': {
        'reference': '#197287785',
        'display': 'potassium acetate + K-Sol + Dextrose 10% with 0.2% NaCl'
      },
      'subject': {
        'reference': 'Patient/12740087',
        'display': 'PWDOSEMERX, PWDOSEMERX ONE'
      },
      'context': {
        'reference': 'Encounter/97949818'
      },
      'effectiveDateTime': '2020-05-11T21:27:00.000Z',
      'performer': [
        {
          'function': {
            'coding': [
              {
                'system': 'http://terminology.hl7.org/CodeSystem/med-admin-perform-function',
                'code': 'performer',
                'display': 'Performer'
              }
            ],
            'text': 'Performer'
          },
          'actor': {
            'reference': 'Practitioner/607928',
            'display': 'Cerner Test, RN Cerner'
          }
        }
      ],
      'request': {
        'reference': 'MedicationRequest/311887733'
      },
      'dosage': {
        'site': {
          'coding': [
            {
              'system': 'http://snomed.info/sct',
              'code': '66480008',
              'display': 'Structure of left forearm (body structure)',
              'userSelected': false
            }
          ],
          'text': 'Arm, Lower, Left'
        },
        'route': {
          'coding': [
            {
              'system': 'http://snomed.info/sct',
              'code': '47625008',
              'display': 'Intravenous route (qualifier value)',
              'userSelected': false
            }
          ],
          'text': 'IV Piggyback'
        },
        'dose': {
          'value': 250,
          'unit': 'milliliter (iso1000)',
          'system': 'http://unitsofmeasure.org',
          'code': 'mL'
        },
        'rateQuantity': {
          'value': 125.00,
          'unit': 'milliliter per hour',
          'system': 'http://unitsofmeasure.org',
          'code': 'mL/h'
        }
      }
    }.freeze

    R4_MEDICATION_ADMINISTRATION_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': 'b630105a-2ec0-4877-8f8c-3b26b53cacd9',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationAdministration'\
                 '?patient=12740087'
        },
        {
          'relation': 'next',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationAdministration?patient=12740087
          &-pageContext=H4sIAAAAAAAAADWMOw7CMBAF7-IaWTEK_myHgDKpUtAhs95ACm8i49Ag7s4ixOueZjQvtcQbKVD96TyojbxCXDtK-
          5QnPqx1Hkeha2FAKkwF8pQA77FUTU9RAU1ojf7CS7wi658WH4vGOYMJbuudNVbaxOlYh_yPmp33tnGhbWTvD51Gp0KJAAAA&
          -pageDirection=NEXT'
        }
      ],
      'entry': [
        {
          "fullUrl": 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationAdministration/197287785',
          'resource': R4_MEDICATION_ADMINISTRATION_ENTRY
        },
        {
          "fullUrl": 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationAdministration/197287732',
          'resource': {
            'resourceType': 'MedicationAdministration',
            'id': '197287732',
            'meta': {
              'versionId': '197287733',
              'lastUpdated': '2020-05-04T20:40:29.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns=\'http://www.w3.org/1999/xhtml\'><p><b>Medication Administration</b></p>
              <p><b>Patient</b>: PWDOSEMERX, PWDOSEMERX ONE</p><p><b>Medication</b>: amoxicillin</p>
              <p><b>Status</b>: Not Done</p><p><b>Effective Time</b>: May  5, 2020  1:00 P.M. UTC</p></div>'
            },
            'status': 'not-done',
            'statusReason': [
              {
                'text': 'Not Done: Change in Patient Status'
              }
            ],
            'medicationCodeableConcept': {
              'coding': [
                {
                  'system': 'http://www.nlm.nih.gov/research/umls/rxnorm',
                  'code': '723',
                  'display': 'Amoxicillin',
                  'userSelected': false
                }
              ],
              'text': 'amoxicillin'
            },
            'subject': {
              'reference': 'Patient/12740087',
              'display': 'PWDOSEMERX, PWDOSEMERX ONE'
            },
            'context': {
              'reference': 'Encounter/97949818'
            },
            'effectiveDateTime': '2020-05-05T13:00:00.000Z',
            'performer': [
              {
                'function': {
                  'coding': [
                    {
                      'system': 'http://terminology.hl7.org/CodeSystem/med-admin-perform-function',
                      'code': 'performer',
                      'display': 'Performer'
                    }
                  ],
                  'text': 'Performer'
                },
                'actor': {
                  'reference': 'Practitioner/607928',
                  'display': 'Cerner Test, RN Cerner'
                }
              }
            ],
            'request': {
              'reference': 'MedicationRequest/311662377'
            },
            'note': [
              {
                'authorReference': {
                  'reference': 'Practitioner/607928'
                },
                'time': '2020-05-04T20:40:29.000Z',
                'text': 'This is a not done comment.\n'
              },
              {
                'text': 'This is an order comment'
              }
            ]
          }
        }
      ]
    }.freeze
  end
end
