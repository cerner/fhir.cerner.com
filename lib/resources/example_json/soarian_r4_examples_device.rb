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
        "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><br /><b>Device</b><br /><b>Patient</b>:Mcgovern,Astrid Santiago;<br /><b>Device Type</b>:<br /><b>System</b>:http://snomed.info/sct <b>Code</b>:700803007 <b>Display</b>:Orthopedic prosthesis implantation instrument, reusable (physical object) <b>Text</b>:Signature Femoral Drill Guide\r\n;<br /><b>Carrier HRF</b>:(01)00880304510135(17)170301(10)08080707J;<br /><b>Expiration Date</b>:2017-03-01T00:00:00-05:00;<br /><b>Lot Number</b>:08080707J;<br /><b>Status</b>:active;<br /><b>Device Identifier</b>:00880304510135;<br /></div>"
        # rubocop:enable Layout/LineLength
      }
    }.freeze

    SOARIAN_R4_DEVICE_SEARCH_BY_ID_ENTRY ||= {
      "resourceType": 'Bundle',
      "id": '424b4c86-956d-437e-9558-fa12c9e8c04a',
      "type": 'searchset',
      "timestamp": '2022-05-14T13:40:15-04:00',
      "entry": [
        {
          "fullUrl": 'https://fhir-myrecord-sc.cerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/Device/A879904FD2FE4B2D90C89FDA84E1285F.9005',
          "search": {
            "mode": 'match'
          },
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
              "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><br /><b>Device</b><br /><b>Patient</b>:Mcgovern,Astrid Santiago;<br /><b>Device Type</b>:<br /><b>System</b>:http://snomed.info/sct <b>Code</b>:700803007 <b>Display</b>:Orthopedic prosthesis implantation instrument, reusable (physical object) <b>Text</b>:Signature Femoral Drill Guide\r\n;<br /><b>Carrier HRF</b>:(01)00880304510135(17)170301(10)08080707J;<br /><b>Expiration Date</b>:2017-03-01T00:00:00-05:00;<br /><b>Lot Number</b>:08080707J;<br /><b>Status</b>:active;<br /><b>Device Identifier</b>:00880304510135;<br /></div>"
              # rubocop:enable Layout/LineLength
            }
          }
        }
      ],
      "link": [
        {
          "relation": 'self',
          "url": 'https://fhir-myrecord-sc.cerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/Device?patient=A879904FD2FE4B2D90C89FDA84E1285F.9005'
        }
      ]
    }.freeze

    SOARIAN_R4_DEVICE_SEARCH_BY_PT_ENTRY ||= {
      "resourceType": 'Bundle',
      "id": '424b4c86-956d-437e-9558-fa12c9e8c04a',
      "type": 'searchset',
      "timestamp": '2022-05-14T13:40:15-04:00',
      "entry": [
        {
          "fullUrl": 'https://fhir-myrecord-sc.cerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/Device/A879904FD2FE4B2D90C89FDA84E1285F.13004',
          "search": {
            "mode": 'match'
          },
          "resource": {
            "resourceType": 'Device',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.13004',
            "meta": {
              "lastUpdated": '2021-03-02T15:48:46-05:00'
            },
            "status": 'active',
            "type": {
              "coding": [
                {
                  "system": 'http://snomed.info/sct',
                  "code": '714547008',
                  "display": 'Bone matrix implant, human derived (physical object)'
                }
              ],
              "text": 'DBM Putty, 0.5cc'
            },
            "patient": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid Santiago'
            },
            "udiCarrier": [
              {
                "deviceIdentifier": 'W4184030005T0473',
                "carrierHRF": '=/W4184030005T0473=,987654=DN0000000001234=>020177=}014183&,1230000000012345678'
              }
            ],
            "serialNumber": '987654',
            "distinctIdentifier": 'DN0000000001234',
            "manufactureDate": '2014-07-02T00:00:00-04:00',
            "expirationDate": '2020-06-25T00:00:00-04:00',
            "lotNumber": '230000000012345678',
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><br /><b>Device</b><br /><b>Patient</b>:Mcgovern,Astrid Santiago;<br /><b>Device Type</b>:<br /><b>System</b>:http://snomed.info/sct <b>Code</b>:714547008 <b>Display</b>:Bone matrix implant, human derived (physical object) <b>Text</b>:DBM Putty, 0.5cc;<br /><b>Distinct Identifier</b>:DN0000000001234;<br /><b>Carrier HRF</b>:=/W4184030005T0473=,987654=DN0000000001234=&gt;020177=}014183&amp;,1230000000012345678;<br /><b>Manufacture Date</b>:2014-07-02T00:00:00-04:00;<br /><b>Expiration Date</b>:2020-06-25T00:00:00-04:00;<br /><b>Lot Number</b>:230000000012345678;<br /><b>Serial Number</b>:987654;<br /><b>Status</b>:active;<br /><b>Device Identifier</b>:W4184030005T0473;<br /></div>'
              # rubocop:enable Layout/LineLength
            }
          }
        },
        {
          "fullUrl": 'https://fhir-myrecord-sc.cerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/Device/A879904FD2FE4B2D90C89FDA84E1285F.9005',
          "search": {
            "mode": 'match'
          },
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
              "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><br /><b>Device</b><br /><b>Patient</b>:Mcgovern,Astrid Santiago;<br /><b>Device Type</b>:<br /><b>System</b>:http://snomed.info/sct <b>Code</b>:700803007 <b>Display</b>:Orthopedic prosthesis implantation instrument, reusable (physical object) <b>Text</b>:Signature Femoral Drill Guide\r\n;<br /><b>Carrier HRF</b>:(01)00880304510135(17)170301(10)08080707J;<br /><b>Expiration Date</b>:2017-03-01T00:00:00-05:00;<br /><b>Lot Number</b>:08080707J;<br /><b>Status</b>:active;<br /><b>Device Identifier</b>:00880304510135;<br /></div>"
              # rubocop:enable Layout/LineLength
            }
          }
        }
      ],
      "link": [
        {
          "relation": 'self',
          "url": 'https://fhir-myrecord-sc.cerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/Device?patient=A879904FD2FE4B2D90C89FDA84E1285F'
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
