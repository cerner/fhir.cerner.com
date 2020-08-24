# frozen_string_literal: true

module Cerner
  module Resources
    R4_DEVICE ||= {
      'resourceType': 'Device',
      'id': '31539245',
      'meta': {
        'versionId': '1',
        'lastUpdated': '2020-07-06T23:58:35.000Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Device</b></p><p><b>Unique Device Identifier (UDI)'\
               '</b>: 1721123408</p><p><b>Status</b>: Active</p><p><b>Manufacturer</b>: Pacemaker Plus</p><p>'\
               '<b>Manufacture Date</b>: Jan  9, 2017 12:00 P.M. UTC</p><p><b>Expiration Date</b>: Jul  2, '\
               '2040 10:00 A.M. UTC</p><p><b>Lot Number</b>: 7723</p><p><b>Serial Number</b>: 17642857292</p>'\
               '<p><b>Type</b>: Pacemaker</p><p><b>Model Number</b>: T0765</p><p><b>Patient</b>: SMART, NANCY</p>'\
               '<p><b>Owner</b>: Model Clinic</p></div>'
      },
      'identifier': [
        {
          'type': {
            'coding': [
              {
                'system': 'http://terminology.hl7.org/CodeSystem/v2-0203',
                'code': 'SNO',
                'display': 'Serial Number'
              }
            ],
            'text': 'Serial Number'
          },
          'value': '17642857292'
        }
      ],
      'udiCarrier': [
        {
          'carrierHRF': '1721123408'
        }
      ],
      'status': 'active',
      'manufacturer': 'Pacemaker Plus',
      'manufactureDate': '2017-01-09T12:00:00.000Z',
      'expirationDate': '2040-07-02T10:00:00.000Z',
      'lotNumber': '7723',
      'serialNumber': '17642857292',
      'deviceName': [
        {
          'name': 'Pacemaker',
          'type': 'user-friendly-name'
        }
      ],
      'modelNumber': 'T0765',
      'type': {
        'text': 'Pacemaker'
      },
      'patient': {
        'reference': 'Patient/12724066',
        'display': 'SMART, NANCY'
      },
      'owner': {
        'display': 'Model Clinic'
      }
    }.freeze

    R4_DEVICE_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '082eb1ae-1a78-41ff-a551-cfc11ff7c812',
      'type': 'searchset',
      'total': 1,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Device?patient=12724066'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Device/31539245',
          'resource': R4_DEVICE
        }
      ]
    }.freeze
  end
end
