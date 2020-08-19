# frozen_string_literal: true

module Cerner
  module Resources

    SOARIAN_DEVICE_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '80e6f1f5-5c79-482f-ab46-f27d6031e1c6',
      'meta': {
        'lastUpdated': '2017-04-27T10:52:59.689-04:00'
      },
      'extension': [
        {
          'url': 'http://cerner.hs.fhir.com/StructureDefinition/bundle-result-messages',
          'valueExtension': {
            'url': 'http://cerner.hs.fhir.com/StructureDefinition/bundle-result-messages',
            'extension': [
              {
                'url': 'Severity',
                'valueString': 'info'
              },
              {
                'url': 'Code',
                'valueString': 'papi013'
              },
              {
                'url': 'Message',
                'valueString': 'This represents data charted for a procedure(s) performed on implanted devices '\
                               'with unique device identifiers. It may not represent a comprehensive device list or '\
                               'current device status.  It is the responsibility of the patient or patient '\
                               'representative to confirm all implanted devices to appropriate care providers. '
              }
            ]
          }
        }
      ],
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'base-url/bf615549-44cc-4899-bfa9-2cfd86bf358c/Device?patientId=7568F2F3-FC76-4185-A540-1DB56331A387'\
                 '+++++&_format=json'
        }
      ],
      'entry': [
        {
          'resource': {
            'resourceType': 'Device',
            'text': {
              'status': 'additional',
              'div': '&lt;div ccdRefId="3001">&lt;b>Introduction of Cardiac Pacemaker System via Vein [ Procedure '\
                     'Date: 10/5/2011 12:00 AM ] &lt;/b>&lt;br/>    Device Description: CRT-D DTBA1QQ VIVA QUAD XT '\
                     'US IS4/DF4&lt;br/>    Surgical type: IMPLANT&lt;br/>    Device ID: (01)00643169007222(17)160128'\
                     '(21)BLC200461H&lt;br/>    MRI Safe: Labeling does not contain MRI Safety Information&lt;br/>    '\
                     'Natural Rubber/Latex indicator: No&lt;br/>    Company Name: MEDTRONIC, INC.&lt;br/>    '\
                     'Brand Name: Viva? Quad XT CRT-D&lt;br/>    Model #: DTBA1QQ&lt;br/>    '\
                     'Serial #: BLC200461H&lt;br/>&lt;/div>'
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
                'value': 'BLC200461H'
              }
            ],
            'type': {
              'coding': [
                {
                  'system': 'urn:oid:2.16.840.1.113883.6.303',
                  'code': 'KRG',
                  'display': 'Programmer, pacemaker'
                }
              ],
              'text': 'Programmer, pacemaker'
            }
          }
        }
      ]
    }.freeze
  end
end
