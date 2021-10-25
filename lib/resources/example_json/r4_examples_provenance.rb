# frozen_string_literal: true

module Cerner
  module Resources

    R4_PROVENANCE_ENTRY ||= {
      'resourceType': 'Provenance',
      'id': 'doc-881057',
      'meta': {
        'versionId': '881057',
        'lastUpdated': '2019-10-25T14:57:43Z'
      },
      'text': {
        'status': 'generated',
        'div': '&lt;div xmlns="http://www.w3.org/1999/xhtml">&lt;p>&lt;b>Provenance&lt;/b>&lt;/p>&lt;p>&lt;b>'\
        'Target&lt;/b>:&lt;/p>&lt;ul>&lt;li>DocumentReference/881049&lt;/li>&lt;/ul>&lt;p>&lt;b>Recorded&lt;/b>'\
        ': Oct 25, 2019  9:57 A.M. CDT&lt;/p>&lt;p>&lt;b>Agents&lt;/b>:&lt;/p>&lt;dl>&lt;dt>'\
        'Baseline East Medical Center&lt;/dt>&lt;dd>&lt;b>Agent Type&lt;/b>: Author&lt;/dd>&lt;dd>&lt;b>'\
        'Agent Role&lt;/b>: Source&lt;/dd>&lt;/dl>&lt;p>&lt;b>Entity Source&lt;'\
        '/b>: DocumentReference/S-202&lt;/p>&lt;/div>'
      },
      'target': [
        {
          'reference': 'DocumentReference/881049'
        }
      ],
      'recorded': '2019-10-25T14:57:43Z',
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
            'reference': 'Organization/619848',
            'display': 'Baseline East Medical Center'
          }
        }
      ],
      'entity': [
        {
          'role': 'source',
          'what': {
            'reference': 'DocumentReference/S-202'
          }
        }
      ]
    }.freeze

    R4_PROVENANCE_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '160ad230-6a5c-4813-96e2-2b36be102145',
      'type': 'searchset',
      'total': 1,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Provenance?_id=doc-881057'
        }
      ],
      'entry': [
        'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Provenance/doc-881057',
        'resource': R4_PROVENANCE_ENTRY
      ]
    }.freeze

    R4_PROVENANCE_CREATE ||= {
      'resourceType': 'Provenance',
      'target': [
        {
          'reference': 'DocumentReference/881049'
        }
      ],
      'recorded': '2019-10-25T14:57:43Z',
      'agent': [
        {
          'type': {
            'coding': [
              {
                'system': 'http://hl7.org/fhir/us/core/CodeSystem/us-core-provenance-participant-type',
                'code': 'transmitter'
              }
            ]
          },
          'role': [
            {
              'coding': [
                {
                  'system': 'http://terminology.hl7.org/CodeSystem/contractsignertypecodes',
                  'code': 'SOURCE'
                }
              ]
            }
          ],
          'who': {
            'reference': 'Organization/619848'
          }
        }
      ],
      'entity': [
        {
          'role': 'source',
          'what': {
            'reference': 'DocumentReference/S-201'
          }
        }
      ]
    }.freeze

    R4_PROVENANCE_PATIENT_ACCESS_ENTRY ||= {
      'resourceType': 'Provenance',
      'id': 'all-1595070',
      'meta': {
          'versionId': '1595070',
          'lastUpdated': '2019-12-09T16:49:43Z'
      },
      'text': {
          'status': 'generated',
          'div': '<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Provenance</b></p><p><b>Target</b>:'\
          '</p><ul><li>AllergyIntolerance/S-1595069</li></ul><p><b>Recorded</b>: Dec  9, 2019 10:49 A.M. CST</p>'\
          '<p><b>Agents</b>:</p><dl><dt>Unknown</dt><dd><b>Agent Type</b>: Author</dd><dd><b>Agent Role</b>: Source'\
          '</dd></dl><p><b>Entity Source</b>: DocumentReference/S-200</p></div>'
      },
      'target': [
        {
          'reference': 'AllergyIntolerance/S-1595069'
        }
      ],
      'recorded': '2019-12-09T16: 49: 43Z',
      'agent': [
        {
          'type': {
            'coding': [
              {
                'system': 'http: //terminology.hl7.org/CodeSystem/provenance-participant-type',
                'code': 'author'
              }
            ],
            'text': 'Author'
          },
          'role': [
            {
              'coding': [
                {
                  'system': 'http: //terminology.hl7.org/CodeSystem/contractsignertypecodes',
                  'code': 'SOURCE'
                }
              ],
              'text': 'Source'
            }
          ],
          'who': {
            'reference': 'Organization/50',
            'display': 'Unknown'
          }
        }
      ],
      'entity': [
        {
          'role': 'source',
          'what': {
            'reference': 'DocumentReference/S-200'
          }
        }
      ]
    }.freeze

    R4_PROVENANCE_PATIENT_ACCESS_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '3ddac8f3-0c3a-41fd-bd0a-1daeb6a42db9',
      'type': 'searchset',
      'total': 1,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Provenance?_id=all-1595070'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Provenance/all-1595070',
          'resource': R4_PROVENANCE_PATIENT_ACCESS_ENTRY
        }
      ]
    }.freeze
  end
end
