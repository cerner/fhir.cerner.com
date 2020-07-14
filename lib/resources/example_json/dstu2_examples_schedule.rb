# frozen_string_literal: true

module Cerner
  module Resources

    DSTU2_SCHEDULE_ENTRY ||= {
      'resourceType': 'Schedule',
      'id': '24477854-21304876-62852027-0',
      'text': {
        'status': 'extensions',
        'div': '<div><p><b>Schedule</b></p><p><b>Type</b>: Established Patient</p><p><b>Practitioner</b>: Cerner '\
               'Test, Physician - Primary Care Cerner</p><p><b>Location</b>: MX Clinic 1</p></div>'
      },
      'extension': [
        {
          'url': 'https://fhir-ehr.cerner.com/dstu2/StructureDefinition/scheduling-location',
          'valueReference': {
            'reference': 'Location/21304876',
            'display': 'MX Clinic 1'
          }
        }
      ],
      'type': [
        {
          'text': 'Established Patient'
        }
      ],
      'actor': {
        'reference': 'Practitioner/593923',
        'display': 'Cerner Test, Physician - Primary Care Cerner'
      }
    }.freeze

    DSTU2_SCHEDULE_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': 'b040a360-33e1-472f-8bd8-3f2ef372ec94',
      'type': 'searchset',
      'total': 2,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Schedule?_id=24477854'\
                 '-21304876-62852027-0%2C24477854-21304876-62852027-15'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Schedule/24477854'\
                     '-21304876-62852027-15',
          'resource': {
            'resourceType': 'Schedule',
            'id': '24477854-21304876-62852027-15',
            'text': {
              'status': 'extensions',
              'div': '<div><p><b>Schedule</b></p><p><b>Type</b>: Established Patient</p><p><b>Practitioner'\
                     '</b>: Cerner Test, Physician - Primary Care Cerner</p><p><b>Location</b>: MX Clinic 1</p></div>'
            },
            'extension': [
              {
                'url': 'https://fhir-ehr.cerner.com/dstu2/StructureDefinition/scheduling-location',
                'valueReference': {
                  'reference': 'Location/21304876',
                  'display': 'MX Clinic 1'
                }
              }
            ],
            'type': [
              {
                'text': 'Established Patient'
              }
            ],
            'actor': {
              'reference': 'Practitioner/593923',
              'display': 'Cerner Test, Physician - Primary Care Cerner'
            }
          }
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Schedule'\
                     '/24477854-21304876-62852027-0',
          'resource': DSTU2_SCHEDULE_ENTRY
        }
      ]
    }.freeze

  end
end
