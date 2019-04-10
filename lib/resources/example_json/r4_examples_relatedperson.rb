module Cerner
    module Resources
  
      R4_RELATEDPERSON_ENTRY ||= {
        "id": "1316024-1860008",
        "resourceType": "RelatedPerson",
        "meta": {
            "versionId": 101,
            "lastUpdated": "2019-03-08T17:45:18.000Z"
        },
        "text": {
            "status": "generated",
            "div": "&lt;div>&lt;p>&lt;b>Related Person&lt;/b>&lt;/p>&lt;p>&lt;b>Name&lt;/b>: PETERS, TIMOTHY CCCC&lt;/p>&lt;p>&lt;b>DOB&lt;/b>: Apr 29, 1961&lt;/p>&lt;p>&lt;b>Gender&lt;/b>: male&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: Peters, John&lt;/p>&lt;p>&lt;b>Relationship&lt;/b>: Family Member&lt;/p>&lt;/div>"
        },
        "identifier": [
            {
            "use": "usual",
            "type": {
                "coding": [
                {
                    "system": "https://fhir.cerner.com/2c400054-42d8-4e74-87b7-80b5bd5fde9f/codeSet/4",
                    "code": "80979357",
                    "display": "Federated Person Principal",
                    "userSelected": true
                },
                {
                    "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
                    "code": "AN",
                    "display": "Account number",
                    "userSelected": false
                }
                ],
                "text": "Federated Person Principal"
            },
            "value": "USR1316024",
            "period": {
                "start": "2018-02-21T14:58:54.000Z"
            }
            },
            {
            "use": "usual",
            "type": {
                "coding": [
                {
                    "system": "https://fhir.cerner.com/2c400054-42d8-4e74-87b7-80b5bd5fde9f/codeSet/4",
                    "code": "80979357",
                    "display": "Federated Person Principal",
                    "userSelected": true
                },
                {
                    "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
                    "code": "AN",
                    "display": "Account number",
                    "userSelected": false
                }
                ],
                "text": "Federated Person Principal"
            },
            "system": "urn:ietf:rfc:3986",
            "value": "NEW-ALIAS-100@CERNER.COM",
            "period": {
                "start": "2016-01-02T05:00:00.000Z",
                "end": "2016-01-03T05:00:00.000Z"
            }
            }
        ],
        "active": true,
        "patient": {
            "reference": "Patient/1860008",
            "display": "Peters, John"
        },
        "relationship": [
            {
            "coding": [
                {
                "system": "https://fhir.cerner.com/2c400054-42d8-4e74-87b7-80b5bd5fde9f/codeSet/351",
                "code": "1153",
                "display": "Family Member",
                "userSelected": true
                }
            ],
            "text": "Family Member"
            }
        ],
        "name": {
            "use": "official",
            "text": "PETERS, TIMOTHY CCCC",
            "family": "PETERS",
            "given": "TIMOTHY",
            "period": {
            "start": "2012-05-17T14:54:31.000Z"
            }
        },
        "telecom": [
            {
            "system": "Phone",
            "value": "913-444-8880",
            "use": "Business",
            "period": {
                "start": "2018-01-05T22:24:32.000Z"
            }
            },
            {
            "system": "Phone",
            "value": "8168229121",
            "use": "Home",
            "period": {
                "start": "2012-05-17T15:33:18.000Z"
            }
            }
        ],
        "gender": "male",
        "birthDate": "1961-04-29",
        "address": [
            {
            "text": "9430 Blue Ridge Blvd\nKansas City, MO 64199\nUSA",
            "line": [
                "9430 Blue Ridge Blvd"
            ],
            "city": "Kansas City",
            "district": "Jackson",
            "state": "MO",
            "postalCode": "64199",
            "country": "USA",
            "period": {
                "start": "2012-05-17T15:33:18.000Z"
            }
            }
        ],
        "communication": {
            "preferred": "true",
            "language": {
            "coding": [
                {
                "system": "https://fhir.cerner.com/2c400054-42d8-4e74-87b7-80b5bd5fde9f/codeSet/36",
                "code": "151",
                "display": "English",
                "userSelected": true
                },
                {
                "system": "urn:ietf:bcp:47",
                "code": "en",
                "display": "English",
                "userSelected": false
                }
            ],
            "text": "English"
            }
        }
    }
        
      R4_RELATEDPERSON_BUNDLE ||= {
        "id": "e8274221-8809-4f7a-ba44-dc4ac55a5318",
        "resourceType": "Bundle",
        "type": "searchset",
        "total": 1,
        "link": [
            {
            "relation": "self",
            "url": "http://localhost:3000/r4/2c400054-42d8-4e74-87b7-80b5bd5fde9f/RelatedPerson?patient=1860008"
            }
        ],
        "entry": [
            {
            "fullUrl": "http://localhost:3000/r4/2c400054-42d8-4e74-87b7-80b5bd5fde9f/RelatedPerson/1316024-1860008",
            "resource": {
                "resourceType": "RelatedPerson",
                "id": "1316024-1860008",
                "meta": {
                "versionId": 101,
                "lastUpdated": "2019-03-08T17:45:18.000Z"
                },
                "text": {
                "status": "generated",
                "div": "&lt;div>&lt;p>&lt;b>Related Person&lt;/b>&lt;/p>&lt;p>&lt;b>Name&lt;/b>: PETERS, TIMOTHY CCCC&lt;/p>&lt;p>&lt;b>DOB&lt;/b>: Apr 29, 1961&lt;/p>&lt;p>&lt;b>Gender&lt;/b>: male&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: Peters, John&lt;/p>&lt;p>&lt;b>Relationship&lt;/b>: Family Member&lt;/p>&lt;/div>"
                },
                "identifier": [
                {
                    "use": "usual",
                    "type": {
                    "coding": [
                        {
                        "system": "https://fhir.cerner.com/2c400054-42d8-4e74-87b7-80b5bd5fde9f/codeSet/4",
                        "code": "80979357",
                        "display": "Federated Person Principal",
                        "userSelected": true
                        },
                        {
                        "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
                        "code": "AN",
                        "display": "Account number",
                        "userSelected": false
                        }
                    ],
                    "text": "Federated Person Principal"
                    },
                    "value": "USR1316024",
                    "period": {
                    "start": "2018-02-21T14:58:54.000Z"
                    }
                },
                {
                    "use": "usual",
                    "type": {
                    "coding": [
                        {
                        "system": "https://fhir.cerner.com/2c400054-42d8-4e74-87b7-80b5bd5fde9f/codeSet/4",
                        "code": "80979357",
                        "display": "Federated Person Principal",
                        "userSelected": true
                        },
                        {
                        "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
                        "code": "AN",
                        "display": "Account number",
                        "userSelected": false
                        }
                    ],
                    "text": "Federated Person Principal"
                    },
                    "system": "urn:ietf:rfc:3986",
                    "value": "NEW-ALIAS-1-SADIF@CERNER.COM",
                    "period": {
                    "start": "2016-01-02T05:00:00.000Z",
                    "end": "2020-01-25T05:00:00.000Z"
                    }
                }
                ],
                "active": true,
                "patient": {
                "reference": "Patient/1860008",
                "display": "Peters, John"
                },
                "relationship": [
                {
                    "coding": [
                    {
                        "system": "https://fhir.cerner.com/2c400054-42d8-4e74-87b7-80b5bd5fde9f/codeSet/351",
                        "code": "1153",
                        "display": "Family Member",
                        "userSelected": true
                    }
                    ],
                    "text": "Family Member"
                }
                ],
                "name": {
                "use": "official",
                "text": "PETERS, TIMOTHY CCCC",
                "family": "PETERS",
                "given": "TIMOTHY",
                "period": {
                    "start": "2012-05-17T14:54:31.000Z"
                }
                },
                "telecom": [
                {
                    "system": "Phone",
                    "value": "913-444-8880",
                    "use": "Business",
                    "period": {
                    "start": "2018-01-05T22:24:32.000Z"
                    }
                },
                {
                    "system": "Phone",
                    "value": "8168229121",
                    "use": "Home",
                    "period": {
                    "start": "2012-05-17T15:33:18.000Z"
                    }
                }
                ],
                "gender": "male",
                "birthDate": "1961-04-29",
                "address": [
                {
                    "text": "9430 Blue Ridge Blvd\nKansas City, MO 64199\nUSA",
                    "line": [
                    "9430 Blue Ridge Blvd"
                    ],
                    "city": "Kansas City",
                    "district": "Jackson",
                    "state": "MO",
                    "postalCode": "64199",
                    "country": "USA",
                    "period": {
                    "start": "2012-05-17T15:33:18.000Z"
                    }
                }
                ],
                "communication": {
                "preferred": "true",
                "language": {
                    "coding": [
                    {
                        "system": "https://fhir.cerner.com/2c400054-42d8-4e74-87b7-80b5bd5fde9f/codeSet/36",
                        "code": "151",
                        "display": "English",
                        "userSelected": true
                    },
                    {
                        "system": "urn:ietf:bcp:47",
                        "code": "en",
                        "display": "English",
                        "userSelected": false
                    }
                    ],
                    "text": "English"
                }
                }
            }
            }
        ]
    }
    end
  end
  