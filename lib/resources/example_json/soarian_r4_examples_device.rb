# frozen_string_literal: true

module Cerner
  module Resources

    SOARIAN_R4_DEVICE_READ_BY_ID ||= {
      "resourceType": 'Device',
      "id": 'A879904FD2FE4B2D90C89FDA84E1285F.9005',
      "meta": {
        "lastUpdated": '2020-11-13T17:02:40-05:00'
      },
      "status": 'active',
      "type": {
        "coding": [
          {
            "system": 'http://snomed.info/sct',
            "code": '700803007',
            "display": 'Orthopedic prosthesis implantation instrument, reusable (physical object)'
          }
        ],
        "text": "Signature Femoral Drill Guide\r\n"
      },
      "patient": {
        "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
        "display": 'Mcgovern,Astrid Santiago'
      },
      "udiCarrier": [
        {
          "deviceIdentifier": '00880304510135',
          "carrierHRF": '(01)00880304510135(17)170301(10)08080707J'
        }
      ],
      "expirationDate": '2017-03-01T00:00:00-05:00',
      "lotNumber": '08080707J',
      "text": {
        "status": 'generated',
        # rubocop:disable Layout/LineLength
        "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><br /><b>Device</b><br /><b>Patient</b>:Mcgovern,Astrid Santiago;<br /><b>Device Type</b>:<br /><b>System</b>:http://snomed.info/sct <b>Code</b>:700803007 <b>Display</b>:Orthopedic prosthesis implantation instrument, reusable (physical object) <b>Text</b>:Signature Femoral Drill Guide\r\n;<br /><b>Device Identifier</b>:00880304510135;<br /><b>Carrier HRF</b>:(01)00880304510135(17)170301(10)08080707J;<br /><b>Expiration Date</b>:2017-03-01T00:00:00-05:00;<br /><b>Lot Number</b>:08080707J;<br /><b>Status</b>:active;<br /></div>"
        # rubocop:enable Layout/LineLength
      }
    }.freeze

    SOARIAN_R4_DEVICE_SEARCH_BY_ID_ENTRY ||= {
      "resourceType": 'Bundle',
      "id": 'd06e8cc5-c320-4c59-99ab-96140ac57305',
      "type": 'searchset',
      "timestamp": '2021-09-30T22:48:31-04:00',
      "entry": [
        {
          "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Device/A879904FD2FE4B2D90C89FDA84E1285F.9005',
          "resource": {
            "resourceType": 'Device',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.9005',
            "meta": {
              "lastUpdated": '2020-11-13T17:02:40-05:00'
            },
            "status": 'active',
            "type": {
              "coding": [
                {
                  "system": 'http://snomed.info/sct',
                  "code": '700803007',
                  "display": 'Orthopedic prosthesis implantation instrument, reusable (physical object)'
                }
              ],
              "text": "Signature Femoral Drill Guide\r\n"
            },
            "patient": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid Santiago'
            },
            "udiCarrier": [
              {
                "deviceIdentifier": '00880304510135',
                "carrierHRF": '(01)00880304510135(17)170301(10)08080707J'
              }
            ],
            "expirationDate": '2017-03-01T00:00:00-05:00',
            "lotNumber": '08080707J',
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><br /><b>Device</b><br /><b>Patient</b>:Mcgovern,Astrid Santiago;<br /><b>Device Type</b>:<br /><b>System</b>:http://snomed.info/sct <b>Code</b>:700803007 <b>Display</b>:Orthopedic prosthesis implantation instrument, reusable (physical object) <b>Text</b>:Signature Femoral Drill Guide\r\n;<br /><b>Device Identifier</b>:00880304510135;<br /><b>Carrier HRF</b>:(01)00880304510135(17)170301(10)08080707J;<br /><b>Expiration Date</b>:2017-03-01T00:00:00-05:00;<br /><b>Lot Number</b>:08080707J;<br /><b>Status</b>:active;<br /></div>"
              # rubocop:enable Layout/LineLength
            }
          }
        }
      ],
      "link": [
        {
          "relation": 'self',
          "url": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Device?_id=A879904FD2FE4B2D90C89FDA84E1285F.9005&_format=json'
        }
      ]
    }.freeze

    SOARIAN_R4_DEVICE_SEARCH_BY_PT_ENTRY ||= {
      "resourceType": 'Bundle',
      "id": '44dad221-3b57-4967-945e-b5dd74968553',
      "type": 'searchset',
      "timestamp": '2021-02-23T15:33:07-05:00',
      "entry": [
        {
          "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Device/A879904FD2FE4B2D90C89FDA84E1285F.9005',
          "resource": {
            "resourceType": 'Device',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.9005',
            "meta": {
              "lastUpdated": '2020-11-13T17:02:40-05:00'
            },
            "status": 'active',
            "type": {
              "coding": [
                {
                  "system": 'http://snomed.info/sct',
                  "code": '700803007',
                  "display": 'Orthopedic prosthesis implantation instrument, reusable (physical object)'
                }
              ],
              "text": "Signature Femoral Drill Guide\r\n"
            },
            "patient": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid Santiago'
            },
            "udiCarrier": [
              {
                "deviceIdentifier": '00880304510135',
                "carrierHRF": '(01)00880304510135(17)170301(10)08080707J'
              }
            ],
            "expirationDate": '2017-03-01T00:00:00-05:00',
            "lotNumber": '08080707J',
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><br /><b>Device</b><br /><b>Patient</b>:Mcgovern,Astrid Santiago;<br /><b>Device Type</b>:<br /><b>System</b>:http://snomed.info/sct <b>Code</b>:700803007 <b>Display</b>:Orthopedic prosthesis implantation instrument, reusable (physical object) <b>Text</b>:Signature Femoral Drill Guide\r\n;<br /><b>Device Identifier</b>:00880304510135;<br /><b>Carrier HRF</b>:(01)00880304510135(17)170301(10)08080707J;<br /><b>Expiration Date</b>:2017-03-01T00:00:00-05:00;<br /><b>Lot Number</b>:08080707J;<br /><b>Status</b>:active;<br /></div>"
              # rubocop:enable Layout/LineLength
            }
          }
        },
        {
          "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Device/A879904FD2FE4B2D90C89FDA84E1285F.9004',
          "resource": {
            "resourceType": 'Device',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.9004',
            "meta": {
              "lastUpdated": '2020-11-13T17:02:40-05:00'
            },
            "status": 'active',
            "type": {
              "coding": [
                {
                  "system": 'http://snomed.info/sct',
                  "code": '463239005',
                  "display": 'Posterior-stabilized total knee prosthesis (physical object)'
                }
              ]
            },
            "patient": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid Santiago'
            },
            "udiCarrier": [
              {
                "deviceIdentifier": '00880304245433',
                "carrierHRF": '(01)00880304245433(11)151230(17)181130(10)155432A(21)54321ABC'
              }
            ],
            "serialNumber": '54321ABC',
            "distinctIdentifier": '54321ABC',
            "manufactureDate": '2016-12-30T00:00:00-05:00',
            "expirationDate": '2018-11-30T00:00:00-05:00',
            "lotNumber": '155432A',
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><br /><b>Device</b><br /><b>Patient</b>:Mcgovern,Astrid Santiago;<br /><b>Device Type</b>:<br /><b>System</b>:http://snomed.info/sct <b>Code</b>:463239005 <b>Display</b>:Posterior-stabilized total knee prosthesis (physical object) ;<br /><b>Distinct Identifier</b>:54321ABC;<br /><b>Device Identifier</b>:00880304245433;<br /><b>Carrier HRF</b>:(01)00880304245433(11)151230(17)181130(10)155432A(21)54321ABC;<br /><b>Manufacture Date</b>:2016-12-30T00:00:00-05:00;<br /><b>Expiration Date</b>:2018-11-30T00:00:00-05:00;<br /><b>Lot Number</b>:155432A;<br /><b>Serial Number</b>:54321ABC;<br /><b>Status</b>:active;<br /></div>'
              # rubocop:enable Layout/LineLength
            }
          }
        }
      ],
      "link": [
        {
          "relation": 'self',
          "url": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Device?patient=A879904FD2FE4B2D90C89FDA84E1285F&_format=json'
        }
      ]
    }.freeze

    SOARIAN_R4_DEVICE_ERROR ||= {
      "resourceType": 'Device',
      "id": '31FBAAF0A2E04188A2DA7685A127B2DD.5',
      "meta": {
        "lastUpdated": '2020-05-18T11:25:59-04:00'
      },
      "status": 'entered-in-error',
      "type": {
        "text": "Signature Femoral Drill Guide\r\n"
      },
      "patient": {
        "reference": 'Patient/31FBAAF0A2E04188A2DA7685A127B2DD',
        "display": 'Trumbower,Robin-Device-other Derick'
      },
      "udiCarrier": [
        {
          "deviceIdentifier": '00880304510135',
          "carrierHRF": '(01)00880304510135(17)170301(10)08080707J'
        }
      ],
      "expirationDate": '2017-03-01T00:00:00-05:00',
      "lotNumber": '08080707J',
      "text": {
        "status": 'generated',
        # rubocop:disable Layout/LineLength
        "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><br /><b>Device</b><br /><b>Patient</b>:Trumbower,Robin-Device-other Derick;<br /><b>Device Type</b>:<br /><b>Text</b>:Signature Femoral Drill Guide\r\n;<br /><b>Device Identifier</b>:00880304510135;<br /><b>Carrier HRF</b>:(01)00880304510135(17)170301(10)08080707J;<br /><b>Expiration Date</b>:2017-03-01T00:00:00-05:00;<br /><b>Lot Number</b>:08080707J;<br /><b>Status</b>:entered-in-error;<br /></div>"
        # rubocop:enable Layout/LineLength
      }
    }.freeze
  end
end
