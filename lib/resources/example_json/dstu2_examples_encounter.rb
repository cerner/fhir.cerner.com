module Cerner
  module Resources

    DSTU2_ENCOUNTER ||=
        {
          "resourceType": "Encounter",
          "id": "4027918",
          "meta": {
              "versionId": "1",
              "lastUpdated": "2016-06-27T15:01:18.000Z"
          },
          "text": {
              "status": "generated",
              "div": "&lt;div>&lt;p>&lt;b>Encounter&lt;/b>&lt;/p>&lt;p>&lt;b>Location&lt;/b>: Baseline East Medical Center, BE Hospital, 1N, 0152, A&lt;/p>&lt;p>&lt;b>Type&lt;/b>: Inpatient&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Discharged&lt;/p>&lt;p>&lt;b>Period Start Date&lt;/b>: Wed Jun 22 21:05:00 2016 (UTC)&lt;/p>&lt;p>&lt;b>Attending Physician&lt;/b>: Who, Doctor&lt;/p>&lt;/div>"
          },
          "identifier": [{
              "use": "usual",
              "type": {
                  "text": "FIN NBR"
              },
              "system": "urn:oid:3.3.3.3.3.3",
              "value": "20003412",
              "period": {
                  "start": "2016-06-22T21:06:58.000Z"
              }
          }],
          "status": "finished",
          "class": "inpatient",
          "type": [{
              "text": "Inpatient"
          }],
          "patient": {
              "reference": "Patient/4342010",
              "display": "Smart, Joe"
          },
          "participant": [{
              "type": [{
                  "coding": [{
                      "system": "http://hl7.org/fhir/v3/ParticipationType",
                      "code": "ADM",
                      "display": "admitter",
                      "userSelected": false
                  }],
                  "text": "Admitting Physician"
              }],
              "period": {
                  "start": "2016-11-09T18:07:16.000Z"
              },
              "individual": {
                  "reference": "Practitioner/1",
                  "display": "Who, Doctor"
              }
          }, {
              "type": [{
                  "coding": [{
                      "system": "http://hl7.org/fhir/v3/ParticipationType",
                      "code": "ADM",
                      "display": "admitter",
                      "userSelected": false
                  }],
                  "text": "Admitting Physician"
              }],
              "period": {
                  "start": "2016-11-09T15:44:00.000Z"
              },
              "individual": {
                  "reference": "Practitioner/2048007",
                  "display": "Song, River"
              }
          }, {
              "type": [{
                  "coding": [{
                      "system": "http://hl7.org/fhir/v3/ParticipationType",
                      "code": "ADM",
                      "display": "admitter",
                      "userSelected": false
                  }],
                  "text": "Admitting Physician"
              }],
              "period": {
                  "start": "2016-06-22T21:06:58.000Z"
              },
              "individual": {
                  "reference": "Practitioner/1912007",
                  "display": "Who, Doctor"
              }
          }, {
              "type": [{
                  "coding": [{
                      "system": "http://hl7.org/fhir/v3/ParticipationType",
                      "code": "ATND",
                      "display": "attender",
                      "userSelected": false
                  }],
                  "text": "Attending Physician"
              }],
              "period": {
                  "start": "2016-06-22T21:06:58.000Z"
              },
              "individual": {
                  "reference": "Practitioner/1912007",
                  "display": "Song, River"
              }
          }, {
              "type": [{
                  "coding": [{
                      "system": "http://hl7.org/fhir/v3/ParticipationType",
                      "code": "PPRF",
                      "display": "primary performer",
                      "userSelected": false
                  }],
                  "text": "Ordering Physician"
              }],
              "period": {
                  "start": "2016-06-27T15:03:36.000Z"
              },
              "individual": {
                  "reference": "Practitioner/1912007",
                  "display": "Song, River"
              }
          }, {
              "type": [{
                  "coding": [{
                      "system": "http://hl7.org/fhir/v3/ParticipationType",
                      "code": "PART",
                      "display": "Participation",
                      "userSelected": false
                  }],
                  "text": "Other"
              }],
              "period": {
                  "start": "2016-06-23T18:34:38.000Z",
                  "end": "2016-06-23T18:34:38.000Z"
              },
              "individual": {
                  "reference": "Practitioner/1590015",
                  "display": "Strange, Doctor"
              }
          }, {
              "type": [{
                  "coding": [{
                      "system": "http://hl7.org/fhir/v3/ParticipationType",
                      "code": "REF",
                      "display": "referrer",
                      "userSelected": false
                  }],
                  "text": "Referring Physician"
              }],
              "period": {
                  "start": "2016-06-22T21:06:58.000Z"
              },
              "individual": {
                  "reference": "Practitioner/1912007",
                  "display": "Song, River"
              }
          }],
          "period": {
              "start": "2016-06-22T21:05:00.000Z"
          },
          "location": [{
              "location": {
                  "reference": "Location/35646785",
                  "display": "Baseline East Medical Center, BE Hospital, 1N, 0152, A"
              },
              "status": "completed"
          }],
          "serviceProvider": {
              "reference": "Organization/619848"
          }
      }

    DSTU2_ENCOUNTER_BUNDLE ||=
      {
        "entry": [
          {
            "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Encounter/4027918",
            "resource": {
              "class": "inpatient",
              "id": "4027918",
              "identifier": [
                {
                  "period": {
                    "start": "2016-06-22T21:06:58.000Z"
                  },
                  "system": "urn:oid:3.3.3.3.3.3",
                  "type": {
                    "text": "FIN NBR"
                  },
                  "use": "usual",
                  "value": "20003412"
                }
              ],
              "location": [
                {
                  "location": {
                    "display": "Baseline East Medical Center, BE Hospital, 1N, 0152, A",
                    "reference": "Location/35646785"
                  },
                  "status": "completed"
                }
              ],
              "meta": {
                "lastUpdated": "2016-06-27T15:01:18.000Z",
                "versionId": "1"
              },
              "participant": [
                {
                  "individual": {
                    "display": "Who, Doctor",
                    "reference": "Practitioner/1"
                  },
                  "period": {
                    "start": "2016-11-09T18:07:16.000Z"
                  },
                  "type": [
                    {
                      "coding": [
                        {
                          "code": "ADM",
                          "display": "admitter",
                          "system": "http://hl7.org/fhir/v3/ParticipationType",
                          "userSelected": false
                        }
                      ],
                      "text": "Admitting Physician"
                    }
                  ]
                },
                {
                  "individual": {
                    "display": "Song, River",
                    "reference": "Practitioner/2048007"
                  },
                  "period": {
                    "start": "2016-11-09T15:44:00.000Z"
                  },
                  "type": [
                    {
                      "coding": [
                        {
                          "code": "ADM",
                          "display": "admitter",
                          "system": "http://hl7.org/fhir/v3/ParticipationType",
                          "userSelected": false
                        }
                      ],
                      "text": "Admitting Physician"
                    }
                  ]
                },
                {
                  "individual": {
                    "display": "Strange, Doctor",
                    "reference": "Practitioner/1912007"
                  },
                  "period": {
                    "start": "2016-06-22T21:06:58.000Z"
                  },
                  "type": [
                    {
                      "coding": [
                        {
                          "code": "ADM",
                          "display": "admitter",
                          "system": "http://hl7.org/fhir/v3/ParticipationType",
                          "userSelected": false
                        }
                      ],
                      "text": "Admitting Physician"
                    }
                  ]
                },
                {
                  "individual": {
                    "display": "Strange, Doctor",
                    "reference": "Practitioner/1912007"
                  },
                  "period": {
                    "start": "2016-06-22T21:06:58.000Z"
                  },
                  "type": [
                    {
                      "coding": [
                        {
                          "code": "ATND",
                          "display": "attender",
                          "system": "http://hl7.org/fhir/v3/ParticipationType",
                          "userSelected": false
                        }
                      ],
                      "text": "Attending Physician"
                    }
                  ]
                },
                {
                  "individual": {
                    "display": "Strange, Doctor",
                    "reference": "Practitioner/1912007"
                  },
                  "period": {
                    "start": "2016-06-27T15:03:36.000Z"
                  },
                  "type": [
                    {
                      "coding": [
                        {
                          "code": "PPRF",
                          "display": "primary performer",
                          "system": "http://hl7.org/fhir/v3/ParticipationType",
                          "userSelected": false
                        }
                      ],
                      "text": "Ordering Physician"
                    }
                  ]
                },
                {
                  "individual": {
                    "display": "Frankenstein, Doctor",
                    "reference": "Practitioner/1590015"
                  },
                  "period": {
                    "end": "2016-06-23T18:34:38.000Z",
                    "start": "2016-06-23T18:34:38.000Z"
                  },
                  "type": [
                    {
                      "coding": [
                        {
                          "code": "PART",
                          "display": "Participation",
                          "system": "http://hl7.org/fhir/v3/ParticipationType",
                          "userSelected": false
                        }
                      ],
                      "text": "Other"
                    }
                  ]
                },
                {
                  "individual": {
                    "display": "Strange, Doctor",
                    "reference": "Practitioner/1912007"
                  },
                  "period": {
                    "start": "2016-06-22T21:06:58.000Z"
                  },
                  "type": [
                    {
                      "coding": [
                        {
                          "code": "REF",
                          "display": "referrer",
                          "system": "http://hl7.org/fhir/v3/ParticipationType",
                          "userSelected": false
                        }
                      ],
                      "text": "Referring Physician"
                    }
                  ]
                }
              ],
              "patient": {
                "display": "Smart, Joe",
                "reference": "Patient/4342010"
              },
              "period": {
                "start": "2016-06-22T21:05:00.000Z"
              },
              "resourceType": "Encounter",
              "serviceProvider": {
                "reference": "Organization/619848"
              },
              "status": "finished",
              "text": {
                "div": "&lt;div>&lt;p>&lt;b>Encounter&lt;/b>&lt;/p>&lt;p>&lt;b>Location&lt;/b>: Baseline East Medical Center, BE Hospital, 1N, 0152, A&lt;/p>&lt;p>&lt;b>Type&lt;/b>: Inpatient&lt;/p>&lt;p>&lt;b>Status&lt;/b>: Discharged&lt;/p>&lt;p>&lt;b>Period Start Date&lt;/b>: Wed Jun 22 21:05:00 2016 (UTC)&lt;/p>&lt;p>&lt;b>Attending Physician&lt;/b>: Strange, Doctor&lt;/p>&lt;/div>",
                "status": "generated"
              },
              "type": [
                {
                  "text": "Inpatient"
                }
              ]
            }
          }
        ],
        "id": "9ae23e0d-8335-4dec-ba53-6dabe322dd43",
        "link": [
          {
            "relation": "self",
            "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Encounter?patient=4342010"
          }
        ],
        "resourceType": "Bundle",
        "total": 1,
        "type": "searchset"
      }


  end
end
