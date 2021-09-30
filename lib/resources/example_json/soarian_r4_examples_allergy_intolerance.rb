# frozen_string_literal: true

module Cerner
  module Resources

    SOARIAN_R4_ALLERGY_INTOLERANCE_READ_BY_ID ||= {
      "resourceType": 'AllergyIntolerance',
      "id": 'A879904FD2FE4B2D90C89FDA84E1285F.ALG.17073',
      "meta": {
        "lastUpdated": '2020-11-11T20:40:37-05:00'
      },
      "verificationStatus": {
        "coding": [
          {
            "system": 'http://terminology.hl7.org/CodeSystem/allergyintolerance-verification',
            "code": 'confirmed',
            "display": 'Confirmed'
          }
        ]
      },
      "clinicalStatus": {
        "coding": [
          {
            "system": 'http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical',
            "code": 'active',
            "display": 'Active'
          }
        ]
      },
      "category": [
        'medication'
      ],
      "code": {
        "coding": [
          {
            "system": 'http://www.nlm.nih.gov/research/umls/rxnorm',
            "code": '1191',
            "display": 'Aspirin'
          }
        ],
        "text": 'aspirin'
      },
      "patient": {
        "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
        "display": 'Mcgovern,Astrid-Anna Santiago'
      },
      "onsetString": 'unknown',
      "reaction": [
        {
          "manifestation": [
            {
              "text": 'Bleeding'
            }
          ],
          "severity": 'severe'
        }
      ],
      "text": {
        "status": 'generated',
        # rubocop:disable Layout/LineLength
        "div": '<div xmlns="http://www.w3.org/1999/xhtml"><br /><b>Allergy Intolerance</b><br /><b>Patient</b>:Mcgovern,Astrid-Anna Santiago<br /> <b>Clinical Status</b>: <b>Code</b>:active <b>Display</b>:Active <b>System</b>:http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical<br /><b>Verification Status</b>: <b>Code</b>:confirmed <b>Display</b>:Confirmed <b>System</b>:http://terminology.hl7.org/CodeSystem/allergyintolerance-verification<br /><b>Category</b>:medication<br /><b>Code</b>:<b>Code</b>:1191 <b>Display</b>:Aspirin <b>System</b>:http://www.nlm.nih.gov/research/umls/rxnorm <b>Text</b>:aspirin<br /><b>Onset</b>:unknown<br /><b>Reaction</b>:<b>Text</b>:Bleeding <b>Severity</b>:severe<br /><br /></div>'
        # rubocop:enable Layout/LineLength
      }
    }.freeze

    SOARIAN_R4_ALLERGY_INTOLERANCE_SEARCH_BY_ID_ENTRY ||= {
      "resourceType": 'Bundle',
      "id": '9820b020-9871-4e92-9000-0632a98fd4c9',
      "type": 'searchset',
      "timestamp": '2021-09-29T06:58:11-04:00',
      "entry": [
        {
          "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/AllergyIntolerance/A879904FD2FE4B2D90C89FDA84E1285F.ALG.17073',
          "search": {
            "mode": 'match'
          },
          "resource": {
            "resourceType": 'AllergyIntolerance',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.ALG.17073',
            "meta": {
              "lastUpdated": '2020-11-11T20:40:37-05:00'
            },
            "verificationStatus": {
              "coding": [
                {
                  "system": 'http://terminology.hl7.org/CodeSystem/allergyintolerance-verification',
                  "code": 'confirmed',
                  "display": 'Confirmed'
                }
              ]
            },
            "clinicalStatus": {
              "coding": [
                {
                  "system": 'http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical',
                  "code": 'active',
                  "display": 'Active'
                }
              ]
            },
            "category": [
              'medication'
            ],
            "code": {
              "coding": [
                {
                  "system": 'http://www.nlm.nih.gov/research/umls/rxnorm',
                  "code": '1191',
                  "display": 'Aspirin'
                }
              ],
              "text": 'aspirin'
            },
            "patient": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid-Anna Santiago'
            },
            "onsetString": 'unknown',
            "reaction": [
              {
                "manifestation": [
                  {
                    "text": 'Bleeding'
                  }
                ],
                "severity": 'severe'
              }
            ],
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><br /><b>Allergy Intolerance</b><br /><b>Patient</b>:Mcgovern,Astrid-Anna Santiago<br /> <b>Clinical Status</b>: <b>Code</b>:active <b>Display</b>:Active <b>System</b>:http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical<br /><b>Verification Status</b>: <b>Code</b>:confirmed <b>Display</b>:Confirmed <b>System</b>:http://terminology.hl7.org/CodeSystem/allergyintolerance-verification<br /><b>Category</b>:medication<br /><b>Code</b>:<b>Code</b>:1191 <b>Display</b>:Aspirin <b>System</b>:http://www.nlm.nih.gov/research/umls/rxnorm <b>Text</b>:aspirin<br /><b>Onset</b>:unknown<br /><b>Reaction</b>:<b>Text</b>:Bleeding <b>Severity</b>:severe<br /><br /></div>'
              # rubocop:enable Layout/LineLength
            }
          }
        }
      ],
      "link": [
        {
          "relation": 'self',
          "url": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/AllergyIntolerance?patient=A879904FD2FE4B2D90C89FDA84E1285F'
        }
      ]
    }.freeze

    SOARIAN_R4_ALLERGY_INTOLERANCE_SEARCH_BY_PT_ENTRY ||= {
      "resourceType": 'Bundle',
      "id": '69942070-70bb-4ef2-a7b9-260109527317',
      "type": 'searchset',
      "timestamp": '2021-03-19T12:22:26-04:00',
      "entry": [
        {
          "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/AllergyIntolerance/A879904FD2FE4B2D90C89FDA84E1285F.ALG.17073',
          "search": {
            "mode": 'match'
          },
          "resource": {
            "resourceType": 'AllergyIntolerance',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.ALG.17073',
            "meta": {
              "lastUpdated": '2020-11-11T20:40:37-05:00'
            },
            "verificationStatus": {
              "coding": [
                {
                  "system": 'http://terminology.hl7.org/CodeSystem/allergyintolerance-verification',
                  "code": 'confirmed',
                  "display": 'Confirmed'
                }
              ]
            },
            "clinicalStatus": {
              "coding": [
                {
                  "system": 'http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical',
                  "code": 'active',
                  "display": 'Active'
                }
              ]
            },
            "category": [
              'medication'
            ],
            "code": {
              "coding": [
                {
                  "system": 'http://www.nlm.nih.gov/research/umls/rxnorm',
                  "code": '1191',
                  "display": 'Aspirin'
                }
              ],
              "text": 'aspirin'
            },
            "patient": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid-Anna Santiago'
            },
            "onsetString": 'unknown',
            "reaction": [
              {
                "manifestation": [
                  {
                    "text": 'Bleeding'
                  }
                ],
                "severity": 'severe'
              }
            ],
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><br /><b>Allergy Intolerance</b><br /><b>Patient</b>:Mcgovern,Astrid-Anna Santiago<br /> <b>Clinical Status</b>: <b>Code</b>:active <b>Display</b>:Active <b>System</b>:http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical<br /><b>Verification Status</b>: <b>Code</b>:confirmed <b>Display</b>:Confirmed <b>System</b>:http://terminology.hl7.org/CodeSystem/allergyintolerance-verification<br /><b>Category</b>:medication<br /><b>Code</b>:<b>Code</b>:1191 <b>Display</b>:Aspirin <b>System</b>:http://www.nlm.nih.gov/research/umls/rxnorm <b>Text</b>:aspirin<br /><b>Onset</b>:unknown<br /><b>Reaction</b>:<b>Text</b>:Bleeding <b>Severity</b>:severe<br /><br /></div>'
              # rubocop:enable Layout/LineLength
            }
          }
        },
        {
          "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/AllergyIntolerance/A879904FD2FE4B2D90C89FDA84E1285F.ALGIND.NOLAT.11212',
          "search": {
            "mode": 'match'
          },
          "resource": {
            "resourceType": 'AllergyIntolerance',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.ALGIND.NOLAT.11212',
            "meta": {
              "lastUpdated": '2020-11-11T20:40:06-05:00'
            },
            "verificationStatus": {
              "coding": [
                {
                  "system": 'http://terminology.hl7.org/CodeSystem/allergyintolerance-verification',
                  "code": 'confirmed',
                  "display": 'Confirmed'
                }
              ]
            },
            "clinicalStatus": {
              "coding": [
                {
                  "system": 'http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical',
                  "code": 'active',
                  "display": 'Active'
                }
              ]
            },
            "code": {
              "text": 'No known latex allergy (situation)'
            },
            "patient": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid-Anna Santiago'
            },
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><br /><b>Allergy Intolerance</b><br /><b>Patient</b>:Mcgovern,Astrid-Anna Santiago<br /> <b>Clinical Status</b>: <b>Code</b>:active <b>Display</b>:Active <b>System</b>:http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical<br /><b>Verification Status</b>: <b>Code</b>:confirmed <b>Display</b>:Confirmed <b>System</b>:http://terminology.hl7.org/CodeSystem/allergyintolerance-verification<br /><b>Code</b>: <b>Text</b>:No known latex allergy (situation)<br /></div>'
              # rubocop:enable Layout/LineLength
            }
          }
        }
      ],
      "link": [
        {
          "relation": 'self',
          "url": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/AllergyIntolerance?patient=A879904FD2FE4B2D90C89FDA84E1285F'
        }
      ]
    }.freeze
  end
end
