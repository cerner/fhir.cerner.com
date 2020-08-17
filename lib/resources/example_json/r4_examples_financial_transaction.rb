# frozen_string_literal: true

module Cerner
  module Resources

    # TODO: ALL
    R4_FINANCIAL_TRANSACTION_ADJUSTMENT ||= {
      'resourceType': 'Basic',
      'code': {
        'coding': [
          {
            'code': 'FinancialTransaction'
          }
        ]
      },
      'identifier': [
        {
          'value': '3353423432432232',
          'use': 'usual'
        }
      ],
      'extension': [
        {
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-type',
          'valueCodeableConcept': {
            'coding': [
              {
                'code': 'adjustment',
                'system': 'http://terminology.hl7.org/CodeSystem/payment-type'
              }
            ]
          }
        },
        {
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-allocation',
          'extension': [
            {
              'url': 'target',
              'valueReference': {
                'reference': 'Encounter/31363178'
              }
            },
            {
              'url': 'amount',
              'valueMoney': {
                'value': 1.00,
                'currency': 'USD'
              }
            }
          ]
        },
        {
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-alias',
          'valueString': '3100'
        },
        {
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-amount',
          'valueMoney': {
            'value': 1.00,
            'currency': 'USD'
          }
        }
      ]
    }.freeze

    R4_FINANCIAL_TRANSACTION_CASH ||= {
      'resourceType': 'Basic',
      'code': {
        'coding': [
          {
            'code': 'FinancialTransaction'
          }
        ]
      },
      'identifier': [
        {
          'value': '14266754',
          'use': 'usual'
        }
      ],
      'extension': [
        {
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-type',
          'valueCodeableConcept': {
            'coding': [
              {
                'code': 'payment',
                'system': 'http://terminology.hl7.org/CodeSystem/payment-type'
              }
            ]
          }
        },
        {
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-method',
          'valueCodeableConcept': {
            'coding': [
              {
                'code': 'CASH',
                'display': 'Cash',
                'system': 'http://terminology.hl7.org/CodeSystem/v2-0570',
                'userSelected': true
              }
            ],
            'text': 'Cash'
          }
        },
        {
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-tendered-amount',
          'valueMoney': {
            'value': 12.00,
            'currency': 'USD'
          }
        },
        {
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-allocation',
          'extension': [
            {
              'url': 'target',
              'valueReference': {
                'reference': 'Encounter/31363178'
              }
            },
            {
              'url': 'amount',
              'valueMoney': {
                'value': 12.00,
                'currency': 'USD'
              }
            }
          ]
        },
        {
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-alias',
          'valueString': '1300'
        },
        {
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-location',
          'valueString': '201802160003'
        },
        {
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-amount',
          'valueMoney': {
            'value': 12.00,
            'currency': 'USD'
          }
        }
      ]
    }.freeze

    R4_FINANCIAL_TRANSACTION_CARD ||= {
      'resourceType': 'Basic',
      'code': {
        'coding': [
          {
            'code': 'FinancialTransaction'
          }
        ]
      },
      'identifier': [
        {
          'value': '74389581',
          'use': 'usual'
        }
      ],
      'extension': [
        {
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-type',
          'valueCodeableConcept': {
            'coding': [
              {
                'code': 'payment',
                'system': 'http://terminology.hl7.org/CodeSystem/payment-type'
              }
            ]
          }
        },
        {
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-method',
          'valueCodeableConcept': {
            'coding': [
              {
                'code': 'CCCA',
                'display': 'Credit Card',
                'system': 'http://terminology.hl7.org/CodeSystem/v2-0570',
                'isPrimary': true
              }
            ],
            'text': 'Credit Card'
          }
        },
        {
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-amount',
          'valueMoney': {
            'value': 12.00,
            'currency': 'USD'
          }
        },
        {
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-date',
          'valueDate': '2005-01'
        },
        {
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-account-number',
          'valueString': '4321'
        },
        {
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-card-brand',
          'valueString': 'visa'
        },
        {
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-allocation',
          'extension': [
            {
              'url': 'target',
              'valueReference': {
                'reference': 'Encounter/31363178'
              }
            },
            {
              'url': 'amount',
              'valueMoney': {
                'value': 12.00,
                'currency': 'USD'
              }
            }
          ]
        },
        {
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-alias',
          'valueString': '1300'
        },
        {
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-location',
          'valueString': '201802160003'
        }
      ]
    }.freeze

    R4_FINANCIAL_TRANSACTION_CHECK ||= {
      'resourceType': 'Basic',
      'code': {
        'coding': [
          {
            'code': 'FinancialTransaction'
          }
        ]
      },
      'identifier': [
        {
          'value': '3335800133',
          'use': 'usual'
        }
      ],
      'extension': [
        {
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-type',
          'valueCodeableConcept': {
            'coding': [
              {
                'code': 'payment',
                'system': 'http://terminology.hl7.org/CodeSystem/payment-type'
              }
            ]
          }
        },
        {
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-method',
          'valueCodeableConcept': {
            'coding': [
              {
                'code': 'CCHK',
                'display': 'Check',
                'system': 'http://terminology.hl7.org/CodeSystem/v2-0570',
                'userSelected': true
              }
            ],
            'text': 'Check'
          }
        },
        {
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-date',
          'valueDate': '2020-01-02'
        },
        {
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-account-number',
          'valueString': '1234'
        },
        {
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-allocation',
          'extension': [
            {
              'url': 'target',
              'valueReference': {
                'reference': 'Encounter/31363178'
              }
            },
            {
              'url': 'amount',
              'valueMoney': {
                'value': 12.12,
                'currency': 'USD'
              }
            }
          ]
        },
        {
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-alias',
          'valueString': '1300'
        },
        {
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-location',
          'valueString': '201802160003'
        },
        {
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-amount',
          'valueMoney': {
            'value': 12.12,
            'currency': 'USD'
          }
        }
      ]
    }.freeze
  end
end
