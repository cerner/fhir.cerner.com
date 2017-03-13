module Cerner
  module Resources

    DSTU2_PRACTITIONER_ENTRY ||= {
      "resourceType": "Practitioner",
      "id": "1478007",
      "meta": {
        "versionId": "0",
        "lastUpdated": "2012-07-27T00:18:35.000-05:00"
      },
      "text": {
        "status": "generated",
        "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Practitioner&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Name&lt;/b&gt;: Lager, Ashley&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;/div&gt;"
      },
      "active": true,
      "name": {
        "use": "usual",
        "text": "Lager, Ashley",
        "family": [
          "Lager"
        ],
        "given": [
          "Ashley"
        ],
        "period": {
          "start": "2012-07-27T00:18:35.000-05:00"
        }
      }
    }


    DSTU2_PRACTITIONER_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "96871858-eb10-4980-8854-fc5e7cf715ba",
      "type": "searchset",
      "total": 1,
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Practitioner?_id=1478007"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Practitioner/1478007",
          "resource": {
            "resourceType": "Practitioner",
            "id": "1478007",
            "meta": {
              "versionId": "0",
              "lastUpdated": "2012-07-27T00:18:35.000-05:00"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Practitioner&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Name&lt;/b&gt;: Lager, Ashley&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;/div&gt;"
            },
            "active": true,
            "name": {
              "use": "usual",
              "text": "Lager, Ashley",
              "family": [
                "Lager"
              ],
              "given": [
                "Ashley"
              ],
              "period": {
                "start": "2012-07-27T00:18:35.000-05:00"
              }
            }
          }
        }
      ]
    }

  end
end
