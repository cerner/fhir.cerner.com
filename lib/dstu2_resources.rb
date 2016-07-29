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
          "url": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/AllergyIntolerance?patient=2744010"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/AllergyIntolerance/2759741",
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
          "fullUrl": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/AllergyIntolerance/3643739",
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
          "fullUrl": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/AllergyIntolerance/3643731",
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

    DSTU2_APPOINTMENT_BUNDLE ||= {
        "resourceType": "Bundle",
        "id": "07f58859-b408-419f-b2ec-c0e22e3a179a",
        "type": "searchset",
        "total": 3,
        "link": [
          {
            "relation": "self",
            "url": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Appointment?date=2014&practitioner=18220111&status=arrived&_count=50"
          }
        ],
        "entry": [
          {
            "fullUrl": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Appointment/20977581",
            "resource": {
              "resourceType": "Appointment",
              "id": "20977581",
              "meta": {
                "versionId": "10",
                "lastUpdated": "2014-05-22T10:04:29.000-05:00"
              },
              "text": {
                "status": "generated",
                "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Appointment&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Description&lt;/b&gt;: Same Day&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Same Day&lt;/p&gt;&lt;p&gt;&lt;b&gt;Start&lt;/b&gt;: 2014-05-22T09:53:00.000-05:00&lt;/p&gt;&lt;p&gt;&lt;b&gt;End&lt;/b&gt;: 2014-05-22T10:53:00.000-05:00&lt;/p&gt;&lt;p&gt;&lt;b&gt;Minutes Duration&lt;/b&gt;: 60&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Arrived&lt;/p&gt;&lt;p&gt;&lt;b&gt;Reason&lt;/b&gt;: Headache&lt;/p&gt;&lt;p&gt;&lt;b&gt;Location&lt;/b&gt;: Baseline East&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: Song, River&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Practitioner&lt;/b&gt;: Doctor, The&lt;/p&gt;&lt;/div&gt;"
              },
              "status": "arrived",
              "type": {
                "coding": [
                  {
                    "system": "http://snomed.info/sct",
                    "code": "394581000",
                    "display": "Community medicine",
                    "userSelected": false
                  }
                ],
                "text": "Same Day"
              },
              "reason": {
                "text": "Headache"
              },
              "description": "Same Day",
              "start": "2014-05-22T09:53:00.000-05:00",
              "end": "2014-05-22T10:53:00.000-05:00",
              "minutesDuration": 60,
              "participant": [
                {
                  "type": [
                    {
                      "text": "Resource"
                    },
                    {
                      "coding": [
                        {
                          "system": "http://hl7.org/fhir/v3/ParticipationType",
                          "code": "PPRF",
                          "display": "primary performer",
                          "userSelected": false
                        }
                      ]
                    }
                  ],
                  "actor": {
                    "reference": "Practitioner/18220111",
                    "display": "Doctor, The"
                  },
                  "required": "required",
                  "status": "accepted"
                },
                {
                  "type": [
                    {
                      "text": "Patient"
                    }
                  ],
                  "actor": {
                    "reference": "Patient/22269261",
                    "display": "Song, River"
                  },
                  "required": "required",
                  "status": "accepted"
                },
                {
                  "actor": {
                    "reference": "Location/40481281",
                    "display": "Baseline East"
                  },
                  "required": "required",
                  "status": "accepted"
                }
              ]
            }
          },
          {
            "fullUrl": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Appointment/21057512",
            "resource": {
              "resourceType": "Appointment",
              "id": "21057512",
              "meta": {
                "versionId": "11",
                "lastUpdated": "2014-06-11T10:38:10.000-05:00"
              },
              "text": {
                "status": "generated",
                "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Appointment&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Description&lt;/b&gt;: Surgery&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Surgery&lt;/p&gt;&lt;p&gt;&lt;b&gt;Start&lt;/b&gt;: 2014-05-29T12:30:00.000-05:00&lt;/p&gt;&lt;p&gt;&lt;b&gt;End&lt;/b&gt;: 2014-05-29T14:00:00.000-05:00&lt;/p&gt;&lt;p&gt;&lt;b&gt;Minutes Duration&lt;/b&gt;: 90&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Arrived&lt;/p&gt;&lt;p&gt;&lt;b&gt;Location&lt;/b&gt;: Main OR&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: Song, River&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Practitioner&lt;/b&gt;: Doctor, The&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Participant&lt;/b&gt;: OR 011&lt;/p&gt;&lt;/div&gt;"
              },
              "status": "arrived",
              "type": {
                "coding": [
                  {
                    "system": "http://snomed.info/sct",
                    "code": "394609007",
                    "display": "Surgery-general",
                    "userSelected": false
                  }
                ],
                "text": "Surgery"
              },
              "description": "Surgery",
              "start": "2014-05-29T12:30:00.000-05:00",
              "end": "2014-05-29T14:00:00.000-05:00",
              "minutesDuration": 90,
              "participant": [
                {
                  "type": [
                    {
                      "text": "OR Rooms"
                    }
                  ],
                  "actor": {
                    "display": "OR 011"
                  },
                  "required": "required",
                  "status": "accepted"
                },
                {
                  "type": [
                    {
                      "text": "Patient"
                    }
                  ],
                  "actor": {
                    "reference": "Patient/22269261",
                    "display": "Song, River"
                  },
                  "required": "required",
                  "status": "accepted"
                },
                {
                  "type": [
                    {
                      "text": "Surgeon1"
                    },
                    {
                      "coding": [
                        {
                          "system": "http://hl7.org/fhir/v3/ParticipationType",
                          "code": "PPRF",
                          "display": "primary performer",
                          "userSelected": false
                        }
                      ]
                    }
                  ],
                  "actor": {
                    "reference": "Practitioner/18220111",
                    "display": "Doctor, The"
                  },
                  "required": "required",
                  "status": "accepted"
                },
                {
                  "actor": {
                    "reference": "Location/667007",
                    "display": "Main OR"
                  },
                  "required": "required",
                  "status": "accepted"
                }
              ]
            }
          },
          {
            "fullUrl": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Appointment/213776",
            "resource": {
              "resourceType": "Appointment",
              "id": "213776",
              "meta": {
                "versionId": "1",
                "lastUpdated": "2014-06-19T12:12:28.000-05:00"
              },
              "text": {
                "status": "generated",
                "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Appointment&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Description&lt;/b&gt;: Surgery&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Surgery&lt;/p&gt;&lt;p&gt;&lt;b&gt;Start&lt;/b&gt;: 2014-06-18T10:00:00.000-05:00&lt;/p&gt;&lt;p&gt;&lt;b&gt;End&lt;/b&gt;: 2014-06-18T11:30:00.000-05:00&lt;/p&gt;&lt;p&gt;&lt;b&gt;Minutes Duration&lt;/b&gt;: 90&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Arrived&lt;/p&gt;&lt;p&gt;&lt;b&gt;Location&lt;/b&gt;: Main OR&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: Williams, Rory&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Practitioner&lt;/b&gt;: Doctor, The&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Participant&lt;/b&gt;: OR 011&lt;/p&gt;&lt;/div&gt;"
              },
              "status": "arrived",
              "type": {
                "coding": [
                  {
                    "system": "http://snomed.info/sct",
                    "code": "394609007",
                    "display": "Surgery-general",
                    "userSelected": false
                  }
                ],
                "text": "Surgery"
              },
              "description": "Surgery",
              "start": "2014-06-18T10:00:00.000-05:00",
              "end": "2014-06-18T11:30:00.000-05:00",
              "minutesDuration": 90,
              "participant": [
                {
                  "type": [
                    {
                      "text": "OR Rooms"
                    }
                  ],
                  "actor": {
                    "display": "OR 011"
                  },
                  "required": "required",
                  "status": "accepted"
                },
                {
                  "type": [
                    {
                      "text": "Patient"
                    }
                  ],
                  "actor": {
                    "reference": "Patient/21260141",
                    "display": "Williams, Rory"
                  },
                  "required": "required",
                  "status": "accepted"
                },
                {
                  "type": [
                    {
                      "text": "Surgeon1"
                    },
                    {
                      "coding": [
                        {
                          "system": "http://hl7.org/fhir/v3/ParticipationType",
                          "code": "PPRF",
                          "display": "primary performer",
                          "userSelected": false
                        }
                      ]
                    }
                  ],
                  "actor": {
                    "reference": "Practitioner/18220111",
                    "display": "Doctor, The"
                  },
                  "required": "required",
                  "status": "accepted"
                },
                {
                  "actor": {
                    "reference": "Location/667007",
                    "display": "Main OR"
                  },
                  "required": "required",
                  "status": "accepted"
                }
              ]
            }
          }
        ]
      }

    DSTU2_APPOINTMENT_READ ||= {
        "resourceType": "Appointment",
        "id": "20977581",
        "meta": {
          "versionId": "10",
          "lastUpdated": "2014-05-22T10:04:29.000-05:00"
        },
        "text": {
          "status": "generated",
          "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Appointment&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Description&lt;/b&gt;: Same Day&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Same Day&lt;/p&gt;&lt;p&gt;&lt;b&gt;Start&lt;/b&gt;: 2014-05-22T09:53:00.000-05:00&lt;/p&gt;&lt;p&gt;&lt;b&gt;End&lt;/b&gt;: 2014-05-22T10:53:00.000-05:00&lt;/p&gt;&lt;p&gt;&lt;b&gt;Minutes Duration&lt;/b&gt;: 60&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Arrived&lt;/p&gt;&lt;p&gt;&lt;b&gt;Reason&lt;/b&gt;: Headache&lt;/p&gt;&lt;p&gt;&lt;b&gt;Location&lt;/b&gt;: Baseline East&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: Song, River&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Practitioner&lt;/b&gt;: Doctor, The&lt;/p&gt;&lt;/div&gt;"
        },
        "status": "arrived",
        "type": {
          "coding": [
            {
              "system": "http://snomed.info/sct",
              "code": "394581000",
              "display": "Community medicine",
              "userSelected": false
            }
          ],
          "text": "Same Day"
        },
        "reason": {
          "text": "Headache"
        },
        "description": "Same Day",
        "start": "2014-05-22T09:53:00.000-05:00",
        "end": "2014-05-22T10:53:00.000-05:00",
        "minutesDuration": 60,
        "participant": [
          {
            "type": [
              {
                "text": "Resource"
              },
              {
                "coding": [
                  {
                    "system": "http://hl7.org/fhir/v3/ParticipationType",
                    "code": "PPRF",
                    "display": "primary performer",
                    "userSelected": false
                  }
                ]
              }
            ],
            "actor": {
              "reference": "Practitioner/18220111",
              "display": "Doctor, The"
            },
            "required": "required",
            "status": "accepted"
          },
          {
            "type": [
              {
                "text": "Patient"
              }
            ],
            "actor": {
              "reference": "Patient/22269261",
              "display": "Song, River"
            },
            "required": "required",
            "status": "accepted"
          },
          {
            "actor": {
              "reference": "Location/4048128",
              "display": "Baseline East"
            },
            "required": "required",
            "status": "accepted"
          }
        ]
      }

    DSTU2_DIAGNOSTIC_REPORT_BUNDLE ||= {
        "resourceType": "Bundle",
        "id": "5bbc073e-1ebd-458a-b1f6-c1a2beace210",
        "type": "searchset",
        "total": 3,
        "link": [
          {
            "relation": "self",
            "url": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/DiagnosticReport?patient=2744123"
          }
        ],
        "entry":[
          {
            "fullUrl": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/DiagnosticReport/5658748",
            "resource": {
              "resourceType": "DiagnosticReport",
              "id": "5658748",
              "text": {
                "status": "generated",
                "div": "&lt;div>&lt;p>&lt;b>Diagnostic Report&lt;/b>&lt;/p>&lt;p>&lt;b>Service Category&lt;/b>: Radiology&lt;/p>&lt;p>&lt;b>Name&lt;/b>: XR Wrist Complete Right&lt;/p>&lt;p>&lt;b>Performer&lt;/b>: Song, River&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Final&lt;/p>&lt;/div>"
              },
              "status": "final",
              "category": {
                "coding": [
                  {
                    "system": "http://hl7.org/fhir/v2/0074",
                    "code": "RAD",
                    "display": "Radiology"
                  }
                ],
                "text": "Radiology"
              },
              "code": {
                "coding":[
                  {
                    "system": "http://snomed.info/sct",
                    "code": "169074008"
                  }
                ],
                "text": "XR Wrist Complete Right"
              },
              "subject": {
                "reference": "Patient/2744123"
              },
              "encounter": {
                "reference": "Encounter/3519101"
              },
              "effectiveDateTime": "2015-11-25T22:00:11.000Z",
              "performer": {
                "reference": "Practitioner/2770007",
                "display": "Song, River"
              }
            }
          },
          {
            "fullUrl": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/DiagnosticReport/6767035",
            "resource": {
              "resourceType": "DiagnosticReport",
              "id": "6767035",
              "meta": {
                "versionId": "3"
              },
              "text": {
                "status": "generated",
                "div": "&lt;div>&lt;p>&lt;b>Diagnostic Report&lt;/b>&lt;/p>&lt;p>&lt;b>Service Category&lt;/b>: Radiology&lt;/p>&lt;p>&lt;b>Name&lt;/b>: XR Wrist Complete Right&lt;/p>&lt;p>&lt;b>Performer&lt;/b>: Chase, Robert&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Final&lt;/p>&lt;/div>"
              },
              "status": "final",
              "category": {
                "coding": [
                  {
                    "system": "http://hl7.org/fhir/v2/0074",
                    "code": "RAD",
                    "display": "Radiology"
                  }
                ],
                "text": "Radiology"
              },
              "code": {
                "coding": [
                  {
                    "system": "http://snomed.info/sct",
                    "code": "77477000"
                  }
                ],
                "text": "CT Pelvis w/ + w/o Contrast"
              },
              "subject": {
                "reference": "Patient/2744123"
              },
              "encounter": {
                "reference": "Encounter/3519101"
              },
              "effectiveDateTime": "2015-11-24T23:04:50.000Z",
              "issued": "2015-11-24T23:09:23.000Z",
              "performer": {
                "reference": "Practitioner/4669118",
                "display": "Chase, Robert"
              },
              "conclusion": "Conclusion of the report"
            }
          },
          {
            "fullUrl": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/DiagnosticReport/5826385",
            "resource": {
              "resourceType": "DiagnosticReport",
              "id": "5826385",
              "meta": {
                "versionId": "3"
              },
              "text": {
                "status": "generated",
                "div": "&lt;div>&lt;p>&lt;b>Diagnostic Report&lt;/b>&lt;/p>&lt;p>&lt;b>Service Category&lt;/b>: Radiology&lt;/p>&lt;p>&lt;b>Name&lt;/b>: XCT Abdomen w/ + w/o Contrast&lt;/p>&lt;p>&lt;b>Performer&lt;/b>: House, Gregory&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Final&lt;/p>&lt;/div>"
              },
              "status": "final",
              "category": {
                "coding": [
                  {
                    "system": "http://hl7.org/fhir/v2/0074",
                    "code": "RAD",
                    "display": "Radiology"
                  }
                ],
                "text": "Radiology"
              },
              "code": {
                "coding": [
                  {
                    "system": "http://loinc.org/",
                    "code": "41806-1"
                  },
                  {
                    "system": "http://snomed.info/sct",
                    "code": "77477000"
                  }
                ],
                "text": "CT Abdomen w/ + w/o Contrast"
              },
              "subject": {
                "reference": "Patient/2744123"
              },
              "encounter": {
                "reference": "Encounter/3519101"
              },
              "effectiveDateTime": "2015-12-09T17:31:19.000Z",
              "issued": "2015-12-09T17:31:52.000Z",
              "performer": {
                "reference": "Practitioner/1985700",
                "display": "House, Gregory"
              },
              "conclusion": "Conclusion of the report"
            }
          }
        ]
    }

    DSTU2_IMMUNIZATION_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "3639d63c-3475-4763-a98a-5f51d59d61bb",
      "type": "searchset",
      "total": 2,
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Immunization?patient=2652008"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Immunization/M3977347",
          "resource": {
            "resourceType": "Immunization",
            "id": "M3977347",
            "text": {
              "status": "generated",
              "div": "&lt;div>&lt;p>&lt;b>Immunization&lt;/b>&lt;/p>&lt;p>&lt;b>Date&lt;/b>: 2014-10-22T18:46:00.000Z&lt;/p>&lt;p>&lt;b>Given&lt;/b>: Yes&lt;/p>&lt;p>&lt;b>Administered by&lt;/b>: Song, River&lt;/p>&lt;p>&lt;b>Site&lt;/b>: left thigh&lt;/p>&lt;p>&lt;b>Route&lt;/b>: ID&lt;/p>&lt;/div>"
            },
            "status": "completed",
            "date": "2014-10-22T18:46:00.000Z",
            "vaccineCode": {
              "coding": [
                {
                  "system": "http://www2a.cdc.gov/vaccines/iis/iisstandards/vaccines.asp?rpt=cvx",
                  "code": "43"
                }
              ],
              "text": "Engerix-B (obsolete)"
            },
            "patient": {
              "reference": "Patient/2652008"
            },
            "wasNotGiven": false,
            "reported": false,
            "performer": {
              "reference": "Practitioner/1314013",
              "display": "Song, River"
            },
            "encounter": {
              "reference": "Encounter/2287924"
            },
            "manufacturer": {
              "reference": "Organization/4296975",
              "display": "Able Laboratories Inc"
            },
            "lotNumber": "45",
            "expirationDate": "2016-10-22",
            "site": {
              "coding": [
                {
                  "system": "http://hl7.org/fhir/v3/ActSite",
                  "code": "LT",
                  "display": "left thigh"
                }
              ],
              "text": "left thigh"
            },
            "route": {
              "text": "ID"
            },
            "doseQuantity": {
              "value": 3,
              "unit": "mL"
            }
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Immunization/HM2384824",
          "resource": {
            "resourceType": "Immunization",
            "id": "HM2384824",
            "text": {
              "status": "generated",
              "div": "&lt;div>&lt;p>&lt;b>Immunization&lt;/b>&lt;/p>&lt;p>&lt;b>Vaccine Code&lt;/b>: CERNER_CDC_VARICELLA&lt;/p>&lt;p>&lt;b>Given&lt;/b>: No&lt;/p>&lt;p>&lt;b>Administered by&lt;/b>: Song, River&lt;/p>&lt;/div>"
            },
            "status": "completed",
            "vaccineCode": {
              "text": "CERNER_CDC_VARICELLA"
            },
            "patient": {
              "reference": "Patient/2652008"
            },
            "wasNotGiven": true,
            "reported": false,
            "performer": {
              "reference": "Practitioner/1314013",
              "display": "Song, River"
            },
            "location": {
              "reference": "Organization/619848"
            }
          }
        }
      ]
    }

    DSTU2_CONDITION_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "ec23d759-25d6-4c77-8f94-b78d14dda2d2",
      "type": "searchset",
      "total": 3,
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Condition?patient=2744123"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Condition/d21591615",
          "resource": {
            "resourceType": "Condition",
            "id": "d21591615",
            "meta": {
              "versionId": "21591516",
              "lastUpdated": "2013-02-08T18:03:09.000Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div>&lt;p>&lt;b>Condition&lt;/b>&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: RHEUM, TEST ONE&lt;/p>&lt;p>&lt;b>Category&lt;/b>: Diagnosis&lt;/p>&lt;p>&lt;b>Code&lt;/b>: Absence seizures, 345.0&lt;/p>&lt;p>&lt;b>Verification Status&lt;/b>: Confirmed&lt;/p>&lt;p>&lt;b>Severity&lt;/b>: &lt;/p>&lt;p>&lt;b>Onset&lt;/b>: 2009-05-04&lt;/p>&lt;/div>"
            },
            "patient": {
              "reference": "Patient/2744123",
              "display": "Joe, Test"
            },
            "encounter": {
              "reference": "Encounter/1309819"
            },
            "asserter": {
              "reference": "Practitioner/2770007",
              "display": "Song, River"
            },
            "dateRecorded": "2013-02-08",
            "code": {
              "coding": [
                {
                  "system": "http://hl7.org/fhir/sid/icd-9",
                  "code": "345.0",
                  "display": "Generalized nonconvulsive epilepsy",
                  "userSelected": true
                }
              ],
              "text": "Absence seizures"
            },
            "category": {
              "coding": [
                {
                  "system": "http://hl7.org/fhir/condition-category",
                  "code": "diagnosis",
                  "display": "Diagnosis"
                }
              ],
              "text": "Diagnosis"
            },
            "verificationStatus": "confirmed",
            "onsetDateTime": "2009-05-04"
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Condition/p1167189",
          "resource": {
            "resourceType": "Condition",
            "id": "p1167189",
            "meta": {
              "versionId": "1207870",
              "lastUpdated": "2013-04-26T04:10:45.000Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div>&lt;p>&lt;b>Condition&lt;/b>&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: RHEUM, TEST ONE&lt;/p>&lt;p>&lt;b>Code&lt;/b>: 5problem&lt;/p>&lt;p>&lt;b>Verification Status&lt;/b>: Entered In Error&lt;/p>&lt;p>&lt;b>Severity&lt;/b>: &lt;/p>&lt;p>&lt;b>Onset&lt;/b>: &lt;/p>&lt;p>&lt;b>Abatement&lt;/b>: false&lt;/p>&lt;/div>"
            },
            "patient": {
              "reference": "Patient/2744123",
              "display": "Joe, Test"
            },
            "asserter": {
              "reference": "Practitioner/2770007",
              "display": "Song, River"
            },
            "dateRecorded": "2013-02-08",
            "code": {
              "text": "5problem"
            },
            "verificationStatus": "entered-in-error"
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Condition/p1250846",
          "resource": {
            "resourceType": "Condition",
            "id": "p1250846",
            "meta": {
              "versionId": "1250668",
              "lastUpdated": "2015-08-13T18:11:37.000Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div>&lt;p>&lt;b>Condition&lt;/b>&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: RHEUM, TEST ONE&lt;/p>&lt;p>&lt;b>Code&lt;/b>: Pyogenic Arthritis Involving Multiple Sites, 711.09&lt;/p>&lt;p>&lt;b>Verification Status&lt;/b>: Confirmed&lt;/p>&lt;p>&lt;b>Severity&lt;/b>: &lt;/p>&lt;p>&lt;b>Onset&lt;/b>: &lt;/p>&lt;p>&lt;b>Abatement&lt;/b>: false&lt;/p>&lt;/div>"
            },
            "patient": {
              "reference": "Patient/2744123",
              "display": "Joe, Test"
            },
            "code": {
              "coding": [
                {
                  "system": "http://hl7.org/fhir/sid/icd-9",
                  "code": "711.09",
                  "display": "Pyogenic arthritis involving multiple sites",
                  "userSelected": true
                }
              ],
              "text": "Pyogenic Arthritis Involving Multiple Sites"
            },
            "verificationStatus": "confirmed"
          }
        }
      ]
    }

    DSTU2_CONDITION_PROBLEM_CREATE ||= {
      "resourceType": "Condition",
      "patient": {
        "reference": "Patient/2744123"
      },
      "code": {
        "text": "Freetext Condition"
      },
      "verificationStatus": "differential",
      "abatementDateTime": "2014-01-01T00:00:00Z"
    }

    DSTU2_CONDITION_DIAGNOSIS_CREATE ||= {
      "resourceType": "Condition",
      "patient": {
        "reference": "Patient/2744123"
      },
      "code": {
        "text": "Freetext Condition"
      },
      "verificationStatus": "differential",
      "category": {
        "coding": [
          {
            "system": "http://hl7.org/fhir/condition-category",
            "code": "diagnosis",
            "display": "Diagnosis"
          }
        ],
        "text": "Diagnosis"
      },
      "encounter": {
        "reference": "Encounter/1309819"
      }
    }

    DSTU2_CONDITION_PROBLEM_UPDATE ||= {
      "resourceType": "Condition",
      "id": "d21591615",
      "patient": {
        "reference": "Patient/2770007"
      },
      "code": {
        "text": "Freetext Condition"
      },
      "verificationStatus": "differential",
      "abatementDateTime": "2014-01-01T00:00:00Z"
    }

    DSTU2_CONDITION_DIAGNOSIS_UPDATE ||= {
      "resourceType": "Condition",
      "id": "p1250846",
      "patient": {
        "reference": "Patient/2744123"
      },
      "code": {
        "text": "Freetext Condition"
      },
      "verificationStatus": "differential",
      "category": {
        "coding": [
          {
            "system": "http://hl7.org/fhir/condition-category",
            "code": "diagnosis",
            "display": "Diagnosis"
          }
        ],
        "text": "Diagnosis"
      },
      "encounter": {
        "reference": "Encounter/1309819"
      }
    }

    DSTU2_MEDICATION_STATEMENT_BUNDLE ||= {
      "resourceType"=> "Bundle",
      "id"=> "b8ea9905-29fe-4d40-9d71-475ca2ebb209",
      "type"=> "searchset",
      "total"=> 3,
      "link"=> [
        {
          "relation"=> "self",
          "url"=> "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/MedicationStatement?patient=1316024&_count=50"
        }
      ],
      "entry"=> [
        {
          "fullUrl"=> "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/MedicationStatement/16358117",
          "resource"=> {
            "resourceType"=> "MedicationStatement",
            "id"=> "16358117",
            "meta"=> {
              "versionId"=> "1"
            },
            "text"=> {
              "status"=> "generated",
              "div"=> "&lt;div>&lt;p>&lt;b>Medication Statement&lt;/b>&lt;/p>&lt;p>&lt;b>Medication Name&lt;/b>: aspirin&lt;/p>&lt;p>&lt;b>Dosage Instructions&lt;/b>: 325 mg, Oral, q4hr, PRN: headache&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Active&lt;/p>&lt;/div>"
            },
            "contained"=> [
              {
                "resourceType"=> "Medication",
                "id"=> "2750067",
                "code"=> {
                  "coding"=> [
                    {
                      "system"=> "http://www.nlm.nih.gov/research/umls/rxnorm",
                      "code"=> "1191",
                      "display"=> "Aspirin",
                      "userSelected"=> false
                    }
                  ],
                  "text"=> "aspirin"
                },
                "product"=> {
                  "form"=> {
                    "coding"=> [
                      {
                        "system"=> "http://snomed.info/sct",
                        "code"=> "385055001",
                        "display"=> "Tablet dose form (qualifier value)",
                        "userSelected"=> false
                      }
                    ],
                    "text"=> "Tab"
                  }
                }
              }
            ],
            "patient"=> {
              "reference"=> "Patient/1316024"
            },
            "informationSource"=> {
              "reference"=> "Practitioner/1328007",
              "display"=> "House, Gregory"
            },
            "dateAsserted"=> "2014-08-11T13:42:01.000-05:00",
            "status"=> "active",
            "effectivePeriod"=> {
              "start"=> "2014-08-11T13:42:00.000-05:00"
            },
            "medicationReference"=> {
              "reference"=> "#2750067",
              "display"=> "aspirin"
            },
            "dosage"=> [
              {
                "text"=> "325 mg, Oral, q4hr, PRN: headache",
                "timing"=> {
                  "repeat"=> {
                    "boundsPeriod"=> {
                      "start"=> "2014-08-11T13:42:00.000-05:00"
                    }
                  },
                  "code"=> {
                    "text"=> "q4hr"
                  }
                },
                "asNeededCodeableConcept"=> {
                  "coding"=> [
                    {
                      "system"=> "http://snomed.info/sct",
                      "code"=> "25064002",
                      "display"=> "headache (finding)",
                      "userSelected"=> false
                    }
                  ],
                  "text"=> "headache"
                },
                "route"=> {
                  "coding"=> [
                    {
                      "system"=> "http://snomed.info/sct",
                      "code"=> "26643006",
                      "display"=> "Oral route (qualifier value)",
                      "userSelected"=> false
                    }
                  ],
                  "text"=> "Oral"
                },
                "quantityQuantity"=> {
                  "value"=> 325,
                  "units"=> "mg",
                  "system"=> "http://unitsofmeasure.org",
                  "code"=> "mg"
                }
              }
            ]
          }
        },
        {
          "fullUrl"=> "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/MedicationStatement/19169979",
          "resource"=> {
            "resourceType"=> "MedicationStatement",
            "id"=> "19169979",
            "meta"=> {
              "versionId"=> "0"
            },
            "text"=> {
              "status"=> "generated",
              "div"=> "&lt;div>&lt;p>&lt;b>Medication Statement&lt;/b>&lt;/p>&lt;p>&lt;b>Medication Name&lt;/b>: Imuran&lt;/p>&lt;p>&lt;b>Dosage Instructions&lt;/b>: 50 mg, 1 tabs, Oral, BID&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Active&lt;/p>&lt;/div>"
            },
            "contained"=> [
              {
                "resourceType"=> "Medication",
                "id"=> "4310241",
                "code"=> {
                  "text"=> "Imuran"
                },
                "product"=> {
                  "form"=> {
                    "coding"=> [
                      {
                        "system"=> "http://snomed.info/sct",
                        "code"=> "385055001",
                        "display"=> "Tablet dose form (qualifier value)",
                        "userSelected"=> false
                      }
                    ],
                    "text"=> "Tab"
                  }
                }
              }
            ],
            "patient"=> {
              "reference"=> "Patient/1316024"
            },
            "informationSource"=> {
              "reference"=> "Practitioner/1328007",
              "display"=> "House, Gregory"
            },
            "dateAsserted"=> "2015-09-04T10:51:36.000-05:00",
            "status"=> "active",
            "effectivePeriod"=> {
              "start"=> "2015-09-04T09:00:00.000-07:00"
            },
            "medicationReference"=> {
              "reference"=> "#4310241",
              "display"=> "Imuran"
            },
            "dosage"=> [
              {
                "text"=> "50 mg, 1 tabs, Oral, BID",
                "timing"=> {
                  "repeat"=> {
                    "boundsPeriod"=> {
                      "start"=> "2015-09-04T09:00:00.000-07:00"
                    }
                  },
                  "code"=> {
                    "coding"=> [
                      {
                        "system"=> "http://hl7.org/fhir/v3/vs/GTSAbbreviation",
                        "code"=> "BID",
                        "display"=> "BID",
                        "userSelected"=> false
                      }
                    ],
                    "text"=> "BID"
                  }
                },
                "route"=> {
                  "coding"=> [
                    {
                      "system"=> "http://snomed.info/sct",
                      "code"=> "26643006",
                      "display"=> "Oral route (qualifier value)",
                      "userSelected"=> false
                    }
                  ],
                  "text"=> "Oral"
                },
                "quantityQuantity"=> {
                  "value"=> 50,
                  "units"=> "mg",
                  "system"=> "http://unitsofmeasure.org",
                  "code"=> "mg"
                }
              }
            ]
          }
        },
        {
          "fullUrl"=> "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/MedicationStatement/19245893",
          "resource"=> {
            "resourceType"=> "MedicationStatement",
            "id"=> "19245893",
            "meta"=> {
              "versionId"=> "0"
            },
            "text"=> {
              "status"=> "generated",
              "div"=> "&lt;div>&lt;p>&lt;b>Medication Statement&lt;/b>&lt;/p>&lt;p>&lt;b>Medication Name&lt;/b>: azathioprine 50 mg oral tablet&lt;/p>&lt;p>&lt;b>Dosage Instructions&lt;/b>: 50 mg, 1 tabs, Oral, BID, 60 tabs&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Active&lt;/p>&lt;/div>"
            },
            "contained"=> [
              {
                "resourceType"=> "Medication",
                "id"=> "2750424",
                "code"=> {
                  "coding"=> [
                    {
                      "system"=> "http://www.nlm.nih.gov/research/umls/rxnorm",
                      "code"=> "197388",
                      "display"=> "Azathioprine 50 MG Oral Tablet",
                      "userSelected"=> false
                    }
                  ],
                  "text"=> "azathioprine 50 mg oral tablet"
                },
                "product"=> {
                  "form"=> {
                    "coding"=> [
                      {
                        "system"=> "http://snomed.info/sct",
                        "code"=> "385055001",
                        "display"=> "Tablet dose form (qualifier value)",
                        "userSelected"=> false
                      }
                    ],
                    "text"=> "Tab"
                  }
                }
              }
            ],
            "patient"=> {
              "reference"=> "Patient/1316024"
            },
            "informationSource"=> {
              "reference"=> "Practitioner/1328007",
              "display"=> "House, Gregory"
            },
            "dateAsserted"=> "2015-09-09T19:00:21.000-05:00",
            "status"=> "active",
            "effectivePeriod"=> {
              "start"=> "2015-09-09T17:01:00.000-07:00"
            },
            "medicationReference"=> {
              "reference"=> "#2750424",
              "display"=> "azathioprine 50 mg oral tablet"
            },
            "dosage"=> [
              {
                "text"=> "50 mg, 1 tabs, Oral, BID, 60 tabs",
                "timing"=> {
                  "repeat"=> {
                    "boundsPeriod"=> {
                      "start"=> "2015-09-09T17:01:00.000-07:00"
                    }
                  },
                  "code"=> {
                    "coding"=> [
                      {
                        "system"=> "http://hl7.org/fhir/v3/vs/GTSAbbreviation",
                        "code"=> "BID",
                        "display"=> "BID",
                        "userSelected"=> false
                      }
                    ],
                    "text"=> "BID"
                  }
                },
                "route"=> {
                  "coding"=> [
                    {
                      "system"=> "http://snomed.info/sct",
                      "code"=> "26643006",
                      "display"=> "Oral route (qualifier value)",
                      "userSelected"=> false
                    }
                  ],
                  "text"=> "Oral"
                },
                "quantityQuantity"=> {
                  "value"=> 50,
                  "units"=> "mg",
                  "system"=> "http://unitsofmeasure.org",
                  "code"=> "mg"
                }
              }
            ]
          }
        }
      ]
    }

    DSTU2_MEDICATION_STATEMENT_CREATE ||= {
      "resourceType": "MedicationStatement",
      "contained":
      [
        {
          "resourceType":"Medication",
          "id":"123",
          "code":{
            "text":"FHIR Test Medication"
          }
        }
      ],
      "patient": {
        "reference":"Patient/234"
      },
      "status":"active",
      "medicationReference":{
        "reference":"#123"
      },
      "dosage":
      [
        {
          "timing":{
            "code":{
              "coding":
              [
                {
                  "system":"http://hl7.org/fhir/v3/vs/GTSAbbreviation",
                  "code":"BID"
                }
              ],
              "text":"BID"
            }
          },
          "quantityQuantity":{
            "value":60.0,
            "units":"mg",
            "system":"http://unitsofmeasure.org",
            "code":"mg"
          }
        }
      ]
    }

    DSTU2_MEDICATION_STATEMENT_UPDATE ||= {
      "resourceType": "MedicationStatement",
      "id": "222",
      "contained":
      [
        {
          "resourceType":"Medication",
          "id":"123",
          "code":{
            "text":"FHIR Test Medication"
          }
        }
      ],
      "status": "completed",
      "patient": {
        "reference": "Patient/234"
      },
      "medicationReference": {
        "reference": "#123"
      }
    }

    DSTU2_OPEN_METADATA ||= {
      "resourceType": "Conformance",
      "text": {
        "status": "generated",
        "div": "&lt;div&gt;Generated Conformance Statement&lt;/div&gt;"
      },
      "url": "https://fhir-open.sandboxcernerpowerchart.com/d075cf8b-3261-481d-97e5-ba6c48d3b41f/metadata",
      "name": "Cerner Conformance Statement",
      "status": "draft",
      "publisher": "Cerner",
      "date": "2015-12-03T00:00:00+00:00",
      "description": "Describes capabilities of this server",
      "kind": "instance",
      "fhirVersion": "1.0.2",
      "acceptUnknown": "no",
      "format": [
        "json"
      ],
      "rest": [
        {
          "mode": "server",
          "documentation": "All the functionality defined in FHIR",
          "security": {
            "cors": true
          },
          "resource": [
            {
              "type": "AllergyIntolerance",
              "interaction": [
                {
                  "code": "search-type"
                }
              ],
              "searchParam": [
                {
                  "name": "patient",
                  "type": "reference",
                  "documentation": "Who the sensitivity is for. It is a required field"
                },
                {
                  "name": "status",
                  "type": "token",
                  "documentation": "Certainty of the allergy or intolerance"
                }
              ]
            },
            {
              "type": "Condition",
              "interaction": [
                {
                  "code": "search-type"
                }
              ],
              "searchParam": [
                {
                  "name": "patient",
                  "type": "reference",
                  "documentation": "The patient who has the condition. It is a required field if subject field is not given"
                },
                {
                  "name": "category",
                  "type": "token",
                  "documentation": "The category of the condition",
                  "modifier": [
                    "not"
                  ]
                }
              ]
            },
            {
              "type": "DocumentReference",
              "interaction": [
                {
                  "code": "search-type"
                }
              ],
              "searchParam": [
                {
                  "name": "patient",
                  "type": "reference",
                  "documentation": "The patient the document is about"
                },
                {
                  "name": "type",
                  "type": "token",
                  "documentation": "The type of the document"
                }
              ]
            },
            {
              "type": "MedicationOrder",
              "interaction": [
                {
                  "code": "search-type"
                }
              ],
              "searchParam": [
                {
                  "name": "patient",
                  "type": "reference",
                  "documentation": "The identity of a patient to list dispenses for. It is a required field"
                },
                {
                  "name": "status",
                  "type": "token",
                  "documentation": "The status of the med, may be a list separated by commas. (Active and draft statuses must be queried separately from completed, on-hold, and stopped statuses. The superseded and entered-in-error statuses are not supported). It is a required field"
                },
                {
                  "name": "timing-boundsperiod-end",
                  "type": "date",
                  "documentation": "The stop time of the order. Must be prefixed by 'le' (currently only support querying for orders completed prior to a certain time). Not accepted when querying active or draft orders"
                },
                {
                  "name": "_count",
                  "type": "number",
                  "documentation": "The number of items to include in a page. Currently ignored if querying for active or draft statuses"
                }
              ]
            },
            {
              "type": "MedicationStatement",
              "interaction": [
                {
                  "code": "search-type"
                }
              ],
              "searchParam": [
                {
                  "name": "patient",
                  "type": "reference",
                  "documentation": "The identity of a patient to list statements for. It is a required field."
                },
                {
                  "name": "status",
                  "type": "token",
                  "documentation": "One or more medication statement status values separated by commas."
                },
                {
                  "name": "effectivedate",
                  "type": "date",
                  "documentation": "The date-time which should fall within the period the patient was taking (or not taking) the medication. Must be prefixed by 'ge'."
                },
                {
                  "name": "_count",
                  "type": "number",
                  "documentation": "The maximum number of results to include in a page."
                }
              ]
            },
            {
              "type": "Patient",
              "interaction": [
                {
                  "code": "read"
                },
                {
                  "code": "search-type"
                }
              ],
              "searchParam": [
                {
                  "name": "_id",
                  "type": "token",
                  "documentation": "The logical resource id associated with the resource (must be supported by all servers). It is a required field if no birthdate, identifier, name or telecom field is given"
                },
                {
                  "name": "birthdate",
                  "type": "date",
                  "documentation": "The patient's date of birth. It is a required field if no _id, identifier, name or telecom field is given"
                },
                {
                  "name": "identifier",
                  "type": "token",
                  "documentation": "A patient identifier. It is a requried field if no _id, birthdate, name or telecom field is given"
                },
                {
                  "name": "name",
                  "type": "string",
                  "documentation": "A portion of either family or given name of the patient. It is a required field if no _id, birthday, identifier or telecom field is given"
                },
                {
                  "name": "telecom",
                  "type": "string",
                  "documentation": "The value in any kind of telecom details of the patient. It is a required field if no _id, birthdate, identifier or name is given"
                },
                {
                  "name": "_count",
                  "type": "number",
                  "documentation": "The maximum number of results to return"
                }
              ]
            }
          ]
        }
      ]
    }

    DSTU2_AUTH_METADATA ||= {
      "resourceType": "Conformance",
      "text": {
        "status": "generated",
        "div": "&lt;div&gt;Generated Conformance Statement&lt;/div&gt;"
      },
      "url": "https://fhir.sandboxcernerpowerchart.com/d075cf8b-3261-481d-97e5-ba6c48d3b41f/metadata",
      "name": "Cerner Conformance Statement",
      "status": "draft",
      "publisher": "Cerner",
      "date": "2015-12-03T00:00:00+00:00",
      "description": "Describes capabilities of this server",
      "kind": "instance",
      "fhirVersion": "1.0.2",
      "acceptUnknown": "no",
      "format": [
        "json"
      ],
      "rest": [
        {
          "mode": "server",
          "documentation": "All the functionality defined in FHIR",
          "security": {
            "extension": [
              {
                "url": "http://fhir-registry.smarthealthit.org/StructureDefinition/oauth-uris",
                "extension": [
                  {
                    "url": "token",
                    "valueUri": "https://authorization.sandboxcerner.com/realms/d075cf8b-3261-481d-97e5-ba6c48d3b41f/protocols/smart/token"
                  },
                  {
                    "url": "authorize",
                    "valueUri": "https://authorization.sandboxcerner.com/realms/d075cf8b-3261-481d-97e5-ba6c48d3b41f/protocols/smart/authorize"
                  }
                ]
              }
            ],
            "cors": true,
            "service": [
              {
                "coding": [
                  {
                    "system": "http://hl7.org/fhir/restful-security-service",
                    "code": "SMART-on-FHIR"
                  }
                ],
                "text": "OAuth2 using SMART-on-FHIR profile (see http://docs.smarthealthit.org/)."
              }
            ],
            "description": "OAuth2 plus SMART extensions"
          },
          "resource": [
            {
              "type": "AllergyIntolerance",
              "interaction": [
                {
                  "code": "search-type"
                }
              ],
              "searchParam": [
                {
                  "name": "patient",
                  "type": "reference",
                  "documentation": "Who the sensitivity is for. It is a required field"
                },
                {
                  "name": "status",
                  "type": "token",
                  "documentation": "Certainty of the allergy or intolerance"
                }
              ]
            },
            {
              "type": "Condition",
              "interaction": [
                {
                  "code": "search-type"
                }
              ],
              "searchParam": [
                {
                  "name": "patient",
                  "type": "reference",
                  "documentation": "The patient who has the condition. It is a required field if subject field is not given"
                },
                {
                  "name": "category",
                  "type": "token",
                  "documentation": "The category of the condition",
                  "modifier": [
                    "not"
                  ]
                }
              ]
            },
            {
              "type": "DocumentReference",
              "interaction": [
                {
                  "code": "create"
                },
                {
                  "code": "search-type"
                }
              ],
              "searchParam": [
                {
                  "name": "patient",
                  "type": "reference",
                  "documentation": "The patient the document is about"
                },
                {
                  "name": "type",
                  "type": "token",
                  "documentation": "The type of the document"
                }
              ]
            },
            {
              "type": "MedicationOrder",
              "interaction": [
                {
                  "code": "search-type"
                }
              ],
              "searchParam": [
                {
                  "name": "patient",
                  "type": "reference",
                  "documentation": "The identity of a patient to list dispenses for. It is a required field"
                },
                {
                  "name": "status",
                  "type": "token",
                  "documentation": "The status of the med, may be a list separated by commas. (Active and draft statuses must be queried separately from completed, on-hold, and stopped statuses. The superseded and entered-in-error statuses are not supported). It is a required field"
                },
                {
                  "name": "timing-boundsperiod-end",
                  "type": "date",
                  "documentation": "The stop time of the order. Must be prefixed by 'le' (currently only support querying for orders completed prior to a certain time). Not accepted when querying active or draft orders"
                },
                {
                  "name": "_count",
                  "type": "number",
                  "documentation": "The number of items to include in a page. Currently ignored if querying for active or draft statuses"
                }
              ]
            },
            {
              "type": "MedicationStatement",
              "interaction": [
                {
                  "code": "search-type"
                }
              ],
              "searchParam": [
                {
                  "name": "patient",
                  "type": "reference",
                  "documentation": "The identity of a patient to list statements for. It is a required field."
                },
                {
                  "name": "status",
                  "type": "token",
                  "documentation": "One or more medication statement status values separated by commas."
                },
                {
                  "name": "effectivedate",
                  "type": "date",
                  "documentation": "The date-time which should fall within the period the patient was taking (or not taking) the medication. Must be prefixed by 'ge'."
                },
                {
                  "name": "_count",
                  "type": "number",
                  "documentation": "The maximum number of results to include in a page."
                }
              ]
            },
            {
              "type": "Patient",
              "interaction": [
                {
                  "code": "read"
                },
                {
                  "code": "search-type"
                }
              ],
              "searchParam": [
                {
                  "name": "_id",
                  "type": "token",
                  "documentation": "The logical resource id associated with the resource (must be supported by all servers). It is a required field if no birthdate, identifier, name or telecom field is given"
                },
                {
                  "name": "birthdate",
                  "type": "date",
                  "documentation": "The patient's date of birth. It is a required field if no _id, identifier, name or telecom field is given"
                },
                {
                  "name": "identifier",
                  "type": "token",
                  "documentation": "A patient identifier. It is a requried field if no _id, birthdate, name or telecom field is given"
                },
                {
                  "name": "name",
                  "type": "string",
                  "documentation": "A portion of either family or given name of the patient. It is a required field if no _id, birthday, identifier or telecom field is given"
                },
                {
                  "name": "telecom",
                  "type": "string",
                  "documentation": "The value in any kind of telecom details of the patient. It is a required field if no _id, birthdate, identifier or name is given"
                },
                {
                  "name": "_count",
                  "type": "number",
                  "documentation": "The maximum number of results to return"
                }
              ]
            }
          ]
        }
      ]
    }

    DSTU2_PATIENT_1 ||= {
      "resourceType" => "Patient",
      "id" => "20940091",
      "text" => {
        "status" => "generated",
        "div" =>
          "&lt;div&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Name&lt;/b&gt;: Pond, Melody&lt;/p&gt;&lt;p&gt;&lt;b&gt;DOB&lt;/b&gt;: 2012-04-25&lt;/p&gt;&lt;p&gt;&lt;b&gt;Sex&lt;/b&gt;: female&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;/div&gt;"
      },
      "extension" => [{
                        "url" => "http://hl7.org/fhir/StructureDefinition/patient-birthTime",
                        "valueDateTime" => "2012-04-25T16:30:00.000Z"
                      }],
      "identifier" => [{
                         "use" => "usual",
                         "type" => {
                           "coding" => [{
                                          "system" => "http://hl7.org/fhir/v2/0203",
                                          "code" => "MR",
                                          "display" => "Medical record number"
                                        }],
                           "text" => "Medical record number"
                         },
                         "value" => "10001185"
                       }],
      "active" => true,
      "name" => [{
                   "use" => "usual",
                   "text" => "Pond, Melody",
                   "family" => ["Pond"],
                   "given" => ["Melody"]
                 }],
      "gender" => "male",
      "birthDate" => "2012-04-25",
      "deceasedBoolean" => false,
      "contact" => [{
                      "relationship" => [{
                                           "coding" => [{
                                                          "system" => "http://hl7.org/fhir/patient-contact-relationship",
                                                          "code" => "parent",
                                                          "display" => "Parent"
                                                        }],
                                           "text" => "Parent"
                                         }],
                      "name" => {
                        "text" => "Williams, Rory"
                      }
                    }],
      "careProvider" => [{
                           "reference" => "Practitioner/1448008", "display" => "Kovarian, Madame"
                         }]
    }

    DSTU2_PATIENT_2 ||= {
      "resourceType" => "Patient",
      "id" => "6219231",
      "text" => {
        "status" => "generated",
        "div" =>
          "&lt;div&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Name&lt;/b&gt;: Pond, Annabeth&lt;/p&gt;&lt;p&gt;&lt;b&gt;DOB&lt;/b&gt;: 2003-02-02&lt;/p&gt;&lt;p&gt;&lt;b&gt;Sex&lt;/b&gt;: female&lt;/p&gt;&lt;p&gt;&lt;b&gt;Marital Status&lt;/b&gt;: Never Married&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;/div&gt;"
      },
      "extension" => [{
                        "url" => "http://hl7.org/fhir/StructureDefinition/patient-birthTime",
                        "valueDateTime" => "2003-02-03T00:00:00.000Z"
                      }],
      "identifier" => [{
                         "use" => "usual",
                         "type" => {
                           "coding" => [{
                                          "system" => "http://hl7.org/fhir/v2/0203",
                                          "code" => "MR",
                                          "display" => "Medical record number"
                                        }],
                           "text" => "Medical record number"
                         },
                         "value" => "809723498234"
                       }],
      "active" => true,
      "name" => [{
                   "use" => "usual",
                   "text" => "Pond, Annabeth",
                   "family" => ["Pond"],
                   "given" => ["Annabeth"]
                 }],
      "telecom" => [{
                      "system" => "phone", "value" => "(111) 111-1111", "use" => "home"
                    }],
      "gender" => "female",
      "birthDate" => "2003-02-02",
      "deceasedBoolean" => false,
      "address" => [{
                      "use" => "home",
                      "text" => "123123123123\nParkville, MO 64152\nUSA",
                      "line" => ["123123123123"],
                      "city" => "Parkville",
                      "state" => "MO",
                      "postalCode" => "64152"
                    }],
      "maritalStatus" => {
        "coding" => [{
                       "system" => "http://hl7.org/fhir/marital-status",
                       "code" => "S",
                       "display" => "Never Married"
                     }],
        "text" => "Never Married"
      }
    }

    DSTU2_PATIENT_BUNDLE ||= {
      "resourceType" => "Bundle",
      "id" => "08638e55-cb75-4a66-b306-5e3c3938ef3f",
      "type" => "searchset",
      "total" => 2,
      "link" => [{
                   "relation" => "self",
                   "url" =>
                     "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Patient?name=Pond&start=0&_count=20"
                 }],
      "entry" => [{
                    "fullUrl" =>
                      "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Patient/20940091",
                    "resource" => DSTU2_PATIENT_1
                  }, {
                    "fullUrl" =>
                      "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Patient/6219231",
                    "resource" => DSTU2_PATIENT_2
                  }]}

    DSTU2_MEDICATION_ORDER_ACTIVE_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "d85381ff-57a9-47a7-a855-2196da2b2308",
      "type": "searchset",
      "total": 7,
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/MedicationOrder?patient=2744010&status=active"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/MedicationOrder/16566157",
          "resource": {
            "resourceType": "MedicationOrder",
            "id": "16566157",
            "meta": {
              "versionId": "0"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;MedicationOrder&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Medication Name&lt;/b&gt;: Procardia XL 15 mg oral tablet, extended release&lt;/p&gt;&lt;p&gt;&lt;b&gt;Dosage Instruction Text&lt;/b&gt;: 15 mg, 0.5 tab(s), Oral, Daily, 7.5 tab(s)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;/div&gt;"
            },
            "contained": [
              {
                "resourceType": "Medication",
                "id": "2765117",
                "code": {
                  "coding": [
                    {
                      "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
                      "code": "207772",
                      "display": "24 HR Nifedipine 15 MG Extended Release Oral Tablet [Procardia]"
                    }
                  ],
                  "text": "Procardia XL 15 mg oral tablet, extended release"
                }
              }
            ],
            "status": "active",
            "patient": {
              "reference": "Patient/2744010"
            },
            "prescriber": {
              "reference": "Practitioner/2692009",
              "display": "Song, River"
            },
            "medicationReference": {
              "reference": "#2765117",
              "display": "Procardia XL 15 mg oral tablet, extended release"
            },
            "dosageInstruction": [
              {
                "text": "15 mg, 0.5 tab(s), Oral, Daily, 7.5 tab(s)",
                "timing": {
                  "repeat": {
                    "boundsPeriod": {
                      "start": "2014-08-14T19:00:00.000Z"
                    }
                  },
                  "code": {
                    "text": "Daily"
                  }
                },
                "route": {
                  "text": "Oral"
                },
                "doseQuantity": {
                  "value": 15,
                  "units": "mg"
                }
              }
            ],
            "dispenseRequest": {
              "medicationReference": {
                "reference": "#2765117",
                "display": "Procardia XL 30 mg oral tablet, extended release"
              },
              "quantity": {
                "value": 7.5,
                "units": "tab(s)"
              }
            }
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/MedicationOrder/16566159",
          "resource": {
            "resourceType": "MedicationOrder",
            "id": "16566159",
            "meta": {
              "versionId": "0"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;MedicationOrder&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Medication Name&lt;/b&gt;: predniSONE 5 mg oral tablet&lt;/p&gt;&lt;p&gt;&lt;b&gt;Dosage Instruction Text&lt;/b&gt;: 5 mg, 1 tabs, Oral, Daily, tabs, PRN: Instruct&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;/div&gt;"
            },
            "contained": [
              {
                "resourceType": "Medication",
                "id": "2767469",
                "code": {
                  "coding": [
                    {
                      "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
                      "code": "763179",
                      "display": "{48 (Prednisone 5 MG Oral Tablet) } Pack"
                    }
                  ],
                  "text": "predniSONE 5 mg oral tablet"
                }
              }
            ],
            "status": "active",
            "patient": {
              "reference": "Patient/2744010"
            },
            "prescriber": {
              "reference": "Practitioner/2692009",
              "display": "Song, River"
            },
            "medicationReference": {
              "reference": "#2767469",
              "display": "predniSONE 5 mg oral tablet"
            },
            "dosageInstruction": [
              {
                "text": "5 mg, 1 tabs, Oral, Daily, tabs, PRN: Instruct",
                "timing": {
                  "repeat": {
                    "boundsPeriod": {
                      "start": "2014-08-14T19:00:00.000Z",
                      "end": "2014-09-14T19:00:00.000Z"
                    }
                  },
                  "code": {
                    "text": "Daily"
                  }
                },
                "asNeededCodeableConcept": {
                  "text": "Instruct"
                },
                "route": {
                  "text": "Oral"
                },
                "doseQuantity": {
                  "value": 5,
                  "units": "mg"
                }
              }
            ],
            "dispenseRequest": {
              "medicationReference": {
                "reference": "#2767469",
                "display": "predniSONE 5 mg oral tablet"
              }
            }
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/MedicationOrder/14203884",
          "resource": {
            "resourceType": "MedicationOrder",
            "id": "14203884",
            "meta": {
              "versionId": "0"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;MedicationOrder&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Medication Name&lt;/b&gt;: Aspercreme 10% topical lotion&lt;/p&gt;&lt;p&gt;&lt;b&gt;Dosage Instruction Text&lt;/b&gt;: 1 boxes, GTUBE, 10x/Day, 2 boxes, 0 Refill(s)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;/div&gt;"
            },
            "contained": [
              {
                "resourceType": "Medication",
                "id": "5213029",
                "code": {
                  "coding": [
                    {
                      "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
                      "code": "1101829",
                      "display": "trolamine salicylate 100 MG/ML Topical Lotion [Aspercreme]"
                    }
                  ],
                  "text": "Aspercreme 10% topical lotion"
                }
              }
            ],
            "status": "active",
            "patient": {
              "reference": "Patient/2744010"
            },
            "prescriber": {
              "reference": "Practitioner/1400009",
              "display": "Who, Doctor"
            },
            "medicationReference": {
              "reference": "#5213029",
              "display": "Aspercreme 10% topical lotion"
            },
            "dosageInstruction": [
              {
                "text": "1 boxes, GTUBE, 10x/Day, 2 boxes, 0 Refill(s)",
                "timing": {
                  "repeat": {
                    "boundsPeriod": {
                      "start": "2015-05-21T20:36:00.000Z"
                    }
                  },
                  "code": {
                    "text": "10x/Day"
                  }
                },
                "route": {
                  "text": "GTUBE"
                },
                "doseQuantity": {
                  "value": 1,
                  "units": "boxes"
                }
              }
            ],
            "dispenseRequest": {
              "medicationReference": {
                "reference": "#5213029",
                "display": "Aspercreme 10% topical lotion"
              },
              "numberOfRepeatsAllowed": 0,
              "quantity": {
                "value": 2,
                "units": "boxes"
              }
            }
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/MedicationOrder/17865897",
          "resource": {
            "resourceType": "MedicationOrder",
            "id": "17865897",
            "meta": {
              "versionId": "0"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;MedicationOrder&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Medication Name&lt;/b&gt;: albuterol 2 mg oral tablet&lt;/p&gt;&lt;p&gt;&lt;b&gt;Dosage Instruction Text&lt;/b&gt;: 2 mg, 1 tab(s), Oral, QID, 120 tab(s)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;/div&gt;"
            },
            "contained": [
              {
                "resourceType": "Medication",
                "id": "2748635",
                "code": {
                  "coding": [
                    {
                      "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
                      "code": "197316",
                      "display": "Albuterol 2 MG Oral Tablet"
                    }
                  ],
                  "text": "albuterol 2 mg oral tablet"
                }
              }
            ],
            "status": "active",
            "patient": {
              "reference": "Patient/2744010"
            },
            "prescriber": {
              "reference": "Practitioner/3270007",
              "display": "Howser, Doogie"
            },
            "medicationReference": {
              "reference": "#2748635",
              "display": "albuterol 2 mg oral tablet"
            },
            "dosageInstruction": [
              {
                "text": "2 mg, 1 tab(s), Oral, QID, 120 tab(s)",
                "timing": {
                  "repeat": {
                    "boundsPeriod": {
                      "start": "2015-03-11T20:38:00.000Z"
                    }
                  },
                  "code": {
                    "text": "QID"
                  }
                },
                "route": {
                  "text": "Oral"
                },
                "doseQuantity": {
                  "value": 2,
                  "units": "mg"
                }
              }
            ],
            "dispenseRequest": {
              "medicationReference": {
                "reference": "#2748635",
                "display": "albuterol 2 mg oral tablet"
              },
              "quantity": {
                "value": 120,
                "units": "tab(s)"
              }
            }
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/MedicationOrder/18937899",
          "resource": {
            "resourceType": "MedicationOrder",
            "id": "18937899",
            "meta": {
              "versionId": "0"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;MedicationOrder&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Medication Name&lt;/b&gt;: Colace&lt;/p&gt;&lt;p&gt;&lt;b&gt;Dosage Instruction Text&lt;/b&gt;: 50 mg = 1 caps, Oral, q4hr, order duration: 5 days, first dose dttm: 07/31/15 18:00:00 CDT, stop date 08/05/15 17:59:00 CDT&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;/div&gt;"
            },
            "contained": [
              {
                "resourceType": "Medication",
                "id": "4318409",
                "code": {
                  "text": "Colace"
                }
              }
            ],
            "status": "active",
            "patient": {
              "reference": "Patient/2744010"
            },
            "prescriber": {
              "reference": "Practitioner/1616012",
              "display": "House, Gregory"
            },
            "medicationReference": {
              "reference": "#4318409",
              "display": "Colace"
            },
            "dosageInstruction": [
              {
                "text": "50 mg = 1 caps, Oral, q4hr, order duration: 5 days, first dose dttm: 07/31/15 18:00:00 CDT, stop date 08/05/15 17:59:00 CDT",
                "timing": {
                  "repeat": {
                    "boundsPeriod": {
                      "start": "2015-07-31T23:00:00.000Z",
                      "end": "2015-08-05T22:59:00.000Z"
                    }
                  },
                  "code": {
                    "text": "q4hr"
                  }
                },
                "route": {
                  "text": "Oral"
                },
                "doseQuantity": {
                  "value": 50,
                  "units": "mg"
                }
              }
            ],
            "dispenseRequest": {
              "medicationReference": {
                "reference": "#4318409",
                "display": "Colace"
              }
            }
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/MedicationOrder/16566161",
          "resource": {
            "resourceType": "MedicationOrder",
            "id": "16566161",
            "meta": {
              "versionId": "0"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;MedicationOrder&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Medication Name&lt;/b&gt;: methotrexate 10 mg oral tablet&lt;/p&gt;&lt;p&gt;&lt;b&gt;Dosage Instruction Text&lt;/b&gt;: 10 mg, 1 tab(s), Oral, qWeek, 1 tabs&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;/div&gt;"
            },
            "contained": [
              {
                "resourceType": "Medication",
                "id": "2763106",
                "code": {
                  "coding": [
                    {
                      "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
                      "code": "105586",
                      "display": "Methotrexate 10 MG Oral Tablet"
                    }
                  ],
                  "text": "methotrexate 10 mg oral tablet"
                }
              }
            ],
            "status": "active",
            "patient": {
              "reference": "Patient/2744010"
            },
            "prescriber": {
              "reference": "Practitioner/2692009",
              "display": "Song, River"
            },
            "medicationReference": {
              "reference": "#2763106",
              "display": "methotrexate 10 mg oral tablet"
            },
            "dosageInstruction": [
              {
                "text": "10 mg, 1 tab(s), Oral, qWeek, 1 tabs",
                "timing": {
                  "repeat": {
                    "boundsPeriod": {
                      "start": "2014-08-14T19:00:00.000Z",
                      "end": "2014-09-14T19:00:00.000Z"
                    }
                  },
                  "code": {
                    "text": "qWeek"
                  }
                },
                "route": {
                  "text": "Oral"
                },
                "doseQuantity": {
                  "value": 10,
                  "units": "mg"
                }
              }
            ],
            "dispenseRequest": {
              "medicationReference": {
                "reference": "#2763106",
                "display": "methotrexate 10 mg oral tablet"
              },
              "quantity": {
                "value": 1.0,
                "units": "tabs"
              }
            }
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/MedicationOrder/16566163",
          "resource": {
            "resourceType": "MedicationOrder",
            "id": "16566163",
            "meta": {
              "versionId": "0"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;MedicationOrder&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Medication Name&lt;/b&gt;: Zocor 10 mg oral tablet&lt;/p&gt;&lt;p&gt;&lt;b&gt;Dosage Instruction Text&lt;/b&gt;: 340 mg, 34 tabs, Oral, Once a day (at bedtime), tabs&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;/div&gt;"
            },
            "contained": [
              {
                "resourceType": "Medication",
                "id": "2768849",
                "code": {
                  "coding": [
                    {
                      "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
                      "code": "104490",
                      "display": "Simvastatin 10 MG Oral Tablet [Zocor]"
                    }
                  ],
                  "text": "Zocor 10 mg oral tablet"
                }
              }
            ],
            "status": "active",
            "patient": {
              "reference": "Patient/2744010"
            },
            "prescriber": {
              "reference": "Practitioner/2692009",
              "display": "Song, River"
            },
            "medicationReference": {
              "reference": "#2768849",
              "display": "Zocor 10 mg oral tablet"
            },
            "dosageInstruction": [
              {
                "text": "340 mg, 34 tabs, Oral, Once a day (at bedtime), tabs",
                "timing": {
                  "repeat": {
                    "boundsPeriod": {
                      "start": "2014-08-14T19:00:00.000Z"
                    }
                  },
                  "code": {
                    "text": "Once a day (at bedtime)"
                  }
                },
                "route": {
                  "text": "Oral"
                },
                "doseQuantity": {
                  "value": 340,
                  "units": "mg"
                }
              }
            ],
            "dispenseRequest": {
              "medicationReference": {
                "reference": "#2768849",
                "display": "Zocor 10 mg oral tablet"
              }
            }
          }
        }
      ]
    }

    DSTU2_MEDICATION_ORDER_INACTIVE_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "ed51a825-e6d1-463e-922b-50ced0cf315b",
      "type": "searchset",
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/MedicationOrder?patient=1316020&status=completed&_count=5"
        },
        {
          "relation": "next",
          "url": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/MedicationOrder?patient=1316020&status=completed&_count=5&timing-boundsperiod-end=le2015-02-10T16%3A20%3A25.000Z&context=14199276"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/MedicationOrder/14201768",
          "resource": {
            "resourceType": "MedicationOrder",
            "id": "14201768",
            "meta": {
              "versionId": "3"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;MedicationOrder&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Medication Name&lt;/b&gt;: aspirin 325 mg oral tablet&lt;/p&gt;&lt;p&gt;&lt;b&gt;Dosage Instruction Text&lt;/b&gt;: 1.0 tabs, Oral, Daily, 100.0 tabs, PRN: Instruct, 0 Refill(s)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: completed&lt;/p&gt;&lt;/div&gt;"
            },
            "contained": [
              {
                "resourceType": "Medication",
                "id": "2750107",
                "code": {
                  "coding": [
                    {
                      "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
                      "code": "212033",
                      "display": "Aspirin 325 MG Oral Tablet"
                    }
                  ],
                  "text": "aspirin 325 mg oral tablet"
                }
              }
            ],
            "status": "completed",
            "patient": {
              "reference": "Patient/1316020"
            },
            "prescriber": {
              "reference": "Practitioner/1314013",
              "display": "Song, River"
            },
            "medicationReference": {
              "reference": "#2750107",
              "display": "aspirin 325 mg oral tablet"
            },
            "dosageInstruction": [
              {
                "text": "1.0 tabs, Oral, Daily, 100.0 tabs, PRN: Instruct, 0 Refill(s)",
                "timing": {
                  "repeat": {
                    "boundsPeriod": {
                      "start": "2015-04-14T15:45:00.000Z",
                      "end": "2015-06-18T22:35:21.000Z"
                    }
                  },
                  "code": {
                    "text": "Daily"
                  }
                },
                "asNeededCodeableConcept": {
                  "text": "Instruct"
                },
                "route": {
                  "text": "Oral"
                },
                "doseQuantity": {
                  "value": 1,
                  "units": "tabs"
                }
              }
            ],
            "dispenseRequest": {
              "medicationReference": {
                "reference": "#2750107",
                "display": "aspirin 325 mg oral tablet"
              },
              "numberOfRepeatsAllowed": 0,
              "quantity": {
                "value": 100,
                "units": "tabs"
              }
            }
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/MedicationOrder/14192976",
          "resource": {
            "resourceType": "MedicationOrder",
            "id": "14192976",
            "meta": {
              "versionId": "3"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;MedicationOrder&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Medication Name&lt;/b&gt;: Nyquil Liquicap oral capsule&lt;/p&gt;&lt;p&gt;&lt;b&gt;Dosage Instruction Text&lt;/b&gt;: 1.0 tabs, Oral, 1-2x/Day, 10.0 tabs, 10 Refill(s)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: completed&lt;/p&gt;&lt;/div&gt;"
            },
            "contained": [
              {
                "resourceType": "Medication",
                "id": "2749728",
                "code": {
                  "text": "Nyquil Liquicap oral capsule"
                }
              }
            ],
            "status": "completed",
            "patient": {
              "reference": "Patient/1316020"
            },
            "prescriber": {
              "reference": "Practitioner/1590015",
              "display": "who, Doctor"
            },
            "medicationReference": {
              "reference": "#2749728",
              "display": "Nyquil Liquicap oral capsule"
            },
            "dosageInstruction": [
              {
                "text": "1.0 tabs, Oral, 1-2x/Day, 10.0 tabs, 10 Refill(s)",
                "timing": {
                  "repeat": {
                    "boundsPeriod": {
                      "start": "2014-09-23T14:50:00.000Z",
                      "end": "2015-05-22T00:41:40.000Z"
                    }
                  },
                  "code": {
                    "text": "1-2x/Day"
                  }
                },
                "route": {
                  "text": "Oral"
                },
                "doseQuantity": {
                  "value": 1,
                  "units": "tabs"
                }
              }
            ],
            "dispenseRequest": {
              "medicationReference": {
                "reference": "#2749728",
                "display": "Nyquil Liquicap oral capsule"
              },
              "numberOfRepeatsAllowed": 10,
              "quantity": {
                "value": 10,
                "units": "tabs"
              }
            }
          }
        }
      ]
    }

    DSTU2_OBSERVATION_BUNDLE ||=
      {
        "resourceType": "Bundle",
        "id": "2f43050f-af18-423d-8b11-d699193ef760",
        "type": "searchset",
        "link": [
          {
            "relation": "self",
            "url": "https://fhir.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Observation?subject%3APatient=3998008&_count=50"
          }
        ],
        "entry": [
          {
            "fullUrl": "https://fhir.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Observation/5525867",
            "resource": {
              "resourceType": "Observation",
              "id": "5525867",
              "meta": {
                "versionId": "1252402",
                "lastUpdated": "2016-01-26T21:58:41.000Z"
              },
              "contained": [
                {
                  "resourceType": "Observation",
                  "id": "5525867-q6930400",
                  "status": "final",
                  "code": {
                    "text": "SHX Tobacco use"
                  },
                  "subject": {
                    "reference": "Patient/3998008"
                  },
                  "issued": "2016-01-26T21:58:41.000Z",
                  "valueString": "Current some day smoker"
                },
                {
                  "resourceType": "Observation",
                  "id": "5525867-q6930404",
                  "status": "final",
                  "code": {
                    "text": "SHX Tobacco type"
                  },
                  "subject": {
                    "reference": "Patient/3998008"
                  },
                  "issued": "2016-01-26T21:58:41.000Z",
                  "valueString": "Cigarettes, Chewing tobacco"
                },
                {
                  "resourceType": "Observation",
                  "id": "5525867-q6930316",
                  "status": "final",
                  "code": {
                    "text": "SHX Tobacco number of years"
                  },
                  "subject": {
                    "reference": "Patient/3998008"
                  },
                  "issued": "2016-01-26T21:58:41.000Z",
                  "valueString": "10"
                },
                {
                  "resourceType": "Observation",
                  "id": "5525867-q6930360",
                  "status": "final",
                  "code": {
                    "text": "SHX Tobacco started at age"
                  },
                  "subject": {
                    "reference": "Patient/3998008"
                  },
                  "issued": "2016-01-26T21:58:41.000Z",
                  "valueString": "22 Years"
                },
                {
                  "resourceType": "Observation",
                  "id": "5525867-q6930372",
                  "status": "final",
                  "code": {
                    "text": "SHX Tobacco readiness to change"
                  },
                  "subject": {
                    "reference": "Patient/3998008"
                  },
                  "issued": "2016-01-26T21:58:41.000Z",
                  "valueString": "No"
                },
                {
                  "resourceType": "Observation",
                  "id": "5525867-q6930368",
                  "status": "final",
                  "code": {
                    "text": "SHX Tobacco previous treatment"
                  },
                  "subject": {
                    "reference": "Patient/3998008"
                  },
                  "issued": "2016-01-26T21:58:41.000Z",
                  "valueString": "None"
                },
                {
                  "resourceType": "Observation",
                  "id": "5525867-q6930376",
                  "status": "final",
                  "code": {
                    "text": "SHX Tobacco household concerns"
                  },
                  "subject": {
                    "reference": "Patient/3998008"
                  },
                  "issued": "2016-01-26T21:58:41.000Z",
                  "valueString": "Yes"
                }
              ],
              "status": "final",
              "code": {
                "coding": [
                  {
                    "system": "http://snomed.info/sct",
                    "code": "229819007",
                    "display": "Tobacco use and exposure (observable entity)"
                  }
                ],
                "text": "Tobacco"
              },
              "subject": {
                "reference": "Patient/3998008"
              },
              "related": [
                {
                  "type": "has-member",
                  "target": {
                    "reference": "#5525867-q6930400"
                  }
                },
                {
                  "type": "has-member",
                  "target": {
                    "reference": "#5525867-q6930404"
                  }
                },
                {
                  "type": "has-member",
                  "target": {
                    "reference": "#5525867-q6930316"
                  }
                },
                {
                  "type": "has-member",
                  "target": {
                    "reference": "#5525867-q6930360"
                  }
                },
                {
                  "type": "has-member",
                  "target": {
                    "reference": "#5525867-q6930372"
                  }
                },
                {
                  "type": "has-member",
                  "target": {
                    "reference": "#5525867-q6930368"
                  }
                },
                {
                  "type": "has-member",
                  "target": {
                    "reference": "#5525867-q6930376"
                  }
                }
              ]
            }
          },
          {
            "fullUrl": "https://fhir.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Observation/M5853272",
            "resource": {
              "resourceType": "Observation",
              "id": "M5853272",
              "meta": {
                "versionId": "1-5853271",
                "lastUpdated": "2016-01-27T16:39:53.000Z"
              },
              "text": {
                "status": "generated",
                "div": "&lt;div>&lt;p>&lt;b>Observation&lt;/b>&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: 3998008&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Auth (Verified)&lt;/p>&lt;p>&lt;b>Code&lt;/b>: Potassium Lvl&lt;/p>&lt;p>&lt;b>Result&lt;/b>: 2.50 mEq/L&lt;/p>&lt;p>&lt;b>Risk Level&lt;/b>: CRIT&lt;/p>&lt;p>&lt;b>Date&lt;/b>: 2016-01-26T22:02:00.000Z&lt;/p>&lt;p>&lt;b>Risk Level Detail&lt;/b>: Low: 3.50 mEq/L High: 5.10 mEq/L&lt;/p>&lt;/div>"
              },
              "status": "final",
              "category": {
                "coding": [
                  {
                    "system": "http://hl7.org/fhir/observation-category",
                    "code": "laboratory",
                    "display": "Laboratory"
                  }
                ],
                "text": "Laboratory"
              },
              "code": {
                "coding": [
                  {
                    "system": "http://loinc.org",
                    "code": "2823-3",
                    "display": "POTASSIUM:SCNC:PT:SER/PLAS:QN:"
                  }
                ],
                "text": "Potassium Lvl"
              },
              "subject": {
                "reference": "Patient/3998008"
              },
              "encounter": {
                "reference": "Encounter/3651924"
              },
              "effectiveDateTime": "2016-01-26T22:02:00.000Z",
              "issued": "2016-01-27T16:39:52.000Z",
              "valueQuantity": {
                "value": 2.5,
                "unit": "mEq/L",
                "system": "http://unitsofmeasure.org",
                "code": "meq/L"
              },
              "interpretation": {
                "text": "CRIT"
              },
              "referenceRange": [
                {
                  "low": {
                    "value": 3.5,
                    "unit": "mEq/L",
                    "system": "http://unitsofmeasure.org",
                    "code": "meq/L"
                  },
                  "high": {
                    "value": 5.1,
                    "unit": "mEq/L",
                    "system": "http://unitsofmeasure.org",
                    "code": "meq/L"
                  }
                }
              ]
            }
          },
          {
            "fullUrl": "https://fhir.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Observation/M5851292",
            "resource": {
              "resourceType": "Observation",
              "id": "M5851292",
              "meta": {
                "versionId": "1-5851291",
                "lastUpdated": "2016-01-26T20:03:52.000Z"
              },
              "text": {
                "status": "generated",
                "div": "&lt;div>&lt;p>&lt;b>Observation&lt;/b>&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: 3998008&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Auth (Verified)&lt;/p>&lt;p>&lt;b>Code&lt;/b>: Temperature Oral&lt;/p>&lt;p>&lt;b>Result&lt;/b>: 37.9 DegC&lt;/p>&lt;p>&lt;b>Risk Level&lt;/b>: Above high normal&lt;/p>&lt;p>&lt;b>Date&lt;/b>: 2016-01-26T20:01:00.000Z&lt;/p>&lt;p>&lt;b>Risk Level Detail&lt;/b>: Low: 34.00 DegC High: 37.40 DegC&lt;/p>&lt;/div>"
              },
              "status": "final",
              "code": {
                "coding": [
                  {
                    "system": "http://loinc.org",
                    "code": "8331-1",
                    "display": "Body temperature - Mouth"
                  }
                ],
                "text": "Temperature Oral"
              },
              "subject": {
                "reference": "Patient/3998008"
              },
              "encounter": {
                "reference": "Encounter/3651924"
              },
              "effectiveDateTime": "2016-01-26T20:01:00.000Z",
              "issued": "2016-01-26T20:01:08.000Z",
              "valueQuantity": {
                "value": 37.9,
                "unit": "DegC"
              },
              "interpretation": {
                "coding": [
                  {
                    "system": "http://hl7.org/fhir/v2/0078",
                    "code": "H",
                    "display": "Above high normal"
                  }
                ],
                "text": "HI"
              },
              "referenceRange": [
                {
                  "low": {
                    "value": 34,
                    "unit": "DegC"
                  },
                  "high": {
                    "value": 37.4,
                    "unit": "DegC"
                  }
                }
              ]
            }
          },
          {
            "fullUrl": "https://fhir.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Observation/BP-5851294-5851296",
            "resource": {
              "resourceType": "Observation",
              "id": "BP-5851294-5851296",
              "meta": {
                "versionId": "1-5851293-1-5851295",
                "lastUpdated": "2016-01-26T20:03:52.000Z"
              },
              "text": {
                "status": "generated",
                "div": "&lt;div>&lt;p>&lt;b>Observation&lt;/b>&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: 3998008&lt;/p>&lt;p>&lt;b>Status&lt;/b>: final&lt;/p>&lt;p>&lt;b>Code&lt;/b>: Systolic Blood Pressure: Systolic Blood Pressure Diastolic Blood Pressure: Diastolic Blood Pressure&lt;/p>&lt;p>&lt;b>Result&lt;/b>: Systolic Blood Pressure: 125 mmHg Diastolic Blood Pressure: 117 mmHg&lt;/p>&lt;p>&lt;b>Risk Level&lt;/b>: Above absolute high-off instrument scale&lt;/p>&lt;p>&lt;b>Date&lt;/b>: 2016-01-26T20:01:00.000Z&lt;/p>&lt;p>&lt;b>Risk Level Detail&lt;/b>: Systolic Blood Pressure: Low: 80 mmHg High: 120 mmHg Diastolic Blood Pressure: Low: 70 mmHg High: 80 mmHg&lt;/p>&lt;/div>"
              },
              "status": "final",
              "code": {
                "coding": [
                  {
                    "system": "http://snomed.info/sct",
                    "code": "75367002",
                    "display": "Blood pressure (observable entity)"
                  },
                  {
                    "system": "http://loinc.org",
                    "code": "55284-4",
                    "display": "Blood pressure systolic and diastolic"
                  }
                ],
                "text": "Blood pressure"
              },
              "subject": {
                "reference": "Patient/3998008"
              },
              "encounter": {
                "reference": "Encounter/3651924"
              },
              "effectiveDateTime": "2016-01-26T20:01:00.000Z",
              "issued": "2016-01-26T20:01:08.000Z",
              "interpretation": {
                "coding": [
                  {
                    "system": "http://hl7.org/fhir/v2/0078",
                    "code": ">",
                    "display": "Above absolute high-off instrument scale"
                  }
                ],
                "text": ">HHI"
              },
              "component": [
                {
                  "code": {
                    "coding": [
                      {
                        "system": "http://loinc.org",
                        "code": "8480-6",
                        "display": "Systolic blood pressure"
                      }
                    ],
                    "text": "Systolic Blood Pressure"
                  },
                  "valueQuantity": {
                    "value": 125,
                    "unit": "mmHg",
                    "system": "http://unitsofmeasure.org",
                    "code": "mm[Hg]"
                  },
                  "referenceRange": [
                    {
                      "low": {
                        "value": 80,
                        "unit": "mmHg",
                        "system": "http://unitsofmeasure.org",
                        "code": "mm[Hg]"
                      },
                      "high": {
                        "value": 120,
                        "unit": "mmHg",
                        "system": "http://unitsofmeasure.org",
                        "code": "mm[Hg]"
                      }
                    }
                  ]
                },
                {
                  "code": {
                    "coding": [
                      {
                        "system": "http://loinc.org",
                        "code": "8462-4",
                        "display": "Diastolic blood pressure"
                      }
                    ],
                    "text": "Diastolic Blood Pressure"
                  },
                  "valueQuantity": {
                    "value": 117,
                    "unit": "mmHg",
                    "system": "http://unitsofmeasure.org",
                    "code": "mm[Hg]"
                  },
                  "referenceRange": [
                    {
                      "low": {
                        "value": 70,
                        "unit": "mmHg",
                        "system": "http://unitsofmeasure.org",
                        "code": "mm[Hg]"
                      },
                      "high": {
                        "value": 80,
                        "unit": "mmHg",
                        "system": "http://unitsofmeasure.org",
                        "code": "mm[Hg]"
                      }
                    }
                  ]
                }
              ]
            }
          }
        ]
      }

      DSTU2_ENCOUNTER_BUNDLE ||=
        {
          "resourceType": "Bundle",
          "id": "d41490ce-aece-4de5-ae7b-d4e1c671dd94",
          "type": "searchset",
          "total": 2,
          "link": [
          {
            "relation": "self",
            "url": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Encounter?patient=111"
          }
          ],
        "entry": [
          {
            "fullUrl": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Encounter/222",
            "resource": {
              "resourceType": "Encounter",
              "id": "222",
              "text": {
                "status": "generated",
                "div": "&lt;div>&lt;p>&lt;b>Encounter&lt;/b>&lt;/p>&lt;p>&lt;b>Location&lt;/b>: BW Rheumatology&lt;/p>&lt;p>&lt;b>Type&lt;/b>: outpatient&lt;/p>&lt;p>&lt;b>Status&lt;/b>: finished&lt;/p>&lt;p>&lt;b>Period Start Date&lt;/b>: 2015-03-12T15:30:00.000Z&lt;/p>&lt;p>&lt;b>Period End Date&lt;/b>: 2015-03-12T16:15:00.000Z&lt;/p>&lt;p>&lt;b>Reason For Visit&lt;/b>: rheumatoid arthritis&lt;/p>&lt;p>&lt;b>Attending Physician&lt;/b>: Jones, Bob&lt;/p>&lt;/div>"
              },
              "identifier": [
                {
                  "use": "usual",
                  "system": "http://cerner.com/fhir/identifier/FINNBR",
                  "value": "20001118"
                }
              ],
              "status": "finished",
              "class": "outpatient",
              "patient": {
                  "reference": "Patient/111"
              },
              "participant": [
                {
                  "type": [
                    {
                      "coding": [
                        {
                          "system": "http://hl7.org/fhir/v3/ParticipationType",
                          "code": "ATND",
                          "display": "attender"
                        }
                      ],
                      "text": "attender"
                    }
                  ],
                  "individual": {
                    "reference": "Practitioner/4340404",
                    "display": "Jones, Bob"
                  }
                }
              ],
              "period": {
                "start": "2015-03-12T15:30:00.000Z",
                "end": "2015-03-12T16:15:00.000Z"
              },
              "reason": [
                {
                  "text": "rheumatoid arthritis"
                }
              ],
              "location": [
                {
                  "location": {
                    "display": "BW Rheumatology"
                  }
                }
              ]
            }
          },
          {
            "fullUrl": "https://fhir-open.sandboxcernerpowerchart.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Encounter/333",
            "resource": {
              "resourceType": "Encounter",
              "id": "333",
              "text": {
                "status": "generated",
                "div": "&lt;div>&lt;p>&lt;b>Encounter&lt;/b>&lt;/p>&lt;p>&lt;b>Location&lt;/b>: Outpatient Ctr&lt;/p>&lt;p>&lt;b>Type&lt;/b>: outpatient&lt;/p>&lt;p>&lt;b>Status&lt;/b>: in-progress&lt;/p>&lt;p>&lt;b>Period Start Date&lt;/b>: 2015-03-10T13:00:00.000Z&lt;/p>&lt;p>&lt;b>Reason For Visit&lt;/b>: HIMSS demo pt&lt;/p>&lt;p>&lt;b>Attending Physician&lt;/b>: Smith, John&lt;/p>&lt;/div>"
              },
              "identifier": [
                {
                  "use": "usual",
                  "system": "http://cerner.com/fhir/identifier/FINNBR",
                  "value": "20001290"
                }
              ],
              "status": "in-progress",
              "class": "outpatient",
              "patient": {
                "reference": "Patient/111"
              },
              "participant": [
                {
                  "type": [
                    {
                      "coding": [
                        {
                          "system": "http://hl7.org/fhir/v3/ParticipationType",
                          "code": "ATND",
                          "display": "attender"
                        }
                      ],
                      "text": "attender"
                    }
                  ],
                  "individual": {
                    "reference": "Practitioner/5132404",
                    "display": "Smith, John"
                  }
                }
              ],
              "period": {
                "start": "2015-03-10T13:00:00.000Z"
              },
              "reason": [
                {
                  "text": "HIMSS demo pt"
                }
              ],
              "location": [
                {
                  "location": {
                    "display": "Outpatient Ctr"
                  }
                }
              ]
            }
          }
        ]
      }

    DSTU2_ENCOUNTER ||=
      {
        "resourceType": "Encounter",
        "id": "111",
        "text": {
          "status": "generated",
          "div": "&lt;div>&lt;p>&lt;b>Encounter&lt;/b>&lt;/p>&lt;p>&lt;b>Location&lt;/b>: 1N 134 01&lt;/p>&lt;p>&lt;b>Type&lt;/b>: inpatient&lt;/p>&lt;p>&lt;b>Status&lt;/b>: in-progress&lt;/p>&lt;p>&lt;b>Period Start Date&lt;/b>: 2004-04-16T19:00:00.000Z&lt;/p>&lt;/div>"
        },
        "identifier": [
          {
            "use": "usual",
            "system": "http://cerner.com/fhir/identifier/FINNBR",
            "value": "000000014"
          }
        ],
        "status": "in-progress",
        "class": "inpatient",
        "patient": {
          "reference": "Patient/111"
        },
        "period": {
          "start": "2004-04-16T19:00:00.000Z"
        },
        "location": [
          {
            "location": {
              "display": "1N 134 01"
            }
          }
        ]
      }
  end
end
