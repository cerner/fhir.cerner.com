# frozen_string_literal: true

module Cerner
    module Resources
        R4_DIAGNOSTIC_REPORT_SEARCH_BY_ID ||= {
            "resourceType": "Bundle",
            "id": "e54ead7c-0713-4d29-8cbe-f8d74798fddd",
            "type": "searchset",
            "link": [
                {
                    "relation": "self",
                    "url": "https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DiagnosticReport?_id=196151517"
                }
            ],
            "entry": [
                {
                    "fullUrl": "https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DiagnosticReport/196151517",
                    "resource": {
                        "resourceType": "DiagnosticReport",
                        "id": "196151517",
                        "meta": {
                            "versionId": "3",
                            "lastUpdated": "2017-01-06T20:09:17.000+00:00"
                        },
                        "text": {
                            "status": "generated",
                            "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Diagnostic Report</b></p><p><b>Patient</b>: RADIOLOGY, TESTTWO</p><p><b>Document Category</b>: Unknown</p><p><b>Document Title</b>: MG Mammo Digital Diagnostic Bilat</p><p><b>Status</b>: Final</p><p><b>Code</b>: MG Mammo Digital Diagnostic Bilat</p><p><b>Effective Date</b>: Jan  6, 2017  7:59 P.M. UTC</p></div>"
                        },
                        "identifier": [
                            {
                                "system": "https://fhir.cerner.com/ceuuid",
                                "value": "CE87caf4b7-9397-4667-9897-702218017c9e-196151517-2017010620084300"
                            },
                            {
                                "system": "https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/acsn",
                                "value": "00000MG20170000004"
                            }
                        ],
                        "basedOn": [
                            {
                                "reference": "ServiceRequest/294749597"
                            }
                        ],
                        "status": "final",
                        "category": [
                            {
                                "coding": [
                                    {
                                        "system": "http://terminology.hl7.org/CodeSystem/data-absent-reason",
                                        "code": "unknown",
                                        "display": "Unknown"
                                    }
                                ],
                                "text": "Unknown"
                            }
                        ],
                        "code": {
                            "coding": [
                                {
                                    "system": "https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/72",
                                    "code": "21660139",
                                    "display": "MG Mammo Digital Diagnostic Bilat",
                                    "userSelected": true
                                },
                                {
                                    "system": "http://loinc.org",
                                    "code": "26346-7"
                                }
                            ],
                            "text": "MG Mammo Digital Diagnostic Bilat"
                        },
                        "subject": {
                            "reference": "Patient/12458002",
                            "display": "RADIOLOGY, TESTTWO"
                        },
                        "encounter": {
                            "reference": "Encounter/97697440"
                        },
                        "effectiveDateTime": "2017-01-06T19:59:20Z",
                        "issued": "2017-01-06T20:09:17Z",
                        "performer": [
                            {
                                "reference": "Practitioner/11648064"
                            }
                        ],
                        "resultsInterpreter": [
                            {
                                "reference": "Practitioner/11648064"
                            }
                        ],
                        "presentedForm": [
                            {
                                "contentType": "application/pdf",
                                "url": "https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Binary/XR-196151517",
                                "title": "MG Mammo Digital Diagnostic Bilat",
                                "creation": "2017-01-06T20:09:17Z"
                            },
                            {
                                "contentType": "application/xml",
                                "url": "https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Binary/R-196151517",
                                "title": "MG Mammo Digital Diagnostic Bilat",
                                "creation": "2017-01-06T20:09:17Z"
                            }
                        ]
                    },
                    "search": {
                        "mode": "match"
                    }
                }
            ]
        }.freeze

        R4_DIAGNOSTIC_REPORT_READ_BY_ID ||= {
            "resourceType": "DiagnosticReport",
            "id": "196151517",
            "meta": {
                "versionId": "3",
                "lastUpdated": "2017-01-06T20:09:17.000+00:00"
            },
            "text": {
                "status": "generated",
                "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Diagnostic Report</b></p><p><b>Patient</b>: RADIOLOGY, TESTTWO</p><p><b>Document Category</b>: Unknown</p><p><b>Document Title</b>: MG Mammo Digital Diagnostic Bilat</p><p><b>Status</b>: Final</p><p><b>Code</b>: MG Mammo Digital Diagnostic Bilat</p><p><b>Effective Date</b>: Jan  6, 2017  7:59 P.M. UTC</p></div>"
            },
            "identifier": [
                {
                    "system": "https://fhir.cerner.com/ceuuid",
                    "value": "CE87caf4b7-9397-4667-9897-702218017c9e-196151517-2017010620084300"
                },
                {
                    "system": "https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/acsn",
                    "value": "00000MG20170000004"
                }
            ],
            "basedOn": [
                {
                    "reference": "ServiceRequest/294749597"
                }
            ],
            "status": "final",
            "category": [
                {
                    "coding": [
                        {
                            "system": "http://terminology.hl7.org/CodeSystem/data-absent-reason",
                            "code": "unknown",
                            "display": "Unknown"
                        }
                    ],
                    "text": "Unknown"
                }
            ],
            "code": {
                "coding": [
                    {
                        "system": "https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/72",
                        "code": "21660139",
                        "display": "MG Mammo Digital Diagnostic Bilat",
                        "userSelected": true
                    },
                    {
                        "system": "http://loinc.org",
                        "code": "26346-7"
                    }
                ],
                "text": "MG Mammo Digital Diagnostic Bilat"
            },
            "subject": {
                "reference": "Patient/12458002",
                "display": "RADIOLOGY, TESTTWO"
            },
            "encounter": {
                "reference": "Encounter/97697440"
            },
            "effectiveDateTime": "2017-01-06T19:59:20Z",
            "issued": "2017-01-06T20:09:17Z",
            "performer": [
                {
                    "reference": "Practitioner/11648064"
                }
            ],
            "resultsInterpreter": [
                {
                    "reference": "Practitioner/11648064"
                }
            ],
            "presentedForm": [
                {
                    "contentType": "application/pdf",
                    "url": "https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Binary/XR-196151517",
                    "title": "MG Mammo Digital Diagnostic Bilat",
                    "creation": "2017-01-06T20:09:17Z"
                },
                {
                    "contentType": "application/xml",
                    "url": "https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Binary/R-196151517",
                    "title": "MG Mammo Digital Diagnostic Bilat",
                    "creation": "2017-01-06T20:09:17Z"
                }
            ]
        }.freeze

        R4_DIAGNOSTIC_REPORT_SEARCH_BY_REVINCLUDE ||= {
            "resourceType": "Bundle",
            "id": "b40dab9d-354b-4f8c-b5d4-f47e89a1fc6a",
            "type": "searchset",
            "link": [
                {
                    "relation": "self",
                    "url": "https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DiagnosticReport?_id=196151517%2C198381928&_revinclude=Provenance%3Atarget"
                }
            ],
            "entry": [
                {
                    "fullUrl": "https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DiagnosticReport/196151517",
                    "resource": {
                        "resourceType": "DiagnosticReport",
                        "id": "196151517",
                        "meta": {
                            "versionId": "3",
                            "lastUpdated": "2017-01-06T20:09:17.000+00:00"
                        },
                        "text": {
                            "status": "generated",
                            "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Diagnostic Report</b></p><p><b>Patient</b>: RADIOLOGY, TESTTWO</p><p><b>Document Category</b>: Unknown</p><p><b>Document Title</b>: MG Mammo Digital Diagnostic Bilat</p><p><b>Status</b>: Final</p><p><b>Code</b>: MG Mammo Digital Diagnostic Bilat</p><p><b>Effective Date</b>: Jan  6, 2017  7:59 P.M. UTC</p></div>"
                        },
                        "identifier": [
                            {
                                "system": "https://fhir.cerner.com/ceuuid",
                                "value": "CE87caf4b7-9397-4667-9897-702218017c9e-196151517-2017010620084300"
                            },
                            {
                                "system": "https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/acsn",
                                "value": "00000MG20170000004"
                            }
                        ],
                        "basedOn": [
                            {
                                "reference": "ServiceRequest/294749597"
                            }
                        ],
                        "status": "final",
                        "category": [
                            {
                                "coding": [
                                    {
                                        "system": "http://terminology.hl7.org/CodeSystem/data-absent-reason",
                                        "code": "unknown",
                                        "display": "Unknown"
                                    }
                                ],
                                "text": "Unknown"
                            }
                        ],
                        "code": {
                            "coding": [
                                {
                                    "system": "https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/72",
                                    "code": "21660139",
                                    "display": "MG Mammo Digital Diagnostic Bilat",
                                    "userSelected": true
                                },
                                {
                                    "system": "http://loinc.org",
                                    "code": "26346-7"
                                }
                            ],
                            "text": "MG Mammo Digital Diagnostic Bilat"
                        },
                        "subject": {
                            "reference": "Patient/12458002",
                            "display": "RADIOLOGY, TESTTWO"
                        },
                        "encounter": {
                            "reference": "Encounter/97697440"
                        },
                        "effectiveDateTime": "2017-01-06T19:59:20Z",
                        "issued": "2017-01-06T20:09:17Z",
                        "performer": [
                            {
                                "reference": "Practitioner/11648064"
                            }
                        ],
                        "resultsInterpreter": [
                            {
                                "reference": "Practitioner/11648064"
                            }
                        ],
                        "presentedForm": [
                            {
                                "contentType": "application/pdf",
                                "url": "https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Binary/XR-196151517",
                                "title": "MG Mammo Digital Diagnostic Bilat",
                                "creation": "2017-01-06T20:09:17Z"
                            },
                            {
                                "contentType": "application/xml",
                                "url": "https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Binary/R-196151517",
                                "title": "MG Mammo Digital Diagnostic Bilat",
                                "creation": "2017-01-06T20:09:17Z"
                            }
                        ]
                    },
                    "search": {
                        "mode": "match"
                    }
                },
                {
                    "fullUrl": "https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DiagnosticReport/198381928",
                    "resource": {
                        "resourceType": "DiagnosticReport",
                        "id": "198381928",
                        "meta": {
                            "versionId": "1",
                            "lastUpdated": "2022-07-07T09:44:40.000Z"
                        },
                        "text": {
                            "status": "generated",
                            "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Diagnostic Report</b></p><p><b>Patient</b>: GETEST, PatientOneHundredSeventyOne</p><p><b>Document Title</b>: test1</p><p><b>Status</b>: Final</p><p><b>Code</b>: Waveform Strip</p><p><b>Effective Start Date</b>: Jul  7, 2022  9:44 A.M. UTC</p><p><b>Effective End Date</b>: Jul  7, 2022  9:44 A.M. UTC</p><p><b>Verifying Provider</b>: Model, User 212 Cerner</p></div>"
                        },
                        "identifier": [
                            {
                                "system": "https://fhir.cerner.com/ceuuid",
                                "value": "CE87caf4b7-9397-4667-9897-702218017c9e-198381928-2022070709444100"
                            }
                        ],
                        "status": "final",
                        "category": [
                            {
                                "coding": [
                                    {
                                        "system": "http://loinc.org",
                                        "code": "8716-3",
                                        "userSelected": false
                                    }
                                ]
                            }
                        ],
                        "code": {
                            "coding": [
                                {
                                    "system": "https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/72",
                                    "code": "2574499721",
                                    "display": "Waveform Strip",
                                    "userSelected": true
                                }
                            ],
                            "text": "Waveform Strip"
                        },
                        "subject": {
                            "reference": "Patient/12769858",
                            "display": "GETEST, PatientOneHundredSeventyOne"
                        },
                        "encounter": {
                            "reference": "Encounter/97966187"
                        },
                        "effectivePeriod": {
                            "start": "2022-07-07T09:44:40.000Z",
                            "end": "2022-07-07T09:44:40.000Z"
                        },
                        "issued": "2022-07-07T09:44:40Z",
                        "performer": [
                            {
                                "reference": "Practitioner/11638486",
                                "display": "Model, User 212 Cerner"
                            }
                        ],
                        "resultsInterpreter": [
                            {
                                "reference": "Practitioner/11638486",
                                "display": "Model, User 212 Cerner"
                            }
                        ],
                        "presentedForm": [
                            {
                                "contentType": "application/pdf",
                                "url": "https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Binary/XR-198381928",
                                "title": "test1",
                                "creation": "2022-07-07T09:44:40.000Z"
                            }
                        ]
                    },
                    "search": {
                        "mode": "match"
                    }
                },
                {
                    "fullUrl": "https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Provenance/INT.doc-198381928",
                    "resource": {
                        "resourceType": "Provenance",
                        "id": "INT.doc-198381928",
                        "meta": {
                            "versionId": "198381928",
                            "lastUpdated": "2022-07-07T09:44:40Z"
                        },
                        "text": {
                            "status": "generated",
                            "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Provenance</b></p><p><b>Target</b>:</p><ul><li>DiagnosticReport/198381928</li></ul><p><b>Recorded</b>: Jul  7, 2022  9:44 A.M. UTC</p><p><b>Agents</b>:</p><dl><dt>Model, User 212 Cerner</dt><dd><b>Agent Type</b>: Author</dd><dd><b>Agent Role</b>: Source</dd></dl></div>"
                        },
                        "target": [
                            {
                                "reference": "DiagnosticReport/198381928"
                            }
                        ],
                        "recorded": "2022-07-07T09:44:40Z",
                        "agent": [
                            {
                                "type": {
                                    "coding": [
                                        {
                                            "system": "http://terminology.hl7.org/CodeSystem/provenance-participant-type",
                                            "code": "author"
                                        }
                                    ],
                                    "text": "Author"
                                },
                                "role": [
                                    {
                                        "coding": [
                                            {
                                                "system": "http://terminology.hl7.org/CodeSystem/contractsignertypecodes",
                                                "code": "SOURCE"
                                            }
                                        ],
                                        "text": "Source"
                                    }
                                ],
                                "who": {
                                    "reference": "Practitioner/11638486",
                                    "display": "Model, User 212 Cerner"
                                }
                            }
                        ]
                    },
                    "search": {
                        "mode": "include"
                    }
                },
                {
                    "fullUrl": "https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Provenance/INT.doc-196151517",
                    "resource": {
                        "resourceType": "Provenance",
                        "id": "INT.doc-196151517",
                        "meta": {
                            "versionId": "196151517",
                            "lastUpdated": "2017-01-06T20:09:17Z"
                        },
                        "text": {
                            "status": "generated",
                            "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Provenance</b></p><p><b>Target</b>:</p><ul><li>DiagnosticReport/196151517</li></ul><p><b>Recorded</b>: Jan  6, 2017  8:09 P.M. UTC</p><p><b>Agents</b>:</p><dl><dt>Model, User 437 Cerner</dt><dd><b>Agent Type</b>: Author</dd><dd><b>Agent Role</b>: Source</dd><dt>Model Hospital</dt><dd><b>Agent Type</b>: Author</dd><dd><b>Agent Role</b>: Source</dd></dl></div>"
                        },
                        "target": [
                            {
                                "reference": "DiagnosticReport/196151517"
                            }
                        ],
                        "recorded": "2017-01-06T20:09:17Z",
                        "agent": [
                            {
                                "type": {
                                    "coding": [
                                        {
                                            "system": "http://terminology.hl7.org/CodeSystem/provenance-participant-type",
                                            "code": "author"
                                        }
                                    ],
                                    "text": "Author"
                                },
                                "role": [
                                    {
                                        "coding": [
                                            {
                                                "system": "http://terminology.hl7.org/CodeSystem/contractsignertypecodes",
                                                "code": "SOURCE"
                                            }
                                        ],
                                        "text": "Source"
                                    }
                                ],
                                "who": {
                                    "reference": "Practitioner/11648064",
                                    "display": "Model, User 437 Cerner"
                                }
                            },
                            {
                                "type": {
                                    "coding": [
                                        {
                                            "system": "http://terminology.hl7.org/CodeSystem/provenance-participant-type",
                                            "code": "author"
                                        }
                                    ],
                                    "text": "Author"
                                },
                                "role": [
                                    {
                                        "coding": [
                                            {
                                                "system": "http://terminology.hl7.org/CodeSystem/contractsignertypecodes",
                                                "code": "SOURCE"
                                            }
                                        ],
                                        "text": "Source"
                                    }
                                ],
                                "who": {
                                    "reference": "Organization/675844",
                                    "display": "Model Hospital"
                                }
                            }
                        ]
                    },
                    "search": {
                        "mode": "include"
                    }
                }
            ]
        }.freeze
    end
end
  