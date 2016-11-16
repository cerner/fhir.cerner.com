module Cerner
  module Resources

    DSTU2_ALLERGY_INTOLERANCE_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "84a45b50-f11b-4c0a-9411-756156cbd49f",
      "type": "searchset",
      "total": 3,
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-open.sandboxcerner.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/AllergyIntolerance?patient=2744010"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/AllergyIntolerance/2759741",
          "resource": {
            "resourceType": "AllergyIntolerance",
            "id": "2759741",
            "meta": {
              "versionId": "2759741",
              "lastUpdated": "2014-09-24T23:16:54.000Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Allergy Intolerance&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: RHEUM, TEST ONE&lt;/p&gt;&lt;p&gt;&lt;b&gt;Allergy&lt;/b&gt;: Peanuts&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Criticality&lt;/b&gt;: &lt;/p&gt;&lt;p&gt;&lt;b&gt;Category&lt;/b&gt;: Food&lt;/p&gt;&lt;p&gt;&lt;b&gt;Reactions&lt;/b&gt;: &lt;/p&gt;&lt;p&gt;&lt;b&gt;Onset&lt;/b&gt;: &lt;/p&gt;&lt;p&gt;&lt;b&gt;Note&lt;/b&gt;: &lt;/p&gt;&lt;/div&gt;"
            },
            "recordedDate": "2014-09-24T18:16:54.000",
            "recorder": {
              "reference": "Practitioner/2770007",
              "display": "Song, River"
            },
            "patient": {
              "reference": "Patient/2744010",
              "display": "RHEUM, TEST ONE"
            },
            "substance": {
              "text": "Peanuts"
            },
            "status": "active",
            "type": "allergy",
            "category": "food"
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/AllergyIntolerance/3643739",
          "resource": {
            "resourceType": "AllergyIntolerance",
            "id": "3643739",
            "meta": {
              "versionId": "3643739",
              "lastUpdated": "2015-03-11T20:36:08.000Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Allergy Intolerance&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: RHEUM, TEST ONE&lt;/p&gt;&lt;p&gt;&lt;b&gt;Allergy&lt;/b&gt;: Dust allergy&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Criticality&lt;/b&gt;: &lt;/p&gt;&lt;p&gt;&lt;b&gt;Category&lt;/b&gt;: Environment&lt;/p&gt;&lt;p&gt;&lt;b&gt;Reactions&lt;/b&gt;: &lt;/p&gt;&lt;p&gt;&lt;b&gt;Onset&lt;/b&gt;: &lt;/p&gt;&lt;p&gt;&lt;b&gt;Note&lt;/b&gt;: &lt;/p&gt;&lt;/div&gt;"
            },
            "recordedDate": "2015-03-11T15:36:08.000",
            "recorder": {
              "reference": "Practitioner/3270007",
              "display": "Who, Doctor"
            },
            "patient": {
              "reference": "Patient/2744010",
              "display": "RHEUM, TEST ONE"
            },
            "substance": {
              "coding": [
                {
                  "system": "http://snomed.info/sct",
                  "code": "390952000",
                  "display": "Dust allergy (disorder)",
                  "userSelected": true
                }
              ],
              "text": "Dust allergy"
            },
            "status": "active",
            "type": "allergy",
            "category": "environment"
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/AllergyIntolerance/3643731",
          "resource": {
            "resourceType": "AllergyIntolerance",
            "id": "3643731",
            "meta": {
              "versionId": "3643735",
              "lastUpdated": "2015-03-11T20:34:59.000Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Allergy Intolerance&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: RHEUM, TEST ONE&lt;/p&gt;&lt;p&gt;&lt;b&gt;Allergy&lt;/b&gt;: Penicillin&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Entered In Error&lt;/p&gt;&lt;p&gt;&lt;b&gt;Criticality&lt;/b&gt;: &lt;/p&gt;&lt;p&gt;&lt;b&gt;Category&lt;/b&gt;: Medication&lt;/p&gt;&lt;p&gt;&lt;b&gt;Reactions&lt;/b&gt;: &lt;/p&gt;&lt;p&gt;&lt;b&gt;Onset&lt;/b&gt;: &lt;/p&gt;&lt;p&gt;&lt;b&gt;Note&lt;/b&gt;: &lt;/p&gt;&lt;/div&gt;"
            },
            "recordedDate": "2015-03-11T15:34:59.000",
            "recorder": {
              "reference": "Practitioner/3270007",
              "display": "Who, Doctor"
            },
            "patient": {
              "reference": "Patient/2744010",
              "display": "RHEUM, TEST ONE"
            },
            "substance": {
              "coding": [
                {
                  "system": "http://snomed.info/sct",
                  "code": "373270004",
                  "display": "Penicillin -class of antibiotic- (substance)",
                  "userSelected": true
                }
              ],
              "text": "Penicillin"
            },
            "status": "entered-in-error",
            "type": "allergy",
            "category": "medication"
          }
        }
      ]
    }
    
    DSTU2_ALLERGY_INTOLERANCE_BUNDLE_BY_STATUS ||= {
      "resourceType":"Bundle",
      "id":"ae87133e-a1ee-11e6-80f5-76304dec7eb7",
      "type":"searchset",
      "total":1,
      "link":[
        {
          "relation":"self",
          "url":"https://fhir-open.sandboxcerner.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/AllergyIntolerance?patient=2744010&status=active"
        }
      ],
      "entry":[
        {
          "fullUrl":"https://fhir-open.sandboxcerner.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/AllergyIntolerance/2759741",
          "resource":{
            "resourceType":"AllergyIntolerance",
            "id":"2759741",
            "meta":{
              "versionId":"2759741",
              "lastUpdated":"2014-09-24T23:16:54.000Z"
            },
            "text":{
              "status":"generated",
              "div":"&lt;div&gt;&lt;p&gt;&lt;b&gt;Allergy Intolerance&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: RHEUM, TEST ONE&lt;/p&gt;&lt;p&gt;&lt;b&gt;Allergy&lt;/b&gt;: Peanuts&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Criticality&lt;/b&gt;: &lt;/p&gt;&lt;p&gt;&lt;b&gt;Category&lt;/b&gt;: Food&lt;/p&gt;&lt;p&gt;&lt;b&gt;Reactions&lt;/b&gt;: &lt;/p&gt;&lt;p&gt;&lt;b&gt;Onset&lt;/b&gt;: &lt;/p&gt;&lt;p&gt;&lt;b&gt;Note&lt;/b&gt;: &lt;/p&gt;&lt;/div&gt;"
            },
            "recordedDate":"2014-09-24T18:16:54.000",
            "recorder":{
              "reference":"Practitioner/2770007",
              "display":"Song, River"
            },
            "patient":{
              "reference":"Patient/2744010",
              "display":"RHEUM, TEST ONE"
            },
            "substance":{
              "text":"Peanuts"
            },
            "status":"active",
            "type":"allergy",
            "category":"food"
          }
        }
      ]
    }

    DSTU2_ALLERGY_INTOLERANCE_BUNDLE_BY_ID ||= {
      "resourceType":"Bundle",
      "id":"d98fd4d0-a1ee-11e6-80f5-76304dec7eb7",
      "type":"searchset",
      "total":1,
      "link":[
        {
          "relation":"self",
          "url":"https://fhir-open.sandboxcerner.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/AllergyIntolerance?_id=3643739"
        }
      ],
      "entry":[
        {
          "fullUrl":"https://fhir-open.sandboxcerner.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/AllergyIntolerance/2759741",
          "resource":{
            "resourceType":"AllergyIntolerance",
            "id":"3643739",
            "meta":{
              "versionId":"3643739",
              "lastUpdated":"2015-03-11T20:36:08.000Z"
            },
            "text":{
              "status":"generated",
              "div":"&lt;div&gt;&lt;p&gt;&lt;b&gt;Allergy Intolerance&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: RHEUM, TEST ONE&lt;/p&gt;&lt;p&gt;&lt;b&gt;Allergy&lt;/b&gt;: Dust allergy&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Criticality&lt;/b&gt;: &lt;/p&gt;&lt;p&gt;&lt;b&gt;Category&lt;/b&gt;: Environment&lt;/p&gt;&lt;p&gt;&lt;b&gt;Reactions&lt;/b&gt;: &lt;/p&gt;&lt;p&gt;&lt;b&gt;Onset&lt;/b&gt;: &lt;/p&gt;&lt;p&gt;&lt;b&gt;Note&lt;/b&gt;: &lt;/p&gt;&lt;/div&gt;"
            },
            "recordedDate":"2015-03-11T15:36:08.000",
            "recorder":{
              "reference":"Practitioner/3270007",
              "display":"Who, Doctor"
            },
            "patient":{
              "reference":"Patient/2744010",
              "display":"RHEUM, TEST ONE"
            },
            "substance":{
              "coding":[
                {
                  "system":"http://snomed.info/sct",
                  "code":"390952000",
                  "display":"Dust allergy (disorder)",
                  "userSelected":true
                }
              ],
              "text":"Dust allergy"
            },
            "status":"active",
            "type":"allergy",
            "category":"environment"
          }
        }
      ]
    }

    DSTU2_ALLERGY_INTOLERANCE_CREATE ||= {
        "resourceType": "AllergyIntolerance",
        "category": "medication",
        "criticality": "CRITL",
        "recordedDate": "2015-12-15T13:13:20-06:00",
        "status": "active",
        "type": "allergy",
        "onset": "2012-12-15T00:00:00Z",
        "patient": {
            "reference": "Patient/41563419"
        },
        "reporter": {
            "reference": "Patient/41563419"
        },
        "recorder": {
            "reference": "Practitioner/41562141"
        },
        "reaction": [
            {
                "manifestation": [
                    {
                        "text": "Hives"
                    }
                ]
            }
        ],
        "note": {
            "authorReference": {"reference": "Practitioner/41562141"},
            "time": "2012-12-15T00:00:00Z",
            "text": "Note 1"
        },
        "substance": {
            "coding": [
                {
                    "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
                    "code": "3498"
                }
            ]
        }
    }

    DSTU2_ALLERGY_INTOLERANCE_UPDATE ||= {
        "resourceType": "AllergyIntolerance",
        "id": "35502191",
        "category": "medication",
        "criticality": "CRITU",
        "recordedDate": "2015-12-15T13:13:20-06:00",
        "status": "active",
        "type": "allergy",
        "onset": "2012-12-15T00:00:00Z",
        "patient": {
            "reference": "Patient/41563419"
        },
        "reporter": {
            "reference": "Patient/41563419"
        },
        "recorder": {
            "reference": "Practitioner/41562141"
        },
        "reaction": [
            {
                "id": "35502191",
                "manifestation": [
                    {
                        "text": "Hives"
                    }
                ]
            }
        ],
        "note": {
            "authorReference": {"reference": "Practitioner/41562141"},
            "time": "2012-12-15T00:00:00Z",
            "text": "Note 1"
        },
        "substance": {
            "coding": [
                {
                    "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
                    "code": "3498"
                }
            ]
        }
    }

    DSTU2_ALLERGY_INTOLERANCE_RESOURCE ||= {
      "resourceType": "AllergyIntolerance",
      "id": "3643739",
      "meta": {
        "versionId": "3643739",
        "lastUpdated": "2015-03-11T20:36:08.000Z"
      },
      "text": {
        "status": "generated",
        "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Allergy Intolerance&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: RHEUM, TEST ONE&lt;/p&gt;&lt;p&gt;&lt;b&gt;Allergy&lt;/b&gt;: Dust allergy&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Criticality&lt;/b&gt;: &lt;/p&gt;&lt;p&gt;&lt;b&gt;Category&lt;/b&gt;: Environment&lt;/p&gt;&lt;p&gt;&lt;b&gt;Reactions&lt;/b&gt;: &lt;/p&gt;&lt;p&gt;&lt;b&gt;Onset&lt;/b&gt;: &lt;/p&gt;&lt;p&gt;&lt;b&gt;Note&lt;/b&gt;: &lt;/p&gt;&lt;/div&gt;"
      },
      "recordedDate": "2015-03-11T15:36:08.000",
      "recorder": {
        "reference": "Practitioner/3270007",
        "display": "Who, Doctor"
      },
      "patient": {
        "reference": "Patient/2744010",
        "display": "RHEUM, TEST ONE"
      },
      "substance": {
        "coding": [
          {
            "system": "http://snomed.info/sct",
            "code": "390952000",
            "display": "Dust allergy (disorder)",
            "userSelected": true
          }
        ],
        "text": "Dust allergy"
      },
      "status": "active",
      "type": "allergy",
      "category": "environment"
    }
    
  end
end
