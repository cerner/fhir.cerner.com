# frozen_string_literal: true

module Cerner
  module Resources
    R4_LOCATION_BUNDLE ||= {
    "resourceType": "Bundle",
    "id": "902e1b49-b9c4-4786-b90b-c9612d478f2a",
    "type": "searchset",
    "link": [
        {
            "relation": "self",
            "url": "https://fhir-open.devcerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Location?_id=21250409"
        }
    ],
    "entry": [
        {
            "fullUrl": "https://fhir-open.devcerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Location/21250409",
            "resource": {
                "resourceType": "Location",
                "id": "21250409",
                "meta": {
                    "versionId": "6",
                    "lastUpdated": "2018-06-12T18:45:00Z"
                },
                "text": {
                    "status": "generated",
                    "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Location</b></p><p><b>Name</b>: BE 1 North</p><p><b>Alias</b>: BE 1N</p><p><b>Managing Organization</b>: Baseline East Medical Center</p><p><b>Part Of</b>: 21250403</p><p><b>Physical Type</b>: Facility(s)</p><p><b>Status</b>: Active</p></div>"
                },
                "status": "active",
                "name": "BE 1 North",
                "alias": [
                    "BE 1N"
                ],
                "mode": "instance",
                "address": {
                    "text": "Cerner H2 building\nLevel 4\nManyata embassy business park\nNagawara cicle\nBangalore, AA \nIreland",
                    "line": [
                        "Cerner H2 building",
                        "Level 4",
                        "Manyata embassy business park",
                        "Nagawara cicle"
                    ],
                    "city": "Bangalore",
                    "district": "Indian River",
                    "state": "AA",
                    "country": "Ireland"
                },
                "physicalType": {
                    "coding": [
                        {
                            "system": "https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/222",
                            "code": "783",
                            "display": "Facility(s)",
                            "userSelected": true
                        }
                    ],
                    "text": "Facility(s)"
                },
                "managingOrganization": {
                    "reference": "Organization/13971625",
                    "display": "Baseline East Medical Center"
                },
                "partOf": {
                    "reference": "Location/21250403"
                }
            }
        }
    ]
}.freeze

    R4_LOCATION_ENTRY ||= {
    "resourceType": "Bundle",
    "id": "902e1b49-b9c4-4786-b90b-c9612d478f2a",
    "type": "searchset",
    "link": [
        {
            "relation": "self",
            "url": "https://fhir-open.devcerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Location?_id=21250409"
        }
    ],
    "entry": [
        {
            "fullUrl": "https://fhir-open.devcerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Location/21250409",
            "resource": {
                "resourceType": "Location",
                "id": "21250409",
                "meta": {
                    "versionId": "6",
                    "lastUpdated": "2018-06-12T18:45:00Z"
                },
                "text": {
                    "status": "generated",
                    "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Location</b></p><p><b>Name</b>: BE 1 North</p><p><b>Alias</b>: BE 1N</p><p><b>Managing Organization</b>: Baseline East Medical Center</p><p><b>Part Of</b>: 21250403</p><p><b>Physical Type</b>: Facility(s)</p><p><b>Status</b>: Active</p></div>"
                },
                "status": "active",
                "name": "BE 1 North",
                "alias": [
                    "BE 1N"
                ],
                "mode": "instance",
                "address": {
                    "text": "Cerner H2 building\nLevel 4\nManyata embassy business park\nNagawara cicle\nBangalore, AA \nIreland",
                    "line": [
                        "Cerner H2 building",
                        "Level 4",
                        "Manyata embassy business park",
                        "Nagawara cicle"
                    ],
                    "city": "Bangalore",
                    "district": "Indian River",
                    "state": "AA",
                    "country": "Ireland"
                },
                "physicalType": {
                    "coding": [
                        {
                            "system": "https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/222",
                            "code": "783",
                            "display": "Facility(s)",
                            "userSelected": true
                        }
                    ],
                    "text": "Facility(s)"
                },
                "managingOrganization": {
                    "reference": "Organization/13971625",
                    "display": "Baseline East Medical Center"
                },
                "partOf": {
                    "reference": "Location/21250403"
                }
            }
        }
    ]
}.freeze
  end
end
