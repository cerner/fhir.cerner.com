# frozen_string_literal: true

module Cerner
  module Resources

    R4_SLOT_ENTRY ||= {
      'resourceType': 'Slot',
      'id': '454030723-39997807-50069221-0',
      'meta': {
        'versionId': '3423957v2380283',
        'lastUpdated': '2020-05-08T18:13:55Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Slot</b></p>'\
        '<p><b>Service Type</b>: SK DOT apt 2</p><p><b>Start</b>: May  8, 2020  2:00 P.M. UTC</p>'\
        '<p><b>End</b>: May  8, 2020  3:00 P.M. UTC</p><p><b>Schedule Reference</b>'\
        ': 454030723-39997807-50069221-0</p><p><b>Status</b>: Free</p></div>'
      },
      'extension': [
        {
          'valueReference': {
            'reference': 'Location/39997807'
          },
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/scheduling-location'
        }
      ],
      'serviceType': [
        {
          'coding': [
            {
              'system': 'https://fhir.cerner.com/eb2384f8-839e-4c6e-8b29-18e71db1a0b1/codeSet/14249',
              'code': '454030723',
              'display': 'SK DOT apt 2',
              'userSelected': true
            }
          ],
          'text': 'SK DOT apt 2'
        }
      ],
      'schedule': {
        'reference': 'Schedule/454030723-39997807-50069221-0'
      },
      'status': 'free',
      'start': '2020-05-08T14:00:00Z',
      'end': '2020-05-08T15:00:00Z'
    }.freeze

    R4_SLOT_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': 'bf750997-bfdd-4ac3-bcc2-34776d05b46e',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.devcerner.com/r4/eb2384f8-839e-4c6e-8b29-18e71db1a0b1/Slot?service-type=https%3A%2F%2Ffhir.cerner.com%2Feb2384f8-839e-4c6e-8b29-18e71db1a0b1%2FcodeSet%2F14249%7C517975329&start=ge2020-07-22T20%3A04%3A19Z&start=lt2020-11-08T18%3A13%3A55Z&_count=50&schedule.actor=Practitioner%2F2911963'
        },
        {
          'relation': 'next',
          'url': 'https://fhir-open.devcerner.com/r4/eb2384f8-839e-4c6e-8b29-18e71db1a0b1/Slot?-pageContext=1d9650bb-3052-4683-9ee0-aa414960703d&-pageDirection=NEXT'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.devcerner.com/r4/eb2384f8-839e-4c6e-8b29-18e71db1a0b1/Slot/517975329-39997807-59251584-960',
          'resource': {
            'resourceType': 'Slot',
            'id': '517975329-39997807-59251584-960',
            'meta': {
              'versionId': '3423v2289979283',
              'lastUpdated': '2020-07-22T20:02:03Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Slot</b></p>'\
                      '<p><b>Service Type</b>: SK DOT apt 2</p><p><b>Start</b>: May  8, 2020  2:00 P.M. UTC</p>'\
                      '<p><b>End</b>: May  8, 2020  3:00 P.M. UTC</p><p><b>Schedule Reference</b>'\
                      ': 454030723-39997807-50069221-0</p><p><b>Status</b>: Free</p></div>'
            },
            'extension': [
              {
                'valueReference': {
                  'reference': 'Location/39997807'
                },
                'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/scheduling-location'
              }
            ],
            'serviceType': [
              {
                'coding': [
                  {
                    'system': 'https://fhir.cerner.com/eb2384f8-839e-4c6e-8b29-18e71db1a0b1/codeSet/14249',
                    'code': '517975329',
                    'display': 'RCSLOGICAPPT',
                    'userSelected': true
                  }
                ],
                'text': 'RCSLOGICAPPT'
              }
            ],
            'schedule': {
              'reference': 'Schedule/517975329-39997807-59251584-960'
            },
            'status': 'free',
            'start': '2020-07-22T21:00:00Z',
            'end': '2020-07-22T22:00:00Z'
          },
          'search': {
            'mode': 'match'
          }
        },
        {
          'fullUrl': 'https://fhir-open.devcerner.com/r4/eb2384f8-839e-4c6e-8b29-18e71db1a0b1/Slot/517975329-39997807-59251587-1020',
          'resource': {
            'resourceType': 'Slot',
            'id': '517975329-39997807-59251587-1020',
            'meta': {
              'versionId': '3423v2289979283',
              'lastUpdated': '2020-07-22T20:02:03Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Slot</b></p>'\
                     '<p><b>Service Type</b>: SK DOT apt 2</p><p><b>Start</b>: May  8, 2020  2:00 P.M. UTC</p>'\
                     '<p><b>End</b>: May  8, 2020  3:00 P.M. UTC</p><p><b>Schedule Reference</b>'\
                     ': 454030723-39997807-50069221-0</p><p><b>Status</b>: Free</p></div>'
            },
            'extension': [
              {
                'valueReference': {
                  'reference': 'Location/39997807'
                },
                'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/scheduling-location'
              }
            ],
            'serviceType': [
              {
                'coding': [
                  {
                    'system': 'https://fhir.cerner.com/eb2384f8-839e-4c6e-8b29-18e71db1a0b1/codeSet/14249',
                    'code': '517975329',
                    'display': 'RCSLOGICAPPT',
                    'userSelected': true
                  }
                ],
                'text': 'RCSLOGICAPPT'
              }
            ],
            'schedule': {
              'reference': 'Schedule/517975329-39997807-59251587-1020'
            },
            'status': 'free',
            'start': '2020-07-22T22:00:00Z',
            'end': '2020-07-22T23:00:00Z'
          },
          'search': {
            'mode': 'match'
          }
        }
      ]
    }.freeze

    R4_SLOT_BUNDLE_INCLUDE_SCHEDULE ||= {
      'resourceType': 'Bundle',
      'id': 'f8dd806e-62bb-4657-8912-9c2705864d40',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.devcerner.com/r4/2c400054-42d8-4e74-87b7-80b5bd5fde9f/Slot?_id=4062786-4062906-19875648-0&_include=Slot%3Aschedule'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.devcerner.com/r4/2c400054-42d8-4e74-87b7-80b5bd5fde9f/Slot/4062786-4062906-19875648-0',
          'resource': R4_SLOT_ENTRY
        },
        {
          'fullUrl': 'https://fhir-open.devcerner.com/r4/2c400054-42d8-4e74-87b7-80b5bd5fde9f/Schedule/4062786-4062906-19875648-0',
          'resource': {
            'resourceType': 'Schedule',
            'id': '4062786-4062906-19875648-0',
            'meta': {
              'versionId': '3423v4vv168v283',
              'lastUpdated': '2020-08-11T15:48:54Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Slot</b></p>'\
                     '<p><b>Service Type</b>: SK DOT apt 2</p><p><b>Start</b>: May  8, 2020  2:00 P.M. UTC</p>'\
                     '<p><b>End</b>: May  8, 2020  3:00 P.M. UTC</p><p><b>Schedule Reference</b>'\
                     ': 454030723-39997807-50069221-0</p><p><b>Status</b>: Free</p></div>'
            },
            'active': true,
            'serviceType': [
              {
                'coding': [
                  {
                    'system': 'https://fhir.cerner.com/2c400054-42d8-4e74-87b7-80b5bd5fde9f/codeSet/14249',
                    'code': '4062786',
                    'display': 'WH Existing Annual',
                    'userSelected': true
                  },
                  {
                    'system': 'http://snomed.info/sct',
                    'code': '394586005',
                    'display': 'Gynecology (qualifier value)'
                  }
                ],
                'text': 'WH Existing Annual'
              }
            ],
            'actor': [
              {
                'reference': 'Practitioner/709937',
                'display': 'Jones, Amy'
              },
              {
                'reference': 'Location/4062906',
                'display': "BW Women's Health"
              }
            ]
          },
          'search': {
            'mode': 'include'
          }
        }
      ]
    }.freeze

  end
end
