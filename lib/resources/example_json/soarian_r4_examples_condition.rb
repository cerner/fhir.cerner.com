# frozen_string_literal: true

module Cerner
  module Resources

    SOARIAN_R4_CONDITION_SEARCH_BY_PT ||= {
      "resourceType": "Bundle",
	  "id": "1a606271-341b-4ac4-aeb6-1931f27178ba",
	  "type": "searchset",
	  "timestamp": "2022-05-11T04:42:40-04:00",
	  "entry": [
     {
      "fullUrl": "https://fhir-myrecord-sc.cerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/Condition/A879904FD2FE4B2D90C89FDA84E1285F.NRS.43074",
      "search": {
        "mode": "match"
      },
      "resource": {
        "resourceType": "Condition",
        "id": "A879904FD2FE4B2D90C89FDA84E1285F.NRS.43074",
        "meta": {
          "lastUpdated": "2020-11-15T16:18:47-05:00"
        },
        "clinicalStatus": {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/condition-clinical",
              "code": "active",
              "display": "Active"
            }
          ]
        },
        "verificationStatus": {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/condition-ver-status",
              "code": "confirmed",
              "display": "Confirmed"
            }
          ]
        },
        "category": [
          {
            "coding": [
              {
                "system": "http://hl7.org/fhir/us/core/CodeSystem/condition-category",
                "code": "health-concern",
                "display": "Health Concern"
              }
            ]
          }
        ],
        "subject": {
          "reference": "Patient/A879904FD2FE4B2D90C89FDA84E1285F",
          "display": "Mcgovern,Astrid Santiago"
        },
        "encounter": {
          "reference": "Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019",
          "display": "Inferno,Initial"
        },
        "code": {
          "text": "Depression"
        },
        "text": {
          "status": "generated",
		  # rubocop:disable Layout/LineLength
          "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><b>Condition</b><br /><b>Patient</b>: Mcgovern,Astrid Santiago<br /><b>Encounter</b>: Inferno,Initial<br /><b>Health Concern</b>: Depression<br /><b>Clinical Status</b>: <b>System</b>:http://terminology.hl7.org/CodeSystem/condition-clinical <b>Code</b>:active <b>Display</b>:Active <br /><b>Verification Status</b>: <b>System</b>:http://terminology.hl7.org/CodeSystem/condition-ver-status <b>Code</b>:confirmed <b>Display</b>:Confirmed <br /><b>Category</b>: <b>System</b>:http://hl7.org/fhir/us/core/CodeSystem/condition-category <b>Code</b>:health-concern <b>Display</b>:Health Concern <br /></div>"
          # rubocop:enable Layout/LineLength
		}
      }
    },
    {
      "fullUrl": "https://fhir-myrecord-sc.cerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/Condition/A879904FD2FE4B2D90C89FDA84E1285F.DX.23409",
      "search": {
        "mode": "match"
      },
      "resource": {
        "resourceType": "Condition",
        "id": "A879904FD2FE4B2D90C89FDA84E1285F.DX.23409",
        "meta": {
          "lastUpdated": "2020-11-15T16:15:56-05:00"
        },
        "clinicalStatus": {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/condition-clinical",
              "code": "active",
              "display": "Active"
            }
          ]
        },
        "verificationStatus": {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/condition-ver-status",
              "code": "confirmed",
              "display": "Confirmed"
            }
          ]
        },
        "category": [
          {
            "coding": [
              {
                "system": "http://terminology.hl7.org/CodeSystem/condition-category",
                "code": "encounter-diagnosis",
                "display": "Encounter Diagnosis"
              }
            ]
          }
        ],
        "subject": {
          "reference": "Patient/A879904FD2FE4B2D90C89FDA84E1285F",
          "display": "Mcgovern,Astrid Santiago"
        },
        "encounter": {
          "reference": "Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019",
          "display": "Inferno,Initial"
        },
        "code": {
          "coding": [
            {
              "system": "http://hl7.org/fhir/sid/icd-10-cm",
              "code": "D03.0",
              "display": "Melanoma in situ of lip"
            }
          ],
          "text": "Melanoma in situ of lip"
        },
        "text": {
          "status": "generated",
		  # rubocop:disable Layout/LineLength
          "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><b>Condition</b><br /><b>Patient</b>: Mcgovern,Astrid Santiago<br /><b>Encounter</b>: Inferno,Initial<br /><b>Diagnosis text</b>: Melanoma in situ of lip<br /><b>Diagnosis code</b>: <b>System</b>:http://hl7.org/fhir/sid/icd-10-cm <b>Code</b>:D03.0 <b>Display</b>:Melanoma in situ of lip <br /><b>Clinical Status</b>: <b>System</b>:http://terminology.hl7.org/CodeSystem/condition-clinical <b>Code</b>:active <b>Display</b>:Active <br /><b>Verification Status</b>: <b>System</b>:http://terminology.hl7.org/CodeSystem/condition-ver-status <b>Code</b>:confirmed <b>Display</b>:Confirmed <br /><b>Category</b>: <b>System</b>:http://terminology.hl7.org/CodeSystem/condition-category <b>Code</b>:encounter-diagnosis <b>Display</b>:Encounter Diagnosis <br /></div>"
          # rubocop:enable Layout/LineLength
		}
      }
    },
    {
      "fullUrl": "https://fhir-myrecord-sc.cerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/Condition/A879904FD2FE4B2D90C89FDA84E1285F.PRB.6885579",
      "search": {
        "mode": "match"
      },
      "resource": {
        "resourceType": "Condition",
        "id": "A879904FD2FE4B2D90C89FDA84E1285F.PRB.6885579",
        "meta": {
          "lastUpdated": "2020-11-15T16:15:06-05:00"
        },
        "clinicalStatus": {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/condition-clinical",
              "code": "active",
              "display": "Active"
            }
          ]
        },
        "verificationStatus": {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/condition-ver-status",
              "code": "confirmed",
              "display": "Confirmed"
            }
          ]
        },
        "category": [
          {
            "coding": [
              {
                "system": "http://terminology.hl7.org/CodeSystem/condition-category",
                "code": "problem-list-item",
                "display": "Problem List Item"
              }
            ]
          }
        ],
        "subject": {
          "reference": "Patient/A879904FD2FE4B2D90C89FDA84E1285F",
          "display": "Mcgovern,Astrid Santiago"
        },
        "encounter": {
          "reference": "Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019",
          "display": "Inferno,Initial"
        },
        "code": {
          "coding": [
            {
              "system": "http://snomed.info/sct",
              "code": "87522002"
            }
          ],
          "text": "Iron Deficiency Anemia"
        },
        "text": {
          "status": "additional",
		  # rubocop:disable Layout/LineLength
          "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><b>Condition</b><br /><b>Patient</b>: Mcgovern,Astrid Santiago<br /><b>Encounter</b>: Inferno,Initial<br /><b>Problem text</b>: Iron Deficiency Anemia<br /><b>Problem code</b>: <b>System</b>:http://snomed.info/sct <b>Code</b>:87522002 <br /><b>Clinical Status</b>: <b>System</b>:http://terminology.hl7.org/CodeSystem/condition-clinical <b>Code</b>:active <b>Display</b>:Active <br /><b>Verification Status</b>: <b>System</b>:http://terminology.hl7.org/CodeSystem/condition-ver-status <b>Code</b>:confirmed <b>Display</b>:Confirmed <br /><b>Category</b>: <b>System</b>:http://terminology.hl7.org/CodeSystem/condition-category <b>Code</b>:problem-list-item <b>Display</b>:Problem List Item <br /><b>Status</b>:Active <br /></div>"
		  # rubocop:enable Layout/LineLength
		}
      }
    }
  ],
  "link": [
    {
      "relation": "self",
      "url": "https://fhir-myrecord-sc.cerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/Condition?patient=A879904FD2FE4B2D90C89FDA84E1285F"
    }
  ]
    }.freeze

    SOARIAN_R4_CONDITION_SEARCH_BY_ID ||= {
      "resourceType": "Bundle",
  "id": "1a606271-341b-4ac4-aeb6-1931f27178ba",
  "type": "searchset",
  "timestamp": "2022-05-11T04:42:40-04:00",
  "entry": [
    {
      "fullUrl": "https://fhir-myrecord-sc.cerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/Condition/A879904FD2FE4B2D90C89FDA84E1285F.NRS.43074",
      "search": {
        "mode": "match"
      },
      "resource": {
        "resourceType": "Condition",
        "id": "A879904FD2FE4B2D90C89FDA84E1285F.NRS.43074",
        "meta": {
          "lastUpdated": "2020-11-15T16:18:47-05:00"
        },
        "clinicalStatus": {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/condition-clinical",
              "code": "active",
              "display": "Active"
            }
          ]
        },
        "verificationStatus": {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/condition-ver-status",
              "code": "confirmed",
              "display": "Confirmed"
            }
          ]
        },
        "category": [
          {
            "coding": [
              {
                "system": "http://hl7.org/fhir/us/core/CodeSystem/condition-category",
                "code": "health-concern",
                "display": "Health Concern"
              }
            ]
          }
        ],
        "subject": {
          "reference": "Patient/A879904FD2FE4B2D90C89FDA84E1285F",
          "display": "Mcgovern,Astrid Santiago"
        },
        "encounter": {
          "reference": "Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019",
          "display": "Inferno,Initial"
        },
        "code": {
          "text": "Depression"
        },
        "text": {
          "status": "generated",
		  # rubocop:disable Layout/LineLength
          "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><b>Condition</b><br /><b>Patient</b>: Mcgovern,Astrid Santiago<br /><b>Encounter</b>: Inferno,Initial<br /><b>Health Concern</b>: Depression<br /><b>Clinical Status</b>: <b>System</b>:http://terminology.hl7.org/CodeSystem/condition-clinical <b>Code</b>:active <b>Display</b>:Active <br /><b>Verification Status</b>: <b>System</b>:http://terminology.hl7.org/CodeSystem/condition-ver-status <b>Code</b>:confirmed <b>Display</b>:Confirmed <br /><b>Category</b>: <b>System</b>:http://hl7.org/fhir/us/core/CodeSystem/condition-category <b>Code</b>:health-concern <b>Display</b>:Health Concern <br /></div>"
          # rubocop:enable Layout/LineLength
		}
          }
        }
      ],
      "link": [
		{
		  "relation": "self",
		  "url": "https://fhir-myrecord-sc.cerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/Condition?patient=A879904FD2FE4B2D90C89FDA84E1285F"
		}
	  ]
    }.freeze

    SOARIAN_R4_CONDITION_READ ||= {
      "resourceType": "Condition",
        "id": "A879904FD2FE4B2D90C89FDA84E1285F.NRS.43074",
        "meta": {
          "lastUpdated": "2020-11-15T16:18:47-05:00"
        },
        "clinicalStatus": {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/condition-clinical",
              "code": "active",
              "display": "Active"
            }
          ]
        },
        "verificationStatus": {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/condition-ver-status",
              "code": "confirmed",
              "display": "Confirmed"
            }
          ]
        },
        "category": [
          {
            "coding": [
              {
                "system": "http://hl7.org/fhir/us/core/CodeSystem/condition-category",
                "code": "health-concern",
                "display": "Health Concern"
              }
            ]
          }
        ],
        "subject": {
          "reference": "Patient/A879904FD2FE4B2D90C89FDA84E1285F",
          "display": "Mcgovern,Astrid Santiago"
        },
        "encounter": {
          "reference": "Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019",
          "display": "Inferno,Initial"
        },
        "code": {
          "text": "Depression"
        },
        "text": {
          "status": "generated",
		  # rubocop:disable Layout/LineLength
          "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><b>Condition</b><br /><b>Patient</b>: Mcgovern,Astrid Santiago<br /><b>Encounter</b>: Inferno,Initial<br /><b>Health Concern</b>: Depression<br /><b>Clinical Status</b>: <b>System</b>:http://terminology.hl7.org/CodeSystem/condition-clinical <b>Code</b>:active <b>Display</b>:Active <br /><b>Verification Status</b>: <b>System</b>:http://terminology.hl7.org/CodeSystem/condition-ver-status <b>Code</b>:confirmed <b>Display</b>:Confirmed <br /><b>Category</b>: <b>System</b>:http://hl7.org/fhir/us/core/CodeSystem/condition-category <b>Code</b>:health-concern <b>Display</b>:Health Concern <br /></div>"
          # rubocop:enable Layout/LineLength
		}
    }.freeze
  end
end
