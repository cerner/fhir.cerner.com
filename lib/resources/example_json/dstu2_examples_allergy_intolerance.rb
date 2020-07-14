# frozen_string_literal: true

module Cerner
  module Resources

    DSTU2_ALLERGY_INTOLERANCE_RESOURCE ||= {
      'resourceType': 'AllergyIntolerance',
      'id': '12760025',
      'meta': {
        'versionId': '12760025',
        'lastUpdated': '2020-03-04T20:16:02.000Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div><p><b>Allergy Intolerance</b></p><p><b>Patient</b>: SMART, SANDY A</p><p><b>Allergy</b>: Egg'\
               '</p><p><b>Status</b>: Active</p><p><b>Criticality</b>: High Risk</p><p><b>Category</b>: Food</p>'\
               '<p><b>Reactions</b>: Breathing abnormal</p><p><b>Onset</b>: Dec 2019</p></div>'
      },
      'onset': '2019-12',
      'recordedDate': '2020-03-04T14:16:02.000-06:00',
      'patient': {
        'reference': 'Patient/12742399',
        'display': 'SMART, SANDY A'
      },
      'substance': {
        'coding': [
          {
            'system': 'http://snomed.info/sct',
            'code': '102263004',
            'display': 'Eggs (edible) (substance)',
            'userSelected': false
          }
        ],
        'text': 'Egg'
      },
      'status': 'active',
      'criticality': 'CRITH',
      'type': 'allergy',
      'category': 'food',
      'reaction': [
        {
          'id': '12760027',
          'manifestation': [
            {
              'coding': [
                {
                  'system': 'http://snomed.info/sct',
                  'code': '386813002',
                  'display': 'Abnormal breathing (finding)',
                  'userSelected': false
                }
              ],
              'text': 'Breathing abnormal'
            }
          ]
        }
      ]
    }.freeze

    DSTU2_ALLERGY_INTOLERANCE_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '7c99ef7b-3d34-40af-a86e-426375329d7b',
      'type': 'searchset',
      'total': 2,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/AllergyIntolerance'\
                 '?patient=12742399'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/AllergyIntolerance'\
                     '/12760019',
          'resource': {
            'resourceType': 'AllergyIntolerance',
            'id': '12760019',
            'meta': {
              'versionId': '12760019',
              'lastUpdated': '2020-03-04T20:15:37.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div><p><b>Allergy Intolerance</b></p><p><b>Patient</b>: SMART, SANDY A</p>'\
                     '<p><b>Allergy</b>: acetaminophen</p><p><b>Status</b>: Active</p>'\
                     '<p><b>Criticality</b>: High Risk</p><p><b>Reactions</b>: Rash</p>'\
                     '<p><b>Onset</b>: Dec 2019</p></div>'
            },
            'onset': '2019-12',
            'recordedDate': '2020-03-04T14:15:37.000-06:00',
            'patient': {
              'reference': 'Patient/12742399',
              'display': 'SMART, SANDY A'
            },
            'substance': {
              'coding': [
                {
                  'system': 'http://www.nlm.nih.gov/research/umls/rxnorm',
                  'code': '161',
                  'display': 'Acetaminophen',
                  'userSelected': false
                }
              ],
              'text': 'acetaminophen'
            },
            'status': 'active',
            'criticality': 'CRITH',
            'reaction': [
              {
                'id': '12760021',
                'manifestation': [
                  {
                    'coding': [
                      {
                        'system': 'http://snomed.info/sct',
                        'code': '271807003',
                        'display': 'Eruption of skin (disorder)',
                        'userSelected': false
                      }
                    ],
                    'text': 'Rash'
                  }
                ]
              }
            ]
          }
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/AllergyIntolerance'\
                     '/12760025',
          'resource': DSTU2_ALLERGY_INTOLERANCE_RESOURCE
        }
      ]
    }.freeze

    DSTU2_ALLERGY_INTOLERANCE_BUNDLE_BY_STATUS ||= {
      'resourceType': 'Bundle',
      'id': 'fb2804ce-a379-4ae0-ae48-a608787f83f1',
      'type': 'searchset',
      'total': 2,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/AllergyIntolerance'\
                 '?patient=12742399&status=active'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/AllergyIntolerance'\
                     '/12760025',
          'resource': DSTU2_ALLERGY_INTOLERANCE_RESOURCE
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/AllergyIntolerance'\
                     '/12760019',
          'resource': {
            'resourceType': 'AllergyIntolerance',
            'id': '12760019',
            'meta': {
              'versionId': '12760019',
              'lastUpdated': '2020-03-04T20:15:37.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div><p><b>Allergy Intolerance</b></p><p><b>Patient</b>: SMART, SANDY A</p>'\
                     '<p><b>Allergy</b>: acetaminophen</p><p><b>Status</b>: Active</p><p><b>Criticality'\
                     '</b>: High Risk</p><p><b>Reactions</b>: Rash</p><p><b>Onset</b>: Dec 2019</p></div>'
            },
            'onset': '2019-12',
            'recordedDate': '2020-03-04T14:15:37.000-06:00',
            'patient': {
              'reference': 'Patient/12742399',
              'display': 'SMART, SANDY A'
            },
            'substance': {
              'coding': [
                {
                  'system': 'http://www.nlm.nih.gov/research/umls/rxnorm',
                  'code': '161',
                  'display': 'Acetaminophen',
                  'userSelected': false
                }
              ],
              'text': 'acetaminophen'
            },
            'status': 'active',
            'criticality': 'CRITH',
            'reaction': [
              {
                'id': '12760021',
                'manifestation': [
                  {
                    'coding': [
                      {
                        'system': 'http://snomed.info/sct',
                        'code': '271807003',
                        'display': 'Eruption of skin (disorder)',
                        'userSelected': false
                      }
                    ],
                    'text': 'Rash'
                  }
                ]
              }
            ]
          }
        }
      ]
    }.freeze

    DSTU2_ALLERGY_INTOLERANCE_BUNDLE_BY_ID ||= {
      'resourceType': 'Bundle',
      'id': 'f458542b-3e85-4930-949c-606f0941510e',
      'type': 'searchset',
      'total': 1,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/AllergyIntolerance'\
                 '?_id=12760025'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/AllergyIntolerance'\
                     '/12760025',
          'resource': DSTU2_ALLERGY_INTOLERANCE_RESOURCE
        }
      ]
    }.freeze

    DSTU2_ALLERGY_INTOLERANCE_CREATE ||= {
      'resourceType': 'AllergyIntolerance',
      'category': 'medication',
      'criticality': 'CRITL',
      'recordedDate': '2017-02-28T15:03:00-06:00',
      'status': 'active',
      'type': 'allergy',
      'onset': '2015-12-15T00:00:00Z',
      'patient': {
        'reference': 'Patient/12742399'
      },
      'reporter': {
        'reference': 'Patient/12742399'
      },
      'recorder': {
        'reference': 'Practitioner/683925'
      },
      'reaction': [
        {
          'manifestation': [
            {
              'text': 'Hives'
            }
          ]
        }
      ],
      'note': {
        'authorReference': {
          'reference': 'Practitioner/683925'
        },
        'time': '2017-02-28T09:03:00Z',
        'text': 'Note 1'
      },
      'substance': {
        'coding': [
          {
            'system': 'http://www.nlm.nih.gov/research/umls/rxnorm',
            'code': '3498'
          }
        ]
      }
    }.freeze

    DSTU2_ALLERGY_INTOLERANCE_UPDATE ||= {
      'resourceType': 'AllergyIntolerance',
      'id': '12760025',
      'meta': {
        'versionId': '12760025',
        'lastUpdated': '2020-03-04T20:16:02.000Z'
      },
      'contained': [
        {
          'resourceType': 'Practitioner',
          'id': '638994',
          'practitionerRole': [
            {
              'role': {
                'coding': [
                  {
                    'system': 'http://hl7.org/fhir/practitioner-role',
                    'code': 'doctor',
                    'display': 'Doctor'
                  }
                ],
                'text': 'Doctor'
              }
            }
          ]
        }
      ],
      'onset': '2020-2',
      'recordedDate': '2020-05-04T14:16:02.000-06:00',
      'patient': {
        'reference': 'Patient/12742399'
      },
      'substance': {
        'coding': [
          {
            'system': 'http://snomed.info/sct',
            'code': '102263004',
            'display': 'Eggs (edible) (substance)',
            'userSelected': false
          }
        ],
        'text': 'Egg'
      },
      'status': 'active',
      'criticality': 'CRITH',
      'category': 'food',
      'reaction': [
        {
          'id': '3363737',
          'manifestation': [
            {
              'coding': [
                {
                  'system': 'http://snomed.info/sct',
                  'code': '79962008',
                  'display': 'Diffuse spasm of esophagus (disorder)',
                  'userSelected': false
                }
              ],
              'text': 'Barsony-Teschendorf syndrome'
            }
          ]
        }
      ]
    }.freeze

  end
end
