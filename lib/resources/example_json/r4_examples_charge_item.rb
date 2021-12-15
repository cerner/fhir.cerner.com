# frozen_string_literal: true

module Cerner
  module Resources

    R4_CHARGE_ITEM_READ ||= {
      'resourceType': 'ChargeItem',
      'id': '292870306',
      'meta': {
        'versionId': '1',
        'lastUpdated': '2020-03-09T17:23:00Z'
      },
      'text': {
        'status': 'generated',
        'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Charge Item</b></p><p><b>Status</b>: Billable</p>' \
               '<p><b>Patient</b>: 12742419</p><p><b>Encounter</b>: 97953601</p><p><b>Code</b>: 64897</p>' \
               '<p><b>Occurrence</b>: Mar  6, 2020  6:22 P.M. UTC</p></div>'
      },
      'extension': [
        {
          'valueMoney': {
            'value': 100,
            'currency': 'USD'
          },
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/unit-price'
        },
        {
          'valueMoney': {
            'value': 800,
            'currency': 'USD'
          },
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/net-price'
        },
        {
          'extension': [
            {
              'valueCodeableConcept': {
                'coding': [
                  {
                    'system': 'http://hl7.org/fhir/sid/ndc',
                    'code': '1111-1111-111'
                  }
                ]
              },
              'url': 'national-drug-product-code'
            },
            {
              'valueQuantity': {
                'value': 2.0,
                'unit': 'milligram (mass)',
                'system': 'http://unitsofmeasure.org',
                'code': 'mg'
              },
              'url': 'national-drug-product-quantity'
            },
            {
              'valueDecimal': 2,
              'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/quantity-conversion-factor'
            }
          ],
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/national-drug-product'
        },
        {
          'valueReference': {
            'reference': 'ChargeItem/157320880'
          },
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/offset-by'
        },
        {
          'valueString': 'Acetaminophen Level',
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/description'
        },
        {
          'extension': [
            {
              'valueCodeableConcept': {
                'coding': [
                  {
                    'extension': [
                      {
                        'valueCoding': {
                          'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/14002',
                          'code': '615215'
                        },
                        'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/bill-code-schedule'
                      }
                    ],
                    'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/CodeSystem/BillCodes-CPT',
                    'code': '10081'
                  }
                ]
              },
              'url': 'code'
            },
            {
              'valueUnsignedInt': 1,
              'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/priority'
            }
          ],
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/procedure-code'
        },
        {
          'extension': [
            {
              'valueCodeableConcept': {
                'coding': [
                  {
                    'extension': [
                      {
                        'valueCoding': {
                          'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/14002',
                          'code': '615215'
                        },
                        'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/bill-code-schedule'
                      }
                    ],
                    'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/CodeSystem/BillCodes-HCPCS',
                    'code': 'A0130'
                  }
                ]
              },
              'url': 'code'
            },
            {
              'valueUnsignedInt': 1,
              'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/priority'
            }
          ],
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/procedure-code'
        },
        {
          'extension': [
            {
              'valueCodeableConcept': {
                'coding': [
                  {
                    'extension': [
                      {
                        'valueCoding': {
                          'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/14002',
                          'code': '3692'
                        },
                        'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/bill-code-schedule'
                      }
                    ],
                    'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/CodeSystem/BillCodes-MODIFIER',
                    'code': '66'
                  }
                ]
              },
              'url': 'code'
            },
            {
              'valueUnsignedInt': 1,
              'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/priority'
            }
          ],
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/modifier-code'
        },
        {
          'valueCodeableConcept': {
            'coding': [
              {
                'extension': [
                  {
                    'valueCoding': {
                      'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/14002',
                      'code': '615217'
                    },
                    'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/bill-code-schedule'
                  }
                ],
                'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/CodeSystem/BillCodes-REVENUE',
                'code': '0024'
              }
            ]
          },
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/revenue-code'
        }
      ],
      'status': 'billable',
      'code': {
        'coding': [
          {
            'extension': [
              {
                'valueCoding': {
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/14002',
                  'code': '667687'
                },
                'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/bill-code-schedule'
              }
            ],
            'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/CodeSystem/BillCodes-CDM_SCHED',
            'code': '64897'
          }
        ]
      },
      'subject': {
        'reference': 'Patient/12742419'
      },
      'context': {
        'reference': 'Encounter/97953601'
      },
      'occurrenceDateTime': '2020-03-06T18:22:16Z',
      'performer': [
        {
          'function': {
            'coding': [
              {
                'system': 'http://terminology.hl7.org/CodeSystem/v2-0912',
                'code': 'OP',
                'display': 'Ordering Provider'
              }
            ],
            'text': 'Ordering Provider'
          },
          'actor': {
            'reference': 'Practitioner/11817978'
          }
        }
      ],
      'requestingOrganization': {
        'reference': 'Organization/1054423'
      },
      'quantity': {
        'value': 8
      },
      'enterer': {
        'reference': 'Practitioner/12742359'
      },
      'enteredDate': '2020-03-09T17:22:57Z',
      'account': [
        {
          'reference': 'Account/F61853062'
        },
        {
          'reference': 'Account/C98900463'
        }
      ]
    }.freeze

    R4_CHARGEITEM_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '0f2ae629-4e99-4843-a200-406dffce7091',
      'type': 'searchset',
      'total': 1,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/ChargeItem?context=97953601&-status=billable'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/ChargeItem/292870306',
          'resource': {
            'resourceType': 'ChargeItem',
            'id': '292870306',
            'meta': {
              'versionId': '1',
              'lastUpdated': '2020-03-09T17:23:00Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Charge Item</b></p><p><b>Status</b>' \
                   ': Billable</p><p><b>Patient</b>: 12742419</p><p><b>Encounter</b>: 97953601</p><p><b>Code</b>' \
                   ': 64897</p><p><b>Occurrence</b>: Mar  6, 2020  6:22 P.M. UTC</p></div>'
            },
            'extension': [
              {
                'valueMoney': {
                  'value': 100,
                  'currency': 'USD'
                },
                'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/unit-price'
              },
              {
                'valueMoney': {
                  'value': 800,
                  'currency': 'USD'
                },
                'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/net-price'
              },
              {
                'extension': [
                  {
                    'valueCodeableConcept': {
                      'coding': [
                        {
                          'system': 'http://hl7.org/fhir/sid/ndc',
                          'code': '1111-1111-111'
                        }
                      ]
                    },
                    'url': 'national-drug-product-code'
                  },
                  {
                    'valueQuantity': {
                      'value': 2.0,
                      'unit': 'milligram (mass)',
                      'system': 'http://unitsofmeasure.org',
                      'code': 'mg'
                    },
                    'url': 'national-drug-product-quantity'
                  },
                  {
                    'valueDecimal': 2,
                    'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/quantity-conversion-factor'
                  }
                ],
                'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/national-drug-product'
              },
              {
                'valueString': 'Acetaminophen Level',
                'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/description'
              },
              {
                'extension': [
                  {
                    'valueCodeableConcept': {
                      'coding': [
                        {
                          'extension': [
                            {
                              'valueCoding': {
                                'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/14002',
                                'code': '615214'
                              },
                              'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/bill-code-schedule'
                            }
                          ],
                          'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/CodeSystem/BillCodes-CPT',
                          'code': '10081'
                        }
                      ]
                    },
                    'url': 'code'
                  },
                  {
                    'valueUnsignedInt': 1,
                    'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/priority'
                  }
                ],
                'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/procedure-code'
              },
              {
                'extension': [
                  {
                    'valueCodeableConcept': {
                      'coding': [
                        {
                          'extension': [
                            {
                              'valueCoding': {
                                'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/14002',
                                'code': '615215'
                              },
                              'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/bill-code-schedule'
                            }
                          ],
                          'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/CodeSystem/BillCodes-HCPCS',
                          'code': 'A0130'
                        }
                      ]
                    },
                    'url': 'code'
                  },
                  {
                    'valueUnsignedInt': 1,
                    'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/priority'
                  }
                ],
                'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/procedure-code'
              },
              {
                'extension': [
                  {
                    'valueCodeableConcept': {
                      'coding': [
                        {
                          'extension': [
                            {
                              'valueCoding': {
                                'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/14002',
                                'code': '3692'
                              },
                              'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/bill-code-schedule'
                            }
                          ],
                          'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/CodeSystem/BillCodes-MODIFIER',
                          'code': '66'
                        }
                      ]
                    },
                    'url': 'code'
                  },
                  {
                    'valueUnsignedInt': 1,
                    'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/priority'
                  }
                ],
                'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/modifier-code'
              },
              {
                'valueCodeableConcept': {
                  'coding': [
                    {
                      'extension': [
                        {
                          'valueCoding': {
                            'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/14002',
                            'code': '615217'
                          },
                          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/bill-code-schedule'
                        }
                      ],
                      'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/CodeSystem/BillCodes-REVENUE',
                      'code': '0024'
                    }
                  ]
                },
                'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/revenue-code'
              }
            ],
            'status': 'billable',
            'code': {
              'coding': [
                {
                  'extension': [
                    {
                      'valueCoding': {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/14002',
                        'code': '667687'
                      },
                      'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/bill-code-schedule'
                    }
                  ],
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/CodeSystem/BillCodes-CDM_SCHED',
                  'code': '64897'
                }
              ]
            },
            'subject': {
              'reference': 'Patient/12742419'
            },
            'context': {
              'reference': 'Encounter/97953601'
            },
            'occurrenceDateTime': '2020-03-06T18:22:16Z',
            'performer': [
              {
                'function': {
                  'coding': [
                    {
                      'system': 'http://terminology.hl7.org/CodeSystem/v2-0912',
                      'code': 'OP',
                      'display': 'Ordering Provider'
                    }
                  ],
                  'text': 'Ordering Provider'
                },
                'actor': {
                  'reference': 'Practitioner/11817978'
                }
              }
            ],
            'requestingOrganization': {
              'reference': 'Organization/1054423'
            },
            'quantity': {
              'value': 8
            },
            'enterer': {
              'reference': 'Practitioner/12742359'
            },
            'enteredDate': '2020-03-09T17:22:57Z',
            'account': [
              {
                'reference': 'Account/F61853062'
              },
              {
                'reference': 'Account/C98900463'
              }
            ]
          }
        }
      ]
    }.freeze

    R4_CHARGE_ITEM_CREDIT ||= {
      'resourceType': 'Parameters',
      'parameter': [
        {
          'name': 'versionId',
          'valueId': '2'
        },
        {
          'name': 'transactionId',
          'valueUuid': 'urn:uuid:5bb8acae-0c7d-11ec-82a8-0242ac130003'
        },
        {
          'name': 'subject',
          'valueReference': {
            'reference': 'Patient/12782842'
          }
        },
        {
          'name': 'context',
          'valueReference': {
            'reference': 'Encounter/98019577'
          }
        }
      ]
    }.freeze

    R4_CHARGE_ITEM_MODIFY ||= {
      'resourceType': 'Parameters',
      'parameter': [
        {
          'name': 'chargeItem',
          'resource': {
            'resourceType': 'ChargeItem',
            'status': 'unknown',
            'subject': {
              'reference': 'Patient/12768550'
            },
            'context': {
              'reference': 'Encounter/97965088'
            },
            'occurrenceDateTime': '2021-01-08T10:38:00Z',
            'quantity': {
              'value': 31
            },
            'code': {
              'coding': [
                {
                  'extension': [
                    {
                      'valueCoding': {
                        'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/14002',
                        'code': '667687'
                      },
                      'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/bill-code-schedule'
                    }
                  ],
                  'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/CodeSystem/BillCodes-CDM_SCHED',
                  'code': '64897'
                }
              ]
            },
            'performer': [
              {
                'function': {
                  'coding': [
                    {
                      'system': 'http://terminology.hl7.org/CodeSystem/v2-0912',
                      'code': 'OP',
                      'display': 'Ordering Provider'
                    }
                  ],
                  'text': 'Ordering Provider'
                },
                'actor': {
                  'reference': 'Practitioner/11817978'
                }
              }
            ],
            'reason': [
              {
                'extension': [
                  {
                    'valueUnsignedInt': 1,
                    'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/priority'
                  }
                ],
                'coding': [
                  {
                    'extension': [
                      {
                        'valueCoding': {
                          'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/14002',
                          'code': '3693'
                        },
                        'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/bill-code-schedule'
                      }
                    ],
                    'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/CodeSystem/BillCodes-ICD',
                    'code': '0023'
                  }
                ]
              }
            ],
            'extension': [
              {
                'extension': [
                  {
                    'valueId': '1',
                    'url': 'item-version'
                  }
                ],
                'valueReference': {
                  'reference': 'ChargeItem/317370800'
                },
                'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/replacing'
              },
              {
                'valueReference': {
                  'reference': 'Location/2170691494',
                  'display': 'RCR Analytics'
                },
                'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/performing-location'
              },
              {
                'valueString': 'Acetaminophen Level',
                'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/description'
              },
              {
                'extension': [
                  {
                    'id': '17433932',
                    'valueString': 'Line Note Text',
                    'url': 'custom-attribute-name'
                  },
                  {
                    'valueString': 'Raghu, P',
                    'url': 'custom-attribute-value'
                  }
                ],
                'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/custom-attribute'
              },
              {
                'extension': [
                  {
                    'valueCodeableConcept': {
                      'coding': [
                        {
                          'extension': [
                            {
                              'valueCoding': {
                                'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/14002',
                                'code': '3692'
                              },
                              'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/bill-code-schedule'
                            }
                          ],
                          'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/CodeSystem/BillCodes-MODIFIER',
                          'code': '66'
                        }
                      ]
                    },
                    'url': 'code'
                  },
                  {
                    'valueUnsignedInt': 1,
                    'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/priority'
                  }
                ],
                'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/modifier-code'
              },
              {
                'extension': [
                  {
                    'valueCodeableConcept': {
                      'coding': [
                        {
                          'extension': [
                            {
                              'valueCoding': {
                                'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/14002',
                                'code': '615214'
                              },
                              'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/bill-code-schedule'
                            }
                          ],
                          'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/CodeSystem/BillCodes-CPT',
                          'code': '10081'
                        }
                      ]
                    },
                    'url': 'code'
                  },
                  {
                    'valueUnsignedInt': 1,
                    'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/priority'
                  }
                ],
                'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/procedure-code'
              },
              {
                'valueCodeableConcept': {
                  'coding': [
                    {
                      'extension': [
                        {
                          'valueCoding': {
                            'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/14002',
                            'code': '615217'
                          },
                          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/bill-code-schedule'
                        }
                      ],
                      'system': 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/CodeSystem/BillCodes-REVENUE',
                      'code': '0024'
                    }
                  ]
                },
                'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/revenue-code'
              }
            ]
          }
        },
        {
          'name': 'transactionId',
          'valueUuid': 'urn:uuid:5825e8ea-3b47-11ec-8d3d-0242ac130003'
        }
      ]
    }.freeze

    R4_CHARGE_ITEM_CREATE ||= {
      'resourceType': 'Parameters',
      'parameter': [
        {
          'name': 'chargeItem',
          'resource': {
            'resourceType': 'ChargeItem',
            'status': 'unknown',
            'subject': {
              'reference': 'Patient/178594204'
            },
            'context': {
              'reference': 'Encounter/53066085'
            },
            'occurrenceDateTime': '2021-08-02T21:53:34Z',
            'quantity': {
              'value': 1
            },
            'code': {
              'coding': [
                {
                  'extension': [
                    {
                      'valueCoding': {
                        'system': 'https://fhir.cerner.com/2c400054-42d8-4e74-87b7-80b5bd5fde9f/codeSet/14002',
                        'code': '667687'
                      },
                      'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/bill-code-schedule'
                    }
                  ],
                  'system': 'https://fhir.cerner.com/2c400054-42d8-4e74-87b7-80b5bd5fde9f/CodeSystem/BillCodes-CDM_SCHED',
                  'code': '01012021'
                }
              ]
            },
            'performer': [
              {
                'function': {
                  'coding': [
                    {
                      'system': 'http://terminology.hl7.org/CodeSystem/v2-0912',
                      'code': 'OP',
                      'display': 'Ordering Provider'
                    }
                  ],
                  'text': 'Ordering Provider'
                },
                'actor': {
                  'reference': 'Practitioner/190182805'
                }
              }
            ],
            'reason': [
              {
                'extension': [
                  {
                    'valueUnsignedInt': 1,
                    'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/priority'
                  }
                ],
                'coding': [
                  {
                    'extension': [
                      {
                        'valueCoding': {
                          'system': 'https://fhir.cerner.com/2c400054-42d8-4e74-87b7-80b5bd5fde9f/codeSet/14002',
                          'code': '3693'
                        },
                        'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/bill-code-schedule'
                      }
                    ],
                    'system': 'https://fhir.cerner.com/2c400054-42d8-4e74-87b7-80b5bd5fde9f/CodeSystem/BillCodes-ICD',
                    'code': 'Y22'
                  }
                ]
              }
            ],
            'extension': [
              {
                'extension': [
                  {
                    'valueCodeableConcept': {
                      'coding': [
                        {
                          'extension': [
                            {
                              'valueCoding': {
                                'system': 'https://fhir.cerner.com/2c400054-42d8-4e74-87b7-80b5bd5fde9f/codeSet/14002',
                                'code': '3692'
                              },
                              'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/bill-code-schedule'
                            }
                          ],
                          'system': 'https://fhir.cerner.com/2c400054-42d8-4e74-87b7-80b5bd5fde9f/CodeSystem/BillCodes-MODIFIER',
                          'code': '26'
                        }
                      ]
                    },
                    'url': 'code'
                  },
                  {
                    'valueUnsignedInt': 1,
                    'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/priority'
                  }
                ],
                'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/modifier-code'
              },
              {
                'valueReference': {
                  'reference': 'Location/683731',
                  'display': '1 West SA2'
                },
                'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/performing-location'
              },
              {
                'extension': [
                  {
                    'id': '68985657',
                    'valueString': 'Family Planning Indicator',
                    'url': 'custom-attribute-name'
                  },
                  {
                    'valueInteger': 689_856_57,
                    'url': 'custom-attribute-value'
                  }
                ],
                'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/custom-attribute'
              },
              {
                'extension': [
                  {
                    'valueCodeableConcept': {
                      'coding': [
                        {
                          'extension': [
                            {
                              'valueCoding': {
                                'system': 'https://fhir.cerner.com/2c400054-42d8-4e74-87b7-80b5bd5fde9f/codeSet/14002',
                                'code': '615214'
                              },
                              'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/bill-code-schedule'
                            }
                          ],
                          'system': 'https://fhir.cerner.com/2c400054-42d8-4e74-87b7-80b5bd5fde9f/CodeSystem/BillCodes-CPT',
                          'code': '99204'
                        }
                      ]
                    },
                    'url': 'code'
                  },
                  {
                    'valueUnsignedInt': 1,
                    'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/priority'
                  }
                ],
                'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/procedure-code'
              },
              {
                'extension': [
                  {
                    'valueCodeableConcept': {
                      'coding': [
                        {
                          'extension': [
                            {
                              'valueCoding': {
                                'system': 'https://fhir.cerner.com/2c400054-42d8-4e74-87b7-80b5bd5fde9f/codeSet/14002',
                                'code': '615216'
                              },
                              'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/bill-code-schedule'
                            }
                          ],
                          'system': 'https://fhir.cerner.com/2c400054-42d8-4e74-87b7-80b5bd5fde9f/CodeSystem/BillCodes-PROCCODE',
                          'code': '01U10JZ'
                        }
                      ]
                    },
                    'url': 'code'
                  },
                  {
                    'valueUnsignedInt': 1,
                    'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/priority'
                  }
                ],
                'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/procedure-code'
              },
              {
                'valueCodeableConcept': {
                  'coding': [
                    {
                      'extension': [
                        {
                          'valueCoding': {
                            'system': 'https://fhir.cerner.com/2c400054-42d8-4e74-87b7-80b5bd5fde9f/codeSet/14002',
                            'code': '615217'
                          },
                          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/bill-code-schedule'
                        }
                      ],
                      'system': 'https://fhir.cerner.com/2c400054-42d8-4e74-87b7-80b5bd5fde9f/CodeSystem/BillCodes-REVENUE',
                      'code': '0100'
                    }
                  ]
                },
                'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/revenue-code'
              }
            ]
          }
        },
        {
          'name': 'transactionId',
          'valueUuid': 'urn:uuid:9befb168-c01f-4336-9547-5d26f0100058'
        }
      ]
    }.freeze
  end
end
