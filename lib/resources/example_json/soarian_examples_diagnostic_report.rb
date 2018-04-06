module Cerner
  module Resources

    SOARIAN_DIAGNOSTIC_REPORT_BUNDLE ||= {
 
    "resourceType": "Bundle",
    "id": "3e5da58a-ae39-4a19-8350-3f702f974bf4",
    "meta": {
        "lastUpdated": "2018-01-17T04:16:12.769-05:00"
    },
    "type": "searchset",
    "link": [
        {
            "relation": "self",
            "url": "base-url/dstu2/1494/DiagnosticReport?patientId=FCC941D7-60B9-491D-BEED-27629E47CD4E&_format=json"
        }
    ],
    "entry": [
        {
            "resource": {
                "resourceType": "DiagnosticReport",
                "text": {
                    "status": "additional",
                    "div": "<span ccdRefId=\"ZCCD-Results.Coagulation.7011\"><b>Model_Coagulation_Service </b><span style=\"color:red;\">200000 (g/g)/s A</span><font color=\"#737373\">   (Reference Range: not available)</font><br/></span>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZCCD-Results.Coagulation.7011"
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
                "effectiveDateTime": "2015-10-27",
                "issued": "2015-10-27T16:09:00",
                "performer": {}
            }
        },
        {
            "resource": {
                "resourceType": "DiagnosticReport",
                "text": {
                    "status": "additional",
                    "div": "<span ccdRefId=\"ZCCD-Results.Coagulation.7008\"><b>Model_Coagulation_Service </b><span style=\"color:red;\">100 (g/g)/s A</span><font color=\"#737373\">   (Reference Range: not available)</font><br/></span>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZCCD-Results.Coagulation.7008"
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
                "effectiveDateTime": "2015-10-27",
                "issued": "2015-10-27T16:06:00",
                "performer": {}
            }
        },
        {
            "resource": {
                "resourceType": "DiagnosticReport",
                "text": {
                    "status": "additional",
                    "div": "<span ccdRefId=\"ZCCD-Results.DX Radiology.4001\"><b>Model_DX_Radiology_Service </b>PA and lateral views of chest reveals no evidence of active pleural or pulmonary <font color=\"#737373\">   (Reference Range: not available)</font><br/></span>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZCCD-Results.DX Radiology.4001"
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
                "effectiveDateTime": "2015-09-02",
                "issued": "2015-09-02T10:56:00",
                "performer": {}
            }
        },
        {
            "resource": {
                "resourceType": "DiagnosticReport",
                "text": {
                    "status": "additional",
                    "div": "<span ccdRefId=\"ZCCD-Results.Hematology.14003\"><b>WBC </b><span style=\"color:red;\">aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaa  A</span><i> (4500 )</i></span>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZCCD-Results.Hematology.14003"
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
                "effectiveDateTime": "2016-01-08",
                "issued": "2016-01-08T12:07:00",
                "performer": {}
            }
        },
        {
            "resource": {
                "resourceType": "DiagnosticReport",
                "text": {
                    "status": "additional",
                    "div": "<span ccdRefId=\"ZCCD-Results.Hematology.14001\"><b>RBC </b>30 %<i> (20-35 %)</i></span>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZCCD-Results.Hematology.14001"
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
                "effectiveDateTime": "2016-01-06",
                "issued": "2016-01-06T15:03:00",
                "performer": {}
            }
        },
        {
            "resource": {
                "resourceType": "DiagnosticReport",
                "text": {
                    "status": "additional",
                    "div": "<span ccdRefId=\"ZCCD-Results.Hematology.4004\"><b>WBC </b>5000 {cm5}<font color=\"#737373\">   (Reference Range: not available)</font><br/></span>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZCCD-Results.Hematology.4004"
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
                "effectiveDateTime": "2015-09-02",
                "issued": "2015-09-02T15:29:00",
                "performer": {}
            }
        },
        {
            "resource": {
                "resourceType": "DiagnosticReport",
                "text": {
                    "status": "additional",
                    "div": "<span ccdRefId=\"ZCCD-Results.Hematology.4010\"><b>RBC </b>5.0 m<font color=\"#737373\">   (Reference Range: not available)</font><br/></span>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZCCD-Results.Hematology.4010"
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
                "effectiveDateTime": "2015-09-02",
                "issued": "2015-09-02T15:29:00",
                "performer": {}
            }
        },
        {
            "resource": {
                "resourceType": "DiagnosticReport",
                "text": {
                    "status": "additional",
                    "div": "<span ccdRefId=\"ZCCD-Results.Hematology.4006\"><b>Band </b>4 %<font color=\"#737373\">   (Reference Range: not available)</font><br/></span>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZCCD-Results.Hematology.4006"
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
                "effectiveDateTime": "2015-09-02",
                "issued": "2015-09-02T15:29:00",
                "performer": {}
            }
        },
        {
            "resource": {
                "resourceType": "DiagnosticReport",
                "text": {
                    "status": "additional",
                    "div": "<span ccdRefId=\"ZCCD-Results.Hematology.4007\"><b>Monocytes </b><span style=\"color:red;\">9 % H</span><font color=\"#737373\">   (Reference Range: not available)</font><br/></span>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZCCD-Results.Hematology.4007"
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
                "effectiveDateTime": "2015-09-02",
                "issued": "2015-09-02T15:29:00",
                "performer": {}
            }
        },
        {
            "resource": {
                "resourceType": "DiagnosticReport",
                "text": {
                    "status": "additional",
                    "div": "<span ccdRefId=\"ZCCD-Results.Hematology.4008\"><b>Eosinophils </b>2 %<font color=\"#737373\">   (Reference Range: not available)</font><br/></span>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZCCD-Results.Hematology.4008"
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
                "effectiveDateTime": "2015-09-02",
                "issued": "2015-09-02T15:29:00",
                "performer": {}
            }
        },
        {
            "resource": {
                "resourceType": "DiagnosticReport",
                "text": {
                    "status": "additional",
                    "div": "<span ccdRefId=\"ZCCD-Results.Hematology.4009\"><b>Basophils </b>0.5 %<font color=\"#737373\">   (Reference Range: not available)</font><br/></span>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZCCD-Results.Hematology.4009"
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
                "effectiveDateTime": "2015-09-02",
                "issued": "2015-09-02T15:29:00",
                "performer": {}
            }
        },
        {
            "resource": {
                "resourceType": "DiagnosticReport",
                "text": {
                    "status": "additional",
                    "div": "<span ccdRefId=\"ZCCD-Results.Histology.7010\"><b>Model_Histology_Service </b><span style=\"color:red;\">10000 (g/g)/s A</span><font color=\"#737373\">   (Reference Range: not available)</font><br/></span>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZCCD-Results.Histology.7010"
                    }
                ],
                "status": "corrected",
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
                "effectiveDateTime": "2015-10-27",
                "issued": "2015-10-27T16:08:00",
                "performer": {}
            }
        },
        {
            "resource": {
                "resourceType": "DiagnosticReport",
                "text": {
                    "status": "additional",
                    "div": "<span ccdRefId=\"ZCCD-Results.Urinalysis.7007\"><b>Model_Urinalysis_Service </b><span style=\"color:red;\">test % A</span><font color=\"#737373\">   (Reference Range: not available)</font><br/></span>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZCCD-Results.Urinalysis.7007"
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
                "effectiveDateTime": "2015-10-27",
                "issued": "2015-10-27T15:53:00",
                "performer": {}
            }
        }
    ]
}

  end
end
