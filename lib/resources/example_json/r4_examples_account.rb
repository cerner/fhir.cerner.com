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
        "id": "4d239408-a451-436e-a55a-f7e5427f62f6",
        "type": "searchset",
        "total": 1,
        "link": [
            {
                "relation": "self",
                "url": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Account?_id=F703726"
            }
        ],
        "entry": [
            {
                "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Account/F703726",
                "resource": {
                    "resourceType": "Account",
                    "id": "F703726",
                    "text": {
                        "status": "generated",
                        "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Account</b></p><p><b>Account Type</b>: financial-account</p><p><b>Service Period Start Date</b>: Sep 27, 2013  4:12 P.M. UTC</p><p><b>Account Number</b>: 10000381</p></div>"
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
            }
        ]
    }
  end
end
