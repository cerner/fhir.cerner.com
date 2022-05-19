# frozen_string_literal: true

module Cerner
  module Resources

    R4_COMBINED_PATIENT_ENTRY ||= {
      'resourceType': 'Patient',
      'id': '12742633',
      'meta': {
        'versionId': '0'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Patient</b></p><p><b>Status</b>: Inactive</p>'\
               '<p><b>Replaced By</b>: Patient/12724067</p></div>'
      },
      'identifier': [
        {
          'extension': [
            {
              'valueCode': 'unknown',
              'url': 'http://hl7.org/fhir/StructureDefinition/data-absent-reason'
            }
          ]
        }
      ],
      'active': false,
      'name': [
        {
          'extension': [
            {
              'valueCode': 'unknown',
              'url': 'http://hl7.org/fhir/StructureDefinition/data-absent-reason'
            }
          ]
        }
      ],
      '_gender': {
        'extension': [
          {
            'valueCode': 'unknown',
            'url': 'http://hl7.org/fhir/StructureDefinition/data-absent-reason'
          }
        ]
      },
      'link': [
        {
          'other': {
            'reference': 'Patient/12724067'
          },
          'type': 'replaced-by'
        }
      ]
    }.freeze

    R4_PATIENT_REVINCLUDE_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '65ee4c79-3514-4eab-b606-10ad56fb0d5d',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Patient?_id=629928&_revinclude=Provenance%3Atarget'
        }
      ],
      'entry': [
        {
          "fullUrl": 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Patient/629928',
          "resource": {
            "resourceType": 'Patient',
            "id": '629928',
            "meta": {
              "versionId": '36',
              "lastUpdated": '2020-09-17T16:35:12.000Z'
            },
            "text": {
              "status": 'generated',
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Patient</b></p><p><b>Name</b>: England,
              Brad N</p><p><b>Status</b>: Active</p><p><b>DOB</b>: Jan 20, 1999</p>
              <p><b>Administrative Gender</b>: Unknown</p></div>'
            },
            "identifier": [
              {
                "extension": [
                  {
                    "valueCode": 'unknown',
                    "url": 'http://hl7.org/fhir/StructureDefinition/data-absent-reason'
                  }
                ]
              }
            ],
            "active": true,
            "name": [
              {
                "id": 'CI-629928-0',
                "use": 'official',
                "text": 'England, Brad N',
                "family": 'England',
                "given": [
                  'Brad',
                  'N'
                ],
                "period": {
                  "start": '2004-01-27T00:00:00.000Z'
                }
              }
            ],
            "telecom": [
              {
                "id": 'CI-PH-46477780-0',
                "extension": [
                  {
                    "valueString": '2232323',
                    "url": 'http://hl7.org/fhir/StructureDefinition/iso21090-TEL-address'
                  }
                ],
                "system": 'phone',
                "value": '2232323',
                "rank": 1,
                "period": {
                  "start": '2021-01-11T06:00:00.000Z'
                }
              },
              {
                "id": 'CI-PH-9543543-1',
                "extension": [
                  {
                    "valueString": '1234567890',
                    "url": 'http://hl7.org/fhir/StructureDefinition/iso21090-TEL-address'
                  },
                  {
                    "valueString": '345',
                    "url": 'http://hl7.org/fhir/StructureDefinition/contactpoint-extension'
                  }
                ],
                "system": 'phone',
                "value": '1234567890',
                "use": 'home',
                "rank": 1,
                "period": {
                  "start": '2014-01-20T15:48:39.000Z',
                  "end": '2014-03-20T15:48:39.000Z'
                }
              },
              {
                "id": 'CI-PH-9543573-2',
                "extension": [
                  {
                    "valueString": '1234567890',
                    "url": 'http://hl7.org/fhir/StructureDefinition/iso21090-TEL-address'
                  },
                  {
                    "valueString": '345',
                    "url": 'http://hl7.org/fhir/StructureDefinition/contactpoint-extension'
                  }
                ],
                "system": 'phone',
                "value": '1234567890',
                "use": 'home',
                "rank": 1,
                "period": {
                  "start": '2014-01-20T15:48:39.000Z',
                  "end": '2014-03-20T15:48:39.000Z'
                }
              }
            ],
            "gender": 'unknown',
            "birthDate": '1999-01-20',
            "contact": [
              {
                "relationship": [
                  {
                    "coding": [
                      {
                        "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/351',
                        "code": '83266815',
                        "display": 'Authorized Representative',
                        "userSelected": true
                      }
                    ],
                    "text": 'Authorized Representative'
                  }
                ],
                "name": {
                  "id": 'CI-170778458-0',
                  "use": 'official',
                  "text": 'MARSTON, Dutch',
                  "family": 'MARSTON',
                  "given": [
                    'Dutch'
                  ],
                  "period": {
                    "start": '2020-08-26T14:44:08.000Z'
                  }
                },
                "telecom": [
                  {
                    "system": 'email',
                    "value": 'kaishwaryaramesh@gmail.com',
                    "use": 'home',
                    "rank": 1,
                    "period": {
                      "start": '2020-10-09T07:29:32.000Z'
                    }
                  },
                  {
                    "system": 'email',
                    "value": 'abigail.testpatient@gmail.com',
                    "use": 'home',
                    "rank": 2,
                    "period": {
                      "start": '2020-08-26T14:45:59.000Z'
                    }
                  },
                  {
                    "system": 'email',
                    "value": 'abigail.testpatient@gmail.com',
                    "use": 'home',
                    "rank": 3,
                    "period": {
                      "start": '2020-08-26T16:47:31.000Z'
                    }
                  },
                  {
                    "system": 'email',
                    "value": 'abigail.testpatient@gmail.com',
                    "use": 'home',
                    "rank": 4,
                    "period": {
                      "start": '2020-08-27T20:27:31.000Z'
                    }
                  },
                  {
                    "system": 'email',
                    "value": 'abigail.testpatient@gmail.com',
                    "use": 'home',
                    "rank": 5,
                    "period": {
                      "start": '2020-08-28T15:24:19.000Z'
                    }
                  },
                  {
                    "system": 'email',
                    "value": 'abigail.testpatient@gmail.com',
                    "use": 'home',
                    "rank": 6,
                    "period": {
                      "start": '2020-08-31T15:16:18.000Z'
                    }
                  },
                  {
                    "system": 'email',
                    "value": 'abigail.testpatient@gmail.com',
                    "use": 'home',
                    "rank": 7,
                    "period": {
                      "start": '2020-09-10T20:41:05.000Z'
                    }
                  },
                  {
                    "system": 'email',
                    "value": 'abigail.testpatient@gmail.com',
                    "use": 'home',
                    "rank": 8,
                    "period": {
                      "start": '2020-09-11T15:52:04.000Z'
                    }
                  }
                ],
                "gender": 'male',
                "period": {
                  "start": '2020-08-27T20:27:31.000Z'
                }
              }
            ]
          },
          "search": {
            "mode": 'match'
          }
        },
        {
          "fullUrl": 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Provenance/ptntdemo-17390433',
          "resource": {
            "resourceType": 'Provenance',
            "id": 'ptntdemo-17390433',
            "meta": {
              "versionId": '17390433',
              "lastUpdated": '2021-06-03T11:18:59Z'
            },
            "text": {
              "status": 'generated',
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Provenance</b></p>
              <p><b>Target</b>:</p><ul><li>Patient/629928</li></ul>
              <p><b>Recorded</b>: Jun  3, 2021  6:18 A.M. CDT</p>
              <p><b>Agents</b>:</p><dl><dt>organizationName PrH</dt>
              <dd><b>Agent Type</b>: Author</dd>
              <dd><b>Agent Role</b>: Source</dd></dl><p><b>Entity Source</b>: DocumentReference/S-68607</p></div>'
            },
            "target": [
              {
                "reference": 'Patient/629928'
              }
            ],
            "recorded": '2021-06-03T11:18:59Z',
            "agent": [
              {
                "type": {
                  "coding": [
                    {
                      "system": 'http://terminology.hl7.org/CodeSystem/provenance-participant-type',
                      "code": 'author'
                    }
                  ],
                  "text": 'Author'
                },
                "role": [
                  {
                    "coding": [
                      {
                        "system": 'http://terminology.hl7.org/CodeSystem/contractsignertypecodes',
                        "code": 'SOURCE'
                      }
                    ],
                    "text": 'Source'
                  }
                ],
                "who": {
                  "reference": 'Organization/59917604',
                  "display": 'organizationName PrH'
                }
              }
            ],
            "entity": [
              {
                "role": 'source',
                "what": {
                  "reference": 'DocumentReference/S-68607'
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

    R4_PATIENT_ENTRY ||= {
      'resourceType': 'Patient',
      'id': '12724067',
      'meta': {
        'versionId': '10',
        'lastUpdated': '2020-07-06T21:21:22.000Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Patient</b></p><p><b>Name</b>: SMART, JOE</p>'\
               '<p><b>Status</b>: Active</p><p><b>DOB</b>: Apr 29, 1976</p><p><b>Administrative Gender</b>: Male</p>'\
               '<p><b>Marital Status</b>: Married</p></div>'
      },
      'extension': [
        {
          'id': '59434424',
          'extension': [
            {
              'valueCodeableConcept': {
                'coding': [
                  {
                    'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4640016',
                    'code': '485602703',
                    'display': 'Appointment Reminders',
                    'userSelected': true
                  },
                  {
                    'system': 'http://terminology.hl7.org/CodeSystem/communication-topic',
                    'code': 'appointment-reminder',
                    'display': 'Appointment Reminder',
                    'userSelected': false
                  }
                ],
                'text': 'Appointment Reminders'
              },
              'url': 'communication-type'
            },
            {
              'valueCodeableConcept': {
                'coding': [
                  {
                    'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/23042',
                    'code': '495085513',
                    'display': 'Fax',
                    'userSelected': true
                  },
                  {
                    'system': 'http://hl7.org/fhir/contact-point-system',
                    'code': 'fax',
                    'display': 'Fax',
                    'userSelected': false
                  }
                ],
                'text': 'Fax'
              },
              'url': 'contact-method'
            },
            {
              'valueCodeableConcept': {
                'coding': [
                  {
                    'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/43',
                    'code': '163',
                    'display': 'Business',
                    'userSelected': true
                  },
                  {
                    'system': 'http://hl7.org/fhir/contact-point-use',
                    'code': 'work',
                    'display': 'Work',
                    'userSelected': false
                  }
                ],
                'text': 'Business'
              },
              'url': 'contact-type'
            },
            {
              'valueDateTime': '2019-04-13T20:00:00.000Z',
              'url': 'verified-datetime'
            }
          ],
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/communication-preference'
        },
        {
          'extension': [
            {
              'valueCoding': {
                'system': 'urn:oid:2.16.840.1.113883.6.238',
                'code': '2106-3',
                'display': 'White',
                'userSelected': false
              },
              'url': 'ombCategory'
            },
            {
              'valueString': 'White',
              'url': 'text'
            }
          ],
          'url': 'http://hl7.org/fhir/us/core/StructureDefinition/us-core-race'
        },
        {
          'extension': [
            {
              'valueCoding': {
                'system': 'urn:oid:2.16.840.1.113883.6.238',
                'code': '2186-5',
                'display': 'Non Hispanic or Latino',
                'userSelected': false
              },
              'url': 'ombCategory'
            },
            {
              'valueString': 'Not Hispanic, Latino, or Spanish Origin',
              'url': 'text'
            }
          ],
          'url': 'http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity'
        }
      ],
      'identifier': [
        {
          'id': 'CI-490016886-0',
          'use': 'usual',
          'type': {
            'coding': [
              {
                'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4',
                'code': '10',
                'display': 'MRN',
                'userSelected': true
              },
              {
                'system': 'http://terminology.hl7.org/CodeSystem/v2-0203',
                'code': 'MR',
                'display': 'Medical record number',
                'userSelected': false
              }
            ],
            'text': 'MRN'
          },
          'system': 'urn:oid:2.16.840.1.113883.6.1000',
          'value': '6931',
          'period': {
            'start': '2019-12-26T15:14:12.000Z'
          }
        },
        {
          'id': 'CI-490058771-1',
          'use': 'usual',
          'type': {
            'coding': [
              {
                'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4',
                'code': '10',
                'display': 'MRN',
                'userSelected': true
              },
              {
                'system': 'http://terminology.hl7.org/CodeSystem/v2-0203',
                'code': 'MR',
                'display': 'Medical record number',
                'userSelected': false
              }
            ],
            'text': 'MRN'
          },
          'system': 'urn:oid:2.16.840.1.113883.6.1000',
          'value': '6978',
          'period': {
            'end': '2020-07-06T21:21:25.000Z'
          }
        },
        {
          'id': 'CI-490059574-3',
          'use': 'usual',
          'type': {
            'coding': [
              {
                'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4',
                'code': '670843',
                'display': 'Messaging',
                'userSelected': true
              },
              {
                'system': 'http://terminology.hl7.org/CodeSystem/v2-0203',
                'code': 'U',
                'display': 'Unspecified identifier',
                'userSelected': false
              }
            ],
            'text': 'Messaging'
          },
          '_system': {
            'extension': [
              {
                'valueCode': 'unknown',
                'url': 'http://hl7.org/fhir/StructureDefinition/data-absent-reason'
              }
            ]
          },
          'value': '3C36293A3B964994AD8E6C0305F3330A',
          'period': {
            'start': '2020-06-30T20:08:26.000Z'
          }
        },
        {
          'id': 'CI-490058805-4',
          'use': 'usual',
          'type': {
            'coding': [
              {
                'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4',
                'code': '670843',
                'display': 'Messaging',
                'userSelected': true
              },
              {
                'system': 'http://terminology.hl7.org/CodeSystem/v2-0203',
                'code': 'U',
                'display': 'Unspecified identifier',
                'userSelected': false
              }
            ],
            'text': 'Messaging'
          },
          '_system': {
            'extension': [
              {
                'valueCode': 'unknown',
                'url': 'http://hl7.org/fhir/StructureDefinition/data-absent-reason'
              }
            ]
          },
          'value': '43DA797A657B47548F258A9B50EB41F5',
          'period': {
            'start': '2020-06-12T16:03:32.000Z'
          }
        },
        {
          'id': 'CI-490059570-5',
          'use': 'usual',
          'type': {
            'coding': [
              {
                'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4',
                'code': '2553236771',
                'display': 'Federated Person Principal',
                'userSelected': true
              },
              {
                'system': 'http://terminology.hl7.org/CodeSystem/v2-0203',
                'code': 'AN',
                'display': 'Account number',
                'userSelected': false
              }
            ],
            'text': 'Federated Person Principal'
          },
          'system': 'urn:oid:2.16.840.1.113883.3.13.6',
          'value': 'URN:CERNER:IDENTITY-FEDERATION:REALM:E8A84236-C258-4952-98B7-A6FF8A9C587A-CH:PRINCIPAL:'\
                   'AN7TD9A62CV8Z53Z',
          'period': {
            'start': '2020-06-30T20:08:25.000Z'
          }
        },
        {
          'id': 'CI-490058801-6',
          'use': 'usual',
          'type': {
            'coding': [
              {
                'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4',
                'code': '2553236771',
                'display': 'Federated Person Principal',
                'userSelected': true
              },
              {
                'system': 'http://terminology.hl7.org/CodeSystem/v2-0203',
                'code': 'AN',
                'display': 'Account number',
                'userSelected': false
              }
            ],
            'text': 'Federated Person Principal'
          },
          'system': 'urn:oid:2.16.840.1.113883.3.13.6',
          'value': 'URN:CERNER:IDENTITY-FEDERATION:REALM:E8A84236-C258-4952-98B7-A6FF8A9C587A-CH:PRINCIPAL:'\
                   'KR8KC9MI9EQ8KC23',
          'period': {
            'start': '2020-06-12T16:03:29.000Z'
          }
        }
      ],
      'active': true,
      'name': [
        {
          'id': 'CI-12724067-0',
          'use': 'official',
          'text': 'SMART, JOE',
          'family': 'SMART',
          'given': [
            'JOE'
          ],
          'period': {
            'start': '2019-12-26T15:14:12.000Z'
          }
        },
        {
          'id': 'CI-490059796-0',
          'use': 'old',
          'text': 'SMART, STEPHEN ALLEN',
          'family': 'SMART',
          'given': [
            'STEPHEN',
            'ALLEN'
          ],
          'period': {
            'end': '2020-07-06T21:21:26.000Z'
          }
        }
      ],
      'telecom': [
        {
          'id': 'CI-PH-29811920-0',
          "extension": [
            {
              "valueString": '(816)888-8886',
              "url": 'http://hl7.org/fhir/StructureDefinition/iso21090-TEL-address'
            },
            {
              "valueString": '12345',
              "url": 'http://hl7.org/fhir/StructureDefinition/contactpoint-extension'
            }
          ],
          'system': 'phone',
          'value': '8168888886',
          'use': 'home',
          'rank': '1',
          'period': {
            'start': '2019-12-26T15:14:12.000Z'
          }
        },
        {
          'id': 'CI-EM-29822662-0',
          'system': 'email',
          'value': 'joesmart@yopmail.com',
          'use': 'home',
          'rank': '1',
          'period': {
            'start': '2020-03-30T19:31:11.000Z'
          }
        }
      ],
      'gender': 'male',
      'birthDate': '1976-04-29',
      'deceasedBoolean': false,
      'address': [
        {
          'id': 'CI-24313553-0',
          'use': 'home',
          'text': '12345 Main St\nKansas city, MO 64116\nUS',
          'line': [
            '12345 Main St'
          ],
          'city': 'Kansas city',
          'district': 'Jackson',
          'state': 'MO',
          'postalCode': '64116',
          'country': 'US',
          'period': {
            'start': '2019-12-26T15:13:36.000Z'
          }
        }
      ],
      'maritalStatus': {
        'coding': [
          {
            'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/38',
            'code': '309237',
            'display': 'Married',
            'userSelected': true
          },
          {
            'system': 'http://terminology.hl7.org/CodeSystem/v3-MaritalStatus',
            'code': 'M',
            'display': 'Married',
            'userSelected': false
          }
        ],
        'text': 'Married'
      },
      'communication': [
        {
          'language': {
            'coding': [
              {
                'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/36',
                'code': '151',
                'display': 'English',
                'userSelected': true
              },
              {
                'system': 'urn:ietf:bcp:47',
                'code': 'en',
                'display': 'English',
                'userSelected': false
              }
            ],
            'text': 'English'
          },
          'preferred': true
        }
      ],
      'generalPractitioner': [
        {
          'id': 'CI-490017023-0',
          'reference': 'Practitioner/4122622',
          'display': 'Cerner Test, Physician - Hospitalist Cerner'
        }
      ]
    }.freeze

    R4_PATIENT_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': 'b8e08a98-849f-4544-9fa8-985aa445e31b',
      'type': 'searchset',
      'total': 1,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Patient?_id=12724067'
        }
      ],
      'entry': [
        'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Patient/12724067',
        'resource': R4_PATIENT_ENTRY
      ]
    }.freeze

    R4_PATIENT_CREATE ||= {
      'resourceType': 'Patient',
      'extension': [
        {
          'url': 'http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex',
          'valueCode': 'M'
        },
        {
          'url': 'http://hl7.org/fhir/us/core/StructureDefinition/us-core-race',
          'extension': [
            {
              'url': 'ombCategory',
              'valueCoding': {
                'system': 'urn:oid:2.16.840.1.113883.6.238',
                'code': '2028-9',
                'display': 'Asian'
              }
            },
            {
              'url': 'detailed',
              'valueCoding': {
                'system': 'urn:oid:2.16.840.1.113883.6.238',
                'code': '2039-6',
                'display': 'Japanese'
              }
            }
          ]
        },
        {
          'url': 'http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity',
          'extension': [
            {
              'url': 'ombCategory',
              'valueCoding': {
                'system': 'urn:oid:2.16.840.1.113883.6.238',
                'code': '2186-5',
                'display': 'Non Hispanic or Latino'
              }
            }
          ]
        },
        {
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/communication-preference',
          'extension': [
            {
              'extension': [
                {
                  'valueCodeableConcept': {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4640016',
                        'code': '485602703',
                        'display': 'Appointment Reminder',
                        'userSelected': false
                      }
                    ],
                    'text': 'Appointment Reminder'
                  },
                  'url': 'communication-type'
                },
                {
                  'valueCodeableConcept': {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/23042',
                        'code': '4054467',
                        'display': 'Phone',
                        'userSelected': false
                      }
                    ]
                  },
                  'url': 'contact-method'
                },
                {
                  'valueCodeableConcept': {
                    'coding': [
                      {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/43',
                        'code': '163',
                        'display': 'Business',
                        'userSelected': false
                      }
                    ],
                    'text': 'Home'
                  },
                  'url': 'contact-type'
                }
              ],
              'verified': '2019-12-26T15:41:52.000Z'
            }
          ]
        }
      ],
      'identifier': [
        {
          'assigner': {
            'reference': 'Organization/675844'
          }
        }
      ],
      'active': true,
      'name': [
        {
          'use': 'official',
          'family': 'Wolf',
          'given': [
            'Person',
            'Name'
          ],
          'period': {
            'start': '2010-05-17T14:54:31.000Z'
          }
        },
        {
          'use': 'usual',
          'given': [
            'Bigby'
          ],
          'period': {
            'start': '2012-05-22T15:45:50.000Z'
          }
        }
      ],
      'telecom': [
        {
          'system': 'phone',
          'value': '8168229121',
          'use': 'home',
          'id': 'CI-PH-29811920-0',
          "extension": [
            {
              "valueString": '12345',
              "url": 'http://hl7.org/fhir/StructureDefinition/contactpoint-extension'
            }
          ],
          'period': {
            'start': '2012-05-17T15:33:18.000Z'
          }
        }
      ],
      'gender': 'male',
      'birthDate': '1990-09-15',
      'address': [
        {
          'use': 'home',
          'line': [
            '121212 Metcalf Drive',
            'Apartment 403'
          ],
          'city': 'Kansas City',
          'district': 'Jackson',
          'state': 'KS',
          'postalCode': '64199',
          'country': 'United States of America',
          'period': {
            'start': '2012-05-17T15:33:18.000Z'
          }
        }
      ],
      'maritalStatus': {
        'coding': [
          {
            'system': 'http://terminology.hl7.org/CodeSystem/v3-NullFlavor',
            'code': 'UNK',
            'display': 'Unknown'
          }
        ],
        'text': 'Unknown'
      },
      'communication': [
        {
          'language': {
            'coding': [
              {
                'system': 'urn:ietf:bcp:47',
                'code': 'en',
                'display': 'English'
              }
            ],
            'text': 'English'
          },
          'preferred': true
        }
      ],
      'generalPractitioner': [
        {
          'reference': 'Practitioner/4122622'
        }
      ]
    }.freeze

    R4_PATIENT_PATCH ||= [
      {
        'op': 'add',
        'path': '/identifier/-',
        'value': {
          'type': {
            'coding': [
              {
                'code': 'MR',
                'system': 'http://hl7.org/fhir/v2/0203'
              }
            ]
          },
          'system': '2.16.840.1.113883.6.1000',
          'value': 'THIS:IS:A:UNIQUE:IDENTIFIER',
          'period': {
            'start': '2018-01-02T00:00:00-05:00',
            'end': '2022-01-02T00:00:00-05:00'
          }
        }
      },
      {
        'path': '/name/0/id',
        'op': 'test',
        'value': 'CI-12724067-0'
      },
      {
        'path': '/name/0/given',
        'op': 'replace',
        'value': [
          'Joe',
          'Smarty'
        ]
      },
      {
        'path': '/telecom/0/id',
        'op': 'test',
        'value': 'CI-PH-29811920-0'
      },
      {
        'path': '/telecom/0',
        'op': 'remove'
      },
      {
        'path': '/maritalStatus',
        'op': 'replace',
        'value': {
          'coding': [
            {
              'system': 'http://terminology.hl7.org/CodeSystem/v3-MaritalStatus',
              'code': 'D'
            }
          ]
        }
      },
      {
        'path': '/communication',
        'op': 'replace',
        'value': [
          {
            'language': {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/36',
                  'code': '151'
                }
              ]
            },
            'preferred': true
          }
        ]
      },
      {
        'path': '/extension',
        'op': 'replace',
        'value': [
          {
            'url': 'http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex',
            'valueCode': 'M'
          },
          {
            'url': 'http://hl7.org/fhir/us/core/StructureDefinition/us-core-race',
            'extension': [
              {
                'url': 'ombCategory',
                'valueCoding': {
                  'system': 'urn:oid:2.16.840.1.113883.6.238',
                  'code': '2106-3',
                  'display': 'White'
                }
              },
              {
                'url': 'detailed',
                'valueCoding': {
                  'system': 'urn:oid:2.16.840.1.113883.6.238',
                  'code': '2110-5',
                  'display': 'English'
                }
              }
            ]
          },
          {
            'url': 'http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity',
            'extension': [
              {
                'url': 'ombCategory',
                'valueCoding': {
                  'system': 'urn:oid:2.16.840.1.113883.6.238',
                  'code': '2135-2',
                  'display': 'Hispanic or Latino'
                }
              },
              {
                'url': 'detailed',
                'valueCoding': {
                  'system': 'urn:oid:2.16.840.1.113883.6.238',
                  'code': '2156-8',
                  'display': 'Costa Rican'
                }
              }
            ]
          }
        ]
      }
    ].freeze
  end
end
