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

  end
end
