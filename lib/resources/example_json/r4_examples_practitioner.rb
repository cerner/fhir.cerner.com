module Cerner
  module Resources

    R4_PRACTITIONER_ENTRY ||= {
        "resourceType": "Practitioner",
        "id": "4122622",
        "meta": {
            "versionId": "18",
            "lastUpdated": "2016-04-28T15:01:59.000Z"
        },
        "text": {
            "status": "generated",
            "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Practitioner</b></p><p><b>Name</b>: Cerner Test, Physician - Hospitalist Cerner</p><p><b>Identifiers</b>: MESSAGING: 4122622, EXTERNALID: CERNERPHYSHOSP, NPI: 1111111111</p><p><b>Status</b>: Active</p></div>"
        },
        "identifier": [
            {
                "use": "usual",
                "type": {
                    "coding": [
                        {
                            "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
                            "code": "U",
                            "display": "Unspecified identifier"
                        }
                    ],
                    "text": "Messaging"
                },
                "_system": {
                    "extension": [
                        {
                            "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
                            "valueCode": "unknown"
                        }
                    ]
                },
                "value": "4122622",
                "period": {
                    "start": "2015-08-18T05:00:00.000Z"
                }
            },
            {
                "use": "usual",
                "type": {
                    "text": "External Identifier"
                },
                "_system": {
                    "extension": [
                        {
                            "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
                            "valueCode": "unknown"
                        }
                    ]
                },
                "value": "CERNERPHYSHOSP",
                "period": {
                    "start": "2016-04-28T15:01:59.000Z"
                }
            },
            {
                "use": "usual",
                "type": {
                    "coding": [
                        {
                            "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
                            "code": "NPI",
                            "display": "National provider identifier"
                        }
                    ],
                    "text": "National Provider Identifier"
                },
                "_system": {
                    "extension": [
                        {
                            "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
                            "valueCode": "unknown"
                        }
                    ]
                },
                "value": "1111111111",
                "period": {
                    "start": "2015-10-14T05:00:00.000Z"
                }
            }
        ],
        "active": true,
        "name": [
            {
                "use": "usual",
                "text": "Cerner Test, Physician - Hospitalist Cerner",
                "family": "Cerner Test",
                "given": [
                    "Physician - Hospitalist",
                    "Cerner"
                ],
                "period": {
                    "start": "2016-04-28T15:01:59.000Z"
                }
            }
        ]
    }

    R4_PRACTITIONER_BUNDLE ||= {
        "resourceType": "Bundle",
        "id": "129834f7-c7d2-4d34-b247-97ebb3e42b4d",
        "type": "searchset",
        "total": 1,
        "link": [
            {
                "relation": "self",
                "url": "https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Practitioner?_id=4122622"
            }
        ],
        "entry": [
            {
                "fullUrl": "https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Practitioner/4122622",
                "resource": R4_PRACTITIONER_ENTRY
            }
        ]
    }

    R4_PRACTITIONER_CREATE ||= {
      "resourceType": "Practitioner",
      "active": true,
      "name": [
        {
          "family": "Williams",
          "given": [
            "Rory", "James"
          ],
          "prefix": [
            "Dr."
          ],
          "suffix": [
            "M.D."
          ],
          "period": {
          	"start": "2019-12-01T00:00:00.000Z"
          }
        }
      ],
      "identifier": [
        {
          "type": {
            "coding": [
              {
                "code": "DEA",
                "system": "http://terminology.hl7.org/CodeSystem/v2-0203"
              }
            ]
          },
          "system": "urn:oid:2.16.840.1.113883.4.814",
          "value": "CW1234563",
          "period": {
            "start": "2019-12-01T00:00:00.000Z",
            "end": "2029-12-01T23:59:59.000Z"
          }
        }
      ]
    }

  end
end
