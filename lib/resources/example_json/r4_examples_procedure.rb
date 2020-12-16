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
        },
        {
          "fullUrl": 'http://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Procedure/2572738987',
          "resource": {
            "resourceType": 'Procedure',
            "id": '2572738987',
            "meta": {
              "versionId": '0',
              "lastUpdated": '2020-11-15T17:38:18Z'
            },
            "text": {
              "status": 'generated',
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Procedure</b></p>'\
              '<p><b>Patient</b>: SMART, NANCY</p><p><b>Procedure</b>: Advance Care Planning; first 30 minutes</p>'\
              '<p><b>Date</b>: Oct 12, 2020</p><p><b>Status</b>: Completed</p>'\
              '<p><b>Recorder</b>: PWAffirmHealth, MDCardio</p><p><b>Performer</b>:</p><ul><li>Carter, Kristin Cerner'\
              '</li></ul></div>'
            },
            "status": 'completed',
            "code": {
              "text": 'Advance Care Planning; first 30 minutes'
            },
            "subject": {
              "reference": 'Patient/12724066',
              "display": 'SMART, NANCY'
            },
            "encounter": {
              "reference": 'Encounter/97954095'
            },
            "performedDateTime": '2020-10-12',
            "recorder": {
              "reference": 'Practitioner/12743411',
              "display": 'PWAffirmHealth, MDCardio'
            },
            "performer": [
              {
                "actor": {
                  "reference": 'Practitioner/11817978',
                  "display": 'Carter, Kristin Cerner'
                }
              }
            ],
            "note": [
              {
                "authorReference": {
                  "reference": 'Practitioner/12743411',
                  "display": 'PWAffirmHealth, MDCardio'
                },
                "time": '2020-11-15T17:38:18Z',
                "text": 'Patient voluntarily discussed advance care planning with MDCardio PWAffirmHealth (on behalf of Kristin Cerner Carter) on 10/12/2020 for 16 minutes for an annual discussion.' # rubocop:disable Layout/LineLength
              }
            ]
          }
        },
        {
          "fullUrl": 'http://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Procedure/2572382193',
          "resource": {
            "resourceType": 'Procedure',
            "id": '2572382193',
            "meta": {
              "versionId": '0',
              "lastUpdated": '2020-06-11T04:02:54Z'
            },
            "text": {
              "status": 'generated',
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Procedure</b></p><p><b>Patient</b>: SMART, NANCY'\
              '</p><p><b>Procedure</b>: Appendectomy;</p><p><b>Date</b>: 2002</p><p><b>Status</b>: Completed</p>'\
              '<p><b>Recorder</b>: Cerner Test, Physician - Women&apos;s Health Cerner</p></div>'
            },
            "status": 'completed',
            "code": {
              "text": 'Appendectomy;'
            },
            "subject": {
              "reference": 'Patient/12724066',
              "display": 'SMART, NANCY'
            },
            "encounter": {
              "reference": 'Encounter/97953477'
            },
            "performedDateTime": '2002',
            "recorder": {
              "reference": 'Practitioner/4122630',
              "display": "Cerner Test, Physician - Women's Health Cerner"
            }
          }
        },
        {
          "fullUrl": 'http://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Procedure/2572571307',
          "resource": {
            "resourceType": 'Procedure',
            "id": '2572571307',
            "meta": {
              "versionId": '0',
              "lastUpdated": '2020-09-22T16:44:30Z'
            },
            "text": {
              "status": 'generated',
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Procedure</b></p>'\
              '<p><b>Patient</b>: SMART, NANCY</p>'\
              '<p><b>Procedure</b>: Application of hip spica cast; 1 and one-half spica or both legs</p>'\
              '<p><b>Date</b>: Sep 19, 2019</p><p><b>Status</b>: Completed</p>'\
              '<p><b>Recorder</b>: PWJuxly, PhysicianHosp</p></div>'
            },
            "status": 'completed',
            "code": {
              "text": 'Application of hip spica cast; 1 and one-half spica or both legs'
            },
            "subject": {
              "reference": 'Patient/12724066',
              "display": 'SMART, NANCY'
            },
            "encounter": {
              "reference": 'Encounter/97939539'
            },
            "performedDateTime": '2019-09-19',
            "recorder": {
              "reference": 'Practitioner/12742711',
              "display": 'PWJuxly, PhysicianHosp'
            }
          }
        }
      ]
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
  end
end
