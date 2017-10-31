module Cerner
  module Resources

    DSTU2_CARE_PLAN_ENTRY ||= {
      "resourceType": "CarePlan",
      "id": "6017316",
      "meta": {
        "versionId": "1",
        "lastUpdated": "2016-03-17T16:32:29-05:00"
      },
      "text": {
        "status": "additional",
        "div": "&lt;div>&lt;p>&lt;b>Care Plan&lt;/b>&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: Houde, Test 1&lt;/p>&lt;p>&lt;b>Description&lt;/b>:&lt;/p>&lt;pre>Assessment/Plan&amp;#10;Community acquired pneumonia&amp;#10;Diabetes mellitus&amp;#10;Fracture of arm&amp;#10;Rheumatoid Arthritis&amp;#10;Subjective&amp;#10;Review of Systems&amp;#10;Objective&amp;#10;Vitals &amp; Measurements&amp;#10;Physical Exam&amp;#10;Lab Results&amp;#10;Diagnostic Results&lt;/pre>&lt;p>&lt;b>Author&lt;/b>: Who, Doctor&lt;/p>&lt;p>&lt;b>Effective Date/Time&lt;/b>: 2016-03-17T16:32:23-05:00&lt;/p>&lt;/div>"
      },
      "subject": {
        "reference": "Patient/1316020",
        "display": "Houde, Test 1"
      },
      "status": "completed",
      "context": {
        "reference": "Encounter/3261906"
      },
      "period": {
        "end": "2016-03-17T16:32:23-05:00"
      },
      "author": [
        {
          "reference": "Practitioner/2048007",
          "display": "Who, Doctor"
        }
      ],
      "modified": "2016-03-17T16:32:29-05:00",
      "category": [
        {
          "coding": [
            {
              "system": "http://argonaut.hl7.org",
              "code": "assess-plan"
            }
          ]
        }
      ]
    }

    DSTU2_CARE_TEAM_BUNDLE ||= {
        "resourceType": "Bundle",
        "id": "4b27e0a6-6e5a-4785-9cc7-d4749388a518",
        "type": "searchset",
        "total": 1,
        "link": [{
            "relation": "self",
            "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/CarePlan?patient=4734007\u0026category=careteam"
        }],
        "entry": [{
            "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/CarePlan/L4734007",
            "resource": {
                "resourceType": "CarePlan",
                "id": "L4734007",
                "meta": {
                    "versionId": "4734007",
                    "lastUpdated": "2017-10-21T00:29:49Z"
                },
                "text": {
                    "status": "generated",
                    "div": "&lt;div>&lt;p>&lt;b>Care Team&lt;/b>&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: Smart, Matt&lt;/p>&lt;p>&lt;b>Status&lt;/b>: active&lt;/p>&lt;p>&lt;/p>&lt;p>&lt;b>Name&lt;/b>: Who, Doctor&lt;/p>&lt;p>&lt;b>Role&lt;/b>: PCTAUT PRIV LIFETIME PPR&lt;/p>&lt;p>&lt;/p>&lt;p>&lt;b>Name&lt;/b>: UTD, PW&lt;/p>&lt;p>&lt;b>Role&lt;/b>: PCTAUT PRIV LIFETIME PPR&lt;/p>&lt;p>&lt;/p>&lt;p>&lt;b>Name&lt;/b>: Smart, Martha&lt;/p>&lt;p>&lt;b>Role&lt;/b>: Spouse&lt;/p>&lt;p>&lt;b>Category&lt;/b>: careteam&lt;/p>&lt;/div>"
                },
                "contained": [{
                    "resourceType": "RelatedPerson",
                    "id": "#2",
                    "patient": {
                        "reference": "Patient/4734007",
                        "display": "Smart, Matt"
                    },
                    "name": {
                        "use": "usual",
                        "text": "Smart, Martha"
                    },
                    "telecom": [{
                        "system": "phone",
                        "value": "8162345678",
                        "use": "home"
                    }]
                }],
                "subject": {
                    "reference": "Patient/4734007",
                    "display": "Smart, Matt"
                },
                "status": "active",
                "modified": "2017-10-21T00:29:49Z",
                "category": [{
                    "coding": [{
                        "system": "http://argonaut.hl7.org",
                        "code": "careteam"
                    }]
                }],
                "participant": [{
                    "member": {
                        "reference": "Practitioner/4474007",
                        "display": "Who, Doctor"
                    },
                    "role": {
                        "text": "PCTAUT PRIV LIFETIME PPR"
                    }
                }, {
                    "member": {
                        "reference": "Practitioner/4496007",
                        "display": "UTD, PW"
                    },
                    "role": {
                        "text": "PCTAUT PRIV LIFETIME PPR"
                    }
                }, {
                    "member": {
                        "reference": "#2",
                        "display": "Smart, Martha"
                    },
                    "role": {
                        "coding": [{
                            "system": "http://snomed.info/sct",
                            "code": "127848009",
                            "display": "Spouse (person)",
                            "userSelected": true
                        }],
                        "text": "Spouse"
                    }
                }]
            }
        }]
    }

    DSTU2_CARE_PLAN_BUNDLE ||= {
      "resourceType": "Bundle",
      "id": "c4dac70c-1961-46e8-8662-f4e82b8475c6",
      "type": "searchset",
      "link": [{
          "relation": "self",
          "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/CarePlan?patient=1316020&_count=10"
        },
        {
          "relation": "next",
          "url": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/CarePlan?patient=1316020&-pageContext=eNqVUmtr2zAU_Ssr2UdH6GXHERTqOCoYujrYStj2xQhFyQS2FBSnrKM_fnKbkXWBeQPB1dU9R_d1lOuA0t5qD7rjkwKqNdYo2eonbXsgO_nDWXCQe2P3IHv1VnKvc2d7_b2f3N2ov_K3Tp264aK86bU3ElS69yYEF898QNS6z8-hm7vJyVv29hnrzJZp34GD9kdn2e6b8YdWPjNEUAIxDGA0n8EpROEICNnrARDCryGEIZpNIZ7iVKAZQwmDBKRpMoQQvM6jnNfAu1YfvNuZVl-yiduHqFjeosCxp7YNZpHVRd5kQlTFYi14HZ74_T3PRbHhzTITPDzsZHvU_2Hz88w-LM_jOg6_flqJL81DUYv3BSu3Dbu4lBh8zXAcjULmoxCCxiHjiQgdhwxLyMLMysdmVZWbYsmrP1t-5_T-NAzq3_V2Fu612sogKNkbZz--qfkaMej7kvKRfxZNvq7qcqgwRgTTGYpikhBC4whRSiidJxQF5UXwt52uKr4pynV94eIUwximURLEGUQcuHGKY0go-cUN7b1MXuBPQFQtOQ%3D%3D&-pageDirection=NEXT"
        }
      ],
      "entry": [
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/CarePlan/6017316",
          "resource": {
            "resourceType": "CarePlan",
            "id": "6017316",
            "meta": {
              "versionId": "1",
              "lastUpdated": "2016-03-17T16:32:29-05:00"
            },
            "text": {
              "status": "additional",
              "div": "&lt;div>&lt;p>&lt;b>Care Plan&lt;/b>&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: Houde, Test 1&lt;/p>&lt;p>&lt;b>Description&lt;/b>:&lt;/p>&lt;pre>Assessment/Plan&amp;#10;Community acquired pneumonia&amp;#10;Diabetes mellitus&amp;#10;Fracture of arm&amp;#10;Rheumatoid Arthritis&amp;#10;Subjective&amp;#10;Review of Systems&amp;#10;Objective&amp;#10;Vitals &amp; Measurements&amp;#10;Physical Exam&amp;#10;Lab Results&amp;#10;Diagnostic Results&lt;/pre>&lt;p>&lt;b>Author&lt;/b>: Who, Doctor&lt;/p>&lt;p>&lt;b>Effective Date/Time&lt;/b>: 2016-03-17T16:32:23-05:00&lt;/p>&lt;/div>"
            },
            "subject": {
              "reference": "Patient/1316020",
              "display": "Houde, Test 1"
            },
            "status": "completed",
            "context": {
              "reference": "Encounter/3261906"
            },
            "period": {
              "end": "2016-03-17T16:32:23-05:00"
            },
            "author": [
              {
                "reference": "Practitioner/2048007",
                "display": "Who, Doctor"
              }
            ],
            "modified": "2016-03-17T16:32:29-05:00",
            "category": [
              {
                "coding": [
                  {
                    "system": "http://argonaut.hl7.org",
                    "code": "assess-plan"
                  }
                ]
              }
            ]
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/CarePlan/6015260",
          "resource": {
            "resourceType": "CarePlan",
            "id": "6015260",
            "meta": {
              "versionId": "1",
              "lastUpdated": "2016-03-17T13:20:05-05:00"
            },
            "text": {
              "status": "additional",
              "div": "&lt;div>&lt;p>&lt;b>Care Plan&lt;/b>&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: Houde, Test 1&lt;/p>&lt;p>&lt;b>Description&lt;/b>:&lt;/p>&lt;pre>&#160;   &amp;#10;---------------------&amp;#10;From: Who, Doctor&amp;#10;To: Who, Doctor&amp;#10;Sent: March 17, 2016  1:19 PM Show up: March 17, 2016  1:19 PM&amp;#10;Subject: Reminder - Call attending w/results&amp;#10;Actions: Reminder - Call attending w/results&amp;#10;&#160;&#160;&#160;&amp;#10;Reminder Comments:&amp;#10;Lab Results:Date&amp;#10;Result Name&amp;#10;Ind&amp;#10;Value&amp;#10;Ref Range&amp;#10;3/17/16, 1:13 PM&amp;#10;Lipase Lvl&amp;#10;NORMAL&amp;#10;55&amp;#10;(&amp;lt;=200)&lt;/pre>&lt;p>&lt;b>Author&lt;/b>: Who, Doctor&lt;/p>&lt;p>&lt;b>Effective Date/Time&lt;/b>: 2016-03-17T13:19:56-05:00&lt;/p>&lt;/div>"
            },
            "subject": {
              "reference": "Patient/1316020",
              "display": "Houde, Test 1"
            },
            "status": "completed",
            "context": {
              "reference": "Encounter/3261906"
            },
            "period": {
              "end": "2016-03-17T13:19:56-05:00"
            },
            "author": [
              {
                "reference": "Practitioner/2048007",
                "display": "Who, Doctor"
              }
            ],
            "modified": "2016-03-17T13:20:05-05:00",
            "category": [
              {
                "coding": [
                  {
                    "system": "http://argonaut.hl7.org",
                    "code": "assess-plan"
                  }
                ]
              }
            ]
          }
        },
        {
          "fullUrl": "https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/CarePlan/5673293",
          "resource": {
            "resourceType": "CarePlan",
            "id": "5673293",
            "meta": {
              "versionId": "1",
              "lastUpdated": "2015-12-04T15:11:52-06:00"
            },
            "text": {
              "status": "additional",
              "div": "&lt;div>&lt;p>&lt;b>Care Plan&lt;/b>&lt;/p>&lt;p>&lt;b>Patient&lt;/b>: Houde, Test 1&lt;/p>&lt;p>&lt;b>Description&lt;/b>:&lt;/p>&lt;pre>Chief Complaint&amp;#10;History of Present Illness&amp;#10;Hpi&amp;#10;Review of Systems&amp;#10;Problem List/Past Medical History&amp;#10;Ongoing&amp;#10;ACAD&amp;#10;Diabetes&amp;#10;Diabetes mellitus&amp;#10;Diabetes resolved&amp;#10;Fish sting&amp;#10;Kidney abscess&amp;#10;Migraine&amp;#10;Pneumonia&amp;#10;Pregnant&amp;#10;Pyogenic Arthritis Involving Multiple Sites&amp;#10;Rheumatoid Arthritis&amp;#10;Resolved&amp;#10;Dukes stage finding&amp;#10;Kinetic tremor&amp;#10;Minimal shared activities&amp;#10;Side lying&amp;#10;Procedure/Surgical History&amp;#10;Influenza (split virion) vaccine injection suspension 0.5mL prefilled syringe (2015),&amp;#10;Influenza (split virion) vaccine injection suspension 0.5mL prefilled syringe (09/16/2014),&amp;#10;Influenza A (H1N1) virus (2007),&amp;#10;Knee abrasion.&amp;#10;Medications&amp;#10;amoxicillin 125 mg oral tablet, chewable, 12.5 mg/kg, Ear-Left, TID, PRN&amp;#10;aspirin 325 mg oral tablet, 1 tabs, Oral, Daily, PRN&amp;#10;Claritin 10 mg oral tablet, 1 tabs, Oral, Daily, PRN&amp;#10;Claritin 10 mg oral tablet, 1 tabs, Oral, Daily, PRN&amp;#10;Claritin 10 mg oral tablet, 1 tabs, Oral, Daily, 10 refills&amp;#10;Ibu 800 mg oral tablet, 1 tabs, Oral, TID, PRN&amp;#10;Lipitor 10 mg oral tablet, 1 tabs, Oral, Daily, PRN&amp;#10;Lipitor 10 mg oral tablet, 1 tabs, Oral, Daily, PRN&amp;#10;Lipitor 10 mg oral tablet, 1 tabs, Oral, Daily, PRN&amp;#10;Nyquil Liquicap oral capsule, 1 tabs, Oral, 1-2x/Day, 11 refills&amp;#10;Allergies&amp;#10;Neupogen (Papular rash)&amp;#10;anti-inhibitor coagulant complex (Anaphylaxis, Apnea, Cardiac arrest)&amp;#10;Grass (Barsony-Teschendorf syndrome)&amp;#10;Peanuts&amp;#10;Hilar lymph node (High)&amp;#10;penicillins&amp;#10;temazepam&amp;#10;Social History&amp;#10;Alcohol - Low Risk&amp;#10;Current, Liquor, Several times per day, Alcohol use interferes with work or home: No. Drinks more than intended: Yes.&amp;#10;Employment/School - Low Risk&amp;#10;Exercise - Regular exercise&amp;#10;Exercise frequency: 3-4 times/week. Self assessment: Good condition. Exercise type: Running, Swimming, Yoga.&amp;#10;Home/Environment - Low Risk&amp;#10;Nutrition/Health - Low Risk&amp;#10;Other - No Risk&amp;#10;Sexual - Low Risk&amp;#10;Substance Abuse - Low Risk&amp;#10;Current, Cocaine, Methamphetamines, 1-2 times per year, Previous treatment: None. Started age 18 Years. IV drug use: No. Drug use interferes with work/home: No. Ready to change: Yes. Household substance abuse concerns: No.&amp;#10;Tobacco - Low Risk&amp;#10;Current every day smoker, Cigarettes, Cigars, Oral, Started age 18 Years. Previous treatment: Counseling, Hypnosis. Household tobacco concerns: Yes. Packs a Year 7.&amp;#10;Family History&amp;#10;Daughter&#160;&amp;#10;&#160; &#160; &#160;Tib-fib&amp;#10;Sister&#160;&amp;#10;&#160; &#160; &#160;Drug addiction&amp;#10;Father&#160; ( Zinedine Zidane )&amp;#10;&#160; &#160; &#160;Alcoholism&amp;#10;&#160; &#160; &#160;Depression&amp;#10;&#160; &#160; &#160;Drug addiction&amp;#10;Mother&#160; ( CombineTo Houde )&amp;#10;&#160; &#160; &#160;Depression&amp;#10;Brother&#160;&amp;#10;&#160; &#160; &#160;Depression&amp;#10;Patient was Adopted&amp;#10;Immunizations&amp;#10;Physical Exam&amp;#10;Vitals &amp;amp; Measurements&amp;#10;Lab Results&amp;#10;Diagnostic Results&amp;#10;Assessment/Plan&amp;#10;Community acquired pneumonia&amp;#10;Diabetes mellitus&amp;#10;Fracture of arm&amp;#10;Rheumatoid Arthritis&lt;/pre>&lt;p>&lt;b>Author&lt;/b>: Song, River&lt;/p>&lt;p>&lt;b>Effective Date/Time&lt;/b>: 2015-12-04T15:11:30-06:00&lt;/p>&lt;/div>"
            },
            "subject": {
              "reference": "Patient/1316020",
              "display": "Houde, Test 1"
            },
            "status": "completed",
            "context": {
              "reference": "Encounter/3261906"
            },
            "period": {
              "end": "2015-12-04T15:11:30-06:00"
            },
            "author": [
              {
                "reference": "Practitioner/1628008",
                "display": "Song, River"
              }
            ],
            "modified": "2015-12-04T15:11:52-06:00",
            "category": [
              {
                "coding": [
                  {
                    "system": "http://argonaut.hl7.org",
                    "code": "assess-plan"
                  }
                ]
              }
            ]
          }
        }
      ]
    }

  end
end
