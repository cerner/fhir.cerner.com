module Cerner
  module Resources
    R4_ENCOUNTER ||= {
      "resourceType": 'Encounter',
      "id": '4221604',
      "meta": {
        "versionId": '0',
        "lastUpdated": '2020-06-25T17:39:25.000Z'
      },
      "text": {
        "status": 'generated',
        "div": '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Encounter</b></p><p><b>Patient</b>: 108347B, Orion</p><p><b>Location</b>: Baseline East Medical Center</p><p><b>Type</b>: FC MED ELIG JUNIT ENCNTR TYPE CD</p><p><b>Class</b>: inpatient encounter</p><p><b>Status</b>: In Progress</p><p><b>Period Start Date</b>: Feb 28, 1970  6:20 P.M. CST</p><p><b>Period End Date</b>: Apr 30, 1970  7:20 P.M. CDT</p><p><b>Reason For Visit</b>: FEVER</p></div>'
      },
      "extension": [
        {
          "url": 'https://fhir-ehr.cerner.com/r4/StructureDefinition/client-organization',
          "valueReference": {
            "reference": 'Organization/675844'
          }
        },
        {
          "url": 'https://fhir-ehr.cerner.com/r4/StructureDefinition/estimated-financial-responsibility-amount',
          "valueMoney": {
            "value": 60.0,
            "currency": 'SEK'
          }
        },
        {
          "url": 'https://fhir-ehr.cerner.com/r4/StructureDefinition/payment-collection-status',
          "valueCodeableConcept": {
            "coding": [
              {
                "system": 'https://fhir.cerner.com/fb8067d7-e012-4703-8888-17b86d11f0f8/codeSet/4003489',
                "code": '40016413',
                "display": '1st Attempt - Left Message',
                "userSelected": true
              }
            ],
            "text": '1st Attempt - Left Message'
          }
        },
        {
          "url": 'https://fhir-ehr.cerner.com/r4/StructureDefinition/estimated-financial-responsibility-not-collected-reason',
          "valueCodeableConcept": {
            "coding": [
              {
                "system": 'https://fhir.cerner.com/fb8067d7-e012-4703-8888-17b86d11f0f8/codeSet/4660008',
                "code": '70189603',
                "display": 'Under 21 Years of Age',
                "userSelected": true
              }
            ],
            "text": 'Under 21 Years of Age'
          }
        }
      ],
      "identifier": [
        {
          "use": 'usual',
          "type": {
            "coding": [
              {
                "system": 'https://fhir.cerner.com/fb8067d7-e012-4703-8888-17b86d11f0f8/codeSet/319',
                "code": '1077',
                "display": 'FIN NBR',
                "userSelected": true
              },
              {
                "system": 'http://terminology.hl7.org/CodeSystem/v2-0203',
                "code": 'AN',
                "display": 'Account number',
                "userSelected": false
              }
            ],
            "text": 'FIN NBR'
          },
          "system": 'urn:oid:22.23.23.34.23.12',
          "value": '3550',
          "period": {
            "start": '1970-01-01T00:20:34.000Z'
          }
        }
      ],
      "status": 'in-progress',
      "class": {
        "system": 'http://terminology.hl7.org/CodeSystem/v3-ActCode',
        "code": 'IMP',
        "display": 'inpatient encounter',
        "userSelected": false
      },
      "type": [
        {
          "coding": [
            {
              "system": 'https://fhir.cerner.com/fb8067d7-e012-4703-8888-17b86d11f0f8/codeSet/71',
              "code": '75169729',
              "display": 'FC MED ELIG JUNIT ENCNTR TYPE CD',
              "userSelected": true
            }
          ],
          "text": 'FC MED ELIG JUNIT ENCNTR TYPE CD'
        },
        {
          "coding": [
            {
              "system": 'https://fhir.cerner.com/fb8067d7-e012-4703-8888-17b86d11f0f8/codeSet/639723',
              "code": '72708193',
              "display": 'Encounter Classification1A',
              "userSelected": true
            }
          ],
          "text": 'Encounter Classification1A'
        },
        {
          "coding": [
            {
              "system": 'https://fhir.cerner.com/fb8067d7-e012-4703-8888-17b86d11f0f8/codeSet/639724',
              "code": '72708247',
              "display": 'Encounter Classification2A',
              "userSelected": true
            }
          ],
          "text": 'Encounter Classification2A'
        },
        {
          "coding": [
            {
              "system": 'https://fhir.cerner.com/fb8067d7-e012-4703-8888-17b86d11f0f8/codeSet/639725',
              "code": '72708257',
              "display": 'Encounter Classification3A',
              "userSelected": true
            }
          ],
          "text": 'Encounter Classification3A'
        },
        {
          "coding": [
            {
              "system": 'https://fhir.cerner.com/fb8067d7-e012-4703-8888-17b86d11f0f8/codeSet/639726',
              "code": '72708511',
              "display": 'Encounter Classification4A',
              "userSelected": true
            }
          ],
          "text": 'Encounter Classification4A'
        }
      ],
      "subject": {
        "reference": 'Patient/4017160',
        "display": '108347B, Orion'
      },
      "period": {
        "start": '1970-03-01T00:20:34.000Z',
        "end": '1970-05-01T00:20:34.000Z'
      },
      "reasonCode": [
        {
          "text": 'FEVER'
        },
        {
          "coding": [
            {
              "system": 'https://fhir.cerner.com/fb8067d7-e012-4703-8888-17b86d11f0f8/codeSet/639727',
              "code": '72697299',
              "display": 'Brain Problem',
              "userSelected": true
            }
          ],
          "text": 'Brain Problem'
        }
      ],
      "location": [
        {
          "location": {
            "reference": 'Location/21250403',
            "display": 'Baseline East Medical Center'
          },
          "status": 'active'
        }
      ],
      "serviceProvider": {
        "reference": 'Organization/675844'
      }
    }.freeze

    R4_ENCOUNTER_BUNDLE ||= {
      "resourceType": 'Bundle',
      "id": 'e2f5ba73-0c55-4ebf-8df6-9c77b152696d',
      "type": 'searchset',
      "total": 3,
      "link": [
        {
          "relation": 'self',
          "url": 'https://fhir-ehr.stagingcerner.com/r4/fb8067d7-e012-4703-8888-17b86d11f0f8/Encounter?patient=4017160'
        }
      ],
      "entry": [
        {
          "fullUrl": 'https://fhir-ehr.stagingcerner.com/r4/fb8067d7-e012-4703-8888-17b86d11f0f8/Encounter/3510754',
          "resource": {
            "resourceType": 'Encounter',
            "id": '3510754',
            "meta": {
              "versionId": '0',
              "lastUpdated": '2020-05-15T21:22:32.000Z'
            },
            "text": {
              "status": 'generated',
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Encounter</b></p><p><b>Patient</b>: 108347B, Orion</p><p><b>Location</b>: Baseline East Medical Center</p><p><b>Type</b>: Outpatient</p><p><b>Class</b>: Outpatient</p><p><b>Status</b>: In Progress</p><p><b>Period Start Date</b>: May 12, 2020  3:00 P.M. CDT</p><p><b>Attending Physician</b>: Holbrook, Austin</p></div>'
            },
            "extension": [
              {
                "url": 'https://fhir-ehr.cerner.com/r4/StructureDefinition/estimated-financial-responsibility-amount',
                "valueMoney": {
                  "value": 0.0,
                  "currency": 'SEK'
                }
              }
            ],
            "identifier": [
              {
                "use": 'usual',
                "type": {
                  "coding": [
                    {
                      "system": 'https://fhir.cerner.com/fb8067d7-e012-4703-8888-17b86d11f0f8/codeSet/319',
                      "code": '1077',
                      "display": 'FIN NBR',
                      "userSelected": true
                    },
                    {
                      "system": 'http://terminology.hl7.org/CodeSystem/v2-0203',
                      "code": 'AN',
                      "display": 'Account number',
                      "userSelected": false
                    }
                  ],
                  "text": 'FIN NBR'
                },
                "system": 'urn:oid:22.23.23.34.23.12',
                "value": '2468',
                "period": {
                  "start": '2020-05-15T21:22:32.000Z'
                }
              }
            ],
            "status": 'in-progress',
            "class": {
              "system": 'http://terminology.hl7.org/CodeSystem/v2-0004',
              "code": 'O',
              "display": 'Outpatient',
              "userSelected": false
            },
            "type": [
              {
                "coding": [
                  {
                    "system": 'https://fhir.cerner.com/fb8067d7-e012-4703-8888-17b86d11f0f8/codeSet/71',
                    "code": '309309',
                    "display": 'Outpatient',
                    "userSelected": true
                  },
                  {
                    "system": 'http://terminology.hl7.org/CodeSystem/v2-0004',
                    "code": 'O',
                    "display": 'Outpatient',
                    "userSelected": false
                  }
                ],
                "text": 'Outpatient'
              }
            ],
            "subject": {
              "reference": 'Patient/4017160',
              "display": '108347B, Orion'
            },
            "participant": [
              {
                "type": [
                  {
                    "coding": [
                      {
                        "system": 'https://fhir.cerner.com/fb8067d7-e012-4703-8888-17b86d11f0f8/codeSet/333',
                        "code": '1119',
                        "display": 'Attending Physician',
                        "userSelected": true
                      },
                      {
                        "system": 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                        "code": 'ATND',
                        "display": 'attender',
                        "userSelected": false
                      }
                    ],
                    "text": 'Attending Physician'
                  }
                ],
                "period": {
                  "start": '2020-06-22T14:54:00.000Z'
                },
                "individual": {
                  "reference": 'Practitioner/3330138',
                  "display": 'Holbrook, Austin'
                }
              }
            ],
            "period": {
              "start": '2020-05-12T20:00:00.000Z'
            },
            "location": [
              {
                "location": {
                  "reference": 'Location/21250403',
                  "display": 'Baseline East Medical Center'
                },
                "status": 'active'
              }
            ],
            "serviceProvider": {
              "reference": 'Organization/675844'
            }
          }
        },
        {
          "fullUrl": 'https://fhir-ehr.stagingcerner.com/r4/fb8067d7-e012-4703-8888-17b86d11f0f8/Encounter/4203734',
          "resource": {
            "resourceType": 'Encounter',
            "id": '4203734',
            "meta": {
              "versionId": '0',
              "lastUpdated": '2020-06-24T16:53:02.000Z'
            },
            "text": {
              "status": 'generated',
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Encounter</b></p><p><b>Patient</b>: 108347B, Orion</p><p><b>Location</b>: Baseline East Medical Center</p><p><b>Type</b>: FC MED ELIG JUNIT ENCNTR TYPE CD</p><p><b>Class</b>: inpatient encounter</p><p><b>Status</b>: In Progress</p><p><b>Period Start Date</b>: Feb 28, 1970  6:20 P.M. CST</p><p><b>Period End Date</b>: Apr 30, 1970  7:20 P.M. CDT</p><p><b>Reason For Visit</b>: FEVER</p></div>'
            },
            "extension": [
              {
                "url": 'https://fhir-ehr.cerner.com/r4/StructureDefinition/estimated-financial-responsibility-amount',
                "valueMoney": {
                  "value": 60.0,
                  "currency": 'SEK'
                }
              },
              {
                "url": 'https://fhir-ehr.cerner.com/r4/StructureDefinition/payment-collection-status',
                "valueCodeableConcept": {
                  "coding": [
                    {
                      "system": 'https://fhir.cerner.com/fb8067d7-e012-4703-8888-17b86d11f0f8/codeSet/4003489',
                      "code": '40016413',
                      "display": '1st Attempt - Left Message',
                      "userSelected": true
                    }
                  ],
                  "text": '1st Attempt - Left Message'
                }
              },
              {
                "url": 'https://fhir-ehr.cerner.com/r4/StructureDefinition/estimated-financial-responsibility-not-collected-reason',
                "valueCodeableConcept": {
                  "coding": [
                    {
                      "system": 'https://fhir.cerner.com/fb8067d7-e012-4703-8888-17b86d11f0f8/codeSet/4660008',
                      "code": '70189603',
                      "display": 'Under 21 Years of Age',
                      "userSelected": true
                    }
                  ],
                  "text": 'Under 21 Years of Age'
                }
              }
            ],
            "identifier": [
              {
                "use": 'usual',
                "type": {
                  "coding": [
                    {
                      "system": 'https://fhir.cerner.com/fb8067d7-e012-4703-8888-17b86d11f0f8/codeSet/319',
                      "code": '1077',
                      "display": 'FIN NBR',
                      "userSelected": true
                    },
                    {
                      "system": 'http://terminology.hl7.org/CodeSystem/v2-0203',
                      "code": 'AN',
                      "display": 'Account number',
                      "userSelected": false
                    }
                  ],
                  "text": 'FIN NBR'
                },
                "system": 'urn:oid:22.23.23.34.23.12',
                "value": '3483',
                "period": {
                  "start": '1970-01-01T00:20:34.000Z'
                }
              }
            ],
            "status": 'in-progress',
            "class": {
              "system": 'http://terminology.hl7.org/CodeSystem/v3-ActCode',
              "code": 'IMP',
              "display": 'inpatient encounter',
              "userSelected": false
            },
            "type": [
              {
                "coding": [
                  {
                    "system": 'https://fhir.cerner.com/fb8067d7-e012-4703-8888-17b86d11f0f8/codeSet/71',
                    "code": '75169729',
                    "display": 'FC MED ELIG JUNIT ENCNTR TYPE CD',
                    "userSelected": true
                  }
                ],
                "text": 'FC MED ELIG JUNIT ENCNTR TYPE CD'
              },
              {
                "coding": [
                  {
                    "system": 'https://fhir.cerner.com/fb8067d7-e012-4703-8888-17b86d11f0f8/codeSet/639723',
                    "code": '72708193',
                    "display": 'Encounter Classification1A',
                    "userSelected": true
                  }
                ],
                "text": 'Encounter Classification1A'
              },
              {
                "coding": [
                  {
                    "system": 'https://fhir.cerner.com/fb8067d7-e012-4703-8888-17b86d11f0f8/codeSet/639724',
                    "code": '72708247',
                    "display": 'Encounter Classification2A',
                    "userSelected": true
                  }
                ],
                "text": 'Encounter Classification2A'
              },
              {
                "coding": [
                  {
                    "system": 'https://fhir.cerner.com/fb8067d7-e012-4703-8888-17b86d11f0f8/codeSet/639725',
                    "code": '72708257',
                    "display": 'Encounter Classification3A',
                    "userSelected": true
                  }
                ],
                "text": 'Encounter Classification3A'
              },
              {
                "coding": [
                  {
                    "system": 'https://fhir.cerner.com/fb8067d7-e012-4703-8888-17b86d11f0f8/codeSet/639726',
                    "code": '72708511',
                    "display": 'Encounter Classification4A',
                    "userSelected": true
                  }
                ],
                "text": 'Encounter Classification4A'
              }
            ],
            "subject": {
              "reference": 'Patient/4017160',
              "display": '108347B, Orion'
            },
            "period": {
              "start": '1970-03-01T00:20:34.000Z',
              "end": '1970-05-01T00:20:34.000Z'
            },
            "reasonCode": [
              {
                "text": 'FEVER'
              },
              {
                "coding": [
                  {
                    "system": 'https://fhir.cerner.com/fb8067d7-e012-4703-8888-17b86d11f0f8/codeSet/639727',
                    "code": '72697299',
                    "display": 'Brain Problem',
                    "userSelected": true
                  }
                ],
                "text": 'Brain Problem'
              }
            ],
            "location": [
              {
                "location": {
                  "reference": 'Location/21250403',
                  "display": 'Baseline East Medical Center'
                },
                "status": 'active'
              }
            ],
            "serviceProvider": {
              "reference": 'Organization/675844'
            }
          }
        },
        {
          "fullUrl": 'https://fhir-ehr.stagingcerner.com/r4/fb8067d7-e012-4703-8888-17b86d11f0f8/Encounter/4221604',
          "resource": {
            "resourceType": 'Encounter',
            "id": '4221604',
            "meta": {
              "versionId": '0',
              "lastUpdated": '2020-06-25T17:39:25.000Z'
            },
            "text": {
              "status": 'generated',
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Encounter</b></p><p><b>Patient</b>: 108347B, Orion</p><p><b>Location</b>: Baseline East Medical Center</p><p><b>Type</b>: FC MED ELIG JUNIT ENCNTR TYPE CD</p><p><b>Class</b>: inpatient encounter</p><p><b>Status</b>: In Progress</p><p><b>Period Start Date</b>: Feb 28, 1970  6:20 P.M. CST</p><p><b>Period End Date</b>: Apr 30, 1970  7:20 P.M. CDT</p><p><b>Reason For Visit</b>: FEVER</p></div>'
            },
            "extension": [
              {
                "url": 'https://fhir-ehr.cerner.com/r4/StructureDefinition/client-organization',
                "valueReference": {
                  "reference": 'Organization/675844'
                }
              },
              {
                "url": 'https://fhir-ehr.cerner.com/r4/StructureDefinition/estimated-financial-responsibility-amount',
                "valueMoney": {
                  "value": 60.0,
                  "currency": 'SEK'
                }
              },
              {
                "url": 'https://fhir-ehr.cerner.com/r4/StructureDefinition/payment-collection-status',
                "valueCodeableConcept": {
                  "coding": [
                    {
                      "system": 'https://fhir.cerner.com/fb8067d7-e012-4703-8888-17b86d11f0f8/codeSet/4003489',
                      "code": '40016413',
                      "display": '1st Attempt - Left Message',
                      "userSelected": true
                    }
                  ],
                  "text": '1st Attempt - Left Message'
                }
              },
              {
                "url": 'https://fhir-ehr.cerner.com/r4/StructureDefinition/estimated-financial-responsibility-not-collected-reason',
                "valueCodeableConcept": {
                  "coding": [
                    {
                      "system": 'https://fhir.cerner.com/fb8067d7-e012-4703-8888-17b86d11f0f8/codeSet/4660008',
                      "code": '70189603',
                      "display": 'Under 21 Years of Age',
                      "userSelected": true
                    }
                  ],
                  "text": 'Under 21 Years of Age'
                }
              }
            ],
            "identifier": [
              {
                "use": 'usual',
                "type": {
                  "coding": [
                    {
                      "system": 'https://fhir.cerner.com/fb8067d7-e012-4703-8888-17b86d11f0f8/codeSet/319',
                      "code": '1077',
                      "display": 'FIN NBR',
                      "userSelected": true
                    },
                    {
                      "system": 'http://terminology.hl7.org/CodeSystem/v2-0203',
                      "code": 'AN',
                      "display": 'Account number',
                      "userSelected": false
                    }
                  ],
                  "text": 'FIN NBR'
                },
                "system": 'urn:oid:22.23.23.34.23.12',
                "value": '3550',
                "period": {
                  "start": '1970-01-01T00:20:34.000Z'
                }
              }
            ],
            "status": 'in-progress',
            "class": {
              "system": 'http://terminology.hl7.org/CodeSystem/v3-ActCode',
              "code": 'IMP',
              "display": 'inpatient encounter',
              "userSelected": false
            },
            "type": [
              {
                "coding": [
                  {
                    "system": 'https://fhir.cerner.com/fb8067d7-e012-4703-8888-17b86d11f0f8/codeSet/71',
                    "code": '75169729',
                    "display": 'FC MED ELIG JUNIT ENCNTR TYPE CD',
                    "userSelected": true
                  }
                ],
                "text": 'FC MED ELIG JUNIT ENCNTR TYPE CD'
              },
              {
                "coding": [
                  {
                    "system": 'https://fhir.cerner.com/fb8067d7-e012-4703-8888-17b86d11f0f8/codeSet/639723',
                    "code": '72708193',
                    "display": 'Encounter Classification1A',
                    "userSelected": true
                  }
                ],
                "text": 'Encounter Classification1A'
              },
              {
                "coding": [
                  {
                    "system": 'https://fhir.cerner.com/fb8067d7-e012-4703-8888-17b86d11f0f8/codeSet/639724',
                    "code": '72708247',
                    "display": 'Encounter Classification2A',
                    "userSelected": true
                  }
                ],
                "text": 'Encounter Classification2A'
              },
              {
                "coding": [
                  {
                    "system": 'https://fhir.cerner.com/fb8067d7-e012-4703-8888-17b86d11f0f8/codeSet/639725',
                    "code": '72708257',
                    "display": 'Encounter Classification3A',
                    "userSelected": true
                  }
                ],
                "text": 'Encounter Classification3A'
              },
              {
                "coding": [
                  {
                    "system": 'https://fhir.cerner.com/fb8067d7-e012-4703-8888-17b86d11f0f8/codeSet/639726',
                    "code": '72708511',
                    "display": 'Encounter Classification4A',
                    "userSelected": true
                  }
                ],
                "text": 'Encounter Classification4A'
              }
            ],
            "subject": {
              "reference": 'Patient/4017160',
              "display": '108347B, Orion'
            },
            "period": {
              "start": '1970-03-01T00:20:34.000Z',
              "end": '1970-05-01T00:20:34.000Z'
            },
            "reasonCode": [
              {
                "text": 'FEVER'
              },
              {
                "coding": [
                  {
                    "system": 'https://fhir.cerner.com/fb8067d7-e012-4703-8888-17b86d11f0f8/codeSet/639727',
                    "code": '72697299',
                    "display": 'Brain Problem',
                    "userSelected": true
                  }
                ],
                "text": 'Brain Problem'
              }
            ],
            "location": [
              {
                "location": {
                  "reference": 'Location/21250403',
                  "display": 'Baseline East Medical Center'
                },
                "status": 'active'
              }
            ],
            "serviceProvider": {
              "reference": 'Organization/675844'
            }
          }
        }
      ]
    }.freeze

    R4_ENCOUNTER_CREATE ||= {
      "resourceType": 'Encounter',
      "status": 'in-progress',
      "type": [
        {
          "coding": [
            {
              "system": 'http://terminology.hl7.org/CodeSystem/v2-0004',
              "code": 'O'
            }
          ]
        }
      ],
      "priority": {
        "coding": [
          {
            "system": 'http://terminology.hl7.org/CodeSystem/v3-ActPriority',
            "code": 'EL'
          }
        ]
      },
      "subject": {
        "reference": 'Patient/4342011'
      },
      "reasonCode": [
        {
          "text": 'Neck Pain'
        }
      ],
      "hospitalization": {
        "admitSource": {
          "coding": [
            {
              "system": 'http://terminology.hl7.org/CodeSystem/admit-source',
              "code": 'born'
            }
          ]
        },
        "dischargeDisposition": {
          "coding": [
            {
              "system": 'http://terminology.hl7.org/CodeSystem/discharge-disposition',
              "code": 'other-hcf'
            }
          ]
        }
      },
      "serviceProvider": {
        "reference": 'Organization/619848'
      },
      "period": {
        "start": '2017-03-02T01:13:00Z',
        "end": '2017-03-05T00:00:00Z'
      },
      "participant": [
        {
          "type": [
            {
              "coding": [
                {
                  "system": 'https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/333',
                  "code": '666813'
                }
              ]
            }
          ],
          "period": {
            "start": '2018-03-02T20:01:13.000Z'
          },
          "individual": {
            "reference": 'Practitioner/1912007'
          }
        }
      ]
    }.freeze

    R4_ENCOUNTER_PATCH ||= [
      {
        "op": 'replace',
        "path": '/period/start',
        "value": '2015-09-01T00:00:00.000Z'
      },
      {
        "op": 'replace',
        "path": '/period/end',
        "value": '2017-09-01T00:00:00.000Z'
      },
      {
        "op": 'replace',
        "path": '/type',
        "value": [
          {
            "coding": [
              {
                "system": 'http://terminology.hl7.org/CodeSystem/v2-0004',
                "code": 'O',
                "display": 'Outpatient',
                "userSelected": false
              }
            ]
          }
        ]
      }
    ].freeze
  end
end
