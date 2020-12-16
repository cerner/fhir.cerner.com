# frozen_string_literal: true

module Cerner
  module Resources
    R4_OBSERVATION_ENTRY ||= {
      'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Observation/M-197292857',
      'resource': {
        'resourceType': 'Observation',
        'id': 'M-197292857',
        'meta': {
          'versionId': '1',
          'lastUpdated': '2020-07-06T21:13:24.000Z'
        },
        'text': {
          'status': 'generated',
          'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Observation</b></p>'\
          '<p><b>Patient Id</b>: 12724066</p><p><b>Status</b>: Final</p>'\
          '<p><b>Categories</b>: Vital Signs</p><p><b>Code</b>: Temperature Axillary</p>'\
          '<p><b>Result</b>: 27 degC</p><p><b>Interpretation</b>: LOW</p>'\
          '<p><b>Effective Date</b>: Jul  6, 2020  9:11 P.M. UTC</p>'\
          '<p><b>Reference Range</b>: 35.2-36.7 degC</p></div>'
        },
        'identifier': [
          {
            'system': 'https://fhir.cerner.com/ceuuid',
            'value': 'CE87caf4b7-9397-4667-9897-702218017c9e-197292857-2020070621132500'
          }
        ],
        'basedOn': [
          {
            'reference': 'ServiceRequest/313764715'
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
              'code': '703535',
              'display': 'Temperature Axillary',
              'userSelected': true
            },
            {
              'system': 'http://loinc.org',
              'code': '8328-7'
            },
            {
              'system': 'http://loinc.org',
              'code': '8310-5'
            }
          ],
          'text': 'Temperature Axillary'
        },
        'subject': {
          'reference': 'Patient/12724066'
        },
        'encounter': {
          'reference': 'Encounter/97953477'
        },
        'effectiveDateTime': '2020-07-06T21:11:00.000Z',
        'issued': '2020-07-06T21:13:23.000Z',
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
          'value': 27,
          'unit': 'degC',
          'system': 'http://unitsofmeasure.org',
          'code': 'Cel'
        },
        'interpretation': [
          {
            'coding': [
              {
                'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/52',
                'code': '211',
                'display': 'LOW',
                'userSelected': true
              },
              {
                'system': 'http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation',
                'code': 'L',
                'display': 'Low'
              }
            ],
            'text': 'LOW'
          }
        ],
        'referenceRange': [
          {
            'low': {
              'value': 35.2,
              'unit': 'degC',
              'system': 'http://unitsofmeasure.org',
              'code': 'Cel'
            },
            'high': {
              'value': 36.7,
              'unit': 'degC',
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

    R4_OBSERVATION_PATIENT_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '4927bb8b-c8c9-43c4-8553-e21bac8ad557',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Observation?patient=12742400'
        },
        {
          'relation': 'next',
          'url': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Observation?patient=12742400&-pageContext=T3BlblBsYXRmb3JtRmhpckNvbnRleHQ9dHJ1ZSZwYWdlQ29udGV4dD05YmVjN2M5My01ZmQyLTRjM2UtYjE2OS0yMTY0OTM0ZDFmODQmY29uY2VwdD1jaGFydGVkX29ic2VydmF0aW9u&-pageDirection=NEXT'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Observation/SH-81-73121985',
          'resource': {
            'resourceType': 'Observation',
            'id': 'SH-81-73121985',
            'meta': {
              'versionId': '73121985',
              'lastUpdated': '2020-12-11T16:38:37.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Observation</b></p>'\
                     '<p><b>Patient Id</b>: 12742400</p><p><b>Status</b>: Final</p>'\
                     '<p><b>Categories</b>: Social History</p><p><b>Code</b>: Substance Abuse</p>'\
                     '<p><b>Issued Date</b>: Dec 11, 2020  4:38 P.M. UTC</p></div>'
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
                  'code': '363908000',
                  'display': 'Details of drug misuse behavior (observable entity)'
                }
              ],
              'text': 'Substance Abuse'
            },
            'subject': {
              'reference': 'Patient/12742400'
            },
            'issued': '2020-12-11T16:38:37.000Z',
            'hasMember': [
              {
                'reference': 'Observation/SH-73121985-q4625833'
              }
            ]
          }
        },
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Observation/SH-73121985-q4625833',
          'resource': {
            'resourceType': 'Observation',
            'id': 'SH-73121985-q4625833',
            'meta': {
              'versionId': '73121985',
              'lastUpdated': '2020-12-11T16:38:37.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Observation</b></p>'\
                     '<p><b>Patient Id</b>: 12742400</p><p><b>Status</b>: Final</p>'\
                     '<p><b>Categories</b>: Social History</p><p><b>Question</b>: SHX Substance abuse use</p>'\
                     '<p><b>Response</b>: Never</p><p><b>Issued Date</b>: Dec 11, 2020  4:38 P.M. UTC</p></div>'
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
                  'code': '363908000',
                  'display': 'Details of drug misuse behavior (observable entity)'
                }
              ],
              'text': 'SHX Substance abuse use'
            },
            'subject': {
              'reference': 'Patient/12742400'
            },
            'issued': '2020-12-11T16:38:37.000Z',
            'valueCodeableConcept': {
              'text': 'Never'
            }
          }
        },
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Observation/SH-93-73110763',
          'resource': {
            'resourceType': 'Observation',
            'id': 'SH-93-73110763',
            'meta': {
              'versionId': '73113863',
              'lastUpdated': '2020-11-21T20:54:41.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Observation</b></p>'\
                     '<p><b>Patient Id</b>: 12742400</p><p><b>Status</b>: Final</p>'\
                     '<p><b>Categories</b>: Social History</p><p><b>Code</b>: Tobacco</p>'\
                     '<p><b>Issued Date</b>: Nov 21, 2020  8:54 P.M. UTC</p></div>'
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
                  'system': 'http://loinc.org',
                  'code': '72166-2'
                }
              ],
              'text': 'Tobacco'
            },
            'subject': {
              'reference': 'Patient/12742400'
            },
            'issued': '2020-11-21T20:54:41.000Z',
            'hasMember': [
              {
                'reference': 'Observation/SH-73110763-q4625825'
              },
              {
                'reference': 'Observation/SH-73110763-q4625829'
              },
              {
                'reference': 'Observation/SH-73110763-q4625781'
              },
              {
                'reference': 'Observation/SH-73110763-q4625741'
              },
              {
                'reference': 'Observation/SH-73110763-q4625805'
              },
              {
                'reference': 'Observation/SH-73110763-q275217525'
              },
              {
                'reference': 'Observation/SH-73110763-q43882897'
              },
              {
                'reference': 'Observation/SH-73110763-q4625785'
              },
              {
                'reference': 'Observation/SH-73110763-q4625793'
              }
            ]
          }
        },
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Observation/SH-73110763-q4625825',
          'resource': {
            'resourceType': 'Observation',
            'id': 'SH-73110763-q4625825',
            'meta': {
              'versionId': '73113863',
              'lastUpdated': '2020-11-21T20:54:41.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Observation</b></p>'\
                     '<p><b>Patient Id</b>: 12742400</p><p><b>Status</b>: Final</p>'\
                     '<p><b>Categories</b>: Social History</p><p><b>Question</b>: SHX Tobacco use</p>'\
                     '<p><b>Response</b>: Cigars or pipes daily within last 30 days, '\
                     'Cigars or pipes but not daily within last 30 days</p>'\
                     '<p><b>Issued Date</b>: Nov 21, 2020  8:54 P.M. UTC</p></div>'
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
                  'system': 'http://loinc.org',
                  'code': '72166-2'
                }
              ],
              'text': 'SHX Tobacco use'
            },
            'subject': {
              'reference': 'Patient/12742400'
            },
            'issued': '2020-11-21T20:54:41.000Z',
            'component': [
              {
                'code': {
                  'coding': [
                    {
                      'system': 'http://loinc.org',
                      'code': '72166-2'
                    }
                  ],
                  'text': 'SHX Tobacco use'
                },
                'valueCodeableConcept': {
                  'coding': [
                    {
                      'system': 'http://snomed.info/sct',
                      'code': '449868002',
                      'display': 'Smokes tobacco daily (finding)'
                    }
                  ],
                  'text': 'Cigars or pipes daily within last 30 days'
                }
              },
              {
                'code': {
                  'coding': [
                    {
                      'system': 'http://loinc.org',
                      'code': '72166-2'
                    }
                  ],
                  'text': 'SHX Tobacco use'
                },
                'valueCodeableConcept': {
                  'coding': [
                    {
                      'system': 'http://snomed.info/sct',
                      'code': '428041000124106',
                      'display': 'Occasional tobacco smoker (finding)'
                    }
                  ],
                  'text': 'Cigars or pipes but not daily within last 30 days'
                }
              }
            ]
          }
        },
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Observation/SH-73110763-q4625829',
          'resource': {
            'resourceType': 'Observation',
            'id': 'SH-73110763-q4625829',
            'meta': {
              'versionId': '73113863',
              'lastUpdated': '2020-11-21T20:54:41.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Observation</b></p>'\
                     '<p><b>Patient Id</b>: 12742400</p><p><b>Status</b>: Final</p>'\
                     '<p><b>Categories</b>: Social History</p><p><b>Question</b>: SHX Tobacco type</p>'\
                     '<p><b>Response</b>: Cigarettes</p><p><b>Issued Date</b>: Nov 21, 2020  8:54 P.M. UTC</p></div>'
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
                  'system': 'http://loinc.org',
                  'code': '81228-9'
                }
              ],
              'text': 'SHX Tobacco type'
            },
            'subject': {
              'reference': 'Patient/12742400'
            },
            'issued': '2020-11-21T20:54:41.000Z',
            'valueCodeableConcept': {
              'coding': [
                {
                  'system': 'http://snomed.info/sct',
                  'code': '722496004',
                  'display': 'Cigarette (physical object)'
                }
              ],
              'text': 'Cigarettes'
            }
          }
        },
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Observation/SH-73110763-q4625781',
          'resource': {
            'resourceType': 'Observation',
            'id': 'SH-73110763-q4625781',
            'meta': {
              'versionId': '73113863',
              'lastUpdated': '2020-11-21T20:54:41.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Observation</b></p>'\
                     '<p><b>Patient Id</b>: 12742400</p><p><b>Status</b>: Final</p>'\
                     '<p><b>Categories</b>: Social History</p><p><b>Question</b>: SHX Tobacco amount per day</p>'\
                     '<p><b>Response</b>: 10</p><p><b>Issued Date</b>: Nov 21, 2020  8:54 P.M. UTC</p></div>'
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
                  'system': 'http://loinc.org',
                  'code': '8663-7'
                }
              ],
              'text': 'SHX Tobacco amount per day'
            },
            'subject': {
              'reference': 'Patient/12742400'
            },
            'issued': '2020-11-21T20:54:41.000Z',
            'valueString': '10'
          }
        },
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Observation/SH-73110763-q4625741',
          'resource': {
            'resourceType': 'Observation',
            'id': 'SH-73110763-q4625741',
            'meta': {
              'versionId': '73113863',
              'lastUpdated': '2020-11-21T20:54:41.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Observation</b></p>'\
                     '<p><b>Patient Id</b>: 12742400</p><p><b>Status</b>: Final</p>'\
                     '<p><b>Categories</b>: Social History</p><p><b>Question</b>: SHX Tobacco number of years</p>'\
                     '<p><b>Response</b>: 10</p><p><b>Issued Date</b>: Nov 21, 2020  8:54 P.M. UTC</p></div>'
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
                  'code': '228487000',
                  'display': 'Total time smoked (observable entity)'
                }
              ],
              'text': 'SHX Tobacco number of years'
            },
            'subject': {
              'reference': 'Patient/12742400'
            },
            'issued': '2020-11-21T20:54:41.000Z',
            'valueString': '10'
          }
        },
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Observation/SH-73110763-q4625805',
          'resource': {
            'resourceType': 'Observation',
            'id': 'SH-73110763-q4625805',
            'meta': {
              'versionId': '73113863',
              'lastUpdated': '2020-11-21T20:54:41.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Observation</b></p>'\
                     '<p><b>Patient Id</b>: 12742400</p><p><b>Status</b>: Final</p>'\
                     '<p><b>Categories</b>: Social History</p><p><b>Question</b>: SHX Tobacco total pack years</p>'\
                     '<p><b>Response</b>: 20</p><p><b>Issued Date</b>: Nov 21, 2020  8:54 P.M. UTC</p></div>'
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
                  'code': '401201003',
                  'display': 'Cigarette pack-years (observable entity)'
                }
              ],
              'text': 'SHX Tobacco total pack years'
            },
            'subject': {
              'reference': 'Patient/12742400'
            },
            'issued': '2020-11-21T20:54:41.000Z',
            'valueString': '20'
          }
        },
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Observation/SH-73110763-q275217525',
          'resource': {
            'resourceType': 'Observation',
            'id': 'SH-73110763-q275217525',
            'meta': {
              'versionId': '73113863',
              'lastUpdated': '2020-11-21T20:54:41.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Observation</b></p>'\
                     '<p><b>Patient Id</b>: 12742400</p><p><b>Status</b>: Final</p>'\
                     '<p><b>Categories</b>: Social History</p><p><b>Question</b>: SHX Smokeless Tobacco use</p>'\
                     '<p><b>Response</b>: Never</p><p><b>Issued Date</b>: Nov 21, 2020  8:54 P.M. UTC</p></div>'
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
                  'system': 'http://loinc.org',
                  'code': '88031-0'
                }
              ],
              'text': 'SHX Smokeless Tobacco use'
            },
            'subject': {
              'reference': 'Patient/12742400'
            },
            'issued': '2020-11-21T20:54:41.000Z',
            'valueCodeableConcept': {
              'text': 'Never'
            }
          }
        },
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Observation/SH-73110763-q43882897',
          'resource': {
            'resourceType': 'Observation',
            'id': 'SH-73110763-q43882897',
            'meta': {
              'versionId': '73113863',
              'lastUpdated': '2020-11-21T20:54:41.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Observation</b></p>'\
                     '<p><b>Patient Id</b>: 12742400</p><p><b>Status</b>: Final</p>'\
                     '<p><b>Categories</b>: Social History</p><p><b>Question</b>: SHX Exposure to Secondhand Smoke</p>'\
                     '<p><b>Response</b>: No</p><p><b>Issued Date</b>: Nov 21, 2020  8:54 P.M. UTC</p></div>'
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
                  'code': '714151003',
                  'display': 'Environmental tobacco smoke exposure (observable entity)'
                }
              ],
              'text': 'SHX Exposure to Secondhand Smoke'
            },
            'subject': {
              'reference': 'Patient/12742400'
            },
            'issued': '2020-11-21T20:54:41.000Z',
            'valueCodeableConcept': {
              'coding': [
                {
                  'system': 'http://snomed.info/sct',
                  'code': '373067005',
                  'display': 'No (qualifier value)'
                }
              ],
              'text': 'No'
            }
          }
        },
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Observation/SH-73110763-q4625785',
          'resource': {
            'resourceType': 'Observation',
            'id': 'SH-73110763-q4625785',
            'meta': {
              'versionId': '73113863',
              'lastUpdated': '2020-11-21T20:54:41.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Observation</b></p>'\
                     '<p><b>Patient Id</b>: 12742400</p><p><b>Status</b>: Final</p>'\
                     '<p><b>Categories</b>: Social History</p><p><b>Question</b>: SHX Tobacco started at age</p>'\
                     '<p><b>Response</b>: 20.0 Years</p><p><b>Issued Date</b>: Nov 21, 2020  8:54 P.M. UTC</p></div>'
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
                  'code': '228488005',
                  'display': 'Age at starting smoking (observable entity)'
                }
              ],
              'text': 'SHX Tobacco started at age'
            },
            'subject': {
              'reference': 'Patient/12742400'
            },
            'issued': '2020-11-21T20:54:41.000Z',
            'valueString': '20.0 Years'
          }
        },
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Observation/SH-73110763-q4625793',
          'resource': {
            'resourceType': 'Observation',
            'id': 'SH-73110763-q4625793',
            'meta': {
              'versionId': '73113863',
              'lastUpdated': '2020-11-21T20:54:41.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml\"><p><b>Observation</b></p>'\
                     '<p><b>Patient Id</b>: 12742400</p><p><b>Status</b>: Final</p>'\
                     '<p><b>Categories</b>: Social History</p><p><b>Question</b>: SHX Tobacco previous treatment</p>'\
                     '<p><b>Response</b>: None</p><p><b>Issued Date</b>: Nov 21, 2020  8:54 P.M. UTC</p></div>'
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
                  'code': '1431000175100',
                  'display': 'Tobacco cessation treatment history (observable entity)'
                }
              ],
              'text': 'SHX Tobacco previous treatment'
            },
            'subject': {
              'reference': 'Patient/12742400'
            },
            'issued': '2020-11-21T20:54:41.000Z',
            'valueCodeableConcept': {
              'coding': [
                {
                  'system': 'http://snomed.info/sct',
                  'code': '260413007',
                  'display': 'None (qualifier value)'
                }
              ],
              'text': 'None'
            }
          }
        },
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Observation/M-197412603',
          'resource': {
            'resourceType': 'Observation',
            'id': 'M-197412603',
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Observation</b></p>'\
                     '<p><b>Patient Id</b>: 12742400</p><p><b>Status</b>: Preliminary</p>'\
                     '<p><b>Code</b>: Masked</p></div>'
            },
            'status': 'preliminary',
            'category': [
              {
                'extension': [
                  {
                    'valueCode': 'unknown',
                    'url': 'http://hl7.org/fhir/StructureDefinition/data-absent-reason'
                  }
                ]
              }
            ],
            'code': {
              'coding': [
                {
                  'system': 'http://terminology.hl7.org/CodeSystem/data-absent-reason',
                  'code': 'masked',
                  'display': 'Masked'
                }
              ],
              'text': 'Masked'
            },
            'subject': {
              'reference': 'Patient/12742400'
            },
            '_effectiveDateTime': {
              'extension': [
                {
                  'valueCode': 'unknown',
                  'url': 'http://hl7.org/fhir/StructureDefinition/data-absent-reason'
                }
              ]
            },
            'dataAbsentReason': {
              'coding': [
                {
                  'system': 'http://terminology.hl7.org/CodeSystem/data-absent-reason',
                  'code': 'masked',
                  'display': 'Masked'
                }
              ],
              'text': 'Masked'
            }
          }
        },
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Observation/BP-197412586-197412588',
          'resource': {
            'resourceType': 'Observation',
            'id': 'BP-197412586-197412588',
            'meta': {
              'versionId': '2-2',
              'lastUpdated': '2020-12-11T16:41:28.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Observation</b></p>'\
                     '<p><b>Patient Id</b>: 12742400</p><p><b>Status</b>: Final</p>'\
                     '<p><b>Categories</b>: Vital Signs</p><p><b>Code</b>: Blood pressure</p>'\
                     '<p><b>Components</b>:</p><dl><dt>Systolic Blood Pressure Supine</dt><dd>'\
                     '<b>Result</b>: 135 mmHg</dd><dt>Diastolic Blood Pressure Supine</dt><dd>'\
                     '<b>Result</b>: 85 mmHg</dd></dl><p><b>Effective Date</b>: Dec 11, 2020  4:39 P.M. UTC</p></div>'
            },
            'identifier': [
              {
                'system': 'https://fhir.cerner.com/ceuuid',
                'value': 'CE87caf4b7-9397-4667-9897-702218017c9e-197412586-2020121116395600'
              },
              {
                'system': 'https://fhir.cerner.com/ceuuid',
                'value': 'CE87caf4b7-9397-4667-9897-702218017c9e-197412588-2020121116395600'
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
                  'system': 'http://snomed.info/sct',
                  'code': '75367002',
                  'display': 'Blood pressure (observable entity)'
                },
                {
                  'system': 'http://loinc.org',
                  'code': '85354-9',
                  'display': 'Blood pressure panel with all children optional'
                }
              ],
              'text': 'Blood pressure'
            },
            'subject': {
              'reference': 'Patient/12742400'
            },
            'encounter': {
              'reference': 'Encounter/97953530'
            },
            'effectiveDateTime': '2020-12-11T16:39:00.000Z',
            'issued': '2020-12-11T16:40:58.000Z',
            'component': [
              {
                'code': {
                  'coding': [
                    {
                      'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/72',
                      'code': '1164536',
                      'display': 'Systolic Blood Pressure Supine',
                      'userSelected': true
                    },
                    {
                      'system': 'http://loinc.org',
                      'code': '8461-6'
                    },
                    {
                      'system': 'http://loinc.org',
                      'code': '8480-6'
                    }
                  ],
                  'text': 'Systolic Blood Pressure Supine'
                },
                'valueQuantity': {
                  'value': 135,
                  'unit': 'mmHg',
                  'system': 'http://unitsofmeasure.org',
                  'code': 'mm[Hg]'
                }
              },
              {
                'code': {
                  'coding': [
                    {
                      'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/72',
                      'code': '1164539',
                      'display': 'Diastolic Blood Pressure Supine',
                      'userSelected': true
                    },
                    {
                      'system': 'http://loinc.org',
                      'code': '8455-8'
                    },
                    {
                      'system': 'http://loinc.org',
                      'code': '8462-4'
                    }
                  ],
                  'text': 'Diastolic Blood Pressure Supine'
                },
                'valueQuantity': {
                  'value': 85,
                  'unit': 'mmHg',
                  'system': 'http://unitsofmeasure.org',
                  'code': 'mm[Hg]'
                }
              }
            ]
          }
        }
      ]
    }.freeze

    R4_OBSERVATION_ENTERED_IN_ERROR_STATUS ||= {
      'resourceType': 'Bundle',
      'id': '4927bb8b-c8c9-43c4-8553-e21bac8ad557',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Observation?patient=12742401'
        },
        {
          'relation': 'next',
          'url': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Observation?patient=12742401&-pageContext=T3BlblBsYXRmb3JtRmhpckNvbnRleHQ9dHJ1ZSZwYWdlQ29udGV4dD05YmVjN2M5My01ZmQyLTRjM2UtYjE2OS0yMTY0OTM0ZDFmODQmY29uY2VwdD1jaGFydGVkX29ic2VydmF0aW9u&-pageDirection=NEXT'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Observation/M-197412603',
          'resource': {
            'resourceType': 'Observation',
            'id': 'M-197412603',
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Observation</b></p>'\
                     '<p><b>Patient Id</b>: 12742401</p><p><b>Status</b>: Entered in Error</p>'\
                     '<p><b>Code</b>: Error</p></div>'
            },
            'status': 'entered-in-error ',
            'category': [
              {
                'extension': [
                  {
                    'valueCode': 'error',
                    'url': 'http://hl7.org/fhir/StructureDefinition/data-absent-reason'
                  }
                ]
              }
            ],
            'code': {
              'coding': [
                {
                  'system': 'http://terminology.hl7.org/CodeSystem/data-absent-reason',
                  'code': 'error',
                  'display': 'Error'
                }
              ],
              'text': 'Error'
            },
            'subject': {
              'reference': 'Patient/12742401'
            },
            '_effectiveDateTime': {
              'extension': [
                {
                  'valueCode': 'error',
                  'url': 'http://hl7.org/fhir/StructureDefinition/data-absent-reason'
                }
              ]
            },
            'dataAbsentReason': {
              'coding': [
                {
                  'system': 'http://terminology.hl7.org/CodeSystem/data-absent-reason',
                  'code': 'error',
                  'display': 'Error'
                }
              ],
              'text': 'Error'
            }
          }
        }
      ]
    }.freeze

    R4_OBSERVATION_CREATE ||= {
      "resourceType": 'Observation',
      "status": 'final',
      "category": [
        {
          "coding": [
            {
              "system": 'http://terminology.hl7.org/CodeSystem/observation-category',
              "code": 'vital-signs',
              "display": 'Vital Signs'
            }
          ],
          "text": 'Vital Signs'
        }
      ],
      "code": {
        "coding": [
          {
            "system": 'http://loinc.org',
            "code": '8331-1'
          }
        ],
        "text": 'Temperature Oral'
      },
      "subject": {
        "reference": 'Patient/12457981'
      },
      "encounter": {
        "reference": 'Encounter/97845408'
      },
      "effectiveDateTime": '2020-04-03T19:21:00.000Z',
      "issued": '2020-04-03T19:21:40.000Z',
      "performer": [
        {
          "extension": [
            {
              "valueCodeableConcept": {
                "coding": [
                  {
                    "system": 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                    "code": 'LA',
                    "display": 'legal authenticator'
                  }
                ],
                "text": 'legal authenticator'
              },
              "url": 'http://hl7.org/fhir/StructureDefinition/event-performerFunction'
            }
          ],
          "reference": 'Practitioner/11638321'
        }
      ],
      "valueQuantity": {
        "value": 37.20,
        "unit": 'degC',
        "system": 'http://unitsofmeasure.org',
        "code": 'Cel'
      },
      "interpretation": [
        {
          "coding": [
            {
              "system": 'http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation',
              "code": 'N',
              "display": 'Normal'
            }
          ]
        }
      ],
      "note": [
        {
          "authorReference": {
            "reference": 'Practitioner/11638321'
          },
          "time": '2020-09-03T15:03:10.000Z',
          "text": 'No additional test require'
        }
      ],
      "referenceRange": [
        {
          "low": {
            "value": 35.8,
            "unit": 'degC',
            "system": 'http://unitsofmeasure.org',
            "code": 'Cel'
          },
          "high": {
            "value": 37.3,
            "unit": 'degC',
            "system": 'http://unitsofmeasure.org',
            "code": 'Cel'
          },
          "type": {
            "coding": [
              {
                "system": 'http://terminology.hl7.org/CodeSystem/referencerange-meaning',
                "code": 'normal',
                "display": 'Normal Range'
              }
            ],
            "text": 'Normal Range'
          }
        }
      ]
    }.freeze

    R4_OBSERVATION_LABS_CREATE ||= {
      "resourceType": 'Observation',
      "status": 'final',
      "category": [
        {
          "coding": [
            {
              "system": 'http://terminology.hl7.org/CodeSystem/observation-category',
              "code": 'laboratory',
              "display": 'Laboratory'
            }
          ],
          "text": 'Laboratory'
        }
      ],
      "code": {
        "coding": [
          {
            "system": 'http://loinc.org',
            "code": '718-7',
            "display": 'Hemoglobin [Mass/volume] in Blood'
          }
        ],
        "text": 'Hemoglobin'
      },
      "subject": {
        "reference": 'Patient/2798003'
      },
      "encounter": {
        "reference": 'Encounter/2673896'
      },
      "issued": '2020-07-30T20:42:00.000Z',
      "effectiveDateTime": '2020-07-30T20:42:00.000Z',
      "performer": [
        {
          "reference": 'Practitioner/1477926'
        }
      ],
      "valueQuantity": {
        "value": 13.2,
        "unit": 'mg/dL',
        "system": 'http://unitsofmeasure.org',
        "code": 'mg/dL'
      },
      "interpretation": [
        {
          "coding": [
            {
              "system": 'http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation',
              "code": 'N',
              "display": 'Normal'
            }
          ],
          "text": 'Normal'
        }
      ],
      "referenceRange": [
        {
          "low": {
            "value": 12.0,
            "unit": 'g/dL',
            "system": 'http://unitsofmeasure.org',
            "code": 'g/dL'
          },
          "high": {
            "value": 15.5,
            "unit": 'g/dL',
            "system": 'http://unitsofmeasure.org',
            "code": 'g/dL'
          }
        }
      ],
      "note": [
        {
          "authorReference": {
            "reference": 'Practitioner/1477926'
          },
          "time": '2020-07-30T20:42:15.000Z',
          "text": 'Specimen slightly hemolyzed.'
        }
      ]
    }.freeze

    R4_OBSERVATION_LABS_UPDATE ||= {
      "resourceType": 'Observation',
      "id": 'M-196186655',
      "status": 'corrected',
      "meta": {
        "source": '43ba6d6a-1006-4546-bf28-48d84a98dbb1'
      },
      "category": [
        {
          "coding": [
            {
              "system": 'http://terminology.hl7.org/CodeSystem/observation-category',
              "code": 'laboratory',
              "display": 'Laboratory'
            }
          ],
          "text": 'Laboratory'
        }
      ],
      "code": {
        "coding": [
          {
            "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/72',
            "code": '21704910',
            "display": 'Potassium Level',
            "userSelected": true
          }
        ],
        "text": 'Potassium Level'
      },
      "subject": {
        "reference": 'Patient/12457981'
      },
      "encounter": {
        "reference": 'Encounter/2673896'
      },
      "issued": '2020-07-30T20:42:00.000Z',
      "effectiveDateTime": '2020-07-30T20:42:00.000Z',
      "performer": [
        {
          "reference": 'Practitioner/1477926'
        }
      ],
      "valueQuantity": {
        "value": 13.2,
        "unit": 'mg/dL',
        "system": 'http://unitsofmeasure.org',
        "code": 'mg/dL'
      },
      "interpretation": [
        {
          "coding": [
            {
              "system": 'http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation',
              "code": 'N',
              "display": 'Normal'
            }
          ],
          "text": 'Normal'
        }
      ],
      "referenceRange": [
        {
          "low": {
            "value": 12.0,
            "unit": 'g/dL',
            "system": 'http://unitsofmeasure.org',
            "code": 'g/dL'
          },
          "high": {
            "value": 15.5,
            "unit": 'g/dL',
            "system": 'http://unitsofmeasure.org',
            "code": 'g/dL'
          }
        }
      ],
      "note": [
        {
          "authorReference": {
            "reference": 'Practitioner/1477926'
          },
          "time": '2020-07-30T20:42:15.000Z',
          "text": 'Specimen slightly hemolyzed.'
        }
      ]
    }.freeze
  end
end
