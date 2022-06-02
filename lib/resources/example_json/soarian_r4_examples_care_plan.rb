# frozen_string_literal: true

module Cerner
  module Resources

    SOARIAN_R4_CAREPLAN_SEARCH_BY_PT_CATEGORY ||= {
      "resourceType": 'Bundle',
      "id": '5b57aff5-d3ed-4f11-aeef-e8f7440870e9',
      "type": 'searchset',
      "timestamp": '2022-05-16T03:21:23-04:00',
      "entry": [
        {
          "fullUrl": 'https://fhir-myrecord-sc.cerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/CarePlan/A879904FD2FE4B2D90C89FDA84E1285F.NRS.43060',
          "resource": {
            "resourceType": 'CarePlan',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.NRS.43060',
            "meta": {
              "lastUpdated": '2020-11-15T16:09:49-05:00'
            },
            "status": 'active',
            "intent": 'plan',
            "category": [
              {
                "coding": [
                  {
                    "system": 'http://hl7.org/fhir/us/core/CodeSystem/careplan-category',
                    "code": 'assess-plan'
                  }
                ]
              }
            ],
            "subject": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid Santiago'
            },
            "encounter": {
              "reference": 'Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019',
              "display": 'Inferno,Initial'
            },
            "text": {
              "status": 'additional',
              # rubocop:disable Layout/LineLength
              "div": "<div xmlns='http://www.w3.org/1999/xhtml'><b>*** The appearance of the following text may differ from its appearance on the native electronic health record, but the content is the same. For example, text displayed in color may appear in regular,black type.***</b><br /><b>CarePlan</b><br /><b>Patient</b>:Mcgovern,Astrid Santiago<br /><b>Status</b>:active<br /><b>Encounter</b>:Inferno,Initial<br /><b>Intent</b>:plan<br /><b>Category : </b><b>System</b>:http://hl7.org/fhir/us/core/CodeSystem/careplan-category <b>Code</b>:assess-plan<br /><b>Assessment and Plan</b>:<ul><li>Comments: <span><p>i. The patient was found to have Anemia and Dr Seven and his staff diagnosed</p> <p>the condition and treated Ms Rebecca for Anemia during the 2 day stay at</p> <p>Community Health Hospitals. Ms Rebecca recovered from Anemia during</p> <p>the stay and is being discharged in a stable condition. If there is fever</p> <p>greater than 101.5 F or onset of chest pain/breathlessness the patient is</p> <p>advised to contact emergency.</p></span></li></ul><br /></div>"
              # rubocop:enable Layout/LineLength
            }
          }
        }
      ],
      "link": [
        {
          "relation": 'self',
          "url": 'https://fhir-myrecord-sc.cerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/CarePlan?patient=A879904FD2FE4B2D90C89FDA84E1285F&category=assess-plan'
        }
      ]
    }.freeze

    SOARIAN_R4_CAREPLAN_SEARCH_BY_ID ||= {
      "resourceType": 'Bundle',
      "id": '5b57aff5-d3ed-4f11-aeef-e8f7440870e9',
      "type": 'searchset',
      "timestamp": '2022-05-16T03:21:23-04:00',
      "entry": [
        {
          "fullUrl": 'https://fhir-myrecord-sc.cerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/CarePlan/A879904FD2FE4B2D90C89FDA84E1285F.NRS.43060',
          "resource": {
            "resourceType": 'CarePlan',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.NRS.43060',
            "meta": {
              "lastUpdated": '2020-11-15T16:09:49-05:00'
            },
            "status": 'active',
            "intent": 'plan',
            "category": [
              {
                "coding": [
                  {
                    "system": 'http://hl7.org/fhir/us/core/CodeSystem/careplan-category',
                    "code": 'assess-plan'
                  }
                ]
              }
            ],
            "subject": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid Santiago'
            },
            "encounter": {
              "reference": 'Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019',
              "display": 'Inferno,Initial'
            },
            "text": {
              "status": 'additional',
              # rubocop:disable Layout/LineLength
              "div": "<div xmlns='http://www.w3.org/1999/xhtml'><b>*** The appearance of the following text may differ from its appearance on the native electronic health record, but the content is the same. For example, text displayed in color may appear in regular,black type.***</b><br /><b>CarePlan</b><br /><b>Patient</b>:Mcgovern,Astrid Santiago<br /><b>Status</b>:active<br /><b>Encounter</b>:Inferno,Initial<br /><b>Intent</b>:plan<br /><b>Category : </b><b>System</b>:http://hl7.org/fhir/us/core/CodeSystem/careplan-category <b>Code</b>:assess-plan<br /><b>Assessment and Plan</b>:<ul><li>Comments: <span><p>i. The patient was found to have Anemia and Dr Seven and his staff diagnosed</p> <p>the condition and treated Ms Rebecca for Anemia during the 2 day stay at</p> <p>Community Health Hospitals. Ms Rebecca recovered from Anemia during</p> <p>the stay and is being discharged in a stable condition. If there is fever</p> <p>greater than 101.5 F or onset of chest pain/breathlessness the patient is</p> <p>advised to contact emergency.</p></span></li></ul><br /></div>"
              # rubocop:enable Layout/LineLength
            }
          }
        }
      ],
      "link": [
        {
          "relation": 'self',
          "url": 'https://fhir-myrecord-sc.cerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/CarePlan?patient=A879904FD2FE4B2D90C89FDA84E1285F&category=assess-plan'
        }
      ]
    }.freeze

    SOARIAN_R4_CAREPLAN_READ_BY_ID ||= {
      "resourceType": 'CarePlan',
      "id": 'A879904FD2FE4B2D90C89FDA84E1285F.NRS.43060',
      "meta": {
        "lastUpdated": '2020-11-15T16:09:49-05:00'
      },
      "status": 'active',
      "intent": 'plan',
      "category": [
        {
          "coding": [
            {
              "system": 'http://hl7.org/fhir/us/core/CodeSystem/careplan-category',
              "code": 'assess-plan'
            }
          ]
        }
      ],
      "subject": {
        "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
        "display": 'Mcgovern,Astrid Santiago'
      },
      "encounter": {
        "reference": 'Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019',
        "display": 'Inferno,Initial'
      },
      "text": {
        "status": 'additional',
        # rubocop:disable Layout/LineLength
        "div": "<div xmlns='http://www.w3.org/1999/xhtml'><b>*** The appearance of the following text may differ from its appearance on the native electronic health record, but the content is the same. For example, text displayed in color may appear in regular,black type.***</b><br /><b>CarePlan</b><br /><b>Patient</b>:Mcgovern,Astrid Santiago<br /><b>Status</b>:active<br /><b>Encounter</b>:Inferno,Initial<br /><b>Intent</b>:plan<br /><b>Category : </b><b>System</b>:http://hl7.org/fhir/us/core/CodeSystem/careplan-category <b>Code</b>:assess-plan<br /><b>Assessment and Plan</b>:<ul><li>Comments: <span><p>i. The patient was found to have Anemia and Dr Seven and his staff diagnosed</p> <p>the condition and treated Ms Rebecca for Anemia during the 2 day stay at</p> <p>Community Health Hospitals. Ms Rebecca recovered from Anemia during</p> <p>the stay and is being discharged in a stable condition. If there is fever</p> <p>greater than 101.5 F or onset of chest pain/breathlessness the patient is</p> <p>advised to contact emergency.</p></span></li></ul><br /></div>"
        # rubocop:enable Layout/LineLength
      }
    }.freeze
  end
end
