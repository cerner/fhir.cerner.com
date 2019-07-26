module Cerner
  module Resources

    R4_FINANCIAL_TRANSACTION_PAYMENT ||= {
          "resourceType": "Basic",
          "id": "11291025",
          "meta": {
              "versionId": "1"
          },
          "identifier": [
              {
                  "use": "usual",
                  "value": "33358000"
              }
          ],
          "code": {
              "coding": [
                  {
                      "system": "Cerner",
                      "code": "fintrans",
                      "display": "Financial Transaction"
                  }
              ],
              "text": "Financial Transaction"
          },
          "text": {
              "status": "generated",
              "div": "<div><p><b>Financial Transaction</b></p><p><b>External Transaction Id</b>: 33358000</p><p><b>Created</b>: Jun 19, 2019  5:47 P.M. CDT</p><p><b>Status</b>: Active</p><p><b>Type</b>: payment</p><p><b>Method</b>: Check</p><p><b>Currency</b>: USD</p><p><b>Value</b>: 400000</p></div>"
          },
          "created": "2019-06-19T22:47:47Z",
          "extension": [
              {
                  "url": "LOCATION",
                  "valueString": "201802160003"
              },
              {
                  "url": "STATUS",
                  "valueCodeableConcept": {
                      "coding": [
                          {
                              "system": "http://hl7.org/fhir/fm-status",
                              "code": "active",
                              "display": "Active"
                          }
                      ]
                  }
              },
              {
                  "url": "TRANSACTION ALIAS",
                  "extension": [
                      {
                          "url": "TRANSACTION ALIAS ALIAS",
                          "valueString": "1300"
                      },
                      {
                          "url": "TRANSACTION ALIAS TYPE",
                          "valueString": "Payment"
                      },
                      {
                          "url": "TRANSACTION ALIAS SUBTYPE",
                          "valueString": "Commercial insurance payment"
                      },
                      {
                          "url": "TRANSACTION ALIAS REASON ",
                          "valueString": "Commercial Insurance Payment"
                      }
                  ]
              },
              {
                  "url": "ALLOCATION",
                  "extension": [
                      {
                          "url": "ALLOCATION TARGET EXTENSION",
                          "valueReference": {
                              "reference": "GUARANTOR_BALANCE/7761271"
                          }
                      },
                      {
                          "url": "https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-allocation-amount",
                          "valueMoney": {
                              "value": "400000.00",
                              "currency": "USD"
                          }
                      },
                      {
                          "url": "ENCOUNTER",
                          "valueReference": {
                              "reference": "Encounter/31363178"
                          }
                      }
                  ]
              },
              {
                  "url": "TYPE",
                  "valueCodeableConcept": {
                      "text": "payment"
                  }
              },
              {
                  "url": "ALLOCATION",
                  "extension": [
                      {
                          "url": "ALLOCATION TARGET EXTENSION",
                          "valueReference": {
                              "reference": "GUARANTOR_BALANCE/7761271"
                          }
                      },
                      {
                          "url": "https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-allocation-amount",
                          "valueMoney": {
                              "value": "400000.00",
                              "currency": "USD"
                          }
                      },
                      {
                          "url": "ENCOUNTER",
                          "valueReference": {
                              "reference": "Encounter/31363178"
                          }
                      }
                  ]
              },
              {
                  "url": "PAYMENT DETAIL METHOD",
                  "valueCodeableConcept": {
                      "coding": [
                          {
                              "system": "http://terminology.hl7.org/CodeSystem/v2-0570",
                              "code": "CHCK",
                              "display": "Check"
                          }
                      ],
                      "text": "single"
                  }
              },
              {
                  "url": "PAYMENT ACCOUNT NUMBER",
                  "valueString": "1234"
              },
              {
                  "url": "PAYMENT DETAIL DATE EXTENSION",
                  "valueDateTime": "2020-02-01"
              },
              {
                  "url": "https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-payment-detail-amount",
                  "valueMoney": {
                      "value": "400000",
                      "currency": "USD"
                  }
              }
          ]
      }

    R4_FINANCIAL_TRANSACTION_ADJUSTMENT ||= {
        "resourceType": "Basic",
        "code": {
            "coding": [
                {
                    "code": "FinancialTransaction"
                }
            ]
        },
        "identifier": [
            {
                "value": "3353423432432232",
                "use": "usual"
            }
        ],
        "extension": [
            {
                "url": "https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-type",
                "valueCodeableConcept": {
                    "coding":[
                        {
                            "code": "adjustment",
                            "system": "http://terminology.hl7.org/CodeSystem/payment-type"
                        }
                    ]
                }
            },
            {
                "url": "https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-allocation",
                "extension": [
                    {
                        "url": "target",
                        "valueReference": {
                            "reference": "Encounter/31363178"
                        }
                    },
                    {
                        "url": "amount",
                        "valueMoney": {
                            "value": 1.0,
                            "currency": "USD"
                        }
                    }
                ]
            },
            {
                "url": "https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-alias",
                "valueString": "3100"
            },
            {
                "url": "https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-amount",
                "valueMoney": {
                    "value": 1.0,
                    "currency": "USD"
                }
            }
        ]
    }

    R4_FINANCIAL_TRANSACTION_CASH ||={
        "resourceType": "Basic",
        "code": {
            "coding": [
                {
                    "code": "FinancialTransaction"
                }
            ]
        },
        "identifier": [
            {
                "value": "14266754",
                "use": "usual"
            }
        ],
        "extension": [
            {
                "url": "https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-type",
                "valueCodeableConcept": {
                    "coding": [
                        {
                            "code": "payment",
                            "system": "http://terminology.hl7.org/CodeSystem/payment-type"
                        }
                    ]
                }
            },
            {
                "url": "https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-method",
                "valueCodeableConcept": {
                    "coding": [
                        {
                            "code": "CASH",
                            "display": "Cash",
                            "system": "http://terminology.hl7.org/CodeSystem/v2-0570",
                            "userSelected": true
                        }
                    ],
                    "text": "Cash"
                }
            },
            {
                "url": "https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-tendered-amount",
                "valueMoney": {
                    "value": 12.00,
                    "currency": "USD"
                }
            },
            {
                "url": "https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-allocation",
                "extension": [
                    {
                        "url": "target",
                        "valueReference": {
                            "reference": "Encounter/31363178"
                        }
                    },
                    {
                        "url": "amount",
                        "valueMoney": {
                            "value": 12.00,
                            "currency": "USD"
                        }
                    }
                ]
            },
            {
                "url": "https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-alias",
                "valueString": "1300"
            },
            {
                "url": "https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-location",
                "valueString": "201802160003"
            },
            {
                "url": "https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-amount",
                "valueMoney": {
                    "value": 12.00,
                    "currency": "USD"
                }
            }
        ]
    }

    R4_FINANCIAL_TRANSACTION_CARD ||={
        "resourceType": "Basic",
        "code": {
            "coding": [
                {
                    "code": "FinancialTransaction"
                }
            ]
        },
        "identifier": [
            {
                "value": "74389581",
                "use": "usual"
            }
        ],
        "extension": [
            {
                "url": "https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-type",
                "valueCodeableConcept": {
                    "coding": [
                        {
                            "code": "payment",
                            "system": "http://terminology.hl7.org/CodeSystem/payment-type"
                        }
                    ]
                }
            },
            {
                "url": "https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-method",
                "valueCodeableConcept": {
                    "coding": [
                        {
                            "code": "CCCA",
                            "display": "Credit Card",
                            "system": "http://terminology.hl7.org/CodeSystem/v2-0570",
                            "isPrimary": true
                        }
                    ],
                    "text": "Credit Card"
                }
            },
            {
                "url": "https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-amount",
                "valueMoney": {
                    "value": 12.00,
                    "currency": "USD"
                }
            },
            {
                "url": "https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-date",
                "valueDate": "2005-01"
            },
            {
                "url": "https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-account-number",
                "valueString": "4321"
            },
            {
                "url": "https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-card-brand",
                "valueString": "visa"
            },
            {
                "url": "https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-allocation",
                "extension": [
                    {
                        "url": "target",
                        "valueReference": {
                            "reference": "Encounter/31363178"
                        }
                    },
                    {
                        "url": "amount",
                        "valueMoney": {
                            "value": 12.00,
                            "currency": "USD"
                        }
                    }
                ]
            },
            {
                "url": "https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-alias",
                "valueString": "1300"
            },
            {
                "url": "https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-location",
                "valueString": "201802160003"
            }
        ]
    }

    R4_FINANCIAL_TRANSACTION_CHECK ||={
        "resourceType": "Basic",
        "code": {
            "coding": [
                {
                    "code": "FinancialTransaction"
                }
            ]
        },
        "identifier": [
            {
                "value": "3335800133",
                "use": "usual"
            }
        ],
        "extension": [
            {
                "url": "https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-type",
                "valueCodeableConcept": {
                    "coding": [
                        {
                            "code": "payment",
                            "system": "http://terminology.hl7.org/CodeSystem/payment-type"
                        }
                    ]
                }
            },
            {
                "url": "https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-method",
                "valueCodeableConcept": {
                    "coding": [
                        {
                            "code": "CCHK",
                            "display": "Check",
                            "system": "http://terminology.hl7.org/CodeSystem/v2-0570",
                            "userSelected": true
                        }
                    ],
                    "text": "Check"
                }
            },
            {
                "url": "https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-date",
                "valueDate": "2020-01-02"
            },
            {
                "url": "https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-account-number",
                "valueString": "1234"
            },
            {
                "url": "https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-allocation",
                "extension": [
                    {
                        "url": "target",
                        "valueReference": {
                            "reference": "Encounter/31363178"
                        }
                    },
                    {
                        "url": "amount",
                        "valueMoney": {
                            "value": 12.12,
                            "currency": "USD"
                        }
                    }
                ]
            },
            {
                "url": "https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-alias",
                "valueString": "1300"
            },
            {
                "url": "https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-location",
                "valueString": "201802160003"
            },
            {
                "url": "https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-amount",
                "valueMoney": {
                    "value": 12.12,
                    "currency": "USD"
                }
            }
        ]
    }

  end
end
