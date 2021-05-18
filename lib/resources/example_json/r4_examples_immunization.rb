# frozen_string_literal: true

module Cerner
  module Resources
    R4_IMMUNIZATION_ENTRY ||= {
      'resourceType': 'Immunization',
      'id': 'M197197986',
      'meta': {
        'versionId': '1',
        'lastUpdated': '2019-12-26T13:12:59-06:00'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Immunization</b></p><p><b>Vaccine</b>: tetanus '\
               'toxoid</p><p><b>Occurrence</b>: 1982</p><p><b>Patient</b>: SMART, NANCY</p><p><b>Status</b>: '\
               'Completed</p></div>'
      },
      'status': 'completed',
      'vaccineCode': {
        'coding': [
          {
            'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/72',
            'code': '2798767',
            'display': 'tetanus toxoid',
            'userSelected': true
          },
          {
            'system': 'http://hl7.org/fhir/sid/cvx',
            'code': '112',
            'display': 'tetanus toxoid, unspecified formulation',
            'userSelected': false
          }
        ],
        'text': 'tetanus toxoid'
      },
      'patient': {
        'reference': 'Patient/12724066',
        'display': 'SMART, NANCY'
      },
      'encounter': {
        'reference': 'Encounter/97939518'
      },
      'occurrenceDateTime': '1982',
      'primarySource': false,
      'reportOrigin': {
        'coding': [
          {
            'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/30200',
            'code': '679978',
            'display': 'Self',
            'userSelected': true
          },
          {
            'system': 'http://terminology.hl7.org/CodeSystem/immunization-origin',
            'code': 'recall',
            'display': 'Parent/Guardian/Patient Recall',
            'userSelected': false
          }
        ],
        'text': 'Self'
      },
      'location': {
        'reference': 'Location/32545019',
        'display': 'A'
      },
      'doseQuantity': {
        'value': 0.0,
        'unit': 'unknown unit',
        'system': 'http://unitsofmeasure.org',
        'code': '{unknownunit}'
      }
    }.freeze

    R4_IMMUNIZATION_PATIENT_ENTRY ||= {
      'resourceType': 'Immunization',
      'id': 'M197197986',
      'meta': {
        'versionId': '1',
        'lastUpdated': '2019-12-26T13:12:59-06:00'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Immunization</b></p><p><b>Vaccine</b>: tetanus '\
               'toxoid</p><p><b>Occurrence</b>: 1982</p><p><b>Patient</b>: SMART, NANCY</p><p><b>Status</b>: '\
               'Completed</p></div>'
      },
      'status': 'completed',
      'vaccineCode': {
        'coding': [
          {
            'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/72',
            'code': '2798767',
            'display': 'tetanus toxoid',
            'userSelected': true
          },
          {
            'system': 'http://hl7.org/fhir/sid/cvx',
            'code': '112',
            'display': 'tetanus toxoid, unspecified formulation',
            'userSelected': false
          }
        ],
        'text': 'tetanus toxoid'
      },
      'patient': {
        'reference': 'Patient/12724066',
        'display': 'SMART, NANCY'
      },
      'encounter': {
        'reference': 'Encounter/97939518'
      },
      'occurrenceDateTime': '1982',
      'primarySource': false,
      'reportOrigin': {
        'coding': [
          {
            'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/30200',
            'code': '679978',
            'display': 'Self',
            'userSelected': true
          },
          {
            'system': 'http://terminology.hl7.org/CodeSystem/immunization-origin',
            'code': 'recall',
            'display': 'Parent/Guardian/Patient Recall',
            'userSelected': false
          }
        ],
        'text': 'Self'
      },
      'location': {
        'reference': 'Location/32545019',
        'display': 'A'
      },
      'doseQuantity': {
        'value': 0.0,
        'unit': 'unknown unit',
        'system': 'http://unitsofmeasure.org',
        'code': '{unknownunit}'
      }
    }.freeze

    R4_IMMUNIZATION_ENTERED_IN_ERROR_STATUS ||= {
      'resourceType': 'Immunization',
      'id': 'M197197986',
      'meta': {
        'versionId': '1',
        'lastUpdated': '2019-12-26T13:12:59-06:00'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns=\"http://www.w3.org/1999/xhtml\'><p><b>Immunization</b></p>'\
        '<p><b>Patient</b>:MARSTON, JACK</p><p><b>Status</b>: Entered in Error</p></div>'
      },
      'status': 'entered-in-error',
      'vaccineCode': {
        'coding': [
          {
            'system': 'http://terminology.hl7.org/CodeSystem/data-absent-reason',
            'code': 'error',
            'display': 'Error'
          }
        ],
        'text': 'Error'
      },
      'patient': {
        'reference': 'Patient/166045489',
        'display': 'MARSTON, JACK'
      },
      '_occurrenceDateTime': {
        'extension': [
          {
            'valueCode': 'error',
            'url': 'http://hl7.org/fhir/StructureDefinition/data-absent-reason'
          }
        ]
      }
    }.freeze

    R4_IMMUNIZATION_NOT_DONE_STATUS ||= {
      'resourceType': 'Immunization',
      'id': 'HM178147794',
      'meta': {
        'versionId': '0',
        'lastUpdated': '2020-09-09T12:55:55-05:00'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Immunization</b></p>'\
        '<p><b>Vaccine</b>: Rotavirus</p><p><b>Occurrence</b>: Sep  9, 2020 12:55 P.M. CDT</p>'\
        '<p><b>Patient</b>: MARSTON, JACK</p><p><b>Status</b>: Not Done</p>'\
        '<p><b>Status Reason</b>: Patient Refuses</p></div>'
      },
      'status': 'not-done',
      'statusReason': {
        'coding': [
          {
            'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/30200',
            'code': '679611',
            'display': 'Patient Refuses',
            'userSelected': true
          },
          {
            'system': 'http://snomed.info/sct',
            'code': '591000119102',
            'display': 'Vaccine refused by patient (situation)',
            'userSelected': false
          }
        ],
        'text': 'Patient Refuses'
      },
      'vaccineCode': {
        'text': 'Rotavirus'
      },
      'patient': {
        'reference': 'Patient/166045489',
        'display': 'MARSTON, JACK'
      },
      'occurrenceDateTime': '2020-09-09T12:55:55-05:00',
      'primarySource': true
    }.freeze

    R4_IMMUNIZATION_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '24685278-6535-4770-9705-974db80e729b',
      'type': 'searchset',
      'total': 2,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Immunization?patient=12724066'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Immunization/M197197986',
          'resource': R4_IMMUNIZATION_ENTRY
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Immunization/M197197982',
          'resource': {
            'resourceType': 'Immunization',
            'id': 'M197197982',
            'meta': {
              'versionId': '1',
              'lastUpdated': '2019-12-26T13:12:59-06:00'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Immunization</b></p><p><b>Vaccine</b>: '\
                     'influenza virus vaccine, live</p><p><b>Occurrence</b>: 2019</p><p><b>Patient</b>: SMART, NANCY'\
                     '</p><p><b>Status</b>: Completed</p></div>'
            },
            'status': 'completed',
            'vaccineCode': {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/72',
                  'code': '2820756',
                  'display': 'influenza virus vaccine, live',
                  'userSelected': true
                },
                {
                  'system': 'http://hl7.org/fhir/sid/cvx',
                  'code': '111',
                  'display': 'influenza, live, intranasal',
                  'userSelected': false
                }
              ],
              'text': 'influenza virus vaccine, live'
            },
            'patient': {
              'reference': 'Patient/12724066',
              'display': 'SMART, NANCY'
            },
            'encounter': {
              'reference': 'Encounter/97939518'
            },
            'occurrenceDateTime': '2019',
            'primarySource': false,
            'reportOrigin': {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/30200',
                  'code': '679978',
                  'display': 'Self',
                  'userSelected': true
                },
                {
                  'system': 'http://terminology.hl7.org/CodeSystem/immunization-origin',
                  'code': 'recall',
                  'display': 'Parent/Guardian/Patient Recall',
                  'userSelected': false
                }
              ],
              'text': 'Self'
            },
            'location': {
              'reference': 'Location/32545019',
              'display': 'A'
            },
            'doseQuantity': {
              'value': 0.0,
              'unit': 'unknown unit',
              'system': 'http://unitsofmeasure.org',
              'code': '{unknownunit}'
            }
          }
        }
      ]
    }.freeze

    R4_IMMUNIZATION_PATIENT_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '24685278-6535-4770-9705-974db80e729b',
      'type': 'searchset',
      'total': 2,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Immunization?patient=12724066'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Immunization/M197197986',
          'resource': R4_IMMUNIZATION_ENTRY
        },
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Immunization/M197197982',
          'resource': {
            'resourceType': 'Immunization',
            'id': 'M197197982',
            'meta': {
              'versionId': '1',
              'lastUpdated': '2019-12-26T13:12:59-06:00'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Immunization</b></p><p><b>Vaccine</b>: '\
                     'influenza virus vaccine, live</p><p><b>Occurrence</b>: 2019</p><p><b>Patient</b>: SMART, NANCY'\
                     '</p><p><b>Status</b>: Completed</p></div>'
            },
            'status': 'completed',
            'vaccineCode': {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/72',
                  'code': '2820756',
                  'display': 'influenza virus vaccine, live',
                  'userSelected': true
                },
                {
                  'system': 'http://hl7.org/fhir/sid/cvx',
                  'code': '111',
                  'display': 'influenza, live, intranasal',
                  'userSelected': false
                }
              ],
              'text': 'influenza virus vaccine, live'
            },
            'patient': {
              'reference': 'Patient/12724066',
              'display': 'SMART, NANCY'
            },
            'encounter': {
              'reference': 'Encounter/97939518'
            },
            'occurrenceDateTime': '2019',
            'primarySource': false,
            'reportOrigin': {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/30200',
                  'code': '679978',
                  'display': 'Self',
                  'userSelected': true
                },
                {
                  'system': 'http://terminology.hl7.org/CodeSystem/immunization-origin',
                  'code': 'recall',
                  'display': 'Parent/Guardian/Patient Recall',
                  'userSelected': false
                }
              ],
              'text': 'Self'
            },
            'location': {
              'reference': 'Location/32545019',
              'display': 'A'
            },
            'doseQuantity': {
              'value': 0.0,
              'unit': 'unknown unit',
              'system': 'http://unitsofmeasure.org',
              'code': '{unknownunit}'
            }
          }
        }
      ]
    }.freeze

    R4_IMMUNIZATION_CREATE ||= {
      'resourceType': 'Immunization',
      'status': 'completed',
      'occurrenceDateTime': '2019-06-30T10:35:00-05:00',
      'vaccineCode': {
        'coding': [
          {
            'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/72',
            'code': '2798767',
            'display': 'tetanus toxoid',
            'userSelected': false
          }
        ],
        'text': 'tetanus toxoid'
      },
      'patient': {
        'reference': 'Patient/12724066'
      },
      'encounter': {
        'reference': 'Encounter/97939518'
      },
      'reportOrigin': {
        'coding': [
          {
            'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/30200',
            'code': '679978',
            'display': 'Self',
            'userSelected': true
          }
        ],
        'text': 'Self'
      },
      # TODO: Update Site and Route
      'site': {
        'coding': [
          {
            'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/97',
            'code': '610',
            'display': 'Right Hand',
            'userSelected': false
          }
        ],
        'text': 'Right Hand'
      },
      'route': {
        'coding': [
          {
            'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/4001',
            'code': '318167',
            'display': 'IM',
            'userSelected': false
          }
        ],
        'text': 'IM'
      }
    }.freeze

    R4_IMMUNIZATION_UPDATE ||= {
      'resourceType': 'Immunization',
      'id': 'M197197986',
      'status': 'completed',
      'occurrenceDateTime': '2019-07-15T10:35:00-05:00',
      'vaccineCode': {
        'coding': [
          {
            'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/72',
            'code': '2798767',
            'display': 'tetanus toxoid',
            'userSelected': true
          }
        ],
        'text': 'tetanus toxoid'
      },
      'patient': {
        'reference': 'Patient/12724066'
      },
      'encounter': {
        'reference': 'Encounter/97939518'
      },
      'reportOrigin': {
        'coding': [
          {
            'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/30200',
            'code': '679978',
            'display': 'Self',
            'userSelected': true
          }
        ],
        'text': 'Self'
      },
      'performer': [
        {
          'function': {
            'coding': [
              {
                'system': 'http://terminology.hl7.org/CodeSystem/v2-0443',
                'code': 'AP',
                'display': 'Administering Provider'
              }
            ],
            'text': 'Administering Provider'
          },
          'actor': {
            'reference': 'Practitioner/4122622'
          }
        }
      ]
    }.freeze

    R4_IMMUNIZATION_REVINCLUDE_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': 'd186de6b-664c-4fe1-b311-5569c9a559cd',
      'type': 'searchset',
      'total': 2,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-ehr-partners.devcernerpowerchart.com/r4/eb2384f8-839e-4c6e-8b29-18e71db1a0b1/Immunization?_id=M17255835,M17255827&_revinclude=Provenance%3Atarget'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-ehr-partners.devcernerpowerchart.com/r4/eb2384f8-839e-4c6e-8b29-18e71db1a0b1/Immunization/M17255835',
          'resource': {
            'resourceType': 'Immunization',
            'id': 'M17255835',
            'meta': {
              'versionId': '1',
              'lastUpdated': '2020-04-07T22:19:45+00:00'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Immunization</b></p><p><b>Vaccine</b>: cholera vaccine</p><p><b>Occurrence</b>: Apr  5, 2020</p><p><b>Patient</b>: HEATHERJSMITH</p><p><b>Status</b>: Completed</p><p><b>Organization</b>: Baseline West Medical Center</p></div>'
            },
            'identifier': [
              {
                'system': 'https://fhir.cerner.com/ceuuid',
                'value': 'CEfda49233-ccfa-4ed4-afbc-9f5082c2bf0c-17255835-2020040717194500'
              }
            ],
            'status': 'completed',
            'vaccineCode': {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/eb2384f8-839e-4c6e-8b29-18e71db1a0b1/codeSet/72',
                  'code': '4337240',
                  'display': 'cholera vaccine',
                  'userSelected': true
                },
                {
                  'system': 'http://hl7.org/fhir/sid/cvx',
                  'code': '26',
                  'display': 'cholera vaccine, unspecified formulation',
                  'userSelected': false
                }
              ],
              'text': 'cholera vaccine'
            },
            'patient': {
              'reference': 'Patient/744104',
              'display': 'HEATHERJSMITH'
            },
            'encounter': {
              'reference': 'Encounter/5330647'
            },
            'occurrenceDateTime': '2020-04-05',
            'primarySource': false,
            'reportOrigin': {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/eb2384f8-839e-4c6e-8b29-18e71db1a0b1/codeSet/30200',
                  'code': '19162979',
                  'display': 'Primary Care Provider',
                  'userSelected': true
                },
                {
                  'system': 'http://terminology.hl7.org/CodeSystem/immunization-origin',
                  'code': 'provider',
                  'display': 'Other Provider',
                  'userSelected': false
                }
              ],
              'text': 'Primary Care Provider'
            },
            'location': {
              'reference': 'Location/633867',
              'display': 'Baseline West'
            },
            'doseQuantity': {
              'value': 0.0,
              'unit': 'unknown unit',
              'system': 'http://unitsofmeasure.org',
              'code': '{unknownunit}'
            },
            'performer': [
              {
                'actor': {
                  'reference': 'Organization/589723',
                  'display': 'Baseline West Medical Center'
                }
              }
            ]
          },
          'search': {
            'mode': 'match'
          }
        },
        {
          'fullUrl': 'https://fhir-ehr-partners.devcernerpowerchart.com/r4/eb2384f8-839e-4c6e-8b29-18e71db1a0b1/Immunization/M17255827',
          'resource': {
            'resourceType': 'Immunization',
            'id': 'M17255827',
            'meta': {
              'versionId': '1',
              'lastUpdated': '2020-04-07T22:17:33+00:00'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Immunization</b></p><p><b>Vaccine</b>: diphtheria/pertussis, acel/tetanus ped</p><p><b>Occurrence</b>: Apr  7, 2020</p><p><b>Patient</b>: HEATHERJSMITH</p><p><b>Status</b>: Not Done</p><p><b>Status Reason</b>: Patient Refuses</p><p><b>Organization</b>: Baseline West Medical Center</p></div>'
            },
            'identifier': [
              {
                'system': 'https://fhir.cerner.com/ceuuid',
                'value': 'CEfda49233-ccfa-4ed4-afbc-9f5082c2bf0c-17255827-2020040717173300'
              }
            ],
            'status': 'not-done',
            'statusReason': {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/eb2384f8-839e-4c6e-8b29-18e71db1a0b1/codeSet/30440',
                  'code': '679607',
                  'display': 'Patient Refuses',
                  'userSelected': true
                },
                {
                  'system': 'http://snomed.info/sct',
                  'code': '591000119102',
                  'display': 'Vaccine refused by patient (situation)',
                  'userSelected': false
                }
              ],
              'text': 'Patient Refuses'
            },
            'vaccineCode': {
              'coding': [
                {
                  'system': 'https://fhir.cerner.com/eb2384f8-839e-4c6e-8b29-18e71db1a0b1/codeSet/72',
                  'code': '4145944',
                  'display': 'diphtheria/pertussis, acel/tetanus ped',
                  'userSelected': true
                },
                {
                  'system': 'http://hl7.org/fhir/sid/cvx',
                  'code': '20',
                  'display': 'diphtheria, tetanus toxoids and acellular pertussis vaccine',
                  'userSelected': false
                }
              ],
              'text': 'diphtheria/pertussis, acel/tetanus ped'
            },
            'patient': {
              'reference': 'Patient/744104',
              'display': 'HEATHERJSMITH'
            },
            'occurrenceDateTime': '2020-04-07',
            'primarySource': true,
            'performer': [
              {
                'actor': {
                  'reference': 'Organization/589723',
                  'display': 'Baseline West Medical Center'
                }
              }
            ]
          },
          'search': {
            'mode': 'match'
          }
        },
        {
          'fullUrl': 'https://fhir-ehr-partners.devcernerpowerchart.com/r4/eb2384f8-839e-4c6e-8b29-18e71db1a0b1/Provenance/imm-12568185',
          'resource': {
            'resourceType': 'Provenance',
            'id': 'imm-12568185',
            'meta': {
              'versionId': '12568185',
              'lastUpdated': '2021-05-14T10:08:47-05:00'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Provenance</b></p><p><b>Target</b>:</p><ul><li>Immunization/M17255835</li></ul><p><b>Recorded</b>: Oct 25, 2019  9:57 A.M. CDT</p><p><b>Agents</b>:</p><dl><dt>Unknown</dt><dd><b>Agent Type</b>: Transmitter</dd><dd><b>Agent Role</b>: Source</dd></dl><p><b>Entity Source</b>: DocumentReference/17255835</p></div>'
            },
            'target': [
              {
                'reference': 'Immunization/M17255835'
              }
            ],
            'recorded': '2019-10-25T09:57:43-05:00',
            'agent': [
              {
                'type': {
                  'coding': [
                    {
                      'system': 'http://hl7.org/fhir/us/core/CodeSystem/us-core-provenance-participant-type',
                      'code': 'transmitter'
                    }
                  ],
                  'text': 'Transmitter'
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
                  'display': 'Unknown'
                }
              }
            ],
            'entity': [
              {
                'role': 'source',
                'what': {
                  'reference': 'DocumentReference/17255835'
                }
              }
            ]
          },
          'search': {
            'mode': 'include'
          }
        },
        {
          'fullUrl': 'https://fhir-ehr-partners.devcernerpowerchart.com/r4/eb2384f8-839e-4c6e-8b29-18e71db1a0b1/Provenance/imm-12595155',
          'resource': {
            'resourceType': 'Provenance',
            'id': 'imm-12595155',
            'meta': {
              'versionId': '12595155',
              'lastUpdated': '2021-05-17T01:08:34-05:00'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Provenance</b></p><p><b>Target</b>:</p><ul><li>Immunization/M17255835</li></ul><p><b>Recorded</b>: Oct 25, 2019  9:57 A.M. CDT</p><p><b>Agents</b>:</p><dl><dt>Unknown</dt><dd><b>Agent Type</b>: Transmitter</dd><dd><b>Agent Role</b>: Source</dd></dl><p><b>Entity Source</b>: DocumentReference/17255835</p></div>'
            },
            'target': [
              {
                'reference': 'Immunization/M17255835'
              }
            ],
            'recorded': '2019-10-25T09:57:43-05:00',
            'agent': [
              {
                'type': {
                  'coding': [
                    {
                      'system': 'http://hl7.org/fhir/us/core/CodeSystem/us-core-provenance-participant-type',
                      'code': 'transmitter'
                    }
                  ],
                  'text': 'Transmitter'
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
                  'display': 'Unknown'
                }
              }
            ],
            'entity': [
              {
                'role': 'source',
                'what': {
                  'reference': 'DocumentReference/17255835'
                }
              }
            ]
          },
          'search': {
            'mode': 'include'
          }
        }
      ]
    }.freeze
  end
end
