module Cerner
  module Resources

    DSTU2_GOAL_BUNDLE ||= {
        "resourceType": "Bundle",
        "id": "d134ea4c-e069-498b-9810-d52eb4d5658e",
        "type": "searchset",
        "total": 5,
        "link": [{
            "relation": "self",
            "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Goal?patient=1045932"
        }],
        "entry": [{
            "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Goal/59563861",
            "resource": {
                "resourceType": "Goal",
                "id": "59563861",
                "meta": {
                    "versionId": "1485364022000",
                    "lastUpdated": "2017-01-25T17:07:02.000Z"
                },
                "text": {
                    "status": "generated",
                    "div": "&lt;div>&lt;p>&lt;b>Goal&lt;/b>&lt;/p>&lt;p>&lt;b>Subject&lt;/b>: TEST, LISA&lt;/p>&lt;p>&lt;b>Description&lt;/b>: A New Goal&lt;/p>&lt;p>&lt;b>Status&lt;/b>: In Progress&lt;/p>&lt;p>&lt;b>Start Date&lt;/b>: 2017-01-18&lt;/p>&lt;p>&lt;b>Target Date&lt;/b>: 2017-01-27&lt;/p>&lt;/div>"
                },
                "subject": {
                    "reference": "Patient/1045932",
                    "display": "TEST, LISA"
                },
                "startDate": "2017-01-18",
                "targetDate": "2017-01-27",
                "description": "A New Goal",
                "status": "in-progress",
                "statusDate": "2017-01-25"
            }
        }, {
            "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Goal/59563857",
            "resource": {
                "resourceType": "Goal",
                "id": "59563857",
                "meta": {
                    "versionId": "1485363963000",
                    "lastUpdated": "2017-01-25T17:06:03.000Z"
                },
                "text": {
                    "status": "generated",
                    "div": "&lt;div>&lt;p>&lt;b>Goal&lt;/b>&lt;/p>&lt;p>&lt;b>Subject&lt;/b>: TEST, LISA&lt;/p>&lt;p>&lt;b>Description&lt;/b>: asdf&lt;/p>&lt;p>&lt;b>Status&lt;/b>: In Progress&lt;/p>&lt;p>&lt;b>Start Date&lt;/b>: 2017-01-20&lt;/p>&lt;p>&lt;b>Target Date&lt;/b>: 2017-01-30&lt;/p>&lt;/div>"
                },
                "subject": {
                    "reference": "Patient/1045932",
                    "display": "TEST, LISA"
                },
                "startDate": "2017-01-20",
                "targetDate": "2017-01-30",
                "description": "asdf",
                "status": "in-progress",
                "statusDate": "2017-01-25"
            }
        }, {
            "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Goal/59563949",
            "resource": {
                "resourceType": "Goal",
                "id": "59563949",
                "meta": {
                    "versionId": "1485368838000",
                    "lastUpdated": "2017-01-25T18:27:18.000Z"
                },
                "text": {
                    "status": "generated",
                    "div": "&lt;div>&lt;p>&lt;b>Goal&lt;/b>&lt;/p>&lt;p>&lt;b>Subject&lt;/b>: TEST, LISA&lt;/p>&lt;p>&lt;b>Description&lt;/b>: A New Goal&lt;/p>&lt;p>&lt;b>Status&lt;/b>: In Progress&lt;/p>&lt;p>&lt;b>Start Date&lt;/b>: 2017-01-25&lt;/p>&lt;p>&lt;b>Target Date&lt;/b>: 2017-01-25&lt;/p>&lt;/div>"
                },
                "subject": {
                    "reference": "Patient/1045932",
                    "display": "TEST, LISA"
                },
                "startDate": "2017-01-25",
                "targetDate": "2017-01-25",
                "category": [{
                    "text": "Behavioral"
                }],
                "description": "A New Goal",
                "status": "in-progress",
                "statusDate": "2017-01-25"
            }
        }, {
            "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Goal/59563953",
            "resource": {
                "resourceType": "Goal",
                "id": "59563953",
                "meta": {
                    "versionId": "1485369827000",
                    "lastUpdated": "2017-01-25T18:43:47.000Z"
                },
                "text": {
                    "status": "generated",
                    "div": "&lt;div>&lt;p>&lt;b>Goal&lt;/b>&lt;/p>&lt;p>&lt;b>Subject&lt;/b>: TEST, LISA&lt;/p>&lt;p>&lt;b>Description&lt;/b>: A newer goal&lt;/p>&lt;p>&lt;b>Status&lt;/b>: In Progress&lt;/p>&lt;p>&lt;b>Start Date&lt;/b>: 2017-01-25&lt;/p>&lt;p>&lt;b>Target Date&lt;/b>: 2017-01-25&lt;/p>&lt;/div>"
                },
                "subject": {
                    "reference": "Patient/1045932",
                    "display": "TEST, LISA"
                },
                "startDate": "2017-01-25",
                "targetDate": "2017-01-25",
                "category": [{
                    "text": "Safety"
                }, {
                    "text": "Behavioral"
                }, {
                    "text": "Community"
                }, {
                    "text": "Physiologic"
                }, {
                    "text": "Family"
                }],
                "description": "A newer goal",
                "status": "in-progress",
                "statusDate": "2017-01-25"
            }
        }, {
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
