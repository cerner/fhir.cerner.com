module Cerner
  module Resources

    SOARIAN_OBSERVATION_BUNDLE ||= {
    "resourceType": "Bundle",
    "id": "44900955-4315-4c77-a85e-8a8800677d3f",
    "meta": {
        "lastUpdated": "2017-05-30T02:44:10.364-04:00"
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
                        "valueString": "Information provided is from 2017-05-01 through 2017-05-30 inclusive."
                    }
                ]
            }
        }
    ],
    "type": "searchset",
    "link": [
        {
            "relation": "self",
            "url": "base-url/bf615549-44cc-4899-bfa9-2cfd86bf358c/Observation?patientId=FCC941D7-60B9-491D-BEED-27629E47CD4E&_format=json"
        }
    ],
    "entry": [
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZSocial_History.Social_History.121415.91005.value.0\">&lt;li>Tobacco Use? : Light Tobacco Smoker&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZSocial_History.Social_History.121415.91005.value.0"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "72166-2",
                            "display": "A_Tobacco?"
                        }
                    ],
                    "text": "A_Tobacco?"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-05-23",
                "valueCodeableConcept": {
                    "coding": [
                        {
                            "system": "http://snomed.info/sct",
                            "code": "428061000124105",
                            "display": "Light Tobacco Smoker"
                        }
                    ],
                    "text": "Light Tobacco Smoker"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZSocial_History.Social_History.117449.86444.value.0\">&lt;li>Patient Birth Sex : Unknown&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZSocial_History.Social_History.117449.86444.value.0"
                    }
                ],
                "status": "final",
                "code": {
                    "coding": [
                        {
                            "system": "http://loinc.org",
                            "code": "76689-9",
                            "display": "Patient_BirthSex"
                        }
                    ],
                    "text": "Patient_BirthSex"
                },
                "subject": {
                    "reference": "Patient/FCC941D7-60B9-491D-BEED-27629E47CD4E"
                },
                "effectiveDateTime": "2017-04-21",
                "valueCodeableConcept": {
                    "coding": [
                        {
                            "system": "http://hl7.org/fhir/v3/NullFlavor",
                            "code": "UNK",
                            "display": "Unknown"
                        }
                    ],
                    "text": "Unknown"
                }
            }
        },
        {
            "resource": {
                "resourceType": "Observation",
                "text": {
                    "status": "additional",
                    "div": "&lt;ul ccdRefId=\"ZVitalSigns.Vitals.121415.91009\">&lt;li>A_Temperature : 97 F&lt;/li>&lt;/ul>"
                },
                "identifier": [
                    {
                        "use": "official",
                        "value": "ZVitalSigns.Vitals.121415.91009"
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
        }
    ]
}

  end
end
