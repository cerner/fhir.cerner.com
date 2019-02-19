module Cerner
  module Resources

    SOARIAN_FINANCIALS_STU3_PATIENT_ENTRY ||= {
    	"resourceType": "Patient",
    	"id": "104136",
    	"extension": [{
    			"extension": [{
    					"valueString": "6'",
    					"url": "http://DEV3SRF0191.dm50.dev.smed.net/sf-qa1451/soarian/StructureDefinition/patient-userData#Height"
    				}, {
    					"valueString": "234",
    					"url": "http://DEV3SRF0191.dm50.dev.smed.net/sf-qa1451/soarian/StructureDefinition/patient-userData#Weight"
    				}
    			],
    			"url": "http://cerner.hs.fhir.com/StructureDefinition/patient-userData"
    		}
    	],
    	"identifier": [{
    			"type": {
    				"coding": [{
    						"system": "http://hl7.org/fhir/v2/0203",
    						"code": "ZPN",
    						"display": "External Person ID"
    					}
    				],
    				"text": "External Person ID"
    			},
    			"value": "218139651",
    			"period": {
    				"start": "2018-09-27"
    			},
    			"assigner": {
    				"reference": "Organization/28",
    				"display": "EM Health System"
    			}
    		}, {
    			"type": {
    				"coding": [{
    						"system": "http://hl7.org/fhir/v2/0203",
    						"code": "PN",
    						"display": "Person Number"
    					}
    				],
    				"text": "Person Number"
    			},
    			"value": "104136",
    			"period": {
    				"start": "2018-09-27"
    			},
    			"assigner": {
    				"reference": "Organization/900000",
    				"display": "System Id Issuer"
    			}
    		}, {
    			"type": {
    				"coding": [{
    						"system": "http://hl7.org/fhir/v2/0203",
    						"code": "MR",
    						"display": "Medical Record Number"
    					}
    				],
    				"text": "Medical Record Number"
    			},
    			"value": "11080323",
    			"period": {
    				"start": "2018-09-27"
    			},
    			"assigner": {
    				"reference": "Organization/28",
    				"display": "EM Health System"
    			}
    		}, {
    			"type": {
    				"coding": [{
    						"system": "http://hl7.org/fhir/v2/0203",
    						"code": "SS",
    						"display": "Social Security Number"
    					}
    				],
    				"text": "Social Security Number"
    			},
    			"value": "547487444",
    			"period": {
    				"start": "2018-12-14"
    			},
    			"assigner": {
    				"reference": "Organization/900001",
    				"display": "U. S. Government"
    			}
    		}, {
    			"type": {
    				"coding": [{
    						"system": "http://hl7.org/fhir/v2/0203",
    						"code": "MR",
    						"display": "Medical Record Number"
    					}
    				],
    				"text": "Medical Record Number"
    			},
    			"value": "254147",
    			"period": {
    				"start": "2018-12-14"
    			},
    			"assigner": {
    				"reference": "Organization/2342",
    				"display": "Steamy Falls IP Hosp"
    			}
    		}, {
    			"type": {
    				"coding": [{
    						"system": "http://hl7.org/fhir/v2/0203",
    						"code": "DL",
    						"display": "Drivers License"
    					}
    				],
    				"text": "Drivers License"
    			},
    			"value": "25447457",
    			"period": {
    				"start": "2018-12-14"
    			},
    			"assigner": {
    				"reference": "Organization/118",
    				"display": "Commonwealth of PA"
    			}
    		}
    	],
    	"active": true,
    	"name": [{
    			"use": "OFFICIAL",
    			"text": "James,Smith,Edward",
    			"family": "James",
    			"given": [
    				"Smith",
    				"Edward"
    			],
    			"period": {
    				"start": "2018-12-14"
    			}
    		}
    	],
    	"telecom": [{
    			"extension": [{
    					"valueBoolean": true,
    					"url": "http://hl7.org/fhir/StructureDefinition/iso21090-preferred"
    				}
    			],
    			"system": "PHONE",
    			"value": "(645) 748 4747",
    			"use": "HOME"
    		}, {
    			"extension": [{
    					"valueBoolean": false,
    					"url": "http://hl7.org/fhir/StructureDefinition/iso21090-preferred"
    				}
    			],
    			"system": "PHONE",
    			"value": "(547) 457 4848",
    			"use": "MOBILE"
    		}, {
    			"system": "EMAIL",
    			"value": "james@cerner.com"
    		}
    	],
    	"gender": "MALE",
    	"birthDate": "2008-12-11",
    	"deceasedBoolean": false,
    	"address": [{
    			"use": "HOME",
    			"type": "POSTAL",
    			"text": "51 Valley Stream parkway,Malvern,PA 19355",
    			"line": [
    				"51 Valley Stream parkway"
    			],
    			"city": "Malvern",
    			"district": "Chester",
    			"state": "PA",
    			"postalCode": "19355",
    			"country": "US",
    			"period": {
    				"start": "2018-12-14"
    			}
    		}
    	],
    	"maritalStatus": {
    		"coding": [{
    				"system": "http://hl7.org/fhir/v3/MaritalStatus",
    				"code": "S",
    				"display": "Single"
    			}
    		],
    		"text": "Single"
    	},
    	"communication": [{
    			"language": {
    				"coding": [{
    						"system": "urn:ietf:bcp:47",
    						"code": "en",
    						"display": "ENGLISH"
    					}
    				],
    				"text": "ENGLISH"
    			},
    			"preferred": true
    		}
    	]
    }

    SOARIAN_FINANCIALS_STU3_PATIENT_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "567efe76-2573-46be-85dc-8ea698dfa9d0",
      "type": "searchset",
      "total": 1,
      "link": [
        {
          "relation": "self",
          "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Patient?_id=4342009&_count=20"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Patient/4342009",
          "resource": {
            "resourceType": "Patient",
            "id": "4342009",
            "meta": {
              "versionId": "2",
              "lastUpdated": "2016-06-22T20:51:35.000Z"
            },
            "text": {
              "status": "generated",
              "div": "&lt;div&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Name&lt;/b&gt;: Smart, Nancy&lt;/p&gt;&lt;p&gt;&lt;b&gt;DOB&lt;/b&gt;: 1980-08-11&lt;/p&gt;&lt;p&gt;&lt;b&gt;Sex&lt;/b&gt;: Female&lt;/p&gt;&lt;p&gt;&lt;b&gt;Marital Status&lt;/b&gt;: Married&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;/div&gt;"
            },
            "extension": [
              {
                "url": "http://hl7.org/fhir/StructureDefinition/patient-birthTime",
                "valueDateTime": "1980-08-11T12:33:00.000-05:00"
              },
              {
                "url": "http://fhir.org/guides/argonaut/StructureDefinition/argo-birthsex",
                "valueCode": "F"
              },
              {
                "url": "http://fhir.org/guides/argonaut/StructureDefinition/argo-race",
                "extension": [
                  {
                    "url": "ombCategory",
                    "valueCoding": {
                      "system": "http://hl7.org/fhir/v3/Race",
                      "code": "2106-3",
                      "display": "White",
                      "userSelected": false
                    }
                  },
                  {
                    "url": "text",
                    "valueString": "White"
                  }
                ]
              },
              {
                "url": "http://fhir.org/guides/argonaut/StructureDefinition/argo-ethnicity",
                "extension": [
                  {
                    "url": "ombCategory",
                    "valueCoding": {
                      "system": "http://hl7.org/fhir/v3/Ethnicity",
                      "code": "2186-5",
                      "display": "Not Hispanic or Latino",
                      "userSelected": false
                    }
                  },
                  {
                    "url": "text",
                    "valueString": "Not Hispanic or Latino"
                  }
                ]
              }
            ],
            "identifier": [
              {
                "use": "usual",
                "type": {
                  "coding": [
                    {
                      "system": "http://hl7.org/fhir/v2/0203",
                      "code": "MR",
                      "display": "Medical record number",
                      "userSelected": false
                    }
                  ],
                  "text": "MRN"
                },
                "system": "urn:oid:1.1.1.1.1.1",
                "value": "10002701",
                "period": {
                  "start": "2016-06-22T20:43:05.000Z"
                }
              }
            ],
            "active": true,
            "name": [
              {
                "use": "official",
                "text": "Smart, Nancy",
                "family": [
                  "Smart"
                ],
                "given": [
                  "Nancy"
                ],
                "period": {
                  "start": "2016-06-22T20:43:05.000Z"
                }
              }
            ],
            "gender": "female",
            "birthDate": "1980-08-11",
            "maritalStatus": {
              "coding": [
                {
                  "system": "http://hl7.org/fhir/v3/MaritalStatus",
                  "code": "M",
                  "display": "Married",
                  "userSelected": false
                }
              ],
              "text": "Married"
            },
            "communication": [
              {
                "language": {
                  "coding": [
                    {
                      "system": "urn:ietf:bcp:47",
                      "code": "en",
                      "display": "English",
                      "userSelected": false
                    }
                  ],
                  "text": "English"
                },
                "preferred": true
              }
            ],
            "careProvider": [
              {
                "reference": "Practitioner/1912007",
                "display": "Forrest, Fhir"
              }
            ]
          }
        }
      ]
    }

    SOARIAN_FINANCIALS_STU3_PATIENT_UPDATE ||= {
    	"resourceType": "Patient",
    	"id": "104136",
    	"extension": [{
    			"extension": [{
    					"valueString": "6'",
    					"url": "http://DEV3SRF0191.dm50.dev.smed.net/sf-qa1451/soarian/StructureDefinition/patient-userData#Height"
    				}, {
    					"valueString": "234",
    					"url": "http://DEV3SRF0191.dm50.dev.smed.net/sf-qa1451/soarian/StructureDefinition/patient-userData#Weight"
    				}
    			],
    			"url": "http://cerner.hs.fhir.com/StructureDefinition/patient-userData"
    		}
    	],
    	"identifier": [{
    			"type": {
    				"coding": [{
    						"system": "http://hl7.org/fhir/v2/0203",
    						"code": "ZPN",
    						"display": "External Person ID"
    					}
    				],
    				"text": "External Person ID"
    			},
    			"value": "218139651",
    			"period": {
    				"start": "2018-09-27"
    			},
    			"assigner": {
    				"reference": "Organization/28",
    				"display": "EM Health System"
    			}
    		}, {
    			"type": {
    				"coding": [{
    						"system": "http://hl7.org/fhir/v2/0203",
    						"code": "PN",
    						"display": "Person Number"
    					}
    				],
    				"text": "Person Number"
    			},
    			"value": "104136",
    			"period": {
    				"start": "2018-09-27"
    			},
    			"assigner": {
    				"reference": "Organization/900000",
    				"display": "System Id Issuer"
    			}
    		}, {
    			"type": {
    				"coding": [{
    						"system": "http://hl7.org/fhir/v2/0203",
    						"code": "MR",
    						"display": "Medical Record Number"
    					}
    				],
    				"text": "Medical Record Number"
    			},
    			"value": "11080323",
    			"period": {
    				"start": "2018-09-27"
    			},
    			"assigner": {
    				"reference": "Organization/28",
    				"display": "EM Health System"
    			}
    		}, {
    			"type": {
    				"coding": [{
    						"system": "http://hl7.org/fhir/v2/0203",
    						"code": "SS",
    						"display": "Social Security Number"
    					}
    				],
    				"text": "Social Security Number"
    			},
    			"value": "547487444",
    			"period": {
    				"start": "2018-12-14"
    			},
    			"assigner": {
    				"reference": "Organization/900001",
    				"display": "U. S. Government"
    			}
    		}, {
    			"type": {
    				"coding": [{
    						"system": "http://hl7.org/fhir/v2/0203",
    						"code": "MR",
    						"display": "Medical Record Number"
    					}
    				],
    				"text": "Medical Record Number"
    			},
    			"value": "254147",
    			"period": {
    				"start": "2018-12-14"
    			},
    			"assigner": {
    				"reference": "Organization/2342",
    				"display": "Steamy Falls IP Hosp"
    			}
    		}, {
    			"type": {
    				"coding": [{
    						"system": "http://hl7.org/fhir/v2/0203",
    						"code": "DL",
    						"display": "Drivers License"
    					}
    				],
    				"text": "Drivers License"
    			},
    			"value": "25447457",
    			"period": {
    				"start": "2018-12-14"
    			},
    			"assigner": {
    				"reference": "Organization/118",
    				"display": "Commonwealth of PA"
    			}
    		}
    	],
    	"active": true,
    	"name": [{
    			"use": "OFFICIAL",
    			"text": "James,Smith,Edward",
    			"family": "James",
    			"given": [
    				"Smith",
    				"Edward"
    			],
    			"period": {
    				"start": "2018-12-14"
    			}
    		}
    	],
    	"telecom": [{
    			"extension": [{
    					"valueBoolean": true,
    					"url": "http://hl7.org/fhir/StructureDefinition/iso21090-preferred"
    				}
    			],
    			"system": "PHONE",
    			"value": "(645) 748 4747",
    			"use": "HOME"
    		}, {
    			"extension": [{
    					"valueBoolean": false,
    					"url": "http://hl7.org/fhir/StructureDefinition/iso21090-preferred"
    				}
    			],
    			"system": "PHONE",
    			"value": "(547) 457 4848",
    			"use": "MOBILE"
    		}, {
    			"system": "EMAIL",
    			"value": "james@cerner.com"
    		}
    	],
    	"gender": "MALE",
    	"birthDate": "2008-12-11",
    	"deceasedBoolean": false,
    	"address": [{
    			"use": "HOME",
    			"type": "POSTAL",
    			"text": "51 Valley Stream parkway,Malvern,PA 19355",
    			"line": [
    				"51 Valley Stream parkway"
    			],
    			"city": "Malvern",
    			"district": "Chester",
    			"state": "PA",
    			"postalCode": "19355",
    			"country": "US",
    			"period": {
    				"start": "2018-12-14"
    			}
    		}
    	],
    	"maritalStatus": {
    		"coding": [{
    				"system": "http://hl7.org/fhir/v3/MaritalStatus",
    				"code": "S",
    				"display": "Single"
    			}
    		],
    		"text": "Single"
    	},
    	"communication": [{
    			"language": {
    				"coding": [{
    						"system": "urn:ietf:bcp:47",
    						"code": "en",
    						"display": "ENGLISH"
    					}
    				],
    				"text": "ENGLISH"
    			},
    			"preferred": true
    		}
    	]
    }
  end
end
