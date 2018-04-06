module Cerner
  module Resources

    SOARIAN_CARE_PLAN_ENTRY ||= {
   
    "resourceType": "Bundle",
    "id": "8565fab7-73bc-4c41-900a-cee67fba9acb",
    "meta": {
        "lastUpdated": "2018-01-17T01:41:34.195-05:00"
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
                        "valueString": "papi026"
                    },
                    {
                        "url": "Message",
                        "valueString": "The information provided is the latest configured data available at the time of charting and may not be reflective of the current clinical state of the care plan. It is the responsibility of the patient or patient representative to confirm care plan status with appropriate care providers."
                    }
                ]
            }
        }
    ],
    "type": "searchset",
    "link": [
        {
            "relation": "self",
            "url": "base-url/dstu2/1494/CarePlan?patientId=FCC941D7-60B9-491D-BEED-27629E47CD4E&_format=json"
        }
    ],
    "entry": [
        {
            "resource": {
                "resourceType": "CarePlan",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"Zcombined_NRS03.Assessment_and_Plan.145411.116004\">&lt;li>Psy sub3 : IP&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "Zcombined_NRS03.Assessment_and_Plan.145411.116004"
                    }
                ],
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "status": "active"
            }
        },
        {
            "resource": {
                "resourceType": "CarePlan",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"Zcombined_NRS03.Assessment_and_Plan.140416.111204\">&lt;li>Psy sub3 : IP&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "Zcombined_NRS03.Assessment_and_Plan.140416.111204"
                    }
                ],
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "status": "active"
            }
        },
        {
            "resource": {
                "resourceType": "CarePlan",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"Zcombined_NRS03.Assessment_and_Plan.119446.88405\">&lt;li>Psy sub3 : IP&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "Zcombined_NRS03.Assessment_and_Plan.119446.88405"
                    }
                ],
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "status": "active"
            }
        },
        {
            "resource": {
                "resourceType": "CarePlan",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"Zcombined_NRS03.Assessment_and_Plan.119445.88399\">&lt;li>Psy sub3 : IP&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "Zcombined_NRS03.Assessment_and_Plan.119445.88399"
                    }
                ],
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "status": "active"
            }
        },
        {
            "resource": {
                "resourceType": "CarePlan",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"Zcombined_NRS03.Assessment_and_Plan.119444.88391\">&lt;li>Psy sub3 : IP&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "Zcombined_NRS03.Assessment_and_Plan.119444.88391"
                    }
                ],
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "status": "active"
            }
        },
        {
            "resource": {
                "resourceType": "CarePlan",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"Zcombined_NRS03.Assessments_-_MU3.117449.86444.value.0\">&lt;li>Patient Birth Sex : Unknown&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "Zcombined_NRS03.Assessments_-_MU3.117449.86444.value.0"
                    }
                ],
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "status": "active"
            }
        },
        {
            "resource": {
                "resourceType": "CarePlan",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"Zcombined_NRS03.Assessments_-_MU3.117448.86434.value.0\">&lt;li>Patient Birth Sex : Male&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "Zcombined_NRS03.Assessments_-_MU3.117448.86434.value.0"
                    }
                ],
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "status": "active"
            }
        },
        {
            "resource": {
                "resourceType": "CarePlan",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"Zcombined_NRS03.Assessments_-_MU3.117447.86424.value.0\">&lt;li>Patient Birth Sex : Female&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "Zcombined_NRS03.Assessments_-_MU3.117447.86424.value.0"
                    }
                ],
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "status": "active"
            }
        },
        {
            "resource": {
                "resourceType": "CarePlan",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"Zcombined_NRS03.Assessments_-_MU3.117413.86025.value.0\">&lt;li>Patient Birth Sex : Unknown&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "Zcombined_NRS03.Assessments_-_MU3.117413.86025.value.0"
                    }
                ],
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "status": "active"
            }
        },
        {
            "resource": {
                "resourceType": "CarePlan",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"Zcombined_NRS03.Assessments_-_MU3.116445.85181.value.0\">&lt;li>Patient Birth Sex : Male&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "Zcombined_NRS03.Assessments_-_MU3.116445.85181.value.0"
                    }
                ],
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "status": "active"
            }
        },
        {
            "resource": {
                "resourceType": "CarePlan",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"Zcombined_NRS03.Assessment.50412.17012.value.0\">&lt;li>Discharge Diagnosis : Stroke&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "Zcombined_NRS03.Assessment.50412.17012.value.0"
                    }
                ],
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "status": "active"
            }
        },
        {
            "resource": {
                "resourceType": "CarePlan",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"Zcombined_NRS03.Assessment.50416.17201.value.0\">&lt;li>Discharge Diagnosis : Stroke&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "Zcombined_NRS03.Assessment.50416.17201.value.0"
                    }
                ],
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "status": "active"
            }
        },
        {
            "resource": {
                "resourceType": "CarePlan",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"Zcombined_NRS03.Assessment.44422.11056.value.0\">&lt;li>Discharge Diagnosis : CHF&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "Zcombined_NRS03.Assessment.44422.11056.value.0"
                    }
                ],
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "status": "active"
            }
        },
        {
            "resource": {
                "resourceType": "CarePlan",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"Zcombined_NRS03.Assessment.44411.11010\">&lt;li>Diagnosis : Congestive Heart Failure&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "Zcombined_NRS03.Assessment.44411.11010"
                    }
                ],
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "status": "active"
            }
        }
    ]
}


  end
end
