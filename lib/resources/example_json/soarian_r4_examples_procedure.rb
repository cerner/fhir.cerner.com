# frozen_string_literal: true

module Cerner
  module Resources

    SOARIAN_R4_PROCEDURE_READ_BY_ID ||= {
      "resourceType": 'Procedure',
      "id": 'A879904FD2FE4B2D90C89FDA84E1285F.8008',
      "meta": {
        "lastUpdated": '2021-03-02T15:48:45-05:00'
      },
      "status": 'completed',
      "code": {
        "coding": [
          {
            "system": 'http://snomed.info/sct',
            "code": '10847001',
            "display": 'Bronchoscopy'
          }
        ],
        "text": 'Bronchoscopy'
      },
      "subject": {
        "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
        "display": 'Mcgovern,Astrid-Anna Santiago'
      },
      "encounter": {
        "reference": 'Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019',
        "display": 'Inferno,Initial'
      },
      "performedDateTime": '2020-11-13T02:02:00-05:00',
      "focalDevice": [
        {
          "action": {
            "coding": [
              {
                "system": 'http://snomed.info/sct',
                "code": '257867005',
                "display": 'Insertion - action'
              }
            ]
          },
          "manipulated": {
            "reference": 'Device/A879904FD2FE4B2D90C89FDA84E1285F.9005',
            "display": '700803007 Orthopedic prosthesis implantation instrument, reusable (physical object)'
          }
        },
        {
          "action": {
            "coding": [
              {
                "system": 'http://snomed.info/sct',
                "code": '257867005',
                "display": 'Insertion - action'
              }
            ]
          },
          "manipulated": {
            "reference": 'Device/A879904FD2FE4B2D90C89FDA84E1285F.13004',
            "display": '714547008 Bone matrix implant, human derived (physical object)'
          }
        }
      ],
      "text": {
        "status": 'generated',
        # rubocop:disable Layout/LineLength
        "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Procedure</b><br /><b>Patient</b>:Mcgovern,Astrid-Anna Santiago;<br /><b>Encounter</b>:Inferno,Initial;<br /><b>Status</b>:completed;<br /><b>Code</b>:<br /><b>system</b>:http://snomed.info/sct <b>code</b>:10847001 <b>display</b>:Bronchoscopy;<br /><b>Performed</b>:2020-11-13T02:02:00-05:00;<br /><b>Focal Device</b>: <br /><b>Action</b>: <b>system</b>:http://snomed.info/sct <b>code</b>:257867005 <b>display</b>:Insertion - action;<br /><b>Manipulated</b>:Device/A879904FD2FE4B2D90C89FDA84E1285F.9005,700803007 Orthopedic prosthesis implantation instrument, reusable (physical object);<br /><b>Action</b>: <b>system</b>:http://snomed.info/sct <b>code</b>:257867005 <b>display</b>:Insertion - action;<br /><b>Manipulated</b>:Device/A879904FD2FE4B2D90C89FDA84E1285F.13004,714547008 Bone matrix implant, human derived (physical object);<br /></div>'
        # rubocop:enable Layout/LineLength
      }
    }.freeze

    SOARIAN_R4_PROCEDURE_SEARCH_BY_ID_ENTRY ||= {
      "resourceType": 'Bundle',
      "id": '5da7c4ff-3aec-4ade-9b5b-07d6964d7f65',
      "type": 'searchset',
      "timestamp": '2021-10-04T01:50:25-04:00',
      "entry": [
        {
          "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Procedure/A879904FD2FE4B2D90C89FDA84E1285F.8008',
          "search": {
            "mode": 'match'
          },
          "resource": {
            "resourceType": 'Procedure',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.8008',
            "meta": {
              "lastUpdated": '2021-03-02T15:48:45-05:00'
            },
            "status": 'completed',
            "code": {
              "coding": [
                {
                  "system": 'http://snomed.info/sct',
                  "code": '10847001',
                  "display": 'Bronchoscopy'
                }
              ],
              "text": 'Bronchoscopy'
            },
            "subject": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid-Anna Santiago'
            },
            "encounter": {
              "reference": 'Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019',
              "display": 'Inferno,Initial'
            },
            "performedDateTime": '2020-11-13T02:02:00-05:00',
            "focalDevice": [
              {
                "action": {
                  "coding": [
                    {
                      "system": 'http://snomed.info/sct',
                      "code": '257867005',
                      "display": 'Insertion - action'
                    }
                  ]
                },
                "manipulated": {
                  "reference": 'Device/A879904FD2FE4B2D90C89FDA84E1285F.9005',
                  "display": '700803007 Orthopedic prosthesis implantation instrument, reusable (physical object)'
                }
              },
              {
                "action": {
                  "coding": [
                    {
                      "system": 'http://snomed.info/sct',
                      "code": '257867005',
                      "display": 'Insertion - action'
                    }
                  ]
                },
                "manipulated": {
                  "reference": 'Device/A879904FD2FE4B2D90C89FDA84E1285F.13004',
                  "display": '714547008 Bone matrix implant, human derived (physical object)'
                }
              }
            ],
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Procedure</b><br /><b>Patient</b>:Mcgovern,Astrid-Anna Santiago;<br /><b>Encounter</b>:Inferno,Initial;<br /><b>Status</b>:completed;<br /><b>Code</b>:<br /><b>system</b>:http://snomed.info/sct <b>code</b>:10847001 <b>display</b>:Bronchoscopy;<br /><b>Performed</b>:2020-11-13T02:02:00-05:00;<br /><b>Focal Device</b>: <br /><b>Action</b>: <b>system</b>:http://snomed.info/sct <b>code</b>:257867005 <b>display</b>:Insertion - action;<br /><b>Manipulated</b>:Device/A879904FD2FE4B2D90C89FDA84E1285F.9005,700803007 Orthopedic prosthesis implantation instrument, reusable (physical object);<br /><b>Action</b>: <b>system</b>:http://snomed.info/sct <b>code</b>:257867005 <b>display</b>:Insertion - action;<br /><b>Manipulated</b>:Device/A879904FD2FE4B2D90C89FDA84E1285F.13004,714547008 Bone matrix implant, human derived (physical object);<br /></div>'
              # rubocop:enable Layout/LineLength
            }
          }
        }
      ],
      "link": [
        {
          "relation": 'self',
          "url": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Procedure?patient=A879904FD2FE4B2D90C89FDA84E1285F'
        }
      ]
    }.freeze

    SOARIAN_R4_PROCEDURE_SEARCH_BY_PT_ENTRY ||= {
      "resourceType": 'Bundle',
      "id": 'ae379b20-58a6-4b85-9eff-be232222ea7a',
      "type": 'searchset',
      "timestamp": '2021-02-24T18:31:59-05:00',
      "entry": [
        {
          "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Procedure/A879904FD2FE4B2D90C89FDA84E1285F.8008',
          "search": {
            "mode": 'match'
          },
          "resource": {
            "resourceType": 'Procedure',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.8008',
            "meta": {
              "lastUpdated": '2021-03-02T15:48:45-05:00'
            },
            "status": 'completed',
            "code": {
              "coding": [
                {
                  "system": 'http://snomed.info/sct',
                  "code": '10847001',
                  "display": 'Bronchoscopy'
                }
              ],
              "text": 'Bronchoscopy'
            },
            "subject": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid-Anna Santiago'
            },
            "encounter": {
              "reference": 'Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019',
              "display": 'Inferno,Initial'
            },
            "performedDateTime": '2020-11-13T02:02:00-05:00',
            "focalDevice": [
              {
                "action": {
                  "coding": [
                    {
                      "system": 'http://snomed.info/sct',
                      "code": '257867005',
                      "display": 'Insertion - action'
                    }
                  ]
                },
                "manipulated": {
                  "reference": 'Device/A879904FD2FE4B2D90C89FDA84E1285F.9005',
                  "display": '700803007 Orthopedic prosthesis implantation instrument, reusable (physical object)'
                }
              },
              {
                "action": {
                  "coding": [
                    {
                      "system": 'http://snomed.info/sct',
                      "code": '257867005',
                      "display": 'Insertion - action'
                    }
                  ]
                },
                "manipulated": {
                  "reference": 'Device/A879904FD2FE4B2D90C89FDA84E1285F.13004',
                  "display": '714547008 Bone matrix implant, human derived (physical object)'
                }
              }
            ],
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Procedure</b><br /><b>Patient</b>:Mcgovern,Astrid-Anna Santiago;<br /><b>Encounter</b>:Inferno,Initial;<br /><b>Status</b>:completed;<br /><b>Code</b>:<br /><b>system</b>:http://snomed.info/sct <b>code</b>:10847001 <b>display</b>:Bronchoscopy;<br /><b>Performed</b>:2020-11-13T02:02:00-05:00;<br /><b>Focal Device</b>: <br /><b>Action</b>: <b>system</b>:http://snomed.info/sct <b>code</b>:257867005 <b>display</b>:Insertion - action;<br /><b>Manipulated</b>:Device/A879904FD2FE4B2D90C89FDA84E1285F.9005,700803007 Orthopedic prosthesis implantation instrument, reusable (physical object);<br /><b>Action</b>: <b>system</b>:http://snomed.info/sct <b>code</b>:257867005 <b>display</b>:Insertion - action;<br /><b>Manipulated</b>:Device/A879904FD2FE4B2D90C89FDA84E1285F.13004,714547008 Bone matrix implant, human derived (physical object);<br /></div>'
              # rubocop:enable Layout/LineLength
            }
          }
        }
      ],
      "link": [
        {
          "relation": 'self',
          "url": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Procedure?patient=A879904FD2FE4B2D90C89FDA84E1285F'
        }
      ]
    }.freeze

    SOARIAN_R4_PROCEDURE_ERROR ||= {
      "resourceType": 'Procedure',
      "id": '7DD361F7EB43448690AABCCC45E62285.4010',
      "meta": {
        "lastUpdated": '2020-07-16T20:32:34-04:00'
      },
      "status": 'entered-in-error',
      "code": {
        "coding": [
          {
            "system": 'http://snomed.info/sct',
            "code": '429211003',
            "display": 'Procedure for Atrial Fib'
          }
        ],
        "text": 'Procedure for Atrial Fib'
      },
      "subject": {
        "reference": 'Patient/7DD361F7EB43448690AABCCC45E62285',
        "display": 'Lansford,Mukesh-Procedure Dianne'
      },
      "encounter": {
        "reference": 'Encounter/7DD361F7EB43448690AABCCC45E62285.47027',
        "display": 'City General,Initial'
      },
      "performedDateTime": '2020-07-16T02:55:00-04:00',
      "focalDevice": [
        {
          "action": {
            "coding": [
              {
                "system": 'http://snomed.info/sct',
                "code": '386746003',
                "display": 'Maintenance - action'
              }
            ]
          },
          "manipulated": {
            "reference": 'Device/7DD361F7EB43448690AABCCC45E62285.3007'
          }
        }
      ],
      "text": {
        "status": 'generated',
        # rubocop:disable Layout/LineLength
        "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Procedure</b><br /><b>Patient</b>:Lansford,Mukesh-Procedure Dianne;<br /><b>Encounter</b>:City General,Initial;<br /><b>Status</b>:entered-in-error;<br /><b>Code</b>:<br /><b>system</b>:http://snomed.info/sct <b>code</b>:429211003 <b>display</b>:Procedure for Atrial Fib;<br /><b>Performed</b>:2020-07-16T02:55:00-04:00;<br /><b>Focal Device</b>: <br /><b>Action</b>: <b>system</b>:http://snomed.info/sct <b>code</b>:386746003 <b>display</b>:Maintenance - action;<br /><b>Manipulated</b>:Device/7DD361F7EB43448690AABCCC45E62285.3007;<br /></div>'
        # rubocop:enable Layout/LineLength
      }
    }.freeze

    SOARIAN_R4_PROCEDURE_STOPPED ||= {
      "resourceType": 'Procedure',
      "id": '7DD361F7EB43448690AABCCC45E62285.503',
      "meta": {
        "lastUpdated": '2020-05-20T16:42:12-04:00'
      },
      "status": 'stopped',
      "code": {
        "coding": [
          {
            "system": 'http://snomed.info/sct',
            "code": '428663009',
            "display": 'Ablation of AV Node'
          }
        ],
        "text": 'Ablation of AV Node'
      },
      "subject": {
        "reference": 'Patient/7DD361F7EB43448690AABCCC45E62285',
        "display": 'Lansford,Mukesh-Procedure Dianne'
      },
      "encounter": {
        "reference": 'Encounter/7DD361F7EB43448690AABCCC45E62285.38021',
        "display": 'City General,Initial'
      },
      "performedDateTime": '2021-05-20T03:57:00-04:00',
      "focalDevice": [
        {
          "action": {
            "coding": [
              {
                "system": 'http://snomed.info/sct',
                "code": '257867005',
                "display": 'Insertion - action'
              }
            ]
          },
          "manipulated": {
            "reference": 'Device/7DD361F7EB43448690AABCCC45E62285.1003'
          }
        }
      ],
      "text": {
        "status": 'generated',
        # rubocop:disable Layout/LineLength
        "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Procedure</b><br /><b>Patient</b>:Lansford,Mukesh-Procedure Dianne;<br /><b>Encounter</b>:City General,Initial;<br /><b>Status</b>:stopped;<br /><b>Code</b>:<br /><b>system</b>:http://snomed.info/sct <b>code</b>:428663009 <b>display</b>:Ablation of AV Node;<br /><b>Performed</b>:2021-05-20T03:57:00-04:00;<br /><b>Focal Device</b>: <br /><b>Action</b>: <b>system</b>:http://snomed.info/sct <b>code</b>:257867005 <b>display</b>:Insertion - action;<br /><b>Manipulated</b>:Device/7DD361F7EB43448690AABCCC45E62285.1003;<br /></div>'
        # rubocop:enable Layout/LineLength
      }
    }.freeze
  end
end
