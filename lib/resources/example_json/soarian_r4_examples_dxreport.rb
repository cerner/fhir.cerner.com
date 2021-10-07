# frozen_string_literal: true

module Cerner
  module Resources

    SOARIAN_R4_DXREPORT_SEARCH_BY_PATIENT ||= {
      "resourceType": 'Bundle',
      "id": '46639879-4ea7-491c-a082-82e1f782b60d',
      "type": 'searchset',
      "timestamp": '2021-05-28T07:29:56-04:00',
      "entry": [
        {
          "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/DiagnosticReport/A879904FD2FE4B2D90C89FDA84E1285F.RAD.18221',
          "search": {
            "mode": 'match'
          },
          "resource": {
            "resourceType": 'DiagnosticReport',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.RAD.18221',
            "meta": {
              "lastUpdated": '2020-12-03T18:21:12-05:00'
            },
            "status": 'final',
            "category": [
              {
                "coding": [
                  {
                    "system": 'http://loinc.org',
                    "code": 'LP29684-5',
                    "display": 'Radiology'
                  }
                ]
              }
            ],
            "code": {
              "coding": [
                {
                  "system": 'http://loinc.org',
                  "code": '18782-3',
                  "display": 'Radiology Study observation (narrative)'
                }
              ],
              "text": 'Radiology Study Observation'
            },
            "subject": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid Santiago'
            },
            "encounter": {
              "reference": 'Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019',
              "display": 'Inferno,Initial'
            },
            "effectiveDateTime": '2020-12-01T08:15:00-05:00',
            "issued": '2020-12-03T18:21:12-05:00',
            "performer": [
              {
                "reference": 'Organization/RES.1',
                "display": 'Mid-town Laboratories'
              }
            ],
            "presentedForm": [
              {
                "contentType": 'text/plain',
                "data": 'Tm8gcGFyYXNwaW5hbCBzb2Z0IHRpc3N1ZSBtYXNzLg0K'
              }
            ],
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>DiagnosticReport</b><br /><b>Patient</b>:Mcgovern,Astrid Santiago;<br /><b>Status</b>:final;<br /><b>Category</b>:<br /><b>System</b>:http://loinc.org <b>Code</b>:LP29684-5 <b>Display</b>:Radiology ;<br /><b>Code</b>:<br /><b>System</b>:http://loinc.org <b>Code</b>:18782-3 <b>Display</b>:Radiology Study observation (narrative) <b>Text</b>:Radiology Study Observation;<br /><b>EffectiveDateTime</b>:2020-12-01T08:15:00-05:00;<br /></div>'
              # rubocop:enable Layout/LineLength
            }
          }
        },
        {
          "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/DiagnosticReport/A879904FD2FE4B2D90C89FDA84E1285F.CAR.15216',
          "search": {
            "mode": 'match'
          },
          "resource": {
            "resourceType": 'DiagnosticReport',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.CAR.15216',
            "meta": {
              "lastUpdated": '2020-12-01T18:11:34-05:00'
            },
            "status": 'final',
            "category": [
              {
                "coding": [
                  {
                    "system": 'http://loinc.org',
                    "code": 'LP29708-2',
                    "display": 'Cardiology'
                  }
                ]
              }
            ],
            "code": {
              "coding": [
                {
                  "system": 'http://loinc.org',
                  "code": '75425-9',
                  "display": 'Cardiology Diagnostic study note'
                }
              ],
              "text": 'Cardiology Diagnostic Study Note'
            },
            "subject": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid Santiago'
            },
            "encounter": {
              "reference": 'Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019',
              "display": 'Inferno,Initial'
            },
            "effectivePeriod": {
              "start": '2020-09-13T13:00:00-04:00',
              "end": '2020-09-13T13:30:00-04:00'
            },
            "issued": '2020-12-01T18:11:31-05:00',
            "performer": [
              {
                "reference": 'Organization/RES.1001',
                "display": 'Lancaster Ave Lab'
              }
            ],
            "presentedForm": [
              {
                "contentType": 'text/plain',
                "data": 'U2ludXMgYnJhZHljYXJkaWENCg=='
              }
            ],
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>DiagnosticReport</b><br /><b>Patient</b>:Mcgovern,Astrid Santiago;<br /><b>Status</b>:final;<br /><b>Category</b>:<br /><b>System</b>:http://loinc.org <b>Code</b>:LP29708-2 <b>Display</b>:Cardiology ;<br /><b>Code</b>:<br /><b>System</b>:http://loinc.org <b>Code</b>:75425-9 <b>Display</b>:Cardiology Diagnostic study note <b>Text</b>:Cardiology Diagnostic Study Note;<br /><b>Effective Period Start</b>:2020-09-13T13:00:00-04:00;<br /><b>Effective Period End</b>:2020-09-13T13:30:00-04:00;<br /></div>'
              # rubocop:enable Layout/LineLength
            }
          }
        },
        {
          "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/DiagnosticReport/A879904FD2FE4B2D90C89FDA84E1285F.CAR.15217',
          "search": {
            "mode": 'match'
          },
          "resource": {
            "resourceType": 'DiagnosticReport',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.CAR.15217',
            "meta": {
              "lastUpdated": '2020-12-01T18:15:41-05:00'
            },
            "status": 'final',
            "category": [
              {
                "coding": [
                  {
                    "system": 'http://loinc.org',
                    "code": 'LP29708-2',
                    "display": 'Cardiology'
                  }
                ]
              }
            ],
            "code": {
              "coding": [
                {
                  "system": 'http://loinc.org',
                  "code": '75425-9',
                  "display": 'Cardiology Diagnostic study note'
                }
              ],
              "text": 'Cardiology Diagnostic Study Note'
            },
            "subject": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid Santiago'
            },
            "encounter": {
              "reference": 'Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019',
              "display": 'Inferno,Initial'
            },
            "effectiveDateTime": '2020-09-10T04:00:00-04:00',
            "issued": '2020-12-01T18:15:41-05:00',
            "performer": [
              {
                "reference": 'Organization/RES.1',
                "display": 'Mid-town Laboratories'
              }
            ],
            "presentedForm": [
              {
                "contentType": 'text/plain',
                "data": 'MTUwLTE2MA0K'
              }
            ],
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>DiagnosticReport</b><br /><b>Patient</b>:Mcgovern,Astrid Santiago;<br /><b>Status</b>:final;<br /><b>Category</b>:<br /><b>System</b>:http://loinc.org <b>Code</b>:LP29708-2 <b>Display</b>:Cardiology ;<br /><b>Code</b>:<br /><b>System</b>:http://loinc.org <b>Code</b>:75425-9 <b>Display</b>:Cardiology Diagnostic study note <b>Text</b>:Cardiology Diagnostic Study Note;<br /><b>EffectiveDateTime</b>:2020-09-10T04:00:00-04:00;<br /></div>'
              # rubocop:enable Layout/LineLength
            }
          }
        },
        {
          "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/DiagnosticReport/A879904FD2FE4B2D90C89FDA84E1285F.LAB.31302',
          "search": {
            "mode": 'match'
          },
          "resource": {
            "resourceType": 'DiagnosticReport',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.LAB.31302',
            "meta": {
              "lastUpdated": '2021-05-07T12:02:54-04:00'
            },
            "status": 'final',
            "category": [
              {
                "coding": [
                  {
                    "system": 'http://terminology.hl7.org/CodeSystem/v2-0074',
                    "code": 'LAB',
                    "display": 'Laboratory'
                  }
                ]
              }
            ],
            "code": {
              "text": 'SOURCE'
            },
            "subject": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid Santiago'
            },
            "encounter": {
              "reference": 'Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019',
              "display": 'Inferno,Initial'
            },
            "effectiveDateTime": '2020-03-29T03:18:00-04:00',
            "issued": '2021-05-07T12:02:51-04:00',
            "performer": [
              {
                "reference": 'Organization/HCU.14018',
                "display": 'RES_LAB'
              }
            ],
            "presentedForm": [
              {
                "contentType": 'text/plain',
                "data": 'TW9kZXJhdGUgR3Jvd3RoX0VkaXQ='
              }
            ],
            "result": [
              {
                "reference": 'Observation/A879904FD2FE4B2D90C89FDA84E1285F.RES.31302'
              },
              {
                "reference": 'Observation/A879904FD2FE4B2D90C89FDA84E1285F.RES.31303'
              },
              {
                "reference": 'Observation/A879904FD2FE4B2D90C89FDA84E1285F.RES.31304'
              },
              {
                "reference": 'Observation/A879904FD2FE4B2D90C89FDA84E1285F.RES.31305'
              },
              {
                "reference": 'Observation/A879904FD2FE4B2D90C89FDA84E1285F.RES.31306'
              }
            ],
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": "<div xmlns='http://www.w3.org/1999/xhtml'><b>DiagnosticReport</b><br /><b>Patient</b>:Mcgovern,Astrid Santiago;<br /><b>Status</b>:final;<br /><b>Category</b>:<br /><b>System</b>:http://terminology.hl7.org/CodeSystem/v2-0074 <b>Code</b>:LAB <b>Display</b>:Laboratory ;<br /><b>Code</b>:<br /><b>Text</b>:SOURCE;<br /><b>EffectiveDateTime</b>:2020-03-29T03:18:00-04:00;<br /></div>"
              # rubocop:enable Layout/LineLength
            }
          }
        },
        {
          "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/DiagnosticReport/A879904FD2FE4B2D90C89FDA84E1285F.LAB.31303',
          "search": {
            "mode": 'match'
          },
          "resource": {
            "resourceType": 'DiagnosticReport',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.LAB.31303',
            "meta": {
              "lastUpdated": '2021-05-07T12:02:54-04:00'
            },
            "status": 'preliminary',
            "category": [
              {
                "coding": [
                  {
                    "system": 'http://terminology.hl7.org/CodeSystem/v2-0074',
                    "code": 'LAB',
                    "display": 'Laboratory'
                  }
                ]
              }
            ],
            "code": {
              "text": 'RES_ORGANISM'
            },
            "subject": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid Santiago'
            },
            "encounter": {
              "reference": 'Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019',
              "display": 'Inferno,Initial'
            },
            "effectiveDateTime": '2020-03-29T03:18:00-04:00',
            "issued": '2021-05-07T12:02:51-04:00',
            "performer": [
              {
                "reference": 'Organization/HCU.14018',
                "display": 'RES_LAB'
              }
            ],
            "presentedForm": [
              {
                "contentType": 'text/plain',
                "data": 'R3JhbSBQb3NpdGl2ZQ=='
              }
            ],
            "result": [
              {
                "reference": 'Observation/A879904FD2FE4B2D90C89FDA84E1285F.RES.31302'
              },
              {
                "reference": 'Observation/A879904FD2FE4B2D90C89FDA84E1285F.RES.31303'
              },
              {
                "reference": 'Observation/A879904FD2FE4B2D90C89FDA84E1285F.RES.31304'
              },
              {
                "reference": 'Observation/A879904FD2FE4B2D90C89FDA84E1285F.RES.31305'
              },
              {
                "reference": 'Observation/A879904FD2FE4B2D90C89FDA84E1285F.RES.31306'
              }
            ],
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": "<div xmlns='http://www.w3.org/1999/xhtml'><b>DiagnosticReport</b><br /><b>Patient</b>:Mcgovern,Astrid Santiago;<br /><b>Status</b>:preliminary;<br /><b>Category</b>:<br /><b>System</b>:http://terminology.hl7.org/CodeSystem/v2-0074 <b>Code</b>:LAB <b>Display</b>:Laboratory ;<br /><b>Code</b>:<br /><b>Text</b>:RES_ORGANISM;<br /><b>EffectiveDateTime</b>:2020-03-29T03:18:00-04:00;<br /></div>"
              # rubocop:enable Layout/LineLength
            }
          }
        },
        {
          "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/DiagnosticReport/A879904FD2FE4B2D90C89FDA84E1285F.LAB.31304',
          "search": {
            "mode": 'match'
          },
          "resource": {
            "resourceType": 'DiagnosticReport',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.LAB.31304',
            "meta": {
              "lastUpdated": '2021-05-07T12:02:54-04:00'
            },
            "status": 'registered',
            "category": [
              {
                "coding": [
                  {
                    "system": 'http://terminology.hl7.org/CodeSystem/v2-0074',
                    "code": 'LAB',
                    "display": 'Laboratory'
                  }
                ]
              }
            ],
            "code": {
              "text": 'CULTURE SIGNIFIGANCE'
            },
            "subject": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid Santiago'
            },
            "encounter": {
              "reference": 'Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019',
              "display": 'Inferno,Initial'
            },
            "effectiveDateTime": '2020-03-29T03:18:00-04:00',
            "issued": '2021-05-07T12:02:51-04:00',
            "performer": [
              {
                "reference": 'Organization/HCU.14018',
                "display": 'RES_LAB'
              }
            ],
            "presentedForm": [
              {
                "contentType": 'text/plain',
                "data": 'Tm9uZQ=='
              }
            ],
            "result": [
              {
                "reference": 'Observation/A879904FD2FE4B2D90C89FDA84E1285F.RES.31302'
              },
              {
                "reference": 'Observation/A879904FD2FE4B2D90C89FDA84E1285F.RES.31303'
              },
              {
                "reference": 'Observation/A879904FD2FE4B2D90C89FDA84E1285F.RES.31304'
              },
              {
                "reference": 'Observation/A879904FD2FE4B2D90C89FDA84E1285F.RES.31305'
              },
              {
                "reference": 'Observation/A879904FD2FE4B2D90C89FDA84E1285F.RES.31306'
              }
            ],
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": "<div xmlns='http://www.w3.org/1999/xhtml'><b>DiagnosticReport</b><br /><b>Patient</b>:Mcgovern,Astrid Santiago;<br /><b>Status</b>:registered;<br /><b>Category</b>:<br /><b>System</b>:http://terminology.hl7.org/CodeSystem/v2-0074 <b>Code</b>:LAB <b>Display</b>:Laboratory ;<br /><b>Code</b>:<br /><b>Text</b>:CULTURE SIGNIFIGANCE;<br /><b>EffectiveDateTime</b>:2020-03-29T03:18:00-04:00;<br /></div>"
              # rubocop:enable Layout/LineLength
            }
          }
        },
        {
          "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/DiagnosticReport/A879904FD2FE4B2D90C89FDA84E1285F.LAB.31305',
          "search": {
            "mode": 'match'
          },
          "resource": {
            "resourceType": 'DiagnosticReport',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.LAB.31305',
            "meta": {
              "lastUpdated": '2021-05-07T12:02:54-04:00'
            },
            "status": 'registered',
            "category": [
              {
                "coding": [
                  {
                    "system": 'http://terminology.hl7.org/CodeSystem/v2-0074',
                    "code": 'LAB',
                    "display": 'Laboratory'
                  }
                ]
              }
            ],
            "code": {
              "text": 'SOURCE'
            },
            "subject": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid Santiago'
            },
            "encounter": {
              "reference": 'Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019',
              "display": 'Inferno,Initial'
            },
            "effectiveDateTime": '2020-03-29T03:18:00-04:00',
            "issued": '2021-05-07T12:02:51-04:00',
            "performer": [
              {
                "reference": 'Organization/HCU.14018',
                "display": 'RES_LAB'
              }
            ],
            "presentedForm": [
              {
                "contentType": 'text/plain',
                "data": 'QW1wLTE='
              }
            ],
            "result": [
              {
                "reference": 'Observation/A879904FD2FE4B2D90C89FDA84E1285F.RES.31302'
              },
              {
                "reference": 'Observation/A879904FD2FE4B2D90C89FDA84E1285F.RES.31303'
              },
              {
                "reference": 'Observation/A879904FD2FE4B2D90C89FDA84E1285F.RES.31304'
              },
              {
                "reference": 'Observation/A879904FD2FE4B2D90C89FDA84E1285F.RES.31305'
              },
              {
                "reference": 'Observation/A879904FD2FE4B2D90C89FDA84E1285F.RES.31306'
              }
            ],
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": "<div xmlns='http://www.w3.org/1999/xhtml'><b>DiagnosticReport</b><br /><b>Patient</b>:Mcgovern,Astrid Santiago;<br /><b>Status</b>:registered;<br /><b>Category</b>:<br /><b>System</b>:http://terminology.hl7.org/CodeSystem/v2-0074 <b>Code</b>:LAB <b>Display</b>:Laboratory ;<br /><b>Code</b>:<br /><b>Text</b>:SOURCE;<br /><b>EffectiveDateTime</b>:2020-03-29T03:18:00-04:00;<br /></div>"
              # rubocop:enable Layout/LineLength
            }
          }
        },
        {
          "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/DiagnosticReport/A879904FD2FE4B2D90C89FDA84E1285F.LAB.31306',
          "search": {
            "mode": 'match'
          },
          "resource": {
            "resourceType": 'DiagnosticReport',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.LAB.31306',
            "meta": {
              "lastUpdated": '2021-05-07T12:02:54-04:00'
            },
            "status": 'preliminary',
            "category": [
              {
                "coding": [
                  {
                    "system": 'http://terminology.hl7.org/CodeSystem/v2-0074',
                    "code": 'LAB',
                    "display": 'Laboratory'
                  }
                ]
              }
            ],
            "code": {
              "text": 'SOURCE'
            },
            "subject": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid Santiago'
            },
            "encounter": {
              "reference": 'Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019',
              "display": 'Inferno,Initial'
            },
            "effectiveDateTime": '2020-03-29T03:18:00-04:00',
            "issued": '2021-05-07T12:02:51-04:00',
            "performer": [
              {
                "reference": 'Organization/HCU.14018',
                "display": 'RES_LAB'
              }
            ],
            "presentedForm": [
              {
                "contentType": 'text/plain',
                "data": 'QW1wLTI='
              }
            ],
            "result": [
              {
                "reference": 'Observation/A879904FD2FE4B2D90C89FDA84E1285F.RES.31302'
              },
              {
                "reference": 'Observation/A879904FD2FE4B2D90C89FDA84E1285F.RES.31303'
              },
              {
                "reference": 'Observation/A879904FD2FE4B2D90C89FDA84E1285F.RES.31304'
              },
              {
                "reference": 'Observation/A879904FD2FE4B2D90C89FDA84E1285F.RES.31305'
              },
              {
                "reference": 'Observation/A879904FD2FE4B2D90C89FDA84E1285F.RES.31306'
              }
            ],
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": "<div xmlns='http://www.w3.org/1999/xhtml'><b>DiagnosticReport</b><br /><b>Patient</b>:Mcgovern,Astrid Santiago;<br /><b>Status</b>:preliminary;<br /><b>Category</b>:<br /><b>System</b>:http://terminology.hl7.org/CodeSystem/v2-0074 <b>Code</b>:LAB <b>Display</b>:Laboratory ;<br /><b>Code</b>:<br /><b>Text</b>:SOURCE;<br /><b>EffectiveDateTime</b>:2020-03-29T03:18:00-04:00;<br /></div>"
              # rubocop:enable Layout/LineLength
            }
          }
        }
      ],
      "link": [
        {
          "relation": 'self',
          "url": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/DiagnosticReport?patient=A879904FD2FE4B2D90C89FDA84E1285F&_format=json'
        }
      ]
    }.freeze

    SOARIAN_R4_DXREPORT_SEARCH_BY_ID ||= {
      "resourceType": 'Bundle',
      "id": 'c3b2dbc0-2642-4dd6-b1b8-05de15b1b40c',
      "type": 'searchset',
      "timestamp": '2021-05-28T07:31:49-04:00',
      "entry": [
        {
          "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/DiagnosticReport/A879904FD2FE4B2D90C89FDA84E1285F.RAD.18221',
          "search": {
            "mode": 'match'
          },
          "resource": {
            "resourceType": 'DiagnosticReport',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.RAD.18221',
            "meta": {
              "lastUpdated": '2020-12-03T18:21:12-05:00'
            },
            "status": 'final',
            "category": [
              {
                "coding": [
                  {
                    "system": 'http://loinc.org',
                    "code": 'LP29684-5',
                    "display": 'Radiology'
                  }
                ]
              }
            ],
            "code": {
              "coding": [
                {
                  "system": 'http://loinc.org',
                  "code": '18782-3',
                  "display": 'Radiology Study observation (narrative)'
                }
              ],
              "text": 'Radiology Study Observation'
            },
            "subject": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid Santiago'
            },
            "encounter": {
              "reference": 'Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019',
              "display": 'Inferno,Initial'
            },
            "effectiveDateTime": '2020-12-01T08:15:00-05:00',
            "issued": '2020-12-03T18:21:12-05:00',
            "performer": [
              {
                "reference": 'Organization/RES.1',
                "display": 'Mid-town Laboratories'
              }
            ],
            "presentedForm": [
              {
                "contentType": 'text/plain',
                "data": 'Tm8gcGFyYXNwaW5hbCBzb2Z0IHRpc3N1ZSBtYXNzLg0K'
              }
            ],
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": "<div xmlns='http://www.w3.org/1999/xhtml'><b>DiagnosticReport</b><br /><b>Patient</b>:Mcgovern,Astrid Santiago;<br /><b>Status</b>:final;<br /><b>Category</b>:<br /><b>System</b>:http://loinc.org <b>Code</b>:LP29684-5 <b>Display</b>:Radiology ;<br /><b>Code</b>:<br /><b>System</b>:http://loinc.org <b>Code</b>:18782-3 <b>Display</b>:Radiology Study observation (narrative) <b>Text</b>:Radiology Study Observation;<br /><b>EffectiveDateTime</b>:2020-12-01T08:15:00-05:00;<br /></div>"
              # rubocop:enable Layout/LineLength
            }
          }
        }
      ],
      "link": [
        {
          "relation": 'self',
          "url": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/DiagnosticReport?patient=A879904FD2FE4B2D90C89FDA84E1285F.RAD.18221&_format=json'
        }
      ]
    }.freeze

    SOARIAN_R4_DXREPORT_READ_BY_ID ||= {
      "resourceType": 'DiagnosticReport',
      "id": 'A879904FD2FE4B2D90C89FDA84E1285F.RAD.18221',
      "meta": {
        "lastUpdated": '2020-12-03T18:21:12-05:00'
      },
      "status": 'final',
      "category": [
        {
          "coding": [
            {
              "system": 'http://loinc.org',
              "code": 'LP29684-5',
              "display": 'Radiology'
            }
          ]
        }
      ],
      "code": {
        "coding": [
          {
            "system": 'http://loinc.org',
            "code": '18782-3',
            "display": 'Radiology Study observation (narrative)'
          }
        ],
        "text": 'Radiology Study Observation'
      },
      "subject": {
        "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
        "display": 'Mcgovern,Astrid Santiago'
      },
      "encounter": {
        "reference": 'Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019',
        "display": 'Inferno,Initial'
      },
      "effectiveDateTime": '2020-12-01T08:15:00-05:00',
      "issued": '2020-12-03T18:21:12-05:00',
      "performer": [
        {
          "reference": 'Organization/RES.1',
          "display": 'Mid-town Laboratories'
        }
      ],
      "presentedForm": [
        {
          "contentType": 'text/plain',
          "data": 'Tm8gcGFyYXNwaW5hbCBzb2Z0IHRpc3N1ZSBtYXNzLg0K'
        }
      ],
      "text": {
        "status": 'generated',
        # rubocop:disable Layout/LineLength
        "div": "<div xmlns='http://www.w3.org/1999/xhtml'><b>DiagnosticReport</b><br /><b>Patient</b>:Mcgovern,Astrid Santiago;<br /><b>Status</b>:final;<br /><b>Category</b>:<br /><b>System</b>:http://loinc.org <b>Code</b>:LP29684-5 <b>Display</b>:Radiology ;<br /><b>Code</b>:<br /><b>System</b>:http://loinc.org <b>Code</b>:18782-3 <b>Display</b>:Radiology Study observation (narrative) <b>Text</b>:Radiology Study Observation;<br /><b>EffectiveDateTime</b>:2020-12-01T08:15:00-05:00;<br /></div>"
        # rubocop:enable Layout/LineLength
      }
    }.freeze
  end
end
