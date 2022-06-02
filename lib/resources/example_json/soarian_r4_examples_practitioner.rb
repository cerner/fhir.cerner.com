# frozen_string_literal: true

module Cerner
  module Resources

    SOARIAN_R4_PRACTITIONER_SEARCH_BY_ID ||= {
      "resourceType": 'Bundle',
      "id": 'a91a2e79-2379-4fdf-b9bd-4aee22fd5162',
      "type": 'searchset',
      "timestamp": '2021-09-30T04:00:27-04:00',
      "entry": [
        {
          "fullUrl": 'https://fhir-myrecord-sc.cerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/Practitioner/DF2821C049CC47E6A37C6B796DF4CF1D',
          "resource": {
            "resourceType": 'Practitioner',
            "id": 'DF2821C049CC47E6A37C6B796DF4CF1D',
            "meta": {
              "lastUpdated": '2021-01-07T13:56:11-05:00'
            },
            "name": [
              {
                "use": 'official',
                "text": 'Godziszewski,Janet Kris',
                "family": 'Godziszewski',
                "given": [
                  'Janet',
                  'Kris'
                ],
                "suffix": [
                  'MD'
                ]
              }
            ],
            "active": true,
            "identifier": [
              {
                "system": 'http://hl7.org/fhir/sid/us-npi',
                "value": '7051690262'
              }
            ],
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Practitioner</b><br /><b>Practitioner</b>:Godziszewski,Janet Kris<br /><b>Status</b>:Active<br /><b>Identifier:</b><b>System</b>:http://hl7.org/fhir/sid/us-npi,<b>Value</b>:7051690262<br /></div>'
              # rubocop:enable Layout/LineLength
            }
          }
        }
      ],
      "link": [
        {
          "relation": 'self',
          "url": 'https://fhir-myrecord-sc.cerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/Practitioner?_id=DF2821C049CC47E6A37C6B796DF4CF1D&_format=json'
        }
      ]
    }.freeze

    SOARIAN_R4_PRACTITIONER_READ_BY_ID ||= {
      "resourceType": 'Practitioner',
      "id": 'DF2821C049CC47E6A37C6B796DF4CF1D',
      "meta": {
        "lastUpdated": '2021-01-07T13:56:11-05:00'
      },
      "name": [
        {
          "use": 'official',
          "text": 'Godziszewski,Janet Kris',
          "family": 'Godziszewski',
          "given": [
            'Janet',
            'Kris'
          ],
          "suffix": [
            'MD'
          ]
        }
      ],
      "active": true,
      "identifier": [
        {
          "system": 'http://hl7.org/fhir/sid/us-npi',
          "value": '7051690262'
        }
      ],
      "text": {
        "status": 'generated',
        # rubocop:disable Layout/LineLength
        "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Practitioner</b><br /><b>Practitioner</b>:Godziszewski,Janet Kris<br /><b>Status</b>:Active<br /><b>Identifier:</b><b>System</b>:http://hl7.org/fhir/sid/us-npi,<b>Value</b>:7051690262<br /></div>'
        # rubocop:enable Layout/LineLength
      }
    }.freeze
  end
end
