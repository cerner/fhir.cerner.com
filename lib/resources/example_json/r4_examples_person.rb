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
          "id": 'CI-490525912-3',
          "use": 'usual',
          "type": {
            "coding": [
              {
                "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4',
                "code": '10',
                "display": 'MRN',
                "userSelected": true
              },
              {
                "system": 'http://terminology.hl7.org/CodeSystem/v2-0203',
                "code": 'MR',
                "display": 'Medical record number',
                "userSelected": false
              }
            ],
            "text": 'MRN'
          },
          "system": 'urn:oid:2.16.840.1.113883.6.1000',
          "value": '31577'
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
        }
      ],
      'telecom': [
        {
          'id': 'CI-PH-29811920-0',
          "extension": [
            {
              "valueUrl": '(816)888-8886',
              "url": 'http://hl7.org/fhir/StructureDefinition/iso21090-TEL-address'
            }
          ],
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
          'value': 'joesmart@example.com',
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
