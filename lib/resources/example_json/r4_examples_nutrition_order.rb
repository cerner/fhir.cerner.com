# frozen_string_literal: true

module Cerner
  module Resources
    R4_NUTRITION_ORDER_ENTRY ||= {
      "resourceType": 'NutritionOrder',
      "id": '328575687',
      "meta": {
        "versionId": '2',
        "lastUpdated": '2021-05-03T14:37:55.000Z'
      },
      "text": {
        "status": 'generated',
        "div": '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Nutrition Order</b></p>'\
          '<p><b>Patient</b>: SMART, NANCY</p><p><b>Status</b>: Active</p><p><b>Intent</b>: Order</p>'\
          '<p><b>Date</b>: May  3, 2021  2:30 P.M. UTC</p><p><b>Orderer</b>: CERNER, CERNER CERNER</p>'\
          '<p><b>Diet Type</b>: Bland Diet</p><p><b>Diet Instruction</b>: 05/03/21 9:30:00 CDT,'\
          ' Start Meal: Now, Vegetarian diet, Gluten Free, 2000 kcal, Medium (1,700-2,000 cal) 75g CHO, Low,'\
          ' 24 Hour Fluid Permitted 2000 mL, NDD3 (Chopped), Thin Liquid, No free water, keep sodium '\
          'to a minimum., Anemia due to membrane defect</p></div>'
      },
      "status": 'active',
      "intent": 'order',
      "patient": {
        "reference": 'Patient/12724066',
        "display": 'SMART, NANCY'
      },
      "encounter": {
        "reference": 'Encounter/97959185'
      },
      "dateTime": '2021-05-03T09:30:52.000-05:00',
      "orderer": {
        "reference": 'Practitioner/2',
        "display": 'CERNER, CERNER CERNER'
      },
      "foodPreferenceModifier": [
        {
          "coding": [
            {
              "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/6102',
              "code": '658488',
              "display": 'Vegetarian diet',
              "userSelected": true
            },
            {
              "system": 'http://terminology.hl7.org/CodeSystem/diet',
              "code": 'vegetarian',
              "display": 'Vegetarian',
              "userSelected": false
            }
          ],
          "text": 'Vegetarian diet'
        }
      ],
      "oralDiet": {
        "type": [
          {
            "coding": [
              {
                "system": 'http://snomed.info/sct',
                "code": '38226001',
                "display": 'Bland diet (finding)',
                "userSelected": false
              }
            ],
            "text": 'Bland Diet'
          }
        ],
        "schedule": [
          {
            "repeat": {
              "boundsPeriod": {
                "start": '2021-05-03T09:30:00.000-05:00'
              }
            }
          }
        ],
        "nutrient": [
          {
            "modifier": {
              "coding": [
                {
                  "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/100194',
                  "code": '31168891',
                  "display": 'Medium (1,700-2,000 cal) 75g CHO',
                  "userSelected": true
                }
              ],
              "text": 'Medium (1,700-2,000 cal) 75g CHO'
            }
          },
          {
            "modifier": {
              "coding": [
                {
                  "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/100196',
                  "code": '31170565',
                  "display": '1000 mg phosphorus',
                  "userSelected": true
                }
              ],
              "text": '1000 mg phosphorus'
            }
          },
          {
            "modifier": {
              "coding": [
                {
                  "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/6113',
                  "code": '658536',
                  "display": '2000 kcal',
                  "userSelected": true
                },
                {
                  "system": 'http://snomed.info/sct',
                  "code": '76426001',
                  "display": 'Calorie diet (finding)',
                  "userSelected": false
                }
              ],
              "text": '2000 kcal'
            }
          },
          {
            "modifier": {
              "coding": [
                {
                  "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/6117',
                  "code": '658565',
                  "display": 'Low',
                  "userSelected": true
                },
                {
                  "system": 'http://snomed.info/sct',
                  "code": '226358006',
                  "display": 'Fat - dietary (substance)',
                  "userSelected": false
                }
              ],
              "text": 'Low'
            }
          },
          {
            "modifier": {
              "coding": [
                {
                  "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/6114',
                  "code": '658544',
                  "display": '2000 mL',
                  "userSelected": true
                },
                {
                  "system": 'http://snomed.info/sct',
                  "code": '33463005',
                  "display": 'Liquid substance (substance)',
                  "userSelected": false
                }
              ],
              "text": '2000 mL'
            }
          },
          {
            "modifier": {
              "coding": [
                {
                  "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/6116',
                  "code": '31170379',
                  "display": '1.5 g sodium',
                  "userSelected": true
                },
                {
                  "system": 'http://snomed.info/sct',
                  "code": '39972003',
                  "display": 'Sodium (substance)',
                  "userSelected": false
                }
              ],
              "text": '1.5 g sodium'
            }
          },
          {
            "modifier": {
              "coding": [
                {
                  "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/6118',
                  "code": '658567',
                  "display": '2 g potassium',
                  "userSelected": true
                },
                {
                  "system": 'http://snomed.info/sct',
                  "code": '88480006',
                  "display": 'Potassium (substance)',
                  "userSelected": false
                }
              ],
              "text": '2 g potassium'
            }
          },
          {
            "modifier": {
              "coding": [
                {
                  "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/6119',
                  "code": '658576',
                  "display": '60 g protein',
                  "userSelected": true
                },
                {
                  "system": 'http://snomed.info/sct',
                  "code": '226356005',
                  "display": 'Protein and protein derivatives - dietary (substance)',
                  "userSelected": false
                }
              ],
              "text": '60 g protein'
            }
          }
        ],
        "texture": [
          {
            "modifier": {
              "coding": [
                {
                  "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/100197',
                  "code": '31170633',
                  "display": 'NDD3 (Chopped)',
                  "userSelected": true
                }
              ],
              "text": 'NDD3 (Chopped)'
            }
          }
        ],
        "fluidConsistencyType": [
          {
            "coding": [
              {
                "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/100123',
                "code": '25442691',
                "display": 'Thin Liquid',
                "userSelected": true
              }
            ],
            "text": 'Thin Liquid'
          }
        ],
        "instruction": '05/03/21 9:30:00 CDT, Start Meal: Now, Vegetarian diet, Gluten Free, 2000 kcal,'\
        ' Medium (1,700-2,000 cal) 75g CHO, Low, 24 Hour Fluid Permitted 2000 mL, NDD3 (Chopped), Thin Liquid,'\
        ' No free water, keep sodium to a minimum., Anemia due to membrane defect'
      },
      "note": [
        {
          "text": 'Order comments'
        }
      ]
    }.freeze

    R4_NUTRITION_ORDER_CHILD_ENTRY ||= {
      "resourceType": 'NutritionOrder',
      "id": '328575687',
      "meta": {
        "versionId": '2',
        "lastUpdated": '2021-05-03T14:37:55.000Z'
      },
      "text": {
        "status": 'generated',
        "div": '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Nutrition Order</b></p>'\
          '<p><b>Patient</b>: SMART, NANCY</p><p><b>Status</b>: Active</p><p><b>Intent</b>: Instance Order</p>'\
          '<p><b>Date</b>: May  3, 2021  2:30 P.M. UTC</p><p><b>Orderer</b>: CERNER, CERNER CERNER</p>'\
          '<p><b>Diet Type</b>: Bland Diet</p><p><b>Diet Instruction</b>: 05/03/21 9:30:00 CDT,'\
          ' Start Meal: Now, Vegetarian diet, Gluten Free, 2000 kcal, Medium (1,700-2,000 cal) 75g CHO, Low,'\
          ' 24 Hour Fluid Permitted 2000 mL, NDD3 (Chopped), Thin Liquid, No free water, keep sodium '\
          'to a minimum., Anemia due to membrane defect</p></div>'
      },
      "extension": [
        {
          "valueReference": {
            "reference": 'NutritionOrder/41862407'
          },
          "url": 'http://hl7.org/fhir/StructureDefinition/event-basedOn'
        }
      ],
      "status": 'active',
      "intent": 'instance-order',
      "patient": {
        "reference": 'Patient/12724066',
        "display": 'SMART, NANCY'
      },
      "encounter": {
        "reference": 'Encounter/97959185'
      },
      "dateTime": '2021-05-03T09:30:52.000-05:00',
      "orderer": {
        "reference": 'Practitioner/2',
        "display": 'CERNER, CERNER CERNER'
      },
      "foodPreferenceModifier": [
        {
          "coding": [
            {
              "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/6102',
              "code": '658488',
              "display": 'Vegetarian diet',
              "userSelected": true
            },
            {
              "system": 'http://terminology.hl7.org/CodeSystem/diet',
              "code": 'vegetarian',
              "display": 'Vegetarian',
              "userSelected": false
            }
          ],
          "text": 'Vegetarian diet'
        }
      ],
      "oralDiet": {
        "type": [
          {
            "coding": [
              {
                "system": 'http://snomed.info/sct',
                "code": '38226001',
                "display": 'Bland diet (finding)',
                "userSelected": false
              }
            ],
            "text": 'Bland Diet'
          }
        ],
        "schedule": [
          {
            "repeat": {
              "boundsPeriod": {
                "start": '2021-05-03T09:30:00.000-05:00'
              }
            }
          }
        ],
        "nutrient": [
          {
            "modifier": {
              "coding": [
                {
                  "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/100194',
                  "code": '31168891',
                  "display": 'Medium (1,700-2,000 cal) 75g CHO',
                  "userSelected": true
                }
              ],
              "text": 'Medium (1,700-2,000 cal) 75g CHO'
            }
          },
          {
            "modifier": {
              "coding": [
                {
                  "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/100196',
                  "code": '31170565',
                  "display": '1000 mg phosphorus',
                  "userSelected": true
                }
              ],
              "text": '1000 mg phosphorus'
            }
          },
          {
            "modifier": {
              "coding": [
                {
                  "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/6113',
                  "code": '658536',
                  "display": '2000 kcal',
                  "userSelected": true
                },
                {
                  "system": 'http://snomed.info/sct',
                  "code": '76426001',
                  "display": 'Calorie diet (finding)',
                  "userSelected": false
                }
              ],
              "text": '2000 kcal'
            }
          },
          {
            "modifier": {
              "coding": [
                {
                  "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/6117',
                  "code": '658565',
                  "display": 'Low',
                  "userSelected": true
                },
                {
                  "system": 'http://snomed.info/sct',
                  "code": '226358006',
                  "display": 'Fat - dietary (substance)',
                  "userSelected": false
                }
              ],
              "text": 'Low'
            }
          },
          {
            "modifier": {
              "coding": [
                {
                  "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/6114',
                  "code": '658544',
                  "display": '2000 mL',
                  "userSelected": true
                },
                {
                  "system": 'http://snomed.info/sct',
                  "code": '33463005',
                  "display": 'Liquid substance (substance)',
                  "userSelected": false
                }
              ],
              "text": '2000 mL'
            }
          },
          {
            "modifier": {
              "coding": [
                {
                  "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/6116',
                  "code": '31170379',
                  "display": '1.5 g sodium',
                  "userSelected": true
                },
                {
                  "system": 'http://snomed.info/sct',
                  "code": '39972003',
                  "display": 'Sodium (substance)',
                  "userSelected": false
                }
              ],
              "text": '1.5 g sodium'
            }
          },
          {
            "modifier": {
              "coding": [
                {
                  "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/6118',
                  "code": '658567',
                  "display": '2 g potassium',
                  "userSelected": true
                },
                {
                  "system": 'http://snomed.info/sct',
                  "code": '88480006',
                  "display": 'Potassium (substance)',
                  "userSelected": false
                }
              ],
              "text": '2 g potassium'
            }
          },
          {
            "modifier": {
              "coding": [
                {
                  "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/6119',
                  "code": '658576',
                  "display": '60 g protein',
                  "userSelected": true
                },
                {
                  "system": 'http://snomed.info/sct',
                  "code": '226356005',
                  "display": 'Protein and protein derivatives - dietary (substance)',
                  "userSelected": false
                }
              ],
              "text": '60 g protein'
            }
          }
        ],
        "texture": [
          {
            "modifier": {
              "coding": [
                {
                  "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/100197',
                  "code": '31170633',
                  "display": 'NDD3 (Chopped)',
                  "userSelected": true
                }
              ],
              "text": 'NDD3 (Chopped)'
            }
          }
        ],
        "fluidConsistencyType": [
          {
            "coding": [
              {
                "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/100123',
                "code": '25442691',
                "display": 'Thin Liquid',
                "userSelected": true
              }
            ],
            "text": 'Thin Liquid'
          }
        ],
        "instruction": '05/03/21 9:30:00 CDT, Start Meal: Now, Vegetarian diet, Gluten Free, 2000 kcal,'\
        ' Medium (1,700-2,000 cal) 75g CHO, Low, 24 Hour Fluid Permitted 2000 mL, NDD3 (Chopped), Thin Liquid,'\
        ' No free water, keep sodium to a minimum., Anemia due to membrane defect'
      },
      "note": [
        {
          "text": 'Order comments'
        }
      ]
    }.freeze

    R4_NUTRITION_ORDER_PATIENT_ACCESS_ENTRY ||= {
      "resourceType": 'NutritionOrder',
      "id": '313790117',
      "meta": {
        "versionId": '1',
        "lastUpdated": '2020-07-22T01:00:20.000Z'
      },
      "text": {
        "status": 'generated',
        "div": '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Nutrition Order</b></p><p>'\
        '<b>Patient</b>: SMART, NANCY</p><p><b>Status</b>: Active</p><p><b>Intent</b>: Order</p><p>'\
        '<b>Date</b>: Jul  7, 2020  4:56 P.M. UTC</p><p><b>Orderer</b>: C., CERNER CERNER</p>'\
        '<p><b>Diet Type</b>: Low Bacterial Diet</p></div>'
      },
      "status": 'active',
      "intent": 'order',
      "patient": {
        "reference": 'Patient/12724066',
        "display": 'SMART, NANCY'
      },
      "encounter": {
        "reference": 'Encounter/97953477'
      },
      "dateTime": '2020-07-07T11:56:58.000-05:00',
      "orderer": {
        "reference": 'Practitioner/2',
        "display": 'C., CERNER CERNER'
      },
      "foodPreferenceModifier": [
        {
          "coding": [
            {
              "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/6102',
              "code": '658487',
              "display": 'No salt on tray',
              "userSelected": true
            }
          ],
          "text": 'No salt on tray'
        }
      ],
      "oralDiet": {
        "type": [
          {
            "text": 'Low Bacterial Diet'
          }
        ],
        "schedule": [
          {
            "repeat": {
              "boundsPeriod": {
                "start": '2020-07-07T11:56:00.000-05:00'
              }
            }
          }
        ],
        "nutrient": [
          {
            "modifier": {
              "coding": [
                {
                  "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/100194',
                  "code": '31168901',
                  "display": 'Low (1,200-1,600 cal) 60g CHO',
                  "userSelected": true
                }
              ],
              "text": 'Low (1,200-1,600 cal) 60g CHO'
            }
          },
          {
            "modifier": {
              "coding": [
                {
                  "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/100196',
                  "code": '31170553',
                  "display": '800 mg phosphorus',
                  "userSelected": true
                }
              ],
              "text": '800 mg phosphorus'
            }
          },
          {
            "modifier": {
              "coding": [
                {
                  "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/6113',
                  "code": '658535',
                  "display": '1800 kcal',
                  "userSelected": true
                },
                {
                  "system": 'http://snomed.info/sct',
                  "code": '76426001',
                  "display": 'Calorie diet (finding)',
                  "userSelected": false
                }
              ],
              "text": '1800 kcal'
            }
          },
          {
            "modifier": {
              "coding": [
                {
                  "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/6117',
                  "code": '658559',
                  "display": '25 gm',
                  "userSelected": true
                },
                {
                  "system": 'http://snomed.info/sct',
                  "code": '226358006',
                  "display": 'Fat - dietary (substance)',
                  "userSelected": false
                }
              ],
              "text": '25 gm'
            }
          },
          {
            "modifier": {
              "coding": [
                {
                  "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/6114',
                  "code": '658544',
                  "display": '2000 mL',
                  "userSelected": true
                },
                {
                  "system": 'http://snomed.info/sct',
                  "code": '33463005',
                  "display": 'Liquid substance (substance)',
                  "userSelected": false
                }
              ],
              "text": '2000 mL'
            }
          },
          {
            "modifier": {
              "coding": [
                {
                  "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/6116',
                  "code": '658553',
                  "display": '1 g sodium',
                  "userSelected": true
                },
                {
                  "system": 'http://snomed.info/sct',
                  "code": '39972003',
                  "display": 'Sodium (substance)',
                  "userSelected": false
                }
              ],
              "text": '1 g sodium'
            }
          },
          {
            "modifier": {
              "coding": [
                {
                  "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/6118',
                  "code": '31170471',
                  "display": '1.5 g potassium',
                  "userSelected": true
                },
                {
                  "system": 'http://snomed.info/sct',
                  "code": '88480006',
                  "display": 'Potassium (substance)',
                  "userSelected": false
                }
              ],
              "text": '1.5 g potassium'
            }
          },
          {
            "modifier": {
              "coding": [
                {
                  "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/6119',
                  "code": '658574',
                  "display": '40 g protein',
                  "userSelected": true
                },
                {
                  "system": 'http://snomed.info/sct',
                  "code": '226356005',
                  "display": 'Protein and protein derivatives - dietary (substance)',
                  "userSelected": false
                }
              ],
              "text": '40 g protein'
            }
          }
        ],
        "texture": [
          {
            "modifier": {
              "coding": [
                {
                  "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/100197',
                  "code": '31170621',
                  "display": 'NDD2 (Ground)',
                  "userSelected": true
                }
              ],
              "text": 'NDD2 (Ground)'
            }
          }
        ],
        "fluidConsistencyType": [
          {
            "coding": [
              {
                "system": 'https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/100123',
                "code": '25442691',
                "display": 'Thin Liquid',
                "userSelected": true
              }
            ],
            "text": 'Thin Liquid'
          }
        ]
      }
    }.freeze

    R4_NUTRITION_ORDER_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '4227f490-f813-4f83-b7ce-44e1275174e2',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/NutritionOrder?patient=12724066'
        }
      ],
      'entry': [
        R4_NUTRITION_ORDER_ENTRY
      ]
    }.freeze

    R4_NUTRITION_ORDER_PATIENT_ACCESS_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '4227f490-f813-4f83-b7ce-44e1275174e2',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/NutritionOrder?patient=12724066'
        }
      ],
      'entry': [
        R4_NUTRITION_ORDER_PATIENT_ACCESS_ENTRY
      ]
    }.freeze

    R4_NUTRITION_ORDER_PATIENT_ACCESS_ENTERED_IN_ERROR ||= {
      "resourceType": 'NutritionOrder',
      "id": '328575703',
      "meta": {
        "versionId": '1',
        "lastUpdated": '2021-05-03T14:38:20.000Z'
      },
      "text": {
        "status": 'generated',
        "div": '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Nutrition Order</b></p><p>'\
        '<b>Patient</b>: SMART, NANCY</p><p><b>Status</b>: Entered in Error</p><p><b>Intent</b>: Order</p>'\
        '<p><b>Date</b>: May  3, 2021  2:35 P.M. UTC</p></div>'
      },
      "status": 'entered-in-error',
      "intent": 'order',
      "patient": {
        "reference": 'Patient/12724066',
        "display": 'SMART, NANCY'
      },
      "dateTime": '2021-05-03T09:35:56.000-05:00'
    }.freeze
  end
end
