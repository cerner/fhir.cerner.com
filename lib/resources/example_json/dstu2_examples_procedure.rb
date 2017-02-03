module Cerner
  module Resources

    DSTU2_PROCEDURE_ENTRY ||= {
      "resourceType": "Procedure",
      "id": "24110557",
      "meta": {
        "versionId": "1",
        "lastUpdated": "2014-09-16T22:49:27.000Z"
      },
      "text": {
        "status": "generated",
        "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Procedure&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Subject&lt;/b&gt;: Song, River&lt;/p&gt;&lt;p&gt;&lt;b&gt;Code&lt;/b&gt;: Influenza, 348046004&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Completed&lt;/p&gt;&lt;p&gt;&lt;b&gt;Notes&lt;/b&gt;: &lt;ul&gt;&lt;li&gt;Testing this influenza&lt;/li&gt;&lt;/ul&gt;&lt;/p&gt;&lt;/div&gt;"
      },
      "subject": {
        "reference": "Patient/1316020",
        "display": "Song, River"
      },
      "status": "completed",
      "code": {
        "coding": [
          {
            "system": "http://snomed.info/sct",
            "code": "348046004",
            "display": "Influenza (split virion) vaccine injection suspension 0.5mL prefilled syringe (product)"
          }
        ],
        "text": "Influenza"
      },
      "performedDateTime": "2014-09-15T22:00:00.000",
      "encounter": {
        "reference": "Encounter/2457909"
      },
      "notes": [
        {
          "authorReference": {
            "reference": "Practitioner/1590015",
            "display": "Forrest, Fhir"
          },
          "time": "2014-09-16T21:35:32.000Z",
          "text": "Testing this influenza"
        }
      ]
    }


    DSTU2_PROCEDURE_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "beea3bd6-6af2-4c82-89e5-db3478102d8c",
      "type": "searchset",
      "total": 4,
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Procedure?patient=1316020"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Procedure/24110557",
          "resource": {
            "resourceType": "Procedure",
            "id": "24110557",
            "meta": {
              "versionId": "1",
              "lastUpdated": "2014-09-16T22:49:27.000Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Procedure&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Subject&lt;/b&gt;: Song, River&lt;/p&gt;&lt;p&gt;&lt;b&gt;Code&lt;/b&gt;: Influenza, 348046004&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Completed&lt;/p&gt;&lt;p&gt;&lt;b&gt;Notes&lt;/b&gt;: &lt;ul&gt;&lt;li&gt;Testing this influenza&lt;/li&gt;&lt;/ul&gt;&lt;/p&gt;&lt;/div&gt;"
            },
            "subject": {
              "reference": "Patient/1316020",
              "display": "Song, River"
            },
            "status": "completed",
            "code": {
              "coding": [
                {
                  "system": "http://snomed.info/sct",
                  "code": "348046004",
                  "display": "Influenza (split virion) vaccine injection suspension 0.5mL prefilled syringe (product)"
                }
              ],
              "text": "Influenza"
            },
            "performedDateTime": "2014-09-15T22:00:00.000",
            "encounter": {
              "reference": "Encounter/2457909"
            },
            "notes": [
              {
                "authorReference": {
                  "reference": "Practitioner/1590015",
                  "display": "Forrest, Fhir"
                },
                "time": "2014-09-16T21:35:32.000Z",
                "text": "Testing this influenza"
              }
            ]
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Procedure/26394551",
          "resource": {
            "resourceType": "Procedure",
            "id": "26394551",
            "meta": {
              "versionId": "0",
              "lastUpdated": "2015-05-14T18:11:37.000Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Procedure&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Subject&lt;/b&gt;: Song, River&lt;/p&gt;&lt;p&gt;&lt;b&gt;Code&lt;/b&gt;: Influenza A (H1N1) virus, 442352004&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Completed&lt;/p&gt;&lt;p&gt;&lt;b&gt;Location&lt;/b&gt;: BU-BC&lt;/p&gt;&lt;/div&gt;"
            },
            "subject": {
              "reference": "Patient/1316020",
              "display": "Song, River"
            },
            "status": "completed",
            "code": {
              "coding": [
                {
                  "system": "http://snomed.info/sct",
                  "code": "442352004",
                  "display": "Influenza A virus subtype H1N1 (organism)"
                }
              ],
              "text": "Influenza A (H1N1) virus"
            },
            "performedDateTime": "2007",
            "encounter": {
              "reference": "Encounter/2457909"
            },
            "location": {
              "reference": "Location/4059955",
              "display": "BU-BC"
            }
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Procedure/34722551",
          "resource": {
            "resourceType": "Procedure",
            "id": "34722551",
            "meta": {
              "versionId": "0",
              "lastUpdated": "2015-10-27T15:36:56.000Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Procedure&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Subject&lt;/b&gt;: Song, River&lt;/p&gt;&lt;p&gt;&lt;b&gt;Code&lt;/b&gt;: Knee abrasion, 211332006&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Completed&lt;/p&gt;&lt;p&gt;&lt;b&gt;Location&lt;/b&gt;: Baseline East&lt;/p&gt;&lt;p&gt;&lt;b&gt;Notes&lt;/b&gt;: &lt;ul&gt;&lt;li&gt;Recreate Test.&lt;/li&gt;&lt;/ul&gt;&lt;/p&gt;&lt;/div&gt;"
            },
            "subject": {
              "reference": "Patient/1316020",
              "display": "Song, River"
            },
            "status": "completed",
            "code": {
              "coding": [
                {
                  "system": "http://snomed.info/sct",
                  "code": "211332006",
                  "display": "Abrasion, knee (disorder)"
                }
              ],
              "text": "Knee abrasion"
            },
            "performer": [
              {
                "actor": {
                  "reference": "Practitioner/1686008",
                  "display": "Wilde, Fhir"
                }
              }
            ],
            "encounter": {
              "reference": "Encounter/2457909"
            },
            "location": {
              "reference": "Location/4048128",
              "display": "Baseline East"
            },
            "notes": [
              {
                "authorReference": {
                  "reference": "Practitioner/1686008",
                  "display": "Wilde, Fhir"
                },
                "time": "2015-10-27T15:36:57.000Z",
                "text": "Recreate Test."
              }
            ]
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Procedure/26394555",
          "resource": {
            "resourceType": "Procedure",
            "id": "26394555",
            "meta": {
              "versionId": "0",
              "lastUpdated": "2015-05-14T18:12:29.000Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Procedure&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Subject&lt;/b&gt;: Song, River&lt;/p&gt;&lt;p&gt;&lt;b&gt;Code&lt;/b&gt;: Influenza (split virion) vaccine injection suspension 0.5mL prefilled syringe, 348046004&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Completed&lt;/p&gt;&lt;/div&gt;"
            },
            "subject": {
              "reference": "Patient/1316020",
              "display": "Song, River"
            },
            "status": "completed",
            "code": {
              "coding": [
                {
                  "system": "http://snomed.info/sct",
                  "code": "348046004",
                  "display": "Influenza (split virion) vaccine injection suspension 0.5mL prefilled syringe (product)"
                }
              ],
              "text": "Influenza (split virion) vaccine injection suspension 0.5mL prefilled syringe"
            },
            "performedDateTime": "2015",
            "encounter": {
              "reference": "Encounter/2457909"
            }
          }
        }
      ]
    }

  end
end
