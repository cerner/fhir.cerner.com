# frozen_string_literal: true

module Cerner
  module Resources

    DSTU2_MEDICATION_ADMINISTRATION_ENTRY ||= {
      'resourceType': 'MedicationAdministration',
      'id': '197292849',
      'meta': {
        'versionId': '197292850',
        'lastUpdated': '2020-07-06T21:13:24.000Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div><p><b>Medication Administration</b></p><p><b>Patient Name</b>: SMART, NANCY</p>'\
               '<p><b>Medication Display</b>: acetaminophen</p><p><b>Administered</b>: Yes</p><p><b>Dosage '\
               'Quantity</b>: 650 mg</p><p><b>Medication Status</b>: Completed</p><p><b>Effective Time</b>: '\
               'Jul  6, 2020  9:11 P.M. UTC</p></div>'
      },
      'extension': [
        {
            'url': "https://fhir-ehr.cerner.com/dstu2/StructureDefinition/infuse-over-time",
            'valueQuantity': {
                "value": 6.0,
                "unit": "minutes",
                "system": "http://unitsofmeasure.org",
                "code": "min"
            }
        }
      ],
      'status': 'completed',
      'patient': {
        'reference': 'Patient/12724066',
        'display': 'SMART, NANCY'
      },
      'practitioner': {
        'reference': 'Practitioner/12724064',
        'display': 'Spence, Open Platform IA, Stephen'
      },
      'encounter': {
        'reference': 'Encounter/97953477'
      },
      'prescription': {
        'reference': 'MedicationOrder/313764715'
      },
      'wasNotGiven': false,
      'effectiveTimeDateTime': '2020-07-06T21:11:00.000Z',
      'medicationCodeableConcept': {
        'coding': [
          {
            'system': 'http://www.nlm.nih.gov/research/umls/rxnorm',
            'code': '313782',
            'display': 'Acetaminophen 325 MG Oral Tablet',
            'userSelected': false
          }
        ],
        'text': 'acetaminophen'
      },
      'dosage': {
        'route': {
          'coding': [
            {
              'system': 'http://ncimeta.nci.nih.gov',
              'code': 'C38288',
              'display': 'ORAL',
              'userSelected': false
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
        'quantity': {
          'value': 650,
          'unit': 'mg',
          'system': 'http://unitsofmeasure.org',
          'code': 'mg'
        }
      }
    }.freeze

    DSTU2_MEDICATION_ADMINISTRATION_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': 'b3e1848e-92db-482f-a7b1-62808aacd8ec',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/'\
                 'MedicationAdministration?patient=12724066'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/'\
                     'MedicationAdministration/197292849',
          'resource': DSTU2_MEDICATION_ADMINISTRATION_ENTRY
        }
      ]
    }.freeze

    DSTU2_MEDICATION_ADMINISTRATION_MULTIPLE_INGREDIENTS_ENTRY ||= {
      'resourceType': 'MedicationAdministration',
      'id': '197375293',
      'meta': {
        'versionId': '197375292',
        'lastUpdated': '2020-09-24T13:41:07.000Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div><p><b>Medication Administration</b></p><p><b>Patient Name</b>: TEST, BOB</p>'\
               '<p><b>Medication Display</b>: Dopamine Hydrochloride 80 MG/ML Injection</p>'\
               '<p><b>Administered</b>: Yes</p><p><b>Dosage Quantity</b>: 12.76 milliliter (iso1000)</p>'\
               '<p><b>Medication Status</b>: Completed</p>'\
               '<p><b>Effective Start Time</b>: Sep 24, 2020  2:00 P.M. UTC</p>'\
               '<p><b>Effective End Time</b>: Sep 24, 2020  2:59 P.M. UTC</p></div>'
      },
      'extension': [
        {
            'url': "https://fhir-ehr.cerner.com/dstu2/StructureDefinition/infuse-over-time",
            'valueQuantity': {
                "value": 6.0,
                "unit": "minutes",
                "system": "http://unitsofmeasure.org",
                "code": "min"
            }
        }
      ],
      'contained': [
        {
          'resourceType': 'Medication',
          'id': '197375293',
          'product': {
            'ingredient': [
              {
                'item': {
                  'reference': '#197375295-1',
                  'display': 'Dopamine Hydrochloride 80 MG/ML Injection'
                },
                'amount': {
                  'numerator': {
                    'value': 400,
                    'unit': 'milligram (mass)',
                    'system': 'http://unitsofmeasure.org',
                    'code': 'mg'
                  },
                  'denominator': {
                    'value': 500,
                    'unit': 'milliliter (iso1000)',
                    'system': 'http://unitsofmeasure.org',
                    'code': 'mL'
                  }
                }
              },
              {
                'item': {
                  'reference': '#197375297-2',
                  'display': '50 ML Glucose 50 MG/ML Injection'
                },
                'amount': {
                  'numerator': {
                    'value': 500,
                    'unit': 'milliliter (iso1000)',
                    'system': 'http://unitsofmeasure.org',
                    'code': 'mL'
                  },
                  'denominator': {
                    'value': 500,
                    'unit': 'milliliter (iso1000)',
                    'system': 'http://unitsofmeasure.org',
                    'code': 'mL'
                  }
                }
              }
            ]
          }
        },
        {
          'resourceType': 'Medication',
          'id': '197375295-1',
          'code': {
            'coding': [
              {
                'system': 'http://www.nlm.nih.gov/research/umls/rxnorm',
                'code': '1743951',
                'display': 'Dopamine Hydrochloride 80 MG/ML Injection',
                'userSelected': false
              }
            ],
            'text': 'DOPamine'
          }
        },
        {
          'resourceType': 'Medication',
          'id': '197375297-2',
          'code': {
            'coding': [
              {
                'system': 'http://www.nlm.nih.gov/research/umls/rxnorm',
                'code': '1795616',
                'display': '50 ML Glucose 50 MG/ML Injection',
                'userSelected': false
              }
            ],
            'text': 'Dextrose 5% in Water'
          }
        }
      ],
      'status': 'completed',
      'patient': {
        'reference': 'Patient/12545984',
        'display': 'TEST, BOB'
      },
      'practitioner': {
        'reference': 'Practitioner/1',
        'display': 'SYSTEM, SYSTEM Cerner'
      },
      'encounter': {
        'reference': 'Encounter/97887460'
      },
      'prescription': {
        'reference': 'MedicationOrder/316367035'
      },
      'wasNotGiven': false,
      'effectiveTimePeriod': {
        'start': '2020-09-24T14:00:00.000Z',
        'end': '2020-09-24T14:59:00.000Z'
      },
      'medicationReference': {
        'reference': '#197375293',
        'display': 'Dopamine Hydrochloride 80 MG/ML Injection'
      },
      'dosage': {
        'siteCodeableConcept': {
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
        'quantity': {
          'value': 12.76,
          'unit': 'milliliter (iso1000)',
          'system': 'http://unitsofmeasure.org',
          'code': 'mL'
        },
        'rateRatio': {
          'numerator': {
            'value': 12.76,
            'unit': 'milliliter (iso1000)',
            'system': 'http://unitsofmeasure.org',
            'code': 'mL'
          },
          'denominator': {
            'value': 1,
            'unit': 'hour (iso1000)',
            'system': 'http://unitsofmeasure.org',
            'code': 'h'
          }
        }
      }
    }.freeze

    DSTU2_MEDICATION_ADMINISTRATION_MULTIPLE_INGREDIENTS_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '6a897d29-daca-4f04-b6f5-7e2cdec12f09',
      'type': 'searchset',
      'total': 1,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/'\
                 'MedicationAdministration?_id=197375293'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/'\
                     'MedicationAdministration/197375293',
          'resource': DSTU2_MEDICATION_ADMINISTRATION_MULTIPLE_INGREDIENTS_ENTRY
        }
      ]
    }.freeze

  end
end
