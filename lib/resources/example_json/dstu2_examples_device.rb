# frozen_string_literal: true

module Cerner
  module Resources

    DSTU2_DEVICE ||= {
      'resourceType': 'Device',
      'id': '31539245',
      'meta': {
        'versionId': '1',
        'lastUpdated': '2020-07-06T23:58:35.000Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div><p><b>Device</b></p><p><b>Patient</b>: SMART, NANCY</p><p><b>Type</b>: Pacemaker</p>'\
               '<p><b>Manufacturer</b>: Pacemaker Plus</p><p><b>Manufacture Date</b>: Jan  9, 2017 12:00 P.M. UTC'\
               '</p><p><b>Model</b>: T0765</p><p><b>Serial Number</b>: 17642857292</p><p><b>Lot Number</b>: 7723'\
               '</p><p><b>Owner</b>: Model Clinic</p><p><b>UDI</b>: 1721123408</p></div>'
      },
      'identifier': [
        {
          'type': {
            'coding': [
              {
                'system': 'http://hl7.org/fhir/identifier-type',
                'code': 'SNO',
                'display': 'Serial Number'
              }
            ],
            'text': 'Serial Number'
          },
          'value': '17642857292'
        }
      ],
      'type': {
        'text': 'Pacemaker'
      },
      'manufacturer': 'Pacemaker Plus',
      'model': 'T0765',
      'manufactureDate': '2017-01-09T12:00:00.000Z',
      'expiry': '2040-07-02T10:00:00.000Z',
      'udi': '1721123408',
      'lotNumber': '7723',
      'owner': {
        'display': 'Model Clinic'
      },
      'patient': {
        'reference': 'Patient/12724066',
        'display': 'SMART, NANCY'
      }
    }.freeze

    DSTU2_DEVICE_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '584907b7-4229-4186-8db3-ad48a4b89600',
      'type': 'searchset',
      'total': 1,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Device?patient=12724066'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Device/31539245',
          'resource': DSTU2_DEVICE
        }
      ]
    }.freeze

    DSTU2_DEVICE_BUNDLE_BY_ID ||= {
      'resourceType': 'Bundle',
      'id': '292c3a58-7148-4fae-8971-a7a5568cb3d6',
      'type': 'searchset',
      'total': 1,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Device?_id=31539245'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Device/31539245',
          'resource': DSTU2_DEVICE
        }
      ]
    }.freeze

  end
end
