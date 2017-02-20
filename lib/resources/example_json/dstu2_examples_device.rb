module Cerner
  module Resources

    DSTU2_DEVICE_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "c2ce1064-f327-4642-8c1f-3f08c21af2b6",
      "type": "searchset",
      "total": 4,
      "link": [{
          "relation": "self",
          "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Device?patient=4478007"
      }],
      "entry": [{
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Device/15575768",
          "resource": {
              "resourceType": "Device",
              "id": "15575768",
              "meta": {
                  "versionId": "0",
                  "lastUpdated": "2001-01-01T06:00:00.000Z"
              },
              "text": {
                  "status": "generated",
                  "div": "&lt;div>&lt;p>&lt;b>Device&lt;/b>&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: SMART, FRED RICK&lt;/p>&lt;p>&lt;b>Type&lt;/b>: Insulin Pump&lt;/p>&lt;p>&lt;b>Manufacture Date&lt;/b>: Mon Jan  1 06:00:00 2001 (UTC)&lt;/p>&lt;p>&lt;b>Model&lt;/b>: MiniMed Paradigm&#174; 522/722&lt;/p>&lt;p>&lt;b>Serial Number&lt;/b>: PBR668583H&lt;/p>&lt;p>&lt;b>Lot Number&lt;/b>: 567884-IP&lt;/p>&lt;p>&lt;b>Owner&lt;/b>: Baseline East &lt;/p>&lt;/div>"
              },
              "identifier": [{
                  "type": {
                      "coding": [{
                          "system": "http://hl7.org/fhir/identifier-type",
                          "code": "SNO",
                          "display": "Serial Number"
                      }],
                      "text": "Serial Number"
                  },
                  "value": "PBR668583H"
              }],
              "type": {
                  "text": "Insulin Pump"
              },
              "model": "MiniMed Paradigm® 522/722",
              "manufactureDate": "2001-01-01T06:00:00.000Z",
              "_udi": {
                  "extension": [{
                      "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
                      "valueCode": "unknown"
                  }]
              },
              "lotNumber": "567884-IP",
              "owner": {
                  "display": "Baseline East "
              },
              "patient": {
                  "reference": "Patient/4478007",
                  "display": "SMART, FRED RICK"
              }
          }
      }, {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Device/15577768",
          "resource": {
              "resourceType": "Device",
              "id": "15577768",
              "meta": {
                  "versionId": "0",
                  "lastUpdated": "2002-01-01T06:00:00.000Z"
              },
              "text": {
                  "status": "generated",
                  "div": "&lt;div>&lt;p>&lt;b>Device&lt;/b>&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: SMART, FRED RICK&lt;/p>&lt;p>&lt;b>Type&lt;/b>: Stryker MDM X3 Hip System&lt;/p>&lt;p>&lt;b>Manufacture Date&lt;/b>: Tue Jan  1 06:00:00 2002 (UTC)&lt;/p>&lt;p>&lt;b>Model&lt;/b>: MDM X3&lt;/p>&lt;p>&lt;b>Serial Number&lt;/b>: ser100-1001&lt;/p>&lt;p>&lt;b>Owner&lt;/b>: Baseline East Medical Center&lt;/p>&lt;/div>"
              },
              "identifier": [{
                  "type": {
                      "coding": [{
                          "system": "http://hl7.org/fhir/identifier-type",
                          "code": "SNO",
                          "display": "Serial Number"
                      }],
                      "text": "Serial Number"
                  },
                  "value": "ser100-1001"
              }],
              "type": {
                  "text": "Stryker MDM X3 Hip System"
              },
              "model": "MDM X3",
              "manufactureDate": "2002-01-01T06:00:00.000Z",
              "_udi": {
                  "extension": [{
                      "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
                      "valueCode": "unknown"
                  }]
              },
              "owner": {
                  "display": "Baseline East Medical Center"
              },
              "patient": {
                  "reference": "Patient/4478007",
                  "display": "SMART, FRED RICK"
              }
          }
      }, {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Device/15577769",
          "resource": {
              "resourceType": "Device",
              "id": "15577769",
              "meta": {
                  "versionId": "0",
                  "lastUpdated": "2004-01-01T06:00:00.000Z"
              },
              "text": {
                  "status": "generated",
                  "div": "&lt;div>&lt;p>&lt;b>Device&lt;/b>&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: SMART, FRED RICK&lt;/p>&lt;p>&lt;b>Type&lt;/b>: Stryker Triathalon Total Knee&lt;/p>&lt;p>&lt;b>Manufacture Date&lt;/b>: Wed Jan  1 06:00:00 2003 (UTC)&lt;/p>&lt;p>&lt;b>Model&lt;/b>: Triathalon&lt;/p>&lt;p>&lt;b>Serial Number&lt;/b>: ser100-1004&lt;/p>&lt;p>&lt;b>Owner&lt;/b>: Baseline East Medical Center&lt;/p>&lt;/div>"
              },
              "identifier": [{
                  "type": {
                      "coding": [{
                          "system": "http://hl7.org/fhir/identifier-type",
                          "code": "SNO",
                          "display": "Serial Number"
                      }],
                      "text": "Serial Number"
                  },
                  "value": "ser100-1004"
              }],
              "type": {
                  "text": "Stryker Triathalon Total Knee"
              },
              "model": "Triathalon",
              "manufactureDate": "2003-01-01T06:00:00.000Z",
              "_udi": {
                  "extension": [{
                      "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
                      "valueCode": "unknown"
                  }]
              },
              "owner": {
                  "display": "Baseline East Medical Center"
              },
              "patient": {
                  "reference": "Patient/4478007",
                  "display": "SMART, FRED RICK"
              }
          }
      }, {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Device/15577770",
          "resource": {
              "resourceType": "Device",
              "id": "15577770",
              "meta": {
                  "versionId": "0",
                  "lastUpdated": "2004-01-01T06:00:00.000Z"
              },
              "text": {
                  "status": "generated",
                  "div": "&lt;div>&lt;p>&lt;b>Device&lt;/b>&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: SMART, FRED RICK&lt;/p>&lt;p>&lt;b>Type&lt;/b>: Medtronic Advisa MRI SureScan&lt;/p>&lt;p>&lt;b>Manufacture Date&lt;/b>: Thu Jan  1 06:00:00 2004 (UTC)&lt;/p>&lt;p>&lt;b>Model&lt;/b>: A2DR01&lt;/p>&lt;p>&lt;b>Serial Number&lt;/b>: ser100-1004&lt;/p>&lt;p>&lt;b>Owner&lt;/b>: Baseline East Medical Center&lt;/p>&lt;/div>"
              },
              "identifier": [{
                  "type": {
                      "coding": [{
                          "system": "http://hl7.org/fhir/identifier-type",
                          "code": "SNO",
                          "display": "Serial Number"
                      }],
                      "text": "Serial Number"
                  },
                  "value": "ser100-1004"
              }],
              "type": {
                  "text": "Medtronic Advisa MRI SureScan"
              },
              "model": "A2DR01",
              "manufactureDate": "2004-01-01T06:00:00.000Z",
              "_udi": {
                  "extension": [{
                      "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
                      "valueCode": "unknown"
                  }]
              },
              "owner": {
                  "display": "Baseline East Medical Center"
              },
              "patient": {
                  "reference": "Patient/4478007",
                  "display": "SMART, FRED RICK"
              }
          }
      }]
  }

    DSTU2_DEVICE_BUNDLE_BY_ID ||= {
      "resourceType": "Bundle",
      "id": "b18560e7-4e72-4f7c-82e6-e3bc1ea1b18a",
      "type": "searchset",
      "total": 1,
      "link": [{
          "relation": "self",
          "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Device?_id=15575768"
      }],
      "entry": [{
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Device/15575768",
          "resource": {
              "resourceType": "Device",
              "id": "15575768",
              "meta": {
                  "versionId": "0",
                  "lastUpdated": "2001-01-01T06:00:00.000Z"
              },
              "text": {
                  "status": "generated",
                  "div": "&lt;div>&lt;p>&lt;b>Device&lt;/b>&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: SMART, FRED RICK&lt;/p>&lt;p>&lt;b>Type&lt;/b>: Insulin Pump&lt;/p>&lt;p>&lt;b>Manufacture Date&lt;/b>: Mon Jan  1 06:00:00 2001 (UTC)&lt;/p>&lt;p>&lt;b>Model&lt;/b>: MiniMed Paradigm&#174; 522/722&lt;/p>&lt;p>&lt;b>Serial Number&lt;/b>: PBR668583H&lt;/p>&lt;p>&lt;b>Lot Number&lt;/b>: 567884-IP&lt;/p>&lt;p>&lt;b>Owner&lt;/b>: Baseline East &lt;/p>&lt;/div>"
              },
              "identifier": [{
                  "type": {
                      "coding": [{
                          "system": "http://hl7.org/fhir/identifier-type",
                          "code": "SNO",
                          "display": "Serial Number"
                      }],
                      "text": "Serial Number"
                  },
                  "value": "PBR668583H"
              }],
              "type": {
                  "text": "Insulin Pump"
              },
              "model": "MiniMed Paradigm® 522/722",
              "manufactureDate": "2001-01-01T06:00:00.000Z",
              "_udi": {
                  "extension": [{
                      "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
                      "valueCode": "unknown"
                  }]
              },
              "lotNumber": "567884-IP",
              "owner": {
                  "display": "Baseline East "
              },
              "patient": {
                  "reference": "Patient/4478007",
                  "display": "SMART, FRED RICK"
              }
          }
      }]
  }

    DSTU2_DEVICE ||= {
      "resourceType": "Device",
      "id": "15575768",
      "meta": {
          "versionId": "0",
          "lastUpdated": "2001-01-01T06:00:00.000Z"
      },
      "text": {
          "status": "generated",
          "div": "&lt;div>&lt;p>&lt;b>Device&lt;/b>&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: SMART, FRED RICK&lt;/p>&lt;p>&lt;b>Type&lt;/b>: Insulin Pump&lt;/p>&lt;p>&lt;b>Manufacture Date&lt;/b>: Mon Jan  1 06:00:00 2001 (UTC)&lt;/p>&lt;p>&lt;b>Model&lt;/b>: MiniMed Paradigm&#174; 522/722&lt;/p>&lt;p>&lt;b>Serial Number&lt;/b>: PBR668583H&lt;/p>&lt;p>&lt;b>Lot Number&lt;/b>: 567884-IP&lt;/p>&lt;p>&lt;b>Owner&lt;/b>: Baseline East &lt;/p>&lt;/div>"
      },
      "identifier": [{
          "type": {
              "coding": [{
                  "system": "http://hl7.org/fhir/identifier-type",
                  "code": "SNO",
                  "display": "Serial Number"
              }],
              "text": "Serial Number"
          },
          "value": "PBR668583H"
      }],
      "type": {
          "text": "Insulin Pump"
      },
      "model": "MiniMed Paradigm® 522/722",
      "manufactureDate": "2001-01-01T06:00:00.000Z",
      "_udi": {
          "extension": [{
              "url": "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
              "valueCode": "unknown"
          }]
      },
      "lotNumber": "567884-IP",
      "owner": {
          "display": "Baseline East "
      },
      "patient": {
          "reference": "Patient/4478007",
          "display": "SMART, FRED RICK"
      }
  }
    
  end
end 
