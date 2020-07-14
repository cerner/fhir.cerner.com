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
                     'SMART, SANDY A</p><p><b>Allergy</b>: Cow&apos;s milk (substance)</p><p><b>Verification Status'\
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
