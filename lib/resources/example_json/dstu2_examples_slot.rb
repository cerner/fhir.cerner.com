# frozen_string_literal: true

module Cerner
  module Resources

    DSTU2_SLOT_ENTRY ||= {
      'resourceType': 'Slot',
      'id': '24477854-21304876-62852027-0',
      'meta': {
        'versionId': '0',
        'lastUpdated': '2018-12-03T08:10:42.000Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div><p><b>Slot</b></p><p><b>Type</b>: Established Patient</p><p><b>Start</b>: Jan  1, 2020  2:00 '\
               'P.M. UTC</p><p><b>End</b>: Jan  1, 2020  2:15 P.M. UTC</p><p><b>ScheduleReference</b>: '\
               '24477854-21304876-62852027-0</p><p><b>Status</b>: Free</p></div>'
      },
      'extension': [
        {
          'url': 'https://fhir-ehr.cerner.com/dstu2/StructureDefinition/scheduling-location',
          'valueReference': {
            'reference': 'Location/21304876'
          }
        }
      ],
      'type': {
        'coding': [
          {
            'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/14249',
            'code': '24477854',
            'display': 'Established Patient',
            'userSelected': true
          }
        ],
        'text': 'Established Patient'
      },
      'schedule': {
        'reference': 'Schedule/24477854-21304876-62852027-0'
      },
      'freeBusyType': 'free',
      'start': '2020-01-01T14:00:00.000Z',
      'end': '2020-01-01T14:15:00.000Z'
    }.freeze

    DSTU2_SLOT_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': 'a8e48b88-1c7f-4dc3-bb3a-fa2ebd4b5b75',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Slot'\
                 '?slot-type=https%3A%2F%2Ffhir.cerner.com%2Fec2458f2-1e24-41c8-b71b-0e701af7583d%2FcodeSet%2F14249%'\
                 '7C24477854&schedule.actor=Practitioner%2F593923&start=2020&_count=50'
        },
        {
          'relation': 'next',
          'url': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Slot?-pageContext=25cc775c-'\
                 '1268-4953-b5a5-61fb77512b39&-pageDirection=NEXT'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Slot'\
                     '/24477854-21304876-62852027-0',
          'resource': DSTU2_SLOT_ENTRY,
          'search': {
            'mode': 'match'
          }
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Slot'\
                     '/24477854-21304876-62852027-15',
          'resource': {
            'resourceType': 'Slot',
            'id': '24477854-21304876-62852027-15',
            'meta': {
              'versionId': '0',
              'lastUpdated': '2018-12-03T08:10:42.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div><p><b>Slot</b></p><p><b>Type</b>: Established Patient</p><p><b>Start</b>: Jan  1, 2020  '\
                     '2:15 P.M. UTC</p><p><b>End</b>: Jan  1, 2020  2:30 P.M. UTC</p><p><b>ScheduleReference</b>: '\
                     '24477854-21304876-62852027-15</p><p><b>Status</b>: Free</p></div>'
            },
            'extension': [
              {
                'url': 'https://fhir-ehr.cerner.com/dstu2/StructureDefinition/scheduling-location',
                'valueReference': {
                  'reference': 'Location/21304876'
                }
              }
            ],
            'type': {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/14249',
                  'code': '24477854',
                  'display': 'Established Patient',
                  'userSelected': true
                }
              ],
              'text': 'Established Patient'
            },
            'schedule': {
              'reference': 'Schedule/24477854-21304876-62852027-15'
            },
            'freeBusyType': 'free',
            'start': '2020-01-01T14:15:00.000Z',
            'end': '2020-01-01T14:30:00.000Z'
          },
          'search': {
            'mode': 'match'
          }
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Slot'\
                     '/24477854-21304876-62852027-30',
          'resource': {
            'resourceType': 'Slot',
            'id': '24477854-21304876-62852027-30',
            'meta': {
              'versionId': '0',
              'lastUpdated': '2018-12-03T08:10:42.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div><p><b>Slot</b></p><p><b>Type</b>: Established Patient</p><p><b>Start</b>: Jan  1, 2020  '\
                     '2:30 P.M. UTC</p><p><b>End</b>: Jan  1, 2020  2:45 P.M. UTC</p><p><b>ScheduleReference</b>: '\
                     '24477854-21304876-62852027-30</p><p><b>Status</b>: Free</p></div>'
            },
            'extension': [
              {
                'url': 'https://fhir-ehr.cerner.com/dstu2/StructureDefinition/scheduling-location',
                'valueReference': {
                  'reference': 'Location/21304876'
                }
              }
            ],
            'type': {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/14249',
                  'code': '24477854',
                  'display': 'Established Patient',
                  'userSelected': true
                }
              ],
              'text': 'Established Patient'
            },
            'schedule': {
              'reference': 'Schedule/24477854-21304876-62852027-30'
            },
            'freeBusyType': 'free',
            'start': '2020-01-01T14:30:00.000Z',
            'end': '2020-01-01T14:45:00.000Z'
          },
          'search': {
            'mode': 'match'
          }
        }
      ]
    }.freeze

    DSTU2_SLOT_BUNDLE_INCLUDE_SCHEDULE ||= {
      'resourceType': 'Bundle',
      'id': 'e2b19242-1e3a-40e7-9d62-0ae26f9810b3',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Slot?slot-type=https%3A%2F'\
                 '%2Ffhir.cerner.com%2Fec2458f2-1e24-41c8-b71b-0e701af7583d%2FcodeSet%2F14249%7C24477854&schedule.'\
                 'actor=Practitioner%2F593923&start=2020&_include=Slot%3Aschedule&_count=50'
        },
        {
          'relation': 'next',
          'url': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Slot?_include=Slot'\
                 '%3Aschedule&-pageContext=b82b118b-d7e3-4a41-84d5-8d0d39faa806&-pageDirection=NEXT'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Slot'\
                     '/24477854-21304876-62852027-0',
          'resource': DSTU2_SLOT_ENTRY,
          'search': {
            'mode': 'match'
          }
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Slot'\
                     '/24477854-21304876-62852027-15',
          'resource': {
            'resourceType': 'Slot',
            'id': '24477854-21304876-62852027-15',
            'meta': {
              'versionId': '0',
              'lastUpdated': '2018-12-03T08:10:42.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div><p><b>Slot</b></p><p><b>Type</b>: Established Patient</p><p><b>Start</b>: Jan  1, 2020  '\
                     '2:15 P.M. UTC</p><p><b>End</b>: Jan  1, 2020  2:30 P.M. UTC</p><p><b>ScheduleReference</b>: '\
                     '24477854-21304876-62852027-15</p><p><b>Status</b>: Free</p></div>'
            },
            'extension': [
              {
                'url': 'https://fhir-ehr.cerner.com/dstu2/StructureDefinition/scheduling-location',
                'valueReference': {
                  'reference': 'Location/21304876'
                }
              }
            ],
            'type': {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/14249',
                  'code': '24477854',
                  'display': 'Established Patient',
                  'userSelected': true
                }
              ],
              'text': 'Established Patient'
            },
            'schedule': {
              'reference': 'Schedule/24477854-21304876-62852027-15'
            },
            'freeBusyType': 'free',
            'start': '2020-01-01T14:15:00.000Z',
            'end': '2020-01-01T14:30:00.000Z'
          },
          'search': {
            'mode': 'match'
          }
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Schedule'\
                     '/24477854-21304876-62852027-0',
          'resource': {
            'resourceType': 'Schedule',
            'id': '24477854-21304876-62852027-0',
            'text': {
              'status': 'extensions',
              'div': '<div><p><b>Schedule</b></p><p><b>Type</b>: Established Patient</p><p><b>Practitioner</b>: '\
                     'Cerner Test, Physician - Primary Care Cerner</p><p><b>Location</b>: MX Clinic 1</p></div>'
            },
            'extension': [
              {
                'url': 'https://fhir-ehr.cerner.com/dstu2/StructureDefinition/scheduling-location',
                'valueReference': {
                  'reference': 'Location/21304876',
                  'display': 'MX Clinic 1'
                }
              }
            ],
            'type': [
              {
                'text': 'Established Patient'
              }
            ],
            'actor': {
              'reference': 'Practitioner/593923',
              'display': 'Cerner Test, Physician - Primary Care Cerner'
            }
          },
          'search': {
            'mode': 'include'
          }
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Schedule'\
                     '/24477854-21304876-62852027-15',
          'resource': {
            'resourceType': 'Schedule',
            'id': '24477854-21304876-62852027-15',
            'text': {
              'status': 'extensions',
              'div': '<div><p><b>Schedule</b></p><p><b>Type</b>: Established Patient</p><p><b>Practitioner</b>: '\
                     'Cerner Test, Physician - Primary Care Cerner</p><p><b>Location</b>: MX Clinic 1</p></div>'
            },
            'extension': [
              {
                'url': 'https://fhir-ehr.cerner.com/dstu2/StructureDefinition/scheduling-location',
                'valueReference': {
                  'reference': 'Location/21304876',
                  'display': 'MX Clinic 1'
                }
              }
            ],
            'type': [
              {
                'text': 'Established Patient'
              }
            ],
            'actor': {
              'reference': 'Practitioner/593923',
              'display': 'Cerner Test, Physician - Primary Care Cerner'
            }
          },
          'search': {
            'mode': 'include'
          }
        }
      ]
    }.freeze

  end
end
