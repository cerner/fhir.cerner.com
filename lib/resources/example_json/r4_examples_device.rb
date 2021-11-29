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

    R4_DEVICE_ENTERED_IN_ERROR_STATUS ||= {
      'resourceType': 'Device',
      'id': '22118346',
      'meta': {
        'versionId': '1',
        'lastUpdated': '2018-11-27T04:59:58Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Device</b></p><p><b>Status</b>: Entered in Error</p>'\
          '<p><b>Type</b>: Error</p><p><b>Patient</b>: MARSTON, JACK</p></div>'
      },
      'status': 'entered-in-error',
      'type': {
        'coding': [
          {
            'system': 'http://terminology.hl7.org/CodeSystem/data-absent-reason',
            'code': 'error',
            'display': 'Error'
          }
        ],
        'text': 'Error'
      },
      'patient': {
        'reference': 'Patient/166045489',
        'display': 'MARSTON, JACK'
      }
    }.freeze

    R4_DEVICE_PATIENT_ENTRY ||= {
      'resourceType': 'Device',
      'id': '31539245',
      'meta': {
        'versionId': '1',
        'lastUpdated': '2020-07-06T23:58:35Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Device</b></p><p><b>Device Identifier</b>'\
          ': 234556</p><p><b>Unique Device Identifier (UDI)</b>: 1721123408</p><p><b>Status</b>: Active</p>'\
          '<p><b>Manufacturer</b>: Pacemaker Plus</p><p><b>Manufacture Date</b>: Jan  9, 2017 12:00 P.M. UTC</p>'\
          '<p><b>Expiration Date</b>: Jul  2, 2040 10:00 A.M. UTC</p><p><b>Lot Number</b>: 7723</p>'\
          '<p><b>Serial Number</b>: 17642857292</p><p><b>Type</b>: Pacemaker</p><p><b>Model Number</b>: T0765</p>'\
          '<p><b>Patient</b>: SMART, NANCY</p><p><b>Owner</b>: Model Clinic</p></div>'
      },
      'udiCarrier': [
        {
          'deviceIdentifier': '234556',
          'carrierHRF': '1721123408'
        }
      ],
      'status': 'active',
      'manufacturer': 'Pacemaker Plus',
      'manufactureDate': '2017-01-09T12:00:00Z',
      'expirationDate': '2040-07-02T10:00:00Z',
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

    R4_DEVICE_PATIENT_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '93c4fee8-8b83-4124-bb24-2b353a4cc71b',
      'type': 'searchset',
      'total': 1,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Device?patient=12724066'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Device/31539245',
          'resource': {
            'resourceType': 'Device',
            'id': '31539245',
            'meta': {
              'versionId': '1',
              'lastUpdated': '2020-07-06T23:58:35Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Device</b></p><p><b>Device Identifier</b>'\
                    ': 234556</p><p><b>Unique Device Identifier (UDI)</b>: 1721123408</p><p><b>Status</b>: Active</p>'\
                    '<p><b>Manufacturer</b>: Pacemaker Plus</p><p><b>Manufacture Date</b>: Jan  9, 2017 12:00 P.M. UTC'\
                    '</p><p><b>Expiration Date</b>: Jul  2, 2040 10:00 A.M. UTC</p><p><b>Lot Number</b>: 7723</p>'\
                    '<p><b>Serial Number</b>: 17642857292</p><p><b>Type</b>: Pacemaker</p><p><b>Model Number</b>: '\
                    'T0765</p><p><b>Patient</b>: SMART, NANCY</p><p><b>Owner</b>: Model Clinic</p></div>'
            },
            'udiCarrier': [
              {
                'deviceIdentifier': '234556',
                'carrierHRF': '1721123408'
              }
            ],
            'status': 'active',
            'manufacturer': 'Pacemaker Plus',
            'manufactureDate': '2017-01-09T12:00:00Z',
            'expirationDate': '2040-07-02T10:00:00Z',
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
          }
        }
      ]
    }.freeze

    R4_DEVICE_REVINCLUDE_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '11d98db4-e637-4586-af8f-f7256ec5539b',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d//Device?_id=31539245&_revinclude=Provenance%3Atarget'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d//Device/31539245',
          'resource': {
            'resourceType': 'Device',
            'id': '31539245',
            'meta': {
              'versionId': '1',
              'lastUpdated': '2020-10-29T09:40:27.000Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Device</b></p><p><b>Device Identifier</b>'\
                    ': 234556</p><p><b>Unique Device Identifier (UDI)</b>: 1721123408</p><p><b>Status</b>: Active</p>'\
                    '<p><b>Manufacturer</b>: Pacemaker Plus</p><p><b>Manufacture Date</b>: Jan  9, 2017 12:00 P.M. UTC'\
                    '</p><p><b>Expiration Date</b>: Jul  2, 2040 10:00 A.M. UTC</p><p><b>Lot Number</b>: 7723</p>'\
                    '<p><b>Serial Number</b>: 17642857292</p><p><b>Type</b>: Pacemaker</p><p><b>Model Number</b>: '\
                    'T0765</p><p><b>Patient</b>: SMART, NANCY</p><p><b>Owner</b>: Model Clinic</p></div>'
            },
            'udiCarrier': [
              {
                'deviceIdentifier': '234556',
                'carrierHRF': '1721123408'
              }
            ],
            'status': 'active',
            'manufacturer': 'Pacemaker Plus',
            'manufactureDate': '2017-01-09T12:00:00Z',
            'expirationDate': '2040-07-02T10:00:00Z',
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
          },
          'search': {
            'mode': 'match'
          }
        },
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d//Provenance/INT.doc-31539245',
          'resource': {
            'resourceType': 'Provenance',
            'id': 'INT.doc-31539245',
            'meta': {
              'versionId': '31539245',
              'lastUpdated': '2020-07-30T11:20:00Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Provenance</b></p>
              <p><b>Target</b>:</p><ul><li>Device/31539245</li></ul>
              <p><b>Recorded</b>: Jul 30, 2020  6:20 A.M. CDT</p>
              <p><b>Agents</b>:</p>
              <dl><dt>M, SANGEETHA</dt><dd><b>Agent Type</b>: Author</dd>
              <dd><b>Agent Role</b>: Source</dd><dt>DEVENG-DEFAULT-PROV</dt>
              <dd><b>Agent Type</b>: Author</dd><dd><b>Agent Role</b>: Source</dd></dl></div>'
            },
            'target': [
              {
                'reference': 'Device/31539245'
              }
            ],
            'recorded': '2020-07-30T11:20:00Z',
            'agent': [
              {
                'type': {
                  'coding': [
                    {
                      'system': 'http://terminology.hl7.org/CodeSystem/provenance-participant-type',
                      'code': 'author'
                    }
                  ],
                  'text': 'Author'
                },
                'role': [
                  {
                    'coding': [
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/contractsignertypecodes',
                        'code': 'SOURCE'
                      }
                    ],
                    'text': 'Source'
                  }
                ],
                'who': {
                  'reference': 'Practitioner/159105544',
                  'display': 'M, SANGEETHA'
                }
              },
              {
                'type': {
                  'coding': [
                    {
                      'system': 'http://terminology.hl7.org/CodeSystem/provenance-participant-type',
                      'code': 'author'
                    }
                  ],
                  'text': 'Author'
                },
                'role': [
                  {
                    'coding': [
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/contractsignertypecodes',
                        'code': 'SOURCE'
                      }
                    ],
                    'text': 'Source'
                  }
                ],
                'who': {
                  'reference': 'Organization/57535538',
                  'display': 'DEVENG-DEFAULT-PROV'
                }
              }
            ]
          },
          'search': {
            'mode': 'include'
          }
        }
      ]
    }.freeze
  end
end
