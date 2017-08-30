module Cerner
  module Resources

    SOARIAN_CARE_PLAN_ENTRY ||= {
    "resourceType": "Bundle",
    "id": "cba85764-7528-410d-bf8a-809277dbf649",
    "meta": {
        "lastUpdated": "2017-03-10T14:22:59.287-05:00"
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
                        "valueString": "Information provided is from 2017-02-09 through 2017-03-10 inclusive."
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
            "url": "base-url/123abc/CarePlan?patientId=D4292B7B-AEDF-4CEF-B783-BD3AA1B0DD27&_format=json"
        }
    ],
    "entry": [
        {
            "resource": {
                "resourceType": "CarePlan",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\'Zcombined_NRS03.Assessments.95442.70425\'>&lt;li>MU3 Assessment123 : &lt;HTML>&lt;HEAD>&lt;style type=\'text/css\'>BODY,TD,TH,BUTTON,INPUT,SELECT,TEXTAREA{FONT-SIZE: 10pt; FONT-FAMILY: Arial,Helvetica; COLOR: black;} P,DIV,UL,OL,BLOCKQUOTE{MARGIN-BOTTOM: 0px; MARGIN-TOP: 0px;} BODY{MARGIN: 5px;} &lt;/style>&lt;/HEAD>&lt;BODY> &lt;p style=\'MARGIN-BOTTOM: 0px; margin-top: 0px\' align=\'left\'>&nbsp;&lt;/p>&lt;font style=\'FONT-SIZE: 11pt\'> &lt;p style=\'MARGIN-BOTTOM: 0px; MARGIN-TOP: 0px\'>i. The patient was found to have Anemia and Dr Seven and his staff diagnosed the condition and treated Ms Rebecca for Anemia during the 2 day stay at Community Health Hospitals. Ms Rebecca recovered from Anemia during the stay and is being discharged in a stable condition. If there is fever greater than 101.5 F or onset of chest pain/breathlessness the patient is advised to contact emergency. &lt;/p>&lt;/font>&lt;/BODY>&lt;/HTML>&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "Zcombined_NRS03.Assessments.95442.70425"
                    }
                ],
                "subject": {
                    "reference": "Patient/D4292B7B-AEDF-4CEF-B783-BD3AA1B0DD27"
                },
                "status": "active"
            }
        },
        {
            "resource": {
                "resourceType": "CarePlan",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\'Zcombined_NRS03.CLX-Goals.95442.70431.value.0\'>&lt;li>Goal : Decrease Sodium Intake&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "Zcombined_NRS03.CLX-Goals.95442.70431.value.0"
                    }
                ],
                "subject": {
                    "reference": "Patient/D4292B7B-AEDF-4CEF-B783-BD3AA1B0DD27"
                },
                "status": "active"
            }
        },
        {
            "resource": {
                "resourceType": "CarePlan",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\'Zcombined_NRS03.CLX-Goals.95442.70431.value.1\'>&lt;li>Goal : Maintain Active Lifestyle as Tolerated&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "Zcombined_NRS03.CLX-Goals.95442.70431.value.1"
                    }
                ],
                "subject": {
                    "reference": "Patient/D4292B7B-AEDF-4CEF-B783-BD3AA1B0DD27"
                },
                "status": "active"
            }
        },
        {
            "resource": {
                "resourceType": "CarePlan",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\'Zcombined_NRS03.CLX-Health_Concerns.95442.70432.value.0\'>&lt;li>Health Concern : Depression&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "Zcombined_NRS03.CLX-Health_Concerns.95442.70432.value.0"
                    }
                ],
                "subject": {
                    "reference": "Patient/D4292B7B-AEDF-4CEF-B783-BD3AA1B0DD27"
                },
                "status": "active"
            }
        },
        {
            "resource": {
                "resourceType": "CarePlan",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\'Zcombined_NRS03.CLX-Health_Concerns.95442.70432.value.1\'>&lt;li>Health Concern : Diet&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "Zcombined_NRS03.CLX-Health_Concerns.95442.70432.value.1"
                    }
                ],
                "subject": {
                    "reference": "Patient/D4292B7B-AEDF-4CEF-B783-BD3AA1B0DD27"
                },
                "status": "active"
            }
        },
        {
            "resource": {
                "resourceType": "CarePlan",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\'Zcombined_NRS03.CLX-Treatment_Plan.95442.70426\'>&lt;li>Treatment Plan : &lt;HTML>&lt;HEAD>&lt;style type=\'text/css\'>BODY,TD,TH,BUTTON,INPUT,SELECT,TEXTAREA{FONT-SIZE: 10pt; FONT-FAMILY: Arial,Helvetica; COLOR: black;} P,DIV,UL,OL,BLOCKQUOTE{MARGIN-BOTTOM: 0px; MARGIN-TOP: 0px;} BODY{MARGIN: 5px;} &lt;/style>&lt;/HEAD>&lt;BODY> &lt;p style=\'MARGIN-BOTTOM: 0px; margin-top: 0px\' align=\'left\'>&nbsp;&lt;/p>&lt;font style=\'FONT-SIZE: 11pt\'> &lt;p style=\'MARGIN-BOTTOM: 0px; MARGIN-TOP: 0px\'>i. Schedule an appointment with Dr Seven after 1 week for Follow up with Outpatient facility for Immunosuppressive therapy. &lt;/p>&lt;/font>&lt;/BODY>&lt;/HTML>&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "Zcombined_NRS03.CLX-Treatment_Plan.95442.70426"
                    }
                ],
                "subject": {
                    "reference": "Patient/D4292B7B-AEDF-4CEF-B783-BD3AA1B0DD27"
                },
                "status": "active"
            }
        }
    ]
}

  end
end
