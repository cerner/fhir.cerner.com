# frozen_string_literal: true

module Cerner
  module Resources

    DSTU2_OBSERVATION_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '32633969-4644-4075-8403-3c2169cb3ce1',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Observation'\
                 '?patient=12724067&_count=50'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Observation'\
                     '/93-73033575',
          'resource': {
            'resourceType': 'Observation',
            'id': '93-73033575',
            'meta': {
              'versionId': '73033575',
              'lastUpdated': '2019-12-26T19:25:58.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div><p><b>Observation</b></p><p><b>Patient</b>: 12724067</p><p><b>Date</b>: '\
                     'Dec 26, 2019  7:25 P.M. UTC</p><p><b>Status</b>: Final</p><p><b>Category</b>: '\
                     'Social History</p><p><b>Code</b>: Tobacco</p></div>'
            },
            'status': 'final',
            'category': {
              'coding': [
                {
                  'system': 'http://hl7.org/fhir/observation-category',
                  'code': 'social-history',
                  'display': 'Social History'
                }
              ],
              'text': 'Social History'
            },
            'code': {
              'coding': [
                {
                  'system': 'http://snomed.info/sct',
                  'code': '229819007',
                  'display': 'Tobacco use and exposure (observable entity)'
                },
                {
                  'system': 'http://loinc.org',
                  'code': '72166-2'
                }
              ],
              'text': 'Tobacco'
            },
            'subject': {
              'reference': 'Patient/12724067'
            },
            'issued': '2019-12-26T19:25:58.000Z',
            'dataAbsentReason': {
              'coding': [
                {
                  'system': 'http://hl7.org/fhir/data-absent-reason',
                  'code': 'unknown',
                  'display': 'Unknown'
                }
              ],
              'text': 'Unknown'
            },
            'related': [
              {
                'type': 'has-member',
                'target': {
                  'reference': 'Observation/73033575-q4625825'
                }
              }
            ]
          }
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Observation'\
                     '/73033575-q4625825',
          'resource': {
            'resourceType': 'Observation',
            'id': '73033575-q4625825',
            'meta': {
              'versionId': '73033575',
              'lastUpdated': '2019-12-26T19:25:58.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div><p><b>Observation</b></p><p><b>Patient</b>: 12724067</p><p><b>Date</b>: '\
                     'Dec 26, 2019  7:25 P.M. UTC</p><p><b>Status</b>: Final</p><p><b>Category</b>: '\
                     'Social History</p><p><b>Question</b>: SHX Tobacco use</p><p><b>Response</b>: '\
                     'Never (less than 100 in lifetime)</p></div>'
            },
            'status': 'final',
            'category': {
              'coding': [
                {
                  'system': 'http://hl7.org/fhir/observation-category',
                  'code': 'social-history',
                  'display': 'Social History'
                }
              ],
              'text': 'Social History'
            },
            'code': {
              'text': 'SHX Tobacco use'
            },
            'subject': {
              'reference': 'Patient/12724067'
            },
            'issued': '2019-12-26T19:25:58.000Z',
            'valueCodeableConcept': {
              'text': 'Never (less than 100 in lifetime)'
            }
          }
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Observation/M197281704',
          'resource': {
            'resourceType': 'Observation',
            'id': 'M197281704',
            'meta': {
              'versionId': '1-197281703',
              'lastUpdated': '2020-03-13T16:29:54.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div><p><b>Observation</b></p><p><b>Patient</b>: 12724067</p><p><b>Status</b>: '\
                     'Final</p><p><b>Category</b>: Laboratory</p><p><b>Code</b>: Estimated Creatinine '\
                     'Clearance</p><p><b>Result</b>: 122.60 mL/min</p><p><b>Date</b>: Mar 13, 2020  4:29 '\
                     'P.M. UTC</p></div>'
            },
            'status': 'final',
            'category': {
              'coding': [
                {
                  'system': 'http://hl7.org/fhir/observation-category',
                  'code': 'laboratory',
                  'display': 'Laboratory'
                }
              ],
              'text': 'Laboratory'
            },
            'code': {
              'coding': [
                {
                  'system': 'http://loinc.org',
                  'code': '2164-2'
                }
              ],
              'text': 'Estimated Creatinine Clearance'
            },
            'subject': {
              'reference': 'Patient/12724067'
            },
            'encounter': {
              'reference': 'Encounter/97953480'
            },
            'effectiveDateTime': '2020-03-13T16:29:54.000Z',
            'issued': '2020-03-13T16:29:54.000Z',
            'valueQuantity': {
              'value': 122.60,
              'unit': 'mL/min',
              'system': 'http://unitsofmeasure.org',
              'code': 'mL/min'
            }
          }
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Observation'\
                     '/BP-197198008-197198010',
          'resource': {
            'resourceType': 'Observation',
            'id': 'BP-197198008-197198010',
            'meta': {
              'versionId': '1-197198007-1-197198009',
              'lastUpdated': '2019-12-26T19:23:27.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div><p><b>Observation</b></p><p><b>Patient</b>: 12724067</p><p><b>Status</b>: '\
                     'Final</p><p><b>Category</b>: Vital Signs</p><p><b>Code</b>: Systolic Blood Pressure: '\
                     'Systolic Blood Pressure Diastolic Blood Pressure: Diastolic Blood Pressure</p>'\
                     '<p><b>Result</b>: Systolic Blood Pressure: 138 mmHg Diastolic Blood Pressure: 90 mmHg'\
                     '</p><p><b>Risk Level</b>: Normal</p><p><b>Date</b>: Dec 26, 2019  7:23 P.M. UTC</p>'\
                     '<p><b>Risk Level Detail</b>: Systolic Blood Pressure: 90-140 mmHg Diastolic Blood '\
                     'Pressure: 60-90 mmHg</p></div>'
            },
            'status': 'final',
            'category': {
              'coding': [
                {
                  'system': 'http://hl7.org/fhir/observation-category',
                  'code': 'vital-signs',
                  'display': 'Vital Signs'
                }
              ],
              'text': 'Vital Signs'
            },
            'code': {
              'coding': [
                {
                  'system': 'http://snomed.info/sct',
                  'code': '75367002',
                  'display': 'Blood pressure (observable entity)'
                },
                {
                  'system': 'http://loinc.org',
                  'code': '55284-4'
                }
              ],
              'text': 'Blood pressure'
            },
            'subject': {
              'reference': 'Patient/12724067'
            },
            'encounter': {
              'reference': 'Encounter/97939521'
            },
            'effectiveDateTime': '2019-12-26T19:23:00.000Z',
            'issued': '2019-12-26T19:23:23.000Z',
            'interpretation': {
              'coding': [
                {
                  'system': 'http://hl7.org/fhir/v2/0078',
                  'code': 'N',
                  'display': 'Normal'
                }
              ]
            },
            'component': [
              {
                'code': {
                  'coding': [
                    {
                      'system': 'http://loinc.org',
                      'code': '8480-6'
                    }
                  ],
                  'text': 'Systolic Blood Pressure'
                },
                'valueQuantity': {
                  'value': 138,
                  'unit': 'mmHg',
                  'system': 'http://unitsofmeasure.org',
                  'code': 'mm[Hg]'
                },
                'referenceRange': [
                  {
                    'low': {
                      'value': 90,
                      'unit': 'mmHg',
                      'system': 'http://unitsofmeasure.org',
                      'code': 'mm[Hg]'
                    },
                    'high': {
                      'value': 140,
                      'unit': 'mmHg',
                      'system': 'http://unitsofmeasure.org',
                      'code': 'mm[Hg]'
                    },
                    'text': '90-140 mmHg'
                  }
                ]
              },
              {
                'code': {
                  'coding': [
                    {
                      'system': 'http://loinc.org',
                      'code': '8462-4'
                    },
                    {
                      'system': 'http://loinc.org',
                      'code': '8462-4'
                    }
                  ],
                  'text': 'Diastolic Blood Pressure'
                },
                'valueQuantity': {
                  'value': 90,
                  'unit': 'mmHg',
                  'system': 'http://unitsofmeasure.org',
                  'code': 'mm[Hg]'
                },
                'referenceRange': [
                  {
                    'low': {
                      'value': 60,
                      'unit': 'mmHg',
                      'system': 'http://unitsofmeasure.org',
                      'code': 'mm[Hg]'
                    },
                    'high': {
                      'value': 90,
                      'unit': 'mmHg',
                      'system': 'http://unitsofmeasure.org',
                      'code': 'mm[Hg]'
                    },
                    'text': '60-90 mmHg'
                  }
                ]
              }
            ]
          }
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Observation/M197198002',
          'resource': {
            'resourceType': 'Observation',
            'id': 'M197198002',
            'meta': {
              'versionId': '1-197198001',
              'lastUpdated': '2019-12-26T19:23:12.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div><p><b>Observation</b></p><p><b>Patient</b>: 12724067</p><p><b>Status</b>: '\
                     'Final</p><p><b>Category</b>: Vital Signs</p><p><b>Code</b>: Height/Length Measured</p>'\
                     '<p><b>Result</b>: 180 cm</p><p><b>Date</b>: Dec 26, 2019  7:21 P.M. UTC</p></div>'
            },
            'status': 'final',
            'category': {
              'coding': [
                {
                  'system': 'http://hl7.org/fhir/observation-category',
                  'code': 'vital-signs',
                  'display': 'Vital Signs'
                }
              ],
              'text': 'Vital Signs'
            },
            'code': {
              'coding': [
                {
                  'system': 'http://loinc.org',
                  'code': '3137-7'
                }
              ],
              'text': 'Height/Length Measured'
            },
            'subject': {
              'reference': 'Patient/12724067'
            },
            'encounter': {
              'reference': 'Encounter/97939521'
            },
            'effectiveDateTime': '2019-12-26T19:21:00.000Z',
            'issued': '2019-12-26T19:22:59.000Z',
            'valueQuantity': {
              'value': 180,
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
