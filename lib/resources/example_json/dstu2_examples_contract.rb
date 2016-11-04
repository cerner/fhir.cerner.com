module Cerner
  module Resources

    DSTU2_CONTRACT_ENTRY ||= {
      "resourceType": "Contract",
      "id": "11325025",
      "meta": {
        "versionId": "3"
      },
      "text": {
        "status": "generated",
        "div": "&lt;div>&lt;p>&lt;b>Contract&lt;/b>&lt;/p>&lt;p>&lt;b>Actor Name&lt;/b>: NOAH, GEORGE&lt;/p>&lt;p>&lt;b>Subject Name&lt;/b>: NOAH, BRANDON&lt;/p>&lt;p>&lt;b>Applies Begin&lt;/b>: Fri Oct 14 21:23:59 2016 (UTC)&lt;/p>&lt;p>&lt;b>Type&lt;/b>: Consent report (record artifact)&lt;/p>&lt;p>&lt;b>Subtype&lt;/b>: Consent status (finding)&lt;/p>&lt;/div>"
      },
      "applies": {
        "start": "2016-10-14T21:23:59.000Z"
      },
      "subject": [
        {
          "reference": "Patient/14067892",
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
            "reference": "RelatedPerson/11325025",
            "display": "NOAH, GEORGE"
          },
          "role": [
            {
              "coding": [
                {
                  "system": "http://snomed.info/sct",
                  "code": "442681007",
                  "display": "Recipient consented (qualifier value)"
                }
              ],
              "text": "Authorized Representative"
            }
          ]
        }
      ]
    } 
    
    DSTU2_CONTRACT_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "876b23a3-04b3-44f3-9bee-b8df9a073117",
      "type": "searchset",
      "total": 2,
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Contract?subject=Patient%2F14067775"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Contract/11324863",
          "resource": {
            "resourceType": "Contract",
            "id": "11324863",
            "meta": {
              "versionId": "3"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div>&lt;p>&lt;b>Contract&lt;/b>&lt;/p>&lt;p>&lt;b>Actor Name&lt;/b>: NOAH, GEORGE&lt;/p>&lt;p>&lt;b>Subject Name&lt;/b>: NOAH, SALLY&lt;/p>&lt;p>&lt;b>Applies Begin&lt;/b>: Fri Oct 14 21:20:53 2016 (UTC)&lt;/p>&lt;p>&lt;b>Type&lt;/b>: Consent report (record artifact)&lt;/p>&lt;p>&lt;b>Subtype&lt;/b>: Consent status (finding)&lt;/p>&lt;/div>"
            },
            "applies": {
              "start": "2016-10-14T21:20:53.000Z"
            },
            "subject": [
              {
                "reference": "Patient/14067775",
                "display": "NOAH, SALLY"
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
                  "reference": "RelatedPerson/11324863",
                  "display": "NOAH, GEORGE"
                },
                "role": [
                  {
                    "coding": [
                      {
                        "system": "http://snomed.info/sct",
                        "code": "442681007",
                        "display": "Recipient consented (qualifier value)"
                      }
                    ],
                    "text": "Authorized Representative"
                  }
                ]
              }
            ]
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Contract/11365084",
          "resource": {
            "resourceType": "Contract",
            "id": "11365084",
            "meta": {
              "versionId": "1"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div>&lt;p>&lt;b>Contract&lt;/b>&lt;/p>&lt;p>&lt;b>Actor Name&lt;/b>: NOAH, SANDRA&lt;/p>&lt;p>&lt;b>Subject Name&lt;/b>: NOAH, SALLY&lt;/p>&lt;p>&lt;b>Applies Begin&lt;/b>: Tue Oct 18 17:32:55 2016 (UTC)&lt;/p>&lt;p>&lt;b>Type&lt;/b>: Consent report (record artifact)&lt;/p>&lt;p>&lt;b>Subtype&lt;/b>: Consent status (finding)&lt;/p>&lt;/div>"
            },
            "applies": {
              "start": "2016-10-18T17:32:55.000Z"
            },
            "subject": [
              {
                "reference": "Patient/14067775",
                "display": "NOAH, SALLY"
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
                  "reference": "RelatedPerson/11365084",
                  "display": "NOAH, SANDRA"
                },
                "role": [
                  {
                    "coding": [
                      {
                        "system": "http://snomed.info/sct",
                        "code": "442681007",
                        "display": "Recipient consented (qualifier value)"
                      }
                    ],
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
        "id": "bae9d7ad-79e4-4c85-9899-ef93f85b2dd5",
        "type": "searchset",
        "total": 2,
        "link": [
          {
            "relation": "self",
            "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Contract?subject=Patient%2F14067775&_include=Contract%3Aactor"
          }
        ],
        "entry": [
          {
            "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Contract/11324863",
            "resource": {
              "resourceType": "Contract",
              "id": "11324863",
              "meta": {
                "versionId": "3"
              },
              "text": {
                "status": "generated",
                "div": "&lt;div>&lt;p>&lt;b>Contract&lt;/b>&lt;/p>&lt;p>&lt;b>Actor Name&lt;/b>: NOAH, GEORGE&lt;/p>&lt;p>&lt;b>Subject Name&lt;/b>: NOAH, SALLY&lt;/p>&lt;p>&lt;b>Applies Begin&lt;/b>: Fri Oct 14 21:20:53 2016 (UTC)&lt;/p>&lt;p>&lt;b>Type&lt;/b>: Consent report (record artifact)&lt;/p>&lt;p>&lt;b>Subtype&lt;/b>: Consent status (finding)&lt;/p>&lt;/div>"
              },
              "applies": {
                "start": "2016-10-14T21:20:53.000Z"
              },
              "subject": [
                {
                  "reference": "Patient/14067775",
                  "display": "NOAH, SALLY"
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
                    "reference": "RelatedPerson/11324863",
                    "display": "NOAH, GEORGE"
                  },
                  "role": [
                    {
                      "coding": [
                        {
                          "system": "http://snomed.info/sct",
                          "code": "442681007",
                          "display": "Recipient consented (qualifier value)"
                        }
                      ],
                      "text": "Authorized Representative"
                    }
                  ]
                }
              ]
            }
          },
          {
            "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Contract/11365084",
            "resource": {
              "resourceType": "Contract",
              "id": "11365084",
              "meta": {
                "versionId": "1"
              },
              "text": {
                "status": "generated",
                "div": "&lt;div>&lt;p>&lt;b>Contract&lt;/b>&lt;/p>&lt;p>&lt;b>Actor Name&lt;/b>: NOAH, SANDRA&lt;/p>&lt;p>&lt;b>Subject Name&lt;/b>: NOAH, SALLY&lt;/p>&lt;p>&lt;b>Applies Begin&lt;/b>: Tue Oct 18 17:32:55 2016 (UTC)&lt;/p>&lt;p>&lt;b>Type&lt;/b>: Consent report (record artifact)&lt;/p>&lt;p>&lt;b>Subtype&lt;/b>: Consent status (finding)&lt;/p>&lt;/div>"
              },
              "applies": {
                "start": "2016-10-18T17:32:55.000Z"
              },
              "subject": [
                {
                  "reference": "Patient/14067775",
                  "display": "NOAH, SALLY"
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
                    "reference": "RelatedPerson/11365084",
                    "display": "NOAH, SANDRA"
                  },
                  "role": [
                    {
                      "coding": [
                        {
                          "system": "http://snomed.info/sct",
                          "code": "442681007",
                          "display": "Recipient consented (qualifier value)"
                        }
                      ],
                      "text": "Authorized Representative"
                    }
                  ]
                }
              ]
            }
          },
          {
            "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/RelatedPerson/11365084",
            "resource": {
              "resourceType": "RelatedPerson",
              "id": "11365084",
              "meta": {
                "versionId": "1"
              },
              "text": {
                "status": "generated",
                "div": "&lt;div>&lt;p>&lt;b>RelatedPerson&lt;/b>&lt;/p>&lt;p>&lt;b>Name&lt;/b>: NOAH, SANDRA&lt;/p>&lt;p>&lt;b>DOB&lt;/b>: 1958-10-01&lt;/p>&lt;p>&lt;b>Sex&lt;/b>: Female&lt;/p>&lt;/div>"
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
                  "value": "URN:CERNER:IDENTITY-FEDERATION:REALM:AC193C1A-9763-45E1-9FA2-C1C3AA4BA16D:PRINCIPAL:R53HZ5ZL8ZX",
                  "period": {
                    "start": "2016-01-01T10:00:00.000Z"
                  }
                }
              ],
              "patient": {
                "reference": "Patient/14067775",
                "display": "NOAH, SALLY"
              },
              "relationship": {
                "coding": [
                  {
                    "system": "http://hl7.org/fhir/v3/RoleCode",
                    "code": "DAUC",
                    "display": "daughter",
                    "userSelected": false
                  }
                ],
                "text": "Daughter"
              },
              "name": {
                "use": "official",
                "text": "NOAH, SANDRA",
                "family": [
                  "NOAH"
                ],
                "given": [
                  "SANDRA"
                ],
                "period": {
                  "start": "2016-10-18T17:31:01.000Z"
                }
              },
              "gender": "female",
              "birthDate": "1958-10-01",
              "period": {
                "start": "2016-10-18T17:32:55.000Z"
              }
            }
          },
          {
            "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/RelatedPerson/11324863",
            "resource": {
              "resourceType": "RelatedPerson",
              "id": "11324863",
              "meta": {
                "versionId": "3"
              },
              "text": {
                "status": "generated",
                "div": "&lt;div>&lt;p>&lt;b>RelatedPerson&lt;/b>&lt;/p>&lt;p>&lt;b>Name&lt;/b>: NOAH, GEORGE&lt;/p>&lt;p>&lt;b>DOB&lt;/b>: 1960-03-15&lt;/p>&lt;p>&lt;b>Sex&lt;/b>: Male&lt;/p>&lt;/div>"
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
                  "value": "URN:CERNER:IDENTITY-FEDERATION:REALM:AC193C1A-9763-45E1-9FA2-C1C3AA4BA16D:PRINCIPAL:PI98N2FK5TN",
                  "period": {
                    "start": "2016-01-01T10:00:00.000Z"
                  }
                }
              ],
              "patient": {
                "reference": "Patient/14067775",
                "display": "NOAH, SALLY"
              },
              "relationship": {
                "coding": [
                  {
                    "system": "http://hl7.org/fhir/v3/RoleCode",
                    "code": "DAUC",
                    "display": "daughter",
                    "userSelected": false
                  }
                ],
                "text": "Daughter"
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
                  "start": "2016-10-14T21:19:33.000Z"
                }
              },
              "gender": "male",
              "birthDate": "1960-03-15",
              "period": {
                "start": "2016-10-14T21:20:53.000Z"
              }
            }
          }
        ]
    }
  end
end
