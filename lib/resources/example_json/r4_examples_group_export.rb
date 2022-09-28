# frozen_string_literal: true

module Cerner
  module Resources
    R4_BULK_EXPORT_COMPLETE ||= {
      'transactionTime': '2022-01-04T17:42:25.000Z',
      'request': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Group/252a42c0-5844-11ec-bf63-0242ac130002/$export?_type=Patient,Observation',
      'requiresAccessToken': true,
      'output': [
        {
          'type': 'Patient',
          'url': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/bulk-export/files/96295b8c-584e-11ec-bf63-0242ac130002'
        },
        {
          'type': 'Patient',
          'url': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/bulk-export/files/96295b8c-584e-11ec-bf63-0242ac130003'
        },
        {
          'type': 'Observation',
          'url': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/bulk-export/files/96295b8c-584e-11ec-bf63-0242ac130004'
        }
      ],
      'error': [
        {
          'type': 'OperationOutcome',
          'url': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/bulk-export/files/96295b8c-584e-11ec-bf63-0242ac130005'
        }
      ]
    }.freeze

    BULK_PATIENT_ONE ||= {
      'resourceType': 'Patient',
      'id': '12783127',
      'meta': {
        'versionId': '7',
        'lastUpdated': '2022-07-01T20:12:56.000Z'
      },
      'text': {
        'status': 'extensions',
        'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Patient</b></p><p><b>Name</b>: FHIRONE, '\
        'BULKDATAONE</p><p><b>Status</b>: Active</p><p><b>DOB</b>: Apr 18, 1988</p><p><b>Birth Sex</b>: Female'\
        '</p><p><b>Administrative Gender</b>: Female</p><p><b>Marital Status</b>: Married</p></div>'
      },
      'extension': [
        {
          'valueCode': 'F',
          'url': 'http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex'
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
                'display': 'Not Hispanic or Latino',
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
          'id': 'CI-490689587-0',
          'use': 'usual',
          'type': {
            'coding': [
              {
                'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4',
                'code': '2',
                'display': 'Community Medical Record Number',
                'userSelected': true
              },
              {
                'system': 'http://terminology.hl7.org/CodeSystem/v2-0203',
                'code': 'MR',
                'display': 'Medical record number',
                'userSelected': false
              }
            ],
            'text': 'Community Medical Record Number'
          },
          'system': 'urn:oid:2.16.840.1.113883.3.787.0.0',
          'value': '490689587',
          '_value': {
            'extension': [
              {
                'valueString': '490689587',
                'url': 'http://hl7.org/fhir/StructureDefinition/rendered-value'
              }
            ]
          },
          'period': {
            'start': '2022-03-08T17:07:02.000Z'
          }
        },
        {
          'id': 'CI-490689586-1',
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
          'value': '490689586',
          '_value': {
            'extension': [
              {
                'valueString': '00490689586',
                'url': 'http://hl7.org/fhir/StructureDefinition/rendered-value'
              }
            ]
          },
          'period': {
            'start': '2022-03-08T17:07:02.000Z'
          }
        },
        {
          'id': 'CI-490689589-3',
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
          'system': 'urn:oid:2.16.840.1.113883.3.13.8',
          'value': 'FED810ECAD834ABC88E88F3223B3133D',
          '_value': {
            'extension': [
              {
                'valueString': 'FED810ECAD834ABC88E88F3223B3133D',
                'url': 'http://hl7.org/fhir/StructureDefinition/rendered-value'
              }
            ]
          },
          'period': {
            'start': '2022-03-08T17:14:16.000Z'
          }
        },
        {
          'id': 'CI-490689585-4',
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
          'value': 'URN:CERNER:IDENTITY-FEDERATION:REALM:EC2458F2-1E24-41C8'\
            '-B71B-0E701AF7583D-CH:PRINCIPAL:SN7HR6J27QX8WM5H',
          '_value': {
            'extension': [
              {
                'valueString': 'URN:CERNER:IDENTITY-FEDERATION:REALM:EC2458F2-1E24-41C8-B71B-0E701AF7583D-CH'\
                  ':PRINCIPAL:SN7HR6J27QX8WM5H',
                'url': 'http://hl7.org/fhir/StructureDefinition/rendered-value'
              }
            ]
          },
          'period': {
            'start': '2022-03-08T17:14:15.000Z'
          }
        },
        {
          'id': 'CI-490689588-5',
          'use': 'usual',
          'type': {
            'coding': [
              {
                'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4',
                'code': '2553236785',
                'display': 'MIllennium Person Identifier',
                'userSelected': true
              }
            ],
            'text': 'MIllennium Person Identifier'
          },
          '_system': {
            'extension': [
              {
                'valueCode': 'unknown',
                'url': 'http://hl7.org/fhir/StructureDefinition/data-absent-reason'
              }
            ]
          },
          'value': '50946',
          '_value': {
            'extension': [
              {
                'valueString': '50946',
                'url': 'http://hl7.org/fhir/StructureDefinition/rendered-value'
              }
            ]
          },
          'period': {
            'start': '2022-03-08T17:07:07.000Z'
          }
        }
      ],
      'active': true,
      'name': [
        {
          'id': 'CI-12783127-0',
          'use': 'official',
          'text': 'FHIRONE, BULKDATAONE',
          'family': 'FHIRONE',
          'given': [
            'BULKDATAONE'
          ],
          'period': {
            'start': '2022-03-08T17:07:03.000Z'
          }
        }
      ],
      'telecom': [
        {
          'id': 'CI-PH-29913336-0',
          'extension': [
            {
              'valueUrl': '(816)204-1030',
              'url': 'http://hl7.org/fhir/StructureDefinition/iso21090-TEL-address'
            }
          ],
          'system': 'phone',
          'value': '8162041030',
          'use': 'work',
          'rank': 1,
          'period': {
            'start': '2022-03-08T17:07:02.000Z'
          }
        },
        {
          'id': 'CI-PH-29913334-1',
          'extension': [
            {
              'valueUrl': '(913)224-2321',
              'url': 'http://hl7.org/fhir/StructureDefinition/iso21090-TEL-address'
            }
          ],
          'system': 'phone',
          'value': '9132242321',
          'use': 'home',
          'rank': 1,
          'period': {
            'start': '2022-03-08T17:07:02.000Z'
          }
        },
        {
          'id': 'CI-PH-29913337-2',
          'extension': [
            {
              'valueUrl': '(913)268-4302',
              'url': 'http://hl7.org/fhir/StructureDefinition/iso21090-TEL-address'
            }
          ],
          'system': 'phone',
          'value': '9132684302',
          'use': 'mobile',
          'rank': 1,
          'period': {
            'start': '2022-03-08T17:07:02.000Z'
          }
        }
      ],
      'gender': 'female',
      'birthDate': '1988-04-18',
      'address': [
        {
          'id': 'CI-24415338-0',
          'use': 'home',
          'text': '2804 S Elm Street\nOverland Park, KS 66216\nUS',
          'line': [
            '2804 S Elm Street'
          ],
          'city': 'Overland Park',
          'district': 'Johnson',
          'state': 'KS',
          'postalCode': '66216',
          'country': 'US',
          'period': {
            'start': '2022-03-08T16:55:27.000Z'
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
      'contact': [
        {
          'relationship': [
            {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/351',
                  'code': '1153',
                  'display': 'Family Member',
                  'userSelected': true
                }
              ],
              'text': 'Family Member'
            }
          ],
          'name': {
            'id': 'CI-12800368-0',
            'use': 'official',
            'text': 'FHIRELEVEN, BULKDATAPEDIATRIC',
            'family': 'FHIRELEVEN',
            'given': [
              'BULKDATAPEDIATRIC'
            ],
            'period': {
              'start': '2022-07-01T20:12:56.000Z'
            }
          },
          'telecom': [
            {
              'extension': [
                {
                  'valueUrl': '(913)524-1874',
                  'url': 'http://hl7.org/fhir/StructureDefinition/iso21090-TEL-address'
                }
              ],
              'system': 'phone',
              'value': '9135241874',
              'use': 'home',
              'rank': 1,
              'period': {
                'start': '2022-07-01T20:12:56.000Z'
              }
            }
          ],
          'address': {
            'use': 'home',
            'text': '2804 S Elm Street\nOverland Park, KS 66216\nUS',
            'line': [
              '2804 S Elm Street'
            ],
            'city': 'Overland Park',
            'district': 'Johnson',
            'state': 'KS',
            'postalCode': '66216',
            'country': 'US',
            'period': {
              'start': '2022-07-01T20:05:24.000Z'
            }
          },
          'gender': 'female',
          'period': {
            'start': '2022-07-01T20:12:56.000Z'
          }
        }
      ],
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
          'id': 'CI-490689630-0',
          'reference': 'Practitioner/3332086',
          'display': 'Cerner Test, Physician - Primary Care Eight Cerner'
        }
      ]
    }.freeze

    BULK_PATIENT_TWO ||= {
      'resourceType': 'Patient',
      'id': '12783128',
      'meta': {
        'versionId': '5',
        'lastUpdated': '2022-05-27T20:32:48.000Z'
      },
      'text': {
        'status': 'extensions',
        'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Patient</b></p><p><b>Name</b>: FHIRTWO, '\
        'BULKDATATWO</p><p><b>Status</b>: Active</p><p><b>DOB</b>: May 31, 1993</p><p><b>Birth Sex</b>: '\
        'Female</p><p><b>Administrative Gender</b>: Male</p><p><b>Marital Status</b>: Married</p></div>'
      },
      'extension': [
        {
          'valueCode': 'F',
          'url': 'http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex'
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
                'display': 'Not Hispanic or Latino',
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
          'id': 'CI-490689642-0',
          'use': 'usual',
          'type': {
            'coding': [
              {
                'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4',
                'code': '2',
                'display': 'Community Medical Record Number',
                'userSelected': true
              },
              {
                'system': 'http://terminology.hl7.org/CodeSystem/v2-0203',
                'code': 'MR',
                'display': 'Medical record number',
                'userSelected': false
              }
            ],
            'text': 'Community Medical Record Number'
          },
          'system': 'urn:oid:2.16.840.1.113883.3.787.0.0',
          'value': '490689642',
          '_value': {
            'extension': [
              {
                'valueString': '490689642',
                'url': 'http://hl7.org/fhir/StructureDefinition/rendered-value'
              }
            ]
          },
          'period': {
            'start': '2022-03-08T17:07:02.000Z'
          }
        },
        {
          'id': 'CI-490689641-1',
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
          'value': '490689641',
          '_value': {
            'extension': [
              {
                'valueString': '00490689641',
                'url': 'http://hl7.org/fhir/StructureDefinition/rendered-value'
              }
            ]
          },
          'period': {
            'start': '2022-03-08T17:07:02.000Z'
          }
        },
        {
          'id': 'CI-490689644-3',
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
          'system': 'urn:oid:2.16.840.1.113883.3.13.8',
          'value': 'FED810ECAD834ABC88E88F3223B3133D',
          '_value': {
            'extension': [
              {
                'valueString': 'FED810ECAD834ABC88E88F3223B3133D',
                'url': 'http://hl7.org/fhir/StructureDefinition/rendered-value'
              }
            ]
          },
          'period': {
            'start': '2022-03-08T17:14:16.000Z'
          }
        },
        {
          'id': 'CI-490689640-4',
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
          'value': 'URN:CERNER:IDENTITY-FEDERATION:REALM:EC2458F2-1E24-41C8-B71B-0E701AF7583D-CH'\
            ':PRINCIPAL:SN7HR6J27QX8WM5H',
          '_value': {
            'extension': [
              {
                'valueString': 'URN:CERNER:IDENTITY-FEDERATION:REALM:EC2458F2-1E24-41C8-B71B-0E701AF7583D-CH'\
                  ':PRINCIPAL:SN7HR6J27QX8WM5H',
                'url': 'http://hl7.org/fhir/StructureDefinition/rendered-value'
              }
            ]
          },
          'period': {
            'start': '2022-03-08T17:14:15.000Z'
          }
        },
        {
          'id': 'CI-490689643-5',
          'use': 'usual',
          'type': {
            'coding': [
              {
                'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4',
                'code': '2553236785',
                'display': 'MIllennium Person Identifier',
                'userSelected': true
              }
            ],
            'text': 'MIllennium Person Identifier'
          },
          '_system': {
            'extension': [
              {
                'valueCode': 'unknown',
                'url': 'http://hl7.org/fhir/StructureDefinition/data-absent-reason'
              }
            ]
          },
          'value': '50946',
          '_value': {
            'extension': [
              {
                'valueString': '50946',
                'url': 'http://hl7.org/fhir/StructureDefinition/rendered-value'
              }
            ]
          },
          'period': {
            'start': '2022-03-08T17:07:07.000Z'
          }
        }
      ],
      'active': true,
      'name': [
        {
          'id': 'CI-12783128-0',
          'use': 'official',
          'text': 'FHIRTWO, BULKDATATWO',
          'family': 'FHIRTWO',
          'given': [
            'BULKDATATWO'
          ],
          'period': {
            'start': '2022-03-08T17:07:03.000Z'
          }
        }
      ],
      'telecom': [
        {
          'id': 'CI-PH-29913344-0',
          'extension': [
            {
              'valueUrl': '(816)204-1030',
              'url': 'http://hl7.org/fhir/StructureDefinition/iso21090-TEL-address'
            }
          ],
          'system': 'phone',
          'value': '8162041030',
          'use': 'work',
          'rank': 1,
          'period': {
            'start': '2022-03-08T17:07:02.000Z'
          }
        },
        {
          'id': 'CI-PH-29913342-1',
          'extension': [
            {
              'valueUrl': '(913)224-2321',
              'url': 'http://hl7.org/fhir/StructureDefinition/iso21090-TEL-address'
            }
          ],
          'system': 'phone',
          'value': '9132242321',
          'use': 'home',
          'rank': 1,
          'period': {
            'start': '2022-03-08T17:07:02.000Z'
          }
        },
        {
          'id': 'CI-PH-29913345-2',
          'extension': [
            {
              'valueUrl': '(913)268-4302',
              'url': 'http://hl7.org/fhir/StructureDefinition/iso21090-TEL-address'
            }
          ],
          'system': 'phone',
          'value': '9132684302',
          'use': 'mobile',
          'rank': 1,
          'period': {
            'start': '2022-03-08T17:07:02.000Z'
          }
        }
      ],
      'gender': 'male',
      'birthDate': '1993-05-31',
      'address': [
        {
          'id': 'CI-24415346-0',
          'use': 'home',
          'text': '2804 S Elm Street\nOverland Park, KS 66216\nUS',
          'line': [
            '2804 S Elm Street'
          ],
          'city': 'Overland Park',
          'district': 'Johnson',
          'state': 'KS',
          'postalCode': '66216',
          'country': 'US',
          'period': {
            'start': '2022-03-08T16:55:27.000Z'
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
          'id': 'CI-490689685-0',
          'reference': 'Practitioner/3332086',
          'display': 'Cerner Test, Physician - Primary Care Eight Cerner'
        }
      ]
    }.freeze

    BULK_PATIENT_THREE ||= {
      'resourceType': 'Patient',
      'id': '12783129',
      'meta': {
        'versionId': '5',
        'lastUpdated': '2022-05-27T20:33:37.000Z'
      },
      'text': {
        'status': 'extensions',
        'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Patient</b></p><p><b>Name</b>: FHIRTHREE, '\
        'BULKDATATHREE</p><p><b>Status</b>: Active</p><p><b>DOB</b>: May 22, 1978</p><p><b>Birth Sex</b>: '\
        'Female</p><p><b>Administrative Gender</b>: Female</p><p><b>Marital Status</b>: Married</p></div>'
      },
      'extension': [
        {
          'valueCode': 'F',
          'url': 'http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex'
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
                'display': 'Not Hispanic or Latino',
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
          'id': 'CI-490689697-0',
          'use': 'usual',
          'type': {
            'coding': [
              {
                'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4',
                'code': '2',
                'display': 'Community Medical Record Number',
                'userSelected': true
              },
              {
                'system': 'http://terminology.hl7.org/CodeSystem/v2-0203',
                'code': 'MR',
                'display': 'Medical record number',
                'userSelected': false
              }
            ],
            'text': 'Community Medical Record Number'
          },
          'system': 'urn:oid:2.16.840.1.113883.3.787.0.0',
          'value': '490689697',
          '_value': {
            'extension': [
              {
                'valueString': '490689697',
                'url': 'http://hl7.org/fhir/StructureDefinition/rendered-value'
              }
            ]
          },
          'period': {
            'start': '2022-03-08T17:07:02.000Z'
          }
        },
        {
          'id': 'CI-490689696-1',
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
          'value': '490689696',
          '_value': {
            'extension': [
              {
                'valueString': '00490689696',
                'url': 'http://hl7.org/fhir/StructureDefinition/rendered-value'
              }
            ]
          },
          'period': {
            'start': '2022-03-08T17:07:02.000Z'
          }
        },
        {
          'id': 'CI-490689699-3',
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
          'system': 'urn:oid:2.16.840.1.113883.3.13.8',
          'value': 'FED810ECAD834ABC88E88F3223B3133D',
          '_value': {
            'extension': [
              {
                'valueString': 'FED810ECAD834ABC88E88F3223B3133D',
                'url': 'http://hl7.org/fhir/StructureDefinition/rendered-value'
              }
            ]
          },
          'period': {
            'start': '2022-03-08T17:14:16.000Z'
          }
        },
        {
          'id': 'CI-490689695-4',
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
          'value': 'URN:CERNER:IDENTITY-FEDERATION:REALM:EC2458F2-1E24-41C8-B71B-0E701AF7583D-CH:'\
            'PRINCIPAL:SN7HR6J27QX8WM5H',
          '_value': {
            'extension': [
              {
                'valueString': 'URN:CERNER:IDENTITY-FEDERATION:REALM:EC2458F2-1E24-41C8-B71B-0E701AF7583D-CH:'\
                  'PRINCIPAL:SN7HR6J27QX8WM5H',
                'url': 'http://hl7.org/fhir/StructureDefinition/rendered-value'
              }
            ]
          },
          'period': {
            'start': '2022-03-08T17:14:15.000Z'
          }
        },
        {
          'id': 'CI-490689698-5',
          'use': 'usual',
          'type': {
            'coding': [
              {
                'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4',
                'code': '2553236785',
                'display': 'MIllennium Person Identifier',
                'userSelected': true
              }
            ],
            'text': 'MIllennium Person Identifier'
          },
          '_system': {
            'extension': [
              {
                'valueCode': 'unknown',
                'url': 'http://hl7.org/fhir/StructureDefinition/data-absent-reason'
              }
            ]
          },
          'value': '50946',
          '_value': {
            'extension': [
              {
                'valueString': '50946',
                'url': 'http://hl7.org/fhir/StructureDefinition/rendered-value'
              }
            ]
          },
          'period': {
            'start': '2022-03-08T17:07:07.000Z'
          }
        }
      ],
      'active': true,
      'name': [
        {
          'id': 'CI-12783129-0',
          'use': 'official',
          'text': 'FHIRTHREE, BULKDATATHREE',
          'family': 'FHIRTHREE',
          'given': [
            'BULKDATATHREE'
          ],
          'period': {
            'start': '2022-03-08T17:07:03.000Z'
          }
        }
      ],
      'telecom': [
        {
          'id': 'CI-PH-29913352-0',
          'extension': [
            {
              'valueUrl': '(816)204-1030',
              'url': 'http://hl7.org/fhir/StructureDefinition/iso21090-TEL-address'
            }
          ],
          'system': 'phone',
          'value': '8162041030',
          'use': 'work',
          'rank': 1,
          'period': {
            'start': '2022-03-08T17:07:02.000Z'
          }
        },
        {
          'id': 'CI-PH-29913350-1',
          'extension': [
            {
              'valueUrl': '(913)224-2321',
              'url': 'http://hl7.org/fhir/StructureDefinition/iso21090-TEL-address'
            }
          ],
          'system': 'phone',
          'value': '9132242321',
          'use': 'home',
          'rank': 1,
          'period': {
            'start': '2022-03-08T17:07:02.000Z'
          }
        },
        {
          'id': 'CI-PH-29913353-2',
          'extension': [
            {
              'valueUrl': '(913)268-4302',
              'url': 'http://hl7.org/fhir/StructureDefinition/iso21090-TEL-address'
            }
          ],
          'system': 'phone',
          'value': '9132684302',
          'use': 'mobile',
          'rank': 1,
          'period': {
            'start': '2022-03-08T17:07:02.000Z'
          }
        }
      ],
      'gender': 'female',
      'birthDate': '1978-05-22',
      'address': [
        {
          'id': 'CI-24415354-0',
          'use': 'home',
          'text': '2804 S Elm Street\nOverland Park, KS 66216\nUS',
          'line': [
            '2804 S Elm Street'
          ],
          'city': 'Overland Park',
          'district': 'Johnson',
          'state': 'KS',
          'postalCode': '66216',
          'country': 'US',
          'period': {
            'start': '2022-03-08T16:55:27.000Z'
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
          'id': 'CI-490689740-0',
          'reference': 'Practitioner/3332086',
          'display': 'Cerner Test, Physician - Primary Care Eight Cerner'
        }
      ]
    }.freeze

    R4_BULK_EXPORT_FILE ||= [BULK_PATIENT_ONE, BULK_PATIENT_TWO, BULK_PATIENT_THREE].freeze
  end
end
