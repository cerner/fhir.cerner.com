# frozen_string_literal: true

module Cerner
  module Resources
    R4_OBSERVATION_ENTRY ||= {
      'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Observation/M-7167327',
      'resource': {
        'resourceType': 'Observation',
        'id': 'M-7167327',
        'meta': {
          'versionId': '1',
          'lastUpdated': '2017-09-12T17:01:08.000Z'
        },
        'text': {
          'status': 'generated',
          'div': '&lt;div xmlns="http://www.w3.org/1999/xhtml">&lt;p>&lt;b>Observation&lt;/b>&lt;/p>&lt;p>&lt;b>'\
          'Patient Id&lt;/b>: 3998008&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Final&lt;/p>&lt;p>&lt;b>Categories&lt;'\
          '/b>: Vital Signs&lt;/p>&lt;p>&lt;b>Code&lt;/b>: Temperature Oral&lt;/p>&lt;p>&lt;b>Result&lt;/b>: '\
          '37 DegC&lt;/p>&lt;p>&lt;b>Interpretation&lt;/b>: Normal&lt;/p>&lt;p>&lt;b>Effective Date&lt;/b>: '\
          'Sep 12, 2017  5:00 P.M. UTC&lt;/p>&lt;p>&lt;b>Reference Range&lt;/b>: 34.00-37.40 DegC&lt;/p>&lt;/div>'
        },
        'identifier': [
          {
            'system': 'https://fhir.cerner.com/ceuuid',
            'value': 'CEfda49233-ccfa-4ed4-afbc-9f5082c2bf0c-17003791-2020030912450100'
          }
        ],
        'basedOn': [
          {
            'reference': 'ServiceRequest/8213648'
          }
        ],
        'status': 'final',
        'category': [
          {
            'coding': [
              {
                'system': 'http://terminology.hl7.org/CodeSystem/observation-category',
                'code': 'vital-signs',
                'display': 'Vital Signs'
              }
            ],
            'text': 'Vital Signs'
          }
        ],
        'code': {
          'coding': [
            {
              'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/72',
              'code': '703558',
              'display': 'Temperature Oral',
              'userSelected': true
            },
            {
              'system': 'http://loinc.org',
              'code': '8331-1'
            },
            {
              'system': 'http://loinc.org',
              'code': '8331-1'
            }
          ],
          'text': 'Temperature Oral'
        },
        'subject': {
          'reference': 'Patient/3998008'
        },
        'encounter': {
          'reference': 'Encounter/3651924'
        },
        'effectiveDateTime': '2017-09-12T17:00:00.000Z',
        'issued': '2017-09-12T17:00:48.000Z',
        'performer': [
          {
            'extension': [
              {
                'valueCodeableConcept': {
                  'coding': [
                    {
                      'system': 'http://terminology.hl7.org/CodeSystem/v2-0912',
                      'code': 'OP',
                      'display': 'ordering provider'
                    }
                  ],
                  'text': 'ordering provider'
                },
                'url': 'http://hl7.org/fhir/StructureDefinition/event-performerFunction'
              }
            ],
            'reference': 'Practitioner/1994008'
          },
          {
            'extension': [
              {
                'valueCodeableConcept': {
                  'coding': [
                    {
                      'system': 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                      'code': 'LA',
                      'display': 'legal authenticator'
                    }
                  ],
                  'text': 'legal authenticator'
                },
                'url': 'http://hl7.org/fhir/StructureDefinition/event-performerFunction'
              },
              {
                'valueCodeableConcept': {
                  'coding': [
                    {
                      'system': 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                      'code': 'PPRF',
                      'display': 'primary performer'
                    }
                  ],
                  'text': 'primary performer'
                },
                'url': 'http://hl7.org/fhir/StructureDefinition/event-performerFunction'
              }
            ],
            'reference': 'Practitioner/1974008'
          }
        ],
        'valueQuantity': {
          'value': 37,
          'unit': 'DegC',
          'system': 'http://unitsofmeasure.org',
          'code': 'Cel'
        },
        'interpretation': [
          {
            'coding': [
              {
                'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/52',
                'code': '214',
                'userSelected': true
              },
              {
                'system': 'http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation',
                'code': 'N',
                'display': 'Normal'
              }
            ]
          }
        ],
        'referenceRange': [
          {
            'low': {
              'value': 34.00,
              'unit': 'DegC',
              'system': 'http://unitsofmeasure.org',
              'code': 'Cel'
            },
            'high': {
              'value': 37.40,
              'unit': 'DegC',
              'system': 'http://unitsofmeasure.org',
              'code': 'Cel'
            },
            'type': {
              'coding': [
                {
                  'system': 'http://terminology.hl7.org/CodeSystem/referencerange-meaning',
                  'code': 'normal',
                  'display': 'Normal Range'
                }
              ],
              'text': 'Normal Range'
            }
          }
        ]
      }
    }.freeze

    R4_OBSERVATION_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '79c71e5b-2793-4ace-bc5e-190e38784e80',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Observation?patient=12724066'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Observation/SH-1-73080191',
          'resource': {
            'resourceType': 'Observation',
            'id': 'SH-1-73080191',
            'meta': {
              'versionId': '73080191',
              'lastUpdated': '2020-06-11T04:05:33.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns=\'http://www.w3.org/1999/xhtml\'><p><b>Observation</b></p>'\
                     '<p><b>Patient Id</b>: 12724066</p><p><b>Status</b>: Final</p>'\
                     '<p><b>Categories</b>: Social History</p><p><b>Code</b>: Alcohol</p>'\
                     '<p><b>Issued Date</b>: Jun 11, 2020  4:05 A.M. UTC</p></div>'
            },
            'status': 'final',
            'category': [
              {
                'coding': [
                  {
                    'system': 'http://terminology.hl7.org/CodeSystem/observation-category',
                    'code': 'social-history',
                    'display': 'Social History'
                  }
                ],
                'text': 'Social History'
              }
            ],
            'code': {
              'coding': [
                {
                  'system': 'http://snomed.info/sct',
                  'code': '363905002',
                  'display': 'Details of alcohol drinking behavior (observable entity)'
                }
              ],
              'text': 'Alcohol'
            },
            'subject': {
              'reference': 'Patient/12724066'
            },
            'issued': '2020-06-11T04:05:33.000Z',
            'hasMember': [
              {
                'reference': 'Observation/SH-73080191-q4625817'
              },
              {
                'reference': 'Observation/SH-73080191-q4625813'
              }
            ]
          }
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Observation/SH-73080191-q4625817',
          'resource': {
            'resourceType': 'Observation',
            'id': 'SH-73080191-q4625817',
            'meta': {
              'versionId': '73080191',
              'lastUpdated': '2020-06-11T04:05:33.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns=\'http://www.w3.org/1999/xhtml\'><p><b>Observation</b></p>'\
                     '<p><b>Patient Id</b>: 12724066</p><p><b>Status</b>: Final</p>'\
                     '<p><b>Categories</b>: Social History</p><p><b>Question</b>: SHX Alcohol use</p>'\
                     '<p><b>Response</b>: Past</p><p><b>Issued Date</b>: Jun 11, 2020  4:05 A.M. UTC</p></div>'
            },
            'status': 'final',
            'category': [
              {
                'coding': [
                  {
                    'system': 'http://terminology.hl7.org/CodeSystem/observation-category',
                    'code': 'social-history',
                    'display': 'Social History'
                  }
                ],
                'text': 'Social History'
              }
            ],
            'code': {
              'coding': [
                {
                  'system': 'http://snomed.info/sct',
                  'code': '363905002',
                  'display': 'Details of alcohol drinking behavior (observable entity)'
                }
              ],
              'text': 'SHX Alcohol use'
            },
            'subject': {
              'reference': 'Patient/12724066'
            },
            'issued': '2020-06-11T04:05:33.000Z',
            'valueCodeableConcept': {
              'coding': [
                {
                  'system': 'http://snomed.info/sct',
                  'code': '410513005',
                  'display': 'In the past (qualifier value)'
                }
              ],
              'text': 'Past'
            }
          }
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Observation/'\
                     'SH-73080191-q4625813',
          'resource': {
            'resourceType': 'Observation',
            'id': 'SH-73080191-q4625813',
            'meta': {
              'versionId': '73080191',
              'lastUpdated': '2020-06-11T04:05:33.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns=\'http://www.w3.org/1999/xhtml\'><p><b>Observation</b></p>'\
                     '<p><b>Patient Id</b>: 12724066</p><p><b>Status</b>: Final</p>'\
                     '<p><b>Categories</b>: Social History</p><p><b>Question</b>: SHX Alcohol type</p>'\
                     '<p><b>Response</b>: Liquor</p><p><b>Issued Date</b>: Jun 11, 2020  4:05 A.M. UTC</p></div>'
            },
            'status': 'final',
            'category': [
              {
                'coding': [
                  {
                    'system': 'http://terminology.hl7.org/CodeSystem/observation-category',
                    'code': 'social-history',
                    'display': 'Social History'
                  }
                ],
                'text': 'Social History'
              }
            ],
            'code': {
              'coding': [
                {
                  'system': 'http://snomed.info/sct',
                  'code': '363905002',
                  'display': 'Details of alcohol drinking behavior (observable entity)'
                }
              ],
              'text': 'SHX Alcohol type'
            },
            'subject': {
              'reference': 'Patient/12724066'
            },
            'issued': '2020-06-11T04:05:33.000Z',
            'valueCodeableConcept': {
              'coding': [
                {
                  'system': 'http://snomed.info/sct',
                  'code': '6524003',
                  'display': 'Distilled spirits (substance)'
                }
              ],
              'text': 'Liquor'
            }
          }
        },
        R4_OBSERVATION_ENTRY
      ]
    }.freeze
  end
end
