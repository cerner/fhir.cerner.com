module Cerner
  module Resources

    DSTU2_CARE_PLAN_ENTRY ||= {
      "resourceType": "CarePlan",
      "id": "7499295",
      "meta": {
        "versionId": "1",
        "lastUpdated": "2017-01-27T16:32:54-06:00"
      },
      "text": {
        "status": "additional",
        "div": "&lt;div>&lt;p>&lt;b>Care Plan&lt;/b>&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: PETERS, TIMOTHY&lt;/p>&lt;p>&lt;b>Description&lt;/b>: &amp;lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot;?&gt;&amp;lt;!DOCTYPE html PUBLIC &quot;-//W3C//DTD XHTML 1.0 Strict//EN&quot; &quot;http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd&quot;&gt;&amp;lt;html xmlns=&quot;http://www.w3.org/1999/xhtml&quot;&gt;&amp;lt;head&gt;&amp;lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=utf-8&quot; /&gt;&amp;lt;title&gt;XSL FO Document&amp;lt;/title&gt;&amp;lt;/head&gt;&amp;lt;body bgcolor=&quot;white&quot; marginwidth=&quot;6&quot; marginheight=&quot;6&quot; leftmargin=&quot;6&quot; topmargin=&quot;6&quot;&gt;&amp;lt;div valign=&quot;top&quot;&gt;&#10;&amp;lt;div style=&quot;font-family: Helvetica,sans-serif,Lucida Sans Unicode; font-size: 12pt; font-weight: normal; font-style: normal; text-decoration: none; color: rgb(0,0,0); background-color: transparent; margin-top: 0.0pt; margin-bottom: 0.0pt; text-indent: 0.0in; margin-left: 0.0in; margin-right: 0.0in; text-align: left; border-style: none; border-width: 0.0pt; border-color: rgb(0,0,0); padding: 0.0pt; white-space: pre-wrap;&quot;&gt;&amp;lt;div style=&quot;font-family: sans-serif,Lucida Sans Unicode; font-size: 24pt; font-weight: bold; margin-top: 16.05pt; margin-bottom: 16.05pt;&quot;&gt;PETERS, TIMOTHY (55 yrs.)&amp;lt;/div&gt;&amp;lt;div style=&quot;font-family: sans-serif,Lucida Sans Unicode; font-size: 18pt; font-weight: bold; margin-top: 14.9pt; margin-bottom: 14.9pt;&quot;&gt;HEAR Score: 2&amp;lt;/div&gt;&amp;lt;div style=&quot;font-family: sans-serif,Lucida Sans Unicode; margin-top: 12.0pt; margin-bottom: 12.0pt;&quot;&gt;Your patient has a LOW RISK HEAR score. Please obtain serial troponin at 0 and 3 hours. If serial troponins are negative, the HEART Pathway recommend discharge from the ED without stress testing or angiography.&amp;lt;/div&gt;&amp;lt;/div&gt;  &amp;lt;/div&gt;&amp;lt;/body&gt;&amp;lt;/html&gt;&lt;/p>&lt;p>&lt;b>Author&lt;/b>: Argonaut, Test&lt;/p>&lt;p>&lt;b>Effective Date/Time&lt;/b>: 2017-01-27T16:32:53-06:00&lt;/p>&lt;/div>"
      },
      "subject": {
        "reference": "Patient/1316024",
        "display": "PETERS, TIMOTHY"
      },
      "status": "completed",
      "context": {
        "reference": "Encounter/2675906"
      },
      "period": {
        "end": "2017-01-27T16:32:53-06:00"
      },
      "author": [
        {
          "reference": "Practitioner/3622007",
          "display": "Argonaut, Test"
        }
      ],
      "modified": "2017-01-27T16:32:54-06:00",
      "category": [
        {
          "coding": [
            {
              "system": "http://argonaut.hl7.org",
              "code": "assess-plan"
            }
          ]
        }
      ]
    }

    DSTU2_CARE_PLAN_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "66a6d608-8d77-47c8-b210-2fd3f56d2c68",
      "type": "searchset",
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/CarePlan?patient=1316024&_count=10"
        },
        {
          "relation": "next",
          "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/CarePlan?patient=1316024&-pageContext=eNqVUttq4zAQ_ZWW7KMjdHNtCwp1HBUM3TrYSujuizGKGgS2FGSn7JZ-fOUmodsNNC0IRqM5R3M70nZAKmeUA13_JIFstdGyadWTMgNouubZGrBtNtpsQPrmLZqNyqwZ1J9hcnMpP-Wvrdx140U6PSinG1CqwWkfnP3lI6JSQ3YIXd5Mds6w_Wes02umXAe2yvXWsN6sldkwRNAVxNRDURLBKUT-CAjZ2wEQwt8-hCGKphBPIREoZvCKIQpIgsYQgqdZpHUKONuqrbOPulXHXOL6Lsjn18gzzK5tvZmlVZ7VqRBlPlsKXvknfnvLM5GveD1PBfcPj03bq2_Y7DCvi_lhVP3468-F-FXf5ZX4WK60a7-HY4HeU4yEwecAnJwBEHgOQM8B0LkaQt9H6udU3NeLsljlc17-3-YHZ3C7cThf19dBqKfqKryAmkFb82Ov3lPEqOf3lPf8QdTZsqyKsUJCIhrSKIhokuA4ChCNwzDEFCdeawH8Z4-Lkq_yYlm9c3GMYRiTIAoRInjPTWJMSXzk-vZeJi_wFSyNJmU%3D&-pageDirection=NEXT"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/CarePlan/7499295",
          "resource": {
            "resourceType": "CarePlan",
            "id": "7499295",
            "meta": {
              "versionId": "1",
              "lastUpdated": "2017-01-27T16:32:54-06:00"
            },
            "text": {
              "status": "additional",
              "div": "&lt;div>&lt;p>&lt;b>Care Plan&lt;/b>&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: PETERS, TIMOTHY&lt;/p>&lt;p>&lt;b>Description&lt;/b>: &amp;lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot;?&gt;&amp;lt;!DOCTYPE html PUBLIC &quot;-//W3C//DTD XHTML 1.0 Strict//EN&quot; &quot;http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd&quot;&gt;&amp;lt;html xmlns=&quot;http://www.w3.org/1999/xhtml&quot;&gt;&amp;lt;head&gt;&amp;lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=utf-8&quot; /&gt;&amp;lt;title&gt;XSL FO Document&amp;lt;/title&gt;&amp;lt;/head&gt;&amp;lt;body bgcolor=&quot;white&quot; marginwidth=&quot;6&quot; marginheight=&quot;6&quot; leftmargin=&quot;6&quot; topmargin=&quot;6&quot;&gt;&amp;lt;div valign=&quot;top&quot;&gt;&#10;&amp;lt;div style=&quot;font-family: Helvetica,sans-serif,Lucida Sans Unicode; font-size: 12pt; font-weight: normal; font-style: normal; text-decoration: none; color: rgb(0,0,0); background-color: transparent; margin-top: 0.0pt; margin-bottom: 0.0pt; text-indent: 0.0in; margin-left: 0.0in; margin-right: 0.0in; text-align: left; border-style: none; border-width: 0.0pt; border-color: rgb(0,0,0); padding: 0.0pt; white-space: pre-wrap;&quot;&gt;&amp;lt;div style=&quot;font-family: sans-serif,Lucida Sans Unicode; font-size: 24pt; font-weight: bold; margin-top: 16.05pt; margin-bottom: 16.05pt;&quot;&gt;PETERS, TIMOTHY (55 yrs.)&amp;lt;/div&gt;&amp;lt;div style=&quot;font-family: sans-serif,Lucida Sans Unicode; font-size: 18pt; font-weight: bold; margin-top: 14.9pt; margin-bottom: 14.9pt;&quot;&gt;HEAR Score: 2&amp;lt;/div&gt;&amp;lt;div style=&quot;font-family: sans-serif,Lucida Sans Unicode; margin-top: 12.0pt; margin-bottom: 12.0pt;&quot;&gt;Your patient has a LOW RISK HEAR score. Please obtain serial troponin at 0 and 3 hours. If serial troponins are negative, the HEART Pathway recommend discharge from the ED without stress testing or angiography.&amp;lt;/div&gt;&amp;lt;/div&gt;  &amp;lt;/div&gt;&amp;lt;/body&gt;&amp;lt;/html&gt;&lt;/p>&lt;p>&lt;b>Author&lt;/b>: Argonaut, Test&lt;/p>&lt;p>&lt;b>Effective Date/Time&lt;/b>: 2017-01-27T16:32:53-06:00&lt;/p>&lt;/div>"
            },
            "subject": {
              "reference": "Patient/1316024",
              "display": "PETERS, TIMOTHY"
            },
            "status": "completed",
            "context": {
              "reference": "Encounter/2675906"
            },
            "period": {
              "end": "2017-01-27T16:32:53-06:00"
            },
            "author": [
              {
                "reference": "Practitioner/3622007",
                "display": "Argonaut, Test"
              }
            ],
            "modified": "2017-01-27T16:32:54-06:00",
            "category": [
              {
                "coding": [
                  {
                    "system": "http://argonaut.hl7.org",
                    "code": "assess-plan"
                  }
                ]
              }
            ]
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/CarePlan/7499291",
          "resource": {
            "resourceType": "CarePlan",
            "id": "7499291",
            "meta": {
              "versionId": "1",
              "lastUpdated": "2017-01-27T15:27:34-06:00"
            },
            "text": {
              "status": "additional",
              "div": "&lt;div>&lt;p>&lt;b>Care Plan&lt;/b>&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: PETERS, TIMOTHY&lt;/p>&lt;p>&lt;b>Description&lt;/b>: &amp;lt;?xml version=&quot;1.0&quot; encoding=&quot;UTF-8&quot;?&gt;&amp;lt;!DOCTYPE html PUBLIC &quot;-//W3C//DTD XHTML 1.0 Strict//EN&quot; &quot;http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd&quot;&gt;&amp;lt;html xmlns=&quot;http://www.w3.org/1999/xhtml&quot;&gt;&amp;lt;head&gt;&amp;lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=utf-8&quot; /&gt;&amp;lt;title&gt;XSL FO Document&amp;lt;/title&gt;&amp;lt;/head&gt;&amp;lt;body bgcolor=&quot;white&quot; marginwidth=&quot;6&quot; marginheight=&quot;6&quot; leftmargin=&quot;6&quot; topmargin=&quot;6&quot;&gt;&amp;lt;div valign=&quot;top&quot;&gt;&#10;&amp;lt;div style=&quot;font-family: Helvetica,sans-serif,Lucida Sans Unicode; font-size: 12pt; font-weight: normal; font-style: normal; text-decoration: none; color: rgb(0,0,0); background-color: transparent; margin-top: 0.0pt; margin-bottom: 0.0pt; text-indent: 0.0in; margin-left: 0.0in; margin-right: 0.0in; text-align: left; border-style: none; border-width: 0.0pt; border-color: rgb(0,0,0); padding: 0.0pt; white-space: pre-wrap;&quot;&gt;&amp;lt;div style=&quot;font-family: sans-serif,Lucida Sans Unicode; font-size: 24pt; font-weight: bold; margin-top: 16.05pt; margin-bottom: 16.05pt;&quot;&gt;PETERS, TIMOTHY (55 yrs.)&amp;lt;/div&gt;&amp;lt;div style=&quot;font-family: sans-serif,Lucida Sans Unicode; font-size: 18pt; font-weight: bold; margin-top: 14.9pt; margin-bottom: 14.9pt;&quot;&gt;HEAR Score: 4&amp;lt;/div&gt;&amp;lt;div style=&quot;font-family: sans-serif,Lucida Sans Unicode; margin-top: 12.0pt; margin-bottom: 12.0pt;&quot;&gt;Your patient is at risk for ACS! Further cardiac evaluation including serial troponins and stress testing or angiography is recommended.&amp;lt;/div&gt;&amp;lt;/div&gt;  &amp;lt;/div&gt;&amp;lt;/body&gt;&amp;lt;/html&gt;&lt;/p>&lt;p>&lt;b>Author&lt;/b>: Argonaut, Test&lt;/p>&lt;p>&lt;b>Effective Date/Time&lt;/b>: 2017-01-27T15:27:10-06:00&lt;/p>&lt;/div>"
            },
            "subject": {
              "reference": "Patient/1316024",
              "display": "PETERS, TIMOTHY"
            },
            "status": "completed",
            "context": {
              "reference": "Encounter/2675906"
            },
            "period": {
              "end": "2017-01-27T15:27:10-06:00"
            },
            "author": [
              {
                "reference": "Practitioner/3622007",
                "display": "Argonaut, Test"
              }
            ],
            "modified": "2017-01-27T15:27:34-06:00",
            "category": [
              {
                "coding": [
                  {
                    "system": "http://argonaut.hl7.org",
                    "code": "assess-plan"
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
