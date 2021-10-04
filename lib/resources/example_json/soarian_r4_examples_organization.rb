# frozen_string_literal: true

module Cerner
  module Resources

    SOARIAN_R4_ORGANIZATION_READ ||= {
      "resourceType": 'Organization',
      "id": 'HCU.1',
      "meta": {
        "lastUpdated": '2020-12-07T12:45:53-05:00'
      },
      "name": 'Health Enterprise',
      "active": true,
      "identifier": [
        {
          "system": 'http://hl7.org/fhir/sid/us-npi',
          "value": '4510000001'
        }
      ],
      "address": [
        {
          "use": 'work',
          "text": '53 Valley Stream Parkway,Malvern,PA,19355,United States',
          "line": [
            '53 Valley Stream Parkway'
          ],
          "city": 'Malvern',
          "state": 'PA',
          "postalCode": '19355',
          "country": 'United States',
          "period": {
            "start": '2020-12-04T09:36:34-05:00'
          }
        },
        {
          "use": 'work',
          "text": '105 N 9th St,Philadelphia,PA,19100,United States',
          "line": [
            '105 N 9th St'
          ],
          "city": 'Philadelphia',
          "state": 'PA',
          "postalCode": '19100',
          "country": 'United States',
          "period": {
            "start": '2014-04-10T15:20:38-04:00'
          }
        },
        {
          "use": 'work',
          "text": '208 Louisiana Ave,Philadelphia,PA,19101,United States',
          "line": [
            '208 Louisiana Ave'
          ],
          "city": 'Philadelphia',
          "state": 'PA',
          "postalCode": '19101',
          "country": 'United States',
          "period": {
            "start": '2014-04-10T15:21:06-04:00'
          }
        },
        {
          "use": 'work',
          "text": '51 Valley Stream Parkway,Philadelphia,PA,19101,United States',
          "line": [
            '51 Valley Stream Parkway'
          ],
          "city": 'Philadelphia',
          "state": 'PA',
          "postalCode": '19101',
          "country": 'United States',
          "period": {
            "start": '2014-04-10T15:21:50-04:00'
          }
        },
        {
          "use": 'work',
          "text": 'PRM Address Street,Philadelphia,PA,19104,United States',
          "line": [
            'PRM Address Street'
          ],
          "city": 'Philadelphia',
          "state": 'PA',
          "postalCode": '19104',
          "country": 'United States',
          "period": {
            "start": '2014-04-10T15:22:16-04:00'
          }
        },
        {
          "use": 'old',
          "text": '15 Wells Ln,Louisville,KY,40201,United States',
          "line": [
            '15 Wells Ln'
          ],
          "city": 'Louisville',
          "state": 'KY',
          "postalCode": '40201',
          "country": 'United States',
          "period": {
            "start": '2021-01-08T09:58:45-05:00'
          }
        }
      ],
      "telecom": [
        {
          "system": 'phone',
          "value": '+16102196300x9082',
          "use": 'work',
          "period": {
            "start": '2020-12-04T09:36:34-05:00'
          }
        },
        {
          "system": 'phone',
          "value": '6102196300',
          "use": 'work',
          "period": {
            "start": '2014-04-10T15:20:38-04:00'
          }
        },
        {
          "system": 'phone',
          "value": '6102196300',
          "use": 'work',
          "period": {
            "start": '2014-04-10T15:21:06-04:00'
          }
        },
        {
          "system": 'phone',
          "value": '610-219-6300',
          "use": 'work',
          "period": {
            "start": '2014-04-10T15:21:50-04:00'
          }
        },
        {
          "system": 'phone',
          "value": '610-219-6300',
          "use": 'work',
          "period": {
            "start": '2014-04-10T15:22:16-04:00'
          }
        },
        {
          "system": 'phone',
          "value": '212-555-9133',
          "use": 'old',
          "period": {
            "start": '2021-01-08T09:58:45-05:00'
          }
        }
      ],
      "text": {
        "status": 'generated',
        # rubocop:disable Layout/LineLength
        "div": "<div xmlns='http://www.w3.org/1999/xhtml'><b>Organization</b><br /><b>Name</b>:Health Enterprise;<br /><b>Status</b>:Active;<br /><b>Identifier</b>:<br /><b>System</b>:http://hl7.org/fhir/sid/us-npi <b>Value</b>:4510000001 ;<br /><b>Telecom</b>:<br /><b>System</b>:phone <b>Value</b>:+16102196300x9082 ;<br /><b>System</b>:phone <b>Value</b>:6102196300 ;<br /><b>System</b>:phone <b>Value</b>:6102196300 ;<br /><b>System</b>:phone <b>Value</b>:610-219-6300 ;<br /><b>System</b>:phone <b>Value</b>:610-219-6300 ;<br /><b>System</b>:phone <b>Value</b>:212-555-9133 ;<br /><b>Address</b>:<br />53 Valley Stream Parkway,Malvern,PA,19355,United States;<br />105 N 9th St,Philadelphia,PA,19100,United States;<br />208 Louisiana Ave,Philadelphia,PA,19101,United States;<br />51 Valley Stream Parkway,Philadelphia,PA,19101,United States;<br />PRM Address Street,Philadelphia,PA,19104,United States;<br />15 Wells Ln,Louisville,KY,40201,United States;<br /></div>"
        # rubocop:enable Layout/LineLength
      }
    }.freeze

    SOARIAN_R4_ORGANIZATION_SEARCH_BY_ID ||= {
      "resourceType": 'Bundle',
      "id": 'de340a64-b768-4d2a-ac8b-dc6496188539',
      "type": 'searchset',
      "timestamp": '2021-03-26T19:02:37-04:00',
      "entry": [
        {
          "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Organization/HCU.1',
          "resource": {
            "resourceType": 'Organization',
            "id": 'HCU.1',
            "meta": {
              "lastUpdated": '2020-12-07T12:45:53-05:00'
            },
            "name": 'Health Enterprise',
            "active": true,
            "identifier": [
              {
                "system": 'http://hl7.org/fhir/sid/us-npi',
                "value": '4510000001'
              }
            ],
            "address": [
              {
                "use": 'work',
                "text": '53 Valley Stream Parkway,Malvern,PA,19355,United States',
                "line": [
                  '53 Valley Stream Parkway'
                ],
                "city": 'Malvern',
                "state": 'PA',
                "postalCode": '19355',
                "country": 'United States',
                "period": {
                  "start": '2020-12-04T09:36:34-05:00'
                }
              },
              {
                "use": 'work',
                "text": '105 N 9th St,Philadelphia,PA,19100,United States',
                "line": [
                  '105 N 9th St'
                ],
                "city": 'Philadelphia',
                "state": 'PA',
                "postalCode": '19100',
                "country": 'United States',
                "period": {
                  "start": '2014-04-10T15:20:38-04:00'
                }
              },
              {
                "use": 'work',
                "text": '208 Louisiana Ave,Philadelphia,PA,19101,United States',
                "line": [
                  '208 Louisiana Ave'
                ],
                "city": 'Philadelphia',
                "state": 'PA',
                "postalCode": '19101',
                "country": 'United States',
                "period": {
                  "start": '2014-04-10T15:21:06-04:00'
                }
              },
              {
                "use": 'work',
                "text": '51 Valley Stream Parkway,Philadelphia,PA,19101,United States',
                "line": [
                  '51 Valley Stream Parkway'
                ],
                "city": 'Philadelphia',
                "state": 'PA',
                "postalCode": '19101',
                "country": 'United States',
                "period": {
                  "start": '2014-04-10T15:21:50-04:00'
                }
              },
              {
                "use": 'work',
                "text": 'PRM Address Street,Philadelphia,PA,19104,United States',
                "line": [
                  'PRM Address Street'
                ],
                "city": 'Philadelphia',
                "state": 'PA',
                "postalCode": '19104',
                "country": 'United States',
                "period": {
                  "start": '2014-04-10T15:22:16-04:00'
                }
              },
              {
                "use": 'old',
                "text": '15 Wells Ln,Louisville,KY,40201,United States',
                "line": [
                  '15 Wells Ln'
                ],
                "city": 'Louisville',
                "state": 'KY',
                "postalCode": '40201',
                "country": 'United States',
                "period": {
                  "start": '2021-01-08T09:58:45-05:00'
                }
              }
            ],
            "telecom": [
              {
                "system": 'phone',
                "value": '+16102196300x9082',
                "use": 'work',
                "period": {
                  "start": '2020-12-04T09:36:34-05:00'
                }
              },
              {
                "system": 'phone',
                "value": '6102196300',
                "use": 'work',
                "period": {
                  "start": '2014-04-10T15:20:38-04:00'
                }
              },
              {
                "system": 'phone',
                "value": '6102196300',
                "use": 'work',
                "period": {
                  "start": '2014-04-10T15:21:06-04:00'
                }
              },
              {
                "system": 'phone',
                "value": '610-219-6300',
                "use": 'work',
                "period": {
                  "start": '2014-04-10T15:21:50-04:00'
                }
              },
              {
                "system": 'phone',
                "value": '610-219-6300',
                "use": 'work',
                "period": {
                  "start": '2014-04-10T15:22:16-04:00'
                }
              },
              {
                "system": 'phone',
                "value": '212-555-9133',
                "use": 'old',
                "period": {
                  "start": '2021-01-08T09:58:45-05:00'
                }
              }
            ],
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": "<div xmlns='http://www.w3.org/1999/xhtml'><b>Organization</b><br /><b>Name</b>:Health Enterprise;<br /><b>Status</b>:Active;<br /><b>Identifier</b>:<br /><b>System</b>:http://hl7.org/fhir/sid/us-npi <b>Value</b>:4510000001 ;<br /><b>Telecom</b>:<br /><b>System</b>:phone <b>Value</b>:+16102196300x9082 ;<br /><b>System</b>:phone <b>Value</b>:6102196300 ;<br /><b>System</b>:phone <b>Value</b>:6102196300 ;<br /><b>System</b>:phone <b>Value</b>:610-219-6300 ;<br /><b>System</b>:phone <b>Value</b>:610-219-6300 ;<br /><b>System</b>:phone <b>Value</b>:212-555-9133 ;<br /><b>Address</b>:<br />53 Valley Stream Parkway,Malvern,PA,19355,United States;<br />105 N 9th St,Philadelphia,PA,19100,United States;<br />208 Louisiana Ave,Philadelphia,PA,19101,United States;<br />51 Valley Stream Parkway,Philadelphia,PA,19101,United States;<br />PRM Address Street,Philadelphia,PA,19104,United States;<br />15 Wells Ln,Louisville,KY,40201,United States;<br /></div>"
              # rubocop:enable Layout/LineLength
            }
          }
        }
      ],
      "link": [
        {
          "relation": 'self',
          "url": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Organization?_id=HCU.1&_format=json'
        }
      ]
    }.freeze

  end
end
