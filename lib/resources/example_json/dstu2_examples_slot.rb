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
        "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Slot&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Same Day&lt;/p&gt;&lt;p&gt;&lt;b&gt;Start&lt;/b&gt;: 2016-01-01T08:00:00.000-06:00&lt;/p&gt;&lt;p&gt;&lt;b&gt;End&lt;/b&gt;: 2016-01-01T09:00:00.000-06:00&lt;/p&gt;&lt;/div&gt;"
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
      "freeBusyType": "busy",
      "start": "2016-01-01T08:00:00.000-06:00",
      "end": "2016-01-01T09:00:00.000-06:00"
    }

    DSTU2_SLOT_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "0b37fa7f-7711-4e8c-990e-158a02fc92c4",
      "type": "searchset",
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Slot?slot-type=http%3A%2F%2Fsnomed.info%2Fsct%7C394581000&schedule.actor=Practitioner%2F2578010&start=2016&_count=5"
        },
        {
          "relation": "next",
          "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Slot?-pageContext=7f264aa2-0cbe-4824-b542-33372e1434c3&-pageDirection=NEXT"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Slot/21265426-4048128-3121781-360",
          "resource": {
            "resourceType": "Slot",
            "id": "21265426-4048128-3121781-360",
            "meta": {
              "versionId": "0",
              "lastUpdated": "2015-06-10T10:40:33.000-05:00"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Slot&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Same Day&lt;/p&gt;&lt;p&gt;&lt;b&gt;Start&lt;/b&gt;: Jan 30, 2016  8:00 P.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;End&lt;/b&gt;: Jan 30, 2016  9:00 P.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Free&lt;/p&gt;&lt;/div&gt;"
            },
            "extension": [
              {
                "url": "https://fhir-ehr.cerner.com/dstu2/StructureDefinition/scheduling-location",
                "valueReference": {
                  "reference": "Location/4048128"
                }
              }
            ],
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
            "schedule": {
              "reference": "Schedule/21265426-4048128-3121781-360"
            },
            "freeBusyType": "free",
            "start": "2016-01-30T14:00:00.000-06:00",
            "end": "2016-01-30T15:00:00.000-06:00"
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Slot/21265426-633867-3121781-360",
          "resource": {
            "resourceType": "Slot",
            "id": "21265426-633867-3121781-360",
            "meta": {
              "versionId": "0",
              "lastUpdated": "2015-06-10T10:40:33.000-05:00"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Slot&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Same Day&lt;/p&gt;&lt;p&gt;&lt;b&gt;Start&lt;/b&gt;: Jan 30, 2016  8:00 P.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;End&lt;/b&gt;: Jan 30, 2016  9:00 P.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Free&lt;/p&gt;&lt;/div&gt;"
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
            "schedule": {
              "reference": "Schedule/21265426-633867-3121781-360"
            },
            "freeBusyType": "free",
            "start": "2016-01-30T14:00:00.000-06:00",
            "end": "2016-01-30T15:00:00.000-06:00"
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Slot/21265426-4048128-3121781-365",
          "resource": {
            "resourceType": "Slot",
            "id": "21265426-4048128-3121781-365",
            "meta": {
              "versionId": "0",
              "lastUpdated": "2015-06-10T10:40:33.000-05:00"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Slot&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Same Day&lt;/p&gt;&lt;p&gt;&lt;b&gt;Start&lt;/b&gt;: Jan 30, 2016  8:05 P.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;End&lt;/b&gt;: Jan 30, 2016  9:05 P.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Free&lt;/p&gt;&lt;/div&gt;"
            },
            "extension": [
              {
                "url": "https://fhir-ehr.cerner.com/dstu2/StructureDefinition/scheduling-location",
                "valueReference": {
                  "reference": "Location/4048128"
                }
              }
            ],
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
            "schedule": {
              "reference": "Schedule/21265426-4048128-3121781-365"
            },
            "freeBusyType": "free",
            "start": "2016-01-30T14:05:00.000-06:00",
            "end": "2016-01-30T15:05:00.000-06:00"
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Slot/21265426-633867-3121781-365",
          "resource": {
            "resourceType": "Slot",
            "id": "21265426-633867-3121781-365",
            "meta": {
              "versionId": "0",
              "lastUpdated": "2015-06-10T10:40:33.000-05:00"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Slot&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Same Day&lt;/p&gt;&lt;p&gt;&lt;b&gt;Start&lt;/b&gt;: Jan 30, 2016  8:05 P.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;End&lt;/b&gt;: Jan 30, 2016  9:05 P.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Free&lt;/p&gt;&lt;/div&gt;"
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
            "schedule": {
              "reference": "Schedule/21265426-633867-3121781-365"
            },
            "freeBusyType": "free",
            "start": "2016-01-30T14:05:00.000-06:00",
            "end": "2016-01-30T15:05:00.000-06:00"
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Slot/21265426-4048128-3121781-370",
          "resource": {
            "resourceType": "Slot",
            "id": "21265426-4048128-3121781-370",
            "meta": {
              "versionId": "0",
              "lastUpdated": "2015-06-10T10:40:33.000-05:00"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Slot&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Same Day&lt;/p&gt;&lt;p&gt;&lt;b&gt;Start&lt;/b&gt;: Jan 30, 2016  8:10 P.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;End&lt;/b&gt;: Jan 30, 2016  9:10 P.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Free&lt;/p&gt;&lt;/div&gt;"
            },
            "extension": [
              {
                "url": "https://fhir-ehr.cerner.com/dstu2/StructureDefinition/scheduling-location",
                "valueReference": {
                  "reference": "Location/4048128"
                }
              }
            ],
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
            "schedule": {
              "reference": "Schedule/21265426-4048128-3121781-370"
            },
            "freeBusyType": "free",
            "start": "2016-01-30T14:10:00.000-06:00",
            "end": "2016-01-30T15:10:00.000-06:00"
          }
        }
      ]
    }

    DSTU2_SLOT_BUNDLE_INCLUDE_SCHEDULE ||= {
      "resourceType": "Bundle",
      "id": "b1d02f24-a47e-44db-a608-82f75fef8fec",
      "type": "searchset",
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Slot?slot-type=http%3A%2F%2Fsnomed.info%2Fsct%7C394581000&schedule.actor=Practitioner%2F2578010&start=2016&_include=Slot%3Aschedule&_count=5"
        },
        {
          "relation": "next",
          "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Slot?_include=Slot%3Aschedule&-pageContext=71f9a683-b711-41b9-9646-46f7c87dd94d&-pageDirection=NEXT"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Slot/21265426-4048128-3121781-420",
          "resource": {
            "resourceType": "Slot",
            "id": "21265426-4048128-3121781-420",
            "meta": {
              "versionId": "0",
              "lastUpdated": "2015-06-10T15:40:33.000Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Slot&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Same Day&lt;/p&gt;&lt;p&gt;&lt;b&gt;Start&lt;/b&gt;: Jan 30, 2016  9:00 P.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;End&lt;/b&gt;: Jan 30, 2016 10:00 P.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Free&lt;/p&gt;&lt;/div&gt;"
            },
            "extension": [
              {
                "url": "https://fhir-ehr.cerner.com/dstu2/StructureDefinition/scheduling-location",
                "valueReference": {
                  "reference": "Location/4048128"
                }
              }
            ],
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
            "schedule": {
              "reference": "Schedule/21265426-4048128-3121781-420"
            },
            "freeBusyType": "free",
            "start": "2016-01-30T21:00:00.000Z",
            "end": "2016-01-30T22:00:00.000Z"
          },
          "search": {
            "mode": "match"
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Slot/21265426-633867-3121781-420",
          "resource": {
            "resourceType": "Slot",
            "id": "21265426-633867-3121781-420",
            "meta": {
              "versionId": "0",
              "lastUpdated": "2015-06-10T15:40:33.000Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Slot&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Same Day&lt;/p&gt;&lt;p&gt;&lt;b&gt;Start&lt;/b&gt;: Jan 30, 2016  9:00 P.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;End&lt;/b&gt;: Jan 30, 2016 10:00 P.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Free&lt;/p&gt;&lt;/div&gt;"
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
            "schedule": {
              "reference": "Schedule/21265426-633867-3121781-420"
            },
            "freeBusyType": "free",
            "start": "2016-01-30T21:00:00.000Z",
            "end": "2016-01-30T22:00:00.000Z"
          },
          "search": {
            "mode": "match"
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Slot/21265426-4048128-3121785-0",
          "resource": {
            "resourceType": "Slot",
            "id": "21265426-4048128-3121785-0",
            "meta": {
              "versionId": "0",
              "lastUpdated": "2015-06-10T15:40:33.000Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Slot&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Same Day&lt;/p&gt;&lt;p&gt;&lt;b&gt;Start&lt;/b&gt;: Jan 31, 2016  2:00 P.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;End&lt;/b&gt;: Jan 31, 2016  3:00 P.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Free&lt;/p&gt;&lt;/div&gt;"
            },
            "extension": [
              {
                "url": "https://fhir-ehr.cerner.com/dstu2/StructureDefinition/scheduling-location",
                "valueReference": {
                  "reference": "Location/4048128"
                }
              }
            ],
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
            "schedule": {
              "reference": "Schedule/21265426-4048128-3121785-0"
            },
            "freeBusyType": "free",
            "start": "2016-01-31T14:00:00.000Z",
            "end": "2016-01-31T15:00:00.000Z"
          },
          "search": {
            "mode": "match"
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Slot/21265426-633867-3121785-0",
          "resource": {
            "resourceType": "Slot",
            "id": "21265426-633867-3121785-0",
            "meta": {
              "versionId": "0",
              "lastUpdated": "2015-06-10T15:40:33.000Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Slot&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Same Day&lt;/p&gt;&lt;p&gt;&lt;b&gt;Start&lt;/b&gt;: Jan 31, 2016  2:00 P.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;End&lt;/b&gt;: Jan 31, 2016  3:00 P.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Free&lt;/p&gt;&lt;/div&gt;"
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
            "schedule": {
              "reference": "Schedule/21265426-633867-3121785-0"
            },
            "freeBusyType": "free",
            "start": "2016-01-31T14:00:00.000Z",
            "end": "2016-01-31T15:00:00.000Z"
          },
          "search": {
            "mode": "match"
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Slot/21265426-4048128-3121785-5",
          "resource": {
            "resourceType": "Slot",
            "id": "21265426-4048128-3121785-5",
            "meta": {
              "versionId": "0",
              "lastUpdated": "2015-06-10T15:40:33.000Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Slot&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Same Day&lt;/p&gt;&lt;p&gt;&lt;b&gt;Start&lt;/b&gt;: Jan 31, 2016  2:05 P.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;End&lt;/b&gt;: Jan 31, 2016  3:05 P.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Free&lt;/p&gt;&lt;/div&gt;"
            },
            "extension": [
              {
                "url": "https://fhir-ehr.cerner.com/dstu2/StructureDefinition/scheduling-location",
                "valueReference": {
                  "reference": "Location/4048128"
                }
              }
            ],
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
            "schedule": {
              "reference": "Schedule/21265426-4048128-3121785-5"
            },
            "freeBusyType": "free",
            "start": "2016-01-31T14:05:00.000Z",
            "end": "2016-01-31T15:05:00.000Z"
          },
          "search": {
            "mode": "match"
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Schedule/21265426-4048128-3121781-420",
          "resource": {
            "resourceType": "Schedule",
            "id": "21265426-4048128-3121781-420",
            "text": {
              "status": "extensions",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Schedule&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Same Day&lt;/p&gt;&lt;p&gt;&lt;b&gt;Practitioner&lt;/b&gt;: Snow, Jon&lt;/p&gt;&lt;p&gt;&lt;b&gt;Location&lt;/b&gt;: Baseline East&lt;/p&gt;&lt;/div&gt;"
            },
            "extension": [
              {
                "url": "https://fhir-ehr.cerner.com/dstu2/StructureDefinition/scheduling-location",
                "valueReference": {
                  "reference": "Location/4048128",
                  "display": "Baseline East"
                }
              }
            ],
            "type": [
              {
                "coding": [
                  {
                    "system": "http://snomed.info/sct",
                    "code": "394581000",
                    "display": "Community medicine"
                  }
                ],
                "text": "Same Day"
              }
            ],
            "actor": {
              "reference": "Practitioner/2578010",
              "display": "Snow, Jon"
            }
          },
          "search": {
            "mode": "include"
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Schedule/21265426-633867-3121781-420",
          "resource": {
            "resourceType": "Schedule",
            "id": "21265426-633867-3121781-420",
            "text": {
              "status": "extensions",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Schedule&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Same Day&lt;/p&gt;&lt;p&gt;&lt;b&gt;Practitioner&lt;/b&gt;: Snow, Jon&lt;/p&gt;&lt;p&gt;&lt;b&gt;Location&lt;/b&gt;: Baseline West&lt;/p&gt;&lt;/div&gt;"
            },
            "extension": [
              {
                "url": "https://fhir-ehr.cerner.com/dstu2/StructureDefinition/scheduling-location",
                "valueReference": {
                  "reference": "Location/633867",
                  "display": "Baseline West"
                }
              }
            ],
            "type": [
              {
                "coding": [
                  {
                    "system": "http://snomed.info/sct",
                    "code": "394581000",
                    "display": "Community medicine"
                  }
                ],
                "text": "Same Day"
              }
            ],
            "actor": {
              "reference": "Practitioner/2578010",
              "display": "Snow, Jon"
            }
          },
          "search": {
            "mode": "include"
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Schedule/21265426-4048128-3121785-0",
          "resource": {
            "resourceType": "Schedule",
            "id": "21265426-4048128-3121785-0",
            "text": {
              "status": "extensions",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Schedule&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Same Day&lt;/p&gt;&lt;p&gt;&lt;b&gt;Practitioner&lt;/b&gt;: Snow, Jon&lt;/p&gt;&lt;p&gt;&lt;b&gt;Location&lt;/b&gt;: Baseline East&lt;/p&gt;&lt;/div&gt;"
            },
            "extension": [
              {
                "url": "https://fhir-ehr.cerner.com/dstu2/StructureDefinition/scheduling-location",
                "valueReference": {
                  "reference": "Location/4048128",
                  "display": "Baseline East"
                }
              }
            ],
            "type": [
              {
                "coding": [
                  {
                    "system": "http://snomed.info/sct",
                    "code": "394581000",
                    "display": "Community medicine"
                  }
                ],
                "text": "Same Day"
              }
            ],
            "actor": {
              "reference": "Practitioner/2578010",
              "display": "Snow, Jon"
            }
          },
          "search": {
            "mode": "include"
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Schedule/21265426-633867-3121785-0",
          "resource": {
            "resourceType": "Schedule",
            "id": "21265426-633867-3121785-0",
            "text": {
              "status": "extensions",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Schedule&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Same Day&lt;/p&gt;&lt;p&gt;&lt;b&gt;Practitioner&lt;/b&gt;: Snow, Jon&lt;/p&gt;&lt;p&gt;&lt;b&gt;Location&lt;/b&gt;: Baseline West&lt;/p&gt;&lt;/div&gt;"
            },
            "extension": [
              {
                "url": "https://fhir-ehr.cerner.com/dstu2/StructureDefinition/scheduling-location",
                "valueReference": {
                  "reference": "Location/633867",
                  "display": "Baseline West"
                }
              }
            ],
            "type": [
              {
                "coding": [
                  {
                    "system": "http://snomed.info/sct",
                    "code": "394581000",
                    "display": "Community medicine"
                  }
                ],
                "text": "Same Day"
              }
            ],
            "actor": {
              "reference": "Practitioner/2578010",
              "display": "Snow, Jon"
            }
          },
          "search": {
            "mode": "include"
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Schedule/21265426-4048128-3121785-5",
          "resource": {
            "resourceType": "Schedule",
            "id": "21265426-4048128-3121785-5",
            "text": {
              "status": "extensions",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Schedule&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Same Day&lt;/p&gt;&lt;p&gt;&lt;b&gt;Practitioner&lt;/b&gt;: Snow, Jon&lt;/p&gt;&lt;p&gt;&lt;b&gt;Location&lt;/b&gt;: Baseline East&lt;/p&gt;&lt;/div&gt;"
            },
            "extension": [
              {
                "url": "https://fhir-ehr.cerner.com/dstu2/StructureDefinition/scheduling-location",
                "valueReference": {
                  "reference": "Location/4048128",
                  "display": "Baseline East"
                }
              }
            ],
            "type": [
              {
                "coding": [
                  {
                    "system": "http://snomed.info/sct",
                    "code": "394581000",
                    "display": "Community medicine"
                  }
                ],
                "text": "Same Day"
              }
            ],
            "actor": {
              "reference": "Practitioner/2578010",
              "display": "Snow, Jon"
            }
          },
          "search": {
            "mode": "include"
          }
        }
      ]
    }

  end
end
