# frozen_string_literal: true

module Cerner
  module Resources

    R4_CHARGE_ITEM_READ ||= {
      'resourceType': 'ChargeItem',
      'id': '157320807',
      'meta': {
        'versionId': '3',
        'lastUpdated': '2019-08-15T14:22:31Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Charge Item</b></p><p><b>Status</b>: Billable</p>'\
               '<p><b>Patient</b>: 13393174</p><p><b>Encounter</b>: 11945114</p><p><b>Code</b>: 34523</p>' \
               '<p><b>Occurrence</b>: Aug  4, 2019  4:38 A.M. CDT</p></div>'
      },
      'extension': [
        {
          'valueMoney': {
            'value': 15,
            'currency': 'USD'
          },
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/unit-price'
        },
        {
          'valueMoney': {
            'value': 15,
            'currency': 'USD'
          },
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/net-price'
        },
        {
          'valueReference': {
            'reference': 'ChargeItem/157320880'
          },
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/offset-by'
        },
        {
          'valueString': 'CDM Description',
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/description'
        },
        {
          'extension': [
            {
              'valueCodeableConcept': {
                'coding': [
                  {
                    'system': 'https://fhir.cerner.com/eb2384f8-839e-4c6e-8b29-18e71db1a0b1/CodeSystem/BillCodes-HCPCS',
                    'code': '43'
                  }
                ]
              },
              'url': 'code'
            },
            {
              'valueUnsignedInteger': 1,
              'url': 'priority'
            }
          ],
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/procedure'
        },
        {
          'extension': [
            {
              'valueCodeableConcept': {
                'coding': [
                  {
                    'system': 'https://fhir.cerner.com/eb2384f8-839e-4c6e-8b29-18e71db1a0b1/CodeSystem/BillCodes-MODIFIER',
                    'code': '22'
                  }
                ]
              },
              'url': 'code'
            },
            {
              'valueUnsignedInteger': 1,
              'url': 'priority'
            }
          ],
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/modifier'
        },
        {
          'extension': [
            {
              'valueCodeableConcept': {
                'coding': [
                  {
                    'system': 'https://fhir.cerner.com/eb2384f8-839e-4c6e-8b29-18e71db1a0b1/CodeSystem/BillCodes-MODIFIER',
                    'code': '22'
                  }
                ]
              },
              'url': 'code'
            },
            {
              'valueUnsignedInteger': 2,
              'url': 'priority'
            }
          ],
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/modifier'
        },
        {
          'valueCodeableConcept': {
            'coding': [
              {
                'system': 'https://fhir.cerner.com/eb2384f8-839e-4c6e-8b29-18e71db1a0b1/CodeSystem/BillCodes-REVENUE',
                'code': '0127'
              }
            ]
          },
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/revenue-code'
        }
      ],
      'status': 'billable',
      'code': {
        'coding': [
          {
            'system': 'https://fhir.cerner.com/eb2384f8-839e-4c6e-8b29-18e71db1a0b1/CodeSystem/BillCodes-CDM_SCHED',
            'code': '34523'
          }
        ]
      },
      'subject': {
        'reference': 'Patient/13393174'
      },
      'context': {
        'reference': 'Encounter/11945114'
      },
      'occurrenceDateTime': '2019-08-04T09:38:00Z',
      'requestingOrganization': {
        'reference': 'Organization/10571065'
      },
      'quantity': {
        'value': 1
      },
      'enterer': {
        'reference': 'Practitioner/13237051'
      },
      'enteredDate': '2019-08-15T14:00:01Z',
      'account': [
        {
          'reference': 'Account/F9494243'
        }
      ]
    }.freeze
  end
end
