# frozen_string_literal: true

module Cerner
  module Resources

    R4_PRACTITIONER_ENTRY ||= {
      'resourceType': 'Practitioner',
      'id': '109413936',
      'meta': {
        'versionId': '0',
        'lastUpdated': '2019-03-07T20:40:34.000Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns=\'http://www.w3.org/1999/xhtml\'><p><b>Practitioner</b></p><p><b>Name</b>: Lombardi, '\
        'Falco Shine</p><p><b>Identifiers</b>: DOCUPIN: F88788, DOCDEA: 887887887, SPI: 16611661, NPI: 6656656, '\
        'PRSNLPRIMID: 12332122</p><p><b>Gender</b>: Male</p><p><b>Status</b>: Active</p></div>'
      },
      'identifier': [
        {
          'use': 'usual',
          'type': {
            'coding': [
              {
                'system': 'http://terminology.hl7.org/CodeSystem/v2-0203',
                'code': 'PRN',
                'display': 'Provider number'
              }
            ],
            'text': 'DOCUPIN'
          },
          '_system': {
            'extension': [
              {
                'url': 'http://hl7.org/fhir/StructureDefinition/data-absent-reason',
                'valueCode': 'unknown'
              }
            ]
          },
          'value': 'F88788',
          'period': {
            'start': '2019-03-07T20:40:35.000Z'
          }
        },
        {
          'use': 'usual',
          'type': {
            'coding': [
              {
                'system': 'http://terminology.hl7.org/CodeSystem/v2-0203',
                'code': 'DEA',
                'display': 'Drug Enforcement Administration registration number'
              }
            ],
            'text': 'DOCDEA'
          },
          'system': 'urn:oid:2.16.840.1.113883.4.814',
          'value': '887887887',
          'period': {
            'start': '2019-03-07T20:40:35.000Z'
          }
        },
        {
          'use': 'usual',
          'type': {
            'coding': [
              {
                'system': 'http://terminology.hl7.org/CodeSystem/v2-0203',
                'code': 'PRN',
                'display': 'Provider number'
              }
            ],
            'text': 'SureScripts Prescriber Index'
          },
          'system': 'urn:oid:2.16.840.1.113883.3.2054',
          'value': '16611661',
          'period': {
            'start': '2019-04-12T18:24:23.000Z'
          }
        },
        {
          'use': 'usual',
          'type': {
            'coding': [
              {
                'system': 'http://terminology.hl7.org/CodeSystem/v2-0203',
                'code': 'NPI',
                'display': 'National provider identifier'
              }
            ],
            'text': 'National Provider Identifier'
          },
          'system': 'http://hl7.org/fhir/sid/us-npi',
          'value': '6656656',
          'period': {
            'start': '2019-03-07T20:40:35.000Z'
          }
        },
        {
          'use': 'usual',
          'type': {
            'text': 'Personnel Primary Identifier'
          },
          'system': 'urn:oid:1.2.243.58',
          'value': '12332122',
          'period': {
            'start': '2019-04-12T18:24:23.000Z'
          }
        }
      ],
      'active': true,
      'name': [
        {
          'use': 'usual',
          'text': 'Lombardi, Falco Shine',
          'family': 'Lombardi',
          'given': [
            'Falco',
            'Shine'
          ],
          'prefix': [
            'Dr.'
          ],
          'suffix': [
            'M.D.'
          ],
          'period': {
            'start': '2019-03-07T20:40:35.000Z'
          }
        }
      ],
      'telecom': [
        {
          'system': 'phone',
          'value': '7861231234',
          'use': 'work'
        },
        {
          'system': 'email',
          'value': 'falco.lombardi@sfox.com',
          'use': 'work'
        }
      ],
      'address': [
        {
          'use': 'work',
          'text': '111 Corneria Dr.\nTallahassee, FL 32304\nUSA',
          'line': [
            '111 Corneria Dr.'
          ],
          'city': 'Tallahassee',
          'district': 'Leon',
          'state': 'FL',
          'postalCode': '32304',
          'country': 'USA'
        }
      ],
      'gender': 'male'
    }.freeze

    R4_PRACTITIONER_PATIENT_ACCESS_ENTRY ||= {
      'resourceType': 'Practitioner',
      'id': '109413936',
      'meta': {
        'versionId': '0',
        'lastUpdated': '2019-03-07T20:40:34.000Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns=\'http://www.w3.org/1999/xhtml\'><p><b>Practitioner</b></p><p><b>Name</b>: Lombardi, '\
        'Falco Shine</p><p><b>Identifiers</b>: SPI: 16611661, NPI: 6656656</p><p><b>Gender</b>: Male'\
        '</p><p><b>Status</b>: Active</p></div>'
      },
      'identifier': [
        {
          'use': 'usual',
          'type': {
            'text': 'SureScripts Prescriber Index'
          },
          'system': 'urn:oid:2.16.840.1.113883.3.2054',
          'value': '16611661',
          'period': {
            'start': '2019-04-12T18:24:23.000Z'
          }
        },
        {
          'use': 'usual',
          'type': {
            'coding': [
              {
                'system': 'http://terminology.hl7.org/CodeSystem/v2-0203',
                'code': 'NPI',
                'display': 'National provider identifier'
              }
            ],
            'text': 'National Provider Identifier'
          },
          'system': 'http://hl7.org/fhir/sid/us-npi',
          'value': '6656656',
          'period': {
            'start': '2019-03-07T20:40:35.000Z'
          }
        }
      ],
      'active': true,
      'name': [
        {
          'use': 'usual',
          'text': 'Lombardi, Falco Shine',
          'family': 'Lombardi',
          'given': [
            'Falco',
            'Shine'
          ],
          'prefix': [
            'Dr.'
          ],
          'suffix': [
            'M.D.'
          ],
          'period': {
            'start': '2019-03-07T20:40:35.000Z'
          }
        }
      ],
      'telecom': [
        {
          'value': 'falco.lombardi@sfox.com'
        }
      ],
      'gender': 'male'
    }.freeze

    R4_PRACTITIONER_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '7ec264d2-c7c7-49b2-8478-22351c82db73',
      'type': 'searchset',
      'total': 1,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Practitioner?_id=109413936'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Practitioner/109413936',
          'resource': R4_PRACTITIONER_ENTRY
        }
      ]
    }.freeze

    R4_PRACTITIONER_PATIENT_ACCESS_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '13230afb-0bbd-45a6-a7c9-9c6d286a2f4c',
      'type': 'searchset',
      'total': 1,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-myrecord.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Practitioner?_id=109413936'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-myrecord.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Practitioner/109413936',
          'resource': R4_PRACTITIONER_PATIENT_ACCESS_ENTRY
        }
      ]
    }.freeze

    R4_PRACTITIONER_CREATE ||= {
      'resourceType': 'Practitioner',
      'active': true,
      'name': [
        {
          'family': 'Williams',
          'given': [
            'Rory', 'James'
          ],
          'prefix': [
            'Dr.'
          ],
          'suffix': [
            'M.D.'
          ],
          'period': {
            'start': '2019-12-01T00:00:00.000Z'
          }
        }
      ],
      'identifier': [
        {
          'type': {
            'coding': [
              {
                'code': 'DEA',
                'system': 'http://terminology.hl7.org/CodeSystem/v2-0203'
              }
            ]
          },
          'system': 'urn:oid:2.16.840.1.113883.4.814',
          'value': 'CW1234563',
          'period': {
            'start': '2019-12-01T00:00:00.000Z',
            'end': '2029-12-01T23:59:59.000Z'
          }
        }
      ]
    }.freeze

  end
end
