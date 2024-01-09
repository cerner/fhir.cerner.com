# frozen_string_literal: true

module Cerner
  module Resources
    R4_OBSERVATION_ENTRY ||= {
      'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Observation/VS-197292857',
      'resource': {
        'resourceType': 'Observation',
        'id': 'VS-197292857',
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
              'code': '8328-7',
              'display': 'Axillary temperature'
            },
            {
              'system': 'http://loinc.org',
              'code': '8310-5',
              'display': 'Body temperature'
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
            'encounter': {
              'reference': 'Encounter/18565902'
            },
            'effectiveDateTime': '2022-06-01T10:39:02Z',
            'issued': '2020-06-11T04:05:33.000Z',
            'performer': [
              {
                'reference': 'Practitioner/15441459'
              }
            ],
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
            'encounter': {
              'reference': 'Encounter/18565902'
            },
            'effectiveDateTime': '2022-06-01T10:39:02Z',
            'issued': '2020-06-11T04:05:33.000Z',
            'performer': [
              {
                'reference': 'Practitioner/15441459'
              }
            ],
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
            'encounter': {
              'reference': 'Encounter/18565902'
            },
            'effectiveDateTime': '2022-06-01T10:39:02Z',
            'issued': '2020-06-11T04:05:33.000Z',
            'performer': [
              {
                'reference': 'Practitioner/15441459'
              }
            ],
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
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Observation/VS-CV-55046871-SECT-8098',
          'resource': {
            'resourceType': 'Observation',
            'id': 'VS-CV-55046871-SECT-8098',
            'meta': {
              'versionId': '0',
              'lastUpdated': '2022-06-17T10:41:35Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Observation</b></p>'\
                     '<p><b>Patient Id</b>: 15116458</p><p><b>Status</b>: Final</p><p><b>Categories'\
                     '</b>: Vital Signs</p><p><b>Code</b>: SpO2</p><p><b>Result</b>: 95 %</p><p><b>Effective Date</b>'\
                     ': Jun  5, 2022  3:00 A.M. CDT</p></div>'
            },
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
                  'system': 'https://fhir.cerner.com/eb2384f8-839e-4c6e-8b29-18e71db1a0b1/codeSet/72',
                  'code': '3623994',
                  'display': 'SpO2',
                  'userSelected': true
                },
                {
                  'system': 'http://loinc.org',
                  'code': '2708-6',
                  'display': 'Oxygen saturation in Arterial blood'
                },
                {
                  'system': 'http://loinc.org',
                  'code': '59408-5',
                  'display': 'Oxygen saturation in Arterial blood by Pulse oximetry'
                }
              ],
              'text': 'SpO2'
            },
            'subject': {
              'reference': 'Patient/12724066'
            },
            'encounter': {
              'reference': 'Encounter/18565902'
            },
            'effectiveDateTime': '2022-06-05T08:00:38.000Z',
            'issued': '2022-06-05T08:00:38Z',
            'performer': [
              {
                'reference': 'Practitioner/15441459'
              }
            ],
            'valueQuantity': {
              'value': 95,
              'unit': '%',
              'system': 'http://unitsofmeasure.org',
              'code': '%'
            },
            'component': [
              {
                'code': {
                  'coding': [
                    {
                      'system': 'https://fhir.cerner.com/eb2384f8-839e-4c6e-8b29-18e71db1a0b1/codeSet/72',
                      'code': '703569',
                      'display': 'Oxygen Flow Rate',
                      'userSelected': true
                    },
                    {
                      'system': 'http://loinc.org',
                      'code': '3151-8'
                    }
                  ],
                  'text': 'Oxygen Flow Rate'
                },
                'valueQuantity': {
                  'value': 7,
                  'unit': 'L/min',
                  'system': 'http://unitsofmeasure.org',
                  'code': 'L/min'
                }
              },
              {
                'code': {
                  'coding': [
                    {
                      'system': 'https://fhir.cerner.com/eb2384f8-839e-4c6e-8b29-18e71db1a0b1/codeSet/72',
                      'code': '2700657',
                      'display': 'FIO2',
                      'userSelected': true
                    },
                    {
                      'system': 'http://loinc.org',
                      'code': '3150-0',
                      'display': 'Inhaled Oxygen concentration'
                    }
                  ],
                  'text': 'Inhaled Oxygen concentration'
                },
                'valueQuantity': {
                  'value': 21,
                  'unit': '%',
                  'system': 'http://unitsofmeasure.org',
                  'code': '%'
                }
              }
            ]
          }
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Observation/L-206310347',
          'resource': {
            'resourceType': 'Observation',
            'id': 'L-206310347',
            'meta': {
              'versionId': '1',
              'lastUpdated': '2023-10-30T17:04:50.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns=\'http://www.w3.org/1999/xhtml\'><p><b>Observation</b></p>'\
              '<p><b>Patient Id</b>: 12724066</p><p><b>Status</b>: Final</p>'\
              '<p><b>Code</b>: Glucose Level POC</p><p><b>Result</b>: 181 mg/dL</p>'\
              '<p><b>Effective Date</b>: Oct 30, 2023  5:04 P.M. UTC</p></div>'
            },
            'identifier': [
              {
                'system': 'https://fhir.cerner.com/ceuuid',
                'value': 'CE87caf4b7-9397-4667-9897-702218017c9e-206310347-2023103017044900'
              }
            ],
            'status': 'final',
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
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/72',
                  'code': '2552299163',
                  'display': 'Glucose Level POC',
                  'userSelected': true
                },
                {
                  'system': 'http://loinc.org',
                  'code': '2339-0',
                  'display': 'Glucose [Mass/volume] in Blood',
                  'userSelected': false
                }
              ],
              'text': 'Glucose Level POC'
            },
            'subject': {
              'reference': 'Patient/12724066'
            },
            'effectiveDateTime': '2023-10-30T17:04:46.000Z',
            'valueQuantity': {
              'value': 181,
              'unit': 'mg/dL'
            },
            'note': [
              {
                'authorReference': {
                  'reference': 'Practitioner/1'
                },
                'time': '2023-10-30T17:04:49Z',
                'text': 'Time : 2023-10-30T17:04:49.464400Z\n'\
                'Author : SYSTEM, SYSTEM Cerner\nComment : Filed via Accuhealth'
              }
            ]
          },
          'search': {
            'mode': 'match'
          }
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Observation/L-206310341',
          'resource': {
            'resourceType': 'Observation',
            'id': 'L-206310341',
            'meta': {
              'versionId': '1',
              'lastUpdated': '2023-10-30T17:04:45.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns=\'http://www.w3.org/1999/xhtml\'><p><b>Observation</b></p>'\
              '<p><b>Patient Id</b>: 12724066</p><p><b>Status</b>: Final</p>'\
              '<p><b>Code</b>: Glucose Level POC</p><p><b>Result</b>: 189 mg/dL</p>'\
              '<p><b>Effective Date</b>: Oct 30, 2023  5:04 P.M. UTC</p></div>'
            },
            'identifier': [
              {
                'system': 'https://fhir.cerner.com/ceuuid',
                'value': 'CE87caf4b7-9397-4667-9897-702218017c9e-206310341-2023103017044500'
              }
            ],
            'status': 'final',
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
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/72',
                  'code': '2552299163',
                  'display': 'Glucose Level POC',
                  'userSelected': true
                },
                {
                  'system': 'http://loinc.org',
                  'code': '2339-0',
                  'display': 'Glucose [Mass/volume] in Blood',
                  'userSelected': false
                }
              ],
              'text': 'Glucose Level POC'
            },
            'subject': {
              'reference': 'Patient/12724066'
            },
            'effectiveDateTime': '2023-10-30T17:04:42.000Z',
            'valueQuantity': {
              'value': 189
            },
            'note': [
              {
                'authorReference': {
                  'reference': 'Practitioner/1'
                },
                'time': '2023-10-30T17:04:45Z',
                'text': 'Time : 2023-10-30T17:04:45.459189Z\n'\
                'Author : SYSTEM, SYSTEM Cerner\nComment : Filed via Accuhealth'
              }
            ]
          },
          'search': {
            'mode': 'match'
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
            'encounter': {
              'reference': 'Encounter/18565902'
            },
            'effectiveDateTime': '2022-06-01T10:39:02Z',
            'issued': '2020-12-11T16:38:37.000Z',
            'hasMember': [
              {
                'reference': 'Observation/SH-73121985-q4625833'
              }
            ]
          }
        },
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Observation/L-197412603',
          'resource': {
            'resourceType': 'Observation',
            'id': 'L-197412603',
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Observation</b></p>'\
                     '<p><b>Patient Id</b>: 12742400</p><p><b>Status</b>: Preliminary</p>'\
                     '<p><b>Code</b>: Hgb Bld-mCnc</p></div>'
            },
            'status': 'preliminary',
            'category': [
              {
                'coding': [
                  {
                    'system': 'http://terminology.hl7.org/CodeSystem/observation-category',
                    'code': 'laboratory',
                    'display': 'Laboratory'
                  }
                ],
                'text': 'Laboratory'
              }
            ],
            'code': {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/72',
                  'code': '703535',
                  'display': 'Hgb Bld-mCnc',
                  'userSelected': true
                },
                {
                  'system': 'http://loinc.org',
                  'code': '718-7',
                  'display': 'Hgb Bld-mCnc'
                }
              ],
              'text': 'Hgb Bld-mCnc'
            },
            'subject': {
              'reference': 'Patient/12742400'
            },
            'effectiveDateTime': '2022-06-01T10:39:02Z',
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
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Observation/L-197412603',
          'resource': {
            'resourceType': 'Observation',
            'id': 'L-197412603',
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Observation</b></p>'\
                     '<p><b>Patient Id</b>: 12742401</p><p><b>Status</b>: Entered in Error</p>'\
                     '<p><b>Code</b>: Error</p></div>'
            },
            'status': 'entered-in-error ',
            'category': [
              {
                'coding': [
                  {
                    'system': 'http://terminology.hl7.org/CodeSystem/observation-category',
                    'code': 'laboratory',
                    'display': 'Laboratory'
                  }
                ],
                'text': 'Laboratory'
              }
            ],
            'code': {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/72',
                  'code': '703535',
                  'display': 'Hgb Bld-mCnc',
                  'userSelected': true
                },
                {
                  'system': 'http://loinc.org',
                  'code': '718-7',
                  'display': 'Hgb Bld-mCnc'
                }
              ],
              'text': 'Hgb Bld-mCnc'
            },
            'subject': {
              'reference': 'Patient/12742401'
            },
            'effectiveDateTime': '2022-06-01T10:38:02Z',
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

    R4_OBSERVATION_BP_CREATE ||= {
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
            "code": '85354-9'
          }
        ],
        "text": 'Blood pressure'
      },
      "subject": {
        "reference": 'Patient/12457981'
      },
      "encounter": {
        "reference": 'Encounter/97845408'
      },
      "effectiveDateTime": '2022-06-04T08:00:38.000Z',
      "issued": '2022-06-04T08:00:38Z',
      "component": [
        {
          "code": {
            "coding": [
              {
                "system": 'http://loinc.org',
                "code": '8480-6'
              }
            ],
            "text": 'Systolic Blood Pressure Invasive'
          },
          "valueQuantity": {
            "value": 120,
            "unit": 'mmHg',
            "system": 'http://unitsofmeasure.org',
            "code": 'mm[Hg]'
          },
          "interpretation": [
            {
              "coding": [
                {
                  "system": 'http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation',
                  "code": 'N'
                }
              ]
            }
          ],
          "referenceRange": [
            {
              "low": {
                "value": 45.0,
                "unit": 'mmHg',
                "system": 'http://unitsofmeasure.org',
                "code": 'mm[Hg]'
              },
              "high": {
                "value": 75.0,
                "unit": 'mmHg',
                "system": 'http://unitsofmeasure.org',
                "code": 'mm[Hg]'
              },
              "type": {
                "coding": [
                  {
                    "system": 'http://terminology.hl7.org/CodeSystem/referencerange-meaning',
                    "code": 'normal'
                  }
                ],
                "text": 'Normal Range'
              }
            }
          ]
        },
        {
          "code": {
            "coding": [
              {
                "system": 'http://loinc.org',
                "code": '8462-4'
              }
            ],
            "text": 'Diastolic Blood Pressure Invasive'
          },
          "valueQuantity": {
            "value": 80,
            "unit": 'mmHg',
            "system": 'http://unitsofmeasure.org',
            "code": 'mm[Hg]'
          },
          "interpretation": [
            {
              "coding": [
                {
                  "system": 'http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation',
                  "code": 'N'
                }
              ]
            }
          ],
          "referenceRange": [
            {
              "low": {
                "value": 35.8,
                "unit": 'mmHg',
                "system": 'http://unitsofmeasure.org',
                "code": 'mm[Hg]'
              },
              "high": {
                "value": 37.3,
                "unit": 'mmHg',
                "system": 'http://unitsofmeasure.org',
                "code": 'mm[Hg]'
              },
              "type": {
                "coding": [
                  {
                    "system": 'http://terminology.hl7.org/CodeSystem/referencerange-meaning',
                    "code": 'normal'
                  }
                ],
                "text": 'Normal Range'
              }
            }
          ]
        }
      ]
    }.freeze

    R4_OBSERVATION_PO_CREATE ||= {
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
            "code": '59408-5'
          }
        ],
        "text": 'SpO2'
      },
      "subject": {
        "reference": 'Patient/12457981'
      },
      "encounter": {
        "reference": 'Encounter/97845408'
      },
      "effectiveDateTime": '2022-06-05T08:00:38.004Z',
      "issued": '2022-06-05T08:00:34Z',
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
          "reference": 'Practitioner/15441459'
        }
      ],
      "component": [
        {
          "code": {
            "coding": [
              {
                "system": 'http://loinc.org',
                "code": '3151-8',
                "display": 'Inhaled oxygen flow rate'
              }
            ],
            "text": 'Oxygen Flow Rate'
          },
          "valueQuantity": {
            "value": 7,
            "unit": 'L/min',
            "system": 'http://unitsofmeasure.org',
            "code": 'L/min'
          }
        },
        {
          "code": {
            "coding": [
              {
                "system": 'http://loinc.org',
                "code": '3150-0'
              }
            ],
            "text": 'FIO2'
          },
          "valueQuantity": {
            "value": 21,
            "unit": '%',
            "system": 'http://unitsofmeasure.org',
            "code": '%'
          }
        },
        {
          "code": {
            "coding": [
              {
                "system": 'http://loinc.org',
                "code": '59408-5'
              }
            ],
            "text": 'SpO2'
          },
          "valueQuantity": {
            "value": 96,
            "unit": '%',
            "system": 'http://unitsofmeasure.org',
            "code": '%'
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
      "id": 'L-196186655',
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

    R4_OBSERVATION_VITALS_UPDATE ||= {
      "resourceType": 'Observation',
      "id": 'VS-197356031',
      "identifier": [
        {
          "system": 'https://fhir.cerner.com/ceuuid',
          "value": 'CE87caf4b7-9397-4667-9897-702218017c9e-197356031-2021061619245900'
        }
      ],
      "status": 'corrected',
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
            "system": 'https://fhir.cerner.com/d242a518-4074-4bd4-a3a6-adfe0c5c1c51/codeSet/72',
            "code": '703558',
            "display": 'Temperature Oral',
            "userSelected": true
          }
        ],
        "text": 'Temperature Oral'
      },
      "subject": {
        "reference": 'Patient/12457979'
      },
      "encounter": {
        "reference": 'Encounter/97787491'
      },
      "effectiveDateTime": '2020-07-04T07:15:00.000Z',
      "issued": '2021-05-06T20:07:14.000Z',
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
          "reference": 'Practitioner/1'
        }
      ],
      "valueQuantity": {
        "value": 123,
        "unit": 'mmHg',
        "system": 'http://unitsofmeasure.org',
        "code": 'mm[Hg]'
      }
    }.freeze

    R4_OBSERVATION_VITALS_BP_UPDATE ||= {
      "resourceType": 'Observation',
      "id": 'BP-59857018-59857020',
      "identifier": [
        {
          "system": 'https://fhir.cerner.com/ceuuid',
          "value": 'CEfda49233-ccfa-4ed4-afbc-9f5082c2bf0c-59857018-2022111805415000'
        },
        {
          "system": 'https://fhir.cerner.com/ceuuid',
          "value": 'CEfda49233-ccfa-4ed4-afbc-9f5082c2bf0c-59857020-2022111805415000'
        }
      ],
      "status": 'corrected',
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
            "code": '85354-9',
            "display": 'Blood pressure panel with all children optional'
          }
        ],
        "text": 'Blood pressure'
      },
      "subject": {
        "reference": 'Patient/15116458'
      },
      "encounter": {
        "reference": 'Encounter/15687784'
      },
      "effectiveDateTime": '2022-06-09T08:00:58.000Z',
      "issued": '2022-06-09T08:00:58.000Z',
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
          "reference": 'Practitioner/15441459'
        }
      ],
      "component": [
        {
          "code": {
            "coding": [
              {
                "system": 'http://loinc.org',
                "code": '8480-6'
              }
            ],
            "text": 'Systolic Blood Pressure Sitting'
          },
          "valueQuantity": {
            "value": 99,
            "unit": 'mmHg',
            "system": 'http://unitsofmeasure.org',
            "code": 'mm[Hg]'
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
          "referenceRange": [
            {
              "low": {
                "value": 35,
                "unit": 'mmHg',
                "system": 'http://unitsofmeasure.org',
                "code": 'mm[Hg]'
              },
              "high": {
                "value": 37,
                "unit": 'mmHg',
                "system": 'http://unitsofmeasure.org',
                "code": 'mm[Hg]'
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
        },
        {
          "code": {
            "coding": [
              {
                "system": 'http://loinc.org',
                "code": '8462-4'
              }
            ],
            "text": 'Diastolic Blood Pressure Sitting'
          },
          "valueQuantity": {
            "value": 66,
            "unit": 'mmHg',
            "system": 'http://unitsofmeasure.org',
            "code": 'mm[Hg]'
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
          "referenceRange": [
            {
              "low": {
                "value": 35,
                "unit": 'mmHg',
                "system": 'http://unitsofmeasure.org',
                "code": 'mm[Hg]'
              },
              "high": {
                "value": 37,
                "unit": 'mmHg',
                "system": 'http://unitsofmeasure.org',
                "code": 'mm[Hg]'
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
        }
      ]
    }.freeze

    R4_OBSERVATION_VITALS_PO_UPDATE ||= {
      "resourceType": 'Observation',
      "id": 'VS-CV-83059963-SECT-8098',
      "identifier": [
        {
          "system": 'https://fhir.cerner.com/cvuuid',
          "value": '8344a9b7-b1b7-406e-b303-1009edd66459'
        }
      ],
      "status": 'amended',
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
            "code": '2708-6',
            "display": 'Oxygen saturation in Arterial blood'
          },
          {
            "system": 'http://loinc.org',
            "code": '59408-5',
            "display": 'Oxygen saturation in Arterial blood by Pulse oximetry'
          }
        ],
        "text": 'SpO2'
      },
      "subject": {
        "reference": 'Patient/12457979'
      },
      "encounter": {
        "reference": 'Encounter/97787491'
      },
      "effectiveDateTime": '2022-06-05T08:00:38.022Z',
      "issued": '2022-06-05T08:00:56Z',
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
          "reference": 'Practitioner/15441459'
        }
      ],
      "valueQuantity": {
        "value": 44,
        "unit": '%',
        "system": 'http://unitsofmeasure.org',
        "code": '%'
      },
      "component": [
        {
          "code": {
            "coding": [
              {
                "system": 'http://loinc.org',
                "code": '3151-8',
                "display": 'Inhaled oxygen flow rate'
              }
            ],
            "text": 'Oxygen Flow Rate'
          },
          "valueQuantity": {
            "value": 55,
            "unit": 'L/min',
            "system": 'http://unitsofmeasure.org',
            "code": 'L/min'
          }
        },
        {
          "code": {
            "coding": [
              {
                "system": 'http://loinc.org',
                "code": '3150-0',
                "display": 'Inhaled oxygen concentration'
              }
            ],
            "text": 'FIO2'
          },
          "valueQuantity": {
            "value": 66,
            "unit": '%',
            "system": 'http://unitsofmeasure.org',
            "code": '%'
          }
        }
      ]
    }.freeze

    R4_OBSERVATION_REVINCLUDE_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '79c71e5b-2793-4ace-bc5e-190e38784e80',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Observation?Observation?patient=12457977&category=vital-signs&_revinclude=Provenance%3Atarget'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Observation/VS-196190669',
          'resource': {
            'resourceType': 'Observation',
            'id': 'VS-196190669',
            'meta': {
              'versionId': '2',
              'lastUpdated': '2017-02-25T02:41:03.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Observation</b></p><p><b>Patient Id</b>:12457977'\
                      '</p><p><b>Status</b>: Entered in Error</p><p><b>Categories</b>: Vital Signs</p><p><b>Code</b>'\
                      ': Temperature Temporal Artery</p><p><b>Result</b>: 39 degC</p><p><b>Interpretation</b>'\
                      ': Normal</p><p><b>Effective Date</b>: Feb 24, 2017  8:37 P.M. CST</p>'\
                      '<p><b>Reference Range</b>: 36-38 degC</p></div>'
            },
            'identifier': [
              {
                'system': 'https://fhir.cerner.com/ceuuid',
                'value': 'CE87caf4b7-9397-4667-9897-702218017c9e-196190669-2017022502373000'
              }
            ],
            'status': 'entered-in-error',
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
                  'code': '4157752',
                  'display': 'Temperature Temporal Artery',
                  'userSelected': true
                },
                {
                  'system': 'http://loinc.org',
                  'code': '75539-7',
                  'display': 'Body temperature - Temporal artery'
                },
                {
                  'system': 'http://loinc.org',
                  'code': '8310-5',
                  'display': 'Body temperature'
                }
              ],
              'text': 'Temperature Temporal Artery'
            },
            'subject': {
              'reference': 'Patient/12457977'
            },
            'encounter': {
              'reference': 'Encounter/97697398'
            },
            'effectiveDateTime': '2017-02-25T02:37:00.000Z',
            'issued': '2017-02-25T02:41:03.000Z',
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
                'reference': 'Practitioner/11638346'
              }
            ],
            'valueQuantity': {
              'value': 39,
              'unit': 'degC',
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
            'note': [
              {
                'authorReference': {
                  'reference': 'Practitioner/11638346'
                },
                'time': '2017-02-25T02:41:03.000Z',
                'text': 'Other\n'
              }
            ],
            'referenceRange': [
              {
                'low': {
                  'value': 36,
                  'unit': 'degC',
                  'system': 'http://unitsofmeasure.org',
                  'code': 'Cel'
                },
                'high': {
                  'value': 38,
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
          },
          'search': {
            'mode': 'match'
          }
        },
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Provenance/vit-4',
          'resource': {
            'resourceType': 'Provenance',
            'id': 'vit-4',
            'meta': {
              'versionId': '4',
              'lastUpdated': '2020-12-03T16:28:02Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns=\'http://www.w3.org/1999/xhtml\'><p><b>Provenance</b></p><p><b>Target</b>:</p>'\
                    '<ul><li>Observation/VS-196190669</li></ul><p><b>Recorded</b>: Oct 25, 2019  9:57 A.M.'\
                    ' CDT</p><p><b>Agents</b>:</p><dl><dt>Unknown</dt><dd><b>Agent Type</b>: Author</dd><dd>'\
                    '<b>Agent Role</b>: Source</dd></dl><p><b>Entity Source</b>: DocumentReference/S-100</p></div>'
            },
            'target': [
              {
                'reference': 'Observation/VS-196190669'
              }
            ],
            'recorded': '2019-10-25T14:57:43Z',
            'agent': [
              {
                'type': {
                  'coding': [
                    {
                      'system': 'http://terminology.hl7.org/CodeSystem/provenance-participant-type',
                      'code': 'author'
                    }
                  ],
                  'text': 'Author'
                },
                'role': [
                  {
                    'coding': [
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/contractsignertypecodes',
                        'code': 'SOURCE'
                      }
                    ],
                    'text': 'Source'
                  }
                ],
                'who': {
                  'reference': 'Organization/101',
                  'display': 'Unknown'
                }
              }
            ],
            'entity': [
              {
                'role': 'source',
                'what': {
                  'reference': 'DocumentReference/S-100'
                }
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
