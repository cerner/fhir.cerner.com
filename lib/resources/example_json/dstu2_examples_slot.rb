module Cerner
  module Resources

    DSTU2_SLOT_ENTRY ||= {
        "resourceType": "Slot",
        "id": "166627791-4048128-9331486-0",
        "meta": {
            "versionId": "1",
            "lastUpdated": "2017-07-07T12:40:56.000-05:00"
        },
        "text": {
            "status": "generated",
            "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Slot&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Unscheduled walkins&lt;/p&gt;&lt;p&gt;&lt;b&gt;Start&lt;/b&gt;: 2017-06-28T08:00:00.000-05:00&lt;/p&gt;&lt;p&gt;&lt;b&gt;End&lt;/b&gt;: 2017-06-28T09:00:00.000-05:00&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Busy&lt;/p&gt;&lt;/div&gt;"
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
            "text": "Unscheduled walkins"
        },
        "schedule": {
            "reference": "Schedule/166627791-4048128-9331486-0"
        },
        "freeBusyType": "busy",
        "start": "2017-06-28T08:00:00.000-05:00",
        "end": "2017-06-28T09:00:00.000-05:00"
    }

    DSTU2_SLOT_BUNDLE ||= {
        "resourceType": "Bundle",
        "id": "130a16db-b509-4cda-b221-047f53384c1e",
        "type": "searchset",
        "total": 1,
        "link": [
            {
                "relation": "self",
                "url": "https://fhir-open.devcernerpowerchart.com/dstu2/2c400054-42d8-4e74-87b7-80b5bd5fde9f/Slot?_id=166627791-4048128-9331486-0"
            }
        ],
        "entry": [
            {
                "fullUrl": "https://fhir-open.devcernerpowerchart.com/dstu2/2c400054-42d8-4e74-87b7-80b5bd5fde9f/Slot/166627791-4048128-9331486-0",
                "resource": {
                    "resourceType": "Slot",
                    "id": "166627791-4048128-9331486-0",
                    "meta": {
                        "versionId": "1",
                        "lastUpdated": "2017-07-07T12:40:56.000-05:00"
                    },
                    "text": {
                        "status": "generated",
                        "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Slot&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Unscheduled walkins&lt;/p&gt;&lt;p&gt;&lt;b&gt;Start&lt;/b&gt;: 2017-06-28T08:00:00.000-05:00&lt;/p&gt;&lt;p&gt;&lt;b&gt;End&lt;/b&gt;: 2017-06-28T09:00:00.000-05:00&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Busy&lt;/p&gt;&lt;/div&gt;"
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
                        "text": "Unscheduled walkins"
                    },
                    "schedule": {
                        "reference": "Schedule/166627791-4048128-9331486-0"
                    },
                    "freeBusyType": "busy",
                    "start": "2017-06-28T08:00:00.000-05:00",
                    "end": "2017-06-28T09:00:00.000-05:00"
                }
            }
        ]
    }

  end
end
