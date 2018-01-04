module Cerner
  module Resources

    SOARIAN_DIAGNOSTIC_REPORT_BUNDLE ||= {
    "resourceType": "Bundle",
    "id": "a190218f-2855-45c1-9c74-a4a2a798273a",
    "meta": {
        "lastUpdated": "2017-02-28T11:59:39.646-05:00"
    },
    "extension": [
        {
            "url": "http://cerner.hs.fhir.com/StructureDefinition/bundle-result-messages",
            "valueExtension": {
                "url": "http://cerner.hs.fhir.com/StructureDefinition/bundle-result-messages",
                "extension": [
                    {
                        "url": "Severity",
                        "valueString": "info"
                    },
                    {
                        "url": "Code",
                        "valueString": "papi029"
                    },
                    {
                        "url": "Message",
                        "valueString": "Information provided is from 2015-06-01 through 2015-06-28 inclusive."
                    }
                ]
            }
        },
        {
            "url": "http://cerner.hs.fhir.com/StructureDefinition/bundle-result-messages",
            "valueExtension": {
                "url": "http://cerner.hs.fhir.com/StructureDefinition/bundle-result-messages",
                "extension": [
                    {
                        "url": "Severity",
                        "valueString": "info"
                    },
                    {
                        "url": "Code",
                        "valueString": "fsp001"
                    },
                    {
                        "url": "Message",
                        "valueString": "Date parameter values passed with request were: date=>=2015-06-01T11:55:00&date=&lt;2015-06-29T11:55:00"
                    }
                ]
            }
        }
    ],
    "type": "searchset",
    "link": [
        {
            "relation": "self",
            "url": "base-url/bf615549-44cc-4899-bfa9-2cfd86bf358c/DiagnosticReport?date=%3E%3D2015-06-01T11%3A55%3A00&date=%3C2015-06-29T11%3A55%3A00&_format=json&patientId=7568F2F3-FC76-4185-A540-1DB56331A387"
        }
    ],
    "entry": [
        {
            "resource": {
                "resourceType": "DiagnosticReport",
                "text": {
                    "status": "additional",
                    "div": "&lt;span ccdRefId=\"ZCCD-Results.Chemistry..624\">&lt;b>Hgb &lt;/b>10.2 g/dl&lt;font color=\"#737373\">   (Reference Range: not available)&lt;/font>&lt;br/>&lt;/span>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZCCD-Results.Chemistry..624"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "30313-1"
                        }
                    ]
                },
                "subject": {
                    "reference": "Patient/7568F2F3-FC76-4185-A540-1DB56331A387"
                },
                "effectiveDateTime": "2015-06-22",
                "issued": "2015-06-22T13:00:00",
                "performer": {}
            }
        },
        {
            "resource": {
                "resourceType": "DiagnosticReport",
                "text": {
                    "status": "additional",
                    "div": "&lt;span ccdRefId=\"ZCCD-Results.Chemistry..625\">&lt;b>WBC &lt;/b>12.3 (10*3/ul)&lt;i> (N/A-500,000 (10*3/ul))&lt;/i>&lt;/span>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZCCD-Results.Chemistry..625"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "33765-9"
                        }
                    ]
                },
                "subject": {
                    "reference": "Patient/7568F2F3-FC76-4185-A540-1DB56331A387"
                },
                "effectiveDateTime": "2015-06-22",
                "issued": "2015-06-22T13:00:00",
                "performer": {}
            }
        },
        {
            "resource": {
                "resourceType": "DiagnosticReport",
                "text": {
                    "status": "additional",
                    "div": "&lt;span ccdRefId=\"ZCCD-Results.Chemistry..626\">&lt;b>PLT &lt;/b>123 (10*3/ul)&lt;font color=\"#737373\">   (Reference Range: not available)&lt;/font>&lt;br/>&lt;/span>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZCCD-Results.Chemistry..626"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "26515-7"
                        }
                    ]
                },
                "subject": {
                    "reference": "Patient/7568F2F3-FC76-4185-A540-1DB56331A387"
                },
                "effectiveDateTime": "2015-06-22",
                "issued": "2015-06-22T13:00:00",
                "performer": {}
            }
        },
        {
            "resource": {
                "resourceType": "DiagnosticReport",
                "text": {
                    "status": "additional",
                    "div": "&lt;span ccdRefId=\"ZCCD-Results.Hematology..627\">&lt;b>Everolimus Blood &lt;/b>&lt;span style=\"color:red;\">10 ng/ml H&lt;/span>&lt;i> (2.0-8.0 ng/ml)&lt;/i>&lt;/span>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZCCD-Results.Hematology..627"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "50544-6"
                        }
                    ]
                },
                "subject": {
                    "reference": "Patient/7568F2F3-FC76-4185-A540-1DB56331A387"
                },
                "effectiveDateTime": "2015-06-22",
                "issued": "2015-06-22T13:00:00",
                "performer": {}
            }
        },
        {
            "resource": {
                "resourceType": "DiagnosticReport",
                "text": {
                    "status": "additional",
                    "div": "&lt;span ccdRefId=\"ZCCD-Results.LabTestPanel.9015\">&lt;b>Urinalysis macro (dipstick) panel &lt;/b>(Complete) &lt;font color=\"#737373\">   (Reference Range: not available)&lt;/font>&lt;br/>&lt;/span>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZCCD-Results.LabTestPanel.9015"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "24357-6"
                        }
                    ]
                },
                "subject": {
                    "reference": "Patient/7568F2F3-FC76-4185-A540-1DB56331A387"
                },
                "effectiveDateTime": "2015-06-22",
                "issued": "2015-06-22T13:00:00",
                "performer": {}
            }
        },
        {
            "resource": {
                "resourceType": "DiagnosticReport",
                "text": {
                    "status": "additional",
                    "div": "&lt;span ccdRefId=\"ZCCD-Results.LabTestPanel.9010\">&lt;b>CBC &lt;/b>(Complete) &lt;font color=\"#737373\">   (Reference Range: not available)&lt;/font>&lt;br/>&lt;/span>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZCCD-Results.LabTestPanel.9010"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "58410-2"
                        }
                    ]
                },
                "subject": {
                    "reference": "Patient/7568F2F3-FC76-4185-A540-1DB56331A387"
                },
                "effectiveDateTime": "2015-06-22",
                "issued": "2015-06-22T13:00:00",
                "performer": {}
            }
        },
        {
            "resource": {
                "resourceType": "DiagnosticReport",
                "text": {
                    "status": "additional",
                    "div": "&lt;span ccdRefId=\"ZCCD-Results.Urinalysis.824\">&lt;b>Color of Urine &lt;/b>YELLOW &lt;i> (YELLOW )&lt;/i>&lt;/span>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZCCD-Results.Urinalysis.824"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "5778-6"
                        }
                    ]
                },
                "subject": {
                    "reference": "Patient/7568F2F3-FC76-4185-A540-1DB56331A387"
                },
                "effectiveDateTime": "2015-06-22",
                "issued": "2015-06-22T13:00:00",
                "performer": {}
            }
        },
        {
            "resource": {
                "resourceType": "DiagnosticReport",
                "text": {
                    "status": "additional",
                    "div": "&lt;span ccdRefId=\"ZCCD-Results.Urinalysis.825\">&lt;b>Appearance of Urine &lt;/b>CLEAR &lt;i> (CLEAR )&lt;/i>&lt;/span>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZCCD-Results.Urinalysis.825"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "5767-9"
                        }
                    ]
                },
                "subject": {
                    "reference": "Patient/7568F2F3-FC76-4185-A540-1DB56331A387"
                },
                "effectiveDateTime": "2015-06-22",
                "issued": "2015-06-22T13:00:00",
                "performer": {}
            }
        },
        {
            "resource": {
                "resourceType": "DiagnosticReport",
                "text": {
                    "status": "additional",
                    "div": "&lt;span ccdRefId=\"ZCCD-Results.Urinalysis.826\">&lt;b>Specific Gravity of Urine by Test Strip &lt;/b>1.015 &lt;i> (1.005-1.030 )&lt;/i>&lt;/span>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZCCD-Results.Urinalysis.826"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "5811-5"
                        }
                    ]
                },
                "subject": {
                    "reference": "Patient/7568F2F3-FC76-4185-A540-1DB56331A387"
                },
                "effectiveDateTime": "2015-06-22",
                "issued": "2015-06-22T13:00:00",
                "performer": {}
            }
        },
        {
            "resource": {
                "resourceType": "DiagnosticReport",
                "text": {
                    "status": "additional",
                    "div": "&lt;span ccdRefId=\"ZCCD-Results.Urinalysis.827\">&lt;b>pH of Urine by Test strip &lt;/b>5.0 [pH]&lt;i> (5.0-8.0 [pH])&lt;/i>&lt;/span>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZCCD-Results.Urinalysis.827"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "5803-2"
                        }
                    ]
                },
                "subject": {
                    "reference": "Patient/7568F2F3-FC76-4185-A540-1DB56331A387"
                },
                "effectiveDateTime": "2015-06-22",
                "issued": "2015-06-22T13:00:00",
                "performer": {}
            }
        },
        {
            "resource": {
                "resourceType": "DiagnosticReport",
                "text": {
                    "status": "additional",
                    "div": "&lt;span ccdRefId=\"ZCCD-Results.Urinalysis.828\">&lt;b>Glucose [Mass/Urine] in urine by test strip &lt;/b>50 mg/dl&lt;i> (Neg mg/dl)&lt;/i>&lt;/span>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZCCD-Results.Urinalysis.828"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "5792-7"
                        }
                    ]
                },
                "subject": {
                    "reference": "Patient/7568F2F3-FC76-4185-A540-1DB56331A387"
                },
                "effectiveDateTime": "2015-06-22",
                "issued": "2015-06-22T13:00:00",
                "performer": {}
            }
        },
        {
            "resource": {
                "resourceType": "DiagnosticReport",
                "text": {
                    "status": "additional",
                    "div": "&lt;span ccdRefId=\"ZCCD-Results.Urinalysis.829\">&lt;b>Ketones [Mass/Urine] in urine by test strip &lt;/b>Negative &lt;i> (Negative )&lt;/i>&lt;/span>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZCCD-Results.Urinalysis.829"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "5797-6"
                        }
                    ]
                },
                "subject": {
                    "reference": "Patient/7568F2F3-FC76-4185-A540-1DB56331A387"
                },
                "effectiveDateTime": "2015-06-22",
                "issued": "2015-06-22T13:00:00",
                "performer": {}
            }
        },
        {
            "resource": {
                "resourceType": "DiagnosticReport",
                "text": {
                    "status": "additional",
                    "div": "&lt;span ccdRefId=\"ZCCD-Results.Urinalysis.830\">&lt;b>Protein [Mass/Urine] in urine by test strip &lt;/b>100 mg/dl&lt;i> (negative mg/dl)&lt;/i>&lt;/span>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZCCD-Results.Urinalysis.830"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "5804-0"
                        }
                    ]
                },
                "subject": {
                    "reference": "Patient/7568F2F3-FC76-4185-A540-1DB56331A387"
                },
                "effectiveDateTime": "2015-06-22",
                "issued": "2015-06-22T13:00:00",
                "performer": {}
            }
        }
    ]
}
  end
end
