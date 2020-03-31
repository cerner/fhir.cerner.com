module Cerner
  module Resources
    R4_PROVENANCE_ENTRY ||= {
      "resourceType": "Provenance",
      "id": "doc-881057",
      "meta": {
        "versionId": "881057",
        "lastUpdated": "2019-10-25T14:57:43Z"
      },
      "text": {
        "status": "generated",
        "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\">&lt;p>&lt;b>Provenance&lt;/b>&lt;/p>&lt;p>&lt;b>Target&lt;/b>:&lt;/p>&lt;ul>&lt;li>DocumentReference/881049&lt;/li>&lt;/ul>&lt;p>&lt;b>Recorded&lt;/b>: Oct 25, 2019  9:57 A.M. CDT&lt;/p>&lt;p>&lt;b>Agents&lt;/b>:&lt;/p>&lt;dl>&lt;dt>Baseline East Medical Center&lt;/dt>&lt;dd>&lt;b>Agent Type&lt;/b>: Author&lt;/dd>&lt;dd>&lt;b>Agent Role&lt;/b>: Source&lt;/dd>&lt;/dl>&lt;p>&lt;b>Entity Source&lt;/b>: DocumentReference/S-202&lt;/p>&lt;/div>"
      },
      "target": [
        {
          "reference": "DocumentReference/881049"
        }
      ],
      "recorded": "2019-10-25T14:57:43Z",
      "agent": [
        {
          "type": {
            "coding": [
              {
                "system": "http://terminology.hl7.org/CodeSystem/provenance-participant-type",
                "code": "author"
              }
            ],
            "text": "Author"
          },
          "role": [
            {
              "coding": [
                {
                  "system": "http://terminology.hl7.org/CodeSystem/contractsignertypecodes",
                  "code": "SOURCE"
                }
              ],
              "text": "Source"
            }
          ],
          "who": {
            "reference": "Organization/619848",
            "display": "Baseline East Medical Center"
          }
        }
      ],
      "entity": [
        {
          "role": "source",
          "what": {
            "reference": "DocumentReference/S-202"
          }
        }
      ]
    }

    R4_PROVENANCE_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "160ad230-6a5c-4813-96e2-2b36be102145",
      "type": "searchset",
      "total": 1,
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Provenance?_id=doc-881057"
        }
      ],
      "entry": [
        "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Provenance/doc-881057",
        "resource": R4_PROVENANCE_ENTRY
      ]
    }

    R4_PROVENANCE_CREATE ||= {
      "resourceType": "Provenance",
      "target": [
        {
          "reference": "DocumentReference/881049"
        }
      ],
      "recorded": "2019-10-25T14:57:43Z",
      "agent": [
        {
          "type": {
            "coding": [
              {
                "system": "http://hl7.org/fhir/us/core/CodeSystem/us-core-provenance-participant-type",
                "code": "transmitter"
              }
            ]
          },
          "role": [
            {
              "coding": [
                {
                  "system": "http://terminology.hl7.org/CodeSystem/contractsignertypecodes",
                  "code": "SOURCE"
                }
              ]
            }
          ],
          "who": {
            "reference": "Organization/619848"
          }
        }
      ],
      "entity": [
        {
          "role": "source",
          "what": {
            "reference": "DocumentReference/S-201"
          }
        }
      ]
    }
  end
end
