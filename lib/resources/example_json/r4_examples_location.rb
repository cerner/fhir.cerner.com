# frozen_string_literal: true

module Cerner
  module Resources
    R4_LOCATION_ENTRY ||= {
      "resourceType": 'Location',
      "id": '21250409',
      "meta": {
        "versionId": '6',
        "lastUpdated": '2018-06-12T18:45:00Z'
      },
      "text": {
        "status": 'generated',
        "div": '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Location</b></p><p><b>Name</b>: BE 1 North</p><p><b>Alias</b>: BE 1N</p><p><b>Managing Organization</b>: Baseline East Medical Center</p><p><b>Part Of</b>: 21250403</p><p><b>Physical Type</b>: Facility(s)</p><p><b>Status</b>: Active</p></div>' # rubocop:disable Layout/LineLength
      },
      "extension": [
        {
          "extension": [
            {
              "id": '20356268',
              "valueString": 'Core Measure Locations',
              "url": 'custom-attribute-name'
            },
            {
              "valueCodeableConcept": {
                "coding": [
                  {
                    "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4678015',
                    "code": '20140683',
                    "display": 'ED',
                    "userSelected": true
                  }
                ],
                "text": 'ED'
              },
              "url": 'custom-attribute-value'
            }
          ],
          "url": 'https://fhir-ehr.cerner.com/r4/StructureDefinition/custom-attribute'
        }
      ],
      "status": 'active',
      "name": 'BE 1 North',
      "alias": [
        'BE 1N'
      ],
      "mode": 'instance',
      "address": {
        "text": "Cerner H2 building\nLevel 4\nManyata embassy business park\nNagawara cicle\nBangalore, AA \nIreland",
        "line": [
          'Cerner H2 building',
          'Level 4',
          'Manyata embassy business park',
          'Nagawara cicle'
        ],
        "city": 'Bangalore',
        "district": 'Indian River',
        "state": 'AA',
        "country": 'Ireland'
      },
      "type": [
        {
            "coding": [
                {
                    "system": "https://fhir.cerner.com/2c400054-42d8-4e74-87b7-80b5bd5fde9f/codeSet/222",
                    "code": "772",
                    "display": "Ambulatory(s)",
                    "userSelected": true
                },
                {
                    "system": "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
                    "code": "OF",
                    "display": "Outpatient facility"
                }
            ],
            "text": "Ambulatory(s)"
        }
    ],
      "physicalType": {
        "coding": [
          {
            "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/222',
            "code": '772',
            "display": 'Ambulatory(s)',
            "userSelected": true
          },
          {
            "system": "http://terminology.hl7.org/CodeSystem/location-physical-type",
            "code": 'wa',
            "display": 'Ward'
        }
        ],
        "text": 'Ambulatory(s)'
      },
      "managingOrganization": {
        "reference": 'Organization/13971625',
        "display": 'Baseline East Medical Center'
      },
      "partOf": {
        "reference": 'Location/21250403'
      }
    }.freeze

    R4_LOCATION_BUNDLE ||= {
      "resourceType": 'Bundle',
      "id": '902e1b49-b9c4-4786-b90b-c9612d478f2a',
      "type": 'searchset',
      "link": [
        {
          "relation": 'self',
          "url": 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Location?_id=21250409'
        }
      ],
      "entry": [
        {
          "fullUrl": 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Location/21250409',
          "resource": R4_LOCATION_ENTRY
        }
      ]
    }.freeze

    R4_LOCATION_TYPE_BUNDLE ||= {
      "resourceType": 'Bundle',
      "id": 'f4749f7a-e67d-49d1-8b92-ddbef46eae15',
      "type": 'searchset',
      "link": [
        {
          "relation": 'self',
          "url": 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Location?type=http://terminology.hl7.org/CodeSystem/v3-RoleCode|PHARM'
        }
      ],
      "entry": [
        {
          "fullUrl": 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Location?type=http://terminology.hl7.org/CodeSystem/v3-RoleCode|PHARM',
          "resource": R4_LOCATION_ENTRY
        }
      ]
    }.freeze

    R4_LOCATION_PHYSICAL_TYPE_BUNDLE ||= {
      "resourceType": 'Bundle',
      "id": 'f4749f7a-e67d-49d1-8b92-ddbef46eae15',
      "type": 'searchset',
      "link": [
        {
          "relation": 'self',
          "url": 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Location?-physicalType=http://terminology.hl7.org/CodeSystem/location-physical-type|si'
        }
      ],
      "entry": [
        {
          "fullUrl": 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Location?-physicalType=http://terminology.hl7.org/CodeSystem/location-physical-type|si',
          "resource": R4_LOCATION_ENTRY
        }
      ]
    }.freeze
  end
end
