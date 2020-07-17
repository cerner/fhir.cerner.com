module Cerner
  module Resources
    R4_SERVICE_REQUEST ||={
      "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/ServiceRequest/41636441",
      "resource": {
        "resourceType": "ServiceRequest",
        "id": "41636441",
        "meta": {
          "versionId": "0",
          "lastUpdated": "2020-03-25T00:11:51.000Z"
        },
        "text": {
          "status": "generated",
          "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\">&lt;p>&lt;b>Service Request&lt;/b>&lt;/p>"\
                 "&lt;p>&lt;b>Patient&lt;/b>: Lagunov, Sameera&lt;/p>"\
                 "&lt;p>&lt;b>Code&lt;/b>: Resuscitation Status&lt;/p>"\
                 "&lt;p>&lt;b>Occurrence&lt;/b>: Mar 24, 2020 7:05 P.M. CDT&lt;/p>&lt;p>&lt;b>Quantity&lt;/b>: 3.0 &lt;/p>"\
                 "&lt;p>&lt;b>Priority&lt;/b>: routine&lt;/p>"\
                 "&lt;p>&lt;b>As Needed&lt;/b>: inflammation&lt;/p>"\
                 "&lt;p>&lt;b>Body Site&lt;/b>:&lt;/p>&lt;ul>&lt;li>Arm L&lt;/li>&lt;/ul>&lt;p>"\
                 "&lt;b>Reason&lt;/b>:&lt;/p>&lt;ul>&lt;li>Fracture&lt;/li>&lt;/ul>"\
                 "&lt;p>&lt;b>Status&lt;/b>: active&lt;/p>"\
                 "&lt;p>&lt;b>Intent&lt;/b>: Order&lt;/p>"\
                 "&lt;p>&lt;b>Requester&lt;/b>: McCready, Tim&lt;/p>"\
                 "&lt;p>&lt;b>Order Detail&lt;/b>: 03/24/20 19:05:00, Full Resuscitation&lt;/p>"\
        },
        "status": "active",
        "intent": "order",
        "category": [{
          "coding": [{
            "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/6000",
            "code": "2515",
            "display": "Patient Care",
            "userSelected": true
          }, {
            "system": "http://snomed.info/sct",
            "code": "108252007",
            "display": "Laboratory procedure"
          }],
          "text": "Patient Care"
        }],
        "priority": "routine",
        "code": {
          "coding": [{
            "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/200",
            "code": "3976772",
            "userSelected": true
          },
          {
            "system": "http://www.nlm.nih.gov/research/umls/rxnorm",
            "code": "854986",
            "display": "Perindopril Erbumine 2 MG Oral Tablet [Aceon]",
            "userSelected": false
          }],
          "text": "Resuscitation Status"
        },
        "orderDetail": [
          {
            "text": "03/24/20 19:05:00, Full Resuscitation"
          }
        ],
        "quantityQuantity": {
          "value": 3.0
        },
        "subject": {
          "reference": "Patient/1316020",
          "display": "Lagunov, Sameera"
        },
        "encounter": {
          "reference": "Encounter/12157884"
        },
        "occurrenceDateTime": "2020-03-25T00:05:00.000Z",
        "asNeededCodeableConcept": {
          "coding": [
            {
              "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/4005",
              "code": "664912",
              "display": "inflammation",
              "userSelected": true
            },
            {
              "system": "http://snomed.info/sct",
              "code": "1415005",
              "display": "Inflammation of lymphatics"
            }
          ],
          "text": "inflammation"
        },
        "authoredOn": "2020-03-25T00:05:30.000Z",
        "requester": {
          "reference": "Practitioner/1626008",
          "display": "McCready, Tim"
        },
        "performer": [
          {
            "reference": "Practitioner/664912",
            "display": "Dr. Spoc"
          },
          {
            "reference": "Practitioner/1744062",
            "display": "Dr. Dre"
          }
        ],
        "locationReference": [
          {
            "reference": "Location/309348",
            "display": "Mayo Clinic"
          }
        ],
        "reasonCode": [
          {
            "text": "Fracture"
          }
        ],
        "bodySite": [
          {
            "coding": [
              {
                "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/1028",
                "code": "309344",
                "display": "Arm L",
                "userSelected": true
              },
              {
                "system": "http://snomed.info/sct",
                "code": "362728000",
                "display": "entire right upper extremity (body structure)"
              }
            ],
            "text": "Arm L"
          }
        ],
        "note": [
          {
            "authorReference": {
              "reference": "Practitioner/1",
              "display": "Some, Name"
            },
            "time": "2014-10-10T15:25:45.000Z",
            "text": "A comment"
          }
        ]
      }
    }

    R4_SERVICE_REQUEST_BUNDLE ||={
      "resourceType": "Bundle",
      "id": "b630105a-2ec0-4877-8f8c-3b26b53cacd9",
      "type": "searchset",
      "link": [
        {
          "relation": "self",
          "url":  "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/ServiceRequest?patient=1316020"
        }
      ],
      "entry": [
        R4_SERVICE_REQUEST
      ]
    }
  end
end
