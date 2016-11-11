module Cerner
  module Resources
   
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

  end
end
