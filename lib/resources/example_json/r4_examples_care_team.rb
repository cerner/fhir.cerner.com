# frozen_string_literal: true

module Cerner
  module Resources

    R4_CARE_TEAM_ENTRY ||= {
      'resourceType': 'CareTeam',
      'id': 'CARE_TEAM-119078440-34768489-17490349-4048128-0-22554767',
      'meta': {
        'versionId': '1584980008',
        'lastUpdated': '2020-03-23T16:13:28Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Care Team</b></p><p><b>Patient</b>: FHIR, FIRE3</p><p><b>Care Team Name</b>: Psychology;Blue Team</p><p><b>Status</b>: Active</p><p><b>Category</b>: Encounter-focused care team</p><p><b>Encounter</b>: 34768489</p><p><b>Participant</b>:</p><ul><li>Name: Dickey, Bo; Role: Psychologist (occupation)</li></ul></div>' # rubocop:disable Layout/LineLength
      },
      'status': 'active',
      'category': [
        {
          'coding': [
            {
              'system': 'http://loinc.org',
              'code': 'LA27976-2',
              'display': 'Encounter-focused care team'
            }
          ],
          'text': 'Encounter-focused care team'
        }
      ],
      'name': 'Psychology;Blue Team',
      'subject': {
        'reference': 'Patient/119078440',
        'display': 'FHIR, FIRE3'
      },
      'encounter': {
        'reference': 'Encounter/34768489'
      },
      'participant': [
        {
          'role': [
            {
              'coding': [
                {
                  'system': 'http://snomed.info/sct',
                  'code': '59944000',
                  'display': 'Psychologist (occupation)'
                }
              ],
              'text': 'Psychologist (occupation)'
            }
          ],
          'member': {
            'reference': 'Practitioner/17490349',
            'display': 'Dickey, Bo'
          }
        }
      ]
    }.freeze

    R4_CARE_TEAM_PATIENT_ENTRY ||= {
      'resourceType': 'CareTeam',
      'id': 'LIFETIME_PROVIDER-4169494-0-3038500-0-0-0',
      'meta': {
        'versionId': '1606410852',
        'lastUpdated': '2020-11-26T17:14:12Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Care Team</b></p>'\
               '<p><b>Patient</b>: SHEPARD, JACK</p><p><b>Status</b>: Active</p>'\
               '<p><b>Category</b>: Longitudinal-focused care team</p><p><b>Participant</b>:</p>'\
               '<ul><li>Name: BASE, TEST123; Role: Primary Care Physician</li></ul></div>'
      },
      'status': 'active',
      'category': [
        {
          'coding': [
            {
              'system': 'http://loinc.org',
              'code': 'LA28865-6',
              'display': 'Longitudinal-focused care team'
            }
          ],
          'text': 'Longitudinal-focused care team'
        }
      ],
      'subject': {
        'reference': 'Patient/4169494',
        'display': 'SHEPARD, JACK'
      },
      'participant': [
        {
          'role': [
            {
              'text': 'Primary Care Physician'
            }
          ],
          'member': {
            'reference': 'Practitioner/3038500',
            'display': 'BASE, TEST123'
          }
        }
      ]
    }.freeze

    R4_CARE_TEAM_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '8c34294c-ba46-492d-bb8e-9937db0ddd5b',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/CareTeam?patient=119078440&category=encounter'
        },
        {
          'relation': 'next',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/CareTeam?patient=119078440'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/CareTeam/'\
                     'CARE_TEAM-119078440-34768489-17490349-4048128-0-22554767',
          'resource': R4_CARE_TEAM_ENTRY
        }
      ]
    }.freeze

    R4_CARE_TEAM_REVINCLUDE_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '0bcf7619-a5c4-4363-b234-3803f7cb0d44',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/CareTeam?patient=4169494'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/CareTeam/'\
                     'LIFETIME_PROVIDER-4169494-0-4105597-0-0-0',
          'resource': {
            'resourceType': 'CareTeam',
            'id': 'LIFETIME_PROVIDER-4169494-0-4105597-0-0-0',
            'meta': {
              'versionId': '1606412761',
              'lastUpdated': '2020-11-26T17:46:01Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Care Team</b></p>'\
                     '<p><b>Patient</b>: SHEPARD, JACK</p><p><b>Status</b>: Active</p>'\
                     '<p><b>Category</b>: Longitudinal-focused care team</p><p><b>Participant</b>:</p>'\
                     '<ul><li>Name: ONEPLAN, ONEPLAN; Role: Family medicine specialist (occupation)</li></ul></div>'
            },
            'status': 'active',
            'category': [
              {
                'coding': [
                  {
                    'system': 'http://loinc.org',
                    'code': 'LA28865-6',
                    'display': 'Longitudinal-focused care team'
                  }
                ],
                'text': 'Longitudinal-focused care team'
              }
            ],
            'subject': {
              'reference': 'Patient/4169494',
              'display': 'SHEPARD, JACK'
            },
            'participant': [
              {
                'role': [
                  {
                    'coding': [
                      {
                        'system': 'http://snomed.info/sct',
                        'code': '62247001',
                        'display': 'Family medicine specialist (occupation)'
                      }
                    ],
                    'text': 'Family medicine specialist (occupation)'
                  }
                ],
                'member': {
                  'reference': 'Practitioner/4105597',
                  'display': 'ONEPLAN, ONEPLAN'
                }
              }
            ]
          },
          'search': {
            'mode': 'match'
          }
        },
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Provenance/INT.hcncrn-00a5d6eb-c567-42f7-be07-53804cece075',
          'resource': {
            'resourceType': 'Provenance',
            'id': 'INT.cteam-LIFETIME_PROVIDER-4169494-0-4105597-0-0-0',
            'meta': {
              'versionId': '00a5d6eb-c567-42f7-be07-53804cece075',
              'lastUpdated': '2020-07-06T19:36:23Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Provenance</b></p><p><b>Target</b>:</p>'\
                     '<ul><li>CareTeam/LIFETIME_PROVIDER-4169494-0-4105597-0-0-0</li></ul><p><b>Recorded'\
                     'Spence, Open Platform IA, Stephen</b>: Jul  6, 2020  7:36 P.M. UTC</p><p><b>Agents</b>'\
                     ':</p><dl><dt></dt><dd><b>Agent Type</b>: Author</dd><dd><b>Agent Role</b>: Source</dd></dl></div>'
            },
            'target': [
              {
                'reference': 'CareTeam/LIFETIME_PROVIDER-4169494-0-4105597-0-0-0'
              }
            ],
            'recorded': '2020-07-06T19:36:23Z',
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
                  'reference': 'Practitioner/12724064',
                  'display': 'Spence, Open Platform IA, Stephen'
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

    R4_CARE_TEAM_PATIENT_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '0bcf7619-a5c4-4363-b234-3803f7cb0d44',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/CareTeam?patient=4169494'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/CareTeam/'\
                     'LIFETIME_PROVIDER-4169494-0-3038500-0-0-0',
          'resource': R4_CARE_TEAM_ENTRY
        },
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/CareTeam/'\
                     'LIFETIME_PROVIDER-4169494-0-4105597-0-0-0',
          'resource': {
            'resourceType': 'CareTeam',
            'id': 'LIFETIME_PROVIDER-4169494-0-4105597-0-0-0',
            'meta': {
              'versionId': '1606412761',
              'lastUpdated': '2020-11-26T17:46:01Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Care Team</b></p>'\
                     '<p><b>Patient</b>: SHEPARD, JACK</p><p><b>Status</b>: Active</p>'\
                     '<p><b>Category</b>: Longitudinal-focused care team</p><p><b>Participant</b>:</p>'\
                     '<ul><li>Name: ONEPLAN, ONEPLAN; Role: Family medicine specialist (occupation)</li></ul></div>'
            },
            'status': 'active',
            'category': [
              {
                'coding': [
                  {
                    'system': 'http://loinc.org',
                    'code': 'LA28865-6',
                    'display': 'Longitudinal-focused care team'
                  }
                ],
                'text': 'Longitudinal-focused care team'
              }
            ],
            'subject': {
              'reference': 'Patient/4169494',
              'display': 'SHEPARD, JACK'
            },
            'participant': [
              {
                'role': [
                  {
                    'coding': [
                      {
                        'system': 'http://snomed.info/sct',
                        'code': '62247001',
                        'display': 'Family medicine specialist (occupation)'
                      }
                    ],
                    'text': 'Family medicine specialist (occupation)'
                  }
                ],
                'member': {
                  'reference': 'Practitioner/4105597',
                  'display': 'ONEPLAN, ONEPLAN'
                }
              }
            ]
          }
        },
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/CareTeam/'\
                     'LIFETIME_PROVIDER-4169494-0-4090846-0-0-0',
          'resource': {
            'resourceType': 'CareTeam',
            'id': 'LIFETIME_PROVIDER-4169494-0-4090846-0-0-0',
            'meta': {
              'versionId': '1606743013',
              'lastUpdated': '2020-11-30T13:30:13Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Care Team</b></p>'\
                     '<p><b>Patient</b>: SHEPARD, JACK</p><p><b>Status</b>: Active</p>'\
                     '<p><b>Category</b>: Longitudinal-focused care team</p><p><b>Participant</b>:</p>'\
                     '<ul><li>Name: P, Ashoka; Role: Clinical oncologist (occupation)</li></ul></div>'
            },
            'status': 'active',
            'category': [
              {
                'coding': [
                  {
                    'system': 'http://loinc.org',
                    'code': 'LA28865-6',
                    'display': 'Longitudinal-focused care team'
                  }
                ],
                'text': 'Longitudinal-focused care team'
              }
            ],
            'subject': {
              'reference': 'Patient/4169494',
              'display': 'SHEPARD, JACK'
            },
            'participant': [
              {
                'role': [
                  {
                    'coding': [
                      {
                        'system': 'http://snomed.info/sct',
                        'code': '309295000',
                        'display': 'Clinical oncologist (occupation)'
                      }
                    ],
                    'text': 'Clinical oncologist (occupation)'
                  }
                ],
                'member': {
                  'reference': 'Practitioner/4090846',
                  'display': 'P, Ashoka'
                }
              }
            ]
          }
        }
      ]
    }.freeze
  end
end
