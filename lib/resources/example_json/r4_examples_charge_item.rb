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
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/procedure'
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
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/procedure'
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
          'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/modifier'
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
      'id': 'e2a7275f-fe18-4885-a39b-8d798137693f',
      'type': 'searchset',
      'total': 1,
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/ChargeItem?_id=292870306'
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
                'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/procedure'
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
                'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/procedure'
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
                'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/modifier'
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

    R4_CHARGEITEM_CONTEXT_BUNDLE ||= {
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
          'fullUrl': 'https://fhir.applications.stagingcerner.com/r4/9ce2bac1-f00e-43d9-ab88-89e1d4c52e1a/ChargeItem/2179698947',
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
                'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/procedure'
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
                'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/procedure'
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
                'url': 'https://fhir-ehr.cerner.com/r4/StructureDefinition/modifier'
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
  end
end
