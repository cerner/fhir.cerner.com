# frozen_string_literal: true

module Cerner
  module Resources

    R4_ENCOUNTER ||= {
      'resourceType': 'Encounter',
      'id': '97939518',
      'meta': {
        'versionId': '0',
        'lastUpdated': '2020-01-07T06:00:00.000Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Encounter</b></p><p><b>Patient</b>: SMART, NANCY</p>'\
               '<p><b>Location</b>: Model Hospital, MX Hospital, NU05, 102, A</p><p><b>Type</b>: Inpatient</p>'\
               '<p><b>Service Type</b>: Medicine-General</p><p><b>Class</b>: inpatient encounter</p><p><b>Status'\
               '</b>: Finished</p><p><b>Period Start Date</b>: Dec 26, 2019  3:38 P.M. UTC</p><p><b>Period End Date'\
               '</b>: Jan  7, 2020  6:00 A.M. UTC</p><p><b>Reason For Visit</b>: Illness</p><p><b>Attending '\
               'Physician</b>: Cerner Test, Physician - Hospitalist Cerner</p></div>'
      },
      'extension': [
        {
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/estimated-financial-responsibility-amount',
          'valueMoney': {
            'value': 0.0,
            'currency': 'USD'
          }
        }
      ],
      'identifier': [
        {
          'use': 'usual',
          'type': {
            'coding': [
              {
                'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/319',
                'code': '1077',
                'display': 'FIN NBR',
                'userSelected': true
              },
              {
                'system': 'http://terminology.hl7.org/CodeSystem/v2-0203',
                'code': 'AN',
                'display': 'Account number',
                'userSelected': false
              }
            ],
            'text': 'FIN NBR'
          },
          '_system': {
            'extension': [
              {
                'url': 'http://hl7.org/fhir/StructureDefinition/data-absent-reason',
                'valueCode': 'unknown'
              }
            ]
          },
          'value': '15951',
          'period': {
            'start': '2019-12-26T15:41:55.000Z'
          }
        }
      ],
      'status': 'finished',
      'class': {
        'system': 'http://terminology.hl7.org/CodeSystem/v3-ActCode',
        'code': 'IMP',
        'display': 'inpatient encounter',
        'userSelected': false
      },
      'type': [
        {
          'coding': [
            {
              'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/71',
              'code': '309308',
              'display': 'Inpatient',
              'userSelected': true
            },
            {
              'system': 'http://terminology.hl7.org/CodeSystem/v2-0004',
              'code': 'I',
              'display': 'Inpatient',
              'userSelected': false
            }
          ],
          'text': 'Inpatient'
        }
      ],
      'serviceType': {
        'coding': [
          {
            'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/34',
            'code': '313012',
            'display': 'Medicine-General',
            'userSelected': true
          },
          {
            'system': 'http://snomed.info/sct',
            'code': '700232004',
            'display': 'General medical service (qualifier value)',
            'userSelected': false
          }
        ],
        'text': 'Medicine-General'
      },
      'priority': {
        'coding': [
          {
            'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/3',
            'code': '670840',
            'display': 'Elective',
            'userSelected': true
          },
          {
            'system': 'http://terminology.hl7.org/CodeSystem/v3-ActPriority',
            'code': 'EL',
            'display': 'elective',
            'userSelected': false
          }
        ],
        'text': 'Elective'
      },
      'subject': {
        'reference': 'Patient/12724066',
        'display': 'SMART, NANCY'
      },
      'participant': [
        {
          'type': [
            {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/333',
                  'code': '1119',
                  'display': 'Attending Physician',
                  'userSelected': true
                },
                {
                  'system': 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                  'code': 'ATND',
                  'display': 'attender',
                  'userSelected': false
                }
              ],
              'text': 'Attending Physician'
            }
          ],
          'period': {
            'start': '2019-12-26T15:41:55.000Z'
          },
          'individual': {
            'reference': 'Practitioner/4122622',
            'display': 'Cerner Test, Physician - Hospitalist Cerner'
          }
        },
        {
          'type': [
            {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/333',
                  'code': '1121',
                  'display': 'Consulting Physician',
                  'userSelected': true
                },
                {
                  'system': 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                  'code': 'CON',
                  'display': 'consultant',
                  'userSelected': false
                }
              ],
              'text': 'Consulting Physician'
            }
          ],
          'period': {
            'start': '2020-04-30T17:47:00.000Z',
            'end': '2020-04-30T18:01:18.000Z'
          },
          'individual': {
            'reference': 'Practitioner/12732065',
            'display': 'PWDiabetesMe, Physician - Hospitalist'
          }
        },
        {
          'type': [
            {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/333',
                  'code': '1121',
                  'display': 'Consulting Physician',
                  'userSelected': true
                },
                {
                  'system': 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                  'code': 'CON',
                  'display': 'consultant',
                  'userSelected': false
                }
              ],
              'text': 'Consulting Physician'
            }
          ],
          'period': {
            'start': '2020-04-24T18:27:00.000Z',
            'end': '2020-04-24T19:01:26.000Z'
          },
          'individual': {
            'reference': 'Practitioner/12732065',
            'display': 'PWDiabetesMe, Physician - Hospitalist'
          }
        },
        {
          'type': [
            {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/333',
                  'code': '1126',
                  'display': 'Referring Physician',
                  'userSelected': true
                },
                {
                  'system': 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                  'code': 'REF',
                  'display': 'referrer',
                  'userSelected': false
                }
              ],
              'text': 'Referring Physician'
            }
          ],
          'period': {
            'start': '2019-12-26T15:41:55.000Z'
          },
          'individual': {
            'reference': 'Practitioner/4122622',
            'display': 'Cerner Test, Physician - Hospitalist Cerner'
          }
        },
        {
          'type': [
            {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/333',
                  'code': '18883355',
                  'display': 'Covering Physician',
                  'userSelected': true
                },
                {
                  'system': 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                  'code': 'PPRF',
                  'display': 'primary performer',
                  'userSelected': false
                }
              ],
              'text': 'Covering Physician'
            }
          ],
          'period': {
            'start': '2020-01-31T20:34:00.000Z',
            'end': '2020-01-31T21:01:21.000Z'
          },
          'individual': {
            'reference': 'Practitioner/12732065',
            'display': 'PWDiabetesMe, Physician - Hospitalist'
          }
        },
        {
          'type': [
            {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/333',
                  'code': '18883355',
                  'display': 'Covering Physician',
                  'userSelected': true
                },
                {
                  'system': 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                  'code': 'PPRF',
                  'display': 'primary performer',
                  'userSelected': false
                }
              ],
              'text': 'Covering Physician'
            }
          ],
          'period': {
            'start': '2019-12-26T19:05:12.000Z',
            'end': '2020-01-17T06:01:53.000Z'
          },
          'individual': {
            'reference': 'Practitioner/12724045',
            'display': 'Graham, Joshua'
          }
        }
      ],
      'period': {
        'start': '2019-12-26T15:38:02.000Z',
        'end': '2020-01-07T06:00:00.000Z'
      },
      'reasonCode': [
        {
          'text': 'Illness'
        }
      ],
      'hospitalization': {
        'admitSource': {
          'coding': [
            {
              'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/2',
              'code': '4326381',
              'display': 'Self (Non-HC Facility Source of Origin)',
              'userSelected': true
            }
          ],
          'text': 'Self (Non-HC Facility Source of Origin)'
        }
      },
      'location': [
        {
          'location': {
            'reference': 'Location/32545019',
            'display': 'Model Hospital, MX Hospital, NU05, 102, A'
          },
          'status': 'completed'
        }
      ],
      'serviceProvider': {
        'reference': 'Organization/675844'
      }
    }.freeze

    R4_ENCOUNTER_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '22bae7f5-5275-477a-aebf-8ba8cebbf0b8',
      'type': 'searchset',
      'total': 2,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Encounter?patient=12724066'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Encounter/97939518',
          'resource': R4_ENCOUNTER
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Encounter/97939539',
          'resource': {
            'resourceType': 'Encounter',
            'id': '97939539',
            'meta': {
              'versionId': '1',
              'lastUpdated': '2020-01-02T14:01:42.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Encounter</b></p><p><b>Patient</b>: '\
                     'SMART, NANCY</p><p><b>Location</b>: Model Clinic 1, MX Clinic 1, MX Clinic 1</p><p><b>'\
                     'Type</b>: Outpatient</p><p><b>Service Type</b>: Cardiology</p><p><b>Class</b>: '\
                     'Outpatient</p><p><b>Status</b>: Finished</p><p><b>Period Start Date</b>: Dec 26, 2019  '\
                     '4:31 P.M. UTC</p><p><b>Period End Date</b>: Dec 27, 2019  5:59 A.M. UTC</p><p><b>Reason '\
                     'For Visit</b>: Illness</p><p><b>Attending Physician</b>: Cerner Test, Physician - '\
                     'Cardiovascular Cerner</p></div>'
            },
            'extension': [
              {
                'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/estimated-financial-'\
                       'responsibility-amount',
                'valueMoney': {
                  'value': 0.0,
                  'currency': 'USD'
                }
              }
            ],
            'identifier': [
              {
                'use': 'usual',
                'type': {
                  'coding': [
                    {
                      'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/319',
                      'code': '1077',
                      'display': 'FIN NBR',
                      'userSelected': true
                    },
                    {
                      'system': 'http://terminology.hl7.org/CodeSystem/v2-0203',
                      'code': 'AN',
                      'display': 'Account number',
                      'userSelected': false
                    }
                  ],
                  'text': 'FIN NBR'
                },
                '_system': {
                  'extension': [
                    {
                      'url': 'http://hl7.org/fhir/StructureDefinition/data-absent-reason',
                      'valueCode': 'unknown'
                    }
                  ]
                },
                'value': '15958',
                'period': {
                  'start': '2019-12-26T16:33:21.000Z'
                }
              }
            ],
            'status': 'finished',
            'class': {
              'system': 'http://terminology.hl7.org/CodeSystem/v2-0004',
              'code': 'O',
              'display': 'Outpatient',
              'userSelected': false
            },
            'type': [
              {
                'coding': [
                  {
                    'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/71',
                    'code': '309309',
                    'display': 'Outpatient',
                    'userSelected': true
                  },
                  {
                    'system': 'http://terminology.hl7.org/CodeSystem/v2-0004',
                    'code': 'O',
                    'display': 'Outpatient',
                    'userSelected': false
                  }
                ],
                'text': 'Outpatient'
              }
            ],
            'serviceType': {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/34',
                  'code': '33536475',
                  'display': 'Cardiology',
                  'userSelected': true
                },
                {
                  'system': 'http://snomed.info/sct',
                  'code': '3471000175103',
                  'display': 'Cardiology service (qualifier value)',
                  'userSelected': false
                }
              ],
              'text': 'Cardiology'
            },
            'priority': {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/3',
                  'code': '670840',
                  'display': 'Elective',
                  'userSelected': true
                },
                {
                  'system': 'http://terminology.hl7.org/CodeSystem/v3-ActPriority',
                  'code': 'EL',
                  'display': 'elective',
                  'userSelected': false
                }
              ],
              'text': 'Elective'
            },
            'subject': {
              'reference': 'Patient/12724066',
              'display': 'SMART, NANCY'
            },
            'participant': [
              {
                'type': [
                  {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/333',
                        'code': '1119',
                        'display': 'Attending Physician',
                        'userSelected': true
                      },
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                        'code': 'ATND',
                        'display': 'attender',
                        'userSelected': false
                      }
                    ],
                    'text': 'Attending Physician'
                  }
                ],
                'period': {
                  'start': '2019-12-26T16:33:21.000Z'
                },
                'individual': {
                  'reference': 'Practitioner/4122625',
                  'display': 'Cerner Test, Physician - Cardiovascular Cerner'
                }
              },
              {
                'type': [
                  {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/333',
                        'code': '1126',
                        'display': 'Referring Physician',
                        'userSelected': true
                      },
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                        'code': 'REF',
                        'display': 'referrer',
                        'userSelected': false
                      }
                    ],
                    'text': 'Referring Physician'
                  }
                ],
                'period': {
                  'start': '2019-12-26T16:33:21.000Z'
                },
                'individual': {
                  'reference': 'Practitioner/4122625',
                  'display': 'Cerner Test, Physician - Cardiovascular Cerner'
                }
              },
              {
                'type': [
                  {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/333',
                        'code': '681274',
                        'display': 'Database Coordinator',
                        'userSelected': true
                      },
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                        'code': 'PART',
                        'display': 'Participation',
                        'userSelected': false
                      }
                    ],
                    'text': 'Database Coordinator'
                  }
                ],
                'period': {
                  'start': '2020-07-06T19:20:00.000Z',
                  'end': '2020-07-07T08:01:33.000Z'
                },
                'individual': {
                  'reference': 'Practitioner/12724064',
                  'display': 'Spence, Open Platform IA, Stephen'
                }
              },
              {
                'type': [
                  {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/333',
                        'code': '18883355',
                        'display': 'Covering Physician',
                        'userSelected': true
                      },
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                        'code': 'PPRF',
                        'display': 'primary performer',
                        'userSelected': false
                      }
                    ],
                    'text': 'Covering Physician'
                  }
                ],
                'period': {
                  'start': '2020-05-19T19:07:55.000Z',
                  'end': '2020-05-19T20:01:41.000Z'
                },
                'individual': {
                  'reference': 'Practitioner/12742575',
                  'display': 'Torres, Drew'
                }
              },
              {
                'type': [
                  {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/333',
                        'code': '18883355',
                        'display': 'Covering Physician',
                        'userSelected': true
                      },
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                        'code': 'PPRF',
                        'display': 'primary performer',
                        'userSelected': false
                      }
                    ],
                    'text': 'Covering Physician'
                  }
                ],
                'period': {
                  'start': '2020-05-19T17:58:00.000Z',
                  'end': '2020-05-19T18:02:00.000Z'
                },
                'individual': {
                  'reference': 'Practitioner/12742575',
                  'display': 'Torres, Drew'
                }
              },
              {
                'type': [
                  {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/333',
                        'code': '18883355',
                        'display': 'Covering Physician',
                        'userSelected': true
                      },
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                        'code': 'PPRF',
                        'display': 'primary performer',
                        'userSelected': false
                      }
                    ],
                    'text': 'Covering Physician'
                  }
                ],
                'period': {
                  'start': '2020-05-18T20:35:00.000Z',
                  'end': '2020-05-18T21:01:50.000Z'
                },
                'individual': {
                  'reference': 'Practitioner/12742575',
                  'display': 'Torres, Drew'
                }
              },
              {
                'type': [
                  {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/333',
                        'code': '18883355',
                        'display': 'Covering Physician',
                        'userSelected': true
                      },
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                        'code': 'PPRF',
                        'display': 'primary performer',
                        'userSelected': false
                      }
                    ],
                    'text': 'Covering Physician'
                  }
                ],
                'period': {
                  'start': '2020-05-18T15:25:00.000Z',
                  'end': '2020-05-18T16:01:14.000Z'
                },
                'individual': {
                  'reference': 'Practitioner/12742575',
                  'display': 'Torres, Drew'
                }
              },
              {
                'type': [
                  {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/333',
                        'code': '18883355',
                        'display': 'Covering Physician',
                        'userSelected': true
                      },
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                        'code': 'PPRF',
                        'display': 'primary performer',
                        'userSelected': false
                      }
                    ],
                    'text': 'Covering Physician'
                  }
                ],
                'period': {
                  'start': '2020-05-18T14:26:00.000Z',
                  'end': '2020-05-18T15:01:19.000Z'
                },
                'individual': {
                  'reference': 'Practitioner/12742575',
                  'display': 'Torres, Drew'
                }
              },
              {
                'type': [
                  {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/333',
                        'code': '18883355',
                        'display': 'Covering Physician',
                        'userSelected': true
                      },
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                        'code': 'PPRF',
                        'display': 'primary performer',
                        'userSelected': false
                      }
                    ],
                    'text': 'Covering Physician'
                  }
                ],
                'period': {
                  'start': '2020-05-16T16:24:00.000Z',
                  'end': '2020-05-16T17:01:05.000Z'
                },
                'individual': {
                  'reference': 'Practitioner/12742575',
                  'display': 'Torres, Drew'
                }
              },
              {
                'type': [
                  {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/333',
                        'code': '18883355',
                        'display': 'Covering Physician',
                        'userSelected': true
                      },
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                        'code': 'PPRF',
                        'display': 'primary performer',
                        'userSelected': false
                      }
                    ],
                    'text': 'Covering Physician'
                  }
                ],
                'period': {
                  'start': '2020-05-16T15:47:00.000Z',
                  'end': '2020-05-16T16:01:39.000Z'
                },
                'individual': {
                  'reference': 'Practitioner/12742575',
                  'display': 'Torres, Drew'
                }
              },
              {
                'type': [
                  {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/333',
                        'code': '18883355',
                        'display': 'Covering Physician',
                        'userSelected': true
                      },
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                        'code': 'PPRF',
                        'display': 'primary performer',
                        'userSelected': false
                      }
                    ],
                    'text': 'Covering Physician'
                  }
                ],
                'period': {
                  'start': '2020-05-15T17:39:00.000Z',
                  'end': '2020-05-15T18:01:29.000Z'
                },
                'individual': {
                  'reference': 'Practitioner/12742575',
                  'display': 'Torres, Drew'
                }
              },
              {
                'type': [
                  {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/333',
                        'code': '18883355',
                        'display': 'Covering Physician',
                        'userSelected': true
                      },
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                        'code': 'PPRF',
                        'display': 'primary performer',
                        'userSelected': false
                      }
                    ],
                    'text': 'Covering Physician'
                  }
                ],
                'period': {
                  'start': '2020-05-15T14:51:00.000Z',
                  'end': '2020-05-15T15:01:44.000Z'
                },
                'individual': {
                  'reference': 'Practitioner/12742575',
                  'display': 'Torres, Drew'
                }
              },
              {
                'type': [
                  {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/333',
                        'code': '18883355',
                        'display': 'Covering Physician',
                        'userSelected': true
                      },
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                        'code': 'PPRF',
                        'display': 'primary performer',
                        'userSelected': false
                      }
                    ],
                    'text': 'Covering Physician'
                  }
                ],
                'period': {
                  'start': '2020-05-14T23:06:37.000Z',
                  'end': '2020-05-15T00:01:56.000Z'
                },
                'individual': {
                  'reference': 'Practitioner/12742575',
                  'display': 'Torres, Drew'
                }
              },
              {
                'type': [
                  {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/333',
                        'code': '18883355',
                        'display': 'Covering Physician',
                        'userSelected': true
                      },
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                        'code': 'PPRF',
                        'display': 'primary performer',
                        'userSelected': false
                      }
                    ],
                    'text': 'Covering Physician'
                  }
                ],
                'period': {
                  'start': '2020-05-14T22:53:00.000Z',
                  'end': '2020-05-14T23:02:00.000Z'
                },
                'individual': {
                  'reference': 'Practitioner/12742575',
                  'display': 'Torres, Drew'
                }
              },
              {
                'type': [
                  {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/333',
                        'code': '18883355',
                        'display': 'Covering Physician',
                        'userSelected': true
                      },
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                        'code': 'PPRF',
                        'display': 'primary performer',
                        'userSelected': false
                      }
                    ],
                    'text': 'Covering Physician'
                  }
                ],
                'period': {
                  'start': '2020-05-14T20:38:00.000Z',
                  'end': '2020-05-14T21:01:11.000Z'
                },
                'individual': {
                  'reference': 'Practitioner/12742575',
                  'display': 'Torres, Drew'
                }
              },
              {
                'type': [
                  {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/333',
                        'code': '18883355',
                        'display': 'Covering Physician',
                        'userSelected': true
                      },
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                        'code': 'PPRF',
                        'display': 'primary performer',
                        'userSelected': false
                      }
                    ],
                    'text': 'Covering Physician'
                  }
                ],
                'period': {
                  'start': '2020-05-14T18:03:28.000Z',
                  'end': '2020-05-14T19:01:24.000Z'
                },
                'individual': {
                  'reference': 'Practitioner/12742575',
                  'display': 'Torres, Drew'
                }
              }
            ],
            'period': {
              'start': '2019-12-26T16:31:51.000Z',
              'end': '2019-12-27T05:59:59.000Z'
            },
            'reasonCode': [
              {
                'text': 'Illness'
              }
            ],
            'hospitalization': {
              'admitSource': {
                'coding': [
                  {
                    'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/2',
                    'code': '309200',
                    'display': 'Information Not Available',
                    'userSelected': true
                  },
                  {
                    'system': 'http://terminology.hl7.org/CodeSystem/admit-source',
                    'code': 'other',
                    'display': 'Other',
                    'userSelected': false
                  }
                ],
                'text': 'Information Not Available'
              },
              'dischargeDisposition': {
                'coding': [
                  {
                    'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/19',
                    'code': '638671',
                    'display': 'Home or Self Care',
                    'userSelected': true
                  },
                  {
                    'system': 'http://terminology.hl7.org/CodeSystem/discharge-disposition',
                    'code': 'home',
                    'display': 'Home',
                    'userSelected': false
                  }
                ],
                'text': 'Home or Self Care'
              }
            },
            'location': [
              {
                'location': {
                  'reference': 'Location/21304876',
                  'display': 'Model Clinic 1, MX Clinic 1, MX Clinic 1'
                },
                'status': 'completed'
              }
            ],
            'serviceProvider': {
              'reference': 'Organization/685844'
            }
          }
        }
      ]
    }.freeze

    R4_ENCOUNTER_CREATE ||= {
      'resourceType': 'Encounter',
      'status': 'in-progress',
      'type': [
        {
          'coding': [
            {
              'system': 'http://terminology.hl7.org/CodeSystem/v2-0004',
              'code': 'O'
            }
          ]
        }
      ],
      'priority': {
        'coding': [
          {
            'system': 'http://terminology.hl7.org/CodeSystem/v3-ActPriority',
            'code': 'EL'
          }
        ]
      },
      'subject': {
        'reference': 'Patient/12724066'
      },
      'reasonCode': [
        {
          'text': 'Neck Pain'
        }
      ],
      'hospitalization': {
        'admitSource': {
          'coding': [
            {
              'system': 'http://terminology.hl7.org/CodeSystem/admit-source',
              'code': 'born'
            }
          ]
        },
        'dischargeDisposition': {
          'coding': [
            {
              'system': 'http://terminology.hl7.org/CodeSystem/discharge-disposition',
              'code': 'other-hcf'
            }
          ]
        }
      },
      'serviceProvider': {
        'reference': 'Organization/675844'
      },
      'period': {
        'start': '2020-03-02T01:13:00Z',
        'end': '2020-03-05T00:00:00Z'
      },
      'participant': [
        {
          'type': [
            {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/333',
                  'code': '1119'
                }
              ]
            }
          ],
          'period': {
            'start': '2020-03-02T20:01:13.000Z'
          },
          'individual': {
            'reference': 'Practitioner/4122622'
          }
        }
      ]
    }.freeze

    R4_ENCOUNTER_PATCH ||= [
      {
        'op': 'replace',
        'path': '/period/start',
        'value': '2015-09-01T00:00:00.000Z'
      },
      {
        'op': 'replace',
        'path': '/period/end',
        'value': '2017-09-01T00:00:00.000Z'
      },
      {
        'op': 'replace',
        'path': '/type',
        'value': [
          {
            'coding': [
              {
                'system': 'http://terminology.hl7.org/CodeSystem/v2-0004',
                'code': 'O',
                'display': 'Outpatient',
                'userSelected': false
              }
            ]
          }
        ]
      }
    ].freeze
  end
end
