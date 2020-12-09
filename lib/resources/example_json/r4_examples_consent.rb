# frozen_string_literal: true

module Cerner
  module Resources

    # TODO: Missing data
    R4_CONSENT_ENTRY ||= {
      "resourceType": 'Consent',
      "id": 'AR-12742397-12724066',
      "meta": {
        "versionId": '5',
        "lastUpdated": '2020-08-21T15:51:38.000Z'
      },
      "text": {
        "status": 'generated',
        "div": '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Consent</b></p><p><b>Patient Name</b>: SMART, BABY BOY</p><p><b>Status</b>: Active</p><p><b>Scope</b>: Privacy Consent</p><p><b>Category</b>: Patient Consent</p><p><b>Policy Rule</b>: Consent given for electronic record sharing (finding)</p><p><b>Consent Start Date</b>: Jul  9, 2020  2:15 P.M. UTC</p><p><b>Actor Name</b>: SMART, NANCY</p><p><b>Actor Role</b>: Authorized Representative</p></div>' # rubocop:disable Layout/LineLength
      },
      "status": 'active',
      "scope": {
        "coding": [
          {
            "system": 'http://terminology.hl7.org/CodeSystem/consentscope',
            "code": 'patient-privacy',
            "display": 'Privacy Consent'
          }
        ],
        "text": 'Privacy Consent'
      },
      "category": [
        {
          "coding": [
            {
              "system": 'http://loinc.org',
              "code": '59284-0',
              "display": 'Patient Consent'
            }
          ],
          "text": 'Patient Consent'
        }
      ],
      "patient": {
        "reference": 'Patient/12742397',
        "display": 'SMART, BABY BOY'
      },
      "policyRule": {
        "coding": [
          {
            "system": 'http://snomed.info/sct',
            "code": '425691002',
            "display": 'Consent given for electronic record sharing (finding)'
          }
        ],
        "text": 'Consent given for electronic record sharing (finding)'
      },
      "provision": {
        "type": 'permit',
        "period": {
          "start": '2020-07-09T14:15:16.000Z'
        },
        "actor": [
          {
            "id": '12724066',
            "role": {
              "coding": [
                {
                  "system": 'http://terminology.hl7.org/CodeSystem/v3-ParticipationFunction',
                  "code": 'AUCG',
                  "display": 'caregiver information receiver'
                }
              ],
              "text": 'Authorized Representative'
            },
            "reference": {
              "reference": 'RelatedPerson/12724066-12742397',
              "display": 'SMART, NANCY'
            }
          }
        ],
        "action": [
          {
            "coding": [
              {
                "system": 'http://terminology.hl7.org/CodeSystem/consentaction',
                "code": 'correct',
                "display": 'Access and Correct'
              }
            ],
            "text": 'Access and Correct'
          }
        ],
        "purpose": [
          {
            "system": 'http://terminology.hl7.org/CodeSystem/v3-ActReason',
            "code": 'PurposeOfUse',
            "display": 'purpose of use'
          }
        ]
      }
    }.freeze

    R4_CONSENT_BUNDLE ||= {
      "resourceType": 'Bundle',
      "id": '9030475d-88ee-458d-8c2d-6907f50b51ef',
      "type": 'searchset',
      "link": [
        {
          "relation": 'self',
          "url": 'http://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Consent?patient=12742397'
        }
      ],
      "entry": [
        {
          "fullUrl": 'http://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Consent/AR-12742397-12724066',
          "resource": R4_CONSENT_ENTRY
        },
        "search": {
          "mode": 'match'
        }
      ]
    }.freeze

    R4_CONSENT_PATIENT_BUNDLE ||= {
      "resourceType": 'Bundle',
      "id": '9030475d-88ee-458d-8c2d-6907f50b51ef',
      "type": 'searchset',
      "link": [
        {
          "relation": 'self',
          "url": 'http://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Consent?patient=12742397'
        }
      ],
      "entry": [
        {
          "fullUrl": 'http://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Consent/AR-12742397-12724066',
          "resource": R4_CONSENT_ENTRY
        },
        "search": {
          "mode": 'match'
        }
      ]
    }.freeze

    R4_CONSENT_ID_BUNDLE ||= {
      "resourceType": 'Bundle',
      "id": 'b8fffddc-85f6-4121-8e50-c42aadacc63b',
      "type": 'searchset',
      "link": [
        {
          "relation": 'self',
          "url": 'http://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Consent?_id=AR-12724069-12724066'
        }
      ],
      "entry": [
        {
          "fullUrl": 'http://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Consent/AR-12724069-12724066',
          "resource": R4_CONSENT_ENTRY
        },
        "search": {
          "mode": 'match'
        }
      ]
    }.freeze

    R4_CONSENT_ACTOR_BUNDLE ||= {
      "resourceType": 'Bundle',
      "id": '133043a5-2f67-41c7-a93c-bfe3cb95dffd',
      "type": 'searchset',
      "link": [
        {
          "relation": 'self',
          "url": 'http://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Consent?actor=12724066-12724069'
        }
      ],
      "entry": [
        {
          "fullUrl": 'http://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Consent/AR-12724069-12724066',
          "resource": R4_CONSENT_ENTRY
        },
        "search": {
          "mode": 'match'
        }
      ]
    }.freeze

    R4_CONSENT_INCLUDE_BUNDLE ||= {
      "resourceType": 'Bundle',
      "id": '1ed02fdc-2c0b-4624-b333-15b9d1e86bd9',
      "type": 'searchset',
      "link": [
        {
          "relation": 'self',
          "url": 'http://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Consent?patient=12742397&_include=Consent%3Apatient&_include=Consent%3Aactor'
        }
      ],
      "entry": [
        {
          "fullUrl": 'http://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Consent/AR-12742397-12724066',
          "resource": R4_CONSENT_ENTRY
        },
        {
          "fullUrl": 'http://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Patient/12742397',
          "resource": {
            "resourceType": 'Patient',
            "id": '12742397',
            "meta": {
              "versionId": '5',
              "lastUpdated": '2020-08-21T15:51:38.000Z'
            },
            "text": {
              "status": 'generated',
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Patient</b></p><p><b>Name</b>: SMART, BABY BOY</p><p><b>Status</b>: Active</p><p><b>DOB</b>: Mar  2, 2020</p><p><b>Administrative Gender</b>: Male</p><p><b>Marital Status</b>: Single</p></div>' # rubocop:disable Layout/LineLength
            },
            "extension": [
              {
                "extension": [
                  {
                    "valueCoding": {
                      "system": 'urn:oid:2.16.840.1.113883.6.238',
                      "code": '2106-3',
                      "display": 'White',
                      "userSelected": false
                    },
                    "url": 'ombCategory'
                  },
                  {
                    "valueString": 'White',
                    "url": 'text'
                  }
                ],
                "url": 'http://hl7.org/fhir/us/core/StructureDefinition/us-core-race'
              },
              {
                "extension": [
                  {
                    "valueCoding": {
                      "system": 'urn:oid:2.16.840.1.113883.6.238',
                      "code": '2186-5',
                      "display": 'Not Hispanic or Latino',
                      "userSelected": false
                    },
                    "url": 'ombCategory'
                  },
                  {
                    "valueString": 'Not Hispanic, Latino, or Spanish Origin',
                    "url": 'text'
                  }
                ],
                "url": 'http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity'
              }
            ],
            "identifier": [
              {
                "id": 'CI-490052360-0',
                "use": 'usual',
                "type": {
                  "coding": [
                    {
                      "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4',
                      "code": '10',
                      "display": 'MRN',
                      "userSelected": true
                    },
                    {
                      "system": 'http://terminology.hl7.org/CodeSystem/v2-0203',
                      "code": 'MR',
                      "display": 'Medical record number',
                      "userSelected": false
                    }
                  ],
                  "text": 'MRN'
                },
                "system": 'urn:oid:2.16.840.1.113883.6.1000',
                "value": '6946',
                "period": {
                  "start": '2020-03-04T18:58:24.000Z'
                }
              },
              {
                "id": 'CI-490068259-2',
                "use": 'usual',
                "type": {
                  "coding": [
                    {
                      "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4',
                      "code": '22',
                      "display": 'Military Id',
                      "userSelected": true
                    }
                  ],
                  "text": 'Military Id'
                },
                "system": 'urn:oid:2.16.840.1.113883.3.42.10001.100001.12',
                "value": '10050007022'
              },
              {
                "id": 'CI-490060091-3',
                "use": 'usual',
                "type": {
                  "coding": [
                    {
                      "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4',
                      "code": '670843',
                      "display": 'Messaging',
                      "userSelected": true
                    },
                    {
                      "system": 'http://terminology.hl7.org/CodeSystem/v2-0203',
                      "code": 'U',
                      "display": 'Unspecified identifier',
                      "userSelected": false
                    }
                  ],
                  "text": 'Messaging'
                },
                "system": 'urn:oid:2.16.840.1.113883.3.13.8',
                "value": 'A018E18315544A4DB402B55DE1AB7154',
                "period": {
                  "start": '2020-07-09T14:16:53.000Z'
                }
              }
            ],
            "active": true,
            "name": [
              {
                "id": 'CI-12742397-0',
                "use": 'official',
                "text": 'SMART, BABY BOY',
                "family": 'SMART',
                "given": [
                  'BABY BOY'
                ],
                "period": {
                  "start": '2020-03-04T18:58:24.000Z'
                }
              }
            ],
            "telecom": [
              {
                "id": 'CI-EM-29822922-0',
                "system": 'email',
                "value": 'babyboysmart@yopmail.com',
                "use": 'home',
                "rank": 1,
                "period": {
                  "start": '2020-07-09T14:15:16.000Z'
                }
              }
            ],
            "gender": 'male',
            "birthDate": '2020-03-02',
            "address": [
              {
                "id": 'CI-24326083-0',
                "use": 'home',
                "text": "123 MAIN\nKANSAS CITY, MO 64116\nUS",
                "line": [
                  '123 MAIN'
                ],
                "city": 'KANSAS CITY',
                "state": 'MO',
                "postalCode": '64116',
                "country": 'US',
                "period": {
                  "start": '2020-03-04T18:53:59.000Z'
                }
              }
            ],
            "maritalStatus": {
              "coding": [
                {
                  "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/38',
                  "code": '309239',
                  "display": 'Single',
                  "userSelected": true
                },
                {
                  "system": 'http://terminology.hl7.org/CodeSystem/v3-MaritalStatus',
                  "code": 'U',
                  "display": 'unmarried',
                  "userSelected": false
                }
              ],
              "text": 'Single'
            },
            "contact": [
              {
                "relationship": [
                  {
                    "coding": [
                      {
                        "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/351',
                        "code": '2553243305',
                        "display": 'Authorized Representative',
                        "userSelected": true
                      }
                    ],
                    "text": 'Authorized Representative'
                  }
                ],
                "name": {
                  "id": 'CI-12724066-0',
                  "use": 'official',
                  "text": 'SMART, NANCY',
                  "family": 'SMART',
                  "given": [
                    'NANCY'
                  ],
                  "period": {
                    "start": '2019-12-26T15:12:34.000Z'
                  }
                },
                "telecom": [
                  {
                    "system": 'phone',
                    "value": '9876543210',
                    "use": 'home',
                    "rank": 1,
                    "period": {
                      "start": '2019-12-26T15:12:34.000Z'
                    }
                  },
                  {
                    "system": 'email',
                    "value": 'nancysmart@yopmail.com',
                    "use": 'home',
                    "rank": 1,
                    "period": {
                      "start": '2020-06-30T19:47:10.000Z'
                    }
                  }
                ],
                "address": {
                  "use": 'home',
                  "text": "12345 MAIN ST\nKANSAS CITY, MO 64151-0001\nUS",
                  "line": [
                    '12345 MAIN ST'
                  ],
                  "city": 'KANSAS CITY',
                  "district": 'Jackson',
                  "state": 'MO',
                  "postalCode": '64151-0001',
                  "country": 'US',
                  "period": {
                    "start": '2020-12-08T15:05:44.000Z'
                  }
                },
                "gender": 'female',
                "period": {
                  "start": '2020-07-09T14:15:16.000Z'
                }
              },
              {
                "relationship": [
                  {
                    "coding": [
                      {
                        "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/351',
                        "code": '1153',
                        "display": 'Family Member',
                        "userSelected": true
                      }
                    ],
                    "text": 'Family Member'
                  }
                ],
                "name": {
                  "id": 'CI-12724066-0',
                  "use": 'official',
                  "text": 'SMART, NANCY',
                  "family": 'SMART',
                  "given": [
                    'NANCY'
                  ],
                  "period": {
                    "start": '2019-12-26T15:12:34.000Z'
                  }
                },
                "telecom": [
                  {
                    "system": 'phone',
                    "value": '9876543210',
                    "use": 'home',
                    "rank": 1,
                    "period": {
                      "start": '2019-12-26T15:12:34.000Z'
                    }
                  },
                  {
                    "system": 'email',
                    "value": 'nancysmart@yopmail.com',
                    "use": 'home',
                    "rank": 1,
                    "period": {
                      "start": '2020-06-30T19:47:10.000Z'
                    }
                  }
                ],
                "address": {
                  "use": 'home',
                  "text": "12345 MAIN ST\nKANSAS CITY, MO 64151-0001\nUS",
                  "line": [
                    '12345 MAIN ST'
                  ],
                  "city": 'KANSAS CITY',
                  "district": 'Jackson',
                  "state": 'MO',
                  "postalCode": '64151-0001',
                  "country": 'US',
                  "period": {
                    "start": '2020-12-08T15:05:44.000Z'
                  }
                },
                "gender": 'female',
                "period": {
                  "start": '2020-03-04T18:58:24.000Z'
                }
              }
            ],
            "communication": [
              {
                "language": {
                  "coding": [
                    {
                      "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/36',
                      "code": '151',
                      "display": 'English',
                      "userSelected": true
                    },
                    {
                      "system": 'urn:ietf:bcp:47',
                      "code": 'en',
                      "display": 'English',
                      "userSelected": false
                    }
                  ],
                  "text": 'English'
                },
                "preferred": true
              }
            ],
            "generalPractitioner": [
              {
                "id": 'CI-490128057-0',
                "reference": 'Practitioner/12744688',
                "display": 'PWDentrix, Dentalprofessional'
              },
              {
                "id": 'CI-490052374-1',
                "reference": 'Practitioner/4122630',
                "display": "Cerner Test, Physician - Women's Health Cerner"
              }
            ]
          },
          "search": {
            "mode": 'include'
          }
        },
        {
          "fullUrl": 'http://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/RelatedPerson/12724066-12742397',
          "resource": {
            "resourceType": 'RelatedPerson',
            "id": '12724066-12742397',
            "meta": {
              "versionId": 94,
              "lastUpdated": '2020-12-08T15:06:00.000Z'
            },
            "text": {
              "status": 'extensions',
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Related Person</b></p><p><b>Name</b>: SMART, NANCY</p><p><b>DOB</b>: Aug 11, 1980</p><p><b>Gender</b>: female</p><p><b>Patient</b>: SMART, BABY BOY</p><p><b>Status</b>: Active</p><p><b>Relationship</b>: Authorized Representative</p><p><b>Relationship</b>: Default Guarantor</p><p><b>Relationship</b>: Child</p><p><b>Relationship</b>: Family Member</p><p><b>Relationship Level</b>: Patient</p></div>' # rubocop:disable Layout/LineLength
            },
            "extension": [
              {
                "valueCodeableConcept": {
                  "coding": [
                    {
                      "system": 'http://hl7.org/fhir/resource-types',
                      "code": 'Patient',
                      "display": 'Patient'
                    }
                  ],
                  "text": 'Patient'
                },
                "url": 'https://fhir-ehr.cerner.com/r4/StructureDefinition/relationship-level'
              }
            ],
            "identifier": [
              {
                "id": 'CI-490060520-1',
                "use": 'usual',
                "type": {
                  "coding": [
                    {
                      "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4',
                      "code": '22',
                      "display": 'Military Id',
                      "userSelected": true
                    }
                  ],
                  "text": 'Military Id'
                },
                "system": 'urn:oid:2.16.840.1.113883.3.42.10001.100001.12',
                "value": '10050007001'
              },
              {
                "id": 'CI-490068325-2',
                "use": 'usual',
                "type": {
                  "coding": [
                    {
                      "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4',
                      "code": '2553236771',
                      "display": 'Federated Person Principal',
                      "userSelected": true
                    },
                    {
                      "system": 'http://terminology.hl7.org/CodeSystem/v2-0203',
                      "code": 'AN',
                      "display": 'Account number',
                      "userSelected": false
                    }
                  ],
                  "text": 'Federated Person Principal'
                },
                "system": 'urn:oid:2.16.840.1.113883.3.13.6',
                "value": 'URN:CERNER:IDENTITY-FEDERATION:REALM:EC2458F2-1E24-41C8-B71B-0E701AF7583D-CH:PRINCIPAL:RS7MH9WX3XB8VY63', # rubocop:disable Layout/LineLength
                "period": {
                  "start": '2020-08-10T14:29:20.000Z'
                }
              },
              {
                "id": 'CI-490059563-3',
                "use": 'usual',
                "type": {
                  "coding": [
                    {
                      "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4',
                      "code": '2553236771',
                      "display": 'Federated Person Principal',
                      "userSelected": true
                    },
                    {
                      "system": 'http://terminology.hl7.org/CodeSystem/v2-0203',
                      "code": 'AN',
                      "display": 'Account number',
                      "userSelected": false
                    }
                  ],
                  "text": 'Federated Person Principal'
                },
                "system": 'urn:oid:2.16.840.1.113883.3.13.6',
                "value": 'URN:CERNER:IDENTITY-FEDERATION:REALM:E8A84236-C258-4952-98B7-A6FF8A9C587A-CH:PRINCIPAL:RS7MH9WX3XB8VY63', # rubocop:disable Layout/LineLength
                "period": {
                  "start": '2020-06-30T20:06:42.000Z'
                }
              }
            ],
            "active": true,
            "patient": {
              "reference": 'Patient/12742397',
              "display": 'SMART, BABY BOY'
            },
            "relationship": [
              {
                "id": 'CI-490060081-0-0',
                "coding": [
                  {
                    "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/351',
                    "code": '2553243305',
                    "display": 'Authorized Representative',
                    "userSelected": true
                  }
                ],
                "text": 'Authorized Representative'
              },
              {
                "id": 'CI-490052368-0-1',
                "coding": [
                  {
                    "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/351',
                    "code": '1150',
                    "display": 'Default Guarantor',
                    "userSelected": true
                  },
                  {
                    "system": 'http://terminology.hl7.org/CodeSystem/v3-RoleCode',
                    "code": 'GT',
                    "display": 'Guarantor',
                    "userSelected": false
                  }
                ],
                "text": 'Default Guarantor'
              },
              {
                "id": 'CI-490052368-1-1',
                "coding": [
                  {
                    "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/40',
                    "code": '670847',
                    "display": 'Child',
                    "userSelected": true
                  },
                  {
                    "system": 'http://terminology.hl7.org/CodeSystem/v3-RoleCode',
                    "code": 'CHILD',
                    "display": 'child',
                    "userSelected": false
                  }
                ],
                "text": 'Child'
              },
              {
                "id": 'CI-490052380-0-2',
                "coding": [
                  {
                    "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/351',
                    "code": '1153',
                    "display": 'Family Member',
                    "userSelected": true
                  },
                  {
                    "system": 'http://terminology.hl7.org/CodeSystem/v3-RoleCode',
                    "code": 'FAMMEMB',
                    "display": 'family member',
                    "userSelected": false
                  }
                ],
                "text": 'Family Member'
              }
            ],
            "name": [
              {
                "id": 'CI-12724066-0',
                "use": 'official',
                "text": 'SMART, NANCY',
                "family": 'SMART',
                "given": [
                  'NANCY'
                ],
                "period": {
                  "start": '2019-12-26T15:12:34.000Z'
                }
              }
            ],
            "telecom": [
              {
                "id": 'CI-PH-29811918-0',
                "system": 'phone',
                "value": '9876543210',
                "use": 'home',
                "period": {
                  "start": '2019-12-26T15:12:34.000Z'
                }
              },
              {
                "id": 'CI-EM-29822894-0',
                "system": 'email',
                "value": 'nancysmart@yopmail.com',
                "use": 'home',
                "period": {
                  "start": '2020-06-30T19:47:10.000Z'
                }
              }
            ],
            "gender": 'female',
            "birthDate": '1980-08-11',
            "address": [
              {
                "id": 'CI-24313551-0',
                "use": 'home',
                "text": "12345 MAIN ST\nKANSAS CITY, MO 641510001\nUS",
                "line": [
                  '12345 MAIN ST'
                ],
                "city": 'KANSAS CITY',
                "district": 'Jackson',
                "state": 'MO',
                "postalCode": '641510001',
                "country": 'US',
                "period": {
                  "start": '2020-12-08T15:05:44.000Z'
                }
              }
            ],
            "communication": [
              {
                "language": {
                  "coding": [
                    {
                      "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/36',
                      "code": '151',
                      "display": 'English',
                      "userSelected": true
                    },
                    {
                      "system": 'urn:ietf:bcp:47',
                      "code": 'en',
                      "display": 'English',
                      "userSelected": false
                    }
                  ],
                  "text": 'English'
                },
                "preferred": 'true'
              }
            ]
          },
          "search": {
            "mode": 'include'
          }
        }
      ]
    }.freeze
  end
end
