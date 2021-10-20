# frozen_string_literal: true

module Cerner
  module Resources
    R4_SCHEDULE_ENTRY ||= {
      'resourceType': 'Schedule',
      'id': '24477854-21304876-62852027-0',
      'meta': {
        'versionId': '34229204v992283',
        'lastUpdated': '2020-07-06T18:46:08.000Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Schedule</b></p><p><b>Status</b>: Active</p>'\
                 '<p><b>Service Type</b>: Established Patient</p><p><b>Practitioner</b>'\
                 ': Cerner Test, Physician - Primary Care Cerner</p></div>'
      },
      'active': true,
      'serviceType': [
        {
          'coding': [
            {
              'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/14249',
              'code': '24477854',
              'display': 'Established Patient',
              'userSelected': true
            }
          ],
          'text': 'Established Patient'
        }
      ],
      'actor': [
        {
          'reference': 'Practitioner/593923',
          'display': 'Cerner Test, Physician - Primary Care Cerner'
        }
      ]
    }.freeze

    R4_SCHEDULE_PATIENT_ENTRY ||= {
      "resourceType": 'Schedule',
      "id": '4062786-4062906-19875648-0',
      "meta": {
        "versionId": '3423v4vv168v283',
        "lastUpdated": '2020-08-11T15:48:54Z'
      },
      "text": {
        "status": 'generated',
        "div": '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Schedule</b></p>'\
        '<p><b>Status</b>: Active</p><p><b>Service Type</b>: WH Existing Annual</p>'\
        '<p><b>Practitioner</b>: Jones, Amy</p><p><b>Location</b>: BW Women&#39;s</p></div>'
      },
      "active": true,
      "serviceType": [
        {
          "coding": [
            {
              "system": 'https://fhir.cerner.com/2c400054-42d8-4e74-87b7-80b5bd5fde9f/codeSet/14249',
              "code": '4062786',
              "display": 'WH Existing Annual',
              "userSelected": true
            },
            {
              "system": 'http://snomed.info/sct',
              "code": '394586005',
              "display": 'Gynecology (qualifier value)'
            }
          ],
          "text": 'WH Existing Annual'
        }
      ],
      "actor": [
        {
          "reference": 'Practitioner/709937',
          "display": 'Jones, Amy'
        },
        {
          "reference": 'Location/4062906',
          "display": "BW Women's Health"
        }
      ]
    }.freeze

    R4_SCHEDULE_PATIENT_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '69eeaac3-5def-4ffd-8e51-04150cbb5385',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Schedule?'\
                 '_id=4062786-4062906-19875648-0'
        }
      ],
      'entry': [
        'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Schedule/4062786-4062906-19875648-0',
        'resource': R4_SCHEDULE_PATIENT_ENTRY
      ]
    }.freeze

    R4_SCHEDULE_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '69eeaac3-5def-4ffd-8e51-04150cbb5385',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Schedule?'\
                 '_id=24477854-21304876-62852027-0'
        }
      ],
      'entry': [
        'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Schedule/24477854-21304876-62852027-0',
        'resource': R4_SCHEDULE_ENTRY
      ]
    }.freeze
  end
end
