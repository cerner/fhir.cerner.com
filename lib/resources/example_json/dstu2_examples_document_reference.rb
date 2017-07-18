module Cerner
  module Resources

    DSTU2_DOCUMENT_REFERENCE_DOCREF_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "5d1a7f94-8ee4-45aa-bbe6-1dd087fba40c",
      "type": "searchset",
      "total": 1,
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/DocumentReference/$docref?patient=1316035&type=http%3A%2F%2Floinc.org%7C34133-9"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/DocumentReference/e6e34022-942c-42b9-a1e3-5452bb274627",
          "resource": {
            "resourceType": "DocumentReference",
            "id": "e6e34022-942c-42b9-a1e3-5452bb274627",
            "subject": {
              "reference": "Patient/1316035"
            },
            "type": {
              "coding": [
                {
                  "system": "http://loinc.org",
                  "code": "34133-9",
                  "display": "Summary of episode note"
                }
              ],
              "text": "Summary of episode note"
            },
            "indexed": "2017-01-03T11:08:02-06:00",
            "status": "current",
            "content": [
              {
                "attachment": {
                  "contentType": "application/xml",
                  "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Binary/$autogen-ccd-if?patient=1316035"
                },
                "format": [
                  {
                    "system": "urn:oid:1.3.6.1.4.1.19376.1.2.3",
                    "code": "urn:hl7-org:sdwg:ccda-structuredBody:1.1",
                    "display": "For documents following C-CDA constraints using a structured body."
                  }
                ]
              }
            ]
          }
        }
      ]
    }

    DSTU2_DOCUMENT_REFERENCE_DOCREF_CREATE ||= {
      "resourceType": "DocumentReference",
      "subject": {
        "reference": "Patient/53663272"
      },
      "type": {
        "coding": [
          {
            "system": "http://loinc.org",
            "code": "34840-9"
          }
        ]
      },
      "author": [
        {
          "reference": "Practitioner/21500981"
        }
      ],
      "indexed": "2015-11-18T18:00:00Z",
      "status": "current",
      "docStatus": {
        "coding": [
          {
            "system": "http://hl7.org/fhir/composition-status",
            "code": "final"
          }
        ]
      },
      "description": "Rheumatology Note",
      "content": [
        {
          "attachment": {
            "contentType": "application/xhtml+xml;charset=utf-8",
            "data": "&lt;snipped for brevity>"
          }
        }
      ],
      "context": {
        "encounter": {
          "reference": "Encounter/4208059"
        },
        "period": {
          "end": "2015-08-20T09:10:14Z"
        }
      }
    }

  end
end
