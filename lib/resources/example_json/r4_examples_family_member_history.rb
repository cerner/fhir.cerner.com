# frozen_string_literal: true

module Cerner
  module Resources
    R4_FAMILY_MEMBER_HISTORY_ENTRY ||= {
      'resourceType': 'FamilyMemberHistory',
      'id': '12504018-12764234',
      'status': 'completed',
      'patient': {
        'reference': 'Patient/12504018'
      },
      'date': '2021-09-03T09:55:51-05:00',
      'name': 'Smart, Test',
      'relationship': {
        'coding': [
          {
            'system': 'http://terminology.hl7.org/CodeSystem/v3-RoleCode',
            'code': 'SIS',
            'display': 'sister'
          }
        ],
        'text': 'Sister'
      },
      'sex': {
        'coding': [
          {
            'system': 'http://hl7.org/fhir/administrative-gender',
            'code': 'female',
            'display': 'Female'
          }
        ],
        'text': 'Female'
      },
      'bornDate': '1993-08-08',
      'deceasedAge': {
        'extension': [
          {
            'valueCodeableConcept': {
              'coding': [
                {
                  'system': 'http://snomed.info/sct',
                  'code': '397669002',
                  'display': 'Age (qualifier value)'
                }
              ],
              'text': 'Age'
            },
            'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/precision'
          }
        ],
        'value': 18,
        'unit': 'years',
        'system': 'http://unitsofmeasure.org',
        'code': 'a'
      },
      'condition': [
        {
          'id': '73196409',
          'extension': [
            {
              'valueCodeableConcept': {
                'coding': [
                  {
                    'system': 'http://snomed.info/sct',
                    'code': '58158008',
                    'display': 'Stable (qualifier value)'
                  }
                ],
                'text': 'Stable'
              },
              'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/condition-course'
            },
            {
              'valueCodeableConcept': {
                'coding': [
                  {
                    'system': 'http://snomed.info/sct',
                    'code': '6736007',
                    'display': 'Moderate (severity modifier) (qualifier value)'
                  }
                ],
                'text': 'Moderate'
              },
              'url': 'http://hl7.org/fhir/StructureDefinition/familymemberhistory-severity'
            }
          ],
          'modifierExtension': [
            {
              'valueCodeableConcept': {
                'coding': [
                  {
                    'system': 'http://snomed.info/sct',
                    'code': '10828004',
                    'display': 'Positive (qualifier value)'
                  }
                ],
                'text': 'POSITIVE'
              },
              'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/condition-result'
            },
            {
              'valueCodeableConcept': {
                'coding': [
                  {
                    'system': 'http://terminology.hl7.org/CodeSystem/condition-clinical',
                    'code': 'active',
                    'display': 'Active'
                  }
                ],
                'text': 'Active'
              },
              'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/condition-lifecycle-status'
            }
          ],
          'code': {
            'coding': [
              {
                'system': 'http://snomed.info/sct',
                'code': '363346000',
                'display': 'Malignant neoplastic disease (disorder)',
                'userSelected': false
              },
              {
                'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/nomenclature',
                'code': '7588338',
                'display': 'Cancer'
              }
            ],
            'text': 'Cancer'
          },
          'onsetAge': {
            'extension': [
              {
                'valueCodeableConcept': {
                  'coding': [
                    {
                      'system': 'http://snomed.info/sct',
                      'code': '26175008',
                      'display': 'Approximate (qualifier value)'
                    }
                  ],
                  'text': 'About'
                },
                'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/precision'
              }
            ],
            'value': 15,
            'unit': 'Years',
            'system': 'http://unitsofmeasure.org',
            'code': 'a'
          },
          'note': [
            {
              'authorReference': {
                'reference': 'Practitioner/12742069',
                'display': 'Portal, Portal'
              },
              'time': '2021-09-17T14:58:35Z',
              'text': 'Cancer is common in the family'
            }
          ]
        }
      ]
    }.freeze

    R4_PATIENT_LEVEL_FAMILY_MEMBER_HISTORY_ENTRY ||= {
      'resourceType': 'FamilyMemberHistory',
      'id': '12504018',
      'status': 'partial',
      'patient': {
        'reference': 'Patient/12504018'
      },
      'relationship': {
        'coding': [
          {
            'system': 'http://terminology.hl7.org/CodeSystem/v3-RoleCode',
            'code': 'FAMMEMB',
            'display': 'family member'
          }
        ],
        'text': 'family member'
      }
    }.freeze

    R4_FAMILY_MEMBER_HISTORY_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '902e1b49-b9c4-4786-b90b-c9612d478f2a',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/FamilyMemberHistory?patient=12504018'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/FamilyMemberHistory/12504018',
          'resource': R4_PATIENT_LEVEL_FAMILY_MEMBER_HISTORY_ENTRY
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/FamilyMemberHistory/12504018-12764234',
          'resource': R4_FAMILY_MEMBER_HISTORY_ENTRY
        }
      ]
    }.freeze

    R4_FAMILY_MEMBER_HISTORY_CREATE ||= {
      'resourceType': 'FamilyMemberHistory',
      'id': '12504018-12764234',
      'status': 'completed',
      'patient': {
        'reference': 'Patient/12504018'
      },
      'name': 'Smart, Test',
      'relationship': {
        'coding': [
          {
            'system': 'http://terminology.hl7.org/CodeSystem/v3-RoleCode',
            'code': 'SIS'
          }
        ]
      },
      'sex': {
        'coding': [
          {
            'system': 'http://hl7.org/fhir/administrative-gender',
            'code': 'female'
          }
        ]
      },
      'bornDate': '1993-08-08',
      'deceasedAge': {
        'extension': [
          {
            'valueCodeableConcept': {
              'coding': [
                {
                  'system': 'http://snomed.info/sct',
                  'code': '397669002'
                }
              ]
            },
            'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/precision'
          }
        ],
        'value': 18,
        'system': 'http://unitsofmeasure.org',
        'code': 'a'
      }
    }.freeze

    R4_FAMILY_MEMBER_HISTORY_UPDATE ||= {
      'resourceType': 'FamilyMemberHistory',
      'id': '12504018-12764234',
      'status': 'completed',
      'patient': {
        'reference': 'Patient/12504018'
      },
      'name': 'Smart, Test',
      'relationship': {
        'coding': [
          {
            'system': 'http://terminology.hl7.org/CodeSystem/v3-RoleCode',
            'code': 'SIS'
          }
        ]
      },
      'sex': {
        'coding': [
          {
            'system': 'http://hl7.org/fhir/administrative-gender',
            'code': 'female'
          }
        ]
      },
      'bornDate': '1993-08-08',
      'deceasedAge': {
        'extension': [
          {
            'valueCodeableConcept': {
              'coding': [
                {
                  'system': 'http://snomed.info/sct',
                  'code': '397669002'
                }
              ]
            },
            'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/precision'
          }
        ],
        'value': 18,
        'system': 'http://unitsofmeasure.org',
        'code': 'a'
      },
      'condition': [
        {
          'id': '73196409',
          'extension': [
            {
              'valueCodeableConcept': {
                'coding': [
                  {
                    'system': 'http://snomed.info/sct',
                    'code': '58158008'
                  }
                ]
              },
              'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/condition-course'
            },
            {
              'valueCodeableConcept': {
                'coding': [
                  {
                    'system': 'http://snomed.info/sct',
                    'code': '6736007'
                  }
                ]
              },
              'url': 'http://hl7.org/fhir/StructureDefinition/familymemberhistory-severity'
            }
          ],
          'modifierExtension': [
            {
              'valueCodeableConcept': {
                'coding': [
                  {
                    'system': 'http://snomed.info/sct',
                    'code': '10828004'
                  }
                ]
              },
              'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/condition-result'
            },
            {
              'valueCodeableConcept': {
                'coding': [
                  {
                    'system': 'http://terminology.hl7.org/CodeSystem/condition-clinical',
                    'code': 'active'
                  }
                ]
              },
              'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/condition-lifecycle-status'
            }
          ],
          'code': {
            'coding': [
              {
                'system': 'http://snomed.info/sct',
                'code': '363346000'
              }
            ]
          },
          'onsetAge': {
            'extension': [
              {
                'valueCodeableConcept': {
                  'coding': [
                    {
                      'system': 'http://snomed.info/sct',
                      'code': '26175008'
                    }
                  ]
                },
                'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/precision'
              }
            ],
            'value': 15,
            'system': 'http://unitsofmeasure.org',
            'code': 'a'
          },
          'note': [
            {
              'text': 'Cancer is common in the family'
            }
          ]
        }
      ]
    }.freeze
  end
end
