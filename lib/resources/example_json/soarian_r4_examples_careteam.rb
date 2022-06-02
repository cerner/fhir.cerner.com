# frozen_string_literal: true

module Cerner
  module Resources

    SOARIAN_R4_CARETEAM_SEARCH_BY_PT ||= {
      "resourceType": 'Bundle',
      "id": 'febd05c0-d891-4f72-b39b-1b41900d646e',
      "type": 'searchset',
      "timestamp": '2021-03-15T12:58:14-04:00',
      "entry": [
        {
          "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/CareTeam/A879904FD2FE4B2D90C89FDA84E1285F.LCC',
          "resource": {
            "resourceType": 'CareTeam',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.LCC',
            "meta": {
              "lastUpdated": '2020-11-11T20:50:58-05:00'
            },
            "status": 'active',
            "subject": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid Santiago'
            },
            "category": [
              {
                "coding": [
                  {
                    "system": 'http://loinc.org',
                    "code": 'LA28865-6',
                    "display": 'Longitudinal care-coordination focused care team'
                  }
                ]
              }
            ],
            "participant": [
              {
                "role": [
                  {
                    "text": 'Primary Physician'
                  }
                ],
                "member": {
                  "reference": 'Practitioner/A06BB34813644589BA7E50D8DDC8EFAA',
                  "display": 'McFadden,John'
                }
              }
            ],
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>CareTeam</b><br /><b>Patient</b>:Mcgovern,Astrid Santiago<br /><b>Status</b>:active<br /><b>Category</b>:<b>System</b>:http://loinc.org <b>Code</b>:LA28865-6 <b>Display</b>:Longitudinal care-coordination focused care team<br /><b>Role</b>:<b>Text</b>:Primary Physician<br /><b>CareTeam Member</b>:McFadden,John<br /><br /></div>'
              # rubocop:enable Layout/LineLength
            }
          }
        },
        {
          "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/CareTeam/A879904FD2FE4B2D90C89FDA84E1285F.ENC.29019',
          "resource": {
            "resourceType": 'CareTeam',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.ENC.29019',
            "meta": {
              "lastUpdated": '2020-11-11T20:53:17-05:00'
            },
            "status": 'active',
            "subject": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid Santiago'
            },
            "encounter": {
              "reference": 'Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019',
              "display": 'Inferno,Initial'
            },
            "category": [
              {
                "coding": [
                  {
                    "system": 'http://loinc.org',
                    "code": 'LA27976-2',
                    "display": 'Encounter-focused care team'
                  }
                ]
              }
            ],
            "participant": [
              {
                "role": [
                  {
                    "coding": [
                      {
                        "system": 'http://nucc.org/provider-taxonomy',
                        "code": '207QA0000X',
                        "display": 'Family Medicine'
                      }
                    ],
                    "text": 'Consulting Doctor'
                  }
                ],
                "member": {
                  "reference": 'Practitioner/4F69EC72C5AA48988E5E73832887E634',
                  "display": 'Aguilar,Melva Delaine'
                }
              },
              {
                "role": [
                  {
                    "text": 'Consulting Doctor'
                  }
                ],
                "member": {
                  "reference": 'Practitioner/D8A9F3EADBE041688ADD843BBD98CAB0',
                  "display": "O'Reilly,Rose"
                }
              },
              {
                "role": [
                  {
                    "coding": [
                      {
                        "system": 'http://nucc.org/provider-taxonomy',
                        "code": '208D00000X',
                        "display": 'General Practice'
                      }
                    ],
                    "text": 'Admitting Doctor'
                  }
                ],
                "member": {
                  "reference": 'Practitioner/DF2821C049CC47E6A37C6B796DF4CF1D',
                  "display": 'Godziszewski,Janet Kris'
                }
              },
              {
                "role": [
                  {
                    "coding": [
                      {
                        "system": 'http://nucc.org/provider-taxonomy',
                        "code": '208D00000X',
                        "display": 'General Practice'
                      }
                    ],
                    "text": 'Attending Doctor'
                  }
                ],
                "member": {
                  "reference": 'Practitioner/DF2821C049CC47E6A37C6B796DF4CF1D',
                  "display": 'Godziszewski,Janet Kris'
                }
              }
            ],
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><b>CareTeam</b><br /><b>Patient</b>:Mcgovern,Astrid Santiago<br /><b>Status</b>:active<br /><b>Encounter</b>:Inferno,Initial<br /><b>Category</b>:<b>System</b>:http://loinc.org <b>Code</b>:LA27976-2 <b>Display</b>:Encounter-focused care team<br /><b>Role</b>:<b>System</b>:http://nucc.org/provider-taxonomy <b>Code</b>:207QA0000X <b>Display</b>:Family Medicine <b>Text</b>:Consulting Doctor<br /><b>CareTeam Member</b>:Aguilar,Melva Delaine<br /><b>Role</b>:<b>Text</b>:Consulting Doctor<br /><b>CareTeam Member</b>:O'Reilly,Rose<br /><b>Role</b>:<b>System</b>:http://nucc.org/provider-taxonomy <b>Code</b>:208D00000X <b>Display</b>:General Practice <b>Text</b>:Admitting Doctor<br /><b>CareTeam Member</b>:Godziszewski,Janet Kris<br /><b>Role</b>:<b>System</b>:http://nucc.org/provider-taxonomy <b>Code</b>:208D00000X <b>Display</b>:General Practice <b>Text</b>:Attending Doctor<br /><b>CareTeam Member</b>:Godziszewski,Janet Kris<br /><br /></div>"
              # rubocop:enable Layout/LineLength
            }
          }
        }
      ],
      "link": [
        {
          "relation": 'self',
          "url": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/CareTeam?patient=A879904FD2FE4B2D90C89FDA84E1285F&_format=json'
        }
      ]
    }.freeze

    SOARIAN_R4_CARETEAM_SEARCH_BY_ID ||= {
      "resourceType": 'Bundle',
      "id": 'e38b6e4f-0696-4980-b454-91d007cd3a97',
      "type": 'searchset',
      "timestamp": '2021-03-15T13:53:58-04:00',
      "entry": [
        {
          "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/CareTeam/A879904FD2FE4B2D90C89FDA84E1285F.LCC',
          "resource": {
            "resourceType": 'CareTeam',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.LCC',
            "meta": {
              "lastUpdated": '2020-11-11T20:50:58-05:00'
            },
            "status": 'active',
            "subject": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid Santiago'
            },
            "category": [
              {
                "coding": [
                  {
                    "system": 'http://loinc.org',
                    "code": 'LA28865-6',
                    "display": 'Longitudinal care-coordination focused care team'
                  }
                ]
              }
            ],
            "participant": [
              {
                "role": [
                  {
                    "text": 'Primary Physician'
                  }
                ],
                "member": {
                  "reference": 'Practitioner/A06BB34813644589BA7E50D8DDC8EFAA',
                  "display": 'McFadden,John'
                }
              }
            ],
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>CareTeam</b><br /><b>Patient</b>:Mcgovern,Astrid Santiago<br /><b>Status</b>:active<br /><b>Category</b>:<b>System</b>:http://loinc.org <b>Code</b>:LA28865-6 <b>Display</b>:Longitudinal care-coordination focused care team<br /><b>Role</b>:<b>Text</b>:Primary Physician<br /><b>CareTeam Member</b>:McFadden,John<br /><br /></div>'
              # rubocop:enable Layout/LineLength
            }
          }
        }
      ],
      "link": [
        {
          "relation": 'self',
          "url": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/CareTeam?_id=A879904FD2FE4B2D90C89FDA84E1285F.LCC&_format=json'
        }
      ]
    }.freeze

    SOARIAN_R4_CARETEAM_READ ||= {
      "resourceType": 'CareTeam',
      "id": 'A879904FD2FE4B2D90C89FDA84E1285F.LCC',
      "meta": {
        "lastUpdated": '2020-11-11T20:50:58-05:00'
      },
      "status": 'active',
      "subject": {
        "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
        "display": 'Mcgovern,Astrid Santiago'
      },
      "category": [
        {
          "coding": [
            {
              "system": 'http://loinc.org',
              "code": 'LA28865-6',
              "display": 'Longitudinal care-coordination focused care team'
            }
          ]
        }
      ],
      "participant": [
        {
          "role": [
            {
              "text": 'Primary Physician'
            }
          ],
          "member": {
            "reference": 'Practitioner/A06BB34813644589BA7E50D8DDC8EFAA',
            "display": 'McFadden,John'
          }
        }
      ],
      "text": {
        "status": 'generated',
        # rubocop:disable Layout/LineLength
        "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>CareTeam</b><br /><b>Patient</b>:Mcgovern,Astrid Santiago<br /><b>Status</b>:active<br /><b>Category</b>:<b>System</b>:http://loinc.org <b>Code</b>:LA28865-6 <b>Display</b>:Longitudinal care-coordination focused care team<br /><b>Role</b>:<b>Text</b>:Primary Physician<br /><b>CareTeam Member</b>:McFadden,John<br /><br /></div>'
        # rubocop:enable Layout/LineLength
      }
    }.freeze
  end
end
