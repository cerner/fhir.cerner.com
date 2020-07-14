# frozen_string_literal: true

module Cerner
  module Resources

    DSTU2_RELATEDPERSON_ENTRY ||= {
      'resourceType': 'RelatedPerson',
      'id': '490017058',
      'meta': {
        'versionId': '6'
      },
      'text': {
        'status': 'generated',
        'div': '<div><p><b>RelatedPerson</b></p><p><b>Name</b>: SMART, HAILEY</p><p><b>DOB</b>: Dec  2, 2003</p>'\
               '<p><b>Sex</b>: Female</p></div>'
      },
      'identifier': [
        {
          'use': 'usual',
          'type': {
            'coding': [
              {
                'system': 'http://hl7.org/fhir/v2/0203',
                'code': 'AN',
                'display': 'Account number',
                'userSelected': false
              }
            ],
            'text': 'Federated Person Principal'
          },
          'system': 'urn:oid:2.16.840.1.113883.3.13.6',
          'value': 'URN:CERNER:IDENTITY-FEDERATION:REALM:E8A84236-C258-4952-98B7-A6FF8A9C587A-CH:'\
                   'PRINCIPAL:332TE8FP7VD3RT4C',
          '_value': {
            'extension': [
              {
                'url': 'http://hl7.org/fhir/StructureDefinition/rendered-value',
                'valueString': 'URN:CERNER:IDENTITY-FEDERATION:REALM:E8A84236-C258-4952-98B7-'\
                               'A6FF8A9C587A-CH:PRINCIPAL:332TE8FP7VD3RT4C'
              }
            ]
          },
          'period': {
            'start': '2020-06-30T20:26:38.000Z'
          }
        }
      ],
      'patient': {
        'reference': 'Patient/12724066',
        'display': 'SMART, NANCY'
      },
      'name': {
        'use': 'official',
        'text': 'SMART, HAILEY',
        'family': [
          'SMART'
        ],
        'given': [
          'HAILEY'
        ],
        'period': {
          'start': '2019-12-26T15:15:35.000Z'
        }
      },
      'telecom': [
        {
          'system': 'phone',
          'value': '8168888886',
          'use': 'home',
          'period': {
            'start': '2019-12-26T15:15:35.000Z'
          }
        },
        {
          'system': 'email',
          'value': 'haileysmart@yopmail.com',
          'use': 'home',
          'period': {
            'start': '2020-06-30T19:56:19.000Z'
          }
        }
      ],
      'gender': 'female',
      'birthDate': '2003-12-02',
      'address': [
        {
          'use': 'home',
          'text': '12345 Main St\nKansas City, MO 64116\nUS',
          'line': [
            '12345 Main St'
          ],
          'city': 'Kansas City',
          'district': 'Jackson',
          'state': 'MO',
          'postalCode': '64116',
          'country': 'US',
          'period': {
            'start': '2019-12-26T15:15:03.000Z'
          }
        }
      ],
      'period': {
        'start': '2019-12-26T16:06:26.000Z'
      }
    }.freeze

    DSTU2_RELATEDPERSON_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': 'c9e2d518-3ae5-44f2-a61f-ccc68e938ad0',
      'type': 'searchset',
      'total': 1,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/RelatedPerson'\
                 '?identifier=urn%3Aoid%3A2.16.840.1.113883.3.13.6%7CURN%3ACERNER%3AIDENTITY-FEDERATION%3A'\
                 'REALM%3AE8A84236-C258-4952-98B7-A6FF8A9C587A-CH%3APRINCIPAL%3A332TE8FP7VD3RT4C'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/RelatedPerson/490017058',
          'resource': DSTU2_RELATEDPERSON_ENTRY
        }
      ]
    }.freeze

  end
end
