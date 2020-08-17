# frozen_string_literal: true

module Cerner
  module Resources

    SOARIAN_OBSERVATION_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '9842e38b-38f4-4fd3-81aa-075d0b9ca5f1',
      'meta': {
        'lastUpdated': '2018-04-10T09:21:56.996-04:00'
      },
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-myrecord.sandboxcerner.com/dstu2/0e885770-571b-4c0c-b30f-21df9a058d0d/Observation'\
                 '?patientId=D4292B7B-AEDF-4CEF-B783-BD3AA1B0DD27&_format=json&page=2'
        },
        {
          'relation': 'next',
          'url': 'https://fhir-myrecord.sandboxcerner.com/dstu2/0e885770-571b-4c0c-b30f-21df9a058d0d/Observation'\
                 '?patientId=D4292B7B-AEDF-4CEF-B783-BD3AA1B0DD27&_format=json&page=3'
        }
      ],
      'entry': [
        {
          'resource': {
            'resourceType': 'Observation',
            'text': {
              'status': 'additional',
              'div': '&lt;ul ccdRefId="ZVitalSigns.Vital_Signs.63413.35246">&lt;li>Weight : 88/ kg&lt;/li>&lt;/ul>'
            },
            'identifier': [
              {
                'use': 'official',
                'value': 'ZVitalSigns.Vital_Signs.63413.35246'
              }
            ],
            'status': 'final',
            'code': {
              'coding': [
                {
                  'system': 'http://loinc.org',
                  'code': '3141-9',
                  'display': 'Wt'
                }
              ],
              'text': 'Wt'
            },
            'subject': {
              'reference': 'Patient/7568F2F3-FC76-4185-A540-1DB56331A387'
            },
            'effectiveDateTime': '2015-06-22',
            'valueQuantity': {
              'value': 88,
              'unit': 'kg',
              'system': 'http://unitsofmeasure.org/'
            }
          }
        },
        {
          'resource': {
            'resourceType': 'Observation',
            'text': {
              'status': 'additional',
              'div': '&lt;ul ccdRefId="ZVitalSigns.Vital_Signs.63413.35248">&lt;li>Inhaled Oxygen Concentration : '\
                     '36&lt;/li>&lt;/ul>'
            },
            'identifier': [
              {
                'use': 'official',
                'value': 'ZVitalSigns.Vital_Signs.63413.35248'
              }
            ],
            'status': 'final',
            'code': {
              'coding': [
                {
                  'system': 'http://loinc.org',
                  'code': '3150-0',
                  'display': 'A_FIO2%Act'
                }
              ],
              'text': 'A_FIO2%Act'
            },
            'subject': {
              'reference': 'Patient/7568F2F3-FC76-4185-A540-1DB56331A387'
            },
            'effectiveDateTime': '2015-06-22',
            'valueQuantity': {
              'value': 36,
              'unit': '%',
              'system': 'http://unitsofmeasure.org/'
            }
          }
        },
        {
          'resource': {
            'resourceType': 'Observation',
            'text': {
              'status': 'additional',
              'div': '&lt;ul ccdRefId="ZVitalSigns.Vital_Signs.63413.35250">&lt;li>Body Temperature : 38 Cel&lt;/li>'\
                     '&lt;/ul>'
            },
            'identifier': [
              {
                'use': 'official',
                'value': 'ZVitalSigns.Vital_Signs.63413.35250'
              }
            ],
            'status': 'final',
            'code': {
              'coding': [
                {
                  'system': 'http://loinc.org',
                  'code': '8310-5',
                  'display': 'A_Temperature'
                }
              ],
              'text': 'A_Temperature'
            },
            'subject': {
              'reference': 'Patient/7568F2F3-FC76-4185-A540-1DB56331A387'
            },
            'effectiveDateTime': '2015-06-22',
            'valueQuantity': {
              'value': 38,
              'unit': 'Cel',
              'system': 'http://unitsofmeasure.org/'
            }
          }
        },
        {
          'resource': {
            'resourceType': 'Observation',
            'text': {
              'status': 'additional',
              'div': '&lt;ul ccdRefId="ZVitalSigns.Vital_Signs.63413.35260">&lt;li>Respirations : 18&lt;/li>&lt;/ul>'
            },
            'identifier': [
              {
                'use': 'official',
                'value': 'ZVitalSigns.Vital_Signs.63413.35260'
              }
            ],
            'status': 'final',
            'code': {
              'coding': [
                {
                  'system': 'http://loinc.org',
                  'code': '9279-1',
                  'display': 'A_Respirations'
                }
              ],
              'text': 'A_Respirations'
            },
            'subject': {
              'reference': 'Patient/7568F2F3-FC76-4185-A540-1DB56331A387'
            },
            'effectiveDateTime': '2015-06-22',
            'valueQuantity': {
              'value': 18,
              'unit': '/min',
              'system': 'http://unitsofmeasure.org/'
            }
          }
        }
      ]
    }.freeze

  end
end
