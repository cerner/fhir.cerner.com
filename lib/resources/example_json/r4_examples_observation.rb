# frozen_string_literal: true

module Cerner
  module Resources
    # TODO: All; Missing mappings
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
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Observation/M-197292892',
          'resource': {
            'resourceType': 'Observation',
            'id': 'M-197292892',
            'meta': {
              'versionId': '1',
              'lastUpdated': '2020-07-07T20:38:08.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns=\'http://www.w3.org/1999/xhtml\'><p><b>Observation</b></p>'\
                     '<p><b>Patient Id</b>: 12724066</p><p><b>Status</b>: Final</p>'\
                     '<p><b>Categories</b>: Vital Signs</p><p><b>Code</b>: Height/Length Measured</p>'\
                     '<p><b>Result</b>: 162 cm</p><p><b>Effective Date</b>: Jul  7, 2020  8:37 P.M. UTC</p></div>'
            },
            'identifier': [
              {
                'system': 'https://fhir.cerner.com/ceuuid',
                'value': 'CE87caf4b7-9397-4667-9897-702218017c9e-197292892-2020070720380800'
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
                  'code': '4154126',
                  'display': 'Height/Length Measured',
                  'userSelected': true
                },
                {
                  'system': 'http://loinc.org',
                  'code': '3137-7'
                },
                {
                  'system': 'http://loinc.org',
                  'code': '8302-2'
                }
              ],
              'text': 'Height/Length Measured'
            },
            'subject': {
              'reference': 'Patient/12724066'
            },
            'encounter': {
              'reference': 'Encounter/97954096'
            },
            'effectiveDateTime': '2020-07-07T20:37:00.000Z',
            'issued': '2020-07-07T20:37:59.000Z',
            'performer': [
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
                  }
                ],
                'reference': 'Practitioner/12724064'
              }
            ],
            'valueQuantity': {
              'value': 162,
              'unit': 'cm',
              'system': 'http://unitsofmeasure.org',
              'code': 'cm'
            }
          }
        }
      ]
    }.freeze
  end
end
