# frozen_string_literal: true

module Cerner
  module Resources
    R4_INSURANCEPLAN_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': 'e445217e-122b-4e89-9ae3-74e0ba1c24fb',
      'type': 'searchset',
      'total': 4,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/InsurancePlan?owned-by=589783'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/InsurancePlan/2798233',
          'resource': {
            'resourceType': 'InsurancePlan',
            'id': '2798233',
            'text': {
              'status': 'generated',
              'div': '<div xmlns=\'http://www.w3.org/1999/xhtml\"><p><b>Insurance Plan</b></p><p><b>Name</b>:' \
                     'Medicare Part A</p><p><b>Type</b>: Medical Service Plan</p><p><b>Owned By</b>:' \
                     'Organization/589783</p><p><b>Period Start Date</b>: Aug 14, 2015  2:32 P.M. UTC</p></div>'
            },
            'status': 'active',
            'type': [
              {
                'coding': [
                  {
                    'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/27137',
                    'code': '4372138',
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
            'name': 'Medicare Part A',
            'period': {
              'start': '2015-08-14T14:32:01.000Z'
            },
            'ownedBy': {
              'reference': 'Organization/589783'
            }
          }
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/InsurancePlan/3132244',
          'resource': {
            'resourceType': 'InsurancePlan',
            'id': '3132244',
            'text': {
              'status': 'generated',
              'div': '<div xmlns=\'http://www.w3.org/1999/xhtml\"><p><b>Insurance Plan</b></p><p><b>Name</b>:' \
                     'Medicare Part A and B</p><p><b>Type</b>: Medical Service Plan</p><p><b>Owned By</b>:' \
                     'Organization/589783</p><p><b>Period Start Date</b>: Apr  3, 2018  8:37 P.M. UTC</p></div>'
            },
            'status': 'active',
            'type': [
              {
                'coding': [
                  {
                    'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/27137',
                    'code': '4372138',
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
            'name': 'Medicare Part A and B',
            'period': {
              'start': '2018-04-03T20:37:54.000Z'
            },
            'ownedBy': {
              'reference': 'Organization/589783'
            }
          }
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/InsurancePlan/3132243',
          'resource': {
            'resourceType': 'InsurancePlan',
            'id': '3132243',
            'text': {
              'status': 'generated',
              'div': '<div xmlns=\'http://www.w3.org/1999/xhtml\"><p><b>Insurance Plan</b></p><p><b>Name</b>:' \
                     'Medicare Part B</p><p><b>Type</b>: Medical Service Plan</p><p><b>Owned By</b>:' \
                     'Organization/589783</p><p><b>Period Start Date</b>: Apr  3, 2018  8:36 P.M. UTC</p></div>'
            },
            'status': 'active',
            'type': [
              {
                'coding': [
                  {
                    'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/27137',
                    'code': '4372138',
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
            'name': 'Medicare Part B',
            'period': {
              'start': '2018-04-03T20:36:27.000Z'
            },
            'ownedBy': {
              'reference': 'Organization/589783'
            }
          }
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/InsurancePlan/3226346',
          'resource': {
            'resourceType': 'InsurancePlan',
            'id': '3226346',
            'text': {
              'status': 'generated',
              'div': '<div xmlns=\'http://www.w3.org/1999/xhtml\"><p><b>Insurance Plan</b></p><p><b>Name</b>:' \
                     'Medicare Provider Liable</p><p><b>Type</b>: Medical Service Plan</p><p><b>Owned By</b>:' \
                     'Organization/589783</p><p><b>Period Start Date</b>: Apr 16, 2019  5:42 P.M. UTC</p></div>'
            },
            'status': 'active',
            'type': [
              {
                'coding': [
                  {
                    'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/27137',
                    'code': '4372138',
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
            'name': 'Medicare Provider Liable',
            'period': {
              'start': '2019-04-16T17:42:34.000Z'
            },
            'ownedBy': {
              'reference': 'Organization/589783'
            }
          }
        }
      ]
    }.freeze
  end
end
