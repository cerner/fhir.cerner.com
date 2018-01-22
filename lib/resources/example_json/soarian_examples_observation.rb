module Cerner
  module Resources

    SOARIAN_OBSERVATION_BUNDLE ||= {
   
    "resourceType": "Bundle",
    "id": "39a1c384-bb4d-4801-8159-edbb5b17dedd",
    "meta": {
        "lastUpdated": "2018-01-17T01:33:16.279-05:00"
    },
    "type": "searchset",
    "link": [
        {
            "relation": "self",
            "url": "base-url/dstu2/1494/Observation?patientId=FCC941D7-60B9-491D-BEED-27629E47CD4E&_format=json"
        }
    ],
    "entry": [
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.145411.116001\">&lt;li>A_Weight : 65/ kg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.145411.116001"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "3141-9",
                            "display": "Wt"
                        }
                    ],
                    "text": "Wt"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2018-01-16",
                "valueQuantity": {
                    "value": 65,
                    "unit": "kg",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.145411.116002\">&lt;li>A_Height : 165.1/ cm&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.145411.116002"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8302-2",
                            "display": "Ht"
                        }
                    ],
                    "text": "Ht"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2018-01-16",
                "valueQuantity": {
                    "value": 165.1,
                    "unit": "cm",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.145411.116003\">&lt;li>A_Temperature : 98 F&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.145411.116003"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2018-01-16",
                "valueQuantity": {
                    "value": 36.66671000000002,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.145411.116008\">&lt;li>A_Pulse : 73&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.145411.116008"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8867-4",
                            "display": "A_Pulse"
                        }
                    ],
                    "text": "A_Pulse"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2018-01-16",
                "valueQuantity": {
                    "value": 73,
                    "unit": "/min",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.140416.111201\">&lt;li>A_Weight : 54/ kg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.140416.111201"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "3141-9",
                            "display": "Wt"
                        }
                    ],
                    "text": "Wt"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-12-27",
                "valueQuantity": {
                    "value": 54,
                    "unit": "kg",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.140416.111202\">&lt;li>A_Height : 162.56/ cm&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.140416.111202"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8302-2",
                            "display": "Ht"
                        }
                    ],
                    "text": "Ht"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-12-27",
                "valueQuantity": {
                    "value": 162.56,
                    "unit": "cm",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.140416.111203\">&lt;li>A_Temperature : 98 F&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.140416.111203"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-12-27",
                "valueQuantity": {
                    "value": 36.66671000000002,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.140416.111208\">&lt;li>A_Pulse : 73&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.140416.111208"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8867-4",
                            "display": "A_Pulse"
                        }
                    ],
                    "text": "A_Pulse"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-12-27",
                "valueQuantity": {
                    "value": 73,
                    "unit": "/min",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.125422.95014\">&lt;li>A_Weight : 200/12 lbs,oz&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.125422.95014"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "3141-9",
                            "display": "Wt"
                        }
                    ],
                    "text": "Wt"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-06-22",
                "valueQuantity": {
                    "value": 91.0586682772,
                    "unit": "kg",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.125422.95015\">&lt;li>A_Height : 5/8 ft,in&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.125422.95015"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8302-2",
                            "display": "Ht"
                        }
                    ],
                    "text": "Ht"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-06-22",
                "valueQuantity": {
                    "value": 172.72,
                    "unit": "cm",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.121415.91009\">&lt;li>A_Temperature : 97 F&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.121415.91009"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-05-23",
                "valueQuantity": {
                    "value": 36.111154,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.119446.88406\">&lt;li>Weight_UOM : 10000/ g&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.119446.88406"
                    }
                ],
                "status": "final",
                "code": {
                    "extension": [
                        {
                            "url": "some url",
                            "valueCoding": {
                                "system": "http://hl7.org/fhir/v3/NullFlavor",
                                "code": "NP",
                                "display": "No Information"
                            }
                        }
                    ]
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-26",
                "valueQuantity": {
                    "extension": [
                        {
                            "url": "some url",
                            "valueCoding": {
                                "system": "http://hl7.org/fhir/v3/NullFlavor",
                                "code": "NP",
                                "display": "No Information"
                            }
                        }
                    ]
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.119446.88410\">&lt;li>Comments : ****^^^^^&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;(())??///////////////////////////testinggggggggggggggggg\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.119446.88410"
                    }
                ],
                "status": "final",
                "code": {
                    "extension": [
                        {
                            "url": "some url",
                            "valueCoding": {
                                "system": "http://hl7.org/fhir/v3/NullFlavor",
                                "code": "NP",
                                "display": "No Information"
                            }
                        }
                    ]
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-26",
                "valueQuantity": {
                    "extension": [
                        {
                            "url": "some url",
                            "valueCoding": {
                                "system": "http://hl7.org/fhir/v3/NullFlavor",
                                "code": "NP",
                                "display": "No Information"
                            }
                        }
                    ]
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.119446.88411\">&lt;li>Date : ****^^^^^&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;(())??///////////////////////////\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.119446.88411"
                    }
                ],
                "status": "final",
                "code": {
                    "extension": [
                        {
                            "url": "some url",
                            "valueCoding": {
                                "system": "http://hl7.org/fhir/v3/NullFlavor",
                                "code": "NP",
                                "display": "No Information"
                            }
                        }
                    ]
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-26",
                "valueQuantity": {
                    "extension": [
                        {
                            "url": "some url",
                            "valueCoding": {
                                "system": "http://hl7.org/fhir/v3/NullFlavor",
                                "code": "NP",
                                "display": "No Information"
                            }
                        }
                    ]
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.119446.88412\">&lt;li>Height_UOM : 167.78/ cm&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.119446.88412"
                    }
                ],
                "status": "final",
                "code": {
                    "extension": [
                        {
                            "url": "some url",
                            "valueCoding": {
                                "system": "http://hl7.org/fhir/v3/NullFlavor",
                                "code": "NP",
                                "display": "No Information"
                            }
                        }
                    ]
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-26",
                "valueQuantity": {
                    "extension": [
                        {
                            "url": "some url",
                            "valueCoding": {
                                "system": "http://hl7.org/fhir/v3/NullFlavor",
                                "code": "NP",
                                "display": "No Information"
                            }
                        }
                    ]
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.119445.88397\">&lt;li>A_Weight : 200/0 lbs,oz&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.119445.88397"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "3141-9",
                            "display": "Wt"
                        }
                    ],
                    "text": "Wt"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-26",
                "valueQuantity": {
                    "value": 90.718474,
                    "unit": "kg",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.119445.88398\">&lt;li>A_Height : 6/0 ft,in&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.119445.88398"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8302-2",
                            "display": "Ht"
                        }
                    ],
                    "text": "Ht"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-26",
                "valueQuantity": {
                    "value": 182.88,
                    "unit": "cm",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.119444.88389\">&lt;li>A_Weight : 6/0 lbs,oz&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.119444.88389"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "3141-9",
                            "display": "Wt"
                        }
                    ],
                    "text": "Wt"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-26",
                "valueQuantity": {
                    "value": 2.72155422,
                    "unit": "kg",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.119444.88390\">&lt;li>A_Height : 890/0 ft,in&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.119444.88390"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8302-2",
                            "display": "Ht"
                        }
                    ],
                    "text": "Ht"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-26",
                "valueQuantity": {
                    "value": 27127.199999999997,
                    "unit": "cm",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.119443.88381\">&lt;li>A_Weight : 0/890 lbs,oz&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.119443.88381"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "3141-9",
                            "display": "Wt"
                        }
                    ],
                    "text": "Wt"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-26",
                "valueQuantity": {
                    "value": 25.231075559,
                    "unit": "kg",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.119443.88382\">&lt;li>A_Height : 0/6 ft,in&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.119443.88382"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8302-2",
                            "display": "Ht"
                        }
                    ],
                    "text": "Ht"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-26",
                "valueQuantity": {
                    "value": 15.24,
                    "unit": "cm",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.119442.88373\">&lt;li>A_Weight : 78000/ g&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.119442.88373"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "3141-9",
                            "display": "Wt"
                        }
                    ],
                    "text": "Wt"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-26",
                "valueQuantity": {
                    "value": 78,
                    "unit": "kg",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.119442.88374\">&lt;li>A_Height : 1.6723/ m&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.119442.88374"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8302-2",
                            "display": "Ht"
                        }
                    ],
                    "text": "Ht"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-26",
                "valueQuantity": {
                    "value": 167.23,
                    "unit": "cm",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.119441.88365\">&lt;li>A_Weight : 120/12 lbs,oz&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.119441.88365"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "3141-9",
                            "display": "Wt"
                        }
                    ],
                    "text": "Wt"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-26",
                "valueQuantity": {
                    "value": 54.7712786772,
                    "unit": "kg",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.119441.88366\">&lt;li>A_Height : 5/6 ft,in&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.119441.88366"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8302-2",
                            "display": "Ht"
                        }
                    ],
                    "text": "Ht"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-26",
                "valueQuantity": {
                    "value": 167.64,
                    "unit": "cm",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.119441.88368-1\">&lt;li>Systolic : 120 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.119441.88368-1"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8480-6",
                            "display": "A_SYSTOLIC"
                        }
                    ],
                    "text": "A_SYSTOLIC"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-26",
                "valueQuantity": {
                    "value": 120,
                    "unit": "mm[Hg]",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.119441.88368-2\">&lt;li>Diastolic : 60 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.119441.88368-2"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8462-4",
                            "display": "A_DIASTOLIC"
                        }
                    ],
                    "text": "A_DIASTOLIC"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-26",
                "valueQuantity": {
                    "value": 60,
                    "unit": "mm[Hg]",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.119438.88024\">&lt;li>A_Weight : 45.78/ kg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.119438.88024"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "3141-9",
                            "display": "Wt"
                        }
                    ],
                    "text": "Wt"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-26",
                "valueQuantity": {
                    "value": 45.78,
                    "unit": "kg",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.119438.88025\">&lt;li>A_Height : 167.5/ cm&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.119438.88025"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8302-2",
                            "display": "Ht"
                        }
                    ],
                    "text": "Ht"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-26",
                "valueQuantity": {
                    "value": 167.5,
                    "unit": "cm",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.119438.88027-1\">&lt;li>Systolic : 1 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.119438.88027-1"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8480-6",
                            "display": "A_SYSTOLIC"
                        }
                    ],
                    "text": "A_SYSTOLIC"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-26",
                "valueQuantity": {
                    "value": 1,
                    "unit": "mm[Hg]",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.119438.88027-2\">&lt;li>Diastolic : 0 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.119438.88027-2"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8462-4",
                            "display": "A_DIASTOLIC"
                        }
                    ],
                    "text": "A_DIASTOLIC"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-26",
                "valueQuantity": {
                    "value": 0,
                    "unit": "mm[Hg]",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.119436.88345\">&lt;li>A_Weight : /100 lbs,oz&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.119436.88345"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "3141-9",
                            "display": "Wt"
                        }
                    ],
                    "text": "Wt"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-26",
                "valueQuantity": {
                    "value": 2.8349523100000002,
                    "unit": "kg",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.119436.88346\">&lt;li>A_Height : /5 ft,in&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.119436.88346"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8302-2",
                            "display": "Ht"
                        }
                    ],
                    "text": "Ht"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-26",
                "valueQuantity": {
                    "value": 12.7,
                    "unit": "cm",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.119436.88348-1\">&lt;li>Systolic : 120 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.119436.88348-1"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8480-6",
                            "display": "A_SYSTOLIC"
                        }
                    ],
                    "text": "A_SYSTOLIC"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-26",
                "valueQuantity": {
                    "value": 120,
                    "unit": "mm[Hg]",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.119435.88334\">&lt;li>A_Weight : 100/ lbs,oz&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.119435.88334"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "3141-9",
                            "display": "Wt"
                        }
                    ],
                    "text": "Wt"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-26",
                "valueQuantity": {
                    "value": 45.359237,
                    "unit": "kg",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.119435.88335\">&lt;li>A_Height : 5/ ft,in&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.119435.88335"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8302-2",
                            "display": "Ht"
                        }
                    ],
                    "text": "Ht"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-26",
                "valueQuantity": {
                    "value": 152.4,
                    "unit": "cm",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.119435.88341\">&lt;li>A_Pulse : 70&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.119435.88341"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8867-4",
                            "display": "A_Pulse"
                        }
                    ],
                    "text": "A_Pulse"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-26",
                "valueQuantity": {
                    "value": 70,
                    "unit": "/min",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.119435.88342\">&lt;li>Pulse Ox (%) : 70&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.119435.88342"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "2710-2",
                            "display": "A_Pulse Ox"
                        }
                    ],
                    "text": "A_Pulse Ox"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-26",
                "valueQuantity": {
                    "value": 70,
                    "unit": "%",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.119435.88343\">&lt;li>Respirations : 70&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.119435.88343"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "9279-1",
                            "display": "A_Respirations"
                        }
                    ],
                    "text": "A_Respirations"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-26",
                "valueQuantity": {
                    "value": 70,
                    "unit": "/min",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.119434.88327\">&lt;li>A_Temperature : 345.321 K&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.119434.88327"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-26",
                "valueQuantity": {
                    "value": 72.17100000000005,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.119433.88320\">&lt;li>A_Temperature : 0.5 K&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.119433.88320"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-26",
                "valueQuantity": {
                    "value": -272.65,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.119432.88313\">&lt;li>A_Temperature : 1 K&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.119432.88313"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-26",
                "valueQuantity": {
                    "value": -272.15,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.119431.88306\">&lt;li>A_Temperature : 0 K&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.119431.88306"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-26",
                "valueQuantity": {
                    "value": -273.15,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.119430.88299\">&lt;li>A_Temperature : 273.15 K&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.119430.88299"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-26",
                "valueQuantity": {
                    "value": 0,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.119429.88292\">&lt;li>A_Temperature : -1 Cel&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.119429.88292"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-26",
                "valueQuantity": {
                    "value": 272.15,
                    "unit": "K",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.119428.88285\">&lt;li>A_Temperature : 37.8567 Cel&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.119428.88285"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-26",
                "valueQuantity": {
                    "value": 37.856700000000046,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.119413.88008\">&lt;li>A_Temperature : 38.45 Cel&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.119413.88008"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-26",
                "valueQuantity": {
                    "value": 38.450000000000045,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.119427.88278\">&lt;li>A_Temperature : 1 Cel&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.119427.88278"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-26",
                "valueQuantity": {
                    "value": 1,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.119426.88271\">&lt;li>A_Temperature : -0.5 Cel&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.119426.88271"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-26",
                "valueQuantity": {
                    "value": -0.5,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.119425.88264\">&lt;li>A_Temperature : 0.5 Cel&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.119425.88264"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-26",
                "valueQuantity": {
                    "value": 0.5,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.119424.88257\">&lt;li>A_Temperature : 0 Cel&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.119424.88257"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-26",
                "valueQuantity": {
                    "value": 0,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.119423.88250\">&lt;li>A_Temperature : 0.5 F&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.119423.88250"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-26",
                "valueQuantity": {
                    "value": -17.49999999999997,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.119422.88243\">&lt;li>A_Temperature : -0.5 F&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.119422.88243"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-26",
                "valueQuantity": {
                    "value": -18.055555999999967,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.119421.88236\">&lt;li>A_Temperature : 6567 F&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.119421.88236"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-26",
                "valueQuantity": {
                    "value": 3630.558474,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.119420.88229\">&lt;li>A_Temperature : 94.7 F&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.119420.88229"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-26",
                "valueQuantity": {
                    "value": 34.833375200000034,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.119419.88222\">&lt;li>A_Temperature : 97.5 F&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.119419.88222"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-26",
                "valueQuantity": {
                    "value": 36.38893200000001,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.119418.88215\">&lt;li>A_Temperature : 1 F&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.119418.88215"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-26",
                "valueQuantity": {
                    "value": -17.222221999999988,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.119417.88208\">&lt;li>A_Temperature : -1 F&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.119417.88208"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-26",
                "valueQuantity": {
                    "value": -18.33333399999998,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.119416.88201\">&lt;li>A_Temperature : 0 F&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.119416.88201"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-26",
                "valueQuantity": {
                    "value": -17.777777999999983,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.119411.88001\">&lt;li>A_Temperature : 97 F&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.119411.88001"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-26",
                "valueQuantity": {
                    "value": 36.111154,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.118487.87633\">&lt;li>A_Weight : 130/15 lbs,oz&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.118487.87633"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "3141-9",
                            "display": "Wt"
                        }
                    ],
                    "text": "Wt"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-25",
                "valueQuantity": {
                    "value": 59.3922509465,
                    "unit": "kg",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.118486.87626\">&lt;li>A_Weight : /100 lbs,oz&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.118486.87626"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "3141-9",
                            "display": "Wt"
                        }
                    ],
                    "text": "Wt"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-25",
                "valueQuantity": {
                    "value": 2.8349523100000002,
                    "unit": "kg",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.118480.87619\">&lt;li>A_Weight : 100/ lbs,oz&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.118480.87619"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "3141-9",
                            "display": "Wt"
                        }
                    ],
                    "text": "Wt"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-25",
                "valueQuantity": {
                    "value": 45.359237,
                    "unit": "kg",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.118483.87317\">&lt;li>A_Weight : 0/10 lbs,oz&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.118483.87317"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "3141-9",
                            "display": "Wt"
                        }
                    ],
                    "text": "Wt"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-25",
                "valueQuantity": {
                    "value": 0.283495231,
                    "unit": "kg",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.118482.87310\">&lt;li>A_Weight : 600/ g&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.118482.87310"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "3141-9",
                            "display": "Wt"
                        }
                    ],
                    "text": "Wt"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-25",
                "valueQuantity": {
                    "value": 0.6,
                    "unit": "kg",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.118479.87612\">&lt;li>A_Weight : 70/ kg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.118479.87612"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "3141-9",
                            "display": "Wt"
                        }
                    ],
                    "text": "Wt"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-25",
                "valueQuantity": {
                    "value": 70,
                    "unit": "kg",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.118478.87605\">&lt;li>A_Weight : 0/ kg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.118478.87605"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "3141-9",
                            "display": "Wt"
                        }
                    ],
                    "text": "Wt"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-25",
                "valueQuantity": {
                    "value": 0,
                    "unit": "kg",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.118477.87598\">&lt;li>A_Height : 1/0 ft,in&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.118477.87598"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8302-2",
                            "display": "Ht"
                        }
                    ],
                    "text": "Ht"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-25",
                "valueQuantity": {
                    "value": 30.48,
                    "unit": "cm",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.118481.87302\">&lt;li>A_Weight : 0/ lbs,oz&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.118481.87302"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "3141-9",
                            "display": "Wt"
                        }
                    ],
                    "text": "Wt"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-25",
                "valueQuantity": {
                    "value": 0,
                    "unit": "kg",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.118481.87303\">&lt;li>A_Height : 0/0 ft,in&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.118481.87303"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8302-2",
                            "display": "Ht"
                        }
                    ],
                    "text": "Ht"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-25",
                "valueQuantity": {
                    "value": 0,
                    "unit": "cm",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.118475.87295\">&lt;li>A_Height : 100/ cm&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.118475.87295"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8302-2",
                            "display": "Ht"
                        }
                    ],
                    "text": "Ht"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-25",
                "valueQuantity": {
                    "value": 100,
                    "unit": "cm",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.118474.87288\">&lt;li>A_Height : 5/0 ft,in&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.118474.87288"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8302-2",
                            "display": "Ht"
                        }
                    ],
                    "text": "Ht"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-25",
                "valueQuantity": {
                    "value": 152.4,
                    "unit": "cm",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.118476.87591\">&lt;li>A_Height : 0/5 ft,in&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.118476.87591"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8302-2",
                            "display": "Ht"
                        }
                    ],
                    "text": "Ht"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-25",
                "valueQuantity": {
                    "value": 12.7,
                    "unit": "cm",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.118473.87281\">&lt;li>A_Height : 1/ m&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.118473.87281"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8302-2",
                            "display": "Ht"
                        }
                    ],
                    "text": "Ht"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-25",
                "valueQuantity": {
                    "value": 100,
                    "unit": "cm",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.118470.87584\">&lt;li>A_Height : 0/ m&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.118470.87584"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8302-2",
                            "display": "Ht"
                        }
                    ],
                    "text": "Ht"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-25",
                "valueQuantity": {
                    "value": 0,
                    "unit": "cm",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.118469.87577\">&lt;li>A_Height : 5/3 ft,in&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.118469.87577"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8302-2",
                            "display": "Ht"
                        }
                    ],
                    "text": "Ht"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-25",
                "valueQuantity": {
                    "value": 160.02,
                    "unit": "cm",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.118472.87274\">&lt;li>A_Height : /5 ft,in&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.118472.87274"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8302-2",
                            "display": "Ht"
                        }
                    ],
                    "text": "Ht"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-25",
                "valueQuantity": {
                    "value": 12.7,
                    "unit": "cm",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.118471.87267\">&lt;li>A_Height : 5/ ft,in&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.118471.87267"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8302-2",
                            "display": "Ht"
                        }
                    ],
                    "text": "Ht"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-25",
                "valueQuantity": {
                    "value": 152.4,
                    "unit": "cm",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.118468.87568\">&lt;li>A_Pulse : 70&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.118468.87568"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8867-4",
                            "display": "A_Pulse"
                        }
                    ],
                    "text": "A_Pulse"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-25",
                "valueQuantity": {
                    "value": 70,
                    "unit": "/min",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.118468.87569\">&lt;li>Pulse Ox (%) : 70&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.118468.87569"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "2710-2",
                            "display": "A_Pulse Ox"
                        }
                    ],
                    "text": "A_Pulse Ox"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-25",
                "valueQuantity": {
                    "value": 70,
                    "unit": "%",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.118468.87574\">&lt;li>Respirations : 70&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.118468.87574"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "9279-1",
                            "display": "A_Respirations"
                        }
                    ],
                    "text": "A_Respirations"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-25",
                "valueQuantity": {
                    "value": 70,
                    "unit": "/min",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.118467.87559\">&lt;li>A_Pulse : 1&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.118467.87559"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8867-4",
                            "display": "A_Pulse"
                        }
                    ],
                    "text": "A_Pulse"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-25",
                "valueQuantity": {
                    "value": 1,
                    "unit": "/min",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.118467.87560\">&lt;li>Pulse Ox (%) : 1&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.118467.87560"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "2710-2",
                            "display": "A_Pulse Ox"
                        }
                    ],
                    "text": "A_Pulse Ox"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-25",
                "valueQuantity": {
                    "value": 1,
                    "unit": "%",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.118467.87565\">&lt;li>Respirations : 1&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.118467.87565"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "9279-1",
                            "display": "A_Respirations"
                        }
                    ],
                    "text": "A_Respirations"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-25",
                "valueQuantity": {
                    "value": 1,
                    "unit": "/min",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.118466.87550\">&lt;li>A_Pulse : 0&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.118466.87550"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8867-4",
                            "display": "A_Pulse"
                        }
                    ],
                    "text": "A_Pulse"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-25",
                "valueQuantity": {
                    "value": 0,
                    "unit": "/min",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.118466.87551\">&lt;li>Pulse Ox (%) : 0&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.118466.87551"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "2710-2",
                            "display": "A_Pulse Ox"
                        }
                    ],
                    "text": "A_Pulse Ox"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-25",
                "valueQuantity": {
                    "value": 0,
                    "unit": "%",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.118466.87556\">&lt;li>Respirations : 0&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.118466.87556"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "9279-1",
                            "display": "A_Respirations"
                        }
                    ],
                    "text": "A_Respirations"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-25",
                "valueQuantity": {
                    "value": 0,
                    "unit": "/min",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.118425.87260\">&lt;li>A_Temperature : 1 K&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.118425.87260"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-25",
                "valueQuantity": {
                    "value": -272.15,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.118465.87543\">&lt;li>A_Temperature : -1 F&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.118465.87543"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-25",
                "valueQuantity": {
                    "value": -18.33333399999998,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.118464.87536\">&lt;li>A_Temperature : 0 K&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.118464.87536"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-25",
                "valueQuantity": {
                    "value": -273.15,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.118463.87529\">&lt;li>A_Temperature : 1 Cel&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.118463.87529"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-25",
                "valueQuantity": {
                    "value": 1,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.118462.87522\">&lt;li>A_Temperature : -1 Cel&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.118462.87522"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-25",
                "valueQuantity": {
                    "value": 272.15,
                    "unit": "K",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.118461.87515\">&lt;li>A_Temperature : 0 Cel&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.118461.87515"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-25",
                "valueQuantity": {
                    "value": 0,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.118460.87508\">&lt;li>A_Temperature : 0 F&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.118460.87508"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-25",
                "valueQuantity": {
                    "value": -17.777777999999983,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.118459.87501\">&lt;li>A_Temperature : -1 F&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.118459.87501"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-25",
                "valueQuantity": {
                    "value": -18.33333399999998,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.118458.87500\">&lt;li>A_Temperature : 1 F&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.118458.87500"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-25",
                "valueQuantity": {
                    "value": -17.222221999999988,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.118457.87489-1\">&lt;li>Systolic : 1 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.118457.87489-1"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8480-6",
                            "display": "A_SYSTOLIC"
                        }
                    ],
                    "text": "A_SYSTOLIC"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-25",
                "valueQuantity": {
                    "value": 1,
                    "unit": "mm[Hg]",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.118457.87489-2\">&lt;li>Diastolic : 0 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.118457.87489-2"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8462-4",
                            "display": "A_DIASTOLIC"
                        }
                    ],
                    "text": "A_DIASTOLIC"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-25",
                "valueQuantity": {
                    "value": 0,
                    "unit": "mm[Hg]",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.118456.87483-1\">&lt;li>Systolic : 123 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.118456.87483-1"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8480-6",
                            "display": "A_SYSTOLIC"
                        }
                    ],
                    "text": "A_SYSTOLIC"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-25",
                "valueQuantity": {
                    "value": 123,
                    "unit": "mm[Hg]",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.118453.87471-1\">&lt;li>Systolic : 120 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.118453.87471-1"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8480-6",
                            "display": "A_SYSTOLIC"
                        }
                    ],
                    "text": "A_SYSTOLIC"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-25",
                "valueQuantity": {
                    "value": 120,
                    "unit": "mm[Hg]",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.118450.87448\">&lt;li>A_Temperature : 98.9 F&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.118450.87448"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-25",
                "valueQuantity": {
                    "value": 37.1667104,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.118450.87450-1\">&lt;li>Systolic : 120 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.118450.87450-1"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8480-6",
                            "display": "A_SYSTOLIC"
                        }
                    ],
                    "text": "A_SYSTOLIC"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-25",
                "valueQuantity": {
                    "value": 120,
                    "unit": "mm[Hg]",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.118450.87450-2\">&lt;li>Diastolic : 60 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.118450.87450-2"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8462-4",
                            "display": "A_DIASTOLIC"
                        }
                    ],
                    "text": "A_DIASTOLIC"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-25",
                "valueQuantity": {
                    "value": 60,
                    "unit": "mm[Hg]",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.118443.87210\">&lt;li>Comments : test ////////////asaa////////&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.118443.87210"
                    }
                ],
                "status": "final",
                "code": {
                    "extension": [
                        {
                            "url": "some url",
                            "valueCoding": {
                                "system": "http://hl7.org/fhir/v3/NullFlavor",
                                "code": "NP",
                                "display": "No Information"
                            }
                        }
                    ]
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-25",
                "valueQuantity": {
                    "extension": [
                        {
                            "url": "some url",
                            "valueCoding": {
                                "system": "http://hl7.org/fhir/v3/NullFlavor",
                                "code": "NP",
                                "display": "No Information"
                            }
                        }
                    ]
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.118435.87173\">&lt;li>A_Weight : 79.6/ kg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.118435.87173"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "3141-9",
                            "display": "Wt"
                        }
                    ],
                    "text": "Wt"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-25",
                "valueQuantity": {
                    "value": 79.6,
                    "unit": "kg",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.118435.87174\">&lt;li>A_Height : 5/4 ft,in&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.118435.87174"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8302-2",
                            "display": "Ht"
                        }
                    ],
                    "text": "Ht"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-25",
                "valueQuantity": {
                    "value": 162.56,
                    "unit": "cm",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.118435.87175\">&lt;li>A_Temperature : 89.6 F&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.118435.87175"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-25",
                "valueQuantity": {
                    "value": 32.000039600000036,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.118435.87176\">&lt;li>A_Pulse : 78&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.118435.87176"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8867-4",
                            "display": "A_Pulse"
                        }
                    ],
                    "text": "A_Pulse"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-25",
                "valueQuantity": {
                    "value": 78,
                    "unit": "/min",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.118435.87177\">&lt;li>Pulse Ox (%) : 89&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.118435.87177"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "2710-2",
                            "display": "A_Pulse Ox"
                        }
                    ],
                    "text": "A_Pulse Ox"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-25",
                "valueQuantity": {
                    "value": 89,
                    "unit": "%",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.118435.87179-1\">&lt;li>Systolic : 130 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.118435.87179-1"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8480-6",
                            "display": "A_SYSTOLIC"
                        }
                    ],
                    "text": "A_SYSTOLIC"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-25",
                "valueQuantity": {
                    "value": 130,
                    "unit": "mm[Hg]",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.118435.87179-2\">&lt;li>Diastolic : 99 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.118435.87179-2"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8462-4",
                            "display": "A_DIASTOLIC"
                        }
                    ],
                    "text": "A_DIASTOLIC"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-25",
                "valueQuantity": {
                    "value": 99,
                    "unit": "mm[Hg]",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.118435.87182\">&lt;li>Respirations : 87&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.118435.87182"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "9279-1",
                            "display": "A_Respirations"
                        }
                    ],
                    "text": "A_Respirations"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-25",
                "valueQuantity": {
                    "value": 87,
                    "unit": "/min",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117443.86188\">&lt;li>A_Weight : 49865.96069/ g&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117443.86188"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "3141-9",
                            "display": "Wt"
                        }
                    ],
                    "text": "Wt"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-21",
                "valueQuantity": {
                    "value": 49.86596069,
                    "unit": "kg",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117443.86189\">&lt;li>A_Height : 50000/ m&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117443.86189"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8302-2",
                            "display": "Ht"
                        }
                    ],
                    "text": "Ht"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-21",
                "valueQuantity": {
                    "value": 5000000,
                    "unit": "cm",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117443.86190\">&lt;li>A_Temperature : 310.45 K&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117443.86190"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-21",
                "valueQuantity": {
                    "value": 37.30000000000001,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117442.86180\">&lt;li>A_Weight : 78.4/ kg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117442.86180"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "3141-9",
                            "display": "Wt"
                        }
                    ],
                    "text": "Wt"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-21",
                "valueQuantity": {
                    "value": 78.4,
                    "unit": "kg",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117442.86181\">&lt;li>A_Height : 170.9/ cm&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117442.86181"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8302-2",
                            "display": "Ht"
                        }
                    ],
                    "text": "Ht"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-21",
                "valueQuantity": {
                    "value": 170.9,
                    "unit": "cm",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117442.86182\">&lt;li>A_Temperature : 38.9 Cel&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117442.86182"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-21",
                "valueQuantity": {
                    "value": 38.900000000000034,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117441.86172\">&lt;li>A_Weight : 129.83/15 lbs,oz&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117441.86172"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "3141-9",
                            "display": "Wt"
                        }
                    ],
                    "text": "Wt"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-21",
                "valueQuantity": {
                    "value": 59.3151402436,
                    "unit": "kg",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117441.86173\">&lt;li>A_Height : 5/5 ft,in&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117441.86173"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8302-2",
                            "display": "Ht"
                        }
                    ],
                    "text": "Ht"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-21",
                "valueQuantity": {
                    "value": 165.1,
                    "unit": "cm",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117441.86174\">&lt;li>A_Temperature : 98.8 F&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117441.86174"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-21",
                "valueQuantity": {
                    "value": 37.11115480000001,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117433.86124-1\">&lt;li>Systolic : 1 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117433.86124-1"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8480-6",
                            "display": "A_SYSTOLIC"
                        }
                    ],
                    "text": "A_SYSTOLIC"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-19",
                "valueQuantity": {
                    "value": 1,
                    "unit": "mm[Hg]",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117433.86124-2\">&lt;li>Diastolic : 0 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117433.86124-2"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8462-4",
                            "display": "A_DIASTOLIC"
                        }
                    ],
                    "text": "A_DIASTOLIC"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-19",
                "valueQuantity": {
                    "value": 0,
                    "unit": "mm[Hg]",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117432.86117\">&lt;li>A_Height : 4.9/ ft,in&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117432.86117"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8302-2",
                            "display": "Ht"
                        }
                    ],
                    "text": "Ht"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-19",
                "valueQuantity": {
                    "value": 149.352,
                    "unit": "cm",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117431.86109\">&lt;li>A_Weight : 49865.96069/ g&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117431.86109"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "3141-9",
                            "display": "Wt"
                        }
                    ],
                    "text": "Wt"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-19",
                "valueQuantity": {
                    "value": 49.86596069,
                    "unit": "kg",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117431.86110\">&lt;li>A_Height : 1.49352/ m&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117431.86110"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8302-2",
                            "display": "Ht"
                        }
                    ],
                    "text": "Ht"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-19",
                "valueQuantity": {
                    "value": 149.352,
                    "unit": "cm",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117431.86111\">&lt;li>A_Temperature : 37.0416667 Cel&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117431.86111"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-19",
                "valueQuantity": {
                    "value": 37.04166670000001,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117430.86102\">&lt;li>A_Weight : /1758.97 lbs,oz&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117430.86102"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "3141-9",
                            "display": "Wt"
                        }
                    ],
                    "text": "Wt"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-19",
                "valueQuantity": {
                    "value": 49.865960647207004,
                    "unit": "kg",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117430.86103\">&lt;li>A_Height : /58.8 ft,in&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117430.86103"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8302-2",
                            "display": "Ht"
                        }
                    ],
                    "text": "Ht"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-19",
                "valueQuantity": {
                    "value": 149.352,
                    "unit": "cm",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117428.86096\">&lt;li>A_Temperature : 0 K&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117428.86096"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-19",
                "valueQuantity": {
                    "value": -273.15,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117427.86090\">&lt;li>A_Temperature : 0 Cel&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117427.86090"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-19",
                "valueQuantity": {
                    "value": 0,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117426.86084\">&lt;li>A_Temperature : -1 Cel&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117426.86084"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-19",
                "valueQuantity": {
                    "value": 272.15,
                    "unit": "K",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117420.86078\">&lt;li>A_Temperature : 0 F&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117420.86078"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-19",
                "valueQuantity": {
                    "value": -17.777777999999983,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117419.86072\">&lt;li>A_Temperature : -1 F&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117419.86072"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-19",
                "valueQuantity": {
                    "value": -18.33333399999998,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117421.86201\">&lt;li>A_Weight : 58.9/ lbs,oz&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117421.86201"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "3141-9",
                            "display": "Wt"
                        }
                    ],
                    "text": "Wt"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-19",
                "valueQuantity": {
                    "value": 26.716590593,
                    "unit": "kg",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117421.86202\">&lt;li>A_Height : 1.49352/ m&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117421.86202"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8302-2",
                            "display": "Ht"
                        }
                    ],
                    "text": "Ht"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-19",
                "valueQuantity": {
                    "value": 149.352,
                    "unit": "cm",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117421.86203\">&lt;li>A_Temperature : 310.230556 K&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117421.86203"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-19",
                "valueQuantity": {
                    "value": 37.080556,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117417.86061\">&lt;li>A_Weight : 79.4/ kg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117417.86061"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "3141-9",
                            "display": "Wt"
                        }
                    ],
                    "text": "Wt"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-19",
                "valueQuantity": {
                    "value": 79.4,
                    "unit": "kg",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117417.86062\">&lt;li>A_Height : 162.58/ cm&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117417.86062"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8302-2",
                            "display": "Ht"
                        }
                    ],
                    "text": "Ht"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-19",
                "valueQuantity": {
                    "value": 162.57999999999998,
                    "unit": "cm",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117417.86063\">&lt;li>A_Temperature : 37.0555 Cel&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117417.86063"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-19",
                "valueQuantity": {
                    "value": 37.055499999999995,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117417.86064\">&lt;li>A_Pulse : 60&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117417.86064"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8867-4",
                            "display": "A_Pulse"
                        }
                    ],
                    "text": "A_Pulse"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-19",
                "valueQuantity": {
                    "value": 60,
                    "unit": "/min",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117417.86065\">&lt;li>Pulse Ox (%) : 60&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117417.86065"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "2710-2",
                            "display": "A_Pulse Ox"
                        }
                    ],
                    "text": "A_Pulse Ox"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-19",
                "valueQuantity": {
                    "value": 60,
                    "unit": "%",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117417.86067-1\">&lt;li>Systolic : 120 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117417.86067-1"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8480-6",
                            "display": "A_SYSTOLIC"
                        }
                    ],
                    "text": "A_SYSTOLIC"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-19",
                "valueQuantity": {
                    "value": 120,
                    "unit": "mm[Hg]",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117417.86067-2\">&lt;li>Diastolic : 60 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117417.86067-2"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8462-4",
                            "display": "A_DIASTOLIC"
                        }
                    ],
                    "text": "A_DIASTOLIC"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-19",
                "valueQuantity": {
                    "value": 60,
                    "unit": "mm[Hg]",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117417.86070\">&lt;li>Respirations : 60&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117417.86070"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "9279-1",
                            "display": "A_Respirations"
                        }
                    ],
                    "text": "A_Respirations"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-19",
                "valueQuantity": {
                    "value": 60,
                    "unit": "/min",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117416.86050\">&lt;li>A_Weight : 78.9/ kg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117416.86050"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "3141-9",
                            "display": "Wt"
                        }
                    ],
                    "text": "Wt"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-19",
                "valueQuantity": {
                    "value": 78.9,
                    "unit": "kg",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117416.86051\">&lt;li>A_Height : 5/4 ft,in&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117416.86051"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8302-2",
                            "display": "Ht"
                        }
                    ],
                    "text": "Ht"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-19",
                "valueQuantity": {
                    "value": 162.56,
                    "unit": "cm",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117416.86052\">&lt;li>A_Temperature : 98.7 F&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117416.86052"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-19",
                "valueQuantity": {
                    "value": 37.05559920000002,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117416.86053\">&lt;li>A_Pulse : 59&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117416.86053"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8867-4",
                            "display": "A_Pulse"
                        }
                    ],
                    "text": "A_Pulse"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-19",
                "valueQuantity": {
                    "value": 59,
                    "unit": "/min",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117416.86054\">&lt;li>Pulse Ox (%) : 59&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117416.86054"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "2710-2",
                            "display": "A_Pulse Ox"
                        }
                    ],
                    "text": "A_Pulse Ox"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-19",
                "valueQuantity": {
                    "value": 59,
                    "unit": "%",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117416.86056-1\">&lt;li>Systolic : 120 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117416.86056-1"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8480-6",
                            "display": "A_SYSTOLIC"
                        }
                    ],
                    "text": "A_SYSTOLIC"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-19",
                "valueQuantity": {
                    "value": 120,
                    "unit": "mm[Hg]",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117416.86056-2\">&lt;li>Diastolic : 70 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117416.86056-2"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8462-4",
                            "display": "A_DIASTOLIC"
                        }
                    ],
                    "text": "A_DIASTOLIC"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-19",
                "valueQuantity": {
                    "value": 70,
                    "unit": "mm[Hg]",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117416.86059\">&lt;li>Respirations : 59&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117416.86059"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "9279-1",
                            "display": "A_Respirations"
                        }
                    ],
                    "text": "A_Respirations"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-19",
                "valueQuantity": {
                    "value": 59,
                    "unit": "/min",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117415.86039\">&lt;li>A_Weight : 76.6/ kg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117415.86039"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "3141-9",
                            "display": "Wt"
                        }
                    ],
                    "text": "Wt"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-18",
                "valueQuantity": {
                    "value": 76.6,
                    "unit": "kg",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117415.86040\">&lt;li>A_Height : 5/6 ft,in&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117415.86040"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8302-2",
                            "display": "Ht"
                        }
                    ],
                    "text": "Ht"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-18",
                "valueQuantity": {
                    "value": 167.64,
                    "unit": "cm",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117415.86041\">&lt;li>A_Temperature : 97.9 F&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117415.86041"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-18",
                "valueQuantity": {
                    "value": 36.61115440000003,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117415.86042\">&lt;li>A_Pulse : 67&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117415.86042"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8867-4",
                            "display": "A_Pulse"
                        }
                    ],
                    "text": "A_Pulse"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-18",
                "valueQuantity": {
                    "value": 67,
                    "unit": "/min",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117415.86043\">&lt;li>Pulse Ox (%) : 67&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117415.86043"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "2710-2",
                            "display": "A_Pulse Ox"
                        }
                    ],
                    "text": "A_Pulse Ox"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-18",
                "valueQuantity": {
                    "value": 67,
                    "unit": "%",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117415.86045-1\">&lt;li>Systolic : 120 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117415.86045-1"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8480-6",
                            "display": "A_SYSTOLIC"
                        }
                    ],
                    "text": "A_SYSTOLIC"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-18",
                "valueQuantity": {
                    "value": 120,
                    "unit": "mm[Hg]",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117415.86045-2\">&lt;li>Diastolic : 60 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117415.86045-2"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8462-4",
                            "display": "A_DIASTOLIC"
                        }
                    ],
                    "text": "A_DIASTOLIC"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-18",
                "valueQuantity": {
                    "value": 60,
                    "unit": "mm[Hg]",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117415.86048\">&lt;li>Respirations : 67&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117415.86048"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "9279-1",
                            "display": "A_Respirations"
                        }
                    ],
                    "text": "A_Respirations"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-18",
                "valueQuantity": {
                    "value": 67,
                    "unit": "/min",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117413.86023\">&lt;li>A_Weight : 87.6/ kg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117413.86023"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "3141-9",
                            "display": "Wt"
                        }
                    ],
                    "text": "Wt"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-17",
                "valueQuantity": {
                    "value": 87.6,
                    "unit": "kg",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117413.86024\">&lt;li>A_Height : 5/5 ft,in&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117413.86024"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8302-2",
                            "display": "Ht"
                        }
                    ],
                    "text": "Ht"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-17",
                "valueQuantity": {
                    "value": 165.1,
                    "unit": "cm",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117413.86026\">&lt;li>A_Temperature : 96.8 F&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117413.86026"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-17",
                "valueQuantity": {
                    "value": 36.00004280000002,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117413.86027-1\">&lt;li>Systolic : 120 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117413.86027-1"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8480-6",
                            "display": "A_SYSTOLIC"
                        }
                    ],
                    "text": "A_SYSTOLIC"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-17",
                "valueQuantity": {
                    "value": 120,
                    "unit": "mm[Hg]",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117413.86027-2\">&lt;li>Diastolic : 60 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117413.86027-2"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8462-4",
                            "display": "A_DIASTOLIC"
                        }
                    ],
                    "text": "A_DIASTOLIC"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-17",
                "valueQuantity": {
                    "value": 60,
                    "unit": "mm[Hg]",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117413.86030\">&lt;li>A_Pulse : 60&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117413.86030"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8867-4",
                            "display": "A_Pulse"
                        }
                    ],
                    "text": "A_Pulse"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-17",
                "valueQuantity": {
                    "value": 60,
                    "unit": "/min",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117413.86031\">&lt;li>Pulse Ox (%) : 60&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117413.86031"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "2710-2",
                            "display": "A_Pulse Ox"
                        }
                    ],
                    "text": "A_Pulse Ox"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-17",
                "valueQuantity": {
                    "value": 60,
                    "unit": "%",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.117413.86032\">&lt;li>Respirations : 60&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.117413.86032"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "9279-1",
                            "display": "A_Respirations"
                        }
                    ],
                    "text": "A_Respirations"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-17",
                "valueQuantity": {
                    "value": 60,
                    "unit": "/min",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116445.85179\">&lt;li>A_Weight : 78.9/ kg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116445.85179"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "3141-9",
                            "display": "Wt"
                        }
                    ],
                    "text": "Wt"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 78.9,
                    "unit": "kg",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116445.85180\">&lt;li>A_Height : 4/6 ft,in&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116445.85180"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8302-2",
                            "display": "Ht"
                        }
                    ],
                    "text": "Ht"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 137.16,
                    "unit": "cm",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116445.85182\">&lt;li>A_Temperature : 78 F&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116445.85182"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 25.555589999999995,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116445.85183-1\">&lt;li>Systolic : 120 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116445.85183-1"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8480-6",
                            "display": "A_SYSTOLIC"
                        }
                    ],
                    "text": "A_SYSTOLIC"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 120,
                    "unit": "mm[Hg]",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116445.85183-2\">&lt;li>Diastolic : 55 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116445.85183-2"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8462-4",
                            "display": "A_DIASTOLIC"
                        }
                    ],
                    "text": "A_DIASTOLIC"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 55,
                    "unit": "mm[Hg]",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116445.85186\">&lt;li>A_Pulse : 70&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116445.85186"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8867-4",
                            "display": "A_Pulse"
                        }
                    ],
                    "text": "A_Pulse"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 70,
                    "unit": "/min",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116445.85187\">&lt;li>Pulse Ox (%) : 34&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116445.85187"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "2710-2",
                            "display": "A_Pulse Ox"
                        }
                    ],
                    "text": "A_Pulse Ox"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 34,
                    "unit": "%",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116445.85188\">&lt;li>Respirations : 56&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116445.85188"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "9279-1",
                            "display": "A_Respirations"
                        }
                    ],
                    "text": "A_Respirations"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 56,
                    "unit": "/min",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116444.85163\">&lt;li>A_Weight : 79.8/ kg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116444.85163"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "3141-9",
                            "display": "Wt"
                        }
                    ],
                    "text": "Wt"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 79.8,
                    "unit": "kg",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116444.85164\">&lt;li>A_Height : 5/6 ft,in&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116444.85164"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8302-2",
                            "display": "Ht"
                        }
                    ],
                    "text": "Ht"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 167.64,
                    "unit": "cm",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116444.85166\">&lt;li>A_Temperature : 97.8 F&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116444.85166"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 36.55559880000004,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116444.85167-1\">&lt;li>Systolic : 120 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116444.85167-1"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8480-6",
                            "display": "A_SYSTOLIC"
                        }
                    ],
                    "text": "A_SYSTOLIC"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 120,
                    "unit": "mm[Hg]",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116444.85167-2\">&lt;li>Diastolic : 60 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116444.85167-2"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8462-4",
                            "display": "A_DIASTOLIC"
                        }
                    ],
                    "text": "A_DIASTOLIC"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 60,
                    "unit": "mm[Hg]",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116444.85170\">&lt;li>A_Pulse : 70&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116444.85170"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8867-4",
                            "display": "A_Pulse"
                        }
                    ],
                    "text": "A_Pulse"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 70,
                    "unit": "/min",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116444.85171\">&lt;li>Pulse Ox (%) : 70&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116444.85171"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "2710-2",
                            "display": "A_Pulse Ox"
                        }
                    ],
                    "text": "A_Pulse Ox"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 70,
                    "unit": "%",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116444.85172\">&lt;li>Respirations : 70&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116444.85172"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "9279-1",
                            "display": "A_Respirations"
                        }
                    ],
                    "text": "A_Respirations"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 70,
                    "unit": "/min",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116443.85150\">&lt;li>A_Temperature : 98.9 F&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116443.85150"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 37.1667104,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116443.85151-1\">&lt;li>Systolic : 120 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116443.85151-1"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8480-6",
                            "display": "A_SYSTOLIC"
                        }
                    ],
                    "text": "A_SYSTOLIC"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 120,
                    "unit": "mm[Hg]",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116443.85151-2\">&lt;li>Diastolic : 60 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116443.85151-2"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8462-4",
                            "display": "A_DIASTOLIC"
                        }
                    ],
                    "text": "A_DIASTOLIC"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 60,
                    "unit": "mm[Hg]",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116443.85154\">&lt;li>A_Pulse : 70&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116443.85154"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8867-4",
                            "display": "A_Pulse"
                        }
                    ],
                    "text": "A_Pulse"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 70,
                    "unit": "/min",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116443.85155\">&lt;li>Pulse Ox (%) : 70&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116443.85155"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "2710-2",
                            "display": "A_Pulse Ox"
                        }
                    ],
                    "text": "A_Pulse Ox"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 70,
                    "unit": "%",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116443.85156\">&lt;li>Respirations : 70&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116443.85156"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "9279-1",
                            "display": "A_Respirations"
                        }
                    ],
                    "text": "A_Respirations"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 70,
                    "unit": "/min",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116442.85139\">&lt;li>A_Temperature : 89.9 F&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116442.85139"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 32.16670640000001,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116441.85128\">&lt;li>A_Temperature : 98 F&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116441.85128"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 36.66671000000002,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116440.85111\">&lt;li>A_Weight : 79.9/ kg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116440.85111"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "3141-9",
                            "display": "Wt"
                        }
                    ],
                    "text": "Wt"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 79.9,
                    "unit": "kg",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116440.85112\">&lt;li>A_Height : 5/6 ft,in&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116440.85112"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8302-2",
                            "display": "Ht"
                        }
                    ],
                    "text": "Ht"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 167.64,
                    "unit": "cm",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116440.85114\">&lt;li>A_Temperature : 97 F&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116440.85114"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 36.111154,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116440.85115-1\">&lt;li>Systolic : 120 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116440.85115-1"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8480-6",
                            "display": "A_SYSTOLIC"
                        }
                    ],
                    "text": "A_SYSTOLIC"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 120,
                    "unit": "mm[Hg]",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116440.85115-2\">&lt;li>Diastolic : 60 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116440.85115-2"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8462-4",
                            "display": "A_DIASTOLIC"
                        }
                    ],
                    "text": "A_DIASTOLIC"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 60,
                    "unit": "mm[Hg]",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116440.85118\">&lt;li>A_Pulse : 70&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116440.85118"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8867-4",
                            "display": "A_Pulse"
                        }
                    ],
                    "text": "A_Pulse"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 70,
                    "unit": "/min",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116440.85119\">&lt;li>Pulse Ox (%) : 70&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116440.85119"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "2710-2",
                            "display": "A_Pulse Ox"
                        }
                    ],
                    "text": "A_Pulse Ox"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 70,
                    "unit": "%",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116440.85120\">&lt;li>Respirations : 70&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116440.85120"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "9279-1",
                            "display": "A_Respirations"
                        }
                    ],
                    "text": "A_Respirations"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 70,
                    "unit": "/min",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116439.85101\">&lt;li>A_Temperature : 98 F&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116439.85101"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 36.66671000000002,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116438.85084\">&lt;li>A_Weight : 69.7/ kg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116438.85084"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "3141-9",
                            "display": "Wt"
                        }
                    ],
                    "text": "Wt"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 69.7,
                    "unit": "kg",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116438.85085\">&lt;li>A_Height : 5/3 ft,in&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116438.85085"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8302-2",
                            "display": "Ht"
                        }
                    ],
                    "text": "Ht"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 160.02,
                    "unit": "cm",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116438.85087\">&lt;li>A_Temperature : 96.7 F&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116438.85087"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 35.944487200000026,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116438.85088-1\">&lt;li>Systolic : 120 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116438.85088-1"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8480-6",
                            "display": "A_SYSTOLIC"
                        }
                    ],
                    "text": "A_SYSTOLIC"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 120,
                    "unit": "mm[Hg]",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116438.85088-2\">&lt;li>Diastolic : 50 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116438.85088-2"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8462-4",
                            "display": "A_DIASTOLIC"
                        }
                    ],
                    "text": "A_DIASTOLIC"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 50,
                    "unit": "mm[Hg]",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116438.85091\">&lt;li>A_Pulse : 70&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116438.85091"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8867-4",
                            "display": "A_Pulse"
                        }
                    ],
                    "text": "A_Pulse"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 70,
                    "unit": "/min",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116438.85092\">&lt;li>Pulse Ox (%) : 70&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116438.85092"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "2710-2",
                            "display": "A_Pulse Ox"
                        }
                    ],
                    "text": "A_Pulse Ox"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 70,
                    "unit": "%",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116438.85093\">&lt;li>Respirations : 70&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116438.85093"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "9279-1",
                            "display": "A_Respirations"
                        }
                    ],
                    "text": "A_Respirations"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 70,
                    "unit": "/min",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116437.85068\">&lt;li>A_Weight : 89/ kg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116437.85068"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "3141-9",
                            "display": "Wt"
                        }
                    ],
                    "text": "Wt"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 89,
                    "unit": "kg",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116437.85069\">&lt;li>A_Height : 5/5 ft,in&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116437.85069"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8302-2",
                            "display": "Ht"
                        }
                    ],
                    "text": "Ht"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 165.1,
                    "unit": "cm",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116437.85071\">&lt;li>A_Temperature : 95.6 F&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116437.85071"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 35.33337560000001,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116437.85072-1\">&lt;li>Systolic : 120 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116437.85072-1"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8480-6",
                            "display": "A_SYSTOLIC"
                        }
                    ],
                    "text": "A_SYSTOLIC"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 120,
                    "unit": "mm[Hg]",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116437.85072-2\">&lt;li>Diastolic : 60 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116437.85072-2"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8462-4",
                            "display": "A_DIASTOLIC"
                        }
                    ],
                    "text": "A_DIASTOLIC"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 60,
                    "unit": "mm[Hg]",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116437.85075\">&lt;li>A_Pulse : 70&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116437.85075"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8867-4",
                            "display": "A_Pulse"
                        }
                    ],
                    "text": "A_Pulse"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 70,
                    "unit": "/min",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116437.85076\">&lt;li>Pulse Ox (%) : 70&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116437.85076"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "2710-2",
                            "display": "A_Pulse Ox"
                        }
                    ],
                    "text": "A_Pulse Ox"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 70,
                    "unit": "%",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116437.85077\">&lt;li>Respirations : 60&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116437.85077"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "9279-1",
                            "display": "A_Respirations"
                        }
                    ],
                    "text": "A_Respirations"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 60,
                    "unit": "/min",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116436.85052\">&lt;li>A_Weight : 78.9/ kg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116436.85052"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "3141-9",
                            "display": "Wt"
                        }
                    ],
                    "text": "Wt"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 78.9,
                    "unit": "kg",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116436.85053\">&lt;li>A_Height : 5/6 ft,in&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116436.85053"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8302-2",
                            "display": "Ht"
                        }
                    ],
                    "text": "Ht"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 167.64,
                    "unit": "cm",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116436.85055\">&lt;li>A_Temperature : 97.8 F&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116436.85055"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 36.55559880000004,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116436.85056-1\">&lt;li>Systolic : 120 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116436.85056-1"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8480-6",
                            "display": "A_SYSTOLIC"
                        }
                    ],
                    "text": "A_SYSTOLIC"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 120,
                    "unit": "mm[Hg]",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116436.85056-2\">&lt;li>Diastolic : 60 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116436.85056-2"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8462-4",
                            "display": "A_DIASTOLIC"
                        }
                    ],
                    "text": "A_DIASTOLIC"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 60,
                    "unit": "mm[Hg]",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116436.85059\">&lt;li>A_Pulse : 70&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116436.85059"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8867-4",
                            "display": "A_Pulse"
                        }
                    ],
                    "text": "A_Pulse"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 70,
                    "unit": "/min",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116436.85060\">&lt;li>Pulse Ox (%) : 70&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116436.85060"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "2710-2",
                            "display": "A_Pulse Ox"
                        }
                    ],
                    "text": "A_Pulse Ox"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 70,
                    "unit": "%",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116436.85061\">&lt;li>Respirations : 70&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116436.85061"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "9279-1",
                            "display": "A_Respirations"
                        }
                    ],
                    "text": "A_Respirations"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 70,
                    "unit": "/min",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116434.85034\">&lt;li>A_Weight : 78.9/ kg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116434.85034"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "3141-9",
                            "display": "Wt"
                        }
                    ],
                    "text": "Wt"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 78.9,
                    "unit": "kg",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116434.85035\">&lt;li>A_Height : 5/6 ft,in&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116434.85035"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8302-2",
                            "display": "Ht"
                        }
                    ],
                    "text": "Ht"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 167.64,
                    "unit": "cm",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116434.85037\">&lt;li>A_Temperature : 98.8 F&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116434.85037"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 37.11115480000001,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116434.85038-1\">&lt;li>Systolic : 120 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116434.85038-1"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8480-6",
                            "display": "A_SYSTOLIC"
                        }
                    ],
                    "text": "A_SYSTOLIC"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 120,
                    "unit": "mm[Hg]",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116434.85038-2\">&lt;li>Diastolic : 70 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116434.85038-2"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8462-4",
                            "display": "A_DIASTOLIC"
                        }
                    ],
                    "text": "A_DIASTOLIC"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 70,
                    "unit": "mm[Hg]",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116434.85041\">&lt;li>A_Pulse : 60&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116434.85041"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8867-4",
                            "display": "A_Pulse"
                        }
                    ],
                    "text": "A_Pulse"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 60,
                    "unit": "/min",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116434.85042\">&lt;li>Pulse Ox (%) : 100&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116434.85042"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "2710-2",
                            "display": "A_Pulse Ox"
                        }
                    ],
                    "text": "A_Pulse Ox"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 100,
                    "unit": "%",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.116434.85043\">&lt;li>Respirations : 70&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.116434.85043"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "9279-1",
                            "display": "A_Respirations"
                        }
                    ],
                    "text": "A_Respirations"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-13",
                "valueQuantity": {
                    "value": 70,
                    "unit": "/min",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.113412.82007\">&lt;li>A_Weight : 61/ kg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.113412.82007"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "3141-9",
                            "display": "Wt"
                        }
                    ],
                    "text": "Wt"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-03-31",
                "valueQuantity": {
                    "value": 61,
                    "unit": "kg",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.113412.82008\">&lt;li>A_Height : 5/6 ft,in&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.113412.82008"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8302-2",
                            "display": "Ht"
                        }
                    ],
                    "text": "Ht"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-03-31",
                "valueQuantity": {
                    "value": 167.64,
                    "unit": "cm",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.113412.82009\">&lt;li>A_Temperature : 98 F&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.113412.82009"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-03-31",
                "valueQuantity": {
                    "value": 36.66671000000002,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.113412.82010\">&lt;li>A_Pulse : 66&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.113412.82010"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8867-4",
                            "display": "A_Pulse"
                        }
                    ],
                    "text": "A_Pulse"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-03-31",
                "valueQuantity": {
                    "value": 66,
                    "unit": "/min",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.113412.82011\">&lt;li>Pulse Ox (%) : 35&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.113412.82011"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "2710-2",
                            "display": "A_Pulse Ox"
                        }
                    ],
                    "text": "A_Pulse Ox"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-03-31",
                "valueQuantity": {
                    "value": 35,
                    "unit": "%",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.113412.82013-1\">&lt;li>Systolic : 120 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.113412.82013-1"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8480-6",
                            "display": "A_SYSTOLIC"
                        }
                    ],
                    "text": "A_SYSTOLIC"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-03-31",
                "valueQuantity": {
                    "value": 120,
                    "unit": "mm[Hg]",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.113412.82013-2\">&lt;li>Diastolic : 60 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.113412.82013-2"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8462-4",
                            "display": "A_DIASTOLIC"
                        }
                    ],
                    "text": "A_DIASTOLIC"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-03-31",
                "valueQuantity": {
                    "value": 60,
                    "unit": "mm[Hg]",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.113412.82016\">&lt;li>Respirations : 34&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.113412.82016"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "9279-1",
                            "display": "A_Respirations"
                        }
                    ],
                    "text": "A_Respirations"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-03-31",
                "valueQuantity": {
                    "value": 34,
                    "unit": "/min",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.74419.39105\">&lt;li>A_Weight : 140/ lbs,oz&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.74419.39105"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "3141-9",
                            "display": "Wt"
                        }
                    ],
                    "text": "Wt"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2016-05-13",
                "valueQuantity": {
                    "value": 63.5029318,
                    "unit": "kg",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.74419.39106\">&lt;li>A_Height : 5/2 ft,in&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.74419.39106"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8302-2",
                            "display": "Ht"
                        }
                    ],
                    "text": "Ht"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2016-05-13",
                "valueQuantity": {
                    "value": 157.48,
                    "unit": "cm",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.74419.39108\">&lt;li>A_Temperature : 80 F&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.74419.39108"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2016-05-13",
                "valueQuantity": {
                    "value": 26.666702000000043,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.74419.39109\">&lt;li>A_Pulse : 60&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.74419.39109"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8867-4",
                            "display": "A_Pulse"
                        }
                    ],
                    "text": "A_Pulse"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2016-05-13",
                "valueQuantity": {
                    "value": 60,
                    "unit": "/min",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.74419.39110-1\">&lt;li>Systolic : 120 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.74419.39110-1"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8480-6",
                            "display": "A_SYSTOLIC"
                        }
                    ],
                    "text": "A_SYSTOLIC"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2016-05-13",
                "valueQuantity": {
                    "value": 120,
                    "unit": "mm[Hg]",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.74419.39110-2\">&lt;li>Diastolic : 95 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.74419.39110-2"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8462-4",
                            "display": "A_DIASTOLIC"
                        }
                    ],
                    "text": "A_DIASTOLIC"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2016-05-13",
                "valueQuantity": {
                    "value": 95,
                    "unit": "mm[Hg]",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.47423.14258\">&lt;li>A_Weight : 207/ lbs,oz&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.47423.14258"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "3141-9",
                            "display": "Wt"
                        }
                    ],
                    "text": "Wt"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2015-12-01",
                "valueQuantity": {
                    "value": 93.89362059000001,
                    "unit": "kg",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.47423.14259\">&lt;li>Respirations : 22&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.47423.14259"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "9279-1",
                            "display": "A_Respirations"
                        }
                    ],
                    "text": "A_Respirations"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2015-12-01",
                "valueQuantity": {
                    "value": 22,
                    "unit": "/min",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.47423.14262-1\">&lt;li>Systolic : 130 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.47423.14262-1"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8480-6",
                            "display": "A_SYSTOLIC"
                        }
                    ],
                    "text": "A_SYSTOLIC"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2015-12-01",
                "valueQuantity": {
                    "value": 130,
                    "unit": "mm[Hg]",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.47423.14262-2\">&lt;li>Diastolic : 85 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.47423.14262-2"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8462-4",
                            "display": "A_DIASTOLIC"
                        }
                    ],
                    "text": "A_DIASTOLIC"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2015-12-01",
                "valueQuantity": {
                    "value": 85,
                    "unit": "mm[Hg]",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.47423.14264\">&lt;li>A_Pulse : 72&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.47423.14264"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8867-4",
                            "display": "A_Pulse"
                        }
                    ],
                    "text": "A_Pulse"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2015-12-01",
                "valueQuantity": {
                    "value": 72,
                    "unit": "/min",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.47422.14245\">&lt;li>A_Height : 5/10 ft,in&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.47422.14245"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8302-2",
                            "display": "Ht"
                        }
                    ],
                    "text": "Ht"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2015-12-01",
                "valueQuantity": {
                    "value": 177.8,
                    "unit": "cm",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.47422.14246\">&lt;li>A_Weight : 207/ lbs,oz&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.47422.14246"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "3141-9",
                            "display": "Wt"
                        }
                    ],
                    "text": "Wt"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2015-12-01",
                "valueQuantity": {
                    "value": 93.89362059000001,
                    "unit": "kg",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.47422.14247\">&lt;li>Respirations : 18&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.47422.14247"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "9279-1",
                            "display": "A_Respirations"
                        }
                    ],
                    "text": "A_Respirations"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2015-12-01",
                "valueQuantity": {
                    "value": 18,
                    "unit": "/min",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.47422.14250-1\">&lt;li>Systolic : 133 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.47422.14250-1"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8480-6",
                            "display": "A_SYSTOLIC"
                        }
                    ],
                    "text": "A_SYSTOLIC"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2015-12-01",
                "valueQuantity": {
                    "value": 133,
                    "unit": "mm[Hg]",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.47422.14250-2\">&lt;li>Diastolic : 87 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.47422.14250-2"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8462-4",
                            "display": "A_DIASTOLIC"
                        }
                    ],
                    "text": "A_DIASTOLIC"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2015-12-01",
                "valueQuantity": {
                    "value": 87,
                    "unit": "mm[Hg]",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.47422.14252\">&lt;li>A_Pulse : 66&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.47422.14252"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8867-4",
                            "display": "A_Pulse"
                        }
                    ],
                    "text": "A_Pulse"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2015-12-01",
                "valueQuantity": {
                    "value": 66,
                    "unit": "/min",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.44413.11024\">&lt;li>A_Height : 5/10 ft,in&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.44413.11024"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8302-2",
                            "display": "Ht"
                        }
                    ],
                    "text": "Ht"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2015-11-13",
                "valueQuantity": {
                    "value": 177.8,
                    "unit": "cm",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.44413.11025\">&lt;li>A_Weight : 207/ lbs,oz&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.44413.11025"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "3141-9",
                            "display": "Wt"
                        }
                    ],
                    "text": "Wt"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2015-11-13",
                "valueQuantity": {
                    "value": 93.89362059000001,
                    "unit": "kg",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.44413.11026-1\">&lt;li>Systolic : 117 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.44413.11026-1"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8480-6",
                            "display": "A_SYSTOLIC"
                        }
                    ],
                    "text": "A_SYSTOLIC"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2015-11-13",
                "valueQuantity": {
                    "value": 117,
                    "unit": "mm[Hg]",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.44413.11026-2\">&lt;li>Diastolic : 55 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.44413.11026-2"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8462-4",
                            "display": "A_DIASTOLIC"
                        }
                    ],
                    "text": "A_DIASTOLIC"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2015-11-13",
                "valueQuantity": {
                    "value": 55,
                    "unit": "mm[Hg]",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.44413.11029\">&lt;li>A_Temperature : 99 F&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.44413.11029"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2015-11-13",
                "valueQuantity": {
                    "value": 37.22226600000005,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.37428.5390\">&lt;li>Respirations : 90&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.37428.5390"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "9279-1",
                            "display": "A_Respirations"
                        }
                    ],
                    "text": "A_Respirations"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2015-09-02",
                "valueQuantity": {
                    "value": 90,
                    "unit": "/min",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.37428.5391\">&lt;li>A_Height : 6/1 ft,in&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.37428.5391"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8302-2",
                            "display": "Ht"
                        }
                    ],
                    "text": "Ht"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2015-09-02",
                "valueQuantity": {
                    "value": 185.42000000000002,
                    "unit": "cm",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.37428.5392\">&lt;li>A_Weight : 199/ lbs,oz&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.37428.5392"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "3141-9",
                            "display": "Wt"
                        }
                    ],
                    "text": "Wt"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2015-09-02",
                "valueQuantity": {
                    "value": 90.26488163,
                    "unit": "kg",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.37428.5393-1\">&lt;li>Systolic : 147 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.37428.5393-1"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8480-6",
                            "display": "A_SYSTOLIC"
                        }
                    ],
                    "text": "A_SYSTOLIC"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2015-09-02",
                "valueQuantity": {
                    "value": 147,
                    "unit": "mm[Hg]",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.37428.5393-2\">&lt;li>Diastolic : 99 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.37428.5393-2"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8462-4",
                            "display": "A_DIASTOLIC"
                        }
                    ],
                    "text": "A_DIASTOLIC"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2015-09-02",
                "valueQuantity": {
                    "value": 99,
                    "unit": "mm[Hg]",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.37428.5395\">&lt;li>A_Temperature : 101 F&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.37428.5395"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8310-5",
                            "display": "A_Temperature"
                        }
                    ],
                    "text": "A_Temperature"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2015-09-02",
                "valueQuantity": {
                    "value": 38.33337800000004,
                    "unit": "Cel",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.37428.7001\">&lt;li>A_Pulse : 40&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.37428.7001"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8867-4",
                            "display": "A_Pulse"
                        }
                    ],
                    "text": "A_Pulse"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2015-09-02",
                "valueQuantity": {
                    "value": 40,
                    "unit": "/min",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        }
    ]
}

  end
end
