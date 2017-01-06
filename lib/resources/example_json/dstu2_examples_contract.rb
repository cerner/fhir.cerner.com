module Cerner
  module Resources

    DSTU2_CONTRACT_ENTRY ||= {
      "resourceType": "Contract",
      "id": "7470218",
      "meta": {
        "versionId": "2"
      },
      "text": {
        "status": "generated",
        "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Contract&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Actor Name&lt;/b&gt;: NOAH, GEORGE&lt;/p&gt;&lt;p&gt;&lt;b&gt;Subject Name&lt;/b&gt;: NOAH, BRANDON&lt;/p&gt;&lt;p&gt;&lt;b&gt;Applies Begin&lt;/b&gt;: Tue Nov  8 21:09:24 2016 (UTC)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Consent report (record artifact)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Subtype&lt;/b&gt;: Consent status (finding)&lt;/p&gt;&lt;/div&gt;"
      },
      "applies": {
        "start": "2016-11-08T21:09:24.000Z"
      },
      "subject": [
        {
          "reference": "Patient/4598008",
          "display": "NOAH, BRANDON"
        }
      ],
      "type": {
        "coding": [
          {
            "system": "https://snomed.ct/sct",
            "code": "371537001",
            "display": "Consent report (record artifact)"
          }
        ],
        "text": "Consent report (record artifact)"
      },
      "subtype": [
        {
          "coding": [
            {
              "system": "https://snomed.ct/sct",
              "code": "309370004",
              "display": "Consent status (finding)"
            }
          ],
          "text": "Consent status (finding)"
        }
      ],
      "action": [
        {
          "coding": [
            {
              "system": "https://snomed.ct/sct",
              "code": "441898007",
              "display": "Consented (qualifier value)"
            }
          ],
          "text": "Consented (qualifier value)"
        }
      ],
      "actionReason": [
        {
          "coding": [
            {
              "system": "https://snomed.ct/sct",
              "code": "425691002",
              "display": "Consent given for electronic record sharing (finding)"
            }
          ],
          "text": "Consent given for electronic record sharing (finding)"
        }
      ],
      "actor": [
        {
          "entity": {
            "reference": "RelatedPerson/7470218",
            "display": "NOAH, GEORGE"
          },
          "role": [
            {
              "text": "Authorized Representative"
            }
          ]
        }
      ]
    }

    DSTU2_CONTRACT_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "b5c1e566-ba97-4523-b113-83d1125e7d1d",
      "type": "searchset",
      "total": 2,
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Contract?subject=Patient%2F4598008"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Contract/7470218",
          "resource": {
            "resourceType": "Contract",
            "id": "7470218",
            "meta": {
              "versionId": "2"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Contract&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Actor Name&lt;/b&gt;: NOAH, GEORGE&lt;/p&gt;&lt;p&gt;&lt;b&gt;Subject Name&lt;/b&gt;: NOAH, BRANDON&lt;/p&gt;&lt;p&gt;&lt;b&gt;Applies Begin&lt;/b&gt;: Tue Nov  8 21:09:24 2016 (UTC)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Consent report (record artifact)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Subtype&lt;/b&gt;: Consent status (finding)&lt;/p&gt;&lt;/div&gt;"
            },
            "applies": {
              "start": "2016-11-08T21:09:24.000Z"
            },
            "subject": [
              {
                "reference": "Patient/4598008",
                "display": "NOAH, BRANDON"
              }
            ],
            "type": {
              "coding": [
                {
                  "system": "https://snomed.ct/sct",
                  "code": "371537001",
                  "display": "Consent report (record artifact)"
                }
              ],
              "text": "Consent report (record artifact)"
            },
            "subtype": [
              {
                "coding": [
                  {
                    "system": "https://snomed.ct/sct",
                    "code": "309370004",
                    "display": "Consent status (finding)"
                  }
                ],
                "text": "Consent status (finding)"
              }
            ],
            "action": [
              {
                "coding": [
                  {
                    "system": "https://snomed.ct/sct",
                    "code": "441898007",
                    "display": "Consented (qualifier value)"
                  }
                ],
                "text": "Consented (qualifier value)"
              }
            ],
            "actionReason": [
              {
                "coding": [
                  {
                    "system": "https://snomed.ct/sct",
                    "code": "425691002",
                    "display": "Consent given for electronic record sharing (finding)"
                  }
                ],
                "text": "Consent given for electronic record sharing (finding)"
              }
            ],
            "actor": [
              {
                "entity": {
                  "reference": "RelatedPerson/7470218",
                  "display": "NOAH, GEORGE"
                },
                "role": [
                  {
                    "text": "Authorized Representative"
                  }
                ]
              }
            ]
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Contract/7470237",
          "resource": {
            "resourceType": "Contract",
            "id": "7470237",
            "meta": {
              "versionId": "1"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Contract&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Actor Name&lt;/b&gt;: NOAH, SANDY&lt;/p&gt;&lt;p&gt;&lt;b&gt;Subject Name&lt;/b&gt;: NOAH, BRANDON&lt;/p&gt;&lt;p&gt;&lt;b&gt;Applies Begin&lt;/b&gt;: Tue Nov  8 21:15:10 2016 (UTC)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Consent report (record artifact)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Subtype&lt;/b&gt;: Consent status (finding)&lt;/p&gt;&lt;/div&gt;"
            },
            "applies": {
              "start": "2016-11-08T21:15:10.000Z"
            },
            "subject": [
              {
                "reference": "Patient/4598008",
                "display": "NOAH, BRANDON"
              }
            ],
            "type": {
              "coding": [
                {
                  "system": "https://snomed.ct/sct",
                  "code": "371537001",
                  "display": "Consent report (record artifact)"
                }
              ],
              "text": "Consent report (record artifact)"
            },
            "subtype": [
              {
                "coding": [
                  {
                    "system": "https://snomed.ct/sct",
                    "code": "309370004",
                    "display": "Consent status (finding)"
                  }
                ],
                "text": "Consent status (finding)"
              }
            ],
            "action": [
              {
                "coding": [
                  {
                    "system": "https://snomed.ct/sct",
                    "code": "441898007",
                    "display": "Consented (qualifier value)"
                  }
                ],
                "text": "Consented (qualifier value)"
              }
            ],
            "actionReason": [
              {
                "coding": [
                  {
                    "system": "https://snomed.ct/sct",
                    "code": "425691002",
                    "display": "Consent given for electronic record sharing (finding)"
                  }
                ],
                "text": "Consent given for electronic record sharing (finding)"
              }
            ],
            "actor": [
              {
                "entity": {
                  "reference": "RelatedPerson/7470237",
                  "display": "NOAH, SANDY"
                },
                "role": [
                  {
                    "text": "Authorized Representative"
                  }
                ]
              }
            ]
          }
        }
      ]
    }

    DSTU2_CONTRACT_BUNDLE_INCLUDE_ACTOR ||= {
      "resourceType": "Bundle",
        "id": "ce512c79-4aed-41cf-b617-bcf969ae657a",
        "type": "searchset",
        "total": 2,
        "link": [
          {
            "relation": "self",
            "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Contract?subject=Patient%2F4598008&_include=Contract%3Aactor"
          }
        ],
        "entry": [
          {
            "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Contract/7470218",
            "resource": {
              "resourceType": "Contract",
              "id": "7470218",
              "meta": {
                "versionId": "2"
              },
              "text": {
                "status": "generated",
                "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Contract&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Actor Name&lt;/b&gt;: NOAH, GEORGE&lt;/p&gt;&lt;p&gt;&lt;b&gt;Subject Name&lt;/b&gt;: NOAH, BRANDON&lt;/p&gt;&lt;p&gt;&lt;b&gt;Applies Begin&lt;/b&gt;: Tue Nov  8 21:09:24 2016 (UTC)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Consent report (record artifact)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Subtype&lt;/b&gt;: Consent status (finding)&lt;/p&gt;&lt;/div&gt;"
              },
              "applies": {
                "start": "2016-11-08T21:09:24.000Z"
              },
              "subject": [
                {
                  "reference": "Patient/4598008",
                  "display": "NOAH, BRANDON"
                }
              ],
              "type": {
                "coding": [
                  {
                    "system": "https://snomed.ct/sct",
                    "code": "371537001",
                    "display": "Consent report (record artifact)"
                  }
                ],
                "text": "Consent report (record artifact)"
              },
              "subtype": [
                {
                  "coding": [
                    {
                      "system": "https://snomed.ct/sct",
                      "code": "309370004",
                      "display": "Consent status (finding)"
                    }
                  ],
                  "text": "Consent status (finding)"
                }
              ],
              "action": [
                {
                  "coding": [
                    {
                      "system": "https://snomed.ct/sct",
                      "code": "441898007",
                      "display": "Consented (qualifier value)"
                    }
                  ],
                  "text": "Consented (qualifier value)"
                }
              ],
              "actionReason": [
                {
                  "coding": [
                    {
                      "system": "https://snomed.ct/sct",
                      "code": "425691002",
                      "display": "Consent given for electronic record sharing (finding)"
                    }
                  ],
                  "text": "Consent given for electronic record sharing (finding)"
                }
              ],
              "actor": [
                {
                  "entity": {
                    "reference": "RelatedPerson/7470218",
                    "display": "NOAH, GEORGE"
                  },
                  "role": [
                    {
                      "text": "Authorized Representative"
                    }
                  ]
                }
              ]
            }
          },
          {
            "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Contract/7470237",
            "resource": {
              "resourceType": "Contract",
              "id": "7470237",
              "meta": {
                "versionId": "1"
              },
              "text": {
                "status": "generated",
                "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Contract&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Actor Name&lt;/b&gt;: NOAH, SANDY&lt;/p&gt;&lt;p&gt;&lt;b&gt;Subject Name&lt;/b&gt;: NOAH, BRANDON&lt;/p&gt;&lt;p&gt;&lt;b&gt;Applies Begin&lt;/b&gt;: Tue Nov  8 21:15:10 2016 (UTC)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Type&lt;/b&gt;: Consent report (record artifact)&lt;/p&gt;&lt;p&gt;&lt;b&gt;Subtype&lt;/b&gt;: Consent status (finding)&lt;/p&gt;&lt;/div&gt;"
              },
              "applies": {
                "start": "2016-11-08T21:15:10.000Z"
              },
              "subject": [
                {
                  "reference": "Patient/4598008",
                  "display": "NOAH, BRANDON"
                }
              ],
              "type": {
                "coding": [
                  {
                    "system": "https://snomed.ct/sct",
                    "code": "371537001",
                    "display": "Consent report (record artifact)"
                  }
                ],
                "text": "Consent report (record artifact)"
              },
              "subtype": [
                {
                  "coding": [
                    {
                      "system": "https://snomed.ct/sct",
                      "code": "309370004",
                      "display": "Consent status (finding)"
                    }
                  ],
                  "text": "Consent status (finding)"
                }
              ],
              "action": [
                {
                  "coding": [
                    {
                      "system": "https://snomed.ct/sct",
                      "code": "441898007",
                      "display": "Consented (qualifier value)"
                    }
                  ],
                  "text": "Consented (qualifier value)"
                }
              ],
              "actionReason": [
                {
                  "coding": [
                    {
                      "system": "https://snomed.ct/sct",
                      "code": "425691002",
                      "display": "Consent given for electronic record sharing (finding)"
                    }
                  ],
                  "text": "Consent given for electronic record sharing (finding)"
                }
              ],
              "actor": [
                {
                  "entity": {
                    "reference": "RelatedPerson/7470237",
                    "display": "NOAH, SANDY"
                  },
                  "role": [
                    {
                      "text": "Authorized Representative"
                    }
                  ]
                }
              ]
            }
          },
          {
            "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/RelatedPerson/7470237",
            "resource": {
              "resourceType": "RelatedPerson",
              "id": "7470237",
              "meta": {
                "versionId": "1"
              },
              "text": {
                "status": "generated",
                "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;RelatedPerson&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Name&lt;/b&gt;: NOAH, SANDY&lt;/p&gt;&lt;p&gt;&lt;b&gt;DOB&lt;/b&gt;: 1974-11-08&lt;/p&gt;&lt;p&gt;&lt;b&gt;Sex&lt;/b&gt;: Female&lt;/p&gt;&lt;/div&gt;"
              },
              "identifier": [
                {
                  "use": "usual",
                  "type": {
                    "coding": [
                      {
                        "system": "http://hl7.org/fhir/v2/0203",
                        "code": "AN",
                        "display": "Account number",
                        "userSelected": false
                      }
                    ],
                    "text": "Federated Person Principal"
                  },
                  "system": "urn:oid:2.16.840.1.113883.3.13.6",
                  "value": "URN:CERNER:IDENTITY-FEDERATION:REALM:6A2A9D0D-C19E-4B52-BB97-22732FDAA8D6:PRINCIPAL:A50B81F9AD",
                  "period": {
                    "start": "2016-01-02T05:00:00.000Z",
                    "end": "2017-01-02T05:00:00.000Z"
                  }
                }
              ],
              "patient": {
                "reference": "Patient/4598008",
                "display": "NOAH, BRANDON"
              },
              "relationship": {
                "text": "Son"
              },
              "name": {
                "use": "official",
                "text": "NOAH, SANDY",
                "family": [
                  "NOAH"
                ],
                "given": [
                  "SANDY"
                ],
                "period": {
                  "start": "2016-11-08T21:13:57.000Z"
                }
              },
              "gender": "female",
              "birthDate": "1974-11-08",
              "period": {
                "start": "2016-11-08T21:15:10.000Z"
              }
            }
          },
          {
            "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/RelatedPerson/7470218",
            "resource": {
              "resourceType": "RelatedPerson",
              "id": "7470218",
              "meta": {
                "versionId": "2"
              },
              "text": {
                "status": "generated",
                "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;RelatedPerson&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Name&lt;/b&gt;: NOAH, GEORGE&lt;/p&gt;&lt;p&gt;&lt;b&gt;DOB&lt;/b&gt;: 1976-10-08&lt;/p&gt;&lt;p&gt;&lt;b&gt;Sex&lt;/b&gt;: Male&lt;/p&gt;&lt;/div&gt;"
              },
              "identifier": [
                {
                  "use": "usual",
                  "type": {
                    "coding": [
                      {
                        "system": "http://hl7.org/fhir/v2/0203",
                        "code": "AN",
                        "display": "Account number",
                        "userSelected": false
                      }
                    ],
                    "text": "Federated Person Principal"
                  },
                  "system": "urn:oid:2.16.840.1.113883.3.13.6",
                  "value": "TEST_ALIAS_1"
                }
              ],
              "patient": {
                "reference": "Patient/4598008",
                "display": "NOAH, BRANDON"
              },
              "relationship": {
                "text": "Son"
              },
              "name": {
                "use": "official",
                "text": "NOAH, GEORGE",
                "family": [
                  "NOAH"
                ],
                "given": [
                  "GEORGE"
                ],
                "period": {
                  "start": "2016-11-08T21:08:05.000Z"
                }
              },
              "gender": "male",
              "birthDate": "1976-10-08",
              "period": {
                "start": "2016-11-08T21:09:24.000Z"
              }
            }
          }
        ]
    }
  end
end
