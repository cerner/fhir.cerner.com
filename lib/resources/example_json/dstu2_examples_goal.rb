module Cerner
  module Resources

    DSTU2_GOAL_BUNDLE ||= {
        "resourceType": "Bundle",
        "id": "5ecc9ee8-8a52-4676-a2c6-b8698d30e284",
        "type": "searchset",
        "total": 3,
        "link": [{
            "relation": "self",
            "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Goal?patient=685925"
        }],
        "entry": [{
            "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Goal/59475953",
            "resource": {
                "resourceType": "Goal",
                "id": "59475953",
                "meta": {
                    "versionId": "1485975664000",
                    "lastUpdated": "2017-02-01T19:01:04.000Z"
                },
                "text": {
                    "status": "generated",
                    "div": "&lt;div>&lt;p>&lt;b>Goal&lt;/b>&lt;/p>&lt;p>&lt;b>Subject&lt;/b>: Granger, Hermione&lt;/p>&lt;p>&lt;b>Description&lt;/b>: Test goal&lt;/p>&lt;p>&lt;b>Status&lt;/b>: In Progress&lt;/p>&lt;p>&lt;b>Start Date&lt;/b>: 2016-11-09&lt;/p>&lt;p>&lt;b>Target Date&lt;/b>: 2016-11-30&lt;/p>&lt;/div>"
                },
                "subject": {
                    "reference": "Patient/685925",
                    "display": "Granger, Hermione"
                },
                "startDate": "2016-11-09",
                "targetDate": "2016-11-30",
                "category": [{
                    "text": "Community"
                }],
                "description": "Test goal",
                "status": "in-progress",
                "statusDate": "2016-11-09",
                "note": [{
                    "authorReference": {
                        "reference": "Practitioner/4594024",
                        "display": "Pomfrey, Poppy"
                    },
                    "time": "2017-02-01T19:01:04.000Z",
                    "text": "Test comment for the goal \"Test goal\""
                }]
            }
        }, {
            "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Goal/59535837",
            "resource": {
                "resourceType": "Goal",
                "id": "59535837",
                "meta": {
                    "versionId": "1482335249000",
                    "lastUpdated": "2016-12-21T15:47:29.000Z"
                },
                "text": {
                    "status": "generated",
                    "div": "&lt;div>&lt;p>&lt;b>Goal&lt;/b>&lt;/p>&lt;p>&lt;b>Subject&lt;/b>: Granger, Hermione&lt;/p>&lt;p>&lt;b>Description&lt;/b>: Met goal&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Achieved&lt;/p>&lt;p>&lt;b>Start Date&lt;/b>: 2016-12-13&lt;/p>&lt;p>&lt;b>Target Date&lt;/b>: 2016-12-23&lt;/p>&lt;/div>"
                },
                "subject": {
                    "reference": "Patient/685925",
                    "display": "Granger, Hermione"
                },
                "startDate": "2016-12-13",
                "targetDate": "2016-12-23",
                "category": [{
                    "text": "Community"
                }, {
                    "text": "Safety"
                }],
                "description": "Met goal",
                "status": "achieved",
                "statusDate": "2016-12-21"
            }
        }, {
            "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Goal/59535833",
            "resource": {
                "resourceType": "Goal",
                "id": "59535833",
                "meta": {
                    "versionId": "1485975696000",
                    "lastUpdated": "2017-02-01T19:01:36.000Z"
                },
                "text": {
                    "status": "generated",
                    "div": "&lt;div>&lt;p>&lt;b>Goal&lt;/b>&lt;/p>&lt;p>&lt;b>Subject&lt;/b>: Granger, Hermione&lt;/p>&lt;p>&lt;b>Description&lt;/b>: Test Goal without a target date&lt;/p>&lt;p>&lt;b>Author&lt;/b>: Granger, Hermione&lt;/p>&lt;p>&lt;b>Status&lt;/b>: In Progress&lt;/p>&lt;p>&lt;b>Start Date&lt;/b>: 2016-12-21&lt;/p>&lt;/div>"
                },
                "subject": {
                    "reference": "Patient/685925",
                    "display": "Granger, Hermione"
                },
                "startDate": "2016-12-21",
                "category": [{
                    "text": "Behavioral"
                }],
                "description": "Test Goal without a target date",
                "status": "in-progress",
                "statusDate": "2016-12-21",
                "author": {
                    "reference": "Patient/685925",
                    "display": "Granger, Hermione"
                },
                "note": [{
                    "authorReference": {
                        "reference": "Practitioner/4594024",
                        "display": "Pomfrey, Poppy"
                    },
                    "time": "2017-02-01T19:01:36.000Z",
                    "text": "This is a test. I repeat, this is only a test!"
                }]
            }
        }]
    }

    DSTU2_GOAL_BUNDLE_BY_ID ||= {
        "resourceType": "Bundle",
        "id": "5c7be2b1-79b7-4387-abde-df3ffc2247ba",
        "type": "searchset",
        "total": 1,
        "link": [{
            "relation": "self",
            "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Goal?_id=59563849"
        }],
        "entry": [{
            "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Goal/59563849",
            "resource": {
                "resourceType": "Goal",
                "id": "59563849",
                "meta": {
                    "versionId": "1485363855000",
                    "lastUpdated": "2017-01-25T17:04:15.000Z"
                },
                "text": {
                    "status": "generated",
                    "div": "&lt;div>&lt;p>&lt;b>Goal&lt;/b>&lt;/p>&lt;p>&lt;b>Subject&lt;/b>: TEST, LISA&lt;/p>&lt;p>&lt;b>Description&lt;/b>: A New Goal&lt;/p>&lt;p>&lt;b>Status&lt;/b>: In Progress&lt;/p>&lt;p>&lt;b>Start Date&lt;/b>: 2017-01-25&lt;/p>&lt;/div>"
                },
                "subject": {
                    "reference": "Patient/1045932",
                    "display": "TEST, LISA"
                },
                "startDate": "2017-01-25",
                "description": "A New Goal",
                "status": "in-progress",
                "statusDate": "2017-01-25"
            }
        }]
    }

    DSTU2_GOAL ||= {
        "resourceType": "Goal",
        "id": "59563849",
        "meta": {
            "versionId": "1485363855000",
            "lastUpdated": "2017-01-25T17:04:15.000Z"
        },
        "text": {
            "status": "generated",
            "div": "&lt;div>&lt;p>&lt;b>Goal&lt;/b>&lt;/p>&lt;p>&lt;b>Subject&lt;/b>: TEST, LISA&lt;/p>&lt;p>&lt;b>Description&lt;/b>: A New Goal&lt;/p>&lt;p>&lt;b>Status&lt;/b>: In Progress&lt;/p>&lt;p>&lt;b>Start Date&lt;/b>: 2017-01-25&lt;/p>&lt;/div>"
        },
        "subject": {
            "reference": "Patient/1045932",
            "display": "TEST, LISA"
        },
        "startDate": "2017-01-25",
        "description": "A New Goal",
        "status": "in-progress",
        "statusDate": "2017-01-25"
    }
  end
end
