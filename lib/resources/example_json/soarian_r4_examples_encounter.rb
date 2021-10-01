# frozen_string_literal: true

module Cerner
  module Resources

    SOARIAN_R4_ENCOUNTER_READ_BY_ID ||= {
      "resourceType": 'Encounter',
      "id": 'A879904FD2FE4B2D90C89FDA84E1285F.29019',
      "meta": {
        "lastUpdated": '2021-01-21T15:08:01-05:00'
      },
      "status": 'in-progress',
      "class": {
        "system": 'http://terminology.hl7.org/CodeSystem/v3-ActCode',
        "code": 'IMP',
        "display": 'inpatient encounter'
      },
      "subject": {
        "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
        "display": 'Mcgovern,Astrid Santiago'
      },
      "period": {
        "start": '2020-04-15T16:42:00-04:00'
      },
      "location": [
        {
          "location": {
            "reference": '#35202'
          }
        }
      ],
      "identifier": [
        {
          "system": 'urn:oid:12.00.021.1.3.7.5',
          "value": '29019'
        },
        {
          "system": 'urn:oid:12.00.021.1.3.7.3',
          "value": '1001004'
        },
        {
          "system": 'urn:oid:12.00.021.1.3.7.4',
          "value": '1001004'
        }
      ],
      "type": [
        {
          "coding": [
            {
              "system": 'http://terminology.hl7.org/CodeSystem/data-absent-reason',
              "code": 'unknown',
              "display": 'Unknown'
            }
          ]
        }
      ],
      "reasonCode": [
        {
          "text": 'Pain left side of the body'
        }
      ],
      "participant": [
        {
          "type": [
            {
              "coding": [
                {
                  "system": 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                  "code": 'ATND',
                  "display": 'attender'
                }
              ],
              "text": 'Attending Doctor'
            }
          ],
          "period": {
            "start": '2020-11-11T20:53:00-05:00'
          },
          "individual": {
            "reference": 'Practitioner/DF2821C049CC47E6A37C6B796DF4CF1D',
            "display": 'Godziszewski,Janet Kris'
          }
        },
        {
          "type": [
            {
              "coding": [
                {
                  "system": 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                  "code": 'CON',
                  "display": 'consultant'
                }
              ],
              "text": 'Consulting Doctor'
            }
          ],
          "period": {
            "start": '2020-11-11T20:53:00-05:00'
          },
          "individual": {
            "reference": 'Practitioner/4F69EC72C5AA48988E5E73832887E634',
            "display": 'Aguilar,Melva Delaine'
          }
        },
        {
          "type": [
            {
              "coding": [
                {
                  "system": 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                  "code": 'CON',
                  "display": 'consultant'
                }
              ],
              "text": 'Consulting Doctor'
            }
          ],
          "period": {
            "start": '2020-11-11T20:53:00-05:00'
          },
          "individual": {
            "reference": 'Practitioner/D8A9F3EADBE041688ADD843BBD98CAB0',
            "display": "O'Reilly,Rose"
          }
        },
        {
          "type": [
            {
              "coding": [
                {
                  "system": 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                  "code": 'ADM',
                  "display": 'admitter'
                }
              ],
              "text": 'Admitting Doctor'
            }
          ],
          "period": {
            "start": '2020-11-11T20:53:00-05:00'
          },
          "individual": {
            "reference": 'Practitioner/DF2821C049CC47E6A37C6B796DF4CF1D',
            "display": 'Godziszewski,Janet Kris'
          }
        }
      ],
      "contained": [
        {
          "resourceType": 'Location',
          "name": 'Inferno',
          "id": '35202',
          "status": 'active',
          "telecom": [
            {
              "system": 'phone',
              "value": '6102196300'
            },
            {
              "system": 'fax',
              "value": '6102196300'
            }
          ],
          "address": {
            "use": 'work',
            "text": '53 Valley Stream Parkway,Malvern,PA,19355,United States',
            "line": [
              '53 Valley Stream Parkway'
            ],
            "city": 'Malvern',
            "state": 'PA',
            "postalCode": '19355',
            "country": 'United States'
          },
          "managingOrganization": {
            "reference": 'Organization/HCU.1',
            "display": 'Health Enterprise'
          }
        }
      ],
      "text": {
        "status": 'generated',
        # rubocop:disable Layout/LineLength
        "div": "<div xmlns='http://www.w3.org/1999/xhtml'><b>Encounter</b><br /><b>Patient</b>:Mcgovern,Astrid Santiago;<br /><b>Status</b>:in-progress;<br /><b>Class</b>:inpatient encounter;<br /><b>Period Start Date</b>:2020-04-15T16:42:00-04:00;<br /><b>Type</b>:<br /><b>System</b>:http://terminology.hl7.org/CodeSystem/data-absent-reason <b>Code</b>:unknown <b>Display</b>:Unknown ;<br /><b>Reason for Encounter - Chief Complaint</b>:Pain left side of the body;<br /><b>Location</b>:Inferno 53 Valley Stream Parkway,Malvern,PA,19355,United States;<br /></div>"
        # rubocop:enable Layout/LineLength
      }
    }.freeze

    SOARIAN_R4_ENCOUNTER_SEARCH_BY_ID_ENTRY ||= {
      "resourceType": 'Bundle',
      "id": '250f967f-c78a-49a8-929f-2782c8722020',
      "type": 'searchset',
      "timestamp": '2021-03-04T14:53:32-05:00',
      "entry": [{
        "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019',
        "resource": {
          "resourceType": 'Encounter',
          "id": 'A879904FD2FE4B2D90C89FDA84E1285F.29019',
          "meta": {
            "lastUpdated": '2021-01-21T15:08:01-05:00'
          },
          "status": 'in-progress',
          "class": {
            "system": 'http://terminology.hl7.org/CodeSystem/v3-ActCode',
            "code": 'IMP',
            "display": 'inpatient encounter'
          },
          "subject": {
            "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
            "display": 'Mcgovern,Astrid Santiago'
          },
          "period": {
            "start": '2020-04-15T16:42:00-04:00'
          },
          "location": [{
            "location": {
              "reference": '#35202'
            }
          }],
          "identifier": [{
            "system": 'urn:oid:12.00.021.1.3.7.5',
            "value": '29019'
          },
                         {
                           "system": 'urn:oid:12.00.021.1.3.7.3',
                           "value": '1001004'
                         },
                         {
                           "system": 'urn:oid:12.00.021.1.3.7.4',
                           "value": '1001004'
                         }],
          "type": [{
            "coding": [{
              "system": 'http://terminology.hl7.org/CodeSystem/data-absent-reason',
              "code": 'unknown',
              "display": 'Unknown'
            }]
          }],
          "reasonCode": [{
            "text": 'Pain left side of the body'
          }],
          "participant": [{
            "type": [{
              "coding": [{
                "system": 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                "code": 'ATND',
                "display": 'attender'
              }],
              "text": 'Attending Doctor'
            }],
            "period": {
              "start": '2020-11-11T20:53:00-05:00'
            },
            "individual": {
              "reference": 'Practitioner/DF2821C049CC47E6A37C6B796DF4CF1D',
              "display": 'Godziszewski,Janet Kris'
            }
          },
                          {
                            "type": [{
                              "coding": [{
                                "system": 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                                "code": 'CON',
                                "display": 'consultant'
                              }],
                              "text": 'Consulting Doctor'
                            }],
                            "period": {
                              "start": '2020-11-11T20:53:00-05:00'
                            },
                            "individual": {
                              "reference": 'Practitioner/4F69EC72C5AA48988E5E73832887E634',
                              "display": 'Aguilar,Melva Delaine'
                            }
                          },
                          {
                            "type": [{
                              "coding": [{
                                "system": 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                                "code": 'CON',
                                "display": 'consultant'
                              }],
                              "text": 'Consulting Doctor'
                            }],
                            "period": {
                              "start": '2020-11-11T20:53:00-05:00'
                            },
                            "individual": {
                              "reference": 'Practitioner/D8A9F3EADBE041688ADD843BBD98CAB0',
                              "display": "O'Reilly,Rose"
                            }
                          },
                          {
                            "type": [{
                              "coding": [{
                                "system": 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                                "code": 'ADM',
                                "display": 'admitter'
                              }],
                              "text": 'Admitting Doctor'
                            }],
                            "period": {
                              "start": '2020-11-11T20:53:00-05:00'
                            },
                            "individual": {
                              "reference": 'Practitioner/DF2821C049CC47E6A37C6B796DF4CF1D',
                              "display": 'Godziszewski,Janet Kris'
                            }
                          }],
          "contained": [{
            "resourceType": 'Location',
            "name": 'Inferno',
            "id": '35202',
            "status": 'active',
            "telecom": [{
              "system": 'phone',
              "value": '6102196300'
            },
                        {
                          "system": 'fax',
                          "value": '6102196300'
                        }],
            "address": {
              "use": 'work',
              "text": '53 Valley Stream Parkway,Malvern,PA,19355,United States',
              "line": [
                '53 Valley Stream Parkway'
              ],
              "city": 'Malvern',
              "state": 'PA',
              "postalCode": '19355',
              "country": 'United States'
            },
            "managingOrganization": {
              "reference": 'Organization/HCU.1',
              "display": 'Health Enterprise'
            }
          }],
          "text": {
            "status": 'generated',
            # rubocop:disable Layout/LineLength
            "div": "<div xmlns='http://www.w3.org/1999/xhtml'><b>Encounter</b><br /><b>Patient</b>:Mcgovern,Astrid Santiago;<br /><b>Status</b>:in-progress;<br /><b>Class</b>:inpatient encounter;<br /><b>Period Start Date</b>:2020-04-15T16:42:00-04:00;<br /><b>Type</b>:<br /><b>System</b>:http://terminology.hl7.org/CodeSystem/data-absent-reason <b>Code</b>:unknown <b>Display</b>:Unknown ;<br /><b>Reason for Encounter - Chief Complaint</b>:Pain left side of the body;<br /><b>Location</b>:Inferno 53 Valley Stream Parkway,Malvern,PA,19355,United States;<br /></div>"
            # rubocop:enable Layout/LineLength
          }
        }
      }],
      "link": [{
        "relation": 'self',
        "url": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Encounter?patient=A879904FD2FE4B2D90C89FDA84E1285F&_format=json'
      }]
    }.freeze

    SOARIAN_R4_ENCOUNTER_SEARCH_BY_PT_ENTRY ||= {
      "resourceType": 'Bundle',
      "id": '250f967f-c78a-49a8-929f-2782c8722020',
      "type": 'searchset',
      "timestamp": '2021-03-04T14:53:32-05:00',
      "entry": [
        {
          "fullUrl": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019',
          "resource": {
            "resourceType": 'Encounter',
            "id": 'A879904FD2FE4B2D90C89FDA84E1285F.29019',
            "meta": {
              "lastUpdated": '2021-01-21T15:08:01-05:00'
            },
            "status": 'in-progress',
            "class": {
              "system": 'http://terminology.hl7.org/CodeSystem/v3-ActCode',
              "code": 'IMP',
              "display": 'inpatient encounter'
            },
            "subject": {
              "reference": 'Patient/A879904FD2FE4B2D90C89FDA84E1285F',
              "display": 'Mcgovern,Astrid Santiago'
            },
            "period": {
              "start": '2020-04-15T16:42:00-04:00'
            },
            "location": [
              {
                "location": {
                  "reference": '#35202'
                }
              }
            ],
            "identifier": [
              {
                "system": 'urn:oid:12.00.021.1.3.7.5',
                "value": '29019'
              },
              {
                "system": 'urn:oid:12.00.021.1.3.7.3',
                "value": '1001004'
              },
              {
                "system": 'urn:oid:12.00.021.1.3.7.4',
                "value": '1001004'
              }
            ],
            "type": [
              {
                "coding": [
                  {
                    "system": 'http://terminology.hl7.org/CodeSystem/data-absent-reason',
                    "code": 'unknown',
                    "display": 'Unknown'
                  }
                ]
              }
            ],
            "reasonCode": [
              {
                "text": 'Pain left side of the body'
              }
            ],
            "participant": [
              {
                "type": [
                  {
                    "coding": [
                      {
                        "system": 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                        "code": 'ATND',
                        "display": 'attender'
                      }
                    ],
                    "text": 'Attending Doctor'
                  }
                ],
                "period": {
                  "start": '2020-11-11T20:53:00-05:00'
                },
                "individual": {
                  "reference": 'Practitioner/DF2821C049CC47E6A37C6B796DF4CF1D',
                  "display": 'Godziszewski,Janet Kris'
                }
              },
              {
                "type": [
                  {
                    "coding": [
                      {
                        "system": 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                        "code": 'CON',
                        "display": 'consultant'
                      }
                    ],
                    "text": 'Consulting Doctor'
                  }
                ],
                "period": {
                  "start": '2020-11-11T20:53:00-05:00'
                },
                "individual": {
                  "reference": 'Practitioner/4F69EC72C5AA48988E5E73832887E634',
                  "display": 'Aguilar,Melva Delaine'
                }
              },
              {
                "type": [
                  {
                    "coding": [
                      {
                        "system": 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                        "code": 'CON',
                        "display": 'consultant'
                      }
                    ],
                    "text": 'Consulting Doctor'
                  }
                ],
                "period": {
                  "start": '2020-11-11T20:53:00-05:00'
                },
                "individual": {
                  "reference": 'Practitioner/D8A9F3EADBE041688ADD843BBD98CAB0',
                  "display": "O'Reilly,Rose"
                }
              },
              {
                "type": [
                  {
                    "coding": [
                      {
                        "system": 'http://terminology.hl7.org/CodeSystem/v3-ParticipationType',
                        "code": 'ADM',
                        "display": 'admitter'
                      }
                    ],
                    "text": 'Admitting Doctor'
                  }
                ],
                "period": {
                  "start": '2020-11-11T20:53:00-05:00'
                },
                "individual": {
                  "reference": 'Practitioner/DF2821C049CC47E6A37C6B796DF4CF1D',
                  "display": 'Godziszewski,Janet Kris'
                }
              }
            ],
            "contained": [
              {
                "resourceType": 'Location',
                "name": 'Inferno',
                "id": '35202',
                "status": 'active',
                "telecom": [
                  {
                    "system": 'phone',
                    "value": '6102196300'
                  },
                  {
                    "system": 'fax',
                    "value": '6102196300'
                  }
                ],
                "address": {
                  "use": 'work',
                  "text": '53 Valley Stream Parkway,Malvern,PA,19355,United States',
                  "line": [
                    '53 Valley Stream Parkway'
                  ],
                  "city": 'Malvern',
                  "state": 'PA',
                  "postalCode": '19355',
                  "country": 'United States'
                },
                "managingOrganization": {
                  "reference": 'Organization/HCU.1',
                  "display": 'Health Enterprise'
                }
              }
            ],
            "text": {
              "status": 'generated',
              # rubocop:disable Layout/LineLength
              "div": "<div xmlns='http://www.w3.org/1999/xhtml'><b>Encounter</b><br /><b>Patient</b>:Mcgovern,Astrid Santiago;<br /><b>Status</b>:in-progress;<br /><b>Class</b>:inpatient encounter;<br /><b>Period Start Date</b>:2020-04-15T16:42:00-04:00;<br /><b>Type</b>:<br /><b>System</b>:http://terminology.hl7.org/CodeSystem/data-absent-reason <b>Code</b>:unknown <b>Display</b>:Unknown ;<br /><b>Reason for Encounter - Chief Complaint</b>:Pain left side of the body;<br /><b>Location</b>:Inferno 53 Valley Stream Parkway,Malvern,PA,19355,United States;<br /></div>"
              # rubocop:enable Layout/LineLength
            }
          }
        }
      ],
      "link": [
        {
          "relation": 'self',
          "url": 'https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Encounter?patient=A879904FD2FE4B2D90C89FDA84E1285F&_format=json'
        }
      ]
    }.freeze
  end
end
