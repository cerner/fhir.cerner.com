module Cerner
  module Resources

    SOARIAN_OBSERVATION_BUNDLE ||= 
   {
    "resourceType": "Bundle",
    "id": "9842e38b-38f4-4fd3-81aa-075d0b9ca5f1",
    "meta": {
        "lastUpdated": "2018-04-10T09:21:56.996-04:00"
    },
    "type": "searchset",
    "link": [
        {
            "relation": "self",
            "url": "base-url/1671/Observation?patientId=D4292B7B-AEDF-4CEF-B783-BD3AA1B0DD27&_format=json"
        }
    ],
    "entry": [
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.63413.35246\">&lt;li>Weight : 88/ kg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.63413.35246"
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
                    "reference": "Patient/7568F2F3-FC76-4185-A540-1DB56331A387"
                },
                "effectiveDateTime": "2015-06-22",
                "valueQuantity": {
                    "value": 88,
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
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.63413.35247\">&lt;li>Height : 177/ cm&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.63413.35247"
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
                    "reference": "Patient/7568F2F3-FC76-4185-A540-1DB56331A387"
                },
                "effectiveDateTime": "2015-06-22",
                "valueQuantity": {
                    "value": 177,
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
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.63413.35248\">&lt;li>Inhaled Oxygen Concentration : 36&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.63413.35248"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "3150-0",
                            "display": "A_FIO2%Act"
                        }
                    ],
                    "text": "A_FIO2%Act"
                },
                "subject": {
                    "reference": "Patient/7568F2F3-FC76-4185-A540-1DB56331A387"
                },
                "effectiveDateTime": "2015-06-22",
                "valueQuantity": {
                    "value": 36,
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
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.63413.35250\">&lt;li>Body Temperature : 38 Cel&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.63413.35250"
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
                    "reference": "Patient/7568F2F3-FC76-4185-A540-1DB56331A387"
                },
                "effectiveDateTime": "2015-06-22",
                "valueQuantity": {
                    "value": 38,
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
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.63413.35252-1\">&lt;li>Systolic : 145 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.63413.35252-1"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8462-4",
                            "display": "A_SYSTOLIC"
                        }
                    ],
                    "text": "A_SYSTOLIC"
                },
                "subject": {
                    "reference": "Patient/7568F2F3-FC76-4185-A540-1DB56331A387"
                },
                "effectiveDateTime": "2015-06-22",
                "valueQuantity": {
                    "value": 145,
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
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.63413.35252-2\">&lt;li>Diastolic : 88 mmHg&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.63413.35252-2"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "8480-6",
                            "display": "A_DIASTOLIC"
                        }
                    ],
                    "text": "A_DIASTOLIC"
                },
                "subject": {
                    "reference": "Patient/7568F2F3-FC76-4185-A540-1DB56331A387"
                },
                "effectiveDateTime": "2015-06-22",
                "valueQuantity": {
                    "value": 88,
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
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.63413.35257\">&lt;li>Pulse : 80&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.63413.35257"
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
                    "reference": "Patient/7568F2F3-FC76-4185-A540-1DB56331A387"
                },
                "effectiveDateTime": "2015-06-22",
                "valueQuantity": {
                    "value": 80,
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
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.63413.35258\">&lt;li>Pulse Ox (%) : 95&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.63413.35258"
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
                    "reference": "Patient/7568F2F3-FC76-4185-A540-1DB56331A387"
                },
                "effectiveDateTime": "2015-06-22",
                "valueQuantity": {
                    "value": 95,
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
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vital_Signs.63413.35260\">&lt;li>Respirations : 18&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vital_Signs.63413.35260"
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
                    "reference": "Patient/7568F2F3-FC76-4185-A540-1DB56331A387"
                },
                "effectiveDateTime": "2015-06-22",
                "valueQuantity": {
                    "value": 18,
                    "unit": "/min",
                    "system": "http://unitsofmeasure.org/"
                }
            }
        }
    ]
}

  end
end
