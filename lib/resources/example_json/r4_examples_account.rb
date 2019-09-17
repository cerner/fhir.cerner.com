module Cerner
  module Resources

    R4_ACCOUNT_READ ||= {
        "resourceType": "Account",
        "id": "F703726",
        "text": {
            "status": "generated",
            "div": "&lt;div xmlns=\&quot;http://www.w3.org/1999/xhtml\&quot;&gt;&lt;p&gt;&lt;b&gt;Account&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Account Type&lt;/b&gt;: financial-account&lt;/p&gt;&lt;p&gt;&lt;b&gt;Service Period Start Date&lt;/b&gt;: Sep 27, 2013  4:12 P.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;Account Number&lt;/b&gt;: 10000381&lt;/p&gt;&lt;/div&gt;"
        },
        "identifier": [
            {
                "use": "usual",
                "system": "https://fhir.cerner.com/accountnumber",
                "value": "10000381"
            }
        ],
        "status": "active",
        "type": {
            "coding": [
                {
                    "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode",
                    "code": "ACCTRECEIVABLE",
                    "display": "account receivable"
                }
            ],
            "text": "financial-account"
        },
        "subject": [
            {
                "reference": "Patient/1914010"
            }
        ],
        "servicePeriod": {
            "start": "2013-09-27T16:12:15Z"
        },
        "owner": {
            "reference": "Organization/647851"
        }
    }

    R4_ACCOUNT_SEARCH ||= {
        "resourceType": "Bundle",
        "id": "f7049cf3-0b87-4069-9efd-dd7abf386f71",
        "type": "searchset",
        "total": 2,
        "link": [
          {
            "relation": "self",
            "url": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Encounter?account=F703726"
          }
        ],
        "entry": [
          {
            "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Encounter/1713912",
            "resource": {
              "resourceType": "Encounter",
              "id": "1713912",
              "meta": {
                "versionId": "18",
                "lastUpdated": "2013-09-27T16:12:06.000Z"
              },
              "text": {
                "status": "generated",
                "div": "&lt;div xmlns=\&quot;http://www.w3.org/1999/xhtml\&quot;&gt;&lt;p&gt;&lt;b&gt;Encounter&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: Cooper, Charles L&lt;/p&gt;&lt;p&gt;&lt;b&gt;Location&lt;/b&gt;: Baseline West Medical Center, BW Hospital 1&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Inpatient&lt;/p&gt;&lt;p&gt;&lt;b&gt;Service Type&lt;/b&gt;: Cancer Center&lt;/p&gt;&lt;p&gt;&lt;b&gt;Class&lt;/b&gt;: inpatient encounter&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: In Progress&lt;/p&gt;&lt;p&gt;&lt;b&gt;Period Start Date&lt;/b&gt;: Sep 27, 2013  4:11 P.M. UTC&lt;/p&gt;&lt;/div&gt;"
              },
              "identifier": [
                {
                  "use": "usual",
                  "type": {
                    "coding": [
                      {
                        "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/319",
                        "code": "1077",
                        "display": "FIN NBR",
                        "userSelected": true
                      }
                    ],
                    "text": "FIN NBR"
                  },
                  "system": "urn:oid:4.4.4.4.4.4",
                  "value": "20000522",
                  "period": {
                    "start": "2013-09-27T16:12:05.000Z"
                  }
                }
              ],
              "status": "in-progress",
              "class": {
                "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode",
                "code": "IMP",
                "display": "inpatient encounter",
                "userSelected": false
              },
              "type": [
                {
                  "coding": [
                    {
                      "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/71",
                      "code": "309308",
                      "display": "Inpatient",
                      "userSelected": true
                    },
                    {
                      "system": "http://terminology.hl7.org/CodeSystem/v2-0004",
                      "code": "I",
                      "display": "Inpatient",
                      "userSelected": false
                    }
                  ],
                  "text": "Inpatient"
                }
              ],
              "serviceType": {
                "coding": [
                  {
                    "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/34",
                    "code": "313002",
                    "display": "Cancer Center",
                    "userSelected": true
                  }
                ],
                "text": "Cancer Center"
              },
              "subject": {
                "reference": "Patient/1914010",
                "display": "Cooper, Charles L"
              },
              "period": {
                "start": "2013-09-27T16:11:00.000Z"
              },
              "location": [
                {
                  "location": {
                    "reference": "Location/633868",
                    "display": "Baseline West Medical Center, BW Hospital 1"
                  },
                  "status": "active"
                }
              ],
              "serviceProvider": {
                "reference": "Organization/589723"
              }
            }
          },
          {
            "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Encounter/1716023",
            "resource": {
              "resourceType": "Encounter",
              "id": "1716023",
              "meta": {
                "versionId": "20",
                "lastUpdated": "2013-09-30T22:29:37.000Z"
              },
              "text": {
                "status": "generated",
                "div": "&lt;div xmlns=\&quot;http://www.w3.org/1999/xhtml\&quot;&gt;&lt;p&gt;&lt;b&gt;Encounter&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: Cooper, Charles L&lt;/p&gt;&lt;p&gt;&lt;b&gt;Location&lt;/b&gt;: Baseline West Medical Center, BW Hospital 1&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Inpatient&lt;/p&gt;&lt;p&gt;&lt;b&gt;Service Type&lt;/b&gt;: Cancer Center&lt;/p&gt;&lt;p&gt;&lt;b&gt;Class&lt;/b&gt;: inpatient encounter&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: In Progress&lt;/p&gt;&lt;p&gt;&lt;b&gt;Period Start Date&lt;/b&gt;: Oct  1, 2013  9:56 P.M. UTC&lt;/p&gt;&lt;/div&gt;"
              },
              "identifier": [
                {
                  "use": "usual",
                  "type": {
                    "coding": [
                      {
                        "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/319",
                        "code": "1077",
                        "display": "FIN NBR",
                        "userSelected": true
                      }
                    ],
                    "text": "FIN NBR"
                  },
                  "system": "urn:oid:4.4.4.4.4.4",
                  "value": "20000563",
                  "period": {
                    "start": "2013-09-28T21:56:48.000Z"
                  }
                }
              ],
              "status": "in-progress",
              "class": {
                "system": "http://terminology.hl7.org/CodeSystem/v3-ActCode",
                "code": "IMP",
                "display": "inpatient encounter",
                "userSelected": false
              },
              "type": [
                {
                  "coding": [
                    {
                      "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/71",
                      "code": "309308",
                      "display": "Inpatient",
                      "userSelected": true
                    },
                    {
                      "system": "http://terminology.hl7.org/CodeSystem/v2-0004",
                      "code": "I",
                      "display": "Inpatient",
                      "userSelected": false
                    }
                  ],
                  "text": "Inpatient"
                }
              ],
              "serviceType": {
                "coding": [
                  {
                    "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/34",
                    "code": "313002",
                    "display": "Cancer Center",
                    "userSelected": true
                  }
                ],
                "text": "Cancer Center"
              },
              "subject": {
                "reference": "Patient/1914010",
                "display": "Cooper, Charles L"
              },
              "period": {
                "start": "2013-10-01T21:56:00.000Z"
              },
              "location": [
                {
                  "location": {
                    "reference": "Location/633868",
                    "display": "Baseline West Medical Center, BW Hospital 1"
                  },
                  "status": "active"
                }
              ],
              "serviceProvider": {
                "reference": "Organization/589723"
              }
            }
          }
        ]
      }


  end
end
