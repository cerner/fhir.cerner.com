module Cerner
  module Resources

    SOARIAN_DIAGNOSTIC_REPORT_BUNDLE ||= 
    {
    "resourceType": "Bundle",
    "id": "b295a021-37a3-4c56-87f8-10ba2415bba8",
    "meta": {
        "lastUpdated": "2018-04-10T09:45:51.632-04:00"
    },
    "type": "searchset",
    "link": [
        {
            "relation": "self",
            "url": "base-url/1671/DiagnosticReport?patientId=D4292B7B-AEDF-4CEF-B783-BD3AA1B0DD27&_format=json"
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
                    "div": "&lt;span ccdRefId=\"ZCCD-Results.Chemistry..625\">&lt;b>WBC &lt;/b>12.3 10*3/ul&lt;i> (N/A-500,000 10*3/ul)&lt;/i>&lt;/span>"
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
                    "div": "&lt;span ccdRefId=\"ZCCD-Results.Chemistry..626\">&lt;b>PLT &lt;/b>123 10*3/ul&lt;font color=\"#737373\">   (Reference Range: not available)&lt;/font>&lt;br/>&lt;/span>"
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
                    "div": "&lt;span ccdRefId=\"ZCCD-Results.Diag Image Rpt..13919\">&lt;b>Chest X-Ray 2 Views &lt;/b>Lungs are not clear. Other tests are required to confirm Anemia. &lt;font color=\"#737373\">   (Reference Range: not available)&lt;/font>&lt;br/>&lt;/span>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZCCD-Results.Diag Image Rpt..13919"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "36643-5"
                        }
                    ]
                },
                "subject": {
                    "reference": "Patient/7568F2F3-FC76-4185-A540-1DB56331A387"
                },
                "effectiveDateTime": "2015-06-22",
                "issued": "2015-06-22T14:00:00",
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
                    "div": "&lt;span ccdRefId=\"ZCCD-Results.Urinalysis.11290\">&lt;b>Color of Urine &lt;/b>Light Yellow &lt;i> (YELLOW )&lt;/i>&lt;/span>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZCCD-Results.Urinalysis.11290"
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
                "effectiveDateTime": "2017-02-01",
                "issued": "2017-02-01T13:45:00",
                "performer": {}
            }
        },
        {
            "resource": {
                "resourceType": "DiagnosticReport",
                "text": {
                    "status": "additional",
                    "div": "&lt;span ccdRefId=\"ZCCD-Results.Urinalysis.11291\">&lt;b>Color of Urine &lt;/b>Dark Yellow &lt;i> (YELLOW )&lt;/i>&lt;/span>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZCCD-Results.Urinalysis.11291"
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
                "effectiveDateTime": "2017-02-01",
                "issued": "2017-02-01T13:30:00",
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
