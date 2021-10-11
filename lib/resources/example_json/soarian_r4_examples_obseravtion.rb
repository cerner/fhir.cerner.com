# frozen_string_literal: true

module Cerner
  module Resources

    SOARIAN_R4_OBSERVATION_SEARCH_BY_PT_LAB ||= {
      "resourceType": 'Bundle',
      "id": 'ae9a100d-fe10-43a1-9902-6b8eba508f8f',
      "type": 'searchset',
      "timestamp": '2021-05-28T06:50:46-04:00',
      "entry": [
        {
          "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Observation/A879904FD2FE4B2D90C89FDA84E1285F.RES.SEN.2141',
          "search": {
            "mode": 'match'
          },
          "resource": {
            "resourceType": 'Observation',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.RES.SEN.2141',
            "status": 'preliminary',
            "meta": {
              "lastUpdated": '2021-05-07T12:02:54-04:00'
            },
            "category": [
              {
                "coding": [
                  {
                    "system": 'http://terminology.hl7.org/CodeSystem/observation-category',
                    "code": 'laboratory',
                    "display": 'Laboratory'
                  }
                ]
              }
            ],
            "subject": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid Santiago'
            },
            "encounter": {
              "reference": 'Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019',
              "display": 'Inferno,Initial'
            },
            "effectiveDateTime": '2021-05-07T12:03:00-04:00',
            "code": {
              "text": 'TETRACYCLINE'
            },
            "valueString": 'Tetra-2',
            "derivedFrom": [
              {
                "reference": 'Observation/A879904FD2FE4B2D90C89FDA84E1285F.RES.31306'
              }
            ],
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Observation</b><br />  <b>Patient</b>:Mcgovern,Astrid Santiago<br />   <b>Status</b>:preliminary<br />   <b>Encounter</b>:Inferno,Initial<br />   <b>Category</b>:Laboratory<br />    <b>Effective Time</b>:2021-05-07T12:03:00-04:00<br />   <b>Code</b>:<br />    <b>Text</b>:TETRACYCLINE<br />    <b>Value</b>:Tetra-2<br />    </div>'
              # rubocop:enable Layout/LineLength
            }
          }
        },
        {
          "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Observation/A879904FD2FE4B2D90C89FDA84E1285F.RES.31303',
          "search": {
            "mode": 'match'
          },
          "resource": {
            "resourceType": 'Observation',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.RES.31303',
            "status": 'preliminary',
            "meta": {
              "lastUpdated": '2021-05-07T12:02:54-04:00'
            },
            "category": [
              {
                "coding": [
                  {
                    "system": 'http://terminology.hl7.org/CodeSystem/observation-category',
                    "code": 'laboratory',
                    "display": 'Laboratory'
                  }
                ]
              }
            ],
            "subject": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid Santiago'
            },
            "encounter": {
              "reference": 'Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019',
              "display": 'Inferno,Initial'
            },
            "effectiveDateTime": '2020-03-29T03:18:00-04:00',
            "code": {
              "text": 'RES_ORGANISM'
            },
            "valueString": 'Gram Positive',
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Observation</b><br />  <b>Patient</b>:Mcgovern,Astrid Santiago<br />   <b>Status</b>:preliminary<br />   <b>Encounter</b>:Inferno,Initial<br />   <b>Category</b>:Laboratory<br />    <b>Effective Time</b>:2020-03-29T03:18:00-04:00<br />   <b>Code</b>:<br />    <b>Text</b>:RES_ORGANISM<br />    <b>Value</b>:Gram Positive<br />    </div>'
              # rubocop:enable Layout/LineLength
            }
          }
        },
        {
          "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Observation/A879904FD2FE4B2D90C89FDA84E1285F.RES.31306',
          "search": {
            "mode": 'match'
          },
          "resource": {
            "resourceType": 'Observation',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.RES.31306',
            "status": 'preliminary',
            "meta": {
              "lastUpdated": '2021-05-07T12:02:54-04:00'
            },
            "category": [
              {
                "coding": [
                  {
                    "system": 'http://terminology.hl7.org/CodeSystem/observation-category',
                    "code": 'laboratory',
                    "display": 'Laboratory'
                  }
                ]
              }
            ],
            "subject": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid Santiago'
            },
            "encounter": {
              "reference": 'Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019',
              "display": 'Inferno,Initial'
            },
            "effectiveDateTime": '2020-03-29T03:18:00-04:00',
            "code": {
              "text": 'SOURCE'
            },
            "valueString": 'Amp-2',
            "hasMember": [
              {
                "reference": 'Observation/A879904FD2FE4B2D90C89FDA84E1285F.RES.SEN.2141'
              }
            ],
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Observation</b><br />  <b>Patient</b>:Mcgovern,Astrid Santiago<br />   <b>Status</b>:preliminary<br />   <b>Encounter</b>:Inferno,Initial<br />   <b>Category</b>:Laboratory<br />    <b>Effective Time</b>:2020-03-29T03:18:00-04:00<br />   <b>Code</b>:<br />    <b>Text</b>:SOURCE<br />    <b>Value</b>:Amp-2<br />    </div>'
              # rubocop:enable Layout/LineLength
            }
          }
        },
        {
          "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Observation/A879904FD2FE4B2D90C89FDA84E1285F.RES.SEN.2140',
          "search": {
            "mode": 'match'
          },
          "resource": {
            "resourceType": 'Observation',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.RES.SEN.2140',
            "status": 'registered',
            "meta": {
              "lastUpdated": '2021-05-07T12:02:54-04:00'
            },
            "category": [
              {
                "coding": [
                  {
                    "system": 'http://terminology.hl7.org/CodeSystem/observation-category',
                    "code": 'laboratory',
                    "display": 'Laboratory'
                  }
                ]
              }
            ],
            "subject": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid Santiago'
            },
            "encounter": {
              "reference": 'Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019',
              "display": 'Inferno,Initial'
            },
            "effectiveDateTime": '2021-05-07T12:03:00-04:00',
            "code": {
              "text": 'TETRACYCLINE'
            },
            "valueString": 'Tetra-1',
            "derivedFrom": [
              {
                "reference": 'Observation/A879904FD2FE4B2D90C89FDA84E1285F.RES.31305'
              }
            ],
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Observation</b><br />  <b>Patient</b>:Mcgovern,Astrid Santiago<br />   <b>Status</b>:registered<br />   <b>Encounter</b>:Inferno,Initial<br />   <b>Category</b>:Laboratory<br />    <b>Effective Time</b>:2021-05-07T12:03:00-04:00<br />   <b>Code</b>:<br />    <b>Text</b>:TETRACYCLINE<br />    <b>Value</b>:Tetra-1<br />    </div>'
              # rubocop:enable Layout/LineLength
            }
          }
        },
        {
          "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Observation/A879904FD2FE4B2D90C89FDA84E1285F.RES.31304',
          "search": {
            "mode": 'match'
          },
          "resource": {
            "resourceType": 'Observation',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.RES.31304',
            "status": 'registered',
            "meta": {
              "lastUpdated": '2021-05-07T12:02:54-04:00'
            },
            "category": [
              {
                "coding": [
                  {
                    "system": 'http://terminology.hl7.org/CodeSystem/observation-category',
                    "code": 'laboratory',
                    "display": 'Laboratory'
                  }
                ]
              }
            ],
            "subject": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid Santiago'
            },
            "encounter": {
              "reference": 'Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019',
              "display": 'Inferno,Initial'
            },
            "effectiveDateTime": '2020-03-29T03:18:00-04:00',
            "code": {
              "text": 'CULTURE SIGNIFIGANCE'
            },
            "valueString": 'None',
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Observation</b><br />  <b>Patient</b>:Mcgovern,Astrid Santiago<br />   <b>Status</b>:registered<br />   <b>Encounter</b>:Inferno,Initial<br />   <b>Category</b>:Laboratory<br />    <b>Effective Time</b>:2020-03-29T03:18:00-04:00<br />   <b>Code</b>:<br />    <b>Text</b>:CULTURE SIGNIFIGANCE<br />    <b>Value</b>:None<br />    </div>'
              # rubocop:enable Layout/LineLength
            }
          }
        },
        {
          "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Observation/A879904FD2FE4B2D90C89FDA84E1285F.RES.31305',
          "search": {
            "mode": 'match'
          },
          "resource": {
            "resourceType": 'Observation',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.RES.31305',
            "status": 'registered',
            "meta": {
              "lastUpdated": '2021-05-07T12:02:54-04:00'
            },
            "category": [
              {
                "coding": [
                  {
                    "system": 'http://terminology.hl7.org/CodeSystem/observation-category',
                    "code": 'laboratory',
                    "display": 'Laboratory'
                  }
                ]
              }
            ],
            "subject": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid Santiago'
            },
            "encounter": {
              "reference": 'Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019',
              "display": 'Inferno,Initial'
            },
            "effectiveDateTime": '2020-03-29T03:18:00-04:00',
            "code": {
              "text": 'SOURCE'
            },
            "valueString": 'Amp-1',
            "hasMember": [
              {
                "reference": 'Observation/A879904FD2FE4B2D90C89FDA84E1285F.RES.SEN.2140'
              }
            ],
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Observation</b><br />  <b>Patient</b>:Mcgovern,Astrid Santiago<br />   <b>Status</b>:registered<br />   <b>Encounter</b>:Inferno,Initial<br />   <b>Category</b>:Laboratory<br />    <b>Effective Time</b>:2020-03-29T03:18:00-04:00<br />   <b>Code</b>:<br />    <b>Text</b>:SOURCE<br />    <b>Value</b>:Amp-1<br />    </div>'
              # rubocop:enable Layout/LineLength
            }
          }
        },
        {
          "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Observation/A879904FD2FE4B2D90C89FDA84E1285F.RES.20216',
          "search": {
            "mode": 'match'
          },
          "resource": {
            "resourceType": 'Observation',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.RES.20216',
            "status": 'final',
            "meta": {
              "lastUpdated": '2020-12-16T19:32:57-05:00'
            },
            "category": [
              {
                "coding": [
                  {
                    "system": 'http://terminology.hl7.org/CodeSystem/observation-category',
                    "code": 'laboratory',
                    "display": 'Laboratory'
                  }
                ]
              }
            ],
            "subject": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid Santiago'
            },
            "encounter": {
              "reference": 'Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019',
              "display": 'Inferno,Initial'
            },
            "effectiveDateTime": '2020-12-11T09:14:00-05:00',
            "code": {
              "coding": [
                {
                  "system": 'http://loinc.org',
                  "code": '6690-2'
                }
              ],
              "text": 'WBC'
            },
            "valueString": '>=100UCUM http://unitsofmeasure.org,%',
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Observation</b><br />  <b>Patient</b>:Mcgovern,Astrid Santiago<br />   <b>Status</b>:final<br />   <b>Encounter</b>:Inferno,Initial<br />   <b>Category</b>:Laboratory<br />    <b>Effective Time</b>:2020-12-11T09:14:00-05:00<br />   <b>Code</b>:<br />  <b>System</b>:http://loinc.org <b>Code</b>:6690-2 <b>Text</b>:WBC<br />    <b>Value</b>:&gt;=100UCUM http://unitsofmeasure.org,%<br />    </div>'
              # rubocop:enable Layout/LineLength
            }
          }
        },
        {
          "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Observation/A879904FD2FE4B2D90C89FDA84E1285F.RES.31302',
          "search": {
            "mode": 'match'
          },
          "resource": {
            "resourceType": 'Observation',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.RES.31302',
            "status": 'final',
            "meta": {
              "lastUpdated": '2021-05-07T12:02:54-04:00'
            },
            "category": [
              {
                "coding": [
                  {
                    "system": 'http://terminology.hl7.org/CodeSystem/observation-category',
                    "code": 'laboratory',
                    "display": 'Laboratory'
                  }
                ]
              }
            ],
            "subject": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid Santiago'
            },
            "encounter": {
              "reference": 'Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019',
              "display": 'Inferno,Initial'
            },
            "effectiveDateTime": '2020-03-29T03:18:00-04:00',
            "code": {
              "text": 'SOURCE'
            },
            "valueString": 'Moderate Growth_Edit',
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Observation</b><br />  <b>Patient</b>:Mcgovern,Astrid Santiago<br />   <b>Status</b>:final<br />   <b>Encounter</b>:Inferno,Initial<br />   <b>Category</b>:Laboratory<br />    <b>Effective Time</b>:2020-03-29T03:18:00-04:00<br />   <b>Code</b>:<br />    <b>Text</b>:SOURCE<br />    <b>Value</b>:Moderate Growth_Edit<br />    </div>'
              # rubocop:enable Layout/LineLength
            }
          }
        }
      ],
      "link": [
        {
          "relation": 'self',
          "url": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Observation?patient=A879904FD2FE4B2D90C89FDA84E1285F&category=laboratory&_format=json'
        }
      ]
    }.freeze

    SOARIAN_R4_OBSERVATION_SEARCH_BY_PT_SOCHX ||= {
      "resourceType": 'Bundle',
      "id": 'ee0190df-00b9-4f95-b0cd-bf369f6699b9',
      "type": 'searchset',
      "timestamp": '2021-05-28T06:40:02-04:00',
      "entry": [
        {
          "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Observation/A879904FD2FE4B2D90C89FDA84E1285F.NRS.SH.50306',
          "search": {
            "mode": 'match'
          },
          "resource": {
            "resourceType": 'Observation',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.NRS.SH.50306',
            "status": 'final',
            "meta": {
              "lastUpdated": '2021-02-04T10:38:56-05:00'
            },
            "category": [
              {
                "coding": [
                  {
                    "system": 'http://terminology.hl7.org/CodeSystem/observation-category',
                    "code": 'social-history',
                    "display": 'Social History'
                  }
                ]
              }
            ],
            "subject": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid Santiago'
            },
            "encounter": {
              "reference": 'Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019',
              "display": 'Inferno,Initial'
            },
            "effectiveDateTime": '2021-02-04T10:36:00-05:00',
            "issued": '2021-02-04T10:36:00-05:00',
            "code": {
              "text": 'CCDA_BirthSex_FN'
            },
            "valueString": 'Female',
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Observation</b><br />  <b>Patient</b>:Mcgovern,Astrid Santiago<br />   <b>Status</b>:final<br />   <b>Encounter</b>:Inferno,Initial<br />   <b>Category</b>:Social History<br />   <b>Issued</b>:2021-02-04T10:36:00-05:00<br />   <b>Effective Time</b>:2021-02-04T10:36:00-05:00<br />   <b>Code</b>:<br />    <b>Text</b>:CCDA_BirthSex_FN<br />    <b>Value</b>:Female<br />    </div>'
              # rubocop:enable Layout/LineLength
            }
          }
        },
        {
          "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Observation/A879904FD2FE4B2D90C89FDA84E1285F.NRS.SH.43091',
          "search": {
            "mode": 'match'
          },
          "resource": {
            "resourceType": 'Observation',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.NRS.SH.43091',
            "status": 'final',
            "meta": {
              "lastUpdated": '2020-11-15T16:38:15-05:00'
            },
            "category": [
              {
                "coding": [
                  {
                    "system": 'http://terminology.hl7.org/CodeSystem/observation-category',
                    "code": 'social-history',
                    "display": 'Social History'
                  }
                ]
              }
            ],
            "subject": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid Santiago'
            },
            "encounter": {
              "reference": 'Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019',
              "display": 'Inferno,Initial'
            },
            "effectiveDateTime": '2020-11-15T16:37:00-05:00',
            "issued": '2020-11-15T16:37:00-05:00',
            "code": {
              "coding": [
                {
                  "system": 'http://loinc.org',
                  "code": '72166-2'
                }
              ],
              "text": 'Tobacco Use?'
            },
            "valueCodeableConcept": {
              "coding": [
                {
                  "system": 'http://snomed.info/sct',
                  "code": '449868002'
                }
              ],
              "text": 'Daily Smoker'
            },
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Observation</b><br />  <b>Patient</b>:Mcgovern,Astrid Santiago<br />   <b>Status</b>:final<br />   <b>Encounter</b>:Inferno,Initial<br />   <b>Category</b>:Social History<br />   <b>Issued</b>:2020-11-15T16:37:00-05:00<br />   <b>Effective Time</b>:2020-11-15T16:37:00-05:00<br />   <b>Code</b>:<br />  <b>System</b>:http://loinc.org <b>Code</b>:72166-2 <b>Text</b>:Tobacco Use?<br />    <b>Value</b>:<br />  <b>System</b>:http://snomed.info/sct <b>Code</b>:449868002 <b>Text</b>:Daily Smoker<br />     </div>'
              # rubocop:enable Layout/LineLength
            }
          }
        }
      ],
      "link": [
        {
          "relation": 'self',
          "url": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Observation?patient=A879904FD2FE4B2D90C89FDA84E1285F&category=social-history&_format=json'
        }
      ]
    }.freeze

    SOARIAN_R4_OBSERVATION_SEARCH_BY_PT_VS ||= {
      "resourceType": 'Bundle',
      "id": '0621fd8b-370f-44bd-b743-701b65fd3dc2',
      "type": 'searchset',
      "timestamp": '2021-05-28T06:53:25-04:00',
      "entry": [
        {
          "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Observation/A879904FD2FE4B2D90C89FDA84E1285F.NRS.VS.50299',
          "search": {
            "mode": 'match'
          },
          "resource": {
            "resourceType": 'Observation',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.NRS.VS.50299',
            "status": 'final',
            "meta": {
              "lastUpdated": '2021-02-04T10:38:56-05:00'
            },
            "category": [
              {
                "coding": [
                  {
                    "system": 'http://terminology.hl7.org/CodeSystem/observation-category',
                    "code": 'vital-signs',
                    "display": 'Vital Signs'
                  }
                ]
              }
            ],
            "subject": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid Santiago'
            },
            "encounter": {
              "reference": 'Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019',
              "display": 'Inferno,Initial'
            },
            "effectiveDateTime": '2021-02-04T10:36:00-05:00',
            "issued": '2021-02-04T10:36:00-05:00',
            "code": {
              "coding": [
                {
                  "system": 'http://loinc.org',
                  "code": '3141-9'
                }
              ],
              "text": 'Weight'
            },
            "valueQuantity": {
              "system": 'http://unitsofmeasure.org',
              "code": 'kg',
              "value": 30,
              "unit": 'kg'
            },
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Observation</b><br />  <b>Patient</b>:Mcgovern,Astrid Santiago<br />   <b>Status</b>:final<br />   <b>Encounter</b>:Inferno,Initial<br />   <b>Category</b>:Vital Signs<br />   <b>Issued</b>:2021-02-04T10:36:00-05:00<br />   <b>Effective Time</b>:2021-02-04T10:36:00-05:00<br />   <b>Code</b>:<br />  <b>System</b>:http://loinc.org <b>Code</b>:3141-9 <b>Text</b>:Weight<br />    <b>Value</b>:<br />  <b>System</b>:http://unitsofmeasure.org  <b>Code</b>:kg <b>Unit</b>:kg <b>Value</b>:30<br />     </div>'
              # rubocop:enable Layout/LineLength
            }
          }
        },
        {
          "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Observation/A879904FD2FE4B2D90C89FDA84E1285F.NRS.VS.50300',
          "search": {
            "mode": 'match'
          },
          "resource": {
            "resourceType": 'Observation',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.NRS.VS.50300',
            "status": 'final',
            "meta": {
              "lastUpdated": '2021-02-04T10:38:56-05:00'
            },
            "category": [
              {
                "coding": [
                  {
                    "system": 'http://terminology.hl7.org/CodeSystem/observation-category',
                    "code": 'vital-signs',
                    "display": 'Vital Signs'
                  }
                ]
              }
            ],
            "subject": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid Santiago'
            },
            "encounter": {
              "reference": 'Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019',
              "display": 'Inferno,Initial'
            },
            "effectiveDateTime": '2021-02-04T10:36:00-05:00',
            "issued": '2021-02-04T10:36:00-05:00',
            "code": {
              "coding": [
                {
                  "system": 'http://loinc.org',
                  "code": '8302-2'
                }
              ],
              "text": 'Height'
            },
            "valueQuantity": {
              "system": 'http://unitsofmeasure.org',
              "code": 'cm',
              "value": 130,
              "unit": 'cm'
            },
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Observation</b><br />  <b>Patient</b>:Mcgovern,Astrid Santiago<br />   <b>Status</b>:final<br />   <b>Encounter</b>:Inferno,Initial<br />   <b>Category</b>:Vital Signs<br />   <b>Issued</b>:2021-02-04T10:36:00-05:00<br />   <b>Effective Time</b>:2021-02-04T10:36:00-05:00<br />   <b>Code</b>:<br />  <b>System</b>:http://loinc.org <b>Code</b>:8302-2 <b>Text</b>:Height<br />    <b>Value</b>:<br />  <b>System</b>:http://unitsofmeasure.org  <b>Code</b>:cm <b>Unit</b>:cm <b>Value</b>:130<br />     </div>'
              # rubocop:enable Layout/LineLength
            }
          }
        },
        {
          "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Observation/A879904FD2FE4B2D90C89FDA84E1285F.NRS.VS.50305',
          "search": {
            "mode": 'match'
          },
          "resource": {
            "resourceType": 'Observation',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.NRS.VS.50305',
            "status": 'final',
            "meta": {
              "lastUpdated": '2021-02-04T10:38:56-05:00'
            },
            "category": [
              {
                "coding": [
                  {
                    "system": 'http://terminology.hl7.org/CodeSystem/observation-category',
                    "code": 'vital-signs',
                    "display": 'Vital Signs'
                  }
                ]
              }
            ],
            "subject": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid Santiago'
            },
            "encounter": {
              "reference": 'Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019',
              "display": 'Inferno,Initial'
            },
            "effectiveDateTime": '2021-02-04T10:36:00-05:00',
            "issued": '2021-02-04T10:36:00-05:00',
            "code": {
              "coding": [
                {
                  "system": 'http://loinc.org',
                  "code": '39156-5'
                }
              ],
              "text": 'Body Mass Index'
            },
            "valueQuantity": {
              "system": 'http://unitsofmeasure.org',
              "code": 'kg/m2',
              "value": 17.75,
              "unit": 'kg/m2'
            },
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Observation</b><br />  <b>Patient</b>:Mcgovern,Astrid Santiago<br />   <b>Status</b>:final<br />   <b>Encounter</b>:Inferno,Initial<br />   <b>Category</b>:Vital Signs<br />   <b>Issued</b>:2021-02-04T10:36:00-05:00<br />   <b>Effective Time</b>:2021-02-04T10:36:00-05:00<br />   <b>Code</b>:<br />  <b>System</b>:http://loinc.org <b>Code</b>:39156-5 <b>Text</b>:Body Mass Index<br />    <b>Value</b>:<br />  <b>System</b>:http://unitsofmeasure.org  <b>Code</b>:kg/m2 <b>Unit</b>:kg/m2 <b>Value</b>:17.75<br />     </div>'
              # rubocop:enable Layout/LineLength
            }
          }
        },
        {
          "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Observation/A879904FD2FE4B2D90C89FDA84E1285F.NRS.VS.49087',
          "search": {
            "mode": 'match'
          },
          "resource": {
            "resourceType": 'Observation',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.NRS.VS.49087',
            "status": 'final',
            "meta": {
              "lastUpdated": '2021-01-21T16:02:10-05:00'
            },
            "category": [
              {
                "coding": [
                  {
                    "system": 'http://terminology.hl7.org/CodeSystem/observation-category',
                    "code": 'vital-signs',
                    "display": 'Vital Signs'
                  }
                ]
              }
            ],
            "subject": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid Santiago'
            },
            "encounter": {
              "reference": 'Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019',
              "display": 'Inferno,Initial'
            },
            "effectiveDateTime": '2021-01-21T15:09:00-05:00',
            "issued": '2021-01-21T15:09:00-05:00',
            "code": {
              "coding": [
                {
                  "system": 'http://loinc.org',
                  "code": '3141-9'
                }
              ],
              "text": 'Weight'
            },
            "valueQuantity": {
              "system": 'http://unitsofmeasure.org',
              "code": 'kg',
              "value": 59.9025,
              "unit": 'kg'
            },
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Observation</b><br />  <b>Patient</b>:Mcgovern,Astrid Santiago<br />   <b>Status</b>:final<br />   <b>Encounter</b>:Inferno,Initial<br />   <b>Category</b>:Vital Signs<br />   <b>Issued</b>:2021-01-21T15:09:00-05:00<br />   <b>Effective Time</b>:2021-01-21T15:09:00-05:00<br />   <b>Code</b>:<br />  <b>System</b>:http://loinc.org <b>Code</b>:3141-9 <b>Text</b>:Weight<br />    <b>Value</b>:<br />  <b>System</b>:http://unitsofmeasure.org  <b>Code</b>:kg <b>Unit</b>:kg <b>Value</b>:59.9025<br />     </div>'
              # rubocop:enable Layout/LineLength
            }
          }
        },
        {
          "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Observation/A879904FD2FE4B2D90C89FDA84E1285F.NRS.VS.49088',
          "search": {
            "mode": 'match'
          },
          "resource": {
            "resourceType": 'Observation',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.NRS.VS.49088',
            "status": 'final',
            "meta": {
              "lastUpdated": '2021-01-21T16:02:10-05:00'
            },
            "category": [
              {
                "coding": [
                  {
                    "system": 'http://terminology.hl7.org/CodeSystem/observation-category',
                    "code": 'vital-signs',
                    "display": 'Vital Signs'
                  }
                ]
              }
            ],
            "subject": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid Santiago'
            },
            "encounter": {
              "reference": 'Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019',
              "display": 'Inferno,Initial'
            },
            "effectiveDateTime": '2021-01-21T15:09:00-05:00',
            "issued": '2021-01-21T15:09:00-05:00',
            "code": {
              "coding": [
                {
                  "system": 'http://loinc.org',
                  "code": '8302-2'
                }
              ],
              "text": 'Height'
            },
            "valueQuantity": {
              "system": 'http://unitsofmeasure.org',
              "code": 'cm',
              "value": 170.18,
              "unit": 'cm'
            },
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Observation</b><br />  <b>Patient</b>:Mcgovern,Astrid Santiago<br />   <b>Status</b>:final<br />   <b>Encounter</b>:Inferno,Initial<br />   <b>Category</b>:Vital Signs<br />   <b>Issued</b>:2021-01-21T15:09:00-05:00<br />   <b>Effective Time</b>:2021-01-21T15:09:00-05:00<br />   <b>Code</b>:<br />  <b>System</b>:http://loinc.org <b>Code</b>:8302-2 <b>Text</b>:Height<br />    <b>Value</b>:<br />  <b>System</b>:http://unitsofmeasure.org  <b>Code</b>:cm <b>Unit</b>:cm <b>Value</b>:170.18<br />     </div>'
              # rubocop:enable Layout/LineLength
            }
          }
        },
        {
          "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Observation/A879904FD2FE4B2D90C89FDA84E1285F.NRS.VS.49091',
          "search": {
            "mode": 'match'
          },
          "resource": {
            "resourceType": 'Observation',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.NRS.VS.49091',
            "status": 'final',
            "meta": {
              "lastUpdated": '2021-01-21T16:02:10-05:00'
            },
            "category": [
              {
                "coding": [
                  {
                    "system": 'http://terminology.hl7.org/CodeSystem/observation-category',
                    "code": 'vital-signs',
                    "display": 'Vital Signs'
                  }
                ]
              }
            ],
            "subject": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid Santiago'
            },
            "encounter": {
              "reference": 'Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019',
              "display": 'Inferno,Initial'
            },
            "effectiveDateTime": '2021-01-21T15:09:00-05:00',
            "issued": '2021-01-21T15:09:00-05:00',
            "code": {
              "coding": [
                {
                  "system": 'http://loinc.org',
                  "code": '85354-9'
                }
              ],
              "text": 'A_BP'
            },
            "component": [
              {
                "code": {
                  "coding": [
                    {
                      "system": 'http://loinc.org',
                      "code": '8480-6'
                    }
                  ],
                  "text": 'A_BP'
                },
                "valueQuantity": {
                  "system": 'http://unitsofmeasure.org',
                  "code": 'mm[Hg]',
                  "value": 124,
                  "unit": 'mm[Hg]'
                }
              },
              {
                "code": {
                  "coding": [
                    {
                      "system": 'http://loinc.org',
                      "code": '8462-4'
                    }
                  ],
                  "text": 'A_BP'
                },
                "valueQuantity": {
                  "system": 'http://unitsofmeasure.org',
                  "code": 'mm[Hg]',
                  "value": 88,
                  "unit": 'mm[Hg]'
                }
              }
            ],
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Observation</b><br />  <b>Patient</b>:Mcgovern,Astrid Santiago<br />   <b>Status</b>:final<br />   <b>Encounter</b>:Inferno,Initial<br />   <b>Category</b>:Vital Signs<br />   <b>Issued</b>:2021-01-21T15:09:00-05:00<br />   <b>Effective Time</b>:2021-01-21T15:09:00-05:00<br />   <b>Code</b>:<br />  <b>System</b>:http://loinc.org <b>Code</b>:85354-9 <b>Text</b>:A_BP<br />       <b>Components</b>:  <ul><li>    <b>Component Code</b>:<br />  <b>System</b>:http://loinc.org <b>Code</b>:8480-6 <b>Text</b>:A_BP<br />    <b>Component Value</b>:<br />  <b>System</b>:http://unitsofmeasure.org <b>Code</b>:mm[Hg] <b>Unit</b>:mm[Hg] <b>Value</b>:124<br />    </li><li>    <b>Component Code</b>:<br />  <b>System</b>:http://loinc.org <b>Code</b>:8462-4 <b>Text</b>:A_BP<br />    <b>Component Value</b>:<br />  <b>System</b>:http://unitsofmeasure.org <b>Code</b>:mm[Hg] <b>Unit</b>:mm[Hg] <b>Value</b>:88<br />     </li></ul>   <br /> </div>'
              # rubocop:enable Layout/LineLength
            }
          }
        },
        {
          "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Observation/A879904FD2FE4B2D90C89FDA84E1285F.NRS.VS.49096',
          "search": {
            "mode": 'match'
          },
          "resource": {
            "resourceType": 'Observation',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.NRS.VS.49096',
            "status": 'final',
            "meta": {
              "lastUpdated": '2021-01-21T16:02:10-05:00'
            },
            "category": [
              {
                "coding": [
                  {
                    "system": 'http://terminology.hl7.org/CodeSystem/observation-category',
                    "code": 'vital-signs',
                    "display": 'Vital Signs'
                  }
                ]
              }
            ],
            "subject": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid Santiago'
            },
            "encounter": {
              "reference": 'Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019',
              "display": 'Inferno,Initial'
            },
            "effectiveDateTime": '2021-01-21T15:09:00-05:00',
            "issued": '2021-01-21T15:09:00-05:00',
            "code": {
              "coding": [
                {
                  "system": 'http://loinc.org',
                  "code": '39156-5'
                }
              ],
              "text": 'Body Mass Index'
            },
            "valueQuantity": {
              "system": 'http://unitsofmeasure.org',
              "code": 'kg/m2',
              "value": 20.68,
              "unit": 'kg/m2'
            },
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Observation</b><br />  <b>Patient</b>:Mcgovern,Astrid Santiago<br />   <b>Status</b>:final<br />   <b>Encounter</b>:Inferno,Initial<br />   <b>Category</b>:Vital Signs<br />   <b>Issued</b>:2021-01-21T15:09:00-05:00<br />   <b>Effective Time</b>:2021-01-21T15:09:00-05:00<br />   <b>Code</b>:<br />  <b>System</b>:http://loinc.org <b>Code</b>:39156-5 <b>Text</b>:Body Mass Index<br />    <b>Value</b>:<br />  <b>System</b>:http://unitsofmeasure.org  <b>Code</b>:kg/m2 <b>Unit</b>:kg/m2 <b>Value</b>:20.68<br />     </div>'
              # rubocop:enable Layout/LineLength
            }
          }
        },
        {
          "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Observation/A879904FD2FE4B2D90C89FDA84E1285F.NRS.VS.49097',
          "search": {
            "mode": 'match'
          },
          "resource": {
            "resourceType": 'Observation',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.NRS.VS.49097',
            "status": 'final',
            "meta": {
              "lastUpdated": '2021-01-21T16:02:10-05:00'
            },
            "category": [
              {
                "coding": [
                  {
                    "system": 'http://terminology.hl7.org/CodeSystem/observation-category',
                    "code": 'vital-signs',
                    "display": 'Vital Signs'
                  }
                ]
              }
            ],
            "subject": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid Santiago'
            },
            "encounter": {
              "reference": 'Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019',
              "display": 'Inferno,Initial'
            },
            "effectiveDateTime": '2021-01-21T15:09:00-05:00',
            "issued": '2021-01-21T15:09:00-05:00',
            "code": {
              "coding": [
                {
                  "system": 'http://loinc.org',
                  "code": '8867-4'
                }
              ],
              "text": 'A_Pulse'
            },
            "valueQuantity": {
              "system": 'http://unitsofmeasure.org',
              "code": '/min',
              "value": 78,
              "unit": '/min'
            },
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Observation</b><br />  <b>Patient</b>:Mcgovern,Astrid Santiago<br />   <b>Status</b>:final<br />   <b>Encounter</b>:Inferno,Initial<br />   <b>Category</b>:Vital Signs<br />   <b>Issued</b>:2021-01-21T15:09:00-05:00<br />   <b>Effective Time</b>:2021-01-21T15:09:00-05:00<br />   <b>Code</b>:<br />  <b>System</b>:http://loinc.org <b>Code</b>:8867-4 <b>Text</b>:A_Pulse<br />    <b>Value</b>:<br />  <b>System</b>:http://unitsofmeasure.org  <b>Code</b>:/min <b>Unit</b>:/min <b>Value</b>:78<br />     </div>'
              # rubocop:enable Layout/LineLength
            }
          }
        },
        {
          "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Observation/A879904FD2FE4B2D90C89FDA84E1285F.NRS.VS.49099',
          "search": {
            "mode": 'match'
          },
          "resource": {
            "resourceType": 'Observation',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.NRS.VS.49099',
            "status": 'final',
            "meta": {
              "lastUpdated": '2021-01-21T16:02:10-05:00'
            },
            "category": [
              {
                "coding": [
                  {
                    "system": 'http://terminology.hl7.org/CodeSystem/observation-category',
                    "code": 'vital-signs',
                    "display": 'Vital Signs'
                  }
                ]
              }
            ],
            "subject": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid Santiago'
            },
            "encounter": {
              "reference": 'Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019',
              "display": 'Inferno,Initial'
            },
            "effectiveDateTime": '2021-01-21T15:09:00-05:00',
            "issued": '2021-01-21T15:09:00-05:00',
            "code": {
              "coding": [
                {
                  "system": 'http://loinc.org',
                  "code": '9279-1'
                }
              ],
              "text": 'Respirations'
            },
            "valueQuantity": {
              "system": 'http://unitsofmeasure.org',
              "code": '/min',
              "value": 15,
              "unit": '/min'
            },
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Observation</b><br />  <b>Patient</b>:Mcgovern,Astrid Santiago<br />   <b>Status</b>:final<br />   <b>Encounter</b>:Inferno,Initial<br />   <b>Category</b>:Vital Signs<br />   <b>Issued</b>:2021-01-21T15:09:00-05:00<br />   <b>Effective Time</b>:2021-01-21T15:09:00-05:00<br />   <b>Code</b>:<br />  <b>System</b>:http://loinc.org <b>Code</b>:9279-1 <b>Text</b>:Respirations<br />    <b>Value</b>:<br />  <b>System</b>:http://unitsofmeasure.org  <b>Code</b>:/min <b>Unit</b>:/min <b>Value</b>:15<br />     </div>'
              # rubocop:enable Layout/LineLength
            }
          }
        },
        {
          "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Observation/A879904FD2FE4B2D90C89FDA84E1285F.NRS.VS.43096',
          "search": {
            "mode": 'match'
          },
          "resource": {
            "resourceType": 'Observation',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.NRS.VS.43096',
            "status": 'final',
            "meta": {
              "lastUpdated": '2020-11-15T16:45:25-05:00'
            },
            "category": [
              {
                "coding": [
                  {
                    "system": 'http://terminology.hl7.org/CodeSystem/observation-category',
                    "code": 'vital-signs',
                    "display": 'Vital Signs'
                  }
                ]
              }
            ],
            "subject": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid Santiago'
            },
            "encounter": {
              "reference": 'Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019',
              "display": 'Inferno,Initial'
            },
            "effectiveDateTime": '2020-11-15T16:38:00-05:00',
            "issued": '2020-11-15T16:38:00-05:00',
            "code": {
              "coding": [
                {
                  "system": 'http://loinc.org',
                  "code": '3141-9'
                }
              ],
              "text": 'Weight'
            },
            "valueQuantity": {
              "system": 'http://unitsofmeasure.org',
              "code": 'kg',
              "value": 61.235,
              "unit": 'kg'
            },
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Observation</b><br />  <b>Patient</b>:Mcgovern,Astrid Santiago<br />   <b>Status</b>:final<br />   <b>Encounter</b>:Inferno,Initial<br />   <b>Category</b>:Vital Signs<br />   <b>Issued</b>:2020-11-15T16:38:00-05:00<br />   <b>Effective Time</b>:2020-11-15T16:38:00-05:00<br />   <b>Code</b>:<br />  <b>System</b>:http://loinc.org <b>Code</b>:3141-9 <b>Text</b>:Weight<br />    <b>Value</b>:<br />  <b>System</b>:http://unitsofmeasure.org  <b>Code</b>:kg <b>Unit</b>:kg <b>Value</b>:61.235<br />     </div>'
              # rubocop:enable Layout/LineLength
            }
          }
        },
        {
          "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Observation/A879904FD2FE4B2D90C89FDA84E1285F.NRS.VS.43097',
          "search": {
            "mode": 'match'
          },
          "resource": {
            "resourceType": 'Observation',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.NRS.VS.43097',
            "status": 'final',
            "meta": {
              "lastUpdated": '2020-11-15T16:45:25-05:00'
            },
            "category": [
              {
                "coding": [
                  {
                    "system": 'http://terminology.hl7.org/CodeSystem/observation-category',
                    "code": 'vital-signs',
                    "display": 'Vital Signs'
                  }
                ]
              }
            ],
            "subject": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid Santiago'
            },
            "encounter": {
              "reference": 'Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019',
              "display": 'Inferno,Initial'
            },
            "effectiveDateTime": '2020-11-15T16:38:00-05:00',
            "issued": '2020-11-15T16:38:00-05:00',
            "code": {
              "coding": [
                {
                  "system": 'http://loinc.org',
                  "code": '8302-2'
                }
              ],
              "text": 'Height'
            },
            "valueQuantity": {
              "system": 'http://unitsofmeasure.org',
              "code": 'cm',
              "value": 170.18,
              "unit": 'cm'
            },
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Observation</b><br />  <b>Patient</b>:Mcgovern,Astrid Santiago<br />   <b>Status</b>:final<br />   <b>Encounter</b>:Inferno,Initial<br />   <b>Category</b>:Vital Signs<br />   <b>Issued</b>:2020-11-15T16:38:00-05:00<br />   <b>Effective Time</b>:2020-11-15T16:38:00-05:00<br />   <b>Code</b>:<br />  <b>System</b>:http://loinc.org <b>Code</b>:8302-2 <b>Text</b>:Height<br />    <b>Value</b>:<br />  <b>System</b>:http://unitsofmeasure.org  <b>Code</b>:cm <b>Unit</b>:cm <b>Value</b>:170.18<br />     </div>'
              # rubocop:enable Layout/LineLength
            }
          }
        },
        {
          "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Observation/A879904FD2FE4B2D90C89FDA84E1285F.NRS.VS.43099',
          "search": {
            "mode": 'match'
          },
          "resource": {
            "resourceType": 'Observation',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.NRS.VS.43099',
            "status": 'final',
            "meta": {
              "lastUpdated": '2020-11-15T16:45:25-05:00'
            },
            "category": [
              {
                "coding": [
                  {
                    "system": 'http://terminology.hl7.org/CodeSystem/observation-category',
                    "code": 'vital-signs',
                    "display": 'Vital Signs'
                  }
                ]
              }
            ],
            "subject": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid Santiago'
            },
            "encounter": {
              "reference": 'Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019',
              "display": 'Inferno,Initial'
            },
            "effectiveDateTime": '2020-11-15T16:38:00-05:00',
            "issued": '2020-11-15T16:38:00-05:00',
            "code": {
              "coding": [
                {
                  "system": 'http://loinc.org',
                  "code": '85354-9'
                }
              ],
              "text": 'A_BP'
            },
            "component": [
              {
                "code": {
                  "coding": [
                    {
                      "system": 'http://loinc.org',
                      "code": '8480-6'
                    }
                  ],
                  "text": 'A_BP'
                },
                "valueQuantity": {
                  "system": 'http://unitsofmeasure.org',
                  "code": 'mm[Hg]',
                  "value": 122,
                  "unit": 'mm[Hg]'
                }
              },
              {
                "code": {
                  "coding": [
                    {
                      "system": 'http://loinc.org',
                      "code": '8462-4'
                    }
                  ],
                  "text": 'A_BP'
                },
                "valueQuantity": {
                  "system": 'http://unitsofmeasure.org',
                  "code": 'mm[Hg]',
                  "value": 88,
                  "unit": 'mm[Hg]'
                }
              }
            ],
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Observation</b><br />  <b>Patient</b>:Mcgovern,Astrid Santiago<br />   <b>Status</b>:final<br />   <b>Encounter</b>:Inferno,Initial<br />   <b>Category</b>:Vital Signs<br />   <b>Issued</b>:2020-11-15T16:38:00-05:00<br />   <b>Effective Time</b>:2020-11-15T16:38:00-05:00<br />   <b>Code</b>:<br />  <b>System</b>:http://loinc.org <b>Code</b>:85354-9 <b>Text</b>:A_BP<br />       <b>Components</b>:  <ul><li>    <b>Component Code</b>:<br />  <b>System</b>:http://loinc.org <b>Code</b>:8480-6 <b>Text</b>:A_BP<br />    <b>Component Value</b>:<br />  <b>System</b>:http://unitsofmeasure.org <b>Code</b>:mm[Hg] <b>Unit</b>:mm[Hg] <b>Value</b>:122<br />    </li><li>    <b>Component Code</b>:<br />  <b>System</b>:http://loinc.org <b>Code</b>:8462-4 <b>Text</b>:A_BP<br />    <b>Component Value</b>:<br />  <b>System</b>:http://unitsofmeasure.org <b>Code</b>:mm[Hg] <b>Unit</b>:mm[Hg] <b>Value</b>:88<br />     </li></ul>   <br /> </div>'
              # rubocop:enable Layout/LineLength
            }
          }
        },
        {
          "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Observation/A879904FD2FE4B2D90C89FDA84E1285F.NRS.VS.43102',
          "search": {
            "mode": 'match'
          },
          "resource": {
            "resourceType": 'Observation',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.NRS.VS.43102',
            "status": 'final',
            "meta": {
              "lastUpdated": '2020-11-15T16:45:25-05:00'
            },
            "category": [
              {
                "coding": [
                  {
                    "system": 'http://terminology.hl7.org/CodeSystem/observation-category',
                    "code": 'vital-signs',
                    "display": 'Vital Signs'
                  }
                ]
              }
            ],
            "subject": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid Santiago'
            },
            "encounter": {
              "reference": 'Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019',
              "display": 'Inferno,Initial'
            },
            "effectiveDateTime": '2020-11-15T16:38:00-05:00',
            "issued": '2020-11-15T16:38:00-05:00',
            "code": {
              "coding": [
                {
                  "system": 'http://loinc.org',
                  "code": '39156-5'
                }
              ],
              "text": 'Body Mass Index'
            },
            "valueQuantity": {
              "system": 'http://unitsofmeasure.org',
              "code": 'kg/m2',
              "value": 21.14,
              "unit": 'kg/m2'
            },
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Observation</b><br />  <b>Patient</b>:Mcgovern,Astrid Santiago<br />   <b>Status</b>:final<br />   <b>Encounter</b>:Inferno,Initial<br />   <b>Category</b>:Vital Signs<br />   <b>Issued</b>:2020-11-15T16:38:00-05:00<br />   <b>Effective Time</b>:2020-11-15T16:38:00-05:00<br />   <b>Code</b>:<br />  <b>System</b>:http://loinc.org <b>Code</b>:39156-5 <b>Text</b>:Body Mass Index<br />    <b>Value</b>:<br />  <b>System</b>:http://unitsofmeasure.org  <b>Code</b>:kg/m2 <b>Unit</b>:kg/m2 <b>Value</b>:21.14<br />     </div>'
              # rubocop:enable Layout/LineLength
            }
          }
        },
        {
          "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Observation/A879904FD2FE4B2D90C89FDA84E1285F.NRS.VS.43103',
          "search": {
            "mode": 'match'
          },
          "resource": {
            "resourceType": 'Observation',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.NRS.VS.43103',
            "status": 'final',
            "meta": {
              "lastUpdated": '2020-11-15T16:45:25-05:00'
            },
            "category": [
              {
                "coding": [
                  {
                    "system": 'http://terminology.hl7.org/CodeSystem/observation-category',
                    "code": 'vital-signs',
                    "display": 'Vital Signs'
                  }
                ]
              }
            ],
            "subject": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid Santiago'
            },
            "encounter": {
              "reference": 'Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019',
              "display": 'Inferno,Initial'
            },
            "effectiveDateTime": '2020-11-15T16:38:00-05:00',
            "issued": '2020-11-15T16:38:00-05:00',
            "code": {
              "coding": [
                {
                  "system": 'http://loinc.org',
                  "code": '8867-4'
                }
              ],
              "text": 'A_Pulse'
            },
            "valueQuantity": {
              "system": 'http://unitsofmeasure.org',
              "code": '/min',
              "value": 78,
              "unit": '/min'
            },
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Observation</b><br />  <b>Patient</b>:Mcgovern,Astrid Santiago<br />   <b>Status</b>:final<br />   <b>Encounter</b>:Inferno,Initial<br />   <b>Category</b>:Vital Signs<br />   <b>Issued</b>:2020-11-15T16:38:00-05:00<br />   <b>Effective Time</b>:2020-11-15T16:38:00-05:00<br />   <b>Code</b>:<br />  <b>System</b>:http://loinc.org <b>Code</b>:8867-4 <b>Text</b>:A_Pulse<br />    <b>Value</b>:<br />  <b>System</b>:http://unitsofmeasure.org  <b>Code</b>:/min <b>Unit</b>:/min <b>Value</b>:78<br />     </div>'
              # rubocop:enable Layout/LineLength
            }
          }
        },
        {
          "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Observation/A879904FD2FE4B2D90C89FDA84E1285F.NRS.VS.43105',
          "search": {
            "mode": 'match'
          },
          "resource": {
            "resourceType": 'Observation',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.NRS.VS.43105',
            "status": 'final',
            "meta": {
              "lastUpdated": '2020-11-15T16:45:25-05:00'
            },
            "category": [
              {
                "coding": [
                  {
                    "system": 'http://terminology.hl7.org/CodeSystem/observation-category',
                    "code": 'vital-signs',
                    "display": 'Vital Signs'
                  }
                ]
              }
            ],
            "subject": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid Santiago'
            },
            "encounter": {
              "reference": 'Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019',
              "display": 'Inferno,Initial'
            },
            "effectiveDateTime": '2020-11-15T16:38:00-05:00',
            "issued": '2020-11-15T16:38:00-05:00',
            "code": {
              "coding": [
                {
                  "system": 'http://loinc.org',
                  "code": '9279-1'
                }
              ],
              "text": 'Respirations'
            },
            "valueQuantity": {
              "system": 'http://unitsofmeasure.org',
              "code": '/min',
              "value": 92,
              "unit": '/min'
            },
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Observation</b><br />  <b>Patient</b>:Mcgovern,Astrid Santiago<br />   <b>Status</b>:final<br />   <b>Encounter</b>:Inferno,Initial<br />   <b>Category</b>:Vital Signs<br />   <b>Issued</b>:2020-11-15T16:38:00-05:00<br />   <b>Effective Time</b>:2020-11-15T16:38:00-05:00<br />   <b>Code</b>:<br />  <b>System</b>:http://loinc.org <b>Code</b>:9279-1 <b>Text</b>:Respirations<br />    <b>Value</b>:<br />  <b>System</b>:http://unitsofmeasure.org  <b>Code</b>:/min <b>Unit</b>:/min <b>Value</b>:92<br />     </div>'
              # rubocop:enable Layout/LineLength
            }
          }
        }
      ],
      "link": [
        {
          "relation": 'self',
          "url": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Observation?patient=A879904FD2FE4B2D90C89FDA84E1285F&category=vital-signs&_format=json'
        }
      ]
    }.freeze

    SOARIAN_R4_OBSERVATION_SEARCH_BY_ID ||= {
      "resourceType": 'Bundle',
      "id": 'f9bea515-c649-4fd3-8cc4-9e77e0384e7d',
      "type": 'searchset',
      "timestamp": '2021-05-28T06:56:40-04:00',
      "entry": [
        {
          "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Observation/A879904FD2FE4B2D90C89FDA84E1285F.NRS.VS.50299',
          "search": {
            "mode": 'match'
          },
          "resource": {
            "resourceType": 'Observation',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.NRS.VS.50299',
            "status": 'final',
            "meta": {
              "lastUpdated": '2021-02-04T10:38:56-05:00'
            },
            "category": [
              {
                "coding": [
                  {
                    "system": 'http://terminology.hl7.org/CodeSystem/observation-category',
                    "code": 'vital-signs',
                    "display": 'Vital Signs'
                  }
                ]
              }
            ],
            "subject": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid Santiago'
            },
            "encounter": {
              "reference": 'Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019',
              "display": 'Inferno,Initial'
            },
            "effectiveDateTime": '2021-02-04T10:36:00-05:00',
            "issued": '2021-02-04T10:36:00-05:00',
            "code": {
              "coding": [
                {
                  "system": 'http://loinc.org',
                  "code": '3141-9'
                }
              ],
              "text": 'Weight'
            },
            "valueQuantity": {
              "system": 'http://unitsofmeasure.org',
              "code": 'kg',
              "value": 30,
              "unit": 'kg'
            },
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Observation</b><br />  <b>Patient</b>:Mcgovern,Astrid Santiago<br />   <b>Status</b>:final<br />   <b>Encounter</b>:Inferno,Initial<br />   <b>Category</b>:Vital Signs<br />   <b>Issued</b>:2021-02-04T10:36:00-05:00<br />   <b>Effective Time</b>:2021-02-04T10:36:00-05:00<br />   <b>Code</b>:<br />  <b>System</b>:http://loinc.org <b>Code</b>:3141-9 <b>Text</b>:Weight<br />    <b>Value</b>:<br />  <b>System</b>:http://unitsofmeasure.org  <b>Code</b>:kg <b>Unit</b>:kg <b>Value</b>:30<br />     </div>'
              # rubocop:enable Layout/LineLength
            }
          }
        }
      ],
      "link": [
        {
          "relation": 'self',
          "url": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Observation?_id=A879904FD2FE4B2D90C89FDA84E1285F.NRS.VS.50299&_format=json'
        }
      ]
    }.freeze

    SOARIAN_R4_OBSERVATION_READ ||= {
      "resourceType": 'Observation',
      "id": 'A879904FD2FE4B2D90C89FDA84E1285F.NRS.VS.50299',
      "status": 'final',
      "meta": {
        "lastUpdated": '2021-02-04T10:38:56-05:00'
      },
      "category": [
        {
          "coding": [
            {
              "system": 'http://terminology.hl7.org/CodeSystem/observation-category',
              "code": 'vital-signs',
              "display": 'Vital Signs'
            }
          ]
        }
      ],
      "subject": {
        "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
        "display": 'Mcgovern,Astrid Santiago'
      },
      "encounter": {
        "reference": 'Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019',
        "display": 'Inferno,Initial'
      },
      "effectiveDateTime": '2021-02-04T10:36:00-05:00',
      "issued": '2021-02-04T10:36:00-05:00',
      "code": {
        "coding": [
          {
            "system": 'http://loinc.org',
            "code": '3141-9'
          }
        ],
        "text": 'Weight'
      },
      "valueQuantity": {
        "system": 'http://unitsofmeasure.org',
        "code": 'kg',
        "value": 30,
        "unit": 'kg'
      },
      "text": {
        "status": 'generated',
        # rubocop:disable Layout/LineLength
        "div": '<div xmlns="http://www.w3.org/1999/xhtml"><b>Observation</b><br />  <b>Patient</b>:Mcgovern,Astrid Santiago<br />   <b>Status</b>:final<br />   <b>Encounter</b>:Inferno,Initial<br />   <b>Category</b>:Vital Signs<br />   <b>Issued</b>:2021-02-04T10:36:00-05:00<br />   <b>Effective Time</b>:2021-02-04T10:36:00-05:00<br />   <b>Code</b>:<br />  <b>System</b>:http://loinc.org <b>Code</b>:3141-9 <b>Text</b>:Weight<br />    <b>Value</b>:<br />  <b>System</b>:http://unitsofmeasure.org  <b>Code</b>:kg <b>Unit</b>:kg <b>Value</b>:30<br />     </div>'
        # rubocop:enable Layout/LineLength
      }
    }.freeze
  end
end
