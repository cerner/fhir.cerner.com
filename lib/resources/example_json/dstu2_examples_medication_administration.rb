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
      'id': '197374911',
      'meta': {
          'versionId': '197374914',
          'lastUpdated': '2020-09-21T16:39:45.000Z'
      },
      'text': {
          'status': 'generated',
          'div': '<div><p><b>Medication Administration</b></p><p><b>Patient Name</b>: TEST, ACCESS</p>'\
                 '<p><b>Medication Display</b>: Erythromycin 500 MG Oral Tablet</p><p><b>Administered</b>: Yes</p>'\
                 '<p><b>Dosage Quantity</b>: 30 milliliter (iso1000)</p><p><b>Medication Status</b>: Completed</p>'\
                 '<p><b>Effective Time</b>: Sep 21, 2020  4:39 P.M. UTC</p></div>'
      },
      'contained': [
          {
              'resourceType': 'Medication',
              'id': '197374911',
              'product': {
                  'ingredient': [
                      {
                          'item': {
                              'reference': '#197374913-1',
                              'display': 'Erythromycin 500 MG Oral Tablet'
                          },
                          'amount': {
                              'numerator': {
                                  'value': 500,
                                  'unit': 'milliliter per hour',
                                  'system': 'http://unitsofmeasure.org',
                                  'code': 'mL/h'
                              },
                              'denominator': {
                                  'value': 20,
                                  'unit': 'milliliter (iso1000)',
                                  'system': 'http://unitsofmeasure.org',
                                  'code': 'mL'
                              }
                          }
                      },
                      {
                          'item': {
                              'reference': '#197374915-2',
                              'display': '1000 ML Sodium Chloride 9 MG/ML Injection'
                          },
                          'amount': {
                              'numerator': {
                                  'value': 30,
                                  'unit': 'milliliter (iso1000)',
                                  'system': 'http://unitsofmeasure.org',
                                  'code': 'mL'
                              },
                              'denominator': {
                                  'value': 1,
                                  'unit': 'Each',
                                  'system': 'http://unitsofmeasure.org',
                                  'code': '{Each}'
                              }
                          }
                      }
                  ]
              }
          },
          {
              'resourceType': 'Medication',
              'id': '197374913-1',
              'code': {
                  'coding': [
                      {
                          'system': 'http://www.nlm.nih.gov/research/umls/rxnorm',
                          'code': '197650',
                          'display': 'Erythromycin 500 MG Oral Tablet',
                          'userSelected': false
                      }
                  ],
                  'text': 'erythromycin'
              }
          },
          {
              'resourceType': 'Medication',
              'id': '197374915-2',
              'code': {
                  'coding': [
                      {
                          'system': 'http://www.nlm.nih.gov/research/umls/rxnorm',
                          'code': '1807639',
                          'display': '1000 ML Sodium Chloride 9 MG/ML Injection',
                          'userSelected': false
                      }
                  ],
                  'text': 'Sodium Chloride 0.9%'
              }
          }
      ],
      'status': 'completed',
      'patient': {
          'reference': 'Patient/12550005',
          'display': 'TEST, ACCESS'
      },
      'practitioner': {
          'reference': 'Practitioner/607928',
          'display': 'Cerner Test, RN Cerner'
      },
      'encounter': {
          'reference': 'Encounter/97777411'
      },
      'prescription': {
          'reference': 'MedicationOrder/316281601'
      },
      'wasNotGiven': false,
      'effectiveTimeDateTime': '2020-09-21T16:39:00.000Z',
      'medicationReference': {
          'reference': '#197374911',
          'display': 'Erythromycin 500 MG Oral Tablet'
      },
      'dosage': {
          'siteCodeableConcept': {
              'coding': [
                  {
                      'system': 'http://snomed.info/sct',
                      'code': '123851003',
                      'display': 'Mouth region structure (body structure)',
                      'userSelected': false
                  }
              ],
              'text': 'Mouth'
          },
          'route': {
              'coding': [
                  {
                      'system': 'http://ncimeta.nci.nih.gov',
                      'code': 'C38288',
                      'display': 'Oral Route of Administration',
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
              'value': 30,
              'unit': 'milliliter (iso1000)',
              'system': 'http://unitsofmeasure.org',
              'code': 'mL'
          },
          'rateRatio': {
              'numerator': {
                  'value': 3.33,
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
                 'MedicationAdministration?_id=197374911'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/'\
                     'MedicationAdministration/197374911',
          'resource': DSTU2_MEDICATION_ADMINISTRATION_MULTIPLE_INGREDIENTS_ENTRY
        }
      ]
    }.freeze

  end
end
