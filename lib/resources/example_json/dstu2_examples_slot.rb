module Cerner
  module Resources

    DSTU2_SLOT_ENTRY ||= {
      "resourceType": "Slot",
      "id": "21265426-633867-3121665-0",
      "meta": {
        "versionId": "0",
        "lastUpdated": "2015-06-10T10:40:33.000-05:00"
      },
      "text": {
        "status": "generated",
        "div": "&gt;div&lt;&gt;p&lt;&gt;b&lt;Slot&gt;/b&lt;&gt;/p&lt;&gt;p&lt;&gt;b&lt;Type&gt;/b&lt;: Same Day&gt;/p&lt;&gt;p&lt;&gt;b&lt;Start&gt;/b&lt;: 2016-01-01T08:00:00.000-06:00&gt;/p&lt;&gt;p&lt;&gt;b&lt;End&gt;/b&lt;: 2016-01-01T09:00:00.000-06:00&gt;/p&lt;&gt;/div&lt;"
      },
      "extension": [
        {
          "url": "https://fhir-ehr.cerner.com/dstu2/StructureDefinition/scheduling-location",
          "valueReference": {
            "reference": "Location/633867"
          }
        }
      ],
      "type": {
        "coding": [
          {
            "system": "http://snomed.info/sct",
            "code": "394581000",
            "display": "Community medicine"
          }
        ],
        "text": "Same Day"
      },
      "schedule": {
        "reference": "Schedule/21265426-633867-3121665-0"
      },
      "start": "2016-01-01T08:00:00.000-06:00",
      "end": "2016-01-01T09:00:00.000-06:00"
    }

    DSTU2_SLOT_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "e5dd4ff4-116b-4bf8-90d1-c867bb21b0fb",
      "type": "searchset",
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Slot?slot-type=http%3A%2F%2Fsnomed.info%2Fsct%7C394581000&schedule.actor=Practitioner%2F2578010&start=2016&_count=5"
        },
        {
          "relation": "next",
          "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Slot?-pageContext=26d86acd-529c-4d12-8f6f-3a10209fcb2a&-pageDirection=NEXT"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Slot/21265426-633867-3121665-0",
          "resource": {
            "resourceType": "Slot",
            "id": "21265426-633867-3121665-0",
            "meta": {
              "versionId": "0",
              "lastUpdated": "2015-06-10T10:40:33.000-05:00"
            },
            "text": {
              "status": "generated",
              "div": "&gt;div&lt;&gt;p&lt;&gt;b&lt;Slot&gt;/b&lt;&gt;/p&lt;&gt;p&lt;&gt;b&lt;Type&gt;/b&lt;: Same Day&gt;/p&lt;&gt;p&lt;&gt;b&lt;Start&gt;/b&lt;: 2016-01-01T08:00:00.000-06:00&gt;/p&lt;&gt;p&lt;&gt;b&lt;End&gt;/b&lt;: 2016-01-01T09:00:00.000-06:00&gt;/p&lt;&gt;/div&lt;"
            },
            "extension": [
              {
                "url": "https://fhir-ehr.cerner.com/dstu2/StructureDefinition/scheduling-location",
                "valueReference": {
                  "reference": "Location/633867"
                }
              }
            ],
            "type": {
              "coding": [
                {
                  "system": "http://snomed.info/sct",
                  "code": "394581000",
                  "display": "Community medicine"
                }
              ],
              "text": "Same Day"
            },
            "schedule": {
              "reference": "Schedule/21265426-633867-3121665-0"
            },
            "start": "2016-01-01T08:00:00.000-06:00",
            "end": "2016-01-01T09:00:00.000-06:00"
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Slot/21265426-633867-3121665-5",
          "resource": {
            "resourceType": "Slot",
            "id": "21265426-633867-3121665-5",
            "meta": {
              "versionId": "0",
              "lastUpdated": "2015-06-10T10:40:33.000-05:00"
            },
            "text": {
              "status": "generated",
              "div": "&gt;div&lt;&gt;p&lt;&gt;b&lt;Slot&gt;/b&lt;&gt;/p&lt;&gt;p&lt;&gt;b&lt;Type&gt;/b&lt;: Same Day&gt;/p&lt;&gt;p&lt;&gt;b&lt;Start&gt;/b&lt;: 2016-01-01T08:05:00.000-06:00&gt;/p&lt;&gt;p&lt;&gt;b&lt;End&gt;/b&lt;: 2016-01-01T09:05:00.000-06:00&gt;/p&lt;&gt;/div&lt;"
            },
            "extension": [
              {
                "url": "https://fhir-ehr.cerner.com/dstu2/StructureDefinition/scheduling-location",
                "valueReference": {
                  "reference": "Location/633867"
                }
              }
            ],
            "type": {
              "coding": [
                {
                  "system": "http://snomed.info/sct",
                  "code": "394581000",
                  "display": "Community medicine"
                }
              ],
              "text": "Same Day"
            },
            "schedule": {
              "reference": "Schedule/21265426-633867-3121665-5"
            },
            "start": "2016-01-01T08:05:00.000-06:00",
            "end": "2016-01-01T09:05:00.000-06:00"
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Slot/21265426-633867-3121665-10",
          "resource": {
            "resourceType": "Slot",
            "id": "21265426-633867-3121665-10",
            "meta": {
              "versionId": "0",
              "lastUpdated": "2015-06-10T10:40:33.000-05:00"
            },
            "text": {
              "status": "generated",
              "div": "&gt;div&lt;&gt;p&lt;&gt;b&lt;Slot&gt;/b&lt;&gt;/p&lt;&gt;p&lt;&gt;b&lt;Type&gt;/b&lt;: Same Day&gt;/p&lt;&gt;p&lt;&gt;b&lt;Start&gt;/b&lt;: 2016-01-01T08:10:00.000-06:00&gt;/p&lt;&gt;p&lt;&gt;b&lt;End&gt;/b&lt;: 2016-01-01T09:10:00.000-06:00&gt;/p&lt;&gt;/div&lt;"
            },
            "extension": [
              {
                "url": "https://fhir-ehr.cerner.com/dstu2/StructureDefinition/scheduling-location",
                "valueReference": {
                  "reference": "Location/633867"
                }
              }
            ],
            "type": {
              "coding": [
                {
                  "system": "http://snomed.info/sct",
                  "code": "394581000",
                  "display": "Community medicine"
                }
              ],
              "text": "Same Day"
            },
            "schedule": {
              "reference": "Schedule/21265426-633867-3121665-10"
            },
            "start": "2016-01-01T08:10:00.000-06:00",
            "end": "2016-01-01T09:10:00.000-06:00"
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Slot/21265426-633867-3121665-15",
          "resource": {
            "resourceType": "Slot",
            "id": "21265426-633867-3121665-15",
            "meta": {
              "versionId": "0",
              "lastUpdated": "2015-06-10T10:40:33.000-05:00"
            },
            "text": {
              "status": "generated",
              "div": "&gt;div&lt;&gt;p&lt;&gt;b&lt;Slot&gt;/b&lt;&gt;/p&lt;&gt;p&lt;&gt;b&lt;Type&gt;/b&lt;: Same Day&gt;/p&lt;&gt;p&lt;&gt;b&lt;Start&gt;/b&lt;: 2016-01-01T08:15:00.000-06:00&gt;/p&lt;&gt;p&lt;&gt;b&lt;End&gt;/b&lt;: 2016-01-01T09:15:00.000-06:00&gt;/p&lt;&gt;/div&lt;"
            },
            "extension": [
              {
                "url": "https://fhir-ehr.cerner.com/dstu2/StructureDefinition/scheduling-location",
                "valueReference": {
                  "reference": "Location/633867"
                }
              }
            ],
            "type": {
              "coding": [
                {
                  "system": "http://snomed.info/sct",
                  "code": "394581000",
                  "display": "Community medicine"
                }
              ],
              "text": "Same Day"
            },
            "schedule": {
              "reference": "Schedule/21265426-633867-3121665-15"
            },
            "start": "2016-01-01T08:15:00.000-06:00",
            "end": "2016-01-01T09:15:00.000-06:00"
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Slot/21265426-633867-3121665-20",
          "resource": {
            "resourceType": "Slot",
            "id": "21265426-633867-3121665-20",
            "meta": {
              "versionId": "0",
              "lastUpdated": "2015-06-10T10:40:33.000-05:00"
            },
            "text": {
              "status": "generated",
              "div": "&gt;div&lt;&gt;p&lt;&gt;b&lt;Slot&gt;/b&lt;&gt;/p&lt;&gt;p&lt;&gt;b&lt;Type&gt;/b&lt;: Same Day&gt;/p&lt;&gt;p&lt;&gt;b&lt;Start&gt;/b&lt;: 2016-01-01T08:20:00.000-06:00&gt;/p&lt;&gt;p&lt;&gt;b&lt;End&gt;/b&lt;: 2016-01-01T09:20:00.000-06:00&gt;/p&lt;&gt;/div&lt;"
            },
            "extension": [
              {
                "url": "https://fhir-ehr.cerner.com/dstu2/StructureDefinition/scheduling-location",
                "valueReference": {
                  "reference": "Location/633867"
                }
              }
            ],
            "type": {
              "coding": [
                {
                  "system": "http://snomed.info/sct",
                  "code": "394581000",
                  "display": "Community medicine"
                }
              ],
              "text": "Same Day"
            },
            "schedule": {
              "reference": "Schedule/21265426-633867-3121665-20"
            },
            "start": "2016-01-01T08:20:00.000-06:00",
            "end": "2016-01-01T09:20:00.000-06:00"
          }
        }
      ]
    }

  end
end
