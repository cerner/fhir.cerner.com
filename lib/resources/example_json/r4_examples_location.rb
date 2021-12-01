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
      "physicalType": {
        "coding": [
          {
            "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/222',
            "code": '783',
            "display": 'Facility(s)',
            "userSelected": true
          }
        ],
        "text": 'Facility(s)'
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

    R4_LOCATION_ADDRESS_ENTRY ||= {
      "resourceType": 'Location',
      "id": '982243103',
      "meta": {
        "versionId": '0',
        "lastUpdated": '2019-03-29T14:40:50Z'
      },
      "text": {
        "status": 'generated',
        "div": '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Location</b></p><p><b>Name</b>: '\
        'Anushka Org One</p><p><b>Alias</b>: ADOne</p><p><b>Managing Organization</b>: Anushka Org One</p>'\
        '<p><b>Physical Type</b>: Facility(s)</p><p><b>Status</b>: Active</p></div>'
      },
      "status": 'active',
      "name": 'Anushka Org One',
      "alias": [
        'ADOne'
      ],
      "mode": 'instance',
      "address": {
        "use": 'work',
        "text": "111th West st\nMalvern, PA 19355\nUSA",
        "line": [
          '111th West st'
        ],
        "city": 'Malvern',
        "state": 'PA',
        "postalCode": '19355',
        "country": 'USA'
      },
      "physicalType": {
        "coding": [
          {
            "system": 'https://fhir.cerner.com/2c400054-42d8-4e74-87b7-80b5bd5fde9f/codeSet/222',
            "code": '783',
            "display": 'Facility(s)',
            "userSelected": true
          },
          {
            "system": 'http://terminology.hl7.org/CodeSystem/location-physical-type',
            "code": 'si',
            "display": 'Site'
          }
        ],
        "text": 'Facility(s)'
      },
      "managingOrganization": {
        "reference": 'Organization/28096355',
        "display": 'Anushka Org One'
      }
    }.freeze

    R4_LOCATION_ADDRESS_BUNDLE ||= {
      "resourceType": 'Bundle',
      "id": 'f4749f7a-e67d-49d1-8b92-ddbef46eae15',
      "type": 'searchset',
      "link": [
        {
          "relation": 'self',
          "url": 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Location?address=PA'
        }
      ],
      "entry": [
        {
          "fullUrl": 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Location?address=PA',
          "resource": R4_LOCATION_ADDRESS_ENTRY
        }
      ]
    }.freeze

    R4_LOCATION_ADDRESS_CITY_STATE_BUNDLE ||= {
      "resourceType": 'Bundle',
      "id": '418d018e-ef93-43a0-b880-4888218ed3c6',
      "type": 'searchset',
      "link": [
        {
          "relation": 'self',
          "url": 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Location?address-state=PA&address-city=Malvern'
        }
      ],
      "entry": [
        {
          "fullUrl": 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Location?address-state=PA&address-city=Malvern',
          "resource": R4_LOCATION_ADDRESS_ENTRY
        }
      ]
    }.freeze

    R4_LOCATION_ADDRESS_NAME_BUNDLE ||= {
      "resourceType": 'Bundle',
      "id": 'af79f094-3b5e-4472-86bf-4044aeb4193c',
      "type": 'searchset',
      "link": [
        {
          "relation": 'self',
          "url": 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Location?address=kansas&name=ABC+Taxi'
        }
      ],
      "entry": [
        {
          "fullUrl": 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Location/2554914033',
          "resource": {
            "resourceType": 'Location',
            "id": '2554914033',
            "meta": {
              "versionId": '0',
              "lastUpdated": '2017-09-19T17:38:08Z'
            },
            "text": {
              "status": 'generated',
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Location</b></p>
              <p><b>Name</b>: ABC Taxi Company</p><p><b>Alias</b>: ABC Taxi</p>
              <p><b>Managing Organization</b>: ABC Taxi Company</p>
              <p><b>Physical Type</b>: Facility(s)</p><p><b>Status</b>: Active</p></div>'
            },
            "status": 'active',
            "name": 'ABC Taxi Company',
            "alias": [
              'ABC Taxi'
            ],
            "mode": 'instance',
            "telecom": [
              {
                "system": 'phone',
                "value": '8168769999'
              }
            ],
            "address": {
              "use": 'work',
              "text": "123 Main Street\nKansas City, MO 64117\nUS",
              "line": [
                '123 Main Street'
              ],
              "city": 'Kansas City',
              "state": 'MO',
              "postalCode": '64117',
              "country": 'US'
            },
            "physicalType": {
              "coding": [
                {
                  "system": 'https://fhir.cerner.com/dacc6494-e336-45ad-8729-b789ff8663c6/codeSet/222',
                  "code": '783',
                  "display": 'Facility(s)',
                  "userSelected": true
                },
                {
                  "system": 'http://terminology.hl7.org/CodeSystem/location-physical-type',
                  "code": 'si',
                  "display": 'Site'
                }
              ],
              "text": 'Facility(s)'
            },
            "managingOrganization": {
              "reference": 'Organization/3054032',
              "display": 'ABC Taxi Company'
            }
          }
        }
      ]
    }.freeze

    R4_LOCATION_ADDRESS_ORGANIZATION_BUNDLE ||= {
      "resourceType": 'Bundle',
      "id": 'a05b2157-824e-4908-b94e-f4617d6ab95e',
      "type": 'searchset',
      "link": [
        {
          "relation": 'self',
          "url": 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Location?address=kansas&organization=3054032'
        }
      ],
      "entry": [
        {
          "fullUrl": 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Location/2554914033',
          "resource": {
            "resourceType": 'Location',
            "id": '2554914033',
            "meta": {
              "versionId": '0',
              "lastUpdated": '2017-09-19T17:38:08Z'
            },
            "text": {
              "status": 'generated',
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Location</b></p>
              <p><b>Name</b>: ABC Taxi Company</p><p><b>Alias</b>: ABC Taxi</p>
              <p><b>Managing Organization</b>: ABC Taxi Company</p>
              <p><b>Physical Type</b>: Facility(s)</p><p><b>Status</b>: Active</p></div>'
            },
            "status": 'active',
            "name": 'ABC Taxi Company',
            "alias": [
              'ABC Taxi'
            ],
            "mode": 'instance',
            "telecom": [
              {
                "system": 'phone',
                "value": '8168769999'
              }
            ],
            "address": {
              "use": 'work',
              "text": "123 Main Street\nKansas City, MO 64117\nUS",
              "line": [
                '123 Main Street'
              ],
              "city": 'Kansas City',
              "state": 'MO',
              "postalCode": '64117',
              "country": 'US'
            },
            "physicalType": {
              "coding": [
                {
                  "system": 'https://fhir.cerner.com/dacc6494-e336-45ad-8729-b789ff8663c6/codeSet/222',
                  "code": '783',
                  "display": 'Facility(s)',
                  "userSelected": true
                },
                {
                  "system": 'http://terminology.hl7.org/CodeSystem/location-physical-type',
                  "code": 'si',
                  "display": 'Site'
                }
              ],
              "text": 'Facility(s)'
            },
            "managingOrganization": {
              "reference": 'Organization/3054032',
              "display": 'ABC Taxi Company'
            }
          }
        }
      ]
    }.freeze

  end
end
