# frozen_string_literal: true

module Cerner
  module Resources
    R4_LOCATION_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '4063034',
      'meta': {
        'versionId': '1',
        'lastUpdated': '2015-04-24T20:50:07Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Location</b></p><p><b>Name</b>' \
               ': BW 2 South</p><p><b>Alias</b>:</p><ul><li>BW2S</li></ul><p><b>Managing Organization</b>' \
               ': Baseline West Medical Center</p><p><b>Part of</b>: 4062767</p><p><b>Physical Type</b>' \
               ': Nurse Unit(s)</p><p><b>Status</b>: Active</p></div>'
      },
      'status': 'active',
      'name': 'BW 2 South',
      'alias': [
        'BW2S'
      ],
      'mode': 'instance',
      'telecom': [
        {
          'system': 'phone',
          'value': '555-123-0987'
        }
      ],
      'address': {
        'text': 'Cerner H2 building\nLevel 4\nManyata embassy business park\nNagawara cicle\nBangalore, AA \nIreland',
        'line': [
          'Cerner H2 building',
          'Level 4',
          'Manyata embassy business park',
          'Nagawara cicle'
        ],
        'city': 'Bangalore',
        'district': 'Indian River',
        'state': 'AA',
        'country': 'Ireland'
      },
      'physicalType': {
        'coding': [
          {
            'system': 'https://fhir.cerner.com/2c400054-42d8-4e74-87b7-80b5bd5fde9f/codeSet/222',
            'code': 'NURSEUNIT',
            'display': 'Nurse Unit(s)',
            'userSelected': true
          }
        ],
        'text': 'Nurse Unit(s)'
      },
      'managingOrganization': {
        'reference': 'Organization/589723',
        'display': 'Baseline West Medical Center'
      },
      'partOf': {
        'reference': 'Location/4062767'
      }
    }.freeze

    R4_LOCATION_ENTRY ||= {
      'resourceType': 'Location',
      'id': '4063034',
      'meta': {
        'versionId': '1',
        'lastUpdated': '2015-04-24T20:50:07Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Location</b></p><p><b>Name</b>' \
               ': BW 2 South</p><p><b>Alias</b>:</p><ul><li>BW2S</li></ul><p><b>Managing Organization</b>' \
               ': Baseline West Medical Center</p><p><b>Part of</b>: 4062767</p><p><b>Physical Type</b>' \
               ': Nurse Unit(s)</p><p><b>Status</b>: Active</p></div>'
      },
      'status': 'active',
      'name': 'BW 2 South',
      'alias': [
        'BW2S'
      ],
      'mode': 'instance',
      'telecom': [
        {
          'system': 'phone',
          'value': '555-123-0987'
        }
      ],
      'address': {
        'text': 'Cerner H2 building\nLevel 4\nManyata embassy business park\nNagawara cicle\nBangalore, AA \nIreland',
        'line': [
          'Cerner H2 building',
          'Level 4',
          'Manyata embassy business park',
          'Nagawara cicle'
        ],
        'city': 'Bangalore',
        'district': 'Indian River',
        'state': 'AA',
        'country': 'Ireland'
      },
      'physicalType': {
        'coding': [
          {
            'system': 'https://fhir.cerner.com/2c400054-42d8-4e74-87b7-80b5bd5fde9f/codeSet/222',
            'code': 'NURSEUNIT',
            'display': 'Nurse Unit(s)',
            'userSelected': true
          }
        ],
        'text': 'Nurse Unit(s)'
      },
      'managingOrganization': {
        'reference': 'Organization/589723',
        'display': 'Baseline West Medical Center'
      },
      'partOf': {
        'reference': 'Location/4062767'
      }
    }.freeze
  end
end
