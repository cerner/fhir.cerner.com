# frozen_string_literal: true

module Cerner
  module Resources

    SOARIAN_R4_IMMUNIZATION_SEARCH_BY_PT ||= {
      "resourceType": 'Bundle',
      "id": 'a153389f-7e47-4a3d-abe4-63fb82b87a83',
      "type": 'searchset',
      "timestamp": '2021-10-07T05:47:42-04:00',
      "entry": [
        {
          "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Immunization/4C05F5F357EE44FC874C0CF4AB249F99.000001001008000021001',
          "search": {
            "mode": 'match'
          },
          "resource": {
            "resourceType": 'Immunization',
            "id": '4C05F5F357EE44FC874C0CF4AB249F99.000001001008000021001',
            "meta": {
              "lastUpdated": '2021-02-02T13:27:00-05:00'
            },
            "status": 'completed',
            "vaccineCode": {
              "coding": [
                {
                  "system": 'https://hl7.org/fhir/sid/cvx',
                  "code": '21',
                  "display": 'VARICELLA VACCINE LIVE/PF'
                },
                {
                  "system": 'https://hl7.org/fhir/sid/ndc',
                  "code": '00006-4827-01',
                  "display": 'VARICELLA VACCINE LIVE/PF'
                }
              ],
              "text": 'VARICELLA VACCINE LIVE/PF'
            },
            "patient": {
              "reference": 'Patient/4C05F5F357EE44FC874C0CF4AB249F99',
              "display": 'Lancelot,Kaycee Mason'
            },
            "occurrenceDateTime": '2021-02-02T13:26:00-05:00',
            "primarySource": true,
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Immunization</b><br /><b>Patient</b>:Lancelot,Kaycee Mason;<br /><b>Status</b>:completed;<br /><b>Vaccine Code</b>:<br /><b>System</b>:http://hl7.org/fhir/sid/cvx <b>Code</b>:21 <b>Display</b>:VARICELLA VACCINE LIVE/PF ;<br /><b>System</b>:http://hl7.org/fhir/sid/ndc <b>Code</b>:00006-4827-01 <b>Display</b>:VARICELLA VACCINE LIVE/PF ;<br /><b>Occurrence</b>:2021-02-02T13:26:00-05:00;<br /><b>Primary Source</b>:true;<br /></div>'
              # rubocop:enable Layout/LineLength
            }
          }
        },
        {
          "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Immunization/4C05F5F357EE44FC874C0CF4AB249F99.000001001008000061001',
          "search": {
            "mode": 'match'
          },
          "resource": {
            "resourceType": 'Immunization',
            "id": '4C05F5F357EE44FC874C0CF4AB249F99.000001001008000061001',
            "meta": {
              "lastUpdated": '2021-02-02T13:31:00-05:00'
            },
            "status": 'not-done',
            "statusReason": {
              "coding": [
                {
                  "system": 'https://terminology.hl7.org/CodeSystem/v3-ActReason',
                  "code": 'PATOBJ',
                  "display": 'patient objection'
                }
              ]
            },
            "vaccineCode": {
              "coding": [
                {
                  "system": 'https://hl7.org/fhir/sid/cvx',
                  "code": '61',
                  "display": 'HIV'
                }
              ],
              "text": 'HIV'
            },
            "patient": {
              "reference": 'Patient/4C05F5F357EE44FC874C0CF4AB249F99',
              "display": 'Lancelot,Kaycee Mason'
            },
            "occurrenceDateTime": '2021-02-01',
            "primarySource": false,
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Immunization</b><br /><b>Patient</b>:Lancelot,Kaycee Mason;<br /><b>Status</b>:not-done;<br /><b>Reason Not Done</b>:patient objection;<br /><b>Vaccine Code</b>:<br /><b>System</b>:http://hl7.org/fhir/sid/cvx <b>Code</b>:61 <b>Display</b>:HIV ;<br /><b>Occurrence</b>:2021-02-01;<br /><b>Primary Source</b>:false;<br /></div>'
              # rubocop:enable Layout/LineLength
            }
          }
        },
        {
          "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Immunization/4C05F5F357EE44FC874C0CF4AB249F99.000001001008000107001',
          "search": {
            "mode": 'match'
          },
          "resource": {
            "resourceType": 'Immunization',
            "id": '4C05F5F357EE44FC874C0CF4AB249F99.000001001008000107001',
            "meta": {
              "lastUpdated": '2021-02-02T15:56:00-05:00'
            },
            "status": 'completed',
            "vaccineCode": {
              "coding": [
                {
                  "system": 'https://hl7.org/fhir/sid/cvx',
                  "code": '107',
                  "display": 'DTaP, NOS'
                }
              ],
              "text": 'DTaP, NOS'
            },
            "patient": {
              "reference": 'Patient/4C05F5F357EE44FC874C0CF4AB249F99',
              "display": 'Lancelot,Kaycee Mason'
            },
            "_occurrenceDateTime": {
              "extension": [
                {
                  "url": 'https://hl7.org/fhir/StructureDefinition/data-absent-reason',
                  "valueCode": 'unknown'
                }
              ]
            },
            "primarySource": false,
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Immunization</b><br /><b>Patient</b>:Lancelot,Kaycee Mason;<br /><b>Status</b>:completed;<br /><b>Vaccine Code</b>:<br /><b>System</b>:http://hl7.org/fhir/sid/cvx <b>Code</b>:107 <b>Display</b>:DTaP, NOS ;<br /><b>Occurrence</b>:Data absent, Reason: unknown;<br /><b>Primary Source</b>:false;<br /></div>'
              # rubocop:enable Layout/LineLength
            }
          }
        }
      ],
      "link": [
        {
          "relation": 'self',
          "url": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Immunization?patient=4C05F5F357EE44FC874C0CF4AB249F99&_format=json'
        }
      ]
    }.freeze

    SOARIAN_R4_IMMUNIZATION_SEARCH_BY_ID ||= {
      "resourceType": 'Bundle',
      "id": 'a153389f-7e47-4a3d-abe4-63fb82b87a83',
      "type": 'searchset',
      "timestamp": '2021-10-07T05:47:42-04:00',
      "entry": [
        {
          "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Immunization/4C05F5F357EE44FC874C0CF4AB249F99.000001001008000061001',
          "search": {
            "mode": 'match'
          },
          "resource": {
            "resourceType": 'Immunization',
            "id": '4C05F5F357EE44FC874C0CF4AB249F99.000001001008000061001',
            "meta": {
              "lastUpdated": '2021-02-02T13:31:00-05:00'
            },
            "status": 'not-done',
            "statusReason": {
              "coding": [
                {
                  "system": 'https://terminology.hl7.org/CodeSystem/v3-ActReason',
                  "code": 'PATOBJ',
                  "display": 'patient objection'
                }
              ]
            },
            "vaccineCode": {
              "coding": [
                {
                  "system": 'https://hl7.org/fhir/sid/cvx',
                  "code": '61',
                  "display": 'HIV'
                }
              ],
              "text": 'HIV'
            },
            "patient": {
              "reference": 'Patient/4C05F5F357EE44FC874C0CF4AB249F99',
              "display": 'Lancelot,Kaycee Mason'
            },
            "occurrenceDateTime": '2021-02-01',
            "primarySource": false,
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Immunization</b><br /><b>Patient</b>:Lancelot,Kaycee Mason;<br /><b>Status</b>:not-done;<br /><b>Reason Not Done</b>:patient objection;<br /><b>Vaccine Code</b>:<br /><b>System</b>:http://hl7.org/fhir/sid/cvx <b>Code</b>:61 <b>Display</b>:HIV ;<br /><b>Occurrence</b>:2021-02-01;<br /><b>Primary Source</b>:false;<br /></div>'
              # rubocop:enable Layout/LineLength
            }
          }
        }
      ],
      "link": [
        {
          "relation": 'self',
          "url": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Immunization?_id=4C05F5F357EE44FC874C0CF4AB249F99.000001001008000061001&patient=4C05F5F357EE44FC874C0CF4AB249F99&_format=json'
        }
      ]
    }.freeze

    SOARIAN_R4_IMMUNIZATION_READ_BY_ID ||= {
      "resourceType": 'Immunization',
      "id": '4C05F5F357EE44FC874C0CF4AB249F99.000001001007000110001',
      "meta": {
        "lastUpdated": '2020-12-08T16:01:00-05:00'
      },
      "status": 'completed',
      "vaccineCode": {
        "coding": [
          {
            "system": 'httpss://hl7.org/fhir/sid/cvx',
            "code": '110',
            "display": 'HEP B VACCINE/DP(A)T-POLIO/PF'
          },
          {
            "system": 'http://hl7.org/fhir/sid/ndc',
            "code": '58160-0811-43',
            "display": 'HEP B VACCINE/DP(A)T-POLIO/PF'
          }
        ],
        "text": 'HEP B VACCINE/DP(A)T-POLIO/PF'
      },
      "patient": {
        "reference": 'Patient/4C05F5F357EE44FC874C0CF4AB249F99',
        "display": 'Lancelot,Kaycee Mason'
      },
      "occurrenceDateTime": '2020-12-08T15:55:00-05:00',
      "primarySource": true,
      "text": {
        "status": 'generated',
        # rubocop:disable Layout/LineLength
        "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Immunization</b><br /><b>Patient</b>:Lancelot,Kaycee Mason;<br /><b>Status</b>:completed;<br /><b>Vaccine Code</b>:<br /><b>System</b>:http://hl7.org/fhir/sid/cvx <b>Code</b>:110 <b>Display</b>:HEP B VACCINE/DP(A)T-POLIO/PF ;<br /><b>System</b>:http://hl7.org/fhir/sid/ndc <b>Code</b>:58160-0811-43 <b>Display</b>:HEP B VACCINE/DP(A)T-POLIO/PF ;<br /><b>Occurrence</b>:2020-12-08T15:55:00-05:00;<br /><b>Primary Source</b>:true;<br /></div>'
        # rubocop:enable Layout/LineLength
      }
    }.freeze

    SOARIAN_R4_IMMUNIZATION_ERROR ||= {
      "resourceType": 'Immunization',
      "id": '4C05F5F357EE44FC874C0CF4AB249F99.000001001007000010001',
      "meta": {
        "lastUpdated": '2020-12-08T16:19:00-05:00'
      },
      "status": 'entered-in-error',
      "vaccineCode": {
        "coding": [
          {
            "system": 'https://hl7.org/fhir/sid/cvx',
            "code": '10',
            "display": 'IPV'
          }
        ],
        "text": 'IPV'
      },
      "patient": {
        "reference": 'Patient/4C05F5F357EE44FC874C0CF4AB249F99',
        "display": 'Lancelot,Kaycee Mason'
      },
      "occurrenceDateTime": '2020-04-07',
      "primarySource": false,
      "text": {
        "status": 'generated',
        # rubocop:disable Layout/LineLength
        "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Immunization</b><br /><b>Patient</b>:Lancelot,Kaycee Mason;<br /><b>Status</b>:entered-in-error;<br /><b>Vaccine Code</b>:<br /><b>System</b>:http://hl7.org/fhir/sid/cvx <b>Code</b>:10 <b>Display</b>:IPV ;<br /><b>Occurrence</b>:2020-04-07;<br /><b>Primary Source</b>:false;<br /></div>'
        # rubocop:enable Layout/LineLength
      }
    }.freeze

    SOARIAN_R4_IMMUNIZATION_NOT_DONE ||= {
      "resourceType": 'Immunization',
      "id": '4C05F5F357EE44FC874C0CF4AB249F99.000001001008000061001',
      "meta": {
        "lastUpdated": '2021-02-02T13:31:00-05:00'
      },
      "status": 'not-done',
      "statusReason": {
        "coding": [
          {
            "system": 'https://terminology.hl7.org/CodeSystem/v3-ActReason',
            "code": 'PATOBJ',
            "display": 'patient objection'
          }
        ]
      },
      "vaccineCode": {
        "coding": [
          {
            "system": 'https://hl7.org/fhir/sid/cvx',
            "code": '61',
            "display": 'HIV'
          }
        ],
        "text": 'HIV'
      },
      "patient": {
        "reference": 'Patient/4C05F5F357EE44FC874C0CF4AB249F99',
        "display": 'Lancelot,Kaycee Mason'
      },
      "occurrenceDateTime": '2021-02-01',
      "primarySource": false,
      "text": {
        "status": 'generated',
        # rubocop:disable Layout/LineLength
        "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Immunization</b><br /><b>Patient</b>:Lancelot,Kaycee Mason;<br /><b>Status</b>:not-done;<br /><b>Reason Not Done</b>:patient objection;<br /><b>Vaccine Code</b>:<br /><b>System</b>:http://hl7.org/fhir/sid/cvx <b>Code</b>:61 <b>Display</b>:HIV ;<br /><b>Occurrence</b>:2021-02-01;<br /><b>Primary Source</b>:false;<br /></div>'
        # rubocop:enable Layout/LineLength
      }
    }.freeze
  end
end
