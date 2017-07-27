module Cerner
  module Resources

    DSTU2_OBSERVATION_BUNDLE ||=
      {
        "resourceType": "Bundle",
        "id": "41ac49a5-cfc1-4342-929f-2a1cad724d8a",
        "type": "searchset",
        "link": [{
          "relation": "self",
          "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation?patient=3998008&amp;_count=50"
        }],
        "entry": [{
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/93-5525867",
          "resource": {
            "resourceType": "Observation",
            "id": "93-5525867",
            "meta": {
              "versionId": "1252402",
              "lastUpdated": "2016-01-26T21:58:41.000Z"
            },
            "status": "final",
            "category": {
              "coding": [{
                "system": "http://hl7.org/fhir/observation-category",
                "code": "social-history",
                "display": "Social History"
              }],
              "text": "Social History"
            },
            "code": {
              "coding": [{
                "system": "http://snomed.info/sct",
                "code": "229819007",
                "display": "Tobacco use and exposure (observable entity)"
              }, {
                "system": "http://loinc.org",
                "code": "72166-2",
                "display": "Tobacco smoking status NHIS"
              }],
              "text": "Tobacco"
            },
            "subject": {
              "reference": "Patient/3998008"
            },
            "valueCodeableConcept": {
              "text": "Medium Risk"
            },
            "related": [{
              "type": "has-member",
              "target": {
                "reference": "Observation/5525867-q6930400"
              }
            }, {
              "type": "has-member",
              "target": {
                "reference": "Observation/5525867-q6930404-0"
              }
            }, {
              "type": "has-member",
              "target": {
                "reference": "Observation/5525867-q6930404-1"
              }
            }, {
              "type": "has-member",
              "target": {
                "reference": "Observation/5525867-q6930316"
              }
            }, {
              "type": "has-member",
              "target": {
                "reference": "Observation/5525867-q6930360"
              }
            }, {
              "type": "has-member",
              "target": {
                "reference": "Observation/5525867-q6930372"
              }
            }, {
              "type": "has-member",
              "target": {
                "reference": "Observation/5525867-q6930368"
              }
            }, {
              "type": "has-member",
              "target": {
                "reference": "Observation/5525867-q6930376"
              }
            }]
          }
        }, {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/5525867-q6930400",
          "resource": {
            "resourceType": "Observation",
            "id": "5525867-q6930400",
            "meta": {
              "versionId": "1252402",
              "lastUpdated": "2016-01-26T21:58:41.000Z"
            },
            "status": "final",
            "category": {
              "coding": [{
                "system": "http://hl7.org/fhir/observation-category",
                "code": "social-history",
                "display": "Social History"
              }],
              "text": "Social History"
            },
            "code": {
              "coding": [{
                "system": "http://loinc.org",
                "code": "72166-2"
              }],
              "text": "SHX Tobacco use"
            },
            "subject": {
              "reference": "Patient/3998008"
            },
            "issued": "2016-01-26T21:58:41.000Z",
            "valueCodeableConcept": {
              "coding": [{
                "system": "http://snomed.info/sct",
                "code": "428041000124106",
                "display": "Occasional tobacco smoker (finding)"
              }],
              "text": "Current some day smoker"
            }
          }
        }, {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/5525867-q6930404-0",
          "resource": {
            "resourceType": "Observation",
            "id": "5525867-q6930404-0",
            "meta": {
              "versionId": "1252402",
              "lastUpdated": "2016-01-26T21:58:41.000Z"
            },
            "status": "final",
            "category": {
              "coding": [{
                "system": "http://hl7.org/fhir/observation-category",
                "code": "social-history",
                "display": "Social History"
              }],
              "text": "Social History"
            },
            "code": {
              "text": "SHX Tobacco type"
            },
            "subject": {
              "reference": "Patient/3998008"
            },
            "issued": "2016-01-26T21:58:41.000Z",
            "valueCodeableConcept": {
              "text": "Cigarettes"
            }
          }
        }, {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/5525867-q6930404-1",
          "resource": {
            "resourceType": "Observation",
            "id": "5525867-q6930404-1",
            "meta": {
              "versionId": "1252402",
              "lastUpdated": "2016-01-26T21:58:41.000Z"
            },
            "status": "final",
            "category": {
              "coding": [{
                "system": "http://hl7.org/fhir/observation-category",
                "code": "social-history",
                "display": "Social History"
              }],
              "text": "Social History"
            },
            "code": {
              "text": "SHX Tobacco type"
            },
            "subject": {
              "reference": "Patient/3998008"
            },
            "issued": "2016-01-26T21:58:41.000Z",
            "valueCodeableConcept": {
              "text": "Chewing tobacco"
            }
          }
        }, {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/5525867-q6930316",
          "resource": {
            "resourceType": "Observation",
            "id": "5525867-q6930316",
            "meta": {
              "versionId": "1252402",
              "lastUpdated": "2016-01-26T21:58:41.000Z"
            },
            "status": "final",
            "category": {
              "coding": [{
                "system": "http://hl7.org/fhir/observation-category",
                "code": "social-history",
                "display": "Social History"
              }],
              "text": "Social History"
            },
            "code": {
              "text": "SHX Tobacco number of years"
            },
            "subject": {
              "reference": "Patient/3998008"
            },
            "issued": "2016-01-26T21:58:41.000Z",
            "valueString": "10"
          }
        }, {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/5525867-q6930360",
          "resource": {
            "resourceType": "Observation",
            "id": "5525867-q6930360",
            "meta": {
              "versionId": "1252402",
              "lastUpdated": "2016-01-26T21:58:41.000Z"
            },
            "status": "final",
            "category": {
              "coding": [{
                "system": "http://hl7.org/fhir/observation-category",
                "code": "social-history",
                "display": "Social History"
              }],
              "text": "Social History"
            },
            "code": {
              "text": "SHX Tobacco started at age"
            },
            "subject": {
              "reference": "Patient/3998008"
            },
            "issued": "2016-01-26T21:58:41.000Z",
            "valueString": "22 Years"
          }
        }, {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/5525867-q6930372",
          "resource": {
            "resourceType": "Observation",
            "id": "5525867-q6930372",
            "meta": {
              "versionId": "1252402",
              "lastUpdated": "2016-01-26T21:58:41.000Z"
            },
            "status": "final",
            "category": {
              "coding": [{
                "system": "http://hl7.org/fhir/observation-category",
                "code": "social-history",
                "display": "Social History"
              }],
              "text": "Social History"
            },
            "code": {
              "text": "SHX Tobacco readiness to change"
            },
            "subject": {
              "reference": "Patient/3998008"
            },
            "issued": "2016-01-26T21:58:41.000Z",
            "valueCodeableConcept": {
              "coding": [{
                "system": "http://snomed.info/sct",
                "code": "373067005",
                "display": "No (qualifier value)"
              }],
              "text": "No"
            }
          }
        }, {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/5525867-q6930368",
          "resource": {
            "resourceType": "Observation",
            "id": "5525867-q6930368",
            "meta": {
              "versionId": "1252402",
              "lastUpdated": "2016-01-26T21:58:41.000Z"
            },
            "status": "final",
            "category": {
              "coding": [{
                "system": "http://hl7.org/fhir/observation-category",
                "code": "social-history",
                "display": "Social History"
              }],
              "text": "Social History"
            },
            "code": {
              "text": "SHX Tobacco previous treatment"
            },
            "subject": {
              "reference": "Patient/3998008"
            },
            "issued": "2016-01-26T21:58:41.000Z",
            "valueCodeableConcept": {
              "coding": [{
                "system": "http://snomed.info/sct",
                "code": "260413007",
                "display": "None (qualifier value)"
              }],
              "text": "None"
            }
          }
        }, {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/5525867-q6930376",
          "resource": {
            "resourceType": "Observation",
            "id": "5525867-q6930376",
            "meta": {
              "versionId": "1252402",
              "lastUpdated": "2016-01-26T21:58:41.000Z"
            },
            "status": "final",
            "category": {
              "coding": [{
                "system": "http://hl7.org/fhir/observation-category",
                "code": "social-history",
                "display": "Social History"
              }],
              "text": "Social History"
            },
            "code": {
              "text": "SHX Tobacco household concerns"
            },
            "subject": {
              "reference": "Patient/3998008"
            },
            "issued": "2016-01-26T21:58:41.000Z",
            "valueCodeableConcept": {
              "coding": [{
                "system": "http://snomed.info/sct",
                "code": "373066001",
                "display": "Yes (qualifier value)"
              }],
              "text": "Yes"
            }
          }
        }, {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/93-5525861",
          "resource": {
            "resourceType": "Observation",
            "id": "93-5525861",
            "meta": {
              "versionId": "5525861",
              "lastUpdated": "2016-01-26T21:58:41.000Z"
            },
            "status": "final",
            "category": {
              "coding": [{
                "system": "http://hl7.org/fhir/observation-category",
                "code": "social-history",
                "display": "Social History"
              }],
              "text": "Social History"
            },
            "code": {
              "coding": [{
                "system": "http://snomed.info/sct",
                "code": "229819007",
                "display": "Tobacco use and exposure (observable entity)"
              }, {
                "system": "http://loinc.org",
                "code": "72166-2",
                "display": "Tobacco smoking status NHIS"
              }],
              "text": "Tobacco"
            },
            "subject": {
              "reference": "Patient/3998008"
            },
            "valueCodeableConcept": {
              "text": "Medium Risk"
            }
          }
        }, {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/BP-5851294-5851296",
          "resource": {
            "resourceType": "Observation",
            "id": "BP-5851294-5851296",
            "meta": {
              "versionId": "1-5851293-1-5851295",
              "lastUpdated": "2016-01-26T20:03:52.000Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div>&lt;p>&lt;b>Observation&lt;/b>&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: 3998008&lt;/p>&lt;p>&lt;b>Status&lt;/b>: final&lt;/p>&lt;p>&lt;b>Category&lt;/b>: Vital Signs&lt;/p>&lt;p>&lt;b>Code&lt;/b>: Systolic Blood Pressure: Systolic Blood Pressure Diastolic Blood Pressure: Diastolic Blood Pressure&lt;/p>&lt;p>&lt;b>Result&lt;/b>: Systolic Blood Pressure: 125 mmHg Diastolic Blood Pressure: 117 mmHg&lt;/p>&lt;p>&lt;b>Risk Level&lt;/b>: &amp;gt;HHI&lt;/p>&lt;p>&lt;b>Date&lt;/b>: 2016-01-26T20:01:00.000Z&lt;/p>&lt;p>&lt;b>Risk Level Detail&lt;/b>: Systolic Blood Pressure: Low: 80 mmHg High: 120 mmHg Diastolic Blood Pressure: Low: 70 mmHg High: 80 mmHg&lt;/p>&lt;/div>"
            },
            "status": "final",
            "category": {
              "coding": [{
                "system": "http://hl7.org/fhir/observation-category",
                "code": "vital-signs",
                "display": "Vital Signs"
              }],
              "text": "Vital Signs"
            },
            "code": {
              "coding": [{
                "system": "http://snomed.info/sct",
                "code": "75367002",
                "display": "Blood pressure (observable entity)"
              }, {
                "system": "http://loinc.org",
                "code": "55284-4",
                "display": "Blood pressure systolic and diastolic"
              }],
              "text": "Blood pressure"
            },
            "subject": {
              "reference": "Patient/3998008"
            },
            "encounter": {
              "reference": "Encounter/3651924"
            },
            "effectiveDateTime": "2016-01-26T20:01:00.000Z",
            "issued": "2016-01-26T20:01:08.000Z",
            "interpretation": {
              "coding": [{
                "system": "http://hl7.org/fhir/v2/0078",
                "code": ">",
                "display": "Off scale high"
              }],
              "text": ">HHI"
            },
            "component": [{
              "code": {
                "coding": [{
                  "system": "http://loinc.org",
                  "code": "8480-6",
                  "display": "INTRAVASCULAR SYSTOLIC:PRES:PT:ARTERIAL SYSTEM:QN:"
                }, {
                  "system": "http://loinc.org",
                  "code": "8480-6",
                  "display": "Systolic blood pressure"
                }],
                "text": "Systolic Blood Pressure"
              },
              "valueQuantity": {
                "value": 125,
                "unit": "mmHg",
                "system": "http://unitsofmeasure.org",
                "code": "mm[Hg]"
              },
              "referenceRange": [{
                "low": {
                  "value": 80,
                  "unit": "mmHg",
                  "system": "http://unitsofmeasure.org",
                  "code": "mm[Hg]"
                },
                "high": {
                  "value": 120,
                  "unit": "mmHg",
                  "system": "http://unitsofmeasure.org",
                  "code": "mm[Hg]"
                }
              }]
            }, {
              "code": {
                "coding": [{
                  "system": "http://loinc.org",
                  "code": "8462-4",
                  "display": "INTRAVASCULAR DIASTOLIC:PRES:PT:ARTERIAL SYSTEM:QN:"
                }, {
                  "system": "http://loinc.org",
                  "code": "8462-4",
                  "display": "Diastolic blood pressure"
                }],
                "text": "Diastolic Blood Pressure"
              },
              "valueQuantity": {
                "value": 117,
                "unit": "mmHg",
                "system": "http://unitsofmeasure.org",
                "code": "mm[Hg]"
              },
              "referenceRange": [{
                "low": {
                  "value": 70,
                  "unit": "mmHg",
                  "system": "http://unitsofmeasure.org",
                  "code": "mm[Hg]"
                },
                "high": {
                  "value": 80,
                  "unit": "mmHg",
                  "system": "http://unitsofmeasure.org",
                  "code": "mm[Hg]"
                }
              }]
            }]
          }
        }, {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation/M5851276",
          "resource": {
            "resourceType": "Observation",
            "id": "M5851276",
            "meta": {
              "versionId": "1-5851275",
              "lastUpdated": "2016-01-26T19:54:14.000Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div>&lt;p>&lt;b>Observation&lt;/b>&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: 3998008&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Auth (Verified)&lt;/p>&lt;p>&lt;b>Category&lt;/b>: Laboratory&lt;/p>&lt;p>&lt;b>Code&lt;/b>: RBC&lt;/p>&lt;p>&lt;b>Result&lt;/b>: 5 x10(3)/mcL&lt;/p>&lt;p>&lt;b>Risk Level&lt;/b>: Normal&lt;/p>&lt;p>&lt;b>Date&lt;/b>: 2016-01-26T19:41:00.000Z&lt;/p>&lt;p>&lt;b>Risk Level Detail&lt;/b>: Low: 4 x10(3)/mcL High: 6 x10(3)/mcL&lt;/p>&lt;/div>"
            },
            "status": "final",
            "category": {
              "coding": [{
                "system": "http://hl7.org/fhir/observation-category",
                "code": "laboratory",
                "display": "Laboratory"
              }],
              "text": "Laboratory"
            },
            "code": {
              "coding": [{
                "system": "http://loinc.org",
                "code": "789-8",
                "display": "ERYTHROCYTES:NCNC:PT:BLD:QN:AUTOMATED COUNT"
              }],
              "text": "RBC"
            },
            "subject": {
              "reference": "Patient/3998008"
            },
            "encounter": {
              "reference": "Encounter/3651924"
            },
            "effectiveDateTime": "2016-01-26T19:41:00.000Z",
            "issued": "2016-01-26T19:54:07.000Z",
            "valueQuantity": {
              "value": 5,
              "unit": "x10(3)/mcL",
              "system": "http://unitsofmeasure.org",
              "code": "10*3/uL"
            },
            "interpretation": {
              "coding": [{
                "system": "http://hl7.org/fhir/v2/0078",
                "code": "N",
                "display": "Normal"
              }]
            },
            "comments": "{\\rtf1\\ansi\\ansicpg1252\\uc0\\deff0{\\fonttbl\r\n{\\f0\\fswiss\\fcharset0\\fprq2 Arial;}\r\n{\\f1\\froman\\fcharset2\\fprq2 Symbol;}}\r\n{\\colortbl;\\red0\\green0\\blue0;\\red255\\green255\\blue255;}\r\n{\\*\\generator TX_RTF32 10.1.323.501;}\r\n\\deftab1134\\pard\\plain\\f0\\fs24\\cb2\\chshdng0\\chcfpat0\\chcbpat2 This is interpretative data for RBC.  This should apply to all routed to service resources.\\par\\pard\\par }",
            "referenceRange": [{
              "low": {
                "value": 4,
                "unit": "x10(3)/mcL",
                "system": "http://unitsofmeasure.org",
                "code": "10*3/uL"
              },
              "high": {
                "value": 6,
                "unit": "x10(3)/mcL",
                "system": "http://unitsofmeasure.org",
                "code": "10*3/uL"
              }
            }]
          }
        }]
      }
  end
end
