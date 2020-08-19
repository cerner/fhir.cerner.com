module Cerner
  module Resources
    R4_DOCUMENT_REFERENCE ||= {
      "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/DocumentReference/13307291",
      "resource": {
          "resourceType": "DocumentReference",
          "id": "13307291",
          "meta": {
              "versionId": "1",
              "lastUpdated": "2019-12-16T23:10:29.000Z"
          },
          "text": {
              "status": "generated",
              "div": "&lt;div xmlns=\&quot;http://www.w3.org/1999/xhtml\&quot;&gt;&lt;p&gt;&lt;b&gt;Document Reference&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient Name&lt;/b&gt;: SMART Jr, FRED RICK&lt;/p&gt;&lt;p&gt;&lt;b&gt;Document Type&lt;/b&gt;: Progress Note-Physician&lt;/p&gt;&lt;p&gt;&lt;b&gt;Service Date&lt;/b&gt;: Dec 16, 2019 11:10 P.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;Document Status&lt;/b&gt;: Final&lt;/p&gt;&lt;p&gt;&lt;b&gt;Verifying Provider&lt;/b&gt;: Portal, Portal&lt;/p&gt;&lt;/div&gt;"
          },
          "status": "current",
          "docStatus": "final",
          "type": {
              "coding": [
                  {
                      "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/72",
                      "code": "2820555",
                      "display": "Progress Note-Physician",
                      "userSelected": true
                  },
                  {
                      "system": "http://loinc.org",
                      "code": "11506-3",
                      "userSelected": false
                  }
              ],
              "text": "Progress Note-Physician"
          },
          "category": [
              {
                  "coding": [
                      {
                          "system": "http://hl7.org/fhir/us/core/CodeSystem/us-core-documentreference-category",
                          "code": "clinical-note",
                          "display": "Clinical Note",
                          "userSelected": false
                      }
                  ],
                  "text": "Clinical Note"
              }
          ],
          "subject": {
              "reference": "Patient/4478007",
              "display": "SMART Jr, FRED RICK"
          },
          "author": [
              {
                  "reference": "Practitioner/4464007",
                  "display": "Portal, Portal"
              }
          ],
          "authenticator": {
              "reference": "Practitioner/4464007",
              "display": "Portal, Portal"
          },
          "content": [
              {
                  "attachment": {
                      "contentType": "application/pdf",
                      "url": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Binary/XR-13307291",
                      "creation": "2019-12-16T23:10:29.000Z"
                  }
              }
          ],
          "context": {
              "encounter": [
                  {
                      "reference": "Encounter/4375906"
                  }
              ],
              "period": {
                  "end": "2019-12-16T23:10:29.000Z"
              }
          }
      }
    }

    R4_DOCUMENT_REFERENCE_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "777396d4-5240-437b-9bec-fd02a0926d57",
      "type": "searchset",
      "link": [
          {
              "relation": "self",
              "url": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/DocumentReference?patient=4478007"
          },
          {
              "relation": "next",
              "url": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/DocumentReference?patient=4478007&-pageContext=eNqNUm1r2zAQ_i0lY58ScZLjOTYU4tjqMHRxsJWw7osRqpIKbMkoSllHf_zk1GOl2UtBcO_3nO4eYTokpNXSou74KJBolVaCt_JRaod4x38YjXp-UPqA0rO14QeZGe3kdzdZXol_1t8bceoGRVjlpFUcVdJZ5YOrJzpk1NJlY-hqOTlZnbw0Szp1n0jboV7ao9HJ_kHZvuVPyMmub-yDGUH5sUd-hGQ-jxYAke-B4whmgP1jAMn5IQD45kMEcDzDZEbmDMcJhAkOEUR4CGG4hBfGSmRNK3tr9qqV_x2CXd9Oi_yawNwjDbPoU9t6sUrrImtSxqpitWW09i56c0MzVuxok6eMeseet0f5Duns6bWZjevOjRi6ftmwu-a2qNlbI_Vg5brZVOWuyGn1cbKs6dnltVWZ372Z7q99Rnh_-JzWGV3nxfrz-1kw0umSA6U_M3fK6A8vHLvMGFj3G39Nv7Im21Z1WQ13XRAIw3CKAxzHZBFNcRiFMSFREPjLT-HVvjYV3RXltv5TcQARifFQ_CkMogWJfxX7Dz5PnuEnbq8A8w%3D%3D&-pageDirection=NEXT"
          }
      ],
      "entry": [
          {
              "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/DocumentReference/13307291",
              "resource": {
                  "resourceType": "DocumentReference",
                  "id": "13307291",
                  "meta": {
                      "versionId": "1",
                      "lastUpdated": "2019-12-16T23:10:29.000Z"
                  },
                  "text": {
                      "status": "generated",
                      "div": "&lt;div xmlns=\&quot;http://www.w3.org/1999/xhtml\&quot;&gt;&lt;p&gt;&lt;b&gt;Document Reference&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient Name&lt;/b&gt;: SMART Jr, FRED RICK&lt;/p&gt;&lt;p&gt;&lt;b&gt;Document Type&lt;/b&gt;: Progress Note-Physician&lt;/p&gt;&lt;p&gt;&lt;b&gt;Service Date&lt;/b&gt;: Dec 16, 2019 11:10 P.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;Document Status&lt;/b&gt;: Final&lt;/p&gt;&lt;p&gt;&lt;b&gt;Verifying Provider&lt;/b&gt;: Portal, Portal&lt;/p&gt;&lt;/div&gt;"
                  },
                  "status": "current",
                  "docStatus": "final",
                  "type": {
                      "coding": [
                          {
                              "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/72",
                              "code": "2820555",
                              "display": "Progress Note-Physician",
                              "userSelected": true
                          },
                          {
                              "system": "http://loinc.org",
                              "code": "11506-3",
                              "userSelected": false
                          }
                      ],
                      "text": "Progress Note-Physician"
                  },
                  "category": [
                      {
                          "coding": [
                              {
                                  "system": "http://hl7.org/fhir/us/core/CodeSystem/us-core-documentreference-category",
                                  "code": "clinical-note",
                                  "display": "Clinical Note",
                                  "userSelected": false
                              }
                          ],
                          "text": "Clinical Note"
                      }
                  ],
                  "subject": {
                      "reference": "Patient/4478007",
                      "display": "SMART Jr, FRED RICK"
                  },
                  "author": [
                      {
                          "reference": "Practitioner/4464007",
                          "display": "Portal, Portal"
                      }
                  ],
                  "authenticator": {
                      "reference": "Practitioner/4464007",
                      "display": "Portal, Portal"
                  },
                  "content": [
                      {
                          "attachment": {
                              "contentType": "application/pdf",
                              "url": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Binary/XR-13307291",
                              "creation": "2019-12-16T23:10:29.000Z"
                          }
                      }
                  ],
                  "context": {
                      "encounter": [
                          {
                              "reference": "Encounter/4375906"
                          }
                      ],
                      "period": {
                          "end": "2019-12-16T23:10:29.000Z"
                      }
                  }
              }
          },
          {
              "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/DocumentReference/13307287",
              "resource": {
                  "resourceType": "DocumentReference",
                  "id": "13307287",
                  "meta": {
                      "versionId": "1",
                      "lastUpdated": "2019-12-16T22:47:57.000Z"
                  },
                  "text": {
                      "status": "generated",
                      "div": "&lt;div xmlns=\&quot;http://www.w3.org/1999/xhtml\&quot;&gt;&lt;p&gt;&lt;b&gt;Document Reference&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient Name&lt;/b&gt;: SMART Jr, FRED RICK&lt;/p&gt;&lt;p&gt;&lt;b&gt;Document Type&lt;/b&gt;: Progress Note-Physician&lt;/p&gt;&lt;p&gt;&lt;b&gt;Service Date&lt;/b&gt;: Dec 16, 2019 10:47 P.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;Document Status&lt;/b&gt;: Final&lt;/p&gt;&lt;p&gt;&lt;b&gt;Verifying Provider&lt;/b&gt;: Portal, Portal&lt;/p&gt;&lt;/div&gt;"
                  },
                  "status": "current",
                  "docStatus": "final",
                  "type": {
                      "coding": [
                          {
                              "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/72",
                              "code": "2820555",
                              "display": "Progress Note-Physician",
                              "userSelected": true
                          },
                          {
                              "system": "http://loinc.org",
                              "code": "11506-3",
                              "userSelected": false
                          }
                      ],
                      "text": "Progress Note-Physician"
                  },
                  "category": [
                      {
                          "coding": [
                              {
                                  "system": "http://hl7.org/fhir/us/core/CodeSystem/us-core-documentreference-category",
                                  "code": "clinical-note",
                                  "display": "Clinical Note",
                                  "userSelected": false
                              }
                          ],
                          "text": "Clinical Note"
                      }
                  ],
                  "subject": {
                      "reference": "Patient/4478007",
                      "display": "SMART Jr, FRED RICK"
                  },
                  "author": [
                      {
                          "reference": "Practitioner/4464007",
                          "display": "Portal, Portal"
                      }
                  ],
                  "authenticator": {
                      "reference": "Practitioner/4464007",
                      "display": "Portal, Portal"
                  },
                  "content": [
                      {
                          "attachment": {
                              "contentType": "application/pdf",
                              "url": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Binary/XR-13307287",
                              "creation": "2019-12-16T22:47:57.000Z"
                          }
                      }
                  ],
                  "context": {
                      "encounter": [
                          {
                              "reference": "Encounter/4375906"
                          }
                      ],
                      "period": {
                          "end": "2019-12-16T22:47:57.000Z"
                      }
                  }
              }
          },
          {
              "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/DocumentReference/13303295",
              "resource": {
                  "resourceType": "DocumentReference",
                  "id": "13303295",
                  "meta": {
                      "versionId": "1",
                      "lastUpdated": "2019-12-16T18:05:25.000Z"
                  },
                  "text": {
                      "status": "generated",
                      "div": "&lt;div xmlns=\&quot;http://www.w3.org/1999/xhtml\&quot;&gt;&lt;p&gt;&lt;b&gt;Document Reference&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient Name&lt;/b&gt;: SMART Jr, FRED RICK&lt;/p&gt;&lt;p&gt;&lt;b&gt;Document Type&lt;/b&gt;: Progress Note-Physician&lt;/p&gt;&lt;p&gt;&lt;b&gt;Service Date&lt;/b&gt;: Dec 16, 2019 6:05 P.M. UTC&lt;/p&gt;&lt;p&gt;&lt;b&gt;Document Status&lt;/b&gt;: Final&lt;/p&gt;&lt;p&gt;&lt;b&gt;Verifying Provider&lt;/b&gt;: Portal, Portal&lt;/p&gt;&lt;/div&gt;"
                  },
                  "status": "current",
                  "docStatus": "final",
                  "type": {
                      "coding": [
                          {
                              "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/72",
                              "code": "2820555",
                              "display": "Progress Note-Physician",
                              "userSelected": true
                          },
                          {
                              "system": "http://loinc.org",
                              "code": "11506-3",
                              "userSelected": false
                          }
                      ],
                      "text": "Progress Note-Physician"
                  },
                  "category": [
                      {
                          "coding": [
                              {
                                  "system": "http://hl7.org/fhir/us/core/CodeSystem/us-core-documentreference-category",
                                  "code": "clinical-note",
                                  "display": "Clinical Note",
                                  "userSelected": false
                              }
                          ],
                          "text": "Clinical Note"
                      }
                  ],
                  "subject": {
                      "reference": "Patient/4478007",
                      "display": "SMART Jr, FRED RICK"
                  },
                  "author": [
                      {
                          "reference": "Practitioner/4464007",
                          "display": "Portal, Portal"
                      }
                  ],
                  "authenticator": {
                      "reference": "Practitioner/4464007",
                      "display": "Portal, Portal"
                  },
                  "content": [
                      {
                          "attachment": {
                              "contentType": "application/pdf",
                              "url": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Binary/XR-13303295",
                              "creation": "2019-12-16T18:05:25.000Z"
                          }
                      }
                  ],
                  "context": {
                      "encounter": [
                          {
                              "reference": "Encounter/4375906"
                          }
                      ],
                      "period": {
                          "end": "2019-12-16T18:05:25.000Z"
                      }
                  }
              }
          }
      ]
    }

    R4_DOCUMENT_REFERENCE_POST ||= {
      "resourceType": "DocumentReference",
      "status": "current",
      "docStatus": "final",
      "type": {
        "coding": [
          {
            "system": "https://fhir.cerner.com/eb2384f8-839e-4c6e-8b29-18e71db1a0b1/codeSet/72",
            "code": "2820507",
            "display": "Admission Note-Physician",
            "userSelected": true
          },
          {
            "system": "http://loinc.org",
            "code": "83805-2",
            "userSelected": false
          }
        ],
      },
      "subject": {
        "reference": "Patient/1415936"
      },
      "author": [
        {
          "reference": "Practitioner/123456",
        }
      ],
      "authenticator": {
        "reference": "Practitioner/123456"
      },
      "content": [
        {
          "attachment": {
            "contentType": "text/xml",
            "url": "https://fhir-open.devcerner.com/r4/eb2384f8-839e-4c6e-8b29-18e71db1a0b1/Binary/R-17821258",
            "title": "title",
            "creation": "2020-07-29T21:02:04.000Z"
          }
        }
      ],
      "context": {
        "encounter": [
          {
            "reference": "Encounter/123456"
          }
        ],
        "period": {
          "start": "2020-01-01T00:00:00.000Z",
          "end": "2020-01-01T01:00:00.000Z"
        }
      }
    }

    R4_DOCUMENT_REFERENCE_UPDATE ||= {
      "resourceType": "DocumentReference",
      "id": "123456",
      "status": "current",
      "docStatus": "final",
      "type": {
        "coding": [
          {
            "system": "https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/72",
            "code": "2820507",
            "display": "Admission Note-Physician",
            "userSelected": true
          }
        ]
      },
      "author": [
        {
          "reference": "Practitioner/123456"
        }
      ],
      "authenticator": {
        "reference": "Practitioner/123456"
      },
      "identifier": [
        {
          "system": "https://fhir.cerner.com/location/source/0/0/1",
          "value": "identifier 1"
        }
      ],
      "content":  [
        {
          "attachment": {
            "contentType": "application/xml;charset=utf-8",
            "data": "PGh08L3RpdGxlPgoKRG9jdW1lbnQgY29udGVudCEKCjwvaHRtbD4=",
            "title": "title",
            "creation": "2020-01-15T14:35:29.000Z"
          }
        }
      ],
      "context": {
        "period": {
          "start": "2020-01-01T00:00:00.000Z",
          "end": "2020-01-01T01:00:00.000Z"
        }
      }
    }
  end
end
