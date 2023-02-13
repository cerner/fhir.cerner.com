# frozen_string_literal: true

module Cerner
  module Resources
    R4_ALLERGY_INTOLERANCE_ENTRY ||= {
      'resourceType': 'AllergyIntolerance',
      'id': '12760025',
      'meta': {
        'versionId': '12760025',
        'lastUpdated': '2020-03-04T20:16:02Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Allergy Intolerance</b></p><p><b>Patient</b>: '\
               'SMART, SANDY A</p><p><b>Allergy</b>: Eggs (edible) (substance)</p><p><b>Verification Status</b>: '\
               'Confirmed</p><p><b>Clinical Status</b>: Active</p><p><b>Criticality</b>: High Risk</p><p><b>'\
               'Category</b>: Food</p><p><b>Reactions</b>: Breathing abnormal</p><p><b>Onset</b>: Dec 14, 2019  '\
               '6:00 P.M. CST</p></div>'
      },
      'clinicalStatus': {
        'coding': [
          {
            'system': 'http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical',
            'code': 'active',
            'display': 'Active'
          }
        ],
        'text': 'Active'
      },
      'verificationStatus': {
        'coding': [
          {
            'system': 'http://terminology.hl7.org/CodeSystem/allergyintolerance-verification',
            'code': 'confirmed',
            'display': 'Confirmed'
          }
        ],
        'text': 'Active'
      },
      'type': 'allergy',
      'category': [
        'food'
      ],
      'criticality': 'high',
      'code': {
        'coding': [
          {
            'system': 'http://snomed.info/sct',
            'code': '102263004',
            'display': 'Eggs (edible) (substance)'
          }
        ],
        'text': 'Egg'
      },
      'patient': {
        'reference': 'Patient/12742399',
        'display': 'SMART, SANDY A'
      },
      'encounter': {
        'reference': 'Encounter/97953523'
      },
      'onsetDateTime': '2019-12-15T00:00:00Z',
      '_onsetDateTime': {
        'extension': [
          {
            'url': 'https://fhir-ehr.cerner.com/StructureDefinition/precision',
            'valueCodeableConcept': {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/25320',
                  'code': '639011',
                  'display': 'After',
                  'userSelected': true
                }
              ],
              'text': 'After'
            }
          }
        ]
      },
      'recordedDate': '2020-03-04T20:16:02Z',
      'recorder': {
        'reference': 'Practitioner/12724045',
        'display': 'Graham, Joshua'
      },
      'reaction': [
        {
          'id': '12760027',
          'manifestation': [
            {
              'coding': [
                {
                  'system': 'http://snomed.info/sct',
                  'code': '386813002',
                  'display': 'Abnormal breathing (finding)'
                }
              ],
              'text': 'Breathing abnormal'
            }
          ]
        }
      ]
    }.freeze

    R4_ALLERGY_INTOLERANCE_REVINCLUDE_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '65ee4c79-3514-4eab-b606-10ad56fb0d5d',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/AllergyIntolerance?_id=74771957%2CS-75479691&_revinclude=Provenance%3Atarget'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/AllergyIntolerance/74771957',
          'resource': {
            'resourceType': 'AllergyIntolerance',
            'id': '74771957',
            'meta': {
              'versionId': '74771957',
              'lastUpdated': '2019-05-15T13:15:25Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns=\'http://www.w3.org/1999/xhtml\'><p><b>Allergy Intolerance</b></p>
              <p><b>Patient</b>: John, Smith</p><p><b>Allergy</b>: Peanut - dietary (substance)</p>
              <p><b>Verification Status</b>: Confirmed</p><p><b>Clinical Status</b>: Active</p>
              <p><b>Criticality</b>: High Risk</p><p><b>Category</b>: Medication</p>
              <p><b>Onset</b>: May 15, 2019  1:15 P.M. UTC</p></div>'
            },
            'clinicalStatus': {
              'coding': [
                {
                  'system': 'http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical',
                  'code': 'active',
                  'display': 'Active'
                }
              ],
              'text': 'Active'
            },
            'verificationStatus': {
              'coding': [
                {
                  'system': 'http://terminology.hl7.org/CodeSystem/allergyintolerance-verification',
                  'code': 'confirmed',
                  'display': 'Confirmed'
                }
              ],
              'text': 'Active'
            },
            'type': 'allergy',
            'category': [
              'medication'
            ],
            'criticality': 'high',
            'code': {
              'coding': [
                {
                  'system': 'http://snomed.info/sct',
                  'code': '256349002',
                  'display': 'Peanut - dietary (substance)'
                }
              ],
              'text': 'Peanuts'
            },
            'patient': {
              'reference': 'Patient/150915497',
              'display': 'John, Smith'
            },
            'encounter': {
              'reference': 'Encounter/44324934'
            },
            'onsetDateTime': '2019-05-15T13:15:25Z',
            'recordedDate': '2019-05-15T13:15:25Z',
            'recorder': {
              'reference': 'Practitioner/8176589',
              'display': 'DIRECTORYSERVICEUSER, DIRECTORYSERVICEUSER'
            },
            'asserter': {
              'reference': 'Patient/150915497',
              'display': 'John, Smith'
            }
          },
          'search': {
            'mode': 'match'
          }
        },
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/AllergyIntolerance/S-75479691',
          'resource': {
            'resourceType': 'AllergyIntolerance',
            'id': 'S-75479691',
            'meta': {
              'versionId': '1',
              'lastUpdated': '2020-03-19T20:47:44Z',
              'security': [
                {
                  'system': 'http://terminology.hl7.org/CodeSystem/v3-ObservationValue',
                  'code': 'UNCERTREL',
                  'display': 'Uncertain Reliability'
                }
              ]
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns=\'http://www.w3.org/1999/xhtml\'><p><b>Allergy Intolerance</b></p>
              <p><b>Patient</b>: MARSTON, JACK</p><p><b>Meta Security</b>: Uncertain Reliability</p>
              <p><b>Allergy</b>: Strawberry (substance)</p><p><b>Verification Status</b>: Confirmed</p>
              <p><b>Clinical Status</b>: Active</p><p><b>Criticality</b>: High Risk</p>
              <p><b>Category</b>: Medication</p><p><b>Onset</b>: Sep 11, 2019 12:00 A.M. CDT</p>
              <p><b>Note</b>: Allergy reported by patient.</p></div>'
            },
            'contained': [
              {
                'resourceType': 'PractitionerRole',
                'id': '638995',
                'code': [
                  {
                    'coding': [
                      {
                        'system': 'http://snomed.info/sct',
                        'code': '106292003',
                        'display': 'Professional nurse (occupation)'
                      }
                    ],
                    'text': 'Professional nurse (occupation)'
                  }
                ]
              }
            ],
            'clinicalStatus': {
              'coding': [
                {
                  'system': 'http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical',
                  'code': 'active',
                  'display': 'Active'
                }
              ],
              'text': 'Active'
            },
            'verificationStatus': {
              'coding': [
                {
                  'system': 'http://terminology.hl7.org/CodeSystem/allergyintolerance-verification',
                  'code': 'confirmed',
                  'display': 'Confirmed'
                }
              ],
              'text': 'Active'
            },
            'type': 'allergy',
            'category': [
              'medication'
            ],
            'criticality': 'high',
            'code': {
              'coding': [
                {
                  'system': 'http://snomed.info/sct',
                  'code': '102261002',
                  'display': 'Strawberry (substance)'
                }
              ],
              'text': 'Strawberry'
            },
            'patient': {
              'reference': 'Patient/166045489',
              'display': 'MARSTON, JACK'
            },
            'onsetDateTime': '2019-09-11T05:00:00Z',
            'recorder': {
              'reference': 'Practitioner/1',
              'display': 'SYSTEM, SYSTEM'
            },
            'asserter': {
              'reference': '#638995'
            },
            'note': [
              {
                'authorReference': {
                  'reference': 'Practitioner/2578010'
                },
                'text': 'Allergy reported by patient.'
              }
            ]
          },
          'search': {
            'mode': 'match'
          }
        },
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Provenance/all-4957069',
          'resource': {
            'resourceType': 'Provenance',
            'id': 'all-4957069',
            'meta': {
              'versionId': '4957069',
              'lastUpdated': '2020-03-16T21:45:09Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns=\'http://www.w3.org/1999/xhtml\'><p><b>Provenance</b></p>
              <p><b>Target</b>:</p><ul><li>AllergyIntolerance/74771957</li></ul>
              <p><b>Recorded</b>: Mar 16, 2020  4:45 P.M. CDT</p>
              <p><b>Agents</b>:</p>
              <dl><dt>Unknown</dt><dd><b>Agent Type</b>: Author</dd><dd><b>Agent Role</b>: Source</dd></dl>
              <p><b>Entity Source</b>: DocumentReference/S-200</p></div>'
            },
            'target': [
              {
                'reference': 'AllergyIntolerance/74771957'
              }
            ],
            'recorded': '2020-03-16T21:45:09Z',
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
                  'reference': 'Organization/40475456',
                  'display': 'Unknown'
                }
              }
            ],
            'entity': [
              {
                'role': 'source',
                'what': {
                  'reference': 'DocumentReference/S-200'
                }
              }
            ]
          },
          'search': {
            'mode': 'include'
          }
        },
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Provenance/all-16897171',
          'resource': {
            'resourceType': 'Provenance',
            'id': 'all-16897171',
            'meta': {
              'versionId': '16897171',
              'lastUpdated': '2021-03-26T08:03:53Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns=\'http://www.w3.org/1999/xhtml\'><p><b>Provenance</b></p>
              <p><b>Target</b>:</p><ul><li>AllergyIntolerance/S-75479691</li></ul>
              <p><b>Recorded</b>: Mar 25, 2021  9:57 A.M. CDT</p>
              <p><b>Agents</b>:</p>
              <dl><dt>Baseline East Medical Center</dt><dd><b>Agent Type</b>: Author</dd>
              <dd><b>Agent Role</b>: Source</dd></dl>
              <p><b>Entity Source</b>: DocumentReference/S-201</p></div>'
            },
            'target': [
              {
                'reference': 'AllergyIntolerance/S-75479691'
              }
            ],
            'recorded': '2021-03-25T14:57:43Z',
            'agent': [
              {
                'type':
                  {
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
                  'reference': 'Organization/619848',
                  'display': 'Baseline East Medical Center'
                }
              }
            ],
            'entity': [
              {
                'role': 'source',
                'what': {
                  'reference': 'DocumentReference/S-201'
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

    R4_ALLERGY_INTOLERANCE_PATIENT_ENTRY ||= {
      "resourceType": 'AllergyIntolerance',
      "id": '12766993',
      "meta": {
        "versionId": '12766993',
        "lastUpdated": '2020-10-14T19:24:57Z'
      },
      "text": {
        "status": 'generated',
        "div": '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Allergy Intolerance</b></p>'\
               '<p><b>Patient</b>: SMART, NANCY</p><p><b>Allergy</b>: Penicillium brevicompactum (organism)</p>'\
                '<p><b>Verification Status</b>: Confirmed</p><p><b>Clinical Status</b>: Active</p>'\
                '<p><b>Criticality</b>: High Risk</p><p><b>Category</b>: Medication</p></div>'
      },
      "clinicalStatus": {
        "coding": [
          {
            "system": 'http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical',
            "code": 'active',
            "display": 'Active'
          }
        ],
        "text": 'Active'
      },
      "verificationStatus": {
        "coding": [
          {
            "system": 'http://terminology.hl7.org/CodeSystem/allergyintolerance-verification',
            "code": 'confirmed',
            "display": 'Confirmed'
          }
        ],
        "text": 'Active'
      },
      "type": 'allergy',
      "category": [
        'medication'
      ],
      "criticality": 'high',
      "code": {
        "coding": [
          {
            "system": 'http://snomed.info/sct',
            "code": '5711000146109',
            "display": 'Penicillium brevicompactum (organism)'
          }
        ],
        "text": 'Penicillium brevicompactum'
      },
      "patient": {
        "reference": 'Patient/12724066',
        "display": 'SMART, NANCY'
      },
      "encounter": {
        "reference": 'Encounter/97955410'
      },
      "recordedDate": '2020-10-14T19:24:57Z'
    }.freeze

    R4_ALLERGY_INTOLERANCE_ENTERED_IN_ERROR_STATUS ||= {
      "resourceType": 'AllergyIntolerance',
      "id": '12760051',
      "meta": {
        "versionId": '12765897',
        "lastUpdated": '2020-09-21T07:48:43Z'
      },
      "text": {
        "status": 'generated',
        "div": '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Allergy Intolerance</b></p>'\
              '<p><b>Patient</b>: SMART, NANCY</p><p><b>Verification Status</b>: Entered in Error</p></div>'
      },
      "verificationStatus": {
        "coding": [
          {
            "system": 'http://terminology.hl7.org/CodeSystem/allergyintolerance-verification',
            "code": 'entered-in-error',
            "display": 'Entered in Error'
          }
        ],
        "text": 'Canceled'
      },
      "code": {
        "coding": [
          {
            "system": 'http://terminology.hl7.org/CodeSystem/data-absent-reason',
            "code": 'error',
            "display": 'Error'
          }
        ],
        "text": 'Error'
      },
      "patient": {
        "reference": 'Patient/12724066',
        "display": 'SMART, NANCY'
      }
    }.freeze

    R4_ALLERGY_INTOLERANCE_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '30e959ca-24f5-43a5-bf8d-46bbb1991b01',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/AllergyIntolerance'\
                 '?patient=12742399'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/AllergyIntolerance/12760025',
          'resource': R4_ALLERGY_INTOLERANCE_ENTRY
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/AllergyIntolerance/12760007',
          'resource': {
            'resourceType': 'AllergyIntolerance',
            'id': '12760007',
            'meta': {
              'versionId': '12760007',
              'lastUpdated': '2020-03-04T20:13:51Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Allergy Intolerance</b></p><p><b>Patient</b>: '\
                     'SMART, SANDY A</p><p><b>Allergy</b>: Cow&#39;s milk (substance)</p><p><b>Verification Status'\
                     '</b>: Confirmed</p><p><b>Clinical Status</b>: Active</p><p><b>Criticality</b>: High Risk</p>'\
                     '<p><b>Category</b>: Food</p><p><b>Reactions</b>: Hives</p><p><b>Onset</b>: Dec 14, 2019  6:00 '\
                     'P.M. CST</p></div>'
            },
            'contained': [
              {
                'resourceType': 'RelatedPerson',
                'id': '638993',
                'patient': {
                  'reference': 'Patient/12742399',
                  'display': 'SMART, SANDY A'
                },
                'relationship': [
                  {
                    'coding': [
                      {
                        'system': 'http://snomed.info/sct',
                        'code': '35359004',
                        'display': 'Family (social concept)'
                      },
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/v3-RoleCode',
                        'code': 'FAMMEMB',
                        'display': 'family member'
                      }
                    ],
                    'text': 'family member'
                  }
                ]
              }
            ],
            'clinicalStatus': {
              'coding': [
                {
                  'system': 'http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical',
                  'code': 'active',
                  'display': 'Active'
                }
              ],
              'text': 'Active'
            },
            'verificationStatus': {
              'coding': [
                {
                  'system': 'http://terminology.hl7.org/CodeSystem/allergyintolerance-verification',
                  'code': 'confirmed',
                  'display': 'Confirmed'
                }
              ],
              'text': 'Active'
            },
            'type': 'allergy',
            'category': [
              'food'
            ],
            'criticality': 'high',
            'code': {
              'coding': [
                {
                  'system': 'http://snomed.info/sct',
                  'code': '3718001',
                  'display': "Cow's milk (substance)"
                }
              ],
              'text': "Cow's Milk"
            },
            'patient': {
              'reference': 'Patient/12742399',
              'display': 'SMART, SANDY A'
            },
            'encounter': {
              'reference': 'Encounter/97953523'
            },
            'onsetDateTime': '2019-12-15T00:00:00Z',
            'recordedDate': '2020-03-04T20:13:51Z',
            'recorder': {
              'reference': 'Practitioner/12724045',
              'display': 'Graham, Joshua'
            },
            'asserter': {
              'reference': '#638993'
            },
            'reaction': [
              {
                'id': '12760009',
                'manifestation': [
                  {
                    'coding': [
                      {
                        'system': 'http://snomed.info/sct',
                        'code': '247472004',
                        'display': 'Weal (disorder)'
                      }
                    ],
                    'text': 'Hives'
                  }
                ]
              }
            ]
          }
        }
      ]
    }.freeze

    R4_ALLERGY_INTOLERANCE_PATIENT_BUNDLE ||= {
      "resourceType": 'Bundle',
      "id": '92a4b8d7-58dc-4b37-b387-bebeb68def51',
      "type": 'searchset',
      "link": [
        {
          "relation": 'self',
          "url": 'http://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/AllergyIntolerance?patient=12724066'
        }
      ],
      "entry": [
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/AllergyIntolerance/12766993',
          'resource': R4_ALLERGY_INTOLERANCE_PATIENT_ENTRY
        }
      ]
    }.freeze

    R4_ALLERGY_INTOLERANCE_CREATE ||= {
      'resourceType': 'AllergyIntolerance',
      'contained': [
        {
          'resourceType': 'PractitionerRole',
          'id': '638995',
          'code': [
            {
              'coding': [
                {
                  'system': 'http://terminology.hl7.org/CodeSystem/practitioner-role',
                  'code': 'nurse'
                }
              ]
            }
          ]
        }
      ],
      'clinicalStatus': {
        'coding': [
          {
            'system': 'http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical',
            'code': 'active'
          }
        ]
      },
      'verificationStatus': {
        'coding': [
          {
            'system': 'http://terminology.hl7.org/CodeSystem/allergyintolerance-verification',
            'code': 'confirmed'
          }
        ]
      },
      'type': 'allergy',
      'category': [
        'medication'
      ],
      'criticality': 'high',
      'code': {
        'coding': [
          {
            'system': 'http://www.nlm.nih.gov/research/umls/rxnorm',
            'code': '723'
          }
        ],
        'text': 'amoxicillin'
      },
      'patient': {
        'reference': 'Patient/12742399'
      },
      'encounter': {
        'reference': 'Encounter/97953523'
      },
      'onsetDateTime': '2019-09-11T05:00:00.000Z',
      '_onsetDateTime': {
        'extension': [
          {
            'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/precision',
            'valueCodeableConcept': {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/34fc7274-1120-4899-937d-a9ea1becc848/codeSet/25320',
                  'code': '639012',
                  'display': 'Before'
                }
              ]
            }
          }
        ]
      },
      'asserter': {
        'reference': '#638995'
      },
      'note': [
        {
          'authorReference': {
            'reference': 'Practitioner/12742399'
          },
          'text': 'Updated with additional details provided by patient.'
        }
      ],
      'reaction': [
        {
          'manifestation': [
            {
              'coding': [
                {
                  'system': 'http://snomed.info/sct',
                  'code': '271757001'
                }
              ],
              'text': 'Papular eruption'
            }
          ],
          'severity': 'severe'
        }
      ]
    }.freeze

    R4_ALLERGY_INTOLERANCE_UPDATE ||= {
      'resourceType': 'AllergyIntolerance',
      'id': '12760025',
      'clinicalStatus': {
        'coding': [
          {
            'system': 'http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical',
            'code': 'active'
          }
        ]
      },
      'verificationStatus': {
        'coding': [
          {
            'system': 'http://terminology.hl7.org/CodeSystem/allergyintolerance-verification',
            'code': 'unconfirmed'
          }
        ]
      },
      'category': [
        'food'
      ],
      'code': {
        'coding': [
          {
            'system': 'http://snomed.info/sct',
            'code': '102263004',
            'display': 'Eggs (edible) (substance)'
          }
        ],
        'text': 'Egg'
      },
      'patient': {
        'reference': 'Patient/12742399'
      },
      'recordedDate': '2019-02-08T00:00:00Z',
      'recorder': {
        'reference': 'Practitioner/12724045'
      },
      'note': [
        {
          'text': 'Updated with additional details provided by patient.'
        }
      ]
    }.freeze
  end
end
