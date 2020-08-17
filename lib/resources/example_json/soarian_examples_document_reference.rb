# frozen_string_literal: true

module Cerner
  module Resources

    SOARIAN_DOCUMENT_REFERENCE_DOCREF_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '3def23df-44bf-4006-ab1c-72d0c176b1b0',
      'meta': {
        'lastUpdated': '2017-06-05T14:18:31.429-04:00'
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
                'valueString': 'papi022'
              },
              {
                'url': 'Message',
                'valueString': 'Information provided is for documents created from 2016-03-01 through 2016-03-29 '\
                               'inclusive.'
              }
            ]
          }
        },
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
                'valueString': 'fsp001'
              },
              {
                'url': 'Message',
                'valueString': 'Date parameter values passed with request were: date=>=2016-03-01T14:15:00&date='\
                               '<2016-03-30T14:15:00'
              }
            ]
          }
        }
      ],
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'base-url/bf615549-44cc-4899-bfa9-2cfd86bf358c/DocumentReference?date=%3E%3D2016-03-01T14%3A15%3A00'\
                 '&date=%3C2016-03-30T14%3A15%3A00&_format=json&patientId=FCC941D7-60B9-491D-BEED-27629E47CD4E'
        }
      ],
      'entry': [
        {
          'resource': {
            'resourceType': 'DocumentReference',
            'masterIdentifier': {
              'system': 'urn:ietf:rfc:3986',
              'value': 'urn:oid:2.16.840.1.113883.10.20.22.1.2'
            },
            'subject': {
              'reference': 'Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E'
            },
            'type': {
              'coding': [
                {
                  'system': 'http://loinc.org',
                  'code': '34133-9',
                  'display': 'Summary of episode note'
                }
              ]
            },
            'author': [
              {
                'display': ' Admin Admin'
              }
            ],
            'created': '2016-03-18T00:00:00-04:00',
            'indexed': '2016-03-18T00:00:00-04:00',
            'status': 'current',
            'docStatus': {
              'coding': [
                {
                  'system': 'http://hl7.org/fhir/composition-status',
                  'code': 'preliminary',
                  'display': 'PRELIMINARY'
                }
              ],
              'text': 'PRELIMINARY'
            },
            'description': 'Summarization of Episode Note',
            'securityLabel': [
              {
                'coding': [
                  {
                    'system': 'http://hl7.org/fhir/v3/Confidentiality',
                    'code': 'N',
                    'display': 'normal'
                  }
                ],
                'text': 'normal'
              }
            ],
            'content': [
              {
                'attachment': {
                  'contentType': 'application/hl7-v3+xml',
                  'language': 'en-US',
                  'data': 'Rm91ciBzY29yZSBhbmQgc2V2ZW4geWVhcnMgYWdvIG91ciBmYXRoZXJzIGJyb3VnaHQgZm9ydGggb24gdGhpcyBjb25'\
                          '0aW5lbnQsIGEgbmV3IG5hdGlvbiwgY29uY2VpdmVkIGluIExpYmVydHksIGFuZCBkZWRpY2F0ZWQgdG8gdGhlIHByb3'\
                          'Bvc2l0aW9uIHRoYXQgYWxsIG1lbiBhcmUgY3JlYXRlZCBlcXVhbC4='
                }
              }
            ]
          }
        },
        {
          'resource': {
            'resourceType': 'DocumentReference',
            'masterIdentifier': {
              'system': 'urn:ietf:rfc:3986',
              'value': 'urn:oid:2.16.840.1.113883.10.20.22.1.2'
            },
            'subject': {
              'reference': 'Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E'
            },
            'type': {
              'coding': [
                {
                  'system': 'http://loinc.org',
                  'code': '34133-9',
                  'display': 'Summary of episode note'
                }
              ]
            },
            'created': '2016-03-01T00:00:00-05:00',
            'indexed': '2016-03-01T00:00:00-05:00',
            'status': 'current',
            'docStatus': {
              'coding': [
                {
                  'system': 'http://hl7.org/fhir/composition-status',
                  'code': 'preliminary',
                  'display': 'PRELIMINARY'
                }
              ],
              'text': 'PRELIMINARY'
            },
            'description': 'Summarization of Episode Note',
            'content': [
              {
                'attachment': {
                  'contentType': 'application/hl7-v3+xml',
                  'language': 'en-US',
                  'url': 'base-url/bf615549-44cc-4899-bfa9-2cfd86bf358c/DocumentRefernce?patientId=FCC941D7-60B9-'\
                         '491D-BEED-27629E47CD4E&attachment=docKey%3D101607B8CE55A4F20111E5B4F8D4AE526B7A48%26objN'\
                         'um%3D1%26created%3D20160301%26indexed%3D20160301'
                }
              }
            ]
          }
        }
      ]
    }.freeze

    SOARIAN_DOCUMENT_REFERENCE_DOCREF_BUNDLE_ATTACHMENT ||= {
      'resourceType': 'Bundle',
      'id': 'f74a5b3b-6b9b-4c92-9039-7e7a631e2b78',
      'meta': {
        'lastUpdated': '2017-06-05T14:20:40.691-04:00'
      },
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'base-url/bf615549-44cc-4899-bfa9-2cfd86bf358c/DocumentReference?_format=json&attachment='\
                 'docKey%3D101607B8CE55A4F20111E5B4F8D4AE526B7A48%26objNum%3D1%26created%3D20160301%26indexed%'\
                 '3D20160301&patientId=FCC941D7-60B9-491D-BEED-27629E47CD4E '
        }
      ],
      'entry': [
        {
          'resource': {
            'resourceType': 'DocumentReference',
            'masterIdentifier': {
              'system': 'urn:ietf:rfc:3986',
              'value': 'urn:oid:2.16.840.1.113883.10.20.22.1.2'
            },
            'subject': {
              'reference': 'Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E '
            },
            'type': {
              'coding': [
                {
                  'system': 'http://loinc.org',
                  'code': '34133-9',
                  'display': 'Summary of episode note'
                }
              ]
            },
            'author': [
              {
                'display': ' Admin Admin'
              }
            ],
            'created': '2016-03-01T00:00:00-05:00',
            'indexed': '2016-03-01T00:00:00-05:00',
            'status': 'current',
            'docStatus': {
              'coding': [
                {
                  'system': 'http://hl7.org/fhir/composition-status',
                  'code': 'preliminary',
                  'display': 'PRELIMINARY'
                }
              ],
              'text': 'PRELIMINARY'
            },
            'description': 'Summarization of Episode Note',
            'securityLabel': [
              {
                'coding': [
                  {
                    'system': 'http://hl7.org/fhir/v3/Confidentiality',
                    'code': 'N',
                    'display': 'normal'
                  }
                ],
                'text': 'normal'
              }
            ],
            'content': [
              {
                'attachment': {
                  'contentType': 'application/hl7-v3+xml',
                  'language': 'en-US',
                  'data': 'Rm91ciBzY29yZSBhbmQgc2V2ZW4geWVhcnMgYWdvIG91ciBmYXRoZXJzIGJyb3VnaHQgZm9ydGggb24gdGhpcyBjb'\
                          '250aW5lbnQsIGEgbmV3IG5hdGlvbiwgY29uY2VpdmVkIGluIExpYmVydHksIGFuZCBkZWRpY2F0ZWQgdG8gdGhlIHBy'\
                          'b3Bvc2l0aW9uIHRoYXQgYWxsIG1lbiBhcmUgY3JlYXRlZCBlcXVhbC4='
                }
              }
            ]
          }
        }
      ]
    }.freeze

  end
end
