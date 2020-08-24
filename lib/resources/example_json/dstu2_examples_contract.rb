# frozen_string_literal: true

module Cerner
  module Resources

    DSTU2_CONTRACT_ENTRY ||= {
      'resourceType': 'Contract',
      'id': '490068369',
      'meta': {
        'versionId': '51'
      },
      'text': {
        'status': 'generated',
        'div': '<div><p><b>Contract</b></p><p><b>Actor Name</b>: SMART, NANCY</p>'\
               '<p><b>Subject Name</b>: SMART, TIMMY</p><p><b>Applies Begin</b>: Aug 10, 2020  4:37 P.M. UTC</p>'\
               '<p><b>Type</b>: Consent report (record artifact)</p>'\
               '<p><b>Subtype</b>: Consent status (finding)</p></div>'
      },
      'applies': {
        'start': '2020-08-10T16:37:51.000Z'
      },
      'subject': [
        {
          'reference': 'Patient/12724069',
          'display': 'SMART, TIMMY'
        }
      ],
      'type': {
        'coding': [
          {
            'system': 'https://snomed.ct/sct',
            'code': '371537001',
            'display': 'Consent report (record artifact)'
          }
        ],
        'text': 'Consent report (record artifact)'
      },
      'subtype': [
        {
          'coding': [
            {
              'system': 'https://snomed.ct/sct',
              'code': '309370004',
              'display': 'Consent status (finding)'
            }
          ],
          'text': 'Consent status (finding)'
        }
      ],
      'action': [
        {
          'coding': [
            {
              'system': 'https://snomed.ct/sct',
              'code': '441898007',
              'display': 'Consented (qualifier value)'
            }
          ],
          'text': 'Consented (qualifier value)'
        }
      ],
      'actionReason': [
        {
          'coding': [
            {
              'system': 'https://snomed.ct/sct',
              'code': '425691002',
              'display': 'Consent given for electronic record sharing (finding)'
            }
          ],
          'text': 'Consent given for electronic record sharing (finding)'
        }
      ],
      'actor': [
        {
          'entity': {
            'reference': 'RelatedPerson/490068369',
            'display': 'SMART, NANCY'
          },
          'role': [
            {
              'coding': [
                {
                  'system': 'http://snomed.info/sct',
                  'code': '442681007',
                  'display': 'Recipient consented (qualifier value)'
                }
              ],
              'text': 'Authorized Representative'
            }
          ]
        }
      ]
    }.freeze

    DSTU2_CONTRACT_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': 'fc4d9945-4b1d-40fd-ad34-47df3c5ccdc3',
      'type': 'searchset',
      'total': 1,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Contract?subject='\
                 'Patient%2F12724069'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Contract/490059635',
          'resource': DSTU2_CONTRACT_ENTRY
        }
      ]
    }.freeze

    DSTU2_CONTRACT_BUNDLE_INCLUDE_ACTOR ||= {
      'resourceType': 'Bundle',
      'id': '4b5ccc13-a96a-4037-b58a-2393d4dbefbd',
      'type': 'searchset',
      'total': 1,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Contract?subject='\
                 'Patient%2F12724069&_include=Contract%3Aactor'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Contract/490059635',
          'resource': DSTU2_CONTRACT_ENTRY
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/RelatedPerson'\
                     '/490059635',
          'resource': {
            'resourceType': 'RelatedPerson',
            'id': '490059635',
            'meta': {
              'versionId': '2'
            },
            'text': {
              'status': 'generated',
              'div': '<div><p><b>RelatedPerson</b></p><p><b>Name</b>: Smart, Nancy</p><p><b>DOB</b>: Jan  '\
                     '6, 1972</p><p><b>Sex</b>: Female</p></div>'
            },
            'patient': {
              'reference': 'Patient/12724069',
              'display': 'SMART, TIMMY'
            },
            'name': {
              'use': 'official',
              'text': 'Smart, Nancy',
              'family': [
                'Smart'
              ],
              'given': [
                'Nancy'
              ],
              'period': {
                'start': '2020-06-30T20:41:33.000Z'
              }
            },
            'telecom': [
              {
                'system': 'email',
                'value': 'timmysmart@yopmail.com',
                'use': 'home',
                'period': {
                  'start': '2020-06-30T20:41:33.000Z'
                }
              }
            ],
            'gender': 'female',
            'birthDate': '1972-01-06',
            'period': {
              'start': '2020-06-30T20:41:33.000Z'
            }
          }
        }
      ]
    }.freeze
  end
end
