module Cerner
  module Resources

    R4_ACCOUNT_READ ||= {
      "resourceType": "Account",
      "id": "G2572738",
      "text": {
        "status": "generated",
        "div": "&lt;div xmlns=\\&quot;http://www.w3.org/1999/xhtml\\&quot;&gt;&lt;p&gt;&lt;b&gt;Account&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Account Type&lt;/b&gt;: guarantor-balance&lt;/p&gt;&lt;p&gt;&lt;b&gt;Service Period Start Date&lt;/b&gt;: Aug  5, 2019  5:00 A.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;Service Period End Date&lt;/b&gt;: Aug  6, 2019  4:59 A.M. UTC&lt;/p&gt;&lt;/div&gt;"
      },
      "extension": [
        {
          "url": "https://fhir-ehr.cerner.com/r4/StructureDefinition/account-balance",
          "valueMoney": {
            "value": "1250.00",
            "currency": "USD"
          }
        },
        {
          "url": "https://fhir-ehr.cerner.com/r4/StructureDefinition/account-state",
          "valueCodeableConcept": {
            "coding": [
              {
                "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/24451",
                "code": "629234",
                "display": "Ready to bill",
                "userSelected": true
              }
            ],
            "text": "Ready to bill"
          }
        }
      ],
      "status": "active",
      "type": {
        "text": "guarantor-balance"
      },
      "servicePeriod": {
        "start": "2019-08-05T05:00:00Z",
        "end": "2019-08-06T04:59:59Z"
      },
      "partOf": {
        "reference": "Account/F1131724"
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
          "div": "&lt;div xmlns=\\&quot;http://www.w3.org/1999/xhtml\\&quot;&gt;&lt;p&gt;&lt;b&gt;Account&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Account Type&lt;/b&gt;: financial-account&lt;/p&gt;&lt;p&gt;&lt;b&gt;Service Period Start Date&lt;/b&gt;: Sep 27, 2013  4:12 P.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;Account Number&lt;/b&gt;: 10000381&lt;/p&gt;&lt;/div&gt;"
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
