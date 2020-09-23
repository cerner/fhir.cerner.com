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
            "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/72',
            "code": '703558',
            "display": 'Temperature Oral',
            "userSelected": true
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
        "value": '13.2',
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
