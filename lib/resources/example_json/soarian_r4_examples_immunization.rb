# frozen_string_literal: true

module Cerner
  module Resources

    SOARIAN_R4_IMMUNIZATION_SEARCH_BY_PT ||= {
      "resourceType": 'Bundle',
      "id": '339048c4-9ff8-4ecb-9260-0136bb3828dd',
      "type": 'searchset',
      "timestamp": '2022-05-11T06:04:34-04:00',
      "entry": [
        {
          "fullUrl": 'https://fhir-myrecord.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Immunization/4C05F5F357EE44FC874C0CF4AB249F99.000001001008000083001',
          "search": {
            "mode": 'match'
          },
          "resource": {
            "resourceType": 'Immunization',
            "id": '4C05F5F357EE44FC874C0CF4AB249F99.000001001008000083001',
            "meta": {
              "lastUpdated": '2021-05-24T17:13:00-04:00'
            },
            "status": 'completed',
            "vaccineCode": {
              "coding": [
                {
                  "system": 'http://hl7.org/fhir/sid/cvx',
                  "code": '83',
                  "display": 'HEPATITIS A VIRUS VACCINE/PF'
                },
                {
                  "system": 'http://hl7.org/fhir/sid/ndc',
                  "code": '58160-0825-43',
                  "display": 'HEPATITIS A VIRUS VACCINE/PF'
                }
              ],
              "text": 'HEPATITIS A VIRUS VACCINE/PF'
            },
            "patient": {
              "reference": 'Patient/4C05F5F357EE44FC874C0CF4AB249F99',
              "display": 'Lancelot,Kaycee Mason'
            },
            "occurrenceDateTime": '2021-05-24T17:13:00-04:00',
            "primarySource": true,
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Immunization</b><br /><b>Patient</b>:Lancelot,Kaycee Mason;<br /><b>Status</b>:completed;<br /><b>Vaccine Code</b>:<br /><b>System</b>:http://hl7.org/fhir/sid/cvx <b>Code</b>:83 <b>Display</b>:HEPATITIS A VIRUS VACCINE/PF ;<br /><b>System</b>:http://hl7.org/fhir/sid/ndc <b>Code</b>:58160-0825-43 <b>Display</b>:HEPATITIS A VIRUS VACCINE/PF ;<br /><b>Occurrence</b>:2021-05-24T17:13:00-04:00;<br /><b>Primary Source</b>:true;<br /></div>'
              # rubocop:enable Layout/LineLength
            }
          }
        },
        {
          "fullUrl": 'https://fhir-myrecord.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Immunization/4C05F5F357EE44FC874C0CF4AB249F99.000001001008000110001',
          "search": {
            "mode": 'match'
          },
          "resource": {
            "resourceType": 'Immunization',
            "id": '4C05F5F357EE44FC874C0CF4AB249F99.000001001008000110001',
            "meta": {
              "lastUpdated": '2021-05-24T17:01:00-04:00'
            },
            "status": 'completed',
            "vaccineCode": {
              "coding": [
                {
                  "system": 'http://hl7.org/fhir/sid/cvx',
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
            "occurrenceDateTime": '2021-05-24T17:01:00-04:00',
            "primarySource": true,
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Immunization</b><br /><b>Patient</b>:Lancelot,Kaycee Mason;<br /><b>Status</b>:completed;<br /><b>Vaccine Code</b>:<br /><b>System</b>:http://hl7.org/fhir/sid/cvx <b>Code</b>:110 <b>Display</b>:HEP B VACCINE/DP(A)T-POLIO/PF ;<br /><b>System</b>:http://hl7.org/fhir/sid/ndc <b>Code</b>:58160-0811-43 <b>Display</b>:HEP B VACCINE/DP(A)T-POLIO/PF ;<br /><b>Occurrence</b>:2021-05-24T17:01:00-04:00;<br /><b>Primary Source</b>:true;<br /></div>'
              # rubocop:enable Layout/LineLength
            }
          }
        },
        {
          "fullUrl": 'https://fhir-myrecord.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Immunization/4C05F5F357EE44FC874C0CF4AB249F99.000001001008000107002',
          "search": {
            "mode": 'match'
          },
          "resource": {
            "resourceType": 'Immunization',
            "id": '4C05F5F357EE44FC874C0CF4AB249F99.000001001008000107002',
            "meta": {
              "lastUpdated": '2021-05-24T16:58:00-04:00'
            },
            "status": 'completed',
            "vaccineCode": {
              "coding": [
                {
                  "system": 'http://hl7.org/fhir/sid/cvx',
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
            "occurrenceDateTime": '2011-12-14',
            "primarySource": false,
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Immunization</b><br /><b>Patient</b>:Lancelot,Kaycee Mason;<br /><b>Status</b>:completed;<br /><b>Vaccine Code</b>:<br /><b>System</b>:http://hl7.org/fhir/sid/cvx <b>Code</b>:107 <b>Display</b>:DTaP, NOS ;<br /><b>Occurrence</b>:2011-12-14;<br /><b>Primary Source</b>:false;<br /></div>'
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
      "id": 'd0624076-0e98-4bad-953e-2bfc5328e591',
      "type": 'searchset',
      "timestamp": '2022-05-11T06:09:06-04:00',
      "entry": [
        {
          "fullUrl": 'https://fhir-myrecord.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Immunization/4C05F5F357EE44FC874C0CF4AB249F99.000001001008000107001',
          "search": {
            "mode": 'match'
          },
          "resource": {
            "resourceType": 'Immunization',
            "id": '4C05F5F357EE44FC874C0CF4AB249F99.000001001008000107001',
            "meta": {
              "lastUpdated": '2021-05-24T16:56:00-04:00'
            },
            "status": 'completed',
            "vaccineCode": {
              "coding": [
                {
                  "system": 'http://hl7.org/fhir/sid/cvx',
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
            "occurrenceDateTime": '2011-10',
            "primarySource": false,
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Immunization</b><br /><b>Patient</b>:Lancelot,Kaycee Mason;<br /><b>Status</b>:completed;<br /><b>Vaccine Code</b>:<br /><b>System</b>:http://hl7.org/fhir/sid/cvx <b>Code</b>:107 <b>Display</b>:DTaP, NOS ;<br /><b>Occurrence</b>:2011-10;<br /><b>Primary Source</b>:false;<br /></div>'
              # rubocop:enable Layout/LineLength
            }
          }
        }
      ],
      "link": [
        {
          "relation": 'self',
          "url": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Immunization?_id=4C05F5F357EE44FC874C0CF4AB249F99.000001001008000107001&patient=4C05F5F357EE44FC874C0CF4AB249F99&_format=json'
        }
      ]
    }.freeze

    SOARIAN_R4_IMMUNIZATION_READ_BY_ID ||= {
      "resourceType": 'Immunization',
      "id": '4C05F5F357EE44FC874C0CF4AB249F99.000001001008000107001',
      "meta": {
        "lastUpdated": '2021-05-24T16:56:00-04:00'
      },
      "status": 'completed',
      "vaccineCode": {
        "coding": [
          {
            "system": 'http://hl7.org/fhir/sid/cvx',
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
      "occurrenceDateTime": '2011-10',
      "primarySource": false,
      "text": {
        "status": 'generated',
        # rubocop:disable Layout/LineLength
        "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Immunization</b><br /><b>Patient</b>:Lancelot,Kaycee Mason;<br /><b>Status</b>:completed;<br /><b>Vaccine Code</b>:<br /><b>System</b>:http://hl7.org/fhir/sid/cvx <b>Code</b>:107 <b>Display</b>:DTaP, NOS ;<br /><b>Occurrence</b>:2011-10;<br /><b>Primary Source</b>:false;<br /></div>'
        # rubocop:enable Layout/LineLength
      }
    }.freeze

    SOARIAN_R4_IMMUNIZATION_ERROR ||= {
      "resourceType": 'Immunization',
      "id": '4C05F5F357EE44FC874C0CF4AB249F99.000001001008000010001',
      "meta": {
        "lastUpdated": '2021-05-24T17:10:00-04:00'
      },
      "status": 'entered-in-error',
      "vaccineCode": {
        "coding": [
          {
            "system": 'http://hl7.org/fhir/sid/cvx',
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
      "id": '4C05F5F357EE44FC874C0CF4AB249F99.000001001008000088001',
      "meta": {
        "lastUpdated": '2021-05-24T17:04:00-04:00'
      },
      "status": 'not-done',
      "statusReason": {
        "coding": [
          {
            "system": 'http://terminology.hl7.org/CodeSystem/v3-ActReason',
            "code": 'PATOBJ',
            "display": 'patient objection'
          }
        ]
      },
      "vaccineCode": {
        "coding": [
          {
            "system": 'http://hl7.org/fhir/sid/cvx',
            "code": '88',
            "display": 'influenza, NOS'
          }
        ],
        "text": 'influenza, NOS'
      },
      "patient": {
        "reference": 'Patient/4C05F5F357EE44FC874C0CF4AB249F99',
        "display": 'Lancelot,Kaycee Mason'
      },
      "_occurrenceDateTime": {
        "extension": [
          {
            "url": 'http://hl7.org/fhir/StructureDefinition/data-absent-reason',
            "valueCode": 'unknown'
          }
        ]
      },
      "primarySource": false,
      "text": {
        "status": 'generated',
        # rubocop:disable Layout/LineLength
        "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Immunization</b><br /><b>Patient</b>:Lancelot,Kaycee Mason;<br /><b>Status</b>:not-done;<br /><b>Reason Not Done</b>:patient objection;<br /><b>Vaccine Code</b>:<br /><b>System</b>:http://hl7.org/fhir/sid/cvx <b>Code</b>:88 <b>Display</b>:influenza, NOS ;<br /><b>Occurrence</b>:Data absent, Reason: unknown;<br /><b>Primary Source</b>:false;<br /></div>'
        # rubocop:enable Layout/LineLength
      }
    }.freeze
  end
end
