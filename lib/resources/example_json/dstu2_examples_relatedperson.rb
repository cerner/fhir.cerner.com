module Cerner
  module Resources

    DSTU2_RELATEDPERSON_ENTRY ||= {
      "resourceType": "RelatedPerson",
      "id": "11325025",
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
        "reference": "Patient/14067892",
        "display": "NOAH, BRANDON"
      },
      "relationship": {
        "coding": [
          {
            "system": "http://hl7.org/fhir/v3/RoleCode",
            "code": "SONC",
            "display": "son",
            "userSelected": false
          }
        ],
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
          "start": "2016-10-14T21:19:33.000Z"
        }
      },
      "gender": "male",
      "birthDate": "1960-03-15",
      "period": {
        "start": "2016-10-14T21:23:59.000Z"
      }
    }

    DSTU2_RELATEDPERSON_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "76f9d039-9829-4e8b-b4b3-1cf44a9f3a08",
      "type": "searchset",
      "total": 4,
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/RelatedPerson?identifier=urn%3Aoid%3A2.16.840.1.113883.3.13.6%7CURN%3ACERNER%3AIDENTITY-FEDERATION%3AREALM%3AAC193C1A-9763-45E1-9FA2-C1C3AA4BA16D%3APRINCIPAL%3API98N2FK5TN"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/RelatedPerson/11325025",
          "resource": {
            "resourceType": "RelatedPerson",
            "id": "11325025",
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
              "reference": "Patient/14067892",
              "display": "NOAH, BRANDON"
            },
            "relationship": {
              "coding": [
                {
                  "system": "http://hl7.org/fhir/v3/RoleCode",
                  "code": "SONC",
                  "display": "son",
                  "userSelected": false
                }
              ],
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
                "start": "2016-10-14T21:19:33.000Z"
              }
            },
            "gender": "male",
            "birthDate": "1960-03-15",
            "period": {
              "start": "2016-10-14T21:23:59.000Z"
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
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/RelatedPerson/11325027",
          "resource": {
            "resourceType": "RelatedPerson",
            "id": "11325027",
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
              "reference": "Patient/14067892",
              "display": "NOAH, BRANDON"
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
              "start": "2016-10-14T21:23:59.000Z"
            }
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/RelatedPerson/11324865",
          "resource": {
            "resourceType": "RelatedPerson",
            "id": "11324865",
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
