# frozen_string_literal: true

module Cerner
  module Resources

    SOARIAN_CONDITION_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': 'da932c89-1ba4-4128-a974-ecdf34d6b6ce',
      'meta': {
        'lastUpdated': '2017-02-28T11:52:03.015-05:00'
      },
      'extension': [
        {
          'url': 'http://cerner.hs.fhir.com/StructureDefinition/bundle-result-messages',
          'valueExtension': {
            'url': 'http://cerner.hs.fhir.com/StructureDefinition/bundle-result-messages',
            'extension': [
              {
                'url': 'Severity',
                'valueString': 'info'
              },
              {
                'url': 'Code',
                'valueString': 'papi005'
              },
              {
                'url': 'Message',
                'valueString': 'This is the most current, known Problem list and may not reflect the state of '\
                               'problems known at a previous date.'
              }
            ]
          }
        }
      ],
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'base-url/bf615549-44cc-4899-bfa9-2cfd86bf358c/Condition?patientId=52930295-B52D-4685-B922-'\
                 'DC5F181CF786&_format=json'
        }
      ],
      'entry': [
        {
          'resource': {
            'resourceType': 'Condition',
            'text': {
              'status': 'additional',
              'div': '&lt;li ccdRefId="ZProblems.Problems.6849581">&lt;span style="font-size:10pt;font-weight:'\
                     'regular;color:black">Acute Pain&lt;ul style="MARGIN-TOP: 0px; MARGIN-BOTTOM: 0px;">&lt;li>Body '\
                     'Location:Abdomen, Body Side:Right, Comment:This is a comment., Day Part:Daytime, '\
                     'Event:Admission, Frequency:Occasional, Location:Home, Onset:Unknown, Onset Date:2017-02-01 '\
                     '00:00:00, Perspective:Deep, Rank:2, Rank:1 - High, Severity:Moderate, Status:Active, '\
                     'Time Pattern:Continuous. &lt;/li>&lt;/ul>&lt;/span>&lt;/li>'
            },
            'identifier': [
              {
                'use': 'official',
                'value': 'ZProblems.Problems.6849581'
              }
            ],
            'patient': {
              'reference': 'Patient/52930295-B52D-4685-B922-DC5F181CF786'
            },
            'code': {
              'coding': [
                {
                  'system': 'http://snomed.info/sct',
                  'code': '274663001',
                  'display': 'Acute Pain'
                }
              ],
              'text': 'Acute Pain'
            },
            'verificationStatus': 'provisional'
          }
        },
        {
          'resource': {
            'resourceType': 'Condition',
            'text': {
              'status': 'additional',
              'div': '&lt;li ccdRefId="ZProblems.Problems.6860283">&lt;span style="font-size:10pt;font-weight:'\
                     'regular;color:black">Chronic rejection of renal translplant&lt;ul style="MARGIN-TOP: 0px; '\
                     'MARGIN-BOTTOM: 0px;">&lt;li>Status:Active. &lt;/li>&lt;/ul>&lt;/span>&lt;/li>'
            },
            'identifier': [
              {
                'use': 'official',
                'value': 'ZProblems.Problems.6860283'
              }
            ],
            'patient': {
              'reference': 'Patient/52930295-B52D-4685-B922-DC5F181CF786'
            },
            'code': {
              'coding': [
                {
                  'system': 'http://snomed.info/sct',
                  'code': '236578006',
                  'display': 'Chronic rejection of renal translplant'
                }
              ],
              'text': 'Chronic rejection of renal translplant'
            },
            'verificationStatus': 'provisional'
          }
        }
      ]
    }.freeze

  end
end
