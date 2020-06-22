module Cerner
    module Resources
  
      R4_COMBINED_PERSON_ENTRY ||= {
        "resourceType": "Person",
        "id": "971923",
        "meta": {
            "versionId": "0"
        },
        "text": {
            "status": "generated",
            "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\"&gt&lt;p&gt&lt;b&gtPerson&lt;/b&gt&lt;/p&gt&lt;p&gt&lt;b&gtStatus&lt;/b&gt: Inactive&lt;/p&gt&lt;p&gt&lt;b&gtLink&lt;/b&gt: Person/933924&lt;/p&gt&lt;/div&gt"
        },
        "active": false,
        "link": [
            {
                "target": {
                    "reference": "Person/933924"
                }
            }
        ]
    }
  
      R4_PERSON_ENTRY ||= {
        "resourceType": "Person",
        "id": "725944",
        "meta": {
            "versionId": "10",
            "lastUpdated": "2020-03-04T15:25:48.000Z"
        },
        "text": {
            "status": "generated",
            "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\"&gt&lt;p&gt&lt;b&gtPerson&lt;/b&gt&lt;/p&gt&lt;p&gt&lt;b&gtStatus&lt;/b&gt: Active&lt;/p&gt&lt;p&gt&lt;b&gtName&lt;/b&gt: SMITH, MORGAN&lt;/p&gt&lt;p&gt&lt;b&gtDOB&lt;/b&gt: Jan  1, 1970&lt;/p&gt&lt;p&gt&lt;b&gtAdministrative Gender&lt;/b&gt: Female&lt;/p&gt&lt;/div&gt"
        },
        "identifier": [
            {
                "id": "CI-1312161-0",
                "use": "usual",
                "type": {
                    "coding": [
                        {
                            "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/4",
                            "code": "10",
                            "display": "MRN",
                            "userSelected": true
                        },
                        {
                            "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
                            "code": "MR",
                            "display": "Medical record number",
                            "userSelected": false
                        }
                    ],
                    "text": "MRN"
                },
                "system": "urn:oid:1.1.1.1.1.1",
                "value": "10000057",
                "period": {
                    "start": "2007-03-07T17:56:56.000Z"
                }
            },
            {
                "id": "CI-858753-1",
                "use": "usual",
                "type": {
                    "coding": [
                        {
                            "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/4",
                            "code": "10",
                            "display": "MRN",
                            "userSelected": true
                        },
                        {
                            "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
                            "code": "MR",
                            "display": "Medical record number",
                            "userSelected": false
                        }
                    ],
                    "text": "MRN"
                },
                "value": "10000086",
                "period": {
                    "start": "2006-09-20T22:28:53.000Z"
                }
            }
        ],
        "name": [
            {
                "id": "CI-725944-0",
                "use": "official",
                "text": "SMITH, MORGAN",
                "family": "SMITH",
                "given": [
                    "MORGAN"
                ],
                "period": {
                    "start": "2006-09-20T21:55:51.000Z"
                }
            },
            {
                "id": "CI-17446991-0",
                "use": "official",
                "text": "lastName Jr., firstName middleName",
                "family": "lastName",
                "given": [
                    "firstName",
                    "middleName"
                ],
                "prefix": [
                    "Dr."
                ],
                "suffix": [
                    "Jr."
                ],
                "period": {
                    "start": "2014-01-20T15:48:39.000Z",
                    "end": "2014-03-20T15:48:39.000Z"
                }
            }
        ],
        "telecom": [
            {
                "id": "CI-PH-693923-0",
                "system": "phone",
                "value": "8168675234",
                "use": "home",
                "rank": "1",
                "period": {
                    "start": "2006-09-20T21:55:51.000Z"
                }
            }
        ],
        "gender": "female",
        "birthDate": "1970-01-01",
        "address": [
            {
                "id": "CI-717915-0",
                "use": "home",
                "text": "123 Sesame Street\nKansas City, MO 64112\nUSA",
                "line": [
                    "123 Sesame Street"
                ],
                "city": "Kansas City",
                "district": "Jackson",
                "state": "MO",
                "postalCode": "64112",
                "country": "USA",
                "period": {
                    "start": "2006-09-20T21:55:51.000Z"
                }
            }
        ],
        "active": true
        }
  
      R4_PERSON_BUNDLE ||= {
        "resourceType": "Bundle",
        "id": "d44e3941-2944-455f-b3d0-a34d3039e470",
        "type": "searchset",
        "link": [
            {
                "relation": "self",
                "url": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Person?identifier=urn%3Aoid%3A1.1.1.1.1.1%7C10000360"
            }
        ],
        "entry": [
            {
                "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Person/1316024",
                "resource": {
                    "resourceType": "Person",
                    "id": "1316024",
                    "meta": {
                        "versionId": "131",
                        "lastUpdated": "2020-05-19T13:07:12.000Z"
                    },
                    "text": {
                        "status": "generated",
                        "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\"&gt&lt;p&gt&lt;b&gtPerson&lt;/b&gt&lt;/p&gt&lt;p&gt&lt;b&gtStatus&lt;/b&gt: Active&lt;/p&gt&lt;p&gt&lt;b&gtName&lt;/b&gt: PETERS, TIMOTHY CCCC&lt;/p&gt&lt;p&gt&lt;b&gtDOB&lt;/b&gt: Apr 29, 1961&lt;/p&gt&lt;p&gt&lt;b&gtAdministrative Gender&lt;/b&gt: Male&lt;/p&gt&lt;/div&gt"
                    },
                    "identifier": [
                        {
                            "id": "CI-3541687-0",
                            "use": "usual",
                            "type": {
                                "coding": [
                                    {
                                        "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/4",
                                        "code": "2",
                                        "display": "Community Medical Record Number",
                                        "userSelected": true
                                    },
                                    {
                                        "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
                                        "code": "MR",
                                        "display": "Medical record number",
                                        "userSelected": false
                                    }
                                ],
                                "text": "Community Medical Record Number"
                            },
                            "value": "109759",
                            "period": {
                                "start": "2014-09-12T18:43:57.000Z"
                            }
                        },
                        {
                            "id": "CI-2542281-9",
                            "use": "usual",
                            "type": {
                                "coding": [
                                    {
                                        "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/4",
                                        "code": "10",
                                        "display": "MRN",
                                        "userSelected": true
                                    },
                                    {
                                        "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
                                        "code": "MR",
                                        "display": "Medical record number",
                                        "userSelected": false
                                    }
                                ],
                                "text": "MRN"
                            },
                            "system": "urn:oid:1.1.1.1.1.1",
                            "value": "10000360",
                            "period": {
                                "start": "2012-05-17T14:54:30.000Z"
                            }
                        }
                    ],
                    "telecom": [
                        {
                            "id": "CI-PH-10530189-0",
                            "system": "phone",
                            "value": "913-444-8880",
                            "use": "work",
                            "rank": "1",
                            "period": {
                                "start": "2018-01-05T22:24:32.000Z",
                                "end": "2019-04-03T06:15:00.000Z"
                            }
                        },
                        {
                            "id": "CI-PH-1093987-1",
                            "system": "phone",
                            "value": "8168229121",
                            "use": "home",
                            "rank": "1",
                            "period": {
                                "start": "2012-05-17T15:33:18.000Z",
                                "end": "2019-04-03T06:15:00.000Z"
                            }
                        },
                        {
                            "id": "CI-EM-38331446-0",
                            "system": "email",
                            "value": "test2email@test.com",
                            "use": "home",
                            "rank": "1",
                            "period": {
                                "start": "2020-05-19T13:09:23.000Z"
                            }
                        },
                        {
                            "id": "CI-EM-33085446-1",
                            "system": "email",
                            "value": "xyz1234@xyz.com",
                            "use": "home",
                            "rank": "1",
                            "period": {
                                "start": "2020-03-03T10:36:29.000Z",
                                "end": "2019-04-03T06:15:00.000Z"
                            }
                        }
                    ],
                    "gender": "male",
                    "birthDate": "1961-04-29",
                    "address": [
                        {
                            "id": "CI-1131934-0",
                            "use": "home",
                            "text": "9430 Blue Ridge Blvd\nKansas City, IN 64199\nUSA",
                            "line": [
                                "9430 Blue Ridge Blvd"
                            ],
                            "city": "Kansas City",
                            "district": "Jackson",
                            "state": "IN",
                            "postalCode": "64199",
                            "country": "USA",
                            "period": {
                                "start": "2012-05-17T15:33:18.000Z"
                            }
                        },
                        {
                            "id": "CI-32540545-1",
                            "use": "home",
                            "text": "1212 Faircastle Drive\nApartment 406\nOverland Park, KS 64199\nUSA",
                            "line": [
                                "1212 Faircastle Drive",
                                "Apartment 406"
                            ],
                            "city": "Overland Park",
                            "district": "Jackson",
                            "state": "KS",
                            "postalCode": "64199",
                            "country": "USA",
                            "period": {
                                "start": "2012-05-17T15:33:18.000Z"
                            }
                        }
                    ],
                    "active": true
                }
            }
        ]
    }
    end
  end
  