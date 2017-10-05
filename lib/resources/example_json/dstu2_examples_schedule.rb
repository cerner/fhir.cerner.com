module Cerner
  module Resources

    DSTU2_SCHEDULE_ENTRY ||= {
      "resourceType": "Schedule",
      "id": "21265426-633867-3121665-0",
      "text": {
        "status": "generated",
        "div": "&lt;div&gt;&lt;p>&lt;b>Schedule&lt;/b>&lt;/p>&lt;p>&lt;b>Type&lt;/b>: Same Day&lt;/p>&lt;p>&lt;b>Practitioner&lt;/b>: Song, River&lt;/p>&lt;p>&lt;b>Location&lt;/b>: Baseline West&lt;/p>&lt;/div>"
      },
      "extension": [
        {
          "url": "https://fhir-ehr.cerner.com/dstu2/StructureDefinition/scheduling-location",
          "valueReference": {
            "reference": "Location/633867",
            "display": "Baseline West"
          }
        }
      ],
      "type": [
        {
          "coding": [
            {
              "system": "http://snomed.info/sct",
              "code": "394581000",
              "display": "Community medicine"
            }
          ],
          "text": "Same Day"
        }
      ],
      "actor": {
        "reference": "Practitioner/2578010",
        "display": "Song, River"
      }
    }

    DSTU2_SCHEDULE_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "9ff44def-1f82-4184-8639-5e6b3ab03ed7",
      "type": "searchset",
      "total": 2,
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Schedule?_id=21265426-633867-3121665-0%2C21265426-633867-3121665-15"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Schedule/21265426-633867-3121665-15",
          "resource": {
            "resourceType": "Schedule",
            "id": "21265426-633867-3121665-15",
            "text": {
              "status": "generated",
              "div": "&lt;div>&lt;p>&lt;b>Schedule&lt;/b>&lt;/p>&lt;p>&lt;b>Type&lt;/b>: Same Day&lt;/p>&lt;p>&lt;b>Practitioner&lt;/b>: Song, River&lt;/p>&lt;p>&lt;b>Location&lt;/b>: Baseline West&lt;/p>&lt;/div>"
            },
            "extension": [
              {
                "url": "https://fhir-ehr.cerner.com/dstu2/StructureDefinition/scheduling-location",
                "valueReference": {
                  "reference": "Location/633867",
                  "display": "Baseline West"
                }
              }
            ],
            "type": [
              {
                "coding": [
                  {
                    "system": "http://snomed.info/sct",
                    "code": "394581000",
                    "display": "Community medicine"
                  }
                ],
                "text": "Same Day"
              }
            ],
            "actor": {
              "reference": "Practitioner/2578010",
              "display": "Song, River"
            }
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Schedule/21265426-633867-3121665-0",
          "resource": {
            "resourceType": "Schedule",
            "id": "21265426-633867-3121665-0",
            "text": {
              "status": "generated",
              "div": "&lt;div>&lt;p>&lt;b>Schedule&lt;/b>&lt;/p>&lt;p>&lt;b>Type&lt;/b>: Same Day&lt;/p>&lt;p>&lt;b>Practitioner&lt;/b>: Song, River&lt;/p>&lt;p>&lt;b>Location&lt;/b>: Baseline West&lt;/p>&lt;/div>"
            },
            "extension": [
              {
                "url": "https://fhir-ehr.cerner.com/dstu2/StructureDefinition/scheduling-location",
                "valueReference": {
                  "reference": "Location/633867",
                  "display": "Baseline West"
                }
              }
            ],
            "type": [
              {
                "coding": [
                  {
                    "system": "http://snomed.info/sct",
                    "code": "394581000",
                    "display": "Community medicine"
                  }
                ],
                "text": "Same Day"
              }
            ],
            "actor": {
              "reference": "Practitioner/2578010",
              "display": "Song, River"
            }
          }
        }
      ]
    }

  end
end
