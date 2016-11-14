module Cerner
  module Resources

    DSTU2_IMMUNIZATION_BUNDLE ||=
      {
        "resourceType": "Bundle",
        "id": "8291c5a4-0f4c-4eae-86bc-f927f6582591",
        "type": "searchset",
        "total": 4,
        "link": [
          {
            "relation": "self",
            "url": "https://fhir-open.sandboxcerner.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Immunization?patient=2100031"
          }
        ],
        "entry": [
          {
            "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Immunization/M22335399",
            "resource": {
              "resourceType": "Immunization",
              "id": "M22335399",
              "meta": {
                "versionId": "1",
                "lastUpdated": "2016-05-03T10:41:40-0500"
              },
              "text": {
                "status": "generated",
                "div": "&lt;div>&lt;p>&lt;b>Immunization&lt;/b>&lt;/p>&lt;p>&lt;b>Vaccine&lt;/b>: haemophilus b conjugate (PRP-T) vaccine&lt;/p>&lt;p>&lt;b>Date&lt;/b>: 2013-12-11T11:41:00-0600&lt;/p>&lt;p>&lt;b>Given&lt;/b>: Yes&lt;/p>&lt;p>&lt;b>Administered by&lt;/b>: Dr. Who&lt;/p>&lt;p>&lt;b>Site&lt;/b>: Left Deltoid&lt;/p>&lt;p>&lt;b>Route&lt;/b>: ID&lt;/p>&lt;/div>"
              },
              "status": "completed",
              "date": "2013-12-11T11:41:00-0600",
              "vaccineCode": {
                "coding": [
                  {
                    "system": "http://hl7.org/fhir/sid/cvx",
                    "code": "48",
                    "display": "Hib (PRP-T)",
                    "userSelected": false
                  }
                ],
                "text": "haemophilus b conjugate (PRP-T) vaccine"
              },
              "patient": {
                "reference": "Patient/2100031",
                "display": "River Song"
              },
              "wasNotGiven": false,
              "reported": false,
              "performer": {
                "reference": "Practitioner/7750958",
                "display": "Dr. Who"
              },
              "encounter": {
                "reference": "Encounter/6456569"
              },
              "manufacturer": {
                "display": "Biovail Pharmaceuticals Inc"
              },
              "location": {
                "reference": "Location/4048128",
                "display": "Baseline East"
              },
              "lotNumber": "245",
              "expirationDate": "2016-05-04",
              "site": {
                "coding": [
                  {
                    "system": "http://snomed.info/sct",
                    "code": "37622008",
                    "display": "deltoid region structure (body structure)",
                    "userSelected": false
                  }
                ],
                "text": "Left Deltoid"
              },
              "route": {
                "coding": [
                  {
                    "system": "http://ncimeta.nci.nih.gov",
                    "code": "C38238",
                    "display": "INTRADERMAL",
                    "userSelected": false
                  }
                ],
                "text": "ID"
              },
              "doseQuantity": {
                "value": 1,
                "unit": "mL",
                "system": "http://unitsofmeasure.org",
                "code": "mL"
              }
            }
          },
          {
            "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Immunization/M22335324",
            "resource": {
              "resourceType": "Immunization",
              "id": "M22335324",
              "meta": {
                "versionId": "1",
                "lastUpdated": "2016-05-03T10:38:58-0500"
              },
              "text": {
                "status": "generated",
                "div": "&lt;div>&lt;p>&lt;b>Immunization&lt;/b>&lt;/p>&lt;p>&lt;b>Vaccine&lt;/b>: human papillomavirus vaccine&lt;/p>&lt;p>&lt;b>Date&lt;/b>: 2015-02-03&lt;/p>&lt;p>&lt;b>Given&lt;/b>: Yes&lt;/p>&lt;p>&lt;b>Administered by&lt;/b>: Dr. Who&lt;/p>&lt;p>&lt;b>Site&lt;/b>: Left Thigh&lt;/p>&lt;p>&lt;b>Route&lt;/b>: IM&lt;/p>&lt;/div>"
              },
              "status": "completed",
              "date": "2015-02-03",
              "vaccineCode": {
                "coding": [
                  {
                    "system": "http://hl7.org/fhir/sid/cvx",
                    "code": "62",
                    "display": "HPV, quadrivalent",
                    "userSelected": false
                  }
                ],
                "text": "human papillomavirus vaccine"
              },
              "patient": {
                "reference": "Patient/2100031",
                "display": "River Song"
              },
              "wasNotGiven": false,
              "reported": true,
              "performer": {
                "reference": "Practitioner/7750958",
                "display": "Dr. Who"
              },
              "encounter": {
                "reference": "Encounter/6456569"
              },
              "manufacturer": {
                "display": "Bracco Diagnostics Inc"
              },
              "location": {
                "reference": "Location/4048128",
                "display": "Baseline East"
              },
              "lotNumber": "45",
              "site": {
                "coding": [
                  {
                    "system": "http://snomed.info/sct",
                    "code": "61396006",
                    "display": "structure of left thigh (body structure)",
                    "userSelected": false
                  }
                ],
                "text": "Left Thigh"
              },
              "route": {
                "text": "IM"
              },
              "doseQuantity": {
                "value": 1,
                "unit": "mL",
                "system": "http://unitsofmeasure.org",
                "code": "mL"
              }
            }
          },
          {
            "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Immunization/M22335052",
            "resource": {
              "resourceType": "Immunization",
              "id": "M22335052",
              "meta": {
                "versionId": "1",
                "lastUpdated": "2016-05-03"
              },
              "text": {
                "status": "generated",
                "div": "&lt;div>&lt;p>&lt;b>Immunization&lt;/b>&lt;/p>&lt;p>&lt;b>Vaccine&lt;/b>: diphtheria/pertussis, acel/tetanus ped&lt;/p>&lt;p>&lt;b>Date Attempted&lt;/b>: 2016-05-02&lt;/p>&lt;p>&lt;b>Given&lt;/b>: No&lt;/p>&lt;p>&lt;b>Administered by&lt;/b>: Dr. Who&lt;/p>&lt;p>&lt;b>Reasons Not Given&lt;/b>: Allergy to Neomycin (Disorder)&lt;/p>&lt;/div>"
              },
              "status": "stopped",
              "date": "2016-05-02",
              "vaccineCode": {
                "coding": [
                  {
                    "system": "http://hl7.org/fhir/sid/cvx",
                    "code": "20",
                    "display": "DTaP",
                    "userSelected": false
                  }
                ],
                "text": "diphtheria/pertussis, acel/tetanus ped"
              },
              "patient": {
                "reference": "Patient/2100031",
                "display": "River Song"
              },
              "wasNotGiven": true,
              "reported": false,
              "performer": {
                "reference": "Practitioner/7750958",
                "display": "Dr. Who"
              },
              "location": {
                "reference": "Location/4048128",
                "display": "Baseline East"
              },
              "explanation": {
                "reasonNotGiven": [
                  {
                    "coding": [
                      {
                        "system": "http://hl7.org/fhir/v3/ActReason",
                        "code": "MEDPREC",
                        "display": "medical precaution",
                        "userSelected": false
                      }
                    ],
                    "text": "Allergy to Neomycin (Disorder)"
                  }
                ]
              }
            }
          },
          {
            "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Immunization/HM4234847",
            "resource": {
              "resourceType": "Immunization",
              "id": "HM4234847",
              "meta": {
                "versionId": "0",
                "lastUpdated": "2016-05-13T12:03:36-0500"
              },
              "text": {
                "status": "generated",
                "div": "&lt;div>&lt;p>&lt;b>Immunization&lt;/b>&lt;/p>&lt;p>&lt;b>Vaccine&lt;/b>: Hepatitis B&lt;/p>&lt;p>&lt;b>Date Attempted&lt;/b>: 2016-05-13T12:03:36-0500&lt;/p>&lt;p>&lt;b>Given&lt;/b>: No&lt;/p>&lt;p>&lt;b>Administered by&lt;/b>: Dr. Who&lt;/p>&lt;p>&lt;b>Reasons Not Given&lt;/b>: Patient Refuses&lt;/p>&lt;/div>"
              },
              "status": "on-hold",
              "date": "2016-05-13T12:03:36-0500",
              "vaccineCode": {
                "text": "Hepatitis B"
              },
              "patient": {
                "reference": "Patient/2100031",
                "display": "River Song"
              },
              "wasNotGiven": true,
              "reported": false,
              "performer": {
                "reference": "Practitioner/7750958",
                "display": "Dr. Who"
              },
              "explanation": {
                "reasonNotGiven": [
                  {
                    "coding": [
                      {
                        "system": "http://hl7.org/fhir/v3/ActReason",
                        "code": "PATOBJ",
                        "display": "patient objection",
                        "userSelected": false
                      }
                    ],
                    "text": "Patient Refuses"
                  }
                ]
              }
            }
          }
        ]
      }
      
  end
end
