module Cerner
  module Resources

    DSTU2_DIAGNOSTIC_REPORT_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "9791066f-1dcb-42ff-838a-ade00f4037f0",
      "type": "searchset",
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/DiagnosticReport?patient=1316020&_count=10"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/DiagnosticReport/5153487",
          "resource": {
            "resourceType": "DiagnosticReport",
            "id": "5153487",
            "meta": {
              "versionId": "3",
              "lastUpdated": "2015-08-06T20:03:21.000Z"
            },
            "text": {
              "status": "additional",
              "div": "&lt;div>&lt;p>&lt;b>Diagnostic Report&lt;/b>&lt;/p>&lt;p>&lt;b>Document Type&lt;/b>: RADRPT&lt;/p>&lt;p>&lt;b>Document Title&lt;/b>: XR Wrist Complete Left&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Unknown&lt;/p>&lt;p>&lt;b>Verifying Provider&lt;/b>: Interfaced-Unknown&lt;/p>&lt;p>&lt;b>Ordering Provider&lt;/b>: &lt;ul>&lt;li>Song, River&lt;/li>&lt;/ul>&lt;/p>&lt;/div>"
            },
            "status": "unknown",
            "category": {
              "text": "RADRPT"
            },
            "code": {
              "text": "RADRPT"
            },
            "subject": {
              "reference": "Patient/1316020",
              "display": "Peralta, Jake"
            },
            "encounter": {
              "reference": "Encounter/2787906"
            },
            "effectiveDateTime": "2015-08-06T20:03:09.000Z",
            "issued": "2015-08-06T20:03:21.000Z",
            "performer": {
              "display": "Interfaced-Unknown"
            },
            "request": [
              {
                "reference": "DiagnosticOrder/18954087"
              }
            ],
            "presentedForm": [
              {
                "contentType": "text/html",
                "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Binary/5153487"
              }
            ]
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/DiagnosticReport/4135365",
          "resource": {
            "resourceType": "DiagnosticReport",
            "id": "4135365",
            "meta": {
              "versionId": "5",
              "lastUpdated": "2016-09-14T16:33:16.000Z"
            },
            "text": {
              "status": "additional",
              "div": "&lt;div>&lt;p>&lt;b>Diagnostic Report&lt;/b>&lt;/p>&lt;p>&lt;b>Document Type&lt;/b>: RADRPT&lt;/p>&lt;p>&lt;b>Document Title&lt;/b>: CT Abdomen w/ Contrast&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Final&lt;/p>&lt;p>&lt;b>Verifying Provider&lt;/b>: Chase, Robert&lt;/p>&lt;p>&lt;b>Ordering Provider&lt;/b>: &lt;ul>&lt;li>Cuddy, Lisa&lt;/li>&lt;/ul>&lt;/p>&lt;/div>"
            },
            "status": "final",
            "category": {
              "text": "RADRPT"
            },
            "code": {
              "text": "RADRPT"
            },
            "subject": {
              "reference": "Patient/1316020",
              "display": "Peralta, Jake"
            },
            "encounter": {
              "reference": "Encounter/2153909"
            },
            "effectiveDateTime": "2014-12-05T22:31:02.000Z",
            "issued": "2016-09-14T16:33:11.000Z",
            "performer": {
              "reference": "Practitioner/1314015",
              "display": "Chase, Robert"
            },
            "request": [
              {
                "reference": "DiagnosticOrder/17233929"
              }
            ],
            "presentedForm": [
              {
                "contentType": "text/html",
                "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Binary/4135365"
              }
            ]
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/DiagnosticReport/3411366",
          "resource": {
            "resourceType": "DiagnosticReport",
            "id": "3411366",
            "meta": {
              "versionId": "2",
              "lastUpdated": "2014-05-05T18:43:26.000Z"
            },
            "text": {
              "status": "additional",
              "div": "&lt;div>&lt;p>&lt;b>Diagnostic Report&lt;/b>&lt;/p>&lt;p>&lt;b>Document Type&lt;/b>: RADRPT&lt;/p>&lt;p>&lt;b>Document Title&lt;/b>: XR Abdomen AP | XR Abdomen Series w/ Chest 1 View&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Unknown&lt;/p>&lt;p>&lt;b>Verifying Provider&lt;/b>: House, Gregory&lt;/p>&lt;p>&lt;b>Ordering Provider&lt;/b>: &lt;ul>&lt;li>Wilson, James&lt;/li>&lt;li>Cameron, Allison&lt;/li>&lt;/ul>&lt;/p>&lt;/div>"
            },
            "status": "unknown",
            "category": {
              "text": "RADRPT"
            },
            "code": {
              "text": "RADRPT"
            },
            "subject": {
              "reference": "Patient/1316020",
                "display": "Peralta, Jake"
            },
            "encounter": {
              "reference": "Encounter/1309912"
            },
            "effectiveDateTime": "2014-05-05T18:43:11.000Z",
            "issued": "2014-05-05T18:43:26.000Z",
            "performer": {
              "reference": "Practitioner/1985700",
              "display": "House, Gregory"
            },
            "request": [
              {
                "reference": "DiagnosticOrder/15785901"
              },
              {
                "reference": "DiagnosticOrder/15717975"
              }
            ],
            "presentedForm": [
              {
                "contentType": "text/html",
                "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Binary/3411366"
              }
            ]
          }
        }
      ]
    }

  end
end
