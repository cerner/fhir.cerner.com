module Cerner
  module Resources

    SOARIAN_PROCEDURE_ENTRY ||= {
    "resourceType": "Bundle",
    "id": "d8c30ba8-9285-49b8-8994-e3738e8e2821",
    "meta": {
        "lastUpdated": "2017-03-01T11:41:31.719-05:00"
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
                        "valueString": "papi011"
                    },
                    {
                        "url": "Message",
                        "valueString": "This section represents data charted for a single or set of encounter’s procedures performed. It does not represent a comprehensive procedure list."
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
                        "valueString": "Date parameter values passed with request were: date=>=2015-06-01T11:18:00&date=&lt;2015-06-29T11:18:00"
                    }
                ]
            }
        }
    ],
    "type": "searchset",
    "link": [
        {
            "relation": "self",
            "url": "base-url/123abc/Procedure?date=%3E%3D2015-06-01T11%3A18%3A00&date=%3C2015-06-29T11%3A18%3A00&_format=json&patientId=7568F2F3-FC76-4185-A540-1DB56331A387"
        }
    ],
    "entry": [
        {
            "resource": {
                "resourceType": "Procedure",
                "text": {
                    "status": "additional",
                    "div": "&lt;li ccdRefId=\'ZCCDProcedureList.CCDProcedureList.1503\'>Completed Bronchoscopy, on 6/22/2015 12:00 AM&lt;/li>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZCCDProcedureList.CCDProcedureList.1503"
                    }
                ],
                "subject": {
                    "reference": "Patient/7568F2F3-FC76-4185-A540-1DB56331A387"
                },
                "status": "completed",
                "code": {
                    "coding": [
                        {
                            "system": "http://snomed.info",
                            "code": "10847001",
                            "display": "Bronchoscopy"
                        }
                    ],
                    "text": "Bronchoscopy"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Procedure",
                "text": {
                    "status": "additional",
                    "div": "&lt;li ccdRefId=\'ZCCDProcedureList.CCDProcedureList.3001\'>Completed Chest X-Ray, PA and Lateral View, on 6/22/2015 12:00 AM&lt;/li>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZCCDProcedureList.CCDProcedureList.3001"
                    }
                ],
                "subject": {
                    "reference": "Patient/7568F2F3-FC76-4185-A540-1DB56331A387"
                },
                "status": "completed",
                "code": {
                    "coding": [
                        {
                            "system": "http://snomed.info",
                            "code": "168731009",
                            "display": "Chest X-Ray, PA and Lateral View"
                        }
                    ],
                    "text": "Chest X-Ray, PA and Lateral View"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Procedure",
                "text": {
                    "status": "additional",
                    "div": "&lt;li ccdRefId=\'ZCCDProcedureList.CCDProcedureList.1505\'>Completed Introduction of Cardiac Pacemaker System via Vein, on 10/5/2011 12:00 AM&lt;/li>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZCCDProcedureList.CCDProcedureList.1505"
                    }
                ],
                "subject": {
                    "reference": "Patient/7568F2F3-FC76-4185-A540-1DB56331A387"
                },
                "status": "completed",
                "code": {
                    "coding": [
                        {
                            "system": "http://snomed.info",
                            "code": "175135009",
                            "display": "Introduction of Cardiac Pacemaker System via Vein"
                        }
                    ],
                    "text": "Introduction of Cardiac Pacemaker System via Vein"
                }
            }
        }
    ]
}

  end
end
