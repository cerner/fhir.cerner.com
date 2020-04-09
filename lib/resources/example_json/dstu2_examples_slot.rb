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
    "id": "3660d82e-9d9c-4059-900f-a43ec893e02a",
    "type": "searchset",
    "link": [
      {
        "relation": "self",
        "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Slot?slot-type=http%3A%2F%2Fsnomed.info%2Fsct%7C408443003&schedule.actor=Practitioner%2F2578010&start=2019&_count=5"
      },
      {
        "relation": "next",
        "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Slot?-pageContext=8676dea6-9944-42e8-bd79-0deaafd16d06&-pageDirection=NEXT"
      }
    ],
    "entry": [
      {
        "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Slot/21265426-4048128-7759739-0",
        "resource": {
          "resourceType": "Slot",
          "id": "21265426-4048128-7759739-0",
          "meta": {
            "versionId": "0",
            "lastUpdated": "2019-09-03T19:32:41.000Z"
          },
          "text": {
            "status": "generated",
            "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Slot&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Same Day&lt;/p&gt;&lt;p&gt;&lt;b&gt;Start&lt;/b&gt;: Jan  1, 2019  2:00 P.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;End&lt;/b&gt;: Jan  1, 2019  3:00 P.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;ScheduleReference&lt;/b&gt;: 21265426-4048128-7759739-0&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Free&lt;/p&gt;&lt;/div&gt;"
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
                "code": "408443003",
                "display": "General medical practice",
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
            "reference": "Schedule/21265426-4048128-7759739-0"
          },
          "freeBusyType": "free",
          "start": "2019-01-01T14:00:00.000Z",
          "end": "2019-01-01T15:00:00.000Z"
        },
        "search": {
          "mode": "match"
        }
      },
      {
        "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Slot/21265426-633867-7759739-0",
        "resource": {
          "resourceType": "Slot",
          "id": "21265426-633867-7759739-0",
          "meta": {
            "versionId": "0",
            "lastUpdated": "2019-09-03T19:32:41.000Z"
          },
          "text": {
            "status": "generated",
            "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Slot&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Same Day&lt;/p&gt;&lt;p&gt;&lt;b&gt;Start&lt;/b&gt;: Jan  1, 2019  2:00 P.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;End&lt;/b&gt;: Jan  1, 2019  3:00 P.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;ScheduleReference&lt;/b&gt;: 21265426-633867-7759739-0&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Free&lt;/p&gt;&lt;/div&gt;"
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
                "code": "408443003",
                "display": "General medical practice",
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
            "reference": "Schedule/21265426-633867-7759739-0"
          },
          "freeBusyType": "free",
          "start": "2019-01-01T14:00:00.000Z",
          "end": "2019-01-01T15:00:00.000Z"
        },
        "search": {
          "mode": "match"
        }
      },
      {
        "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Slot/21265426-4048128-7759739-5",
        "resource": {
          "resourceType": "Slot",
          "id": "21265426-4048128-7759739-5",
          "meta": {
            "versionId": "0",
            "lastUpdated": "2019-09-03T19:32:41.000Z"
          },
          "text": {
            "status": "generated",
            "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Slot&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Same Day&lt;/p&gt;&lt;p&gt;&lt;b&gt;Start&lt;/b&gt;: Jan  1, 2019  2:05 P.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;End&lt;/b&gt;: Jan  1, 2019  3:05 P.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;ScheduleReference&lt;/b&gt;: 21265426-4048128-7759739-5&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Free&lt;/p&gt;&lt;/div&gt;"
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
                "code": "408443003",
                "display": "General medical practice",
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
            "reference": "Schedule/21265426-4048128-7759739-5"
          },
          "freeBusyType": "free",
          "start": "2019-01-01T14:05:00.000Z",
          "end": "2019-01-01T15:05:00.000Z"
        },
        "search": {
          "mode": "match"
        }
      },
      {
        "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Slot/21265426-633867-7759739-5",
        "resource": {
          "resourceType": "Slot",
          "id": "21265426-633867-7759739-5",
          "meta": {
            "versionId": "0",
            "lastUpdated": "2019-09-03T19:32:41.000Z"
          },
          "text": {
            "status": "generated",
            "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Slot&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Same Day&lt;/p&gt;&lt;p&gt;&lt;b&gt;Start&lt;/b&gt;: Jan  1, 2019  2:05 P.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;End&lt;/b&gt;: Jan  1, 2019  3:05 P.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;ScheduleReference&lt;/b&gt;: 21265426-633867-7759739-5&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Free&lt;/p&gt;&lt;/div&gt;"
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
                "code": "408443003",
                "display": "General medical practice",
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
            "reference": "Schedule/21265426-633867-7759739-5"
          },
          "freeBusyType": "free",
          "start": "2019-01-01T14:05:00.000Z",
          "end": "2019-01-01T15:05:00.000Z"
        },
        "search": {
          "mode": "match"
        }
      },
      {
        "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Slot/21265426-4048128-7759739-10",
        "resource": {
          "resourceType": "Slot",
          "id": "21265426-4048128-7759739-10",
          "meta": {
            "versionId": "0",
            "lastUpdated": "2019-09-03T19:32:41.000Z"
          },
          "text": {
            "status": "generated",
            "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Slot&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Same Day&lt;/p&gt;&lt;p&gt;&lt;b&gt;Start&lt;/b&gt;: Jan  1, 2019  2:10 P.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;End&lt;/b&gt;: Jan  1, 2019  3:10 P.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;ScheduleReference&lt;/b&gt;: 21265426-4048128-7759739-10&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Free&lt;/p&gt;&lt;/div&gt;"
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
                "code": "408443003",
                "display": "General medical practice",
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
            "reference": "Schedule/21265426-4048128-7759739-10"
          },
          "freeBusyType": "free",
          "start": "2019-01-01T14:10:00.000Z",
          "end": "2019-01-01T15:10:00.000Z"
        },
        "search": {
          "mode": "match"
        }
      }
    ]
  }

  DSTU2_SLOT_BUNDLE_INCLUDE_SCHEDULE ||= {
    "resourceType": "Bundle",
    "id": "009b7705-a9e7-4504-8726-732263eaa015",
    "type": "searchset",
    "link": [
      {
        "relation": "self",
        "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Slot?slot-type=http%3A%2F%2Fsnomed.info%2Fsct%7C408443003&schedule.actor=Practitioner%2F2578010&start=2019&_include=Slot%3Aschedule&_count=5"
      },
      {
        "relation": "next",
        "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Slot?_include=Slot%3Aschedule&-pageContext=77c5e8be-9be4-497d-9e96-7516f237c138&-pageDirection=NEXT"
      }
    ],
    "entry": [
      {
        "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Slot/21265426-4048128-7759739-0",
        "resource": {
          "resourceType": "Slot",
          "id": "21265426-4048128-7759739-0",
          "meta": {
            "versionId": "0",
            "lastUpdated": "2019-09-03T19:32:41.000Z"
          },
          "text": {
            "status": "generated",
            "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Slot&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Same Day&lt;/p&gt;&lt;p&gt;&lt;b&gt;Start&lt;/b&gt;: Jan  1, 2019  2:00 P.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;End&lt;/b&gt;: Jan  1, 2019  3:00 P.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;ScheduleReference&lt;/b&gt;: 21265426-4048128-7759739-0&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Free&lt;/p&gt;&lt;/div&gt;"
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
                "code": "408443003",
                "display": "General medical practice",
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
            "reference": "Schedule/21265426-4048128-7759739-0"
          },
          "freeBusyType": "free",
          "start": "2019-01-01T14:00:00.000Z",
          "end": "2019-01-01T15:00:00.000Z"
        },
        "search": {
          "mode": "match"
        }
      },
      {
        "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Slot/21265426-633867-7759739-0",
        "resource": {
          "resourceType": "Slot",
          "id": "21265426-633867-7759739-0",
          "meta": {
            "versionId": "0",
            "lastUpdated": "2019-09-03T19:32:41.000Z"
          },
          "text": {
            "status": "generated",
            "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Slot&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Same Day&lt;/p&gt;&lt;p&gt;&lt;b&gt;Start&lt;/b&gt;: Jan  1, 2019  2:00 P.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;End&lt;/b&gt;: Jan  1, 2019  3:00 P.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;ScheduleReference&lt;/b&gt;: 21265426-633867-7759739-0&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Free&lt;/p&gt;&lt;/div&gt;"
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
                "code": "408443003",
                "display": "General medical practice",
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
            "reference": "Schedule/21265426-633867-7759739-0"
          },
          "freeBusyType": "free",
          "start": "2019-01-01T14:00:00.000Z",
          "end": "2019-01-01T15:00:00.000Z"
        },
        "search": {
          "mode": "match"
        }
      },
      {
        "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Slot/21265426-4048128-7759739-5",
        "resource": {
          "resourceType": "Slot",
          "id": "21265426-4048128-7759739-5",
          "meta": {
            "versionId": "0",
            "lastUpdated": "2019-09-03T19:32:41.000Z"
          },
          "text": {
            "status": "generated",
            "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Slot&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Same Day&lt;/p&gt;&lt;p&gt;&lt;b&gt;Start&lt;/b&gt;: Jan  1, 2019  2:05 P.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;End&lt;/b&gt;: Jan  1, 2019  3:05 P.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;ScheduleReference&lt;/b&gt;: 21265426-4048128-7759739-5&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Free&lt;/p&gt;&lt;/div&gt;"
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
                "code": "408443003",
                "display": "General medical practice",
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
            "reference": "Schedule/21265426-4048128-7759739-5"
          },
          "freeBusyType": "free",
          "start": "2019-01-01T14:05:00.000Z",
          "end": "2019-01-01T15:05:00.000Z"
        },
        "search": {
          "mode": "match"
        }
      },
      {
        "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Slot/21265426-633867-7759739-5",
        "resource": {
          "resourceType": "Slot",
          "id": "21265426-633867-7759739-5",
          "meta": {
            "versionId": "0",
            "lastUpdated": "2019-09-03T19:32:41.000Z"
          },
          "text": {
            "status": "generated",
            "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Slot&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Same Day&lt;/p&gt;&lt;p&gt;&lt;b&gt;Start&lt;/b&gt;: Jan  1, 2019  2:05 P.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;End&lt;/b&gt;: Jan  1, 2019  3:05 P.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;ScheduleReference&lt;/b&gt;: 21265426-633867-7759739-5&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Free&lt;/p&gt;&lt;/div&gt;"
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
                "code": "408443003",
                "display": "General medical practice",
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
            "reference": "Schedule/21265426-633867-7759739-5"
          },
          "freeBusyType": "free",
          "start": "2019-01-01T14:05:00.000Z",
          "end": "2019-01-01T15:05:00.000Z"
        },
        "search": {
          "mode": "match"
        }
      },
      {
        "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Slot/21265426-4048128-7759739-10",
        "resource": {
          "resourceType": "Slot",
          "id": "21265426-4048128-7759739-10",
          "meta": {
            "versionId": "0",
            "lastUpdated": "2019-09-03T19:32:41.000Z"
          },
          "text": {
            "status": "generated",
            "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Slot&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Same Day&lt;/p&gt;&lt;p&gt;&lt;b&gt;Start&lt;/b&gt;: Jan  1, 2019  2:10 P.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;End&lt;/b&gt;: Jan  1, 2019  3:10 P.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;ScheduleReference&lt;/b&gt;: 21265426-4048128-7759739-10&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Free&lt;/p&gt;&lt;/div&gt;"
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
                "code": "408443003",
                "display": "General medical practice",
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
            "reference": "Schedule/21265426-4048128-7759739-10"
          },
          "freeBusyType": "free",
          "start": "2019-01-01T14:10:00.000Z",
          "end": "2019-01-01T15:10:00.000Z"
        },
        "search": {
          "mode": "match"
        }
      },
      {
        "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Schedule/21265426-4048128-7759739-0",
        "resource": {
          "resourceType": "Schedule",
          "id": "21265426-4048128-7759739-0",
          "text": {
            "status": "extensions",
            "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Schedule&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Same Day&lt;/p&gt;&lt;p&gt;&lt;b&gt;Practitioner&lt;/b&gt;: Howdeshell, Tami&lt;/p&gt;&lt;p&gt;&lt;b&gt;Location&lt;/b&gt;: Baseline East&lt;/p&gt;&lt;/div&gt;"
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
                  "code": "408443003",
                  "display": "General medical practice"
                }
              ],
              "text": "Same Day"
            }
          ],
          "actor": {
            "reference": "Practitioner/2578010",
            "display": "Howdeshell, Tami"
          }
        },
        "search": {
          "mode": "include"
        }
      },
      {
        "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Schedule/21265426-633867-7759739-0",
        "resource": {
          "resourceType": "Schedule",
          "id": "21265426-633867-7759739-0",
          "text": {
            "status": "extensions",
            "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Schedule&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Same Day&lt;/p&gt;&lt;p&gt;&lt;b&gt;Practitioner&lt;/b&gt;: Howdeshell, Tami&lt;/p&gt;&lt;p&gt;&lt;b&gt;Location&lt;/b&gt;: Baseline West&lt;/p&gt;&lt;/div&gt;"
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
                  "code": "408443003",
                  "display": "General medical practice"
                }
              ],
              "text": "Same Day"
            }
          ],
          "actor": {
            "reference": "Practitioner/2578010",
            "display": "Howdeshell, Tami"
          }
        },
        "search": {
          "mode": "include"
        }
      },
      {
        "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Schedule/21265426-4048128-7759739-5",
        "resource": {
          "resourceType": "Schedule",
          "id": "21265426-4048128-7759739-5",
          "text": {
            "status": "extensions",
            "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Schedule&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Same Day&lt;/p&gt;&lt;p&gt;&lt;b&gt;Practitioner&lt;/b&gt;: Howdeshell, Tami&lt;/p&gt;&lt;p&gt;&lt;b&gt;Location&lt;/b&gt;: Baseline East&lt;/p&gt;&lt;/div&gt;"
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
                  "code": "408443003",
                  "display": "General medical practice"
                }
              ],
              "text": "Same Day"
            }
          ],
          "actor": {
            "reference": "Practitioner/2578010",
            "display": "Howdeshell, Tami"
          }
        },
        "search": {
          "mode": "include"
        }
      },
      {
        "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Schedule/21265426-633867-7759739-5",
        "resource": {
          "resourceType": "Schedule",
          "id": "21265426-633867-7759739-5",
          "text": {
            "status": "extensions",
            "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Schedule&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Same Day&lt;/p&gt;&lt;p&gt;&lt;b&gt;Practitioner&lt;/b&gt;: Howdeshell, Tami&lt;/p&gt;&lt;p&gt;&lt;b&gt;Location&lt;/b&gt;: Baseline West&lt;/p&gt;&lt;/div&gt;"
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
                  "code": "408443003",
                  "display": "General medical practice"
                }
              ],
              "text": "Same Day"
            }
          ],
          "actor": {
            "reference": "Practitioner/2578010",
            "display": "Howdeshell, Tami"
          }
        },
        "search": {
          "mode": "include"
        }
      },
      {
        "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Schedule/21265426-4048128-7759739-10",
        "resource": {
          "resourceType": "Schedule",
          "id": "21265426-4048128-7759739-10",
          "text": {
            "status": "extensions",
            "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Schedule&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Same Day&lt;/p&gt;&lt;p&gt;&lt;b&gt;Practitioner&lt;/b&gt;: Howdeshell, Tami&lt;/p&gt;&lt;p&gt;&lt;b&gt;Location&lt;/b&gt;: Baseline East&lt;/p&gt;&lt;/div&gt;"
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
                  "code": "408443003",
                  "display": "General medical practice"
                }
              ],
              "text": "Same Day"
            }
          ],
          "actor": {
            "reference": "Practitioner/2578010",
            "display": "Howdeshell, Tami"
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
