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
          "div": "&lt;div>&lt;p>&lt;b>Appointment&lt;/b>&lt;/p>&lt;p>&lt;b>Status&lt;/b>: cancelled&lt;/p>&lt;p>&lt;b>Service Type&lt;/b>: Same Day&lt;/p>&lt;p>&lt;b>Start&lt;/b>: Oct  4, 2017  1:00 P.M. UTC&lt;/p>&lt;p>&lt;b>End&lt;/b>: Oct  4, 2017  2:00 P.M. UTC&lt;/p>&lt;p>&lt;b>Participants&lt;/b>: Practitioner: Howdeshell, Tami, Patient: Smart, Barney R, Location: Baseline East&lt;/p>&lt;/div>"
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
                  "display": "Howdeshell, Tami"
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
        "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Appointment/20465903",
        "resource": R4_APPOINTMENT_ENTRY
      ]
    }

    R4_APPOINTMENT_PATCH ||= [
      {
        "op": "replace",
        "path": "status",
        "value":  "cancelled"
      }
    ]

    R4_APPOINTMENT_CREATE ||= [
      {
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
    ]
  end
end
