module Cerner
  module Resources

    DSTU2_SCHEDULE_ENTRY ||= {
        "resourceType": "Schedule",
        "id": "166627791-4048128-9331486-0",
        "text": {
            "status": "generated",
            "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Schedule&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Unscheduled walkins&lt;/p&gt;&lt;p&gt;&lt;b&gt;Practitioner&lt;/b&gt;: Hall, Mark&lt;/p&gt;&lt;p&gt;&lt;b&gt;Location&lt;/b&gt;: Baseline East&lt;/p&gt;&lt;/div&gt;"
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
                "text": "Unscheduled walkins"
            }
        ],
        "actor": {
            "reference": "Practitioner/23151427",
            "display": "Hall, Mark"
        }
    }

    DSTU2_SCHEDULE_BUNDLE ||= {
        "resourceType": "Bundle",
        "id": "d2399ae0-2462-45d9-a598-5530ced9aab6",
        "type": "searchset",
        "total": 1,
        "link": [
            {
                "relation": "self",
                "url": "https://fhir-open.devcernerpowerchart.com/dstu2/2c400054-42d8-4e74-87b7-80b5bd5fde9f/Schedule?_id=166627791-4048128-9331486-0"
            }
        ],
        "entry": [
            {
                "fullUrl": "https://fhir-open.devcernerpowerchart.com/dstu2/2c400054-42d8-4e74-87b7-80b5bd5fde9f/Schedule/166627791-4048128-9331486-0",
                "resource": {
                    "resourceType": "Schedule",
                    "id": "166627791-4048128-9331486-0",
                    "text": {
                        "status": "generated",
                        "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Schedule&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Unscheduled walkins&lt;/p&gt;&lt;p&gt;&lt;b&gt;Practitioner&lt;/b&gt;: Hall, Mark&lt;/p&gt;&lt;p&gt;&lt;b&gt;Location&lt;/b&gt;: Baseline East&lt;/p&gt;&lt;/div&gt;"
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
                            "text": "Unscheduled walkins"
                        }
                    ],
                    "actor": {
                        "reference": "Practitioner/23151427",
                        "display": "Hall, Mark"
                    }
                }
            }
        ]
    }

  end
end
