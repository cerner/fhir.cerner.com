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
          "url": "https://fhir-open.sandboxcerner.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/DocumentReference/$docref?patient=1316024&type=http%3A%2F%2Floinc.org%7C34133-9"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/DocumentReference/c40570e1-66bf-4560-9bb1-98367f3e7d26",
          "resource": {
            "resourceType": "DocumentReference",
            "id": "c40570e1-66bf-4560-9bb1-98367f3e7d26",
            "subject": {
              "reference": "Patient/1316024"
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
                  "url": "https://fhir-open.sandboxcerner.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/Binary/$autogen-ccd-if?patient=1316024"
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

  end
end
