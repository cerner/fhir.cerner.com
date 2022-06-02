# frozen_string_literal: true

module Cerner
  module Resources

    SOARIAN_R4_PERSON_SEARCH_BY_ID_ENTRY ||= {
      "resourceType": 'Bundle',
      "id": '102c30b4-4620-4539-b372-76ca83ad43d3',
      "type": 'searchset',
      "timestamp": '2022-02-20T23:00:27-05:00',
      "entry": [
        {
          "fullUrl": 'https://fhir-myrecord-sc.devcerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/Person/APIUser.5',
          "search": {
            "mode": 'match'
          },
          "resource": {
            "resourceType": 'Person',
            "id": 'APIUser.5',
            "name": [
              {
                "use": 'usual',
                "text": 'proxy, amick',
                "family": 'proxy',
                "given": [
                  'amick'
                ]
              }
            ],
            "telecom": [
              {
                "system": 'email',
                "value": 'amick@gmail.com'
              }
            ],
            "active": true,
            "text": {
              "status": 'generated',
              "div": '<div xmlns=\"http://www.w3.org/1999/xhtml\"><b>Person</b><br /><b>Name</b>:proxy,amick;
                           <br /><b>Contacts</b>:amick@gmail.com;<br /><b>Id</b>:APIUser.5;<br />\r\n</div>'
            }
          }
        }
      ],
      "link": [
        {
          "relation": 'self',
          "url": 'https://fhir-myrecord-sc.devcerner.com/r4/9015d117-44ed-4061-bec7-dabd439dc474/Person?_id=APIUser.5'
        }
      ]
    }.freeze

    SOARIAN_R4_READ_PERSON ||= {
      "resourceType": 'Person',
      "id": 'APIUser.5',
      "name": [
        {
          "use": 'usual',
          "text": 'proxy, amick',
          "family": 'proxy',
          "given": [
            'amick'
          ]
        }
      ],
      "telecom": [
        {
          "system": 'email',
          "value": 'amick@gmail.com'
        }
      ],
      "active": true,
      "text": {
        "status": 'generated',
        "div": '<div xmlns=\"http://www.w3.org/1999/xhtml\"><b>Person</b><br /><b>Name</b>:proxy,amick;<br />
               <b>Contacts</b>:amick@gmail.com;<br /><b>Id</b>:APIUser.5;<br />\r\n</div>'
      }
    }.freeze
  end
end
