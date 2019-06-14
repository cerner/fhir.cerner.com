module Cerner
  module Resources
    R4_APPOINTMENT_ENTRY ||= {
   "resourceType":"Appointment",
   "id":"20465903",
   "meta":{
      "versionId":"0",
      "lastUpdated":"2018-03-02T21:51:55.000Z"
   },
   "text":{
      "status":"generated",
      "div":"&lt;div>&lt;p>&lt;b>Appointment&lt;/b>&lt;/p>&lt;p>&lt;b>Status&lt;/b>: booked&lt;/b>&lt;/p>&lt;p>&lt;b>Service Type&lt;/b>: Surgery&lt;/b>&lt;/p>&lt;p>&lt;b>Start&lt;/b>: Mar 27, 2018  9:00 A.M. CDT&lt;/b>&lt;/p>&lt;p>&lt;b>End&lt;/b>: Mar 27, 2018 10:00 A.M. CDT&lt;/b>&lt;/p>&lt;p>&lt;b>Participants&lt;/b>: OR Rooms, Adams, Charlotte, KM Main OR&lt;/p>&lt;/div>"
   },
   "status":"booked",
   "serviceType":[
      {
         "coding":[
            {
               "system":"https://fhir.cerner.com/2c400054-42d8-4e74-87b7-80b5bd5fde9f/codeSet/14249",
               "code":"667105",
               "display":"Surgery",
               "userSelected":true
            },
            {
               "system":"http://snomed.info/sct",
               "code":"394609007",
               "display":"Surgery-general",
               "userSelected":false
            }
         ],
         "text":"Surgery"
      }
   ],
   "reasonCode":[
      {
         "text":"Headache"
      }
   ],
   "description":"Surgery",
   "start":"2018-03-27T14:00:00.000Z",
   "end":"2018-03-27T15:00:00.000Z",
   "minutesDuration":60,
   "comment":"EA-ALVA",
   "participant":[
      {
         "type":[
            {
               "coding":[
                  {
                     "system":"https://fhir.cerner.com/2c400054-42d8-4e74-87b7-80b5bd5fde9f/codeSet/14250",
                     "code":"667053",
                     "display":"OR Rooms",
                     "userSelected":true
                  }
               ],
               "text":"OR Rooms"
            },
            {
               "coding":[
                  {
                     "system":"http://terminology.hl7.org/CodeSystem/v3-ParticipationType",
                     "code":"PPRF",
                     "display":"primary performer"
                  }
               ]
            }
         ],
         "actor":{
            "display":"OR Rooms"
         },
         "required":"required",
         "status":"accepted"
      },
      {
         "type":[
            {
               "coding":[
                  {
                     "system":"https://fhir.cerner.com/2c400054-42d8-4e74-87b7-80b5bd5fde9f/codeSet/14250",
                     "code":"4572",
                     "display":"Patient",
                     "userSelected":true
                  }
               ],
               "text":"Patient"
            }
         ],
         "actor":{
            "reference":"Patient/1316026",
            "display":"Adams, Charlotte"
         },
         "required":"required",
         "status":"accepted"
      },
      {
         "actor":{
            "reference":"Location/451615309",
            "display":"KM Main OR"
         },
         "required":"required",
         "status":"accepted"
      }
   ],
   "requestedPeriod":[
      {
         "start":"2018-03-27T14:00:00.000Z",
         "end":"2018-03-27T15:00:00.000Z"
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
            "url": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Appointment?date=ge2018-12-07T22%3A22%3A16.270Z&date=lt2018-12-14T22%3A22%3A16.270Z&location=4062889&location=4048128&_count=1"
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
