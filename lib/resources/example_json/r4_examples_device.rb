# frozen_string_literal: true

module Cerner
  module Resources
    R4_DEVICE ||= {
      "resourceType": "Device",
      "id": "15577765",
      "meta": {
        "versionId": "0",
        "lastUpdated": "2012-06-18T05:00:00.000Z"
      },
      "text": {
        "status": "generated",
        "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\">&lt;p>&lt;b>Device&lt;/b>&lt;/p>&lt;p>&lt;b>Unique Device Identifier (UDI)&lt;/b>: UDIDA88ABA9-9FAD-4A03-9E9A-B52299AE9AE4&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Inactive&lt;/p>&lt;p>&lt;b>Manufacturer&lt;/b>: Smith and Nephew Wound Management D&lt;/p>&lt;p>&lt;b>Manufacture Date&lt;/b>: Apr 10, 2010  5:00 A.M. UTC&lt;/p>&lt;p>&lt;b>Expiration Date&lt;/b>: Jul  7, 2020  5:00 A.M. UTC&lt;/p>&lt;p>&lt;b>Lot Number&lt;/b>: LOTDA88ABA9-9FAD-4A03-9E9A-B52299AE9AE4&lt;/p>&lt;p>&lt;b>Serial Number&lt;/b>: SERIALNBRDA88ABA9-9FAD-4A03-9E9A-B52299AE9AE4&lt;/p>&lt;p>&lt;b>Type&lt;/b>: Total Hip Set&lt;/p>&lt;p>&lt;b>Model Number&lt;/b>: MODELNBR661488&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: SMART Jr, FRED RICK&lt;/p>&lt;p>&lt;b>Owner&lt;/b>: Baseline East Medical Center&lt;/p>&lt;/div>"
      },
      "identifier": [
        {
          "type": {
            "coding": [
              {
                "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
                "code": "SNO",
                "display": "Serial Number"
              }
            ],
            "text": "Serial Number"
          },
          "value": "SERIALNBRDA88ABA9-9FAD-4A03-9E9A-B52299AE9AE4"
        }
      ],
      "udiCarrier": [
        {
          "carrierHRF": "UDIDA88ABA9-9FAD-4A03-9E9A-B52299AE9AE4"
        }
      ],
      "status": "inactive",
      "distinctIdentifier": "DA88ABA9-9FAD-4A03-9E9A-B52299AE9AE4",
      "manufacturer": "Smith and Nephew Wound Management D",
      "manufactureDate": "2010-04-10T05:00:00.000Z",
      "expirationDate": "2020-07-07T05:00:00.000Z",
      "lotNumber": "LOTDA88ABA9-9FAD-4A03-9E9A-B52299AE9AE4",
      "serialNumber": "SERIALNBRDA88ABA9-9FAD-4A03-9E9A-B52299AE9AE4",
      "deviceName": [
        {
          "name": "Total Hip Set",
          "type": "manufacturer-name"
        }
      ],
      "modelNumber": "MODELNBR661488",
      "type": {
        "text": "Total Hip Set"
      },
      "patient": {
        "reference": "Patient/4478007",
        "display": "SMART Jr, FRED RICK"
      },
      "owner": {
        "reference": "Organization/619848",
        "display": "Baseline East Medical Center"
      }
    }

    R4_DEVICE_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "cc8573d6-b121-4cc5-8360-1747145302c3",
      "type": "searchset",
      "total": 5,
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-ehr.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Device?patient=4478007"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-ehr.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Device/15577765",
          "resource": {
            "resourceType": "Device",
            "id": "15577765",
            "meta": {
              "versionId": "0",
              "lastUpdated": "2012-06-18T05:00:00.000Z"
            },
            "text": {
              "status": "generated",
              "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"&lt;p>&lt;b>Device&lt;/b>&lt;/p>&lt;p>&lt;b>Unique Device Identifier (UDI)&lt;/b>: UDIDA88ABA9-9FAD-4A03-9E9A-B52299AE9AE4&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Inactive&lt;/p>&lt;p>&lt;b>Manufacturer&lt;/b>: Smith and Nephew Wound Management D&lt;/p>&lt;p>&lt;b>Manufacture Date&lt;/b>: Apr 10, 2010  5:00 A.M. UTC&lt;/p>&lt;p>&lt;b>Expiration Date&lt;/b>: Jul  7, 2020  5:00 A.M. UTC&lt;/p>&lt;p>&lt;b>Lot Number&lt;/b>: LOTDA88ABA9-9FAD-4A03-9E9A-B52299AE9AE4&lt;/p>&lt;p>&lt;b>Serial Number&lt;/b>: SERIALNBRDA88ABA9-9FAD-4A03-9E9A-B52299AE9AE4&lt;/p>&lt;p>&lt;b>Type&lt;/b>: Total Hip Set&lt;/p>&lt;p>&lt;b>Model Number&lt;/b>: MODELNBR661488&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: SMART Jr, FRED RICK&lt;/p>&lt;p>&lt;b>Owner&lt;/b>: Baseline East Medical Center&lt;/p>&lt;/div>"
            },
            "identifier": [
              {
                "type": {
                  "coding": [
                    {
                      "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
                      "code": "SNO",
                      "display": "Serial Number"
                    }
                  ],
                  "text": "Serial Number"
                },
                "value": "SERIALNBRDA88ABA9-9FAD-4A03-9E9A-B52299AE9AE4"
              }
            ],
            "udiCarrier": [
              {
                "carrierHRF": "UDIDA88ABA9-9FAD-4A03-9E9A-B52299AE9AE4"
              }
            ],
            "status": "inactive",
            "distinctIdentifier": "DA88ABA9-9FAD-4A03-9E9A-B52299AE9AE4",
            "manufacturer": "Smith and Nephew Wound Management D",
            "manufactureDate": "2010-04-10T05:00:00.000Z",
            "expirationDate": "2020-07-07T05:00:00.000Z",
            "lotNumber": "LOTDA88ABA9-9FAD-4A03-9E9A-B52299AE9AE4",
            "serialNumber": "SERIALNBRDA88ABA9-9FAD-4A03-9E9A-B52299AE9AE4",
            "deviceName": [
              {
                "name": "Total Hip Set",
                "type": "manufacturer-name"
              }
            ],
            "modelNumber": "MODELNBR661488",
            "type": {
              "text": "Total Hip Set"
            },
            "patient": {
              "reference": "Patient/4478007",
              "display": "SMART Jr, FRED RICK"
            },
            "owner": {
              "reference": "Organization/619848",
              "display": "Baseline East Medical Center"
            }
          }
        },
        {
          "fullUrl": "https://fhir-ehr.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Device/15575768",
          "resource": {
            "resourceType": "Device",
            "id": "15575768",
            "meta": {
              "versionId": "0",
              "lastUpdated": "2001-01-01T06:00:00.000Z"
            },
            "text": {
              "status": "generated",
              "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\">&lt;p>&lt;b>Device&lt;/b>&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Active&lt;/p>&lt;p>&lt;b>Manufacture Date&lt;/b>: Jan  1, 2001  6:00 A.M. UTC&lt;/p>&lt;p>&lt;b>Lot Number&lt;/b>: 567884-IP&lt;/p>&lt;p>&lt;b>Serial Number&lt;/b>: PBR668583H&lt;/p>&lt;p>&lt;b>Type&lt;/b>: Insulin Pump&lt;/p>&lt;p>&lt;b>Model Number&lt;/b>: MiniMed Paradigm&#174; 522/722&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: SMART Jr, FRED RICK&lt;/p>&lt;p>&lt;b>Owner&lt;/b>: Baseline East &lt;/p>&lt;/div>"
            },
            "identifier": [
              {
                "type": {
                  "coding": [
                    {
                      "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
                      "code": "SNO",
                      "display": "Serial Number"
                    }
                  ],
                  "text": "Serial Number"
                },
                "value": "PBR668583H"
              }
            ],
            "status": "active",
            "manufactureDate": "2001-01-01T06:00:00.000Z",
            "lotNumber": "567884-IP",
            "serialNumber": "PBR668583H",
            "deviceName": [
              {
                "name": "Insulin Pump",
                "type": "user-friendly-name"
              }
            ],
            "modelNumber": "MiniMed Paradigm® 522/722",
            "type": {
              "text": "Insulin Pump"
            },
            "patient": {
              "reference": "Patient/4478007",
              "display": "SMART Jr, FRED RICK"
            },
            "owner": {
              "display": "Baseline East "
            }
          }
        },
        {
          "fullUrl": "https://fhir-ehr.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Device/15577768",
          "resource": {
            "resourceType": "Device",
            "id": "15577768",
            "meta": {
              "versionId": "0",
              "lastUpdated": "2002-01-01T06:00:00.000Z"
            },
            "text": {
              "status": "generated",
              "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\">&lt;p>&lt;b>Device&lt;/b>&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Active&lt;/p>&lt;p>&lt;b>Manufacture Date&lt;/b>: Jan  1, 2002  6:00 A.M. UTC&lt;/p>&lt;p>&lt;b>Serial Number&lt;/b>: ser100-1001&lt;/p>&lt;p>&lt;b>Type&lt;/b>: Stryker MDM X3 Hip System&lt;/p>&lt;p>&lt;b>Model Number&lt;/b>: MDM X3&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: SMART Jr, FRED RICK&lt;/p>&lt;p>&lt;b>Owner&lt;/b>: Baseline East Medical Center&lt;/p>&lt;/div>"
            },
            "identifier": [
              {
                "type": {
                  "coding": [
                    {
                      "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
                      "code": "SNO",
                      "display": "Serial Number"
                    }
                  ],
                  "text": "Serial Number"
                },
                "value": "ser100-1001"
              }
            ],
            "status": "active",
            "manufactureDate": "2002-01-01T06:00:00.000Z",
            "serialNumber": "ser100-1001",
            "deviceName": [
              {
                "name": "Stryker MDM X3 Hip System",
                "type": "user-friendly-name"
              }
            ],
            "modelNumber": "MDM X3",
            "type": {
              "text": "Stryker MDM X3 Hip System"
            },
            "patient": {
              "reference": "Patient/4478007",
              "display": "SMART Jr, FRED RICK"
            },
            "owner": {
              "display": "Baseline East Medical Center"
            }
          }
        },
        {
          "fullUrl": "https://fhir-ehr.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Device/15577769",
          "resource": {
            "resourceType": "Device",
            "id": "15577769",
            "meta": {
              "versionId": "0",
              "lastUpdated": "2004-01-01T06:00:00.000Z"
            },
            "text": {
              "status": "generated",
              "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\">&lt;p>&lt;b>Device&lt;/b>&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Active&lt;/p>&lt;p>&lt;b>Manufacture Date&lt;/b>: Jan  1, 2003  6:00 A.M. UTC&lt;/p>&lt;p>&lt;b>Serial Number&lt;/b>: ser100-1004&lt;/p>&lt;p>&lt;b>Type&lt;/b>: Stryker Triathalon Total Knee&lt;/p>&lt;p>&lt;b>Model Number&lt;/b>: Triathalon&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: SMART Jr, FRED RICK&lt;/p>&lt;p>&lt;b>Owner&lt;/b>: Baseline East Medical Center&lt;/p>&lt;/div>"
            },
            "identifier": [
              {
                "type": {
                  "coding": [
                    {
                      "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
                      "code": "SNO",
                      "display": "Serial Number"
                    }
                  ],
                  "text": "Serial Number"
                },
                "value": "ser100-1004"
              }
            ],
            "status": "active",
            "manufactureDate": "2003-01-01T06:00:00.000Z",
            "serialNumber": "ser100-1004",
            "deviceName": [
              {
                "name": "Stryker Triathalon Total Knee",
                "type": "user-friendly-name"
              }
            ],
            "modelNumber": "Triathalon",
            "type": {
              "text": "Stryker Triathalon Total Knee"
            },
            "patient": {
              "reference": "Patient/4478007",
              "display": "SMART Jr, FRED RICK"
            },
            "owner": {
              "display": "Baseline East Medical Center"
            }
          }
        },
        {
          "fullUrl": "https://fhir-ehr.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Device/15577770",
          "resource": {
            "resourceType": "Device",
            "id": "15577770",
            "meta": {
              "versionId": "0",
              "lastUpdated": "2004-01-01T06:00:00.000Z"
            },
            "text": {
              "status": "generated",
              "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\">&lt;p>&lt;b>Device&lt;/b>&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Active&lt;/p>&lt;p>&lt;b>Manufacture Date&lt;/b>: Jan  1, 2004  6:00 A.M. UTC&lt;/p>&lt;p>&lt;b>Serial Number&lt;/b>: ser100-1004&lt;/p>&lt;p>&lt;b>Type&lt;/b>: Medtronic Advisa MRI SureScan&lt;/p>&lt;p>&lt;b>Model Number&lt;/b>: A2DR01&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: SMART Jr, FRED RICK&lt;/p>&lt;p>&lt;b>Owner&lt;/b>: Baseline East Medical Center&lt;/p></div>"
            },
            "identifier": [
              {
                "type": {
                  "coding": [
                    {
                      "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
                      "code": "SNO",
                      "display": "Serial Number"
                    }
                  ],
                  "text": "Serial Number"
                },
                "value": "ser100-1004"
              }
            ],
            "status": "active",
            "manufactureDate": "2004-01-01T06:00:00.000Z",
            "serialNumber": "ser100-1004",
            "deviceName": [
              {
                "name": "Medtronic Advisa MRI SureScan",
                "type": "user-friendly-name"
              }
            ],
            "modelNumber": "A2DR01",
            "type": {
              "text": "Medtronic Advisa MRI SureScan"
            },
            "patient": {
              "reference": "Patient/4478007",
              "display": "SMART Jr, FRED RICK"
            },
            "owner": {
              "display": "Baseline East Medical Center"
            }
          }
        }
      ]
    }
  end
end
