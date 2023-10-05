# frozen_string_literal: true

module Cerner
  module Resources

    R4_SLOT_ENTRY ||= {
      'resourceType': 'Slot',
      'id': '4047611-32216049-61518614-0',
      'meta': {
        'versionId': '3423957v2380283',
        'lastUpdated': '2020-05-08T18:13:55Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Slot</b></p>'\
        '<p><b>Service Type</b>: Surgery Rapid</p><p><b>Start</b>: Jan 23, 2017  6:00 A.M. UTC</p>'\
        '<p><b>End</b>: Jan 23, 2017  7:00 A.M. UTC</p><p><b>Schedule Reference</b>'\
        ': 4047611-32216049-61518614-0</p><p><b>Status</b>: Free</p></div>'
      },
      'extension': [
        {
          'valueReference': {
            'reference': 'Location/32216049'
          },
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/scheduling-location'
        }
      ],
      'serviceType': [
        {
          'coding': [
            {
              'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/14249',
              'code': '4047611',
              'display': 'Surgery Rapid',
              'userSelected': true
            },
            {
              'system': 'http://snomed.info/sct',
              'code': '394576009',
              'display': 'Accident & emergency (qualifier value)',
              'userSelected': false
            }
          ],
          'text': 'Surgery Rapid'
        }
      ],
      'schedule': {
        'reference': 'Schedule/4047611-32216049-61518614-0'
      },
      'status': 'free',
      'start': '2017-01-23T06:00:00Z',
      'end': '2017-01-23T07:00:00Z'
    }.freeze

    R4_SLOT_PATIENT_ACCESS_ENTRY ||= {
      'resourceType': 'Slot',
      'id': '4047611-32216049-61518614-0',
      'meta': {
        'versionId': '3423957v2380283',
        'lastUpdated': '2020-05-08T18:13:55Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Slot</b></p>'\
        '<p><b>Service Type</b>: Patient Friendly Display - Surgery Rapid</p>'\
        '<p><b>Start</b>: Jan 23, 2017  6:00 A.M. UTC</p><p><b>End</b>: Jan 23, 2017  7:00 A.M. UTC</p>'\
        '<p><b>Schedule Reference</b>: 4047611-32216049-61518614-0</p><p><b>Status</b>: Free</p></div>'
      },
      'extension': [
        {
          'valueReference': {
            'reference': 'Location/32216049'
          },
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/scheduling-location'
        }
      ],
      'serviceType': [
        {
          'coding': [
            {
              'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/14249',
              'code': '4047611',
              'display': 'Patient Friendly Display - Surgery Rapid',
              'userSelected': true
            },
            {
              'system': 'http://snomed.info/sct',
              'code': '394576009',
              'display': 'Accident & emergency (qualifier value)',
              'userSelected': false
            }
          ],
          'text': 'Patient Friendly Display - Surgery Rapid'
        }
      ],
      'schedule': {
        'reference': 'Schedule/4047611-32216049-61518614-0'
      },
      'status': 'free',
      'start': '2017-01-23T06:00:00Z',
      'end': '2017-01-23T07:00:00Z'
    }.freeze

    R4_SLOT_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': 'bf750997-bfdd-4ac3-bcc2-34776d05b46e',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Slot?service-type'\
          '=https%3A%2F%2Ffhir.cerner.com%2Fec2458f2-1e24-41c8-b71b-0e701af7583d%2FcodeSet%2F14249%7'\
          'C4047611&-location=32216049&start=ge2016-01-23T22%3A05%3A47Z&start=lt2020-06-08T18%3A13%3A55Z&_count=50'
        },
        {
          'relation': 'next',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Slot?-pageContext=5cafd537-be28-45ad-80ed-c5bc2a266678&-pageDirection=NEXT'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Slot/4047611-32216049-61518614-0',
          'resource': R4_SLOT_ENTRY,
          'search': {
            'mode': 'match'
          }
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Slot/4047611-32216049-61518614-5',
          'resource': {
            'resourceType': 'Slot',
            'id': '4047611-32216049-61518614-5',
            'meta': {
              'versionId': '3423v2289979283',
              'lastUpdated': '2020-07-22T20:02:03Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Slot</b></p>'\
                     '<p><b>Service Type</b>: Surgery Rapid</p><p><b>Start</b>: May  8, 2020  2:00 P.M. UTC</p>'\
                     '<p><b>End</b>: May  8, 2020  3:00 P.M. UTC</p><p><b>Schedule Reference</b>'\
                     ': 4047611-32216049-61518614-5</p><p><b>Status</b>: Free</p></div>'
            },
            'extension': [
              {
                'valueReference': {
                  'reference': 'Location/39997807'
                },
                'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/scheduling-location'
              }
            ],
            'serviceType': [
              {
                'coding': [
                  {
                    'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/14249',
                    'code': '4047611',
                    'display': 'Surgery Rapid',
                    'userSelected': true
                  },
                  {
                    'system': 'http://snomed.info/sct',
                    'code': '394576009',
                    'display': 'Accident & emergency (qualifier value)',
                    'userSelected': false
                  }
                ],
                'text': 'Surgery Rapid'
              }
            ],
            'schedule': {
              'reference': 'Schedule/4047611-32216049-61518614-5'
            },
            'status': 'free',
            'start': '2020-07-22T22:00:00Z',
            'end': '2020-07-22T23:00:00Z'
          },
          'search': {
            'mode': 'match'
          }
        }
      ]
    }.freeze

    R4_SLOT_PATIENT_ACCESS_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': 'bf750997-bfdd-4ac3-bcc2-34776d05b46e',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Slot?service-type'\
          '=https%3A%2F%2Ffhir.cerner.com%2Fec2458f2-1e24-41c8-b71b-0e701af7583d%2FcodeSet%2F14249%7'\
          'C4047611&-location=32216049&start=ge2016-01-23T22%3A05%3A47Z&start=lt2020-06-08T18%3A13%3A55Z&_count=50'
        },
        {
          'relation': 'next',
          'url': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Slot?-pageContext=5cafd537-be28-45ad-80ed-c5bc2a266678&-pageDirection=NEXT'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Slot/4047611-32216049-61518614-0',
          'resource': R4_SLOT_PATIENT_ACCESS_ENTRY,
          'search': {
            'mode': 'match'
          }
        },
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Slot/4047611-32216049-61518614-5',
          'resource': {
            'resourceType': 'Slot',
            'id': '4047611-32216049-61518614-5',
            'meta': {
              'versionId': '3423v2289979283',
              'lastUpdated': '2020-07-22T20:02:03Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Slot</b></p>'\
                     '<p><b>Service Type</b>: Patient Friendly Display - Surgery Rapid</p>'\
                     '<p><b>Start</b>: May  8, 2020  2:00 P.M. UTC</p><p><b>End</b>: May  8, 2020  3:00 P.M. UTC</p>'\
                     '<p><b>Schedule Reference</b>: 4047611-32216049-61518614-5</p><p><b>Status</b>: Free</p></div>'
            },
            'extension': [
              {
                'valueReference': {
                  'reference': 'Location/39997807'
                },
                'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/scheduling-location'
              }
            ],
            'serviceType': [
              {
                'coding': [
                  {
                    'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/14249',
                    'code': '4047611',
                    'display': 'Patient Friendly Display - Surgery Rapid',
                    'userSelected': true
                  },
                  {
                    'system': 'http://snomed.info/sct',
                    'code': '394576009',
                    'display': 'Accident & emergency (qualifier value)',
                    'userSelected': false
                  }
                ],
                'text': 'Patient Friendly Display - Surgery Rapid'
              }
            ],
            'schedule': {
              'reference': 'Schedule/4047611-32216049-61518614-5'
            },
            'status': 'free',
            'start': '2020-07-22T22:00:00Z',
            'end': '2020-07-22T23:00:00Z'
          },
          'search': {
            'mode': 'match'
          }
        }
      ]
    }.freeze

    R4_SLOT_BUNDLE_INCLUDE_SCHEDULE ||= {
      'resourceType': 'Bundle',
      'id': 'f8dd806e-62bb-4657-8912-9c2705864d40',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Slot?service-type'\
                '=https%3A%2F%2Ffhir.cerner.com%2Fec2458f2-1e24-41c8-b71b-0e701af7583d%2FcodeSet%2F14249%7C'\
                '4047611&start=ge2016-01-23T22%3A05%3A47Z&start=lt2020-06-08T18%3A13%3A55Z&_include=Slot%3A'\
                'schedule&_count=50'
        },
        {
          'relation': 'next',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Slot?_include'\
                '=Slot%3Aschedule&-pageContext=2d46d307-9a4c-4dc7-a1c2-88f1282d5aec&-pageDirection=NEXT'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Slot/4047611-32216049-61518614-0',
          'resource': R4_SLOT_ENTRY,
          'search': {
            'mode': 'match'
          }
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Schedule/4047611-32216049-61518614-0',
          'resource': {
            'resourceType': 'Schedule',
            'id': '4047611-32216049-61518614-0',
            'meta': {
              'versionId': '3423v4vv168v283',
              'lastUpdated': '2020-08-11T15:48:54Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Slot</b></p>'\
                     '<p><b>Service Type</b>: Surgery Rapid</p><p><b>Start</b>: May  8, 2020  2:00 P.M. UTC</p>'\
                     '<p><b>End</b>: May  8, 2020  3:00 P.M. UTC</p><p><b>Status</b>: Free</p></div>'
            },
            'active': true,
            'serviceType': [
              {
                'coding': [
                  {
                    'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/14249',
                    'code': '4047611',
                    'display': 'Surgery Rapid',
                    'userSelected': true
                  },
                  {
                    'system': 'http://snomed.info/sct',
                    'code': '394576009',
                    'display': 'Accident & emergency (qualifier value)',
                    'userSelected': false
                  }
                ],
                'text': 'Surgery Rapid'
              }
            ],
            'actor': [
              {
                'display': 'OR Add-On 02'
              }
            ]
          },
          'search': {
            'mode': 'include'
          }
        }
      ]
    }.freeze

    R4_SLOT_PATIENT_ACCESS_BUNDLE_INCLUDE_SCHEDULE ||= {
      'resourceType': 'Bundle',
      'id': 'f8dd806e-62bb-4657-8912-9c2705864d40',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Slot?service-type'\
                '=https%3A%2F%2Ffhir.cerner.com%2Fec2458f2-1e24-41c8-b71b-0e701af7583d%2FcodeSet%2F14249%7C'\
                '4047611&start=ge2016-01-23T22%3A05%3A47Z&start=lt2020-06-08T18%3A13%3A55Z&_include=Slot%3A'\
                'schedule&_count=50'
        },
        {
          'relation': 'next',
          'url': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Slot?_include'\
                '=Slot%3Aschedule&-pageContext=2d46d307-9a4c-4dc7-a1c2-88f1282d5aec&-pageDirection=NEXT'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Slot/4047611-32216049-61518614-0',
          'resource': R4_SLOT_PATIENT_ACCESS_ENTRY,
          'search': {
            'mode': 'match'
          }
        },
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Schedule/4047611-32216049-61518614-0',
          'resource': {
            'resourceType': 'Schedule',
            'id': '4047611-32216049-61518614-0',
            'meta': {
              'versionId': '3423v4vv168v283',
              'lastUpdated': '2020-08-11T15:48:54Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Slot</b></p>'\
                     '<p><b>Service Type</b>: Patient Friendly Display - Surgery Rapid</p>'\
                     '<p><b>Start</b>: May  8, 2020  2:00 P.M. UTC</p><p><b>End</b>: May  8, 2020  3:00 P.M. UTC</p>'\
                     '<p><b>Status</b>: Free</p></div>'
            },
            'active': true,
            'serviceType': [
              {
                'coding': [
                  {
                    'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/14249',
                    'code': '4047611',
                    'display': 'Patient Friendly Display - Surgery Rapid',
                    'userSelected': true
                  },
                  {
                    'system': 'http://snomed.info/sct',
                    'code': '394576009',
                    'display': 'Accident & emergency (qualifier value)',
                    'userSelected': false
                  }
                ],
                'text': 'Patient Friendly Display - Surgery Rapid'
              }
            ],
            'actor': [
              {
                'display': 'OR Add-On 02'
              }
            ]
          },
          'search': {
            'mode': 'include'
          }
        }
      ]
    }.freeze

    R4_SLOT_BUNDLE_INCLUDE_PRACTITIONER ||= {
      'resourceType': 'Bundle',
      'id': 'f8dd806e-62bb-4657-8912-9c2705864d40',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Slot?service-type'\
                '=https%3A%2F%2Ffhir.cerner.com%2Fec2458f2-1e24-41c8-b71b-0e701af7583d%2FcodeSet%2F14249%7C'\
                '4047611&start=ge2016-01-23T22%3A05%3A47Z&start=lt2020-06-08T18%3A13%3A55Z&_include=Schedule%3A'\
                'actor%3APractitionerQ&_count=50'
        },
        {
          'relation': 'next',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Slot?_include'\
                '=Schedule%3Aactor%3APractitioner&-pageContext=2d46d307-9a4c-4dc7-a1c2-88f1282d5aec&-pageDirection=NEXT'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Slot/4047611-32216049-61518614-0',
          'resource': R4_SLOT_ENTRY,
          'search': {
            'mode': 'match'
          }
        },
        {
          "fullUrl": 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Practitioner/593923',
          "resource": {
            "resourceType": 'Practitioner',
            "id": '593923',
            "meta": {
              "versionId": '21',
              "lastUpdated": '2020-07-23T16:37:26.000Z'
            },
            "text": {
              "status": 'generated',
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Practitioner</b></p><p><b>Name</b>:'\
              'Applegate MD, Christina</p><p><b>Identifiers</b>: EXTERNALID: 1221221111, EXTERNALID:'\
              'CERNERPHYSPCP, MESSAGING: 593923</p><p><b>Status</b>: Active</p></div>'
            },
            "extension": [
              {
                "valueBoolean": true,
                "url": 'https://fhir-ehr.cerner.com/r4/StructureDefinition/is-physician'
              }
            ],
            "identifier": [
              {
                "use": 'usual',
                "type": {
                  "text": 'External Identifier'
                },
                "system": 'urn:oid:2.16.840.1.113883.3.42.10001.100001.12',
                "value": '1221221111',
                "period": {
                  "start": '2021-07-13T20:12:34.000Z'
                }
              },
              {
                "use": 'usual',
                "type": {
                  "text": 'External Identifier'
                },
                "_system": {
                  "extension": [
                    {
                      "valueCode": 'unknown',
                      "url": 'http://hl7.org/fhir/StructureDefinition/data-absent-reason'
                    }
                  ]
                },
                "value": 'CERNERPHYSPCP',
                "period": {
                  "start": '2016-04-28T15:02:02.000Z'
                }
              },
              {
                "use": 'usual',
                "type": {
                  "coding": [
                    {
                      "system": 'http://terminology.hl7.org/CodeSystem/v2-0203',
                      "code": 'U',
                      "display": 'Unspecified identifier'
                    }
                  ],
                  "text": 'Messaging'
                },
                "_system": {
                  "extension": [
                    {
                      "valueCode": 'unknown',
                      "url": 'http://hl7.org/fhir/StructureDefinition/data-absent-reason'
                    }
                  ]
                },
                "value": '593923',
                "period": {
                  "start": '2015-08-18T05:00:00.000Z'
                }
              }
            ],
            "active": true,
            "name": [
              {
                "use": 'usual',
                "text": 'Applegate MD, Christina',
                "family": 'Applegate',
                "given": [
                  'Christina'
                ],
                "suffix": [
                  'MD'
                ],
                "period": {
                  "start": '2020-07-23T16:37:25.000Z'
                }
              }
            ],
            "telecom": [
              {
                "system": 'email',
                "value": 'test@testcerner.direct.com',
                "use": 'work'
              }
            ],
            "qualification": [
              {
                "code": {
                  "coding": [
                    {
                      "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/29600',
                      "code": '677091',
                      "display": 'MD',
                      "userSelected": true
                    },
                    {
                      "system": 'http://terminology.hl7.org/CodeSystem/v2-0360%7C2.7',
                      "code": 'MD',
                      "display": 'Doctor of Medicine'
                    }
                  ],
                  "text": 'MD'
                },
                "period": {
                  "start": '2020-05-31T05:00:00.000Z'
                }
              }
            ]
          },
          "search": {
            "mode": 'include'
          }
        }
      ]
    }.freeze

    R4_SLOT_PATIENT_ACCESS_BUNDLE_INCLUDE_PRACTITIONER ||= {
      'resourceType': 'Bundle',
      'id': 'f8dd806e-62bb-4657-8912-9c2705864d40',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Slot?service-type'\
                '=https%3A%2F%2Ffhir.cerner.com%2Fec2458f2-1e24-41c8-b71b-0e701af7583d%2FcodeSet%2F14249%7C'\
                '4047611&start=ge2016-01-23T22%3A05%3A47Z&start=lt2020-06-08T18%3A13%3A55Z&_include=Schedule%3A'\
                'actor%3APractitioner&_count=50'
        },
        {
          'relation': 'next',
          'url': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Slot?_include'\
                '=Schedule%3Aactor%3APractitioner&-pageContext=2d46d307-9a4c-4dc7-a1c2-88f1282d5aec&-pageDirection=NEXT'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Slot/4047611-32216049-61518614-0',
          'resource': R4_SLOT_PATIENT_ACCESS_ENTRY,
          'search': {
            'mode': 'match'
          }
        },
        {
          "fullUrl": 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Practitioner/593923',
          "resource": {
            "resourceType": 'Practitioner',
            "id": '593923',
            "meta": {
              "versionId": '21',
              "lastUpdated": '2020-07-23T16:37:26.000Z'
            },
            "text": {
              "status": 'generated',
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Practitioner</b></p><p><b>Name</b>'\
              ': Applegate MD, Christina</p><p><b>Identifiers</b>: EXTERNALID: 1221221111, EXTERNALID:'\
              'CERNERPHYSPCP, MESSAGING: 593923</p><p><b>Status</b>: Active</p></div>'
            },
            "extension": [
              {
                "valueBoolean": true,
                "url": 'https://fhir-ehr.cerner.com/r4/StructureDefinition/is-physician'
              }
            ],
            "identifier": [
              {
                "use": 'usual',
                "type": {
                  "text": 'External Identifier'
                },
                "system": 'urn:oid:2.16.840.1.113883.3.42.10001.100001.12',
                "value": '1221221111',
                "period": {
                  "start": '2021-07-13T20:12:34.000Z'
                }
              },
              {
                "use": 'usual',
                "type": {
                  "text": 'External Identifier'
                },
                "_system": {
                  "extension": [
                    {
                      "valueCode": 'unknown',
                      "url": 'http://hl7.org/fhir/StructureDefinition/data-absent-reason'
                    }
                  ]
                },
                "value": 'CERNERPHYSPCP',
                "period": {
                  "start": '2016-04-28T15:02:02.000Z'
                }
              },
              {
                "use": 'usual',
                "type": {
                  "coding": [
                    {
                      "system": 'http://terminology.hl7.org/CodeSystem/v2-0203',
                      "code": 'U',
                      "display": 'Unspecified identifier'
                    }
                  ],
                  "text": 'Messaging'
                },
                "_system": {
                  "extension": [
                    {
                      "valueCode": 'unknown',
                      "url": 'http://hl7.org/fhir/StructureDefinition/data-absent-reason'
                    }
                  ]
                },
                "value": '593923',
                "period": {
                  "start": '2015-08-18T05:00:00.000Z'
                }
              }
            ],
            "active": true,
            "name": [
              {
                "use": 'usual',
                "text": 'Applegate MD, Christina',
                "family": 'Applegate',
                "given": [
                  'Christina'
                ],
                "suffix": [
                  'MD'
                ],
                "period": {
                  "start": '2020-07-23T16:37:25.000Z'
                }
              }
            ],
            "telecom": [
              {
                "system": 'email',
                "value": 'test@testcerner.direct.com',
                "use": 'work'
              }
            ],
            "qualification": [
              {
                "code": {
                  "coding": [
                    {
                      "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/29600',
                      "code": '677091',
                      "display": 'MD',
                      "userSelected": true
                    },
                    {
                      "system": 'http://terminology.hl7.org/CodeSystem/v2-0360%7C2.7',
                      "code": 'MD',
                      "display": 'Doctor of Medicine'
                    }
                  ],
                  "text": 'MD'
                },
                "period": {
                  "start": '2020-05-31T05:00:00.000Z'
                }
              }
            ]
          },
          "search": {
            "mode": 'include'
          }
        }
      ]
    }.freeze

    R4_SLOT_PATCH ||= [
      {
        'op': 'replace',
        'path': '/status',
        'value': 'busy-tentative'
      }
    ].freeze
  end
end
