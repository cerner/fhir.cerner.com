module Cerner
  module Resources

    R4_ACCOUNT ||= {
      "resourceType": "Account",
      "id": "1527935",
      "text": {
          "status": "generated",
          "div": "<div><p><b>Account</b></p><p><b>Service Period Start Date</b>: Jun 29, 2009  1:27 P.M. CDT</p><p><b>Service Period End Date</b>: May 14, 2014  7:00 P.M. CDT</p><p><b>Account Type</b>: guarantor-balance</p></div>"
      },
      "extension": [
          {
              "url": "https://fhir-ehr.cerner.com/r4/StructureDefinition/account-balance",
              "valueMoney": {
                  "value": 0,
                  "currency": "USD"
              }
          },
          {
              "url": "https://fhir-ehr.cerner.com/r4/StructureDefinition/account-related-parts",
              "valueReference": {
                  "reference": "Account/655724"
              }
          }
      ],
      "status": "active",
      "type": {
          "text": "guarantor-balance"
      },
      "servicePeriod": {
          "start": "2009-06-29T18:27:00Z",
          "end": "2014-05-15T00:00:00Z"
      },
      "partOf": {
          "reference": "Account/655724"
      }
  }
  end
end
