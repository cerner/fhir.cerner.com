module Cerner
  module Resources

    DSTU2_APPOINTMENT_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "4344d30c-0b5b-4be9-851a-adabb0fda827",
      "type": "searchset",
      "total": 4,
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Appointment?date=2017&patient=4704007&_count=50"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Appointment/3005756",
          "resource": {
            "resourceType": "Appointment",
            "id": "3005756",
            "meta": {
              "versionId": "0",
              "lastUpdated": "2017-10-04T13:06:34.000-05:00"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Appointment&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Description&lt;/b&gt;: Same Day&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Same Day&lt;/p&gt;&lt;p&gt;&lt;b&gt;Start&lt;/b&gt;: 2017-10-04T08:00:00.000-05:00&lt;/p&gt;&lt;p&gt;&lt;b&gt;End&lt;/b&gt;: 2017-10-04T09:00:00.000-05:00&lt;/p&gt;&lt;p&gt;&lt;b&gt;Minutes Duration&lt;/b&gt;: 60&lt;/p&gt;&lt;p&gt;&lt;b&gt;Location&lt;/b&gt;: Baseline East&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: Smart, Barney R&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Practitioner&lt;/b&gt;: Song, River&lt;/p&gt;&lt;p&gt;&lt;b&gt;Primary&lt;/b&gt;: true&lt;/p&gt;&lt;/div&gt;"
            },
            "type": {
              "coding": [
                {
                  "system": "http://snomed.info/sct",
                  "code": "394581000",
                  "display": "Community medicine",
                  "userSelected": false
                },
                {
                  "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/14249",
                  "code": "21265426",
                  "display": "Same Day",
                  "userSelected": true
                }
              ],
              "text": "Same Day"
            },
            "status": "booked",
            "description": "Same Day",
            "start": "2017-10-04T08:00:00.000-05:00",
            "end": "2017-10-04T09:00:00.000-05:00",
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
                  "reference": "Practitioner/2578010",
                  "display": "Song, River"
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
                  "reference": "Patient/4704007",
                  "display": "Smart, Barney R"
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
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Appointment/3005759",
          "resource": {
            "resourceType": "Appointment",
            "id": "3005759",
            "meta": {
              "versionId": "0",
              "lastUpdated": "2017-10-04T13:11:41.000-05:00"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Appointment&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Description&lt;/b&gt;: Same Day&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Same Day&lt;/p&gt;&lt;p&gt;&lt;b&gt;Start&lt;/b&gt;: 2017-10-04T09:00:00.000-05:00&lt;/p&gt;&lt;p&gt;&lt;b&gt;End&lt;/b&gt;: 2017-10-04T10:00:00.000-05:00&lt;/p&gt;&lt;p&gt;&lt;b&gt;Minutes Duration&lt;/b&gt;: 60&lt;/p&gt;&lt;p&gt;&lt;b&gt;Location&lt;/b&gt;: Baseline West&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: Smart, Barney R&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Practitioner&lt;/b&gt;: Song, River&lt;/p&gt;&lt;p&gt;&lt;b&gt;Primary&lt;/b&gt;: true&lt;/p&gt;&lt;/div&gt;"
            },
            "type": {
              "coding": [
                {
                  "system": "http://snomed.info/sct",
                  "code": "394581000",
                  "display": "Community medicine",
                  "userSelected": false
                },
                {
                  "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/14249",
                  "code": "21265426",
                  "display": "Same Day",
                  "userSelected": true
                }
              ],
              "text": "Same Day"
            },
            "status": "booked",
            "description": "Same Day",
            "start": "2017-10-04T09:00:00.000-05:00",
            "end": "2017-10-04T10:00:00.000-05:00",
            "minutesDuration": 60,
            "participant": [
              {
                "type": [
                  {
                    "text": "Patient"
                  }
                ],
                "actor": {
                  "reference": "Patient/4704007",
                  "display": "Smart, Barney R"
                },
                "required": "required",
                "status": "accepted"
              },
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
                  "reference": "Practitioner/2578010",
                  "display": "Song, River"
                },
                "required": "required",
                "status": "accepted"
              },
              {
                "actor": {
                  "reference": "Location/633867",
                  "display": "Baseline West"
                },
                "required": "required",
                "status": "accepted"
              }
            ]
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Appointment/3005753",
          "resource": {
            "resourceType": "Appointment",
            "id": "3005753",
            "meta": {
              "versionId": "0",
              "lastUpdated": "2017-10-04T13:01:43.000-05:00"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Appointment&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Description&lt;/b&gt;: Same Day&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Same Day&lt;/p&gt;&lt;p&gt;&lt;b&gt;Start&lt;/b&gt;: 2017-10-04T22:54:00.000-05:00&lt;/p&gt;&lt;p&gt;&lt;b&gt;End&lt;/b&gt;: 2017-10-04T23:54:00.000-05:00&lt;/p&gt;&lt;p&gt;&lt;b&gt;Minutes Duration&lt;/b&gt;: 60&lt;/p&gt;&lt;p&gt;&lt;b&gt;Location&lt;/b&gt;: Baseline East&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: Smart, Barney R&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Practitioner&lt;/b&gt;: Physician, PowerChartTouch&lt;/p&gt;&lt;p&gt;&lt;b&gt;Primary&lt;/b&gt;: true&lt;/p&gt;&lt;/div&gt;"
            },
            "type": {
              "coding": [
                {
                  "system": "http://snomed.info/sct",
                  "code": "394581000",
                  "display": "Community medicine",
                  "userSelected": false
                },
                {
                  "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/14249",
                  "code": "21265426",
                  "display": "Same Day",
                  "userSelected": true
                }
              ],
              "text": "Same Day"
            },
            "status": "booked",
            "description": "Same Day",
            "start": "2017-10-04T22:54:00.000-05:00",
            "end": "2017-10-04T23:54:00.000-05:00",
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
                  "reference": "Practitioner/1376007",
                  "display": "Physician, PowerChartTouch"
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
                  "reference": "Patient/4704007",
                  "display": "Smart, Barney R"
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
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Appointment/3005760",
          "resource": {
            "resourceType": "Appointment",
            "id": "3005760",
            "meta": {
              "versionId": "0",
              "lastUpdated": "2017-10-04T13:33:07.000-05:00"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Appointment&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Description&lt;/b&gt;: Same Day&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Same Day&lt;/p&gt;&lt;p&gt;&lt;b&gt;Start&lt;/b&gt;: 2017-10-05T08:00:00.000-05:00&lt;/p&gt;&lt;p&gt;&lt;b&gt;End&lt;/b&gt;: 2017-10-05T09:00:00.000-05:00&lt;/p&gt;&lt;p&gt;&lt;b&gt;Minutes Duration&lt;/b&gt;: 60&lt;/p&gt;&lt;p&gt;&lt;b&gt;Location&lt;/b&gt;: Baseline East&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: Smart, Barney R&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Practitioner&lt;/b&gt;: Franks, StaceyPhys&lt;/p&gt;&lt;p&gt;&lt;b&gt;Primary&lt;/b&gt;: true&lt;/p&gt;&lt;/div&gt;"
            },
            "type": {
              "coding": [
                {
                  "system": "http://snomed.info/sct",
                  "code": "394581000",
                  "display": "Community medicine",
                  "userSelected": false
                },
                {
                  "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/14249",
                  "code": "21265426",
                  "display": "Same Day",
                  "userSelected": true
                }
              ],
              "text": "Same Day"
            },
            "status": "booked",
            "description": "Same Day",
            "start": "2017-10-05T08:00:00.000-05:00",
            "end": "2017-10-05T09:00:00.000-05:00",
            "minutesDuration": 60,
            "participant": [
              {
                "type": [
                  {
                    "text": "Patient"
                  }
                ],
                "actor": {
                  "reference": "Patient/4704007",
                  "display": "Smart, Barney R"
                },
                "required": "required",
                "status": "accepted"
              },
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
                  "reference": "Practitioner/1314012",
                  "display": "Franks, StaceyPhys"
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
        }
      ]
    }

    DSTU2_APPOINTMENT_READ ||= {
      "resourceType": "Appointment",
      "id": "3005756",
      "meta": {
        "versionId": "0",
        "lastUpdated": "2017-10-04T13:06:34.000-05:00"
      },
      "text": {
        "status": "generated",
        "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Appointment&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Description&lt;/b&gt;: Same Day&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Same Day&lt;/p&gt;&lt;p&gt;&lt;b&gt;Start&lt;/b&gt;: 2017-10-04T08:00:00.000-05:00&lt;/p&gt;&lt;p&gt;&lt;b&gt;End&lt;/b&gt;: 2017-10-04T09:00:00.000-05:00&lt;/p&gt;&lt;p&gt;&lt;b&gt;Minutes Duration&lt;/b&gt;: 60&lt;/p&gt;&lt;p&gt;&lt;b&gt;Location&lt;/b&gt;: Baseline East&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: Smart, Barney R&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Practitioner&lt;/b&gt;: Howdeshell, Tami&lt;/p&gt;&lt;p&gt;&lt;b&gt;Primary&lt;/b&gt;: true&lt;/p&gt;&lt;/div&gt;"
      },
      "type": {
        "coding": [
          {
            "system": "http://snomed.info/sct",
            "code": "394581000",
            "display": "Community medicine",
            "userSelected": false
          },
          {
            "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/14249",
            "code": "21265426",
            "display": "Same Day",
            "userSelected": true
          }
        ],
        "text": "Same Day"
      },
      "status": "booked",
      "description": "Same Day",
      "start": "2017-10-04T08:00:00.000-05:00",
      "end": "2017-10-04T09:00:00.000-05:00",
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
            "reference": "Practitioner/2578010",
            "display": "Howdeshell, Tami"
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
            "reference": "Patient/4704007",
            "display": "Smart, Barney R"
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
    DSTU2_APPOINTMENT_UPDATE ||= {
      "resourceType": "Appointment",
      "id": "3005756",
      "meta": {
        "versionId": "0",
        "lastUpdated": "2017-10-04T13:06:34.000-05:00"
      },
      "text": {
        "status": "generated",
        "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Appointment&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Description&lt;/b&gt;: Same Day&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Same Day&lt;/p&gt;&lt;p&gt;&lt;b&gt;Start&lt;/b&gt;: 2017-10-04T08:00:00.000-05:00&lt;/p&gt;&lt;p&gt;&lt;b&gt;End&lt;/b&gt;: 2017-10-04T09:00:00.000-05:00&lt;/p&gt;&lt;p&gt;&lt;b&gt;Minutes Duration&lt;/b&gt;: 60&lt;/p&gt;&lt;p&gt;&lt;b&gt;Location&lt;/b&gt;: Baseline East&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: Smart, Barney R&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Practitioner&lt;/b&gt;: Howdeshell, Tami&lt;/p&gt;&lt;p&gt;&lt;b&gt;Primary&lt;/b&gt;: true&lt;/p&gt;&lt;/div&gt;"
      },
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
      "status": "arrived",
      "description": "Same Day",
      "start": "2017-10-04T08:00:00.000-05:00",
      "end": "2017-10-04T09:00:00.000-05:00",
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
            "reference": "Practitioner/2578010",
            "display": "Howdeshell, Tami"
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
            "reference": "Patient/4704007",
            "display": "Smart, Barney R"
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

    DSTU2_APPOINTMENT_CREATE ||= {
      "resourceType": "Appointment",
      "slot": {
        "reference": "Slot/21265426-633867-6828001-60"
      },
      "participant": [
        {
          "actor": {
            "reference": "Patient/4704007",
            "display": "Smart, Barney R"
          },
          "status": "needs-action"
        }
      ],
      "status": "proposed"
    }
  end
end
