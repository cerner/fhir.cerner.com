# frozen_string_literal: true

module Cerner
  module Resources

    R4_CARE_PLAN_ENTRY ||= {
      'resourceType': 'CarePlan',
      'id': '17463459',
      'meta': {
        'versionId': '1',
        'lastUpdated': '2016-03-10T13:43:45.000-06:00'
      },
      'text': {
        'status': 'additional',
        'div': '&lt;div xmlns="http://www.w3.org/1999/xhtml"&gt;&lt;p&gt;&lt;b&gt;Care Plan&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: Houde, Harry Potter&lt;/p&gt;&lt;p&gt;&lt;b&gt;Title&lt;/b&gt;: History and Physical Note&lt;/p&gt;&lt;p&gt;&lt;b&gt;Description&lt;/b&gt;: Chief Complaint&amp;#10;History of Present Illness&amp;#10;Review of Systems&amp;#10;Medical History&amp;#10;Ongoing&amp;#10;Active silicosis&amp;#10;Allergy testing - no reaction&amp;#10;Breast wound&amp;#10;hidden display as&amp;#10;Housebound&amp;#10;Locking knee&amp;#10;Minimal shared activities&amp;#10;No significant medical problems&amp;#10;Preop testing&amp;#10;pTX stage&amp;#10;Pyogenic Arthritis Involving Multiple Sites&amp;#10;Reality testing&amp;#10;something spooky&amp;#10;T activation syndrome&amp;#10;Taste-blindness&amp;#10;Test diet&amp;#10;Test distance for visual acuity&amp;#10;Testicular failure&amp;#10;Toe Flexion&amp;#10;Visual testing normal&amp;#10;Vitamin D deficiency&amp;#10;Water slide activities&amp;#10;Resolved&amp;#10;Active labor&amp;#10;Inconsistent results on voice testing&amp;#10;Marital problems&amp;#10;O/E - tuning fork testing&amp;#10;Z deformity of thumb&amp;#10;Surgical History&amp;#10;Tone deafness (2006),  Tonsil biopsy sample (Week of 05/17/1989),  ADA - Adenosine deaminase (1989).&amp;#10;Family History&amp;#10;Patient was adopted&amp;#10;Social History&amp;#10;Alcohol&amp;#10;Current, Beer, Wine, Liquor, Home made hard stuff, Several times per day, 5 drinks/episode average. 10 drinks/episode maximum. Started age 8 Years. Previous treatment: None. Alcohol use interferes with work or home: Yes. Drinks more than intended: Yes. Others hurt by drinking: No. Ready to change: No. Household alcohol concerns: No.&amp;#10;Employment/School&amp;#10;Employed, Work/School description: Desk Job. Activity level: Desk/Office. Operates hazardous equipment: No.&amp;#10;Exercise&amp;#10;Exercise duration: 30. Exercise frequency: 3-4 times/week. Self assessment: Fair condition. Exercise type: Walking, Swimming.&amp;#10;Home/Environment - Low Risk&amp;#10;Lives with Alone. Living situation: Home/Independent. Alcohol abuse in household: Yes. Substance abuse in household: Yes. Smoker in household: No. Injuries/Abuse/Neglect in household: No. Feels unsafe at home: No. Safe place to go: Yes. Agency(s)/Others notified: No. Family/Friends available for support: Yes. Concern for family members at home: No. Major illness in household: No. Financial concerns: No. TV/Computer concerns: No. Risks in environment: Does not wear helmet, Pets/Animal exposure, Stairs.&amp;#10;Nutrition/Health&amp;#10;Type of diet: Generl. Wants to lose weight: No. Sleeping concerns: No. Feels highly stressed: Yes.&amp;#10;Sexual&amp;#10;Sexually active: No. History of sexual abuse: No.&amp;#10;Substance Abuse - Medium Risk&amp;#10;Current, Amphetamines, Cocaine, Ecstasy, Hallucinogens/LSD, Heroin, Inhalants/Glues/Solvents, Marijuana, Methamphetamines, Prescription medications, Daily, Previous treatment: Treatment center, Inpatient, Outpatient. Started age 8 Years. IV drug use: Yes. Drug use interferes with work/home: Yes. Ready to change: No. Household substance abuse concerns: No.&amp;#10;Tobacco&amp;#10;Current every day smoker, Cigars, hand, Household tobacco concerns: Yes&amp;#10;Allergies&amp;#10;oxyCODONE&amp;#10;Peanuts&amp;#10;sulfa drugs&amp;#65533;&amp;#65533;(Anaphylactic reaction)&amp;#10;uranium&amp;#10;iodine&amp;#65533;&amp;#65533;(Hives, Sneezing)&amp;#10;penicillin V potassium&amp;#65533;&amp;#65533;(Hives)&amp;#10;skin test antigens, multiple&amp;#10;Home Medication List&amp;#10;Aceon 2 mg oral tablet, 1 tab(s), Oral, Daily, 11 refills&amp;#10;acetaminophen-tramadol&amp;#10;Physical Exam&amp;#10;Vitals &amp;amp; Measurements&amp;#10;Lab Results&amp;#10;Radiology Results&amp;#10;Assessment/Plan&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Intent&lt;/b&gt;: Plan&lt;/p&gt;&lt;p&gt;&lt;b&gt;Category&lt;/b&gt;: Assessment and Plan of Treatment&lt;/p&gt;&lt;p&gt;&lt;b&gt;Author&lt;/b&gt;: Shaik, Faiz Ahmed&lt;/p&gt;&lt;p&gt;&lt;b&gt;Effective Period&lt;/b&gt;: Mar 10, 2016  7:43 P.M. UTC&lt;/p&gt;&lt;/div&gt;' # rubocop:disable Layout/LineLength
      },
      'status': 'active',
      'intent': 'plan',
      'category': [
        {
          'coding': [
            {
              'system': 'http://hl7.org/fhir/us/core/CodeSystem/careplan-category',
              'code': 'assess-plan',
              'display': 'Assessment and Plan of Treatment'
            }
          ],
          'text': 'Assessment and Plan of Treatment'
        }
      ],
      'title': 'History and Physical Note',
      'subject': {
        'reference': 'Patient/1316020',
        'display': 'Houde, Harry Potter'
      },
      'encounter': {
        'reference': 'Encounter/1721945'
      },
      'period': {
        'start': '2016-03-10T13:43:32.000-06:00'
      },
      'author': {
        'reference': 'Practitioner/1830018',
        'display': 'Shaik, Faiz Ahmed'
      }
    }.freeze

    R4_CAREPLAN_REVINCLUDE_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '627a14f6-0eda-42ab-ad21-e860f5780a20',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'http://localhost:3000/r4/2c400054-42d8-4e74-87b7-80b5bd5fde9f/CarePlan?_id=178866310&_revinclude=Provenance%3Atarget'
        }
      ],
      'entry': [
        {
          'fullUrl': 'http://localhost:3000/r4/2c400054-42d8-4e74-87b7-80b5bd5fde9f/CarePlan/178866310',
          'resource': {
            'resourceType': 'CarePlan',
            'id': '178866310',
            'meta': {
              'versionId': '1',
              'lastUpdated': '2020-02-03T19:37:47.000Z'
            },
            'text': {
              'status': 'additional',
              'div': '<div xmlns=\'http://www.w3.org/1999/xhtml\'><p><b>Care Plan</b></p><p><b>Patient
              </b>: SMITH, MORGAN</p><p><b>Description</b>: unknown</p><p><b>Status</b>: Active</p><p>
              <b>Intent</b>: Plan</p><p><b>Category</b>: Assessment and Plan of Treatment</p>
              <p><b>Effective Period</b>: Feb  3, 2020  7:39 P.M. UTC</p></div>'
            },
            'status': 'active',
            'intent': 'plan',
            'category': [
              {
                'coding': [
                  {
                    'system': 'http://hl7.org/fhir/us/core/CodeSystem/careplan-category',
                    'code': 'assess-plan',
                    'display': 'Assessment and Plan of Treatment'
                  }
                ],
                'text': 'Assessment and Plan of Treatment'
              }
            ],
            'subject': {
              'reference': 'Patient/725944',
              'display': 'SMITH, MORGAN'
            },
            'encounter': {
              'reference': 'Encounter/953887'
            },
            'period': {
              'start': '2020-02-03T19:39:33.000Z'
            }
          },
          'search': {
            'mode': 'match'
          }
        },
        {
          'fullUrl': 'http://localhost:3000/r4/2c400054-42d8-4e74-87b7-80b5bd5fde9f/Provenance/INT.doc-178866310',
          'resource': {
            'resourceType': 'Provenance',
            'id': 'INT.doc-178866310',
            'meta': {
              'versionId': '178866310',
              'lastUpdated': '2020-02-03T19:39:31Z'
            },
            'text': {
              'status': 'generated',
              'div': '<div xmlns=\'http://www.w3.org/1999/xhtml\'><p><b>Provenance</b></p>
              <p><b>Target</b>:</p><ul><li>CarePlan/178866310</li></ul><p>
              <b>Recorded</b>: Feb  3, 2020  1:39 P.M. CST</p>
              <p><b>Agents</b>:</p><dl><dt>DEVENG-DEFAULT-PROV</dt><dd>
              <b>Agent Type</b>: Author</dd><dd><b>Agent Role</b>: Source</dd></dl></div>'
            },
            'target': [
              {
                'reference': 'CarePlan/178866310'
              }
            ],
            'recorded': '2020-02-03T19:39:31Z',
            'agent': [
              {
                'type': {
                  'coding': [
                    {
                      'system': 'http://terminology.hl7.org/CodeSystem/provenance-participant-type',
                      'code': 'author'
                    }
                  ],
                  'text': 'Author'
                },
                'role': [
                  {
                    'coding': [
                      {
                        'system': 'http://terminology.hl7.org/CodeSystem/contractsignertypecodes',
                        'code': 'SOURCE'
                      }
                    ],
                    'text': 'Source'
                  }
                ],
                'who': {
                  'reference': 'Organization/57535538',
                  'display': 'DEVENG-DEFAULT-PROV'
                }
              }
            ]
          },
          'search': {
            'mode': 'include'
          }
        }
      ]
    }.freeze

    R4_CARE_PLAN_PATIENT_ENTRY ||= {
      'resourceType': 'CarePlan',
      'id': '197286315',
      'meta': {
        'versionId': '1',
        'lastUpdated': '2020-04-05T04:00:46.000Z'
      },
      'text': {
        'status': 'additional',
        'div': "<div xmlns='http://www.w3.org/1999/xhtml'><p><b>Care Plan</b></p>"\
               '<p><b>Patient</b>: SMART, NANCY</p><p><b>Title</b>: Pregnancy Summary Document</p>'\
               "<p><b>Description</b>: SMART, NANCY\nDOB: 08/11/1980\tAge: 39 Years\t"\
               "MRN: 00000006930\n------------------------------------------------------\n"\
               "\t\t\t\tSMART, NANCY DOB: 08/11/80\nPregnancy Summary (Date of Report: 04/04/20)\n"\
               "\nG 1 P 0 (0,0,0,0)\nGestation: --\tLMP (from pt. history): --\nEDD: --\t"\
               "EDD/EGA Method: Date of Conception\tEGA: --\n\n-------------------------------"\
               "\n\t\t\t\tSMART, NANCY DOB: 08/11/80\nAntepartum Note\n\n\t"\
               "No antepartum notes have been documented\n\n-------------------------------------"\
               "\n\t\t\t\tSMART, NANCY DOB: 08/11/80\nProblems (Active Problems Only)\n"\
               'Gestational diabetes mellitus, class A&gt;1&lt;'\
               " (Related to Pregnant problem) (SNOMED CT: 124602011, Onset: 03/05/20)\n\t"\
               "Comment: Problem added by Discern Expert (SYSTEM, SYSTEM Cerner on 03/05/20)\n\n"\
               'Gestational hypertension (Related to Pregnant problem) (SNOMED CT: 495022012, Onset: 03/05/20)'\
               "\n\tComment: Problem added by Discern Expert (SYSTEM, SYSTEM Cerner on 03/05/20)\n\n"\
               "Pregnant (SNOMED CT: 191073013, Onset: 06/12/19)\n\n-----------------------\n\t\t\t\t"\
               "SMART, NANCY DOB: 08/11/80\nRisk Factors and Genetic Screening\nRisk Factors (Current Pregnancy)"\
               "\nRisk Factors: Diabetes, gestational, type A1, Gestational hypertension\n"\
               "Risk Factors Comments: --\n\nEthnic Screening\n"\
               '***** END OF REPORT *****</p><p><b>Status</b>: Active</p><p><b>Intent</b>: Plan</p>'\
               '<p><b>Category</b>: Assessment and Plan of Treatment</p><p><b>Author</b>: SYSTEM, SYSTEM Cerner</p>'\
               '<p><b>Effective Period</b>: Apr  5, 2020  4:00 A.M. UTC</p></div>'
      },
      'status': 'active',
      'intent': 'plan',
      'category': [
        {
          'coding': [
            {
              'system': 'http://hl7.org/fhir/us/core/CodeSystem/careplan-category',
              'code': 'assess-plan',
              'display': 'Assessment and Plan of Treatment'
            }
          ],
          'text': 'Assessment and Plan of Treatment'
        }
      ],
      'title': 'Pregnancy Summary Document',
      'subject': {
        'reference': 'Patient/12724066',
        'display': 'SMART, NANCY'
      },
      'period': {
        'start': '2020-04-05T04:00:45.000Z'
      },
      'author': {
        'reference': 'Practitioner/1',
        'display': 'SYSTEM, SYSTEM Cerner'
      }
    }.freeze

    R4_CARE_PLAN_ENTERED_IN_ERROR_STATUS ||= {
      'resourceType': 'CarePlan',
      'id': '5814234',
      'meta': {
        'versionId': '2',
        'lastUpdated': '2014-03-18T20:34:50.000Z'
      },
      'text': {
        'status': 'additional',
        'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Care Plan</b></p>'\
               '<p><b>Patient</b>: Houde, Harry Potter</p>'\
               '<p><b>Description</b>: well, Addendum added</p>'\
               '<p><b>Status</b>: Entered in Error</p><p><b>Intent</b>: Plan</p>'\
               '<p><b>Category</b>: Assessment and Plan of Treatment</p></div>'
      },
      'status': 'entered-in-error',
      'intent': 'plan',
      'category': [
        {
          'coding': [
            {
              'system': 'http://hl7.org/fhir/us/core/CodeSystem/careplan-category',
              'code': 'assess-plan',
              'display': 'Assessment and Plan of Treatment'
            }
          ],
          'text': 'Assessment and Plan of Treatment'
        }
      ],
      'subject': {
        'reference': 'Patient/1316020',
        'display': 'Houde, Harry Potter'
      }
    }.freeze

    R4_CARE_PLAN_UNKNOWN_STATUS ||= {
      'resourceType': 'CarePlan',
      'id': '5814234',
      'meta': {
        'versionId': '2',
        'lastUpdated': '2014-03-18T20:34:50.000Z'
      },
      'text': {
        'status': 'additional',
        'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Care Plan</b></p>'\
               '<p><b>Patient</b>: Houde, Harry Potter</p>'\
               '<p><b>Description</b>: well, Addendum added</p>'\
               '<p><b>Status</b>: Unknown</p><p><b>Intent</b>: Plan</p>'\
               '<p><b>Category</b>: Assessment and Plan of Treatment</p></div>'
      },
      'status': 'unknown',
      'intent': 'plan',
      'category': [
        {
          'coding': [
            {
              'system': 'http://hl7.org/fhir/us/core/CodeSystem/careplan-category',
              'code': 'assess-plan',
              'display': 'Assessment and Plan of Treatment'
            }
          ],
          'text': 'Assessment and Plan of Treatment'
        }
      ],
      'subject': {
        'reference': 'Patient/1316020',
        'display': 'Houde, Harry Potter'
      }
    }.freeze

    R4_CARE_PLAN_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '8c34294c-ba46-492d-bb8e-9937db0ddd5b',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/CarePlan?patient='\
                 '1316020&category=assess-plan'
        },
        {
          'relation': 'next',
          'url': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/CarePlan?patient=1316020'\
                 '&category=assess-plan&-pageContext=eNqdU21r2zAQ_isrGfvkiJNfE0Mhjq0OQ2cbWwnbvhgjq5nAloLslHX0x09OM9Y2d'\
                 'KwBgXS6e-7R6e5hqkeMa8k16od7hlgnpGBNx--5HFHTN7-URPtmJ-QORUeraHY8VnLkP8fZ6or9E98qduinA9Ni5Fo0qOSjFsa5f'\
                 'iBTRMXH-OS6Ws0OWoZPycJetCHXPdpzPSgZtlO-HRJ7ZE4nPsnHEDvYBxsMFi8DmAM2iwKEx4UA4Ltx2SZiDv7cDih4oeOGLkYL_'\
                 '-jCcE7LlOZIq47vtboTHX-TnF7fWmlyjU0Keeg6s62jKo3riNIyXW8oqcwVubkhMU23pE4iSszFXdMN_II9ansxDELJD5ka-bz48'\
                 'TAIJho5cXwp6Lf6Nq3oy2qYak3f3ny_cfPQgU-z1Tsx9vL9GMe7AONegMEX1ONN_2u6lGd1UebbNCHl6299YYz6MLXEzH9CqphkS'\
                 'Zp9_n8xnFR1LoXcTHszmhZ_fJLaecQkvr_8GflK63hTVvn0XHthgweB5S0wmIm3sLN0F7br2EYGYMGzUSpKsk3zTXWOxYHrO663t'\
                 'LDrBb6zBGz_AZv6HmeP8BuKWGNn&-pageDirection=NEXT'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/CarePlan/17463459',
          'resource': R4_CARE_PLAN_ENTRY
        },
        {
          'fullUrl': 'https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/CarePlan/13435120',
          'resource': {
            'resourceType': 'CarePlan',
            'id': '13435120',
            'meta': {
              'versionId': '1',
              'lastUpdated': '2015-10-23T10:28:03.000-05:00'
            },
            'text': {
              'status': 'additional',
              'div': '<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Care Plan</b></p>'\
                     '<p><b>Patient</b>: Houde, Harry Potter</p><p><b>Title</b>'\
                     ': Admission H &amp;amp; P</p><p><b>Status</b>: Active</p><p>'\
                     '<b>Intent</b>: Plan</p><p><b>Category</b>: Assessment '\
                     'and Plan of Treatment</p><p><b>Author</b>: Koester, Oliver</p>'\
                     '<p><b>Effective Period</b>: Oct 23, 2015  3:25 P.M. UTC</p></div>'
            },
            'status': 'active',
            'intent': 'plan',
            'category': [
              {
                'coding': [
                  {
                    'system': 'http://hl7.org/fhir/us/core/CodeSystem/careplan-category',
                    'code': 'assess-plan',
                    'display': 'Assessment and Plan of Treatment'
                  }
                ],
                'text': 'Assessment and Plan of Treatment'
              }
            ],
            'title': 'Admission H & P',
            'subject': {
              'reference': 'Patient/1316020',
              'display': 'Houde, Harry Potter'
            },
            'encounter': {
              'reference': 'Encounter/1693915'
            },
            'period': {
              'start': '2015-10-23T10:25:00.000-05:00'
            },
            'author': {
              'reference': 'Practitioner/1830030',
              'display': 'Koester, Oliver'
            }
          }
        }
      ]
    }.freeze

    R4_CARE_PLAN_PATIENT_BUNDLE ||= {
      'resourceType': 'Bundle',
      'id': '013ed260-cdd4-4ffc-947e-aeadb699d3d4',
      'type': 'searchset',
      'link': [
        {
          'relation': 'self',
          'url': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/CarePlan?patient=12724066&category=assess-plan'
        }
      ],
      'entry': [
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/CarePlan/197375407',
          'resource': R4_CARE_PLAN_PATIENT_ENTRY
        },
        {
          'fullUrl': 'https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/CarePlan/197286315',
          'resource': {
            'resourceType': 'CarePlan',
            'id': '197286315',
            'meta': {
              'versionId': '1',
              'lastUpdated': '2020-04-05T04:00:46.000Z'
            },
            'text': {
              'status': 'additional',
              'div': "<div xmlns='http://www.w3.org/1999/xhtml'><p><b>Care Plan</b></p>"\
                     '<p><b>Patient</b>: SMART, NANCY</p><p><b>Title</b>: Pregnancy Summary Document</p>'\
                     "<p><b>Description</b>: SMART, NANCY\nDOB: 08/11/1980\tAge: 39 Years\t"\
                     "MRN: 00000006930\n------------------------------------------------------\n"\
                     "\t\t\t\tSMART, NANCY DOB: 08/11/80\nPregnancy Summary (Date of Report: 04/04/20)\n"\
                     "\nG 1 P 0 (0,0,0,0)\nGestation: --\tLMP (from pt. history): --\nEDD: --\t"\
                     "EDD/EGA Method: Date of Conception\tEGA: --\n\n-------------------------------"\
                     "\n\t\t\t\tSMART, NANCY DOB: 08/11/80\nAntepartum Note\n\n\t"\
                     "No antepartum notes have been documented\n\n-------------------------------------"\
                     "\n\t\t\t\tSMART, NANCY DOB: 08/11/80\nProblems (Active Problems Only)\n"\
                     'Gestational diabetes mellitus, class A&gt;1&lt;'\
                     " (Related to Pregnant problem) (SNOMED CT: 124602011, Onset: 03/05/20)\n\t"\
                     "Comment: Problem added by Discern Expert (SYSTEM, SYSTEM Cerner on 03/05/20)\n\n"\
                     'Gestational hypertension (Related to Pregnant problem) (SNOMED CT: 495022012, Onset: 03/05/20)'\
                     "\n\tComment: Problem added by Discern Expert (SYSTEM, SYSTEM Cerner on 03/05/20)\n\n"\
                     "Pregnant (SNOMED CT: 191073013, Onset: 06/12/19)\n\n-----------------\n\t\t\t\t"\
                     "SMART, NANCY DOB: 08/11/80\nRisk Factors and Genetic Screening\n"\
                     "Risk Factors (Current Pregnancy)\nRisk Factors: Diabetes, gestational, type A1"\
                     ", Gestational hypertension\nRisk Factors Comments: --\n\nEthnic Screening\n"\
                     '***** END OF REPORT *****</p><p><b>Status</b>: Active</p><p><b>Intent</b>: Plan</p>'\
                     '<p><b>Category</b>: Assessment and Plan of Treatment</p><p><b>Author</b>'\
                     ': SYSTEM, SYSTEM Cerner</p><p><b>Effective Period</b>: Apr  5, 2020  4:00 A.M. UTC</p></div>'
            },
            'status': 'active',
            'intent': 'plan',
            'category': [
              {
                'coding': [
                  {
                    'system': 'http://hl7.org/fhir/us/core/CodeSystem/careplan-category',
                    'code': 'assess-plan',
                    'display': 'Assessment and Plan of Treatment'
                  }
                ],
                'text': 'Assessment and Plan of Treatment'
              }
            ],
            'title': 'Pregnancy Summary Document',
            'subject': {
              'reference': 'Patient/12724066',
              'display': 'SMART, NANCY'
            },
            'period': {
              'start': '2020-04-05T04:00:45.000Z'
            },
            'author': {
              'reference': 'Practitioner/1',
              'display': 'SYSTEM, SYSTEM Cerner'
            }
          }
        }
      ]
    }.freeze
  end
end
