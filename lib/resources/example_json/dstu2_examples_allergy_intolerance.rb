module Cerner
  module Resources

    DSTU2_ALLERGY_INTOLERANCE_BUNDLE ||= {
    "resourceType": "Bundle",
    "id": "c7330db8-59df-499b-9f97-9f89b79dbfb4",
    "type": "searchset",
    "total": 2,
    "link": [{
      "relation": "self",
      "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/AllergyIntolerance?patient=4342010"
    }],
    "entry": [{
      "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/AllergyIntolerance/5703737",
      "resource": {
        "resourceType": "AllergyIntolerance",
        "id": "5703737",
        "meta": {
          "versionId": "5703737",
           "lastUpdated": "2016-06-27T14:10:11.000Z"
        },
        "text": {
          "status": "generated",
          "div": "&lt;div>&lt;p>&lt;b>Allergy Intolerance&lt;/b>&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: Smart, Joe&lt;/p>&lt;p>&lt;b>Allergy&lt;/b>: Peanuts&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Active&lt;/p>&lt;p>&lt;b>Criticality&lt;/b>: High Risk&lt;/p>&lt;p>&lt;b>Category&lt;/b>: Food&lt;/p>&lt;p>&lt;b>Reactions&lt;/b>: Dyspnea&lt;/p>&lt;p>&lt;b>Onset&lt;/b>: 1982&lt;/p>&lt;/div>"
        },
        "onset": "1982",
        "recordedDate": "2016-06-27T09:10:11.000-05:00",
        "recorder": {
          "reference": "Practitioner/1912007",
          "display": "Who, Doctor"
        },
        "patient": {
          "reference": "Patient/4342010",
          "display": "Smart, Joe"
        },
        "substance": {
          "coding": [{
            "system": "http://snomed.info/sct",
            "code": "256349002",
            "display": "Peanut - dietary (substance)",
            "userSelected": false
          }],
          "text": "Peanuts"
        },
        "status": "active",
        "criticality": "CRITH",
        "type": "allergy",
        "category": "food",
        "reaction": [{
          "id": "5703739",
          "manifestation": [{
            "coding": [{
              "system": "http://snomed.info/sct",
              "code": "267036007",
              "display": "Dyspnea (finding)",
              "userSelected": false
            }],
            "text": "Dyspnea"
           }]
         }]
      }
    }, {
      "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/AllergyIntolerance/5703733",
      "resource": {
        "resourceType": "AllergyIntolerance",
        "id": "5703733",
        "meta": {
          "versionId": "5703733",
          "lastUpdated": "2016-06-27T14:08:41.000Z"
        },
        "text": {
          "status": "generated",
          "div": "&lt;div>&lt;p>&lt;b>Allergy Intolerance&lt;/b>&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: Smart, Joe&lt;/p>&lt;p>&lt;b>Allergy&lt;/b>: No known medicine allergy&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Active&lt;/p>&lt;/div>"
        },
        "recordedDate": "2016-06-27T09:08:41.000-05:00",
        "recorder": {
          "reference": "Practitioner/1912007",
          "display": "Who, Doctor"
        },
        "patient": {
          "reference": "Patient/4342010",
          "display": "Smart, Joe"
        },
        "substance": {
          "coding": [{
            "system": "http://snomed.info/sct",
            "code": "409137002",
            "display": "No known drug allergies (context-dependent category)",
            "userSelected": false
          }],
          "text": "No known medicine allergy"
        },
        "status": "active",
        "type": "allergy"
      }
    }]}
    
    DSTU2_ALLERGY_INTOLERANCE_BUNDLE_BY_STATUS ||= {
    "resourceType": "Bundle",
    "id": "c7330db8-59df-499b-9f97-9f89b79dbfb4",
    "type": "searchset",
    "total": 2,
    "link": [{
      "relation": "self",
      "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/AllergyIntolerance?patient=4342010&status=active"
    }],
    "entry": [{
      "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/AllergyIntolerance/5703737",
      "resource": {
        "resourceType": "AllergyIntolerance",
        "id": "5703737",
        "meta": {
          "versionId": "5703737",
           "lastUpdated": "2016-06-27T14:10:11.000Z"
        },
        "text": {
          "status": "generated",
          "div": "&lt;div>&lt;p>&lt;b>Allergy Intolerance&lt;/b>&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: Smart, Joe&lt;/p>&lt;p>&lt;b>Allergy&lt;/b>: Peanuts&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Active&lt;/p>&lt;p>&lt;b>Criticality&lt;/b>: High Risk&lt;/p>&lt;p>&lt;b>Category&lt;/b>: Food&lt;/p>&lt;p>&lt;b>Reactions&lt;/b>: Dyspnea&lt;/p>&lt;p>&lt;b>Onset&lt;/b>: 1982&lt;/p>&lt;/div>"
        },
        "onset": "1982",
        "recordedDate": "2016-06-27T09:10:11.000-05:00",
        "recorder": {
          "reference": "Practitioner/1912007",
          "display": "Who, Doctor"
        },
        "patient": {
          "reference": "Patient/4342010",
          "display": "Smart, Joe"
        },
        "substance": {
          "coding": [{
            "system": "http://snomed.info/sct",
            "code": "256349002",
            "display": "Peanut - dietary (substance)",
            "userSelected": false
          }],
          "text": "Peanuts"
        },
        "status": "active",
        "criticality": "CRITH",
        "type": "allergy",
        "category": "food",
        "reaction": [{
          "id": "5703739",
          "manifestation": [{
            "coding": [{
              "system": "http://snomed.info/sct",
              "code": "267036007",
              "display": "Dyspnea (finding)",
              "userSelected": false
            }],
            "text": "Dyspnea"
           }]
         }]
      }
    }, {
      "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/AllergyIntolerance/5703733",
      "resource": {
        "resourceType": "AllergyIntolerance",
        "id": "5703733",
        "meta": {
          "versionId": "5703733",
          "lastUpdated": "2016-06-27T14:08:41.000Z"
        },
        "text": {
          "status": "generated",
          "div": "&lt;div>&lt;p>&lt;b>Allergy Intolerance&lt;/b>&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: Smart, Joe&lt;/p>&lt;p>&lt;b>Allergy&lt;/b>: No known medicine allergy&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Active&lt;/p>&lt;/div>"
        },
        "recordedDate": "2016-06-27T09:08:41.000-05:00",
        "recorder": {
          "reference": "Practitioner/1912007",
          "display": "Who, Doctor"
        },
        "patient": {
          "reference": "Patient/4342010",
          "display": "Smart, Joe"
        },
        "substance": {
          "coding": [{
            "system": "http://snomed.info/sct",
            "code": "409137002",
            "display": "No known drug allergies (context-dependent category)",
            "userSelected": false
          }],
          "text": "No known medicine allergy"
        },
        "status": "active",
        "type": "allergy"
      }
    }]}

    DSTU2_ALLERGY_INTOLERANCE_BUNDLE_BY_ID ||= {
        "resourceType": "Bundle",
        "id": "db663826-30c9-4278-a6e2-b2b6843334f7",
        "type": "searchset",
        "total": 1,
        "link": [{
            "relation": "self",
            "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/AllergyIntolerance?_id=5703737"
        }],
        "entry": [{
            "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/AllergyIntolerance/5703737",
            "resource": {
                "resourceType": "AllergyIntolerance",
                "id": "5703737",
                "meta": {
                    "versionId": "5703737",
                    "lastUpdated": "2016-06-27T14:10:11.000Z"
                },
                "text": {
                    "status": "generated",
                    "div": "&lt;div>&lt;p>&lt;b>Allergy Intolerance&lt;/b>&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: Smart, Joe&lt;/p>&lt;p>&lt;b>Allergy&lt;/b>: Peanuts&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Active&lt;/p>&lt;p>&lt;b>Criticality&lt;/b>: High Risk&lt;/p>&lt;p>&lt;b>Category&lt;/b>: Food&lt;/p>&lt;p>&lt;b>Reactions&lt;/b>: Dyspnea&lt;/p>&lt;p>&lt;b>Onset&lt;/b>: 1982&lt;/p>&lt;/div>"
                },
                "onset": "1982",
                "recordedDate": "2016-06-27T09:10:11.000-05:00",
                "recorder": {
                    "reference": "Practitioner/1912007",
                    "display": "Who, Doctor"
                },
                "patient": {
                    "reference": "Patient/4342010",
                    "display": "Smart, Joe"
                },
                "substance": {
                    "coding": [{
                        "system": "http://snomed.info/sct",
                        "code": "256349002",
                        "display": "Peanut - dietary (substance)",
                        "userSelected": false
                    }],
                    "text": "Peanuts"
                },
                "status": "active",
                "criticality": "CRITH",
                "type": "allergy",
                "category": "food",
                "reaction": [{
                    "id": "5703739",
                    "manifestation": [{
                        "coding": [{
                            "system": "http://snomed.info/sct",
                            "code": "267036007",
                            "display": "Dyspnea (finding)",
                            "userSelected": false
                        }],
                        "text": "Dyspnea"
                    }]
                }]
            }
        }]
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
