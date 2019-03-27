module Cerner
  module Resources

    R4_PATIENT_CREATE ||= {
      "resourceType": "Patient",
      "identifier": [
        {
          "assigner": {
            "reference": "Organization/619848"
          }
        }
      ],
      "active": true,
      "name": [
        {
          "use": "official",
          "family": "Wolf",
          "given": [
            "Person",
            "Name"
          ],
          "period": {
            "start": "2010-05-17T14:54:31.000Z"
          }
        },
        {
          "use": "usual",
          "given": [
            "Bigby"
          ],
          "period": {
            "start": "2012-05-22T15:45:50.000Z"
          }
        }
      ],
      "telecom": [
        {
          "system": "phone",
          "value": "8168229121",
          "use": "home",
          "period": {
            "start": "2012-05-17T15:33:18.000Z"
          }
        }
      ],
      "gender": "male",
      "birthDate": "1990-09-15",
      "address": [
        {
          "use": "home",
          "line": [
            "121212 Metcalf Drive",
            "Apartment 403"
          ],
          "city": "Kansas City",
          "district": "Jackson",
          "state": "KS",
          "postalCode": "64199",
          "country": "United States of America",
          "period": {
            "start": "2012-05-17T15:33:18.000Z"
          }
        }
      ],
      "maritalStatus": {
        "coding": [
          {
            "system": "http://terminology.hl7.org/CodeSystem/v3-NullFlavor",
            "code": "UNK",
            "display": "Unknown"
          }
        ],
        "text": "Unknown"
      },
      "communication": [
        {
          "language": {
            "coding": [
              {
                "system": "urn:ietf:bcp:47",
            	  "code": "en",
                "display": "English"
              }
            ],
            "text": "English"
          },
          "preferred": true
        }
      ],
      "generalPractitioner": [
        {
          "reference": "Practitioner/995932"
        }
      ]
    }
  end
end
