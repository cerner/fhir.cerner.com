# frozen_string_literal: true

module Cerner
  module Resources

    # TODO: Missing data
    R4_CONSENT_ENTRY ||= {
      "resourceType": 'Consent',
      "id": 'AR-166045489-166624790',
      "meta": {
        "versionId": '26',
        "lastUpdated": '2020-10-09T07:29:32.000Z'
      },
      "text": {
        "status": 'generated',
        "div": '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Consent</b></p><p><b>Patient Name</b>: MARSTON, JACK</p><p><b>Status</b>: Active</p><p><b>Scope</b>: Privacy Consent</p><p><b>Category</b>: Patient Consent</p><p><b>Policy Rule</b>: Consent given for electronic record sharing (finding)</p><p><b>Consent Start Date</b>: Jul 21, 2020  1:33 P.M. UTC</p><p><b>Actor Name</b>: Marston, Joe</p><p><b>Actor Role</b>: Authorized Representative</p></div>' # rubocop:disable Layout/LineLength
      },
      "status": 'active',
      "scope": {
        "coding": [
          {
            "system": 'http://terminology.hl7.org/CodeSystem/consentscope',
            "code": 'patient-privacy',
            "display": 'Privacy Consent'
          }
        ],
        "text": 'Privacy Consent'
      },
      "category": [
        {
          "coding": [
            {
              "system": 'http://loinc.org',
              "code": '59284-0',
              "display": 'Patient Consent'
            }
          ],
          "text": 'Patient Consent'
        }
      ],
      "patient": {
        "reference": 'Patient/166045489',
        "display": 'MARSTON, JACK'
      },
      "policyRule": {
        "coding": [
          {
            "system": 'http://snomed.info/sct',
            "code": '425691002',
            "display": 'Consent given for electronic record sharing (finding)'
          }
        ],
        "text": 'Consent given for electronic record sharing (finding)'
      },
      "provision": {
        "type": 'permit',
        "period": {
          "start": '2020-07-21T13:33:35.000Z'
        },
        "actor": [
          {
            "id": '166624790',
            "role": {
              "coding": [
                {
                  "system": 'http://terminology.hl7.org/CodeSystem/v3-ParticipationFunction',
                  "code": 'AUCG',
                  "display": 'caregiver information receiver'
                }
              ],
              "text": 'Authorized Representative'
            },
            "reference": {
              "reference": 'RelatedPerson/166624790-166045489',
              "display": 'Marston, Joe'
            }
          }
        ],
        "action": [
          {
            "coding": [
              {
                "system": 'http://terminology.hl7.org/CodeSystem/consentaction',
                "code": 'correct',
                "display": 'Access and Correct'
              }
            ],
            "text": 'Access and Correct'
          }
        ],
        "purpose": [
          {
            "system": 'http://terminology.hl7.org/CodeSystem/v3-ActReason',
            "code": 'PurposeOfUse',
            "display": 'purpose of use'
          }
        ]
      }
    }.freeze

    R4_CONSENT_BUNDLE ||= {
      "resourceType": 'Bundle',
      "id": '0d0e822f-074f-4d86-9190-28f610d88d61',
      "type": 'searchset',
      "link": [
        {
          "relation": 'self',
          "url": 'https://fhir-open.devcerner.com/r4/2c400054-42d8-4e74-87b7-80b5bd5fde9f/Consent?patient=166045489'
        }
      ],
      "entry": [
        {
          "fullUrl": 'https://fhir-open.devcerner.com/r4/2c400054-42d8-4e74-87b7-80b5bd5fde9f/Consent/AR-166045489-166624790',
          "resource": R4_CONSENT_ENTRY
        },
        {
          "fullUrl": 'https://fhir-open.devcerner.com/r4/2c400054-42d8-4e74-87b7-80b5bd5fde9f/Consent/AR-166045489-170778458',
          "resource": {
            "resourceType": 'Consent',
            "id": 'AR-166045489-170778458',
            "meta": {
              "versionId": '26',
              "lastUpdated": '2020-10-09T07:29:32.000Z'
            },
            "text": {
              "status": 'generated',
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Consent</b></p><p><b>Patient Name</b>: MARSTON, JACK</p><p><b>Status</b>: Inactive</p><p><b>Scope</b>: Privacy Consent</p><p><b>Category</b>: Patient Consent</p><p><b>Policy Rule</b>: Consent given for electronic record sharing (finding)</p><p><b>Consent Start Date</b>: Aug 26, 2020  3:37 P.M. UTC</p><p><b>Consent End Date</b>: Aug 26, 2020  3:44 P.M. UTC</p><p><b>Actor Name</b>: MARSTON, Dutch</p><p><b>Actor Role</b>: Authorized Representative</p></div>' # rubocop:disable Layout/LineLength
            },
            "status": 'inactive',
            "scope": {
              "coding": [
                {
                  "system": 'http://terminology.hl7.org/CodeSystem/consentscope',
                  "code": 'patient-privacy',
                  "display": 'Privacy Consent'
                }
              ],
              "text": 'Privacy Consent'
            },
            "category": [
              {
                "coding": [
                  {
                    "system": 'http://loinc.org',
                    "code": '59284-0',
                    "display": 'Patient Consent'
                  }
                ],
                "text": 'Patient Consent'
              }
            ],
            "patient": {
              "reference": 'Patient/166045489',
              "display": 'MARSTON, JACK'
            },
            "policyRule": {
              "coding": [
                {
                  "system": 'http://snomed.info/sct',
                  "code": '425691002',
                  "display": 'Consent given for electronic record sharing (finding)'
                }
              ],
              "text": 'Consent given for electronic record sharing (finding)'
            },
            "provision": {
              "type": 'permit',
              "period": {
                "start": '2020-08-26T15:37:03.000Z',
                "end": '2020-08-26T15:44:38.000Z'
              },
              "actor": [
                {
                  "id": '170778458',
                  "role": {
                    "coding": [
                      {
                        "system": 'http://terminology.hl7.org/CodeSystem/v3-ParticipationFunction',
                        "code": 'AUCG',
                        "display": 'caregiver information receiver'
                      }
                    ],
                    "text": 'Authorized Representative'
                  },
                  "reference": {
                    "reference": 'RelatedPerson/170778458-166045489',
                    "display": 'MARSTON, Dutch'
                  }
                }
              ],
              "action": [
                {
                  "coding": [
                    {
                      "system": 'http://terminology.hl7.org/CodeSystem/consentaction',
                      "code": 'correct',
                      "display": 'Access and Correct'
                    }
                  ],
                  "text": 'Access and Correct'
                }
              ],
              "purpose": [
                {
                  "system": 'http://terminology.hl7.org/CodeSystem/v3-ActReason',
                  "code": 'PurposeOfUse',
                  "display": 'purpose of use'
                }
              ]
            }
          },
          "search": {
            "mode": 'match'
          }
        },
        {
          "fullUrl": 'https://fhir-open.devcerner.com/r4/2c400054-42d8-4e74-87b7-80b5bd5fde9f/Consent/AR-166045489-170788641',
          "resource": {
            "resourceType": 'Consent',
            "id": 'AR-166045489-170788641',
            "meta": {
              "versionId": '26',
              "lastUpdated": '2020-10-09T07:29:32.000Z'
            },
            "text": {
              "status": 'generated',
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Consent</b></p><p><b>Patient Name</b>: MARSTON, JACK</p><p><b>Status</b>: Active</p><p><b>Scope</b>: Privacy Consent</p><p><b>Category</b>: Patient Consent</p><p><b>Policy Rule</b>: Consent given for electronic record sharing (finding)</p><p><b>Consent Start Date</b>: Aug 26, 2020  3:50 P.M. UTC</p><p><b>Actor Name</b>: Li, Mike</p><p><b>Actor Role</b>: Authorized Representative</p></div>' # rubocop:disable Layout/LineLength
            },
            "status": 'active',
            "scope": {
              "coding": [
                {
                  "system": 'http://terminology.hl7.org/CodeSystem/consentscope',
                  "code": 'patient-privacy',
                  "display": 'Privacy Consent'
                }
              ],
              "text": 'Privacy Consent'
            },
            "category": [
              {
                "coding": [
                  {
                    "system": 'http://loinc.org',
                    "code": '59284-0',
                    "display": 'Patient Consent'
                  }
                ],
                "text": 'Patient Consent'
              }
            ],
            "patient": {
              "reference": 'Patient/166045489',
              "display": 'MARSTON, JACK'
            },
            "policyRule": {
              "coding": [
                {
                  "system": 'http://snomed.info/sct',
                  "code": '425691002',
                  "display": 'Consent given for electronic record sharing (finding)'
                }
              ],
              "text": 'Consent given for electronic record sharing (finding)'
            },
            "provision": {
              "type": 'permit',
              "period": {
                "start": '2020-08-26T15:50:28.000Z'
              },
              "actor": [
                {
                  "id": '170788641',
                  "role": {
                    "coding": [
                      {
                        "system": 'http://terminology.hl7.org/CodeSystem/v3-ParticipationFunction',
                        "code": 'AUCG',
                        "display": 'caregiver information receiver'
                      }
                    ],
                    "text": 'Authorized Representative'
                  },
                  "reference": {
                    "reference": 'RelatedPerson/170788641-166045489',
                    "display": 'Li, Mike'
                  }
                }
              ],
              "action": [
                {
                  "coding": [
                    {
                      "system": 'http://terminology.hl7.org/CodeSystem/consentaction',
                      "code": 'correct',
                      "display": 'Access and Correct'
                    }
                  ],
                  "text": 'Access and Correct'
                }
              ],
              "purpose": [
                {
                  "system": 'http://terminology.hl7.org/CodeSystem/v3-ActReason',
                  "code": 'PurposeOfUse',
                  "display": 'purpose of use'
                }
              ]
            }
          },
          "search": {
            "mode": 'match'
          }
        },
        {
          "fullUrl": 'https://fhir-open.devcerner.com/r4/2c400054-42d8-4e74-87b7-80b5bd5fde9f/Consent/AR-166045489-170790813',
          "resource": {
            "resourceType": 'Consent',
            "id": 'AR-166045489-170790813',
            "meta": {
              "versionId": '26',
              "lastUpdated": '2020-10-09T07:29:32.000Z'
            },
            "text": {
              "status": 'generated',
              "div": '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Consent</b></p><p><b>Patient Name</b>: MARSTON, JACK</p><p><b>Status</b>: Active</p><p><b>Scope</b>: Privacy Consent</p><p><b>Category</b>: Patient Consent</p><p><b>Policy Rule</b>: Consent given for electronic record sharing (finding)</p><p><b>Consent Start Date</b>: Aug 26, 2020  3:44 P.M. UTC</p><p><b>Actor Name</b>: Marston, Dutch</p><p><b>Actor Role</b>: Authorized Representative</p></div>' # rubocop:disable Layout/LineLength
            },
            "status": 'active',
            "scope": {
              "coding": [
                {
                  "system": 'http://terminology.hl7.org/CodeSystem/consentscope',
                  "code": 'patient-privacy',
                  "display": 'Privacy Consent'
                }
              ],
              "text": 'Privacy Consent'
            },
            "category": [
              {
                "coding": [
                  {
                    "system": 'http://loinc.org',
                    "code": '59284-0',
                    "display": 'Patient Consent'
                  }
                ],
                "text": 'Patient Consent'
              }
            ],
            "patient": {
              "reference": 'Patient/166045489',
              "display": 'MARSTON, JACK'
            },
            "policyRule": {
              "coding": [
                {
                  "system": 'http://snomed.info/sct',
                  "code": '425691002',
                  "display": 'Consent given for electronic record sharing (finding)'
                }
              ],
              "text": 'Consent given for electronic record sharing (finding)'
            },
            "provision": {
              "type": 'permit',
              "period": {
                "start": '2020-08-26T15:44:35.000Z'
              },
              "actor": [
                {
                  "id": '170790813',
                  "role": {
                    "coding": [
                      {
                        "system": 'http://terminology.hl7.org/CodeSystem/v3-ParticipationFunction',
                        "code": 'AUCG',
                        "display": 'caregiver information receiver'
                      }
                    ],
                    "text": 'Authorized Representative'
                  },
                  "reference": {
                    "reference": 'RelatedPerson/170790813-166045489',
                    "display": 'Marston, Dutch'
                  }
                }
              ],
              "action": [
                {
                  "coding": [
                    {
                      "system": 'http://terminology.hl7.org/CodeSystem/consentaction',
                      "code": 'correct',
                      "display": 'Access and Correct'
                    }
                  ],
                  "text": 'Access and Correct'
                }
              ],
              "purpose": [
                {
                  "system": 'http://terminology.hl7.org/CodeSystem/v3-ActReason',
                  "code": 'PurposeOfUse',
                  "display": 'purpose of use'
                }
              ]
            }
          },
          "search": {
            "mode": 'match'
          }
        }
      ]
    }.freeze
  end
end
