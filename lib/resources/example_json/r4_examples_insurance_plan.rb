# frozen_string_literal: true

module Cerner
  module Resources
    R4_INSURANCEPLAN_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': 'e8b5a95f-c125-4509-ac99-34e6f9b6639f',
      'type': 'searchset',
      'total': 3,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir.applications.stagingcerner.com/r4/9ce2bac1-f00e-43d9-ab88-89e1d4c52e1a/InsurancePlan?owned-by=589743'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir.applications.stagingcerner.com/r4/9ce2bac1-f00e-43d9-ab88-89e1d4c52e1a/InsurancePlan/589723',
          'resource': {
            'resourceType': 'InsurancePlan',
            'id': '589723',
            'text': {
              'status': 'generated',
              'div': '<div xmlns=\'http://www.w3.org/1999/xhtml\'><p><b>Insurance Plan</b></p><p><b>Name</b>' \
                     ': Miscellaneous Commercial Health Plan</p><p><b>Type</b>: Medical Service Plan</p><p><b>Owned' \
                     'By </b>: Organization/589803</p><p><b>Period Start Date</b>: Aug 26, 2003 12:00 A.M. UTC</p>' \
                     '</div>'
            },
            'status': 'active',
            'type': [
              {
                'coding': [
                  {
                    'system': 'https://fhir.test.cerner.com/9ce2bac1-f00e-43d9-ab88-89e1d4c52e1a/codeSet/27137',
                    'code': '6681216',
                    'display': 'Medical Service Plan',
                    'userSelected': true
                  },
                  {
                    'system': 'http://terminology.hl7.org/CodeSystem/insurance-plan-type',
                    'code': 'medical',
                    'display': 'Medical',
                    'userSelected': false
                  }
                ],
                'text': 'Medical Service Plan'
              }
            ],
            'name': 'Miscellaneous Commercial Health Plan',
            'period': {
              'start': '2003-08-26T00:00:00.000Z'
            },
            'ownedBy': {
              'reference': 'Organization/589803'
            }
          }
        },
        {
          'fullUrl': 'https://fhir.applications.stagingcerner.com/r4/9ce2bac1-f00e-43d9-ab88-89e1d4c52e1a/InsurancePlan/589724',
          'resource': {
            'resourceType': 'InsurancePlan',
            'id': '589724',
            'text': {
              'status': 'generated',
              'div': '<div xmlns=\'http://www.w3.org/1999/xhtml\'><p><b>Insurance Plan</b></p><p><b>Name</b>:' \
                     'Miscellaneous Worker&#39;s Comp Plan</p><p><b>Type</b>: Medical Service Plan</p><p><b>Owned By' \
                     '</b>: Organization/589743</p><p><b>Period Start Date</b>: Aug 26, 2003 12:00 A.M. UTC</p></div>'
            },
            'status': 'active',
            'type': [
              {
                'coding': [
                  {
                    'system': 'https://fhir.test.cerner.com/9ce2bac1-f00e-43d9-ab88-89e1d4c52e1a/codeSet/27137',
                    'code': '6681216',
                    'display': 'Medical Service Plan',
                    'userSelected': true
                  },
                  {
                    'system': 'http://terminology.hl7.org/CodeSystem/insurance-plan-type',
                    'code': 'medical',
                    'display': 'Medical',
                    'userSelected': false
                  }
                ],
                'text': 'Medical Service Plan'
              }
            ],
            'name': "Miscellaneous Worker's Comp Plan",
            'period': {
              'start': '2003-08-26T00:00:00.000Z'
            },
            'ownedBy': {
              'reference': 'Organization/589743'
            }
          }
        },
        {
          'fullUrl': 'https://fhir.applications.stagingcerner.com/r4/9ce2bac1-f00e-43d9-ab88-89e1d4c52e1a/InsurancePlan/794136',
          'resource': {
            'resourceType': 'InsurancePlan',
            'id': '794136',
            'text': {
              'status': 'generated',
              'div': '<div xmlns=\'http://www.w3.org/1999/xhtml\'><p><b>Insurance Plan</b></p><p><b>Name</b>:' \
                     'RCR_HealthPlan_auto2</p><p><b>Type</b>: Medical Service Plan</p><p><b>Owned By</b>:' \
                     'Organization/1930312</p><p><b>Period Start Date</b>: Jan 17, 2017  3:18 A.M. UTC</p></div>'
            },
            'status': 'active',
            'type': [
              {
                'coding': [
                  {
                    'system': 'https://fhir.test.cerner.com/9ce2bac1-f00e-43d9-ab88-89e1d4c52e1a/codeSet/27137',
                    'code': '6681216',
                    'display': 'Medical Service Plan',
                    'userSelected': true
                  },
                  {
                    'system': 'http://terminology.hl7.org/CodeSystem/insurance-plan-type',
                    'code': 'medical',
                    'display': 'Medical',
                    'userSelected': false
                  }
                ],
                'text': 'Medical Service Plan'
              }
            ],
            'name': 'RCR_HealthPlan_auto2',
            'period': {
              'start': '2017-01-17T03:18:55.000Z'
            },
            'ownedBy': {
              'reference': 'Organization/1930312'
            }
          }
        }
      ]
    }.freeze
  end
end
