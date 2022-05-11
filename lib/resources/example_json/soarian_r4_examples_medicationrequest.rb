# frozen_string_literal: true

module Cerner
  module Resources

    SOARIAN_R4_MEDICATIONREQUEST_SEARCH_BY_PT ||= {
      "resourceType": 'Bundle',
      "id": 'cde6e0c8-cb24-4a90-ae0e-b4b3042f3638',
      "type": 'searchset',
      "timestamp": '2022-05-11T04:42:40-04:00',
      "entry": [
        {
          "fullUrl": 'https://fhir-myrecord-sc.cerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/MedicationRequest/A879904FD2FE4B2D90C89FDA84E1285F.17864',
          "search": {
            "mode": 'match'
          },
          "resource": {
            "resourceType": 'MedicationRequest',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.17864',
            "meta": {
              "lastUpdated": '2021-05-19T12:43:34-04:00'
            },
            "medicationReference": {
              "reference": '#17864'
            },
            "contained": [
              {
                "resourceType": 'Medication',
                "id": '17864',
                "code": {
                  "coding": [
                    {
                      "system": 'http://www.nlm.nih.gov/research/umls/rxnorm',
                      "code": '213469',
                      "display": 'celecoxib 200 MG Oral Capsule [Celebrex]'
                    },
                    {
                      "system": 'http://www.nlm.nih.gov/research/umls/rxnorm',
                      "code": '205323',
                      "display": 'celecoxib 200 MG Oral Capsule'
                    }
                  ],
                  "text": 'celecoxib'
                }
              }
            ],
            "status": 'active',
            "intent": 'plan',
            "reportedBoolean": false,
            "subject": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid Santiago'
            },
            "encounter": {
              "reference": 'Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019',
              "display": 'Inferno,Initial'
            },
            "authoredOn": '2021-05-19T12:43:33-04:00',
            "requester": {
              "reference": 'Practitioner/40134EF110CA4C07988F544E90057844'
            },
            "dosageInstruction": [
              {
                # rubocop:disable Layout/LineLength
                "text": 'celecoxib  (CeleBREX)  200 mg  Capsule  Directions: 1 capsule  oral  daily  Continued By: Admin  Admin '
                # rubocop:enable Layout/LineLength
              }
            ],
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>MedicationRequest</b><br /><b>Patient</b>:Mcgovern,Astrid Santiago;<br /><b>Encounter</b>:Inferno,Initial;<br /><b>Status</b>:active;<br /><b>Intent</b>:plan;<br /><b>Medication</b>:<br /><b>System</b>:http://www.nlm.nih.gov/research/umls/rxnorm <b>Code</b>:213469 <b>Display</b>:celecoxib 200 MG Oral Capsule [Celebrex] <b>Text</b>:celecoxib;<br /><b>System</b>:http://www.nlm.nih.gov/research/umls/rxnorm <b>Code</b>:205323 <b>Display</b>:celecoxib 200 MG Oral Capsule <b>Text</b>:celecoxib;<br /><b>Authored On</b>:2021-05-19T12:43:33-04:00;<br /><b>Dosage Instructions</b>:celecoxib  (CeleBREX)  200 mg  Capsule  Directions: 1 capsule  oral  daily  Continued By: Admin  Admin ;<br /></div>'
              # rubocop:enable Layout/LineLength
            }
          }
        }
      ],
      "link": [
        {
          "relation": 'self',
          "url": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/MedicationRequest?patient=A879904FD2FE4B2D90C89FDA84E1285F'
        }
      ]
    }.freeze

    SOARIAN_R4_MEDICATIONREQUEST_SEARCH_BY_ID ||= {
      "resourceType": 'Bundle',
      "id": 'cde6e0c8-cb24-4a90-ae0e-b4b3042f3638',
      "type": 'searchset',
      "timestamp": '2022-05-11T04:42:40-04:00',
      "entry": [
        {
          "fullUrl": 'https://fhir-myrecord-sc.cerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/MedicationRequest/A879904FD2FE4B2D90C89FDA84E1285F.17864',
          "search": {
            "mode": 'match'
          },
          "resource": {
            "resourceType": 'MedicationRequest',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.17864',
            "meta": {
              "lastUpdated": '2021-05-19T12:43:34-04:00'
            },
            "medicationReference": {
              "reference": '#17864'
            },
            "contained": [
              {
                "resourceType": 'Medication',
                "id": '17864',
                "code": {
                  "coding": [
                    {
                      "system": 'http://www.nlm.nih.gov/research/umls/rxnorm',
                      "code": '213469',
                      "display": 'celecoxib 200 MG Oral Capsule [Celebrex]'
                    },
                    {
                      "system": 'http://www.nlm.nih.gov/research/umls/rxnorm',
                      "code": '205323',
                      "display": 'celecoxib 200 MG Oral Capsule'
                    }
                  ],
                  "text": 'celecoxib'
                }
              }
            ],
            "status": 'active',
            "intent": 'plan',
            "reportedBoolean": false,
            "subject": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid Santiago'
            },
            "encounter": {
              "reference": 'Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019',
              "display": 'Inferno,Initial'
            },
            "authoredOn": '2021-05-19T12:43:33-04:00',
            "requester": {
              "reference": 'Practitioner/40134EF110CA4C07988F544E90057844'
            },
            "dosageInstruction": [
              {
                # rubocop:disable Layout/LineLength
                "text": 'celecoxib  (CeleBREX)  200 mg  Capsule  Directions: 1 capsule  oral  daily  Continued By: Admin  Admin '
                # rubocop:enable Layout/LineLength
              }
            ],
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>MedicationRequest</b><br /><b>Patient</b>:Mcgovern,Astrid Santiago;<br /><b>Encounter</b>:Inferno,Initial;<br /><b>Status</b>:active;<br /><b>Intent</b>:plan;<br /><b>Medication</b>:<br /><b>System</b>:http://www.nlm.nih.gov/research/umls/rxnorm <b>Code</b>:213469 <b>Display</b>:celecoxib 200 MG Oral Capsule [Celebrex] <b>Text</b>:celecoxib;<br /><b>System</b>:http://www.nlm.nih.gov/research/umls/rxnorm <b>Code</b>:205323 <b>Display</b>:celecoxib 200 MG Oral Capsule <b>Text</b>:celecoxib;<br /><b>Authored On</b>:2021-05-19T12:43:33-04:00;<br /><b>Dosage Instructions</b>:celecoxib  (CeleBREX)  200 mg  Capsule  Directions: 1 capsule  oral  daily  Continued By: Admin  Admin ;<br /></div>'
              # rubocop:enable Layout/LineLength
            }
          }
        }
      ],
      "link": [
        {
          "relation": 'self',
          "url": 'https://fhir-myrecord-sc.cerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/MedicationRequest?patient=A879904FD2FE4B2D90C89FDA84E1285F'
        }
      ]
    }.freeze

    SOARIAN_R4_MEDICATIONREQUEST_READ ||= {
      "resourceType": 'MedicationRequest',
      "id": 'A879904FD2FE4B2D90C89FDA84E1285F.17864',
      "meta": {
        "lastUpdated": '2021-05-19T12:43:34-04:00'
      },
      "medicationReference": {
        "reference": '#17864'
      },
      "contained": [
        {
          "resourceType": 'Medication',
          "id": '17864',
          "code": {
            "coding": [
              {
                "system": 'http://www.nlm.nih.gov/research/umls/rxnorm',
                "code": '213469',
                "display": 'celecoxib 200 MG Oral Capsule [Celebrex]'
              },
              {
                "system": 'http://www.nlm.nih.gov/research/umls/rxnorm',
                "code": '205323',
                "display": 'celecoxib 200 MG Oral Capsule'
              }
            ],
            "text": 'celecoxib'
          }
        }
      ],
      "status": 'active',
      "intent": 'plan',
      "reportedBoolean": false,
      "subject": {
        "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
        "display": 'Mcgovern,Astrid Santiago'
      },
      "encounter": {
        "reference": 'Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019',
        "display": 'Inferno,Initial'
      },
      "authoredOn": '2021-05-19T12:43:33-04:00',
      "requester": {
        "reference": 'Practitioner/40134EF110CA4C07988F544E90057844'
      },
      "dosageInstruction": [
        {
          # rubocop:disable Layout/LineLength
          "text": 'celecoxib  (CeleBREX)  200 mg  Capsule  Directions: 1 capsule  oral  daily  Continued By: Admin  Admin '
          # rubocop:enable Layout/LineLength
        }
      ],
      "text": {
        "status": 'generated',
        # rubocop:disable Layout/LineLength
        "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>MedicationRequest</b><br /><b>Patient</b>:Mcgovern,Astrid Santiago;<br /><b>Encounter</b>:Inferno,Initial;<br /><b>Status</b>:active;<br /><b>Intent</b>:plan;<br /><b>Medication</b>:<br /><b>System</b>:http://www.nlm.nih.gov/research/umls/rxnorm <b>Code</b>:213469 <b>Display</b>:celecoxib 200 MG Oral Capsule [Celebrex] <b>Text</b>:celecoxib;<br /><b>System</b>:http://www.nlm.nih.gov/research/umls/rxnorm <b>Code</b>:205323 <b>Display</b>:celecoxib 200 MG Oral Capsule <b>Text</b>:celecoxib;<br /><b>Authored On</b>:2021-05-19T12:43:33-04:00;<br /><b>Dosage Instructions</b>:celecoxib  (CeleBREX)  200 mg  Capsule  Directions: 1 capsule  oral  daily  Continued By: Admin  Admin ;<br /></div>'
        # rubocop:enable Layout/LineLength
      }
    }.freeze
  end
end
