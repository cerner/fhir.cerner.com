# frozen_string_literal: true

module Cerner
  module Resources
    R4_COMBINED_PERSON_ENTRY ||= {
      'resourceType': 'Person',
      'id': '12742633',
      'meta': {
        'versionId': '0'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Person</b></p><p><b>Status</b>: Inactive</p>'\
               '<p><b>Link</b>: Person/12724067</p></div>'
      },
      'active': false,
      'link': [
        {
          'target': {
            'reference': 'Person/12724067'
          }
        }
      ]
    }.freeze

    R4_PERSON_ENTRY ||= {
      'resourceType': 'Person',
      'id': '12724067',
      'meta': {
        'versionId': '10',
        'lastUpdated': '2020-07-06T21:21:22.000Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Person</b></p><p><b>Status</b>: Active</p><p><b>'\
               'Name</b>: SMART, JOE</p><p><b>DOB</b>: Apr 29, 1976</p><p><b>Administrative Gender</b>: Male</p></div>'
      },
      'identifier': [
        {
          'id': 'CI-490016886-0',
          'use': 'usual',
          'type': {
            'coding': [
              {
                'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4',
                'code': '10',
                'display': 'MRN',
                'userSelected': true
              },
              {
                'system': 'http://terminology.hl7.org/CodeSystem/v2-0203',
                'code': 'MR',
                'display': 'Medical record number',
                'userSelected': false
              }
            ],
            'text': 'MRN'
          },
          'system': 'urn:oid:2.16.840.1.113883.6.1000',
          'value': '6931',
          'period': {
            'start': '2019-12-26T15:14:12.000Z'
          }
        },
        {
          'id': 'CI-490058771-1',
          'use': 'usual',
          'type': {
            'coding': [
              {
                'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4',
                'code': '10',
                'display': 'MRN',
                'userSelected': true
              },
              {
                'system': 'http://terminology.hl7.org/CodeSystem/v2-0203',
                'code': 'MR',
                'display': 'Medical record number',
                'userSelected': false
              }
            ],
            'text': 'MRN'
          },
          'system': 'urn:oid:2.16.840.1.113883.6.1000',
          'value': '6978',
          'period': {
            'end': '2020-07-06T21:21:25.000Z'
          }
        },
        {
          'id': 'CI-490059574-3',
          'use': 'usual',
          'type': {
            'coding': [
              {
                'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4',
                'code': '670843',
                'display': 'Messaging',
                'userSelected': true
              },
              {
                'system': 'http://terminology.hl7.org/CodeSystem/v2-0203',
                'code': 'U',
                'display': 'Unspecified identifier',
                'userSelected': false
              }
            ],
            'text': 'Messaging'
          },
          'value': '3C36293A3B964994AD8E6C0305F3330A',
          'period': {
            'start': '2020-06-30T20:08:26.000Z'
          }
        },
        {
          'id': 'CI-490058805-4',
          'use': 'usual',
          'type': {
            'coding': [
              {
                'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4',
                'code': '670843',
                'display': 'Messaging',
                'userSelected': true
              },
              {
                'system': 'http://terminology.hl7.org/CodeSystem/v2-0203',
                'code': 'U',
                'display': 'Unspecified identifier',
                'userSelected': false
              }
            ],
            'text': 'Messaging'
          },
          'value': '43DA797A657B47548F258A9B50EB41F5',
          'period': {
            'start': '2020-06-12T16:03:32.000Z'
          }
        },
        {
          'id': 'CI-490059570-5',
          'use': 'usual',
          'type': {
            'coding': [
              {
                'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4',
                'code': '2553236771',
                'display': 'Federated Person Principal',
                'userSelected': true
              },
              {
                'system': 'http://terminology.hl7.org/CodeSystem/v2-0203',
                'code': 'AN',
                'display': 'Account number',
                'userSelected': false
              }
            ],
            'text': 'Federated Person Principal'
          },
          'system': 'urn:oid:2.16.840.1.113883.3.13.6',
          'value': 'URN:CERNER:IDENTITY-FEDERATION:REALM:E8A84236-C258-4952-98B7-A6FF8A9C587A-CH:PRINCIPAL:'\
                   'AN7TD9A62CV8Z53Z',
          'period': {
            'start': '2020-06-30T20:08:25.000Z'
          }
        },
        {
          'id': 'CI-490058801-6',
          'use': 'usual',
          'type': {
            'coding': [
              {
                'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4',
                'code': '2553236771',
                'display': 'Federated Person Principal',
                'userSelected': true
              },
              {
                'system': 'http://terminology.hl7.org/CodeSystem/v2-0203',
                'code': 'AN',
                'display': 'Account number',
                'userSelected': false
              }
            ],
            'text': 'Federated Person Principal'
          },
          'system': 'urn:oid:2.16.840.1.113883.3.13.6',
          'value': 'URN:CERNER:IDENTITY-FEDERATION:REALM:E8A84236-C258-4952-98B7-A6FF8A9C587A-CH:PRINCIPAL:'\
                   'KR8KC9MI9EQ8KC23',
          'period': {
            'start': '2020-06-12T16:03:29.000Z'
          }
        }
      ],
      'name': [
        {
          'id': 'CI-12724067-0',
          'use': 'official',
          'text': 'SMART, JOE',
          'family': 'SMART',
          'given': [
            'JOE'
          ],
          'period': {
            'start': '2019-12-26T15:14:12.000Z'
          }
        },
        {
          'id': 'CI-490059796-0',
          'use': 'old',
          'text': 'SMART, STEPHEN ALLEN',
          'family': 'SMART',
          'given': [
            'STEPHEN',
            'ALLEN'
          ],
          'period': {
            'end': '2020-07-06T21:21:26.000Z'
          }
        }
      ],
      'telecom': [
        {
          'id': 'CI-PH-29811920-0',
          'system': 'phone',
          'value': '8168888886',
          'use': 'home',
          'rank': '1',
          'period': {
            'start': '2019-12-26T15:14:12.000Z'
          }
        },
        {
          'id': 'CI-EM-29822662-0',
          'system': 'email',
          'value': 'joesmart@yopmail.com',
          'use': 'home',
          'rank': '1',
          'period': {
            'start': '2020-03-30T19:31:11.000Z'
          }
        }
      ],
      'gender': 'male',
      'birthDate': '1976-04-29',
      'address': [
        {
          'id': 'CI-24313553-0',
          'use': 'home',
          'text': '12345 Main St\nKansas city, MO 64116\nUS',
          'line': [
            '12345 Main St'
          ],
          'city': 'Kansas city',
          'district': 'Jackson',
          'state': 'MO',
          'postalCode': '64116',
          'country': 'US',
          'period': {
            'start': '2019-12-26T15:13:36.000Z'
          }
        }
      ],
      'active': true
    }.freeze

    R4_PERSON_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': 'f2800374-292d-4508-bd3f-b4da814d1b5f',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Person?identifier='\
                 'urn%3Aoid%3A2.16.840.1.113883.6.1000%7C6931'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Person/12724067',
          'resource': R4_PERSON_ENTRY
        }
      ]
    }.freeze

  end
end
