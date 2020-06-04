module Cerner
  module Resources
    R4_APPOINTMENT_ENTRY ||= {
      "resourceType": "Appointment",
      "id": "3005756",
      "meta": {
        "versionId": "3",
        "lastUpdated": "2019-01-04T20:31:42.000Z"
      },
      "text": {
        "status": "generated",
        "div": "&lt;div>&lt;p>&lt;b>Appointment&lt;/b>&lt;/p>&lt;p>&lt;b>Status&lt;/b>: cancelled&lt;/p>&lt;p>&lt;b>Service Type&lt;/b>: Same Day&lt;/p>&lt;p>&lt;b>Start&lt;/b>: Oct  4, 2017  1:00 P.M. UTC&lt;/p>&lt;p>&lt;b>End&lt;/b>: Oct  4, 2017  2:00 P.M. UTC&lt;/p>&lt;p>&lt;b>Participants&lt;/b>: Practitioner: Jones, Clive, Patient: Smart, Barney R, Location: Baseline East&lt;/p>&lt;/div>"
      },
      "status": "cancelled",
      "serviceType": [
        {
          "coding": [
            {
              "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/14249",
              "code": "21265426",
              "display": "Same Day",
              "userSelected": true
            },
            {
              "system": "http://snomed.info/sct",
              "code": "408443003",
              "display": "General medical practice",
              "userSelected": false
            }
          ],
          "text": "Same Day"
        }
      ],
      "description": "Same Day",
      "start": "2017-10-04T13:00:00.000Z",
      "end": "2017-10-04T14:00:00.000Z",
      "minutesDuration": 60,
      "participant": [
        {
          "type": [
            {
              "coding": [
                {
                  "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/14250",
                  "code": "4574",
                  "display": "Resource",
                  "userSelected": true
                }
              ],
              "text": "Resource"
            },
            {
              "coding": [
                {
                  "system": "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
                  "code": "PPRF",
                  "display": "primary performer"
                }
              ]
            }
          ],
          "actor": {
            "reference": "Practitioner/2578010",
            "display": "Jones, Clive"
          },
          "required": "required",
          "status": "accepted"
        },
        {
          "type": [
            {
              "coding": [
                {
                  "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/14250",
                  "code": "4572",
                  "display": "Patient",
                  "userSelected": true
                }
              ],
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
      ],
      "requestedPeriod": [
        {
          "start": "2017-10-04T13:00:00.000Z",
          "end": "2017-10-04T14:00:00.000Z"
        }
      ]
    }

    R4_APPOINTMENT_VIDEO_VISIT_ENTRY ||= {
      "resourceType": "Appointment",
      "id": "3005757",
      "meta": {
        "versionId": "3",
        "lastUpdated": "2019-01-04T20:31:42.000Z"
      },
      "text": {
        "status": "generated",
        "div": "&lt;div>&lt;p>&lt;b>Appointment&lt;/b>&lt;/p>&lt;p>&lt;b>Status&lt;/b>: cancelled&lt;/p>&lt;p>&lt;b>Service Type&lt;/b>: EVisit&lt;/p>&lt;p>&lt;b>Start&lt;/b>: Oct  4, 2017  1:00 P.M. UTC&lt;/p>&lt;p>&lt;b>End&lt;/b>: Oct  4, 2017  2:00 P.M. UTC&lt;/p>&lt;p>&lt;b>Participants&lt;/b>: Practitioner: Jones, Clive, Patient: Smart, Barney R, Location: Baseline East&lt;/p>&lt;p>&lt;b>Video Visit&lt;/b>: Yes&lt;/p>&lt;/div>"
      },
      "contained": [
        {
          "resourceType": "HealthcareService",
          "id": "607",
          "type": [
            {
              "text": "Patient Virtual Meeting Room"
            }
          ],
          "telecom": [
            {
              "system": "url",
              "value": "http://patientlink.vmr.net",
              "period": {
                "start": "2017-10-04T13:00:00.000Z",
                "end": "2017-10-04T14:00:00.000Z"
              }
            }
          ]
        },
        {
          "resourceType": "HealthcareService",
          "id": "610",
          "type": [
            {
              "text": "Provider Virtual Meeting Room"
            }
          ],
          "telecom": [
            {
              "system": "url",
              "value": "http://providerlink.vmr.net",
              "period": {
                "start": "2017-10-04T13:00:00.000Z",
                "end": "2017-10-04T14:00:00.000Z"
              }
            }
          ]
        }
      ],
      "status": "cancelled",
      "serviceType": [
        {
          "coding": [
            {
              "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/14249",
              "code": "21265426",
              "display": "Same Day",
              "userSelected": true
            },
            {
              "system": "http://snomed.info/sct",
              "code": "408443003",
              "display": "General medical practice",
              "userSelected": false
            }
          ],
          "text": "Same Day"
        }
      ],
      "description": "Same Day",
      "start": "2017-10-04T13:00:00.000Z",
      "end": "2017-10-04T14:00:00.000Z",
      "minutesDuration": 60,
      "participant": [
        {
          "type": [
            {
              "coding": [
                {
                  "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/14250",
                  "code": "4574",
                  "display": "Resource",
                  "userSelected": true
                }
              ],
              "text": "Resource"
            },
            {
              "coding": [
                {
                  "system": "http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
                  "code": "PPRF",
                  "display": "primary performer"
                }
              ]
            }
          ],
          "actor": {
            "reference": "Practitioner/2578010",
            "display": "Jones, Clive"
          },
          "required": "required",
          "status": "accepted"
        },
        {
          "type": [
            {
              "coding": [
                {
                  "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/14250",
                  "code": "4572",
                  "display": "Patient",
                  "userSelected": true
                }
              ],
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
        },
        {
          "type": [
            {
              "text": "Patient Virtual Meeting Room"
            }
          ],
          "actor": {
            "reference": "#607"
          },
          "status": "accepted"
        },
        {
          "type": [
            {
              "text": "Provider Virtual Meeting Room"
            }
          ],
          "actor": {
            "reference": "#610"
          },
          "status": "accepted"
        }
      ],
      "requestedPeriod": [
        {
          "start": "2017-10-04T13:00:00.000Z",
          "end": "2017-10-04T14:00:00.000Z"
        }
      ]
    }

    R4_APPOINTMENT_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "0f5531d7-01d5-40ad-a482-3d1645f68e32",
      "type": "searchset",
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Appointment?date=ge2017-10-04T13:00:00.000Z&date=lt2017-10-04T14:00:00.000Z&patient=4704007"
        },
        {
          "relation": "next",
          "url": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Appointment?-pageContext=H4sIAAAAAAAAAI1SXW%2FCIBT9LzxXC%2FSDyptTH%2FZizOzDssUH1l5bEoWGollm%2FO%2BDtpuNmckSkhPOvRzOPXBBomm0VPYIym5BmKJeGGnBSIH4BTWigq38AsRJgD6gkmopLOTy6BhEMckmhE4IyUnKMXZrijF%2BQwECVf7VGOeUcrdIOqWsazzoQlip1UKX0CL%2BHuOUZtksiHGcEZrtAmfBSufteenLfm%2F0WZZgfomjm0Cqalvoxl9WW9vwMKwPbKpNFe5racKXOByNia7BeOpeiMWMsSQJemQBSzC5oednM5akA2aejzq%2BQ99Hhj0hAyY9RoNONNSjgadOJ3H%2BFXzap0fR9olFo8R8%2B3zsHvEfzy4bOEt9au%2FqE3Irrf77MgaskArK%2BX1Su5vYxn2PpTRQ%2BCd0cuvVa%2B6O1qLdjDoQ34tDCx2%2Fdu57zpoTXL8Bnx1Hw38CAAA%3D&-pageDirection=NEXT"
        }
      ],
      "entry": [
        "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Appointment/3005756",
        "resource": R4_APPOINTMENT_ENTRY
      ]
    }

    R4_APPOINTMENT_PATCH ||= [
      {
        "op": "replace",
        "path": "/status",
        "value":  "cancelled"
      }
    ]

    R4_APPOINTMENT_VIDEO_VISIT_ADD_PATCH ||= [
      {
        "op": "add",
        "path": "/contained/0/telecom/0/value",
        "value": "http://providerlink.vmr.net"
      },
      {
        "op": "add",
        "path": "/contained/1/telecom/0/value",
        "value": "http://patientlink.vmr.net"
      },
      {
        "op": "add",
        "path": "/contained/0/telecom/0/period/start",
        "value": "2019-07-13T08:00:00.000Z"
      },
      {
        "op": "add",
        "path": "/contained/0/telecom/0/period/end",
        "value": "2019-07-13T08:10:00.000Z"
      }
    ]

    R4_APPOINTMENT_VIDEO_VISIT_REPLACE_PATCH ||= [
      {
        "op": "replace",
        "path": "/contained/0/telecom/0/value",
        "value": "http://providerlink.vmr.net"
      },
      {
        "op": "replace",
        "path": "/contained/1/telecom/0/value",
        "value": "http://patientlink.vmr.net"
      },
      {
        "op": "replace",
        "path": "/contained/0/telecom/0/period/start",
        "value": "2019-07-13T08:00:00.000Z"
      },
      {
        "op": "replace",
        "path": "/contained/0/telecom/0/period/end",
        "value": "2019-07-13T08:10:00.000Z"
      }
    ]

    R4_APPOINTMENT_CREATE ||= {
      "resourceType": "Appointment",
      "status": "booked",
      "slot": [
        {
          "reference": "Slot/21265426-633867-6828001-60"
        }
      ],
      "participant": [
        {
          "actor": {
            "reference": "Patient/4704007",
            "display": "Smart, Barney R"
          },
          "status": "accepted"
        }
      ]
    }

    R4_PROPOSED_APPOINTMENT_CREATE ||= {
      "resourceType": "Appointment",
      "status": "proposed",
      "serviceType": [
        {
          "coding": [
            {
              "code": "394586005",
              "system": "http://snomed.info/sct"
            }
          ]
        }
      ],
      "comment": "Appointment request comment",
      "participant": [
        {
          "actor": {
            "reference": "Patient/773933",
            "display": "TAYLOR, MARCUS CERNER"
          },
          "status": "needs-action"
        },
        {
          "actor": {
            "reference": "Location/4062906",
            "display": "Operation Room"
          },
          "status": "needs-action"
        }
      ],
      "requestedPeriod": [
        {
          "start": "2020-02-07T13:28:17-05:00",
          "end": "2021-02-07T13:28:17-05:00"
        }
      ]
    }
  end
end
