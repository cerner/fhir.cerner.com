# frozen_string_literal: true

module Cerner
  module Resources

    R4_PROCEDURE_ENTRY ||= {
      'resourceType': 'Procedure',
      'id': '2572382193',
      'meta': {
        'versionId': '0',
        'lastUpdated': '2020-06-11T04:02:54Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Procedure</b></p><p><b>Patient</b>: SMART, NANCY</p>'\
               '<p><b>Procedure</b>: Appendectomy;</p><p><b>Date</b>: 2002</p><p><b>Status</b>: Completed</p>'\
               '<p><b>Recorder</b>: Cerner Test, Physician - Women&apos;s Health Cerner</p></div>'
      },
      'status': 'completed',
      'code': {
        'coding': [
          {
            'system': 'http://www.ama-assn.org/go/cpt',
            'code': '44950',
            'display': 'Appendectomy;',
            'userSelected': true
          }
        ],
        'text': 'Appendectomy;'
      },
      'subject': {
        'reference': 'Patient/12724066',
        'display': 'SMART, NANCY'
      },
      'encounter': {
        'reference': 'Encounter/97953477'
      },
      'performedDateTime': '2002',
      'recorder': {
        'reference': 'Practitioner/4122630',
        'display': "Cerner Test, Physician - Women's Health Cerner"
      }
    }.freeze

    R4_PROCEDURE_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '3b3b1ce0-3b6e-4a41-bbb4-9696e2f4b8ed',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Procedure?patient=12724066'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Procedure/2572382193',
          'resource': R4_PROCEDURE_ENTRY
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Procedure/2572383421',
          'resource': {
            'resourceType': 'Procedure',
            'id': '2572383421',
            'meta': {
              'versionId': '0',
              'lastUpdated': '2020-06-16T21:09:27Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Procedure</b></p><p><b>Patient</b>: SMART, NANCY'\
                     '</p><p><b>Procedure</b>: Coronary artery bypass, using arterial graft(s); 2 coronary arterial '\
                     'grafts</p><p><b>Date</b>: 2018</p><p><b>Status</b>: Completed</p><p><b>Recorder</b>: Cerner '\
                     'Test, Physician - Oncology Cerner</p></div>'
            },
            'status': 'completed',
            'code': {
              'coding': [
                {
                  'system': 'http://www.ama-assn.org/go/cpt',
                  'code': '33534',
                  'display': 'Coronary artery bypass, using arterial graft(s); two coronary arterial grafts',
                  'userSelected': true
                }
              ],
              'text': 'Coronary artery bypass, using arterial graft(s); 2 coronary arterial grafts'
            },
            'subject': {
              'reference': 'Patient/12724066',
              'display': 'SMART, NANCY'
            },
            'encounter': {
              'reference': 'Encounter/97953477'
            },
            'performedDateTime': '2018',
            'recorder': {
              'reference': 'Practitioner/763923',
              'display': 'Cerner Test, Physician - Oncology Cerner'
            }
          }
        }
      ]
    }.freeze

    R4_PROCEDURE_PATIENT_ENTRY ||= {
      "resourceType": 'Procedure',
      "id": '2572581295',
      "meta": {
        "versionId": '0',
        "lastUpdated": '2020-09-25T20:13:56Z'
      },
      "text": {
        "status": 'generated',
        "div": '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Procedure</b></p><p><b>Patient</b>: SMART, NANCY</p>'\
        '<p><b>Procedure</b>: Adenoid excision (text)</p><p><b>Date</b>: Apr  5, 2019</p><p><b>Status</b>: Completed'\
        '</p><p><b>Location</b>: Baseline East</p><p><b>Recorder</b>: SYSTEM, SYSTEM Cerner</p>'\
        '<p><b>Performer</b>:</p><ul><li>Cerner Test, Physician - Women&apos;s Health Cerner</li></ul></div>'
      },
      "status": 'completed',
      "code": {
        "coding": [
          {
            "system": 'http://snomed.info/sct',
            "code": '119954001',
            "display": 'Adenoid excision (procedure)',
            "userSelected": true
          }
        ],
        "text": 'Adenoid excision (text)'
      },
      "subject": {
        "reference": 'Patient/12724066',
        "display": 'SMART, NANCY'
      },
      "encounter": {
        "reference": 'Encounter/97953477'
      },
      "performedDateTime": '2019-04-05',
      "recorder": {
        "reference": 'Practitioner/1',
        "display": 'SYSTEM, SYSTEM Cerner'
      },
      "performer": [
        {
          "actor": {
            "reference": 'Practitioner/4122630',
            "display": "Cerner Test, Physician - Women's Health Cerner"
          }
        }
      ],
      "location": {
        "display": 'Baseline East'
      },
      "note": [
        {
          "authorReference": {
            "reference": 'Practitioner/4122630',
            "display": "Cerner Test, Physician - Women's Health Cerner"
          },
          "time": '2019-04-05T20:21:46Z',
          "text": 'Procedure comment'
        }
      ]
    }.freeze

    R4_PROCEDURE_PATIENT_BUNDLE ||= {
      "resourceType": 'Bundle',
      "id": '53ac99d1-c76b-4a07-90f8-73d13a01459b',
      "type": 'searchset',
      "link": [
        {
          "relation": 'self',
          "url": 'http://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Procedure?patient=12724066'
        }
      ],
      "entry": [
        {
          "fullUrl": 'http://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Procedure/2572581295',
          "resource": R4_PROCEDURE_PATIENT_ENTRY
        },
        {
          "fullUrl": 'http://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Procedure/2572476121',
          "resource": {
            "resourceType": 'Procedure',
            "id": '2572476121',
            "meta": {
              "versionId": '0',
              "lastUpdated": '2020-08-24T08:42:34Z'
            },
            "text": {
              "status": 'generated',
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Procedure</b></p>'\
              '<p><b>Patient</b>: SMART, NANCY</p><p><b>Procedure</b>: Adenoid excision (text)</p>'\
              '<p><b>Status</b>: Completed</p><p><b>Recorder</b>: SYSTEM, SYSTEM Cerner</p></div>'
            },
            "status": 'completed',
            "code": {
              "coding": [
                {
                  "system": 'http://snomed.info/sct',
                  "code": '119954001',
                  "display": 'Adenoid excision (procedure)',
                  "userSelected": true
                }
              ],
              "text": 'Adenoid excision (text)'
            },
            "subject": {
              "reference": 'Patient/12724066',
              "display": 'SMART, NANCY'
            },
            "encounter": {
              "reference": 'Encounter/97953477'
            },
            "_performedDateTime": {
              "extension": [
                {
                  "valueCode": 'unknown',
                  "url": 'http://hl7.org/fhir/StructureDefinition/data-absent-reason'
                }
              ]
            },
            "recorder": {
              "reference": 'Practitioner/1',
              "display": 'SYSTEM, SYSTEM Cerner'
            }
          }
        }
      ]
    }.freeze

    R4_PROCEDURE_ENTERED_IN_ERROR_STATUS ||= {
      "resourceType": 'Procedure',
      "id": '1788134987',
      "meta": {
        "versionId": '0',
        "lastUpdated": '2019-09-05T22:38:38Z'
      },
      "text": {
        "status": 'generated',
        "div": '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Procedure</b></p>'\
        '<p><b>Patient</b>: MARSTON, JACK</p><p><b>Procedure</b>: Error</p>'\
        '<p><b>Status</b>: Entered in Error</p></div>'
      },
      "status": 'entered-in-error',
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
      "subject": {
        "reference": 'Patient/166045489',
        "display": 'MARSTON, JACK'
      }
    }.freeze

    R4_PROCEDURE_CREATE ||= {
      'resourceType': 'Procedure',
      'status': 'completed',
      'subject': {
        'reference': 'Patient/12724066'
      },
      'code': {
        'coding': [
          {
            'system': 'http://snomed.info/sct',
            'code': '119954001',
            'display': 'Adenoid excision (procedure)',
            'userSelected': true
          }
        ],
        'text': 'Adenoid excision (text)'
      },
      'encounter': {
        'reference': 'Encounter/97953477'
      },
      'location': {
        'display': 'Baseline East'
      },
      'performedDateTime': '2019-04-05T20:21:46Z',
      'performer': [
        {
          'function': {
            'coding': [
              {
                'system': 'http://snomed.info/sct',
                'code': '223366009',
                'display': 'Healthcare professional (occupation)',
                'userSelected': true
              }
            ],
            'text': 'Healthcare professional (occupation)'
          },
          'actor': {
            'reference': 'Practitioner/4122630'
          }
        }
      ],
      'note': [
        {
          'text': 'Procedure comment',
          'time': '2019-04-05T20:21:46Z',
          'authorReference': {
            'reference': 'Practitioner/4122630'
          }
        }
      ]
    }.freeze

    R4_PROCEDURE_REVINCLUDE_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': 'e448772d-7265-48b2-a942-99002b44337d',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-ehr.cerner.com/r4/eb2384f8-839e-4c6e-8b29-18e71db1a0b1/Procedure?patient=744104&_revinclude=Provenance%3Atarget'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/eb2384f8-839e-4c6e-8b29-18e71db1a0b1/Procedure/570007845',
          'resource': {
            'resourceType': 'Procedure',
            'id': '570007845',
            'meta': {
              'versionId': '0',
              'lastUpdated': '2021-05-28T15:02:50Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Procedure</b></p><p><b>Patient'\
                     '</b>: HEATHERJSMITH</p><p><b>Procedure</b>: Adenoid excision (text)</p><p><b>Date'\
                     '</b>: Apr  5, 2019</p><p><b>Status</b>: Completed</p><p><b>Location</b>: Baseline East'\
                     '</p><p><b>Recorder</b>: Powerchart, User</p><p><b>Performer</b>:</p><ul><li>Smith MD, John'\
                     '</li></ul></div>'
            },
            'status': 'completed',
            'code': {
              'coding': [
                {
                  'system': 'http://snomed.info/sct',
                  'code': '119954001',
                  'display': 'Adenoid excision (procedure)',
                  'userSelected': true
                }
              ],
              'text': 'Adenoid excision (text)'
            },
            'subject': {
              'reference': 'Patient/744104',
              'display': 'HEATHERJSMITH'
            },
            'encounter': {
              'reference': 'Encounter/18245662'
            },
            'performedDateTime': '2019-04-05',
            'recorder': {
              'reference': 'Practitioner/1255969',
              'display': 'Powerchart, User'
            },
            'performer': [
              {
                'actor': {
                  'reference': 'Practitioner/2523932',
                  'display': 'Smith MD, John'
                }
              }
            ],
            'location': {
              'display': 'Baseline East'
            },
            'note': [
              {
                'authorReference': {
                  'reference': 'Practitioner/2523932',
                  'display': 'Smith MD, John'
                },
                'time': '2019-04-05T20:21:46Z',
                'text': 'Procedure comment'
              }
            ]
          },
          'search': {
            'mode': 'match'
          }
        },
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/eb2384f8-839e-4c6e-8b29-18e71db1a0b1/Provenance/proc-13511261',
          'resource': {
            'resourceType': 'Provenance',
            'id': 'proc-13511261',
            'meta': {
              'versionId': '13511261',
              'lastUpdated': '2021-05-28T10:09:59-05:00'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Provenance</b></p><p><b>Target</b>:</p><ul>'\
              '<li>Procedure/570007845</li></ul><p><b>Recorded</b>: Oct 25, 2019  9:57 A.M. CDT</p><p><b>Agents</b>'\
              ':</p><dl><dt>Unknown</dt><dd><b>Agent Type</b>: Transmitter</dd><dd><b>Agent Role</b>: Source</dd></dl>'\
              '<p><b>Entity Source</b>: DocumentReference/S-201</p></div>'
            },
            'target': [
              {
                'reference': 'Procedure/570007845'
              }
            ],
            'recorded': '2019-10-25T09:57:43-05:00',
            'agent': [
              {
                'type': {
                  'coding': [
                    {
                      'system': 'http://hl7.org/fhir/us/core/CodeSystem/us-core-provenance-participant-type',
                      'code': 'transmitter'
                    }
                  ],
                  'text': 'Transmitter'
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
                  'display': 'Unknown'
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
  end
end
