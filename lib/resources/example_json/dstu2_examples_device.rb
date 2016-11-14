module Cerner
  module Resources

    DSTU2_DEVICE_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "84a45b50-f11b-4c0a-9411-756156cbd49f",
      "type": "searchset",
      "total": 2,
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-open.sandboxcerner.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Device?patient=2226926"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Device/2226920",
          "resource": {
            "resourceType": "Device",
            "id": "2226920",
            "meta": {
              "versionId": "0",
              "lastUpdated": "2012-06-18T16:35:10.000Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Device&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: Choo, Jimmy&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Total Hip Set&lt;/p&gt;&lt;p&gt;&lt;b&gt;Manufacturer&lt;/b&gt;: Smith and Nephew Wound Management D&lt;/p&gt;&lt;p&gt;&lt;b&gt;Manufacture Date&lt;/b&gt;: Sat Apr 10 16:33:01 2010 (UTC)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Model&lt;/b&gt;: MODELNBR661488&lt;/p&gt;&lt;p&gt;&lt;b&gt;Serial Number&lt;/b&gt;: SERIALNBRDA88ABA9-9FAD-4A03-9E9A-B52299AE9AE4&lt;/p&gt;&lt;p&gt;&lt;b&gt;Lot Number&lt;/b&gt;: LOTDA88ABA9-9FAD-4A03-9E9A-B52299AE9AE4&lt;/p&gt;&lt;p&gt;&lt;b&gt;Owner&lt;/b&gt;: Baseline East Medical Center&lt;/p&gt;&lt;p&gt;&lt;b&gt;Udi&lt;/b&gt;: UDIDA88ABA9-9FAD-4A03-9E9A-B52299AE9AE4&lt;/p&gt;&lt;/div&gt;"
            },
            "identifier": [
              {
                "type": {
                  "coding": [
                    {
                      "system": "http://hl7.org/fhir/identifier-type",
                      "code": "SNO",
                      "display": "Serial Number"
                    }
                  ],
                  "text": "Serial Number"
                },
                "value": "SERIALNBRDA88ABA9-9FAD-4A03-9E9A-B52299AE9AE4"
              }
            ],
            "type": {
              "text": "Total Hip Set"
            },
            "manufacturer": "Smith and Nephew Wound Management D",
            "model": "MODELNBR661488",
            "manufactureDate": "2010-04-10T16:33:01.000Z",
            "expiry": "2020-07-07T16:01:01.000Z",
            "udi": "UDIDA88ABA9-9FAD-4A03-9E9A-B52299AE9AE4",
            "lotNumber": "LOTDA88ABA9-9FAD-4A03-9E9A-B52299AE9AE4",
            "owner": {
              "reference": "Organization/619848",
              "display": "Baseline East Medical Center"
            },
            "patient": {
              "reference": "Patient/2226926",
              "display": "Choo, Jimmy"
            }
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Device/2226919",
          "resource": {
            "resourceType": "Device",
            "id": "2226919",
            "meta": {
              "versionId": "0",
              "lastUpdated": "2012-06-18T16:35:10.000Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Device&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: Choo, Jimmy&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Total Hip Set&lt;/p&gt;&lt;p&gt;&lt;b&gt;Manufacturer&lt;/b&gt;: Smith and Nephew Wound Management D&lt;/p&gt;&lt;p&gt;&lt;b&gt;Manufacture Date&lt;/b&gt;: Sat Apr 10 16:33:01 2010 (UTC)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Model&lt;/b&gt;: MODELNBR661488&lt;/p&gt;&lt;p&gt;&lt;b&gt;Serial Number&lt;/b&gt;: SERIALNBRDA88ABA9-9FAD-4A03-9E9A-B52299AE9AE4&lt;/p&gt;&lt;p&gt;&lt;b&gt;Lot Number&lt;/b&gt;: LOTDA88ABA9-9FAD-4A03-9E9A-B52299AE9AE4&lt;/p&gt;&lt;p&gt;&lt;b&gt;Owner&lt;/b&gt;: Baseline East Medical Center&lt;/p&gt;&lt;p&gt;&lt;b&gt;Udi&lt;/b&gt;: UDIDA88ABA9-9FAD-4A03-9E9A-B52299AE9AE4&lt;/p&gt;&lt;/div&gt;"
            },
            "identifier": [
              {
                "type": {
                  "coding": [
                    {
                      "system": "http://hl7.org/fhir/identifier-type",
                      "code": "SNO",
                      "display": "Serial Number"
                    }
                  ],
                  "text": "Serial Number"
                },
                "value": "SERIALNBRDA88ABA9-9FAD-4A03-9E9A-B52299AE9AE4"
              }
            ],
            "type": {
              "text": "Total Hip Set"
            },
            "manufacturer": "Smith and Nephew Wound Management D",
            "model": "MODELNBR661488",
            "manufactureDate": "2010-04-10T16:33:01.000Z",
            "expiry": "2020-07-07T16:01:01.000Z",
            "udi": "UDIDA88ABA9-9FAD-4A03-9E9A-B52299AE9AE4",
            "lotNumber": "LOTDA88ABA9-9FAD-4A03-9E9A-B52299AE9AE4",
            "owner": {
              "reference": "Organization/619848",
              "display": "Baseline East Medical Center"
            },
            "patient": {
              "reference": "Patient/2226926",
              "display": "Choo, Jimmy"
            }
          }
        }
      ]
    }

    DSTU2_DEVICE_BUNDLE_BY_ID ||= {
      "resourceType": "Bundle",
      "id": "e3c05aa6-a1fd-11e6-80f5-76304dec7eb7",
      "type": "searchset",
      "total": 1,
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-open.sandboxcerner.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Device?_id=2226919"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Device/2226919",
          "resource": {
            "resourceType": "Device",
            "id": "2226919",
            "meta": {
              "versionId": "0",
              "lastUpdated": "2012-06-18T16:35:10.000Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Device&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: Choo, Jimmy&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Total Hip Set&lt;/p&gt;&lt;p&gt;&lt;b&gt;Manufacturer&lt;/b&gt;: Smith and Nephew Wound Management D&lt;/p&gt;&lt;p&gt;&lt;b&gt;Manufacture Date&lt;/b&gt;: Sat Apr 10 16:33:01 2010 (UTC)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Model&lt;/b&gt;: MODELNBR661488&lt;/p&gt;&lt;p&gt;&lt;b&gt;Serial Number&lt;/b&gt;: SERIALNBRDA88ABA9-9FAD-4A03-9E9A-B52299AE9AE4&lt;/p&gt;&lt;p&gt;&lt;b&gt;Lot Number&lt;/b&gt;: LOTDA88ABA9-9FAD-4A03-9E9A-B52299AE9AE4&lt;/p&gt;&lt;p&gt;&lt;b&gt;Owner&lt;/b&gt;: Baseline East Medical Center&lt;/p&gt;&lt;p&gt;&lt;b&gt;Udi&lt;/b&gt;: UDIDA88ABA9-9FAD-4A03-9E9A-B52299AE9AE4&lt;/p&gt;&lt;/div&gt;"
            },
            "identifier": [
              {
                "type": {
                  "coding": [
                    {
                      "system": "http://hl7.org/fhir/identifier-type",
                      "code": "SNO",
                      "display": "Serial Number"
                    }
                  ],
                  "text": "Serial Number"
                },
                "value": "SERIALNBRDA88ABA9-9FAD-4A03-9E9A-B52299AE9AE4"
              }
            ],
            "type": {
              "text": "Total Hip Set"
            },
            "manufacturer": "Smith and Nephew Wound Management D",
            "model": "MODELNBR661488",
            "manufactureDate": "2010-04-10T16:33:01.000Z",
            "expiry": "2020-07-07T16:01:01.000Z",
            "udi": "UDIDA88ABA9-9FAD-4A03-9E9A-B52299AE9AE4",
            "lotNumber": "LOTDA88ABA9-9FAD-4A03-9E9A-B52299AE9AE4",
            "owner": {
              "reference": "Organization/619848",
              "display": "Baseline East Medical Center"
            },
            "patient": {
              "reference": "Patient/2226926",
              "display": "Choo, Jimmy"
            }
          }
        }
      ]
    }

    DSTU2_DEVICE ||= {
      "resourceType": "Device",
      "id": "2226919",
      "meta": {
        "versionId": "0",
        "lastUpdated": "2012-06-18T16:35:10.000Z"
      },
      "text": {
        "status": "generated",
        "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Device&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: Choo, Jimmy&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Total Hip Set&lt;/p&gt;&lt;p&gt;&lt;b&gt;Manufacturer&lt;/b&gt;: Smith and Nephew Wound Management D&lt;/p&gt;&lt;p&gt;&lt;b&gt;Manufacture Date&lt;/b&gt;: Sat Apr 10 16:33:01 2010 (UTC)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Model&lt;/b&gt;: MODELNBR661488&lt;/p&gt;&lt;p&gt;&lt;b&gt;Serial Number&lt;/b&gt;: SERIALNBRDA88ABA9-9FAD-4A03-9E9A-B52299AE9AE4&lt;/p&gt;&lt;p&gt;&lt;b&gt;Lot Number&lt;/b&gt;: LOTDA88ABA9-9FAD-4A03-9E9A-B52299AE9AE4&lt;/p&gt;&lt;p&gt;&lt;b&gt;Owner&lt;/b&gt;: Baseline East Medical Center&lt;/p&gt;&lt;p&gt;&lt;b&gt;Udi&lt;/b&gt;: UDIDA88ABA9-9FAD-4A03-9E9A-B52299AE9AE4&lt;/p&gt;&lt;/div&gt;"
      },
      "identifier": [
        {
          "type": {
            "coding": [
              {
                "system": "http://hl7.org/fhir/identifier-type",
                "code": "SNO",
                "display": "Serial Number"
              }
            ],
            "text": "Serial Number"
          },
          "value": "SERIALNBRDA88ABA9-9FAD-4A03-9E9A-B52299AE9AE4"
        }
      ],
      "type": {
        "text": "Total Hip Set"
      },
      "manufacturer": "Smith and Nephew Wound Management D",
      "model": "MODELNBR661488",
      "manufactureDate": "2010-04-10T16:33:01.000Z",
      "expiry": "2020-07-07T16:01:01.000Z",
      "udi": "UDIDA88ABA9-9FAD-4A03-9E9A-B52299AE9AE4",
      "lotNumber": "LOTDA88ABA9-9FAD-4A03-9E9A-B52299AE9AE4",
      "owner": {
        "reference": "Organization/619848",
        "display": "Baseline East Medical Center"
      },
      "patient": {
        "reference": "Patient/2226926",
        "display": "Choo, Jimmy"
      }
    }
    
  end
end 
