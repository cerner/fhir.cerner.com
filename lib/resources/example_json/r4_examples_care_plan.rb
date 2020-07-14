module Cerner
    module Resources
  
      R4_CARE_PLAN_ENTRY ||= {
        "resourceType": "CarePlan",
        "id": "17463459",
        "meta": {
            "versionId": "1",
            "lastUpdated": "2016-03-10T13:43:45.000-06:00"
        },
        "text": {
            "status": "additional",
            "div": "&lt;div xmlns=\&quot;http://www.w3.org/1999/xhtml\&quot;&gt;&lt;p&gt;&lt;b&gt;Care Plan&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: Houde, Harry Potter&lt;/p&gt;&lt;p&gt;&lt;b&gt;Title&lt;/b&gt;: History and Physical Note&lt;/p&gt;&lt;p&gt;&lt;b&gt;Description&lt;/b&gt;: Chief Complaint&amp;#10;History of Present Illness&amp;#10;Review of Systems&amp;#10;Medical History&amp;#10;Ongoing&amp;#10;Active silicosis&amp;#10;Allergy testing - no reaction&amp;#10;Breast wound&amp;#10;hidden display as&amp;#10;Housebound&amp;#10;Locking knee&amp;#10;Minimal shared activities&amp;#10;No significant medical problems&amp;#10;Preop testing&amp;#10;pTX stage&amp;#10;Pyogenic Arthritis Involving Multiple Sites&amp;#10;Reality testing&amp;#10;something spooky&amp;#10;T activation syndrome&amp;#10;Taste-blindness&amp;#10;Test diet&amp;#10;Test distance for visual acuity&amp;#10;Testicular failure&amp;#10;Toe Flexion&amp;#10;Visual testing normal&amp;#10;Vitamin D deficiency&amp;#10;Water slide activities&amp;#10;Resolved&amp;#10;Active labor&amp;#10;Inconsistent results on voice testing&amp;#10;Marital problems&amp;#10;O/E - tuning fork testing&amp;#10;Z deformity of thumb&amp;#10;Surgical History&amp;#10;Tone deafness (2006),  Tonsil biopsy sample (Week of 05/17/1989),  ADA - Adenosine deaminase (1989).&amp;#10;Family History&amp;#10;Patient was adopted&amp;#10;Social History&amp;#10;Alcohol&amp;#10;Current, Beer, Wine, Liquor, Home made hard stuff, Several times per day, 5 drinks/episode average. 10 drinks/episode maximum. Started age 8 Years. Previous treatment: None. Alcohol use interferes with work or home: Yes. Drinks more than intended: Yes. Others hurt by drinking: No. Ready to change: No. Household alcohol concerns: No.&amp;#10;Employment/School&amp;#10;Employed, Work/School description: Desk Job. Activity level: Desk/Office. Operates hazardous equipment: No.&amp;#10;Exercise&amp;#10;Exercise duration: 30. Exercise frequency: 3-4 times/week. Self assessment: Fair condition. Exercise type: Walking, Swimming.&amp;#10;Home/Environment - Low Risk&amp;#10;Lives with Alone. Living situation: Home/Independent. Alcohol abuse in household: Yes. Substance abuse in household: Yes. Smoker in household: No. Injuries/Abuse/Neglect in household: No. Feels unsafe at home: No. Safe place to go: Yes. Agency(s)/Others notified: No. Family/Friends available for support: Yes. Concern for family members at home: No. Major illness in household: No. Financial concerns: No. TV/Computer concerns: No. Risks in environment: Does not wear helmet, Pets/Animal exposure, Stairs.&amp;#10;Nutrition/Health&amp;#10;Type of diet: Generl. Wants to lose weight: No. Sleeping concerns: No. Feels highly stressed: Yes.&amp;#10;Sexual&amp;#10;Sexually active: No. History of sexual abuse: No.&amp;#10;Substance Abuse - Medium Risk&amp;#10;Current, Amphetamines, Cocaine, Ecstasy, Hallucinogens/LSD, Heroin, Inhalants/Glues/Solvents, Marijuana, Methamphetamines, Prescription medications, Daily, Previous treatment: Treatment center, Inpatient, Outpatient. Started age 8 Years. IV drug use: Yes. Drug use interferes with work/home: Yes. Ready to change: No. Household substance abuse concerns: No.&amp;#10;Tobacco&amp;#10;Current every day smoker, Cigars, hand, Household tobacco concerns: Yes&amp;#10;Allergies&amp;#10;oxyCODONE&amp;#10;Peanuts&amp;#10;sulfa drugs&amp;#65533;&amp;#65533;(Anaphylactic reaction)&amp;#10;uranium&amp;#10;iodine&amp;#65533;&amp;#65533;(Hives, Sneezing)&amp;#10;penicillin V potassium&amp;#65533;&amp;#65533;(Hives)&amp;#10;skin test antigens, multiple&amp;#10;Home Medication List&amp;#10;Aceon 2 mg oral tablet, 1 tab(s), Oral, Daily, 11 refills&amp;#10;acetaminophen-tramadol&amp;#10;Physical Exam&amp;#10;Vitals &amp;amp; Measurements&amp;#10;Lab Results&amp;#10;Radiology Results&amp;#10;Assessment/Plan&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Intent&lt;/b&gt;: Plan&lt;/p&gt;&lt;p&gt;&lt;b&gt;Category&lt;/b&gt;: Assessment and Plan of Treatment&lt;/p&gt;&lt;p&gt;&lt;b&gt;Author&lt;/b&gt;: Shaik, Faiz Ahmed&lt;/p&gt;&lt;p&gt;&lt;b&gt;Effective Period&lt;/b&gt;: Mar 10, 2016  7:43 P.M. UTC&lt;/p&gt;&lt;/div&gt;"
        },
        "status": "active",
        "intent": "plan",
        "category": [
            {
                "coding": [
                    {
                        "system": "http://hl7.org/fhir/us/core/CodeSystem/careplan-category",
                        "code": "assess-plan",
                        "display": "Assessment and Plan of Treatment"
                    }
                ],
                "text": "Assessment and Plan of Treatment"
            }
        ],
        "title": "History and Physical Note",
        "subject": {
            "reference": "Patient/1316020",
            "display": "Houde, Harry Potter"
        },
        "encounter": {
            "reference": "Encounter/1721945"
        },
        "period": {
            "start": "2016-03-10T13:43:32.000-06:00"
        },
        "author": {
            "reference": "Practitioner/1830018",
            "display": "Shaik, Faiz Ahmed"
        }
     }

     R4_CARE_PLAN_BUNDLE ||= 
     {
        "resourceType": "Bundle",
        "id": "8c34294c-ba46-492d-bb8e-9937db0ddd5b",
        "type": "searchset",
        "link": [
            {
                "relation": "self",
                "url": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/CarePlan?patient=1316020&category=assess-plan"
            },
            {
                "relation": "next",
                "url": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/CarePlan?patient=1316020&category=assess-plan&-pageContext=eNqdU21r2zAQ_isrGfvkiJNfE0Mhjq0OQ2cbWwnbvhgjq5nAloLslHX0x09OM9Y2dKwBgXS6e-7R6e5hqkeMa8k16od7hlgnpGBNx--5HFHTN7-URPtmJ-QORUeraHY8VnLkP8fZ6or9E98qduinA9Ni5Fo0qOSjFsa5fiBTRMXH-OS6Ws0OWoZPycJetCHXPdpzPSgZtlO-HRJ7ZE4nPsnHEDvYBxsMFi8DmAM2iwKEx4UA4Ltx2SZiDv7cDih4oeOGLkYL_-jCcE7LlOZIq47vtboTHX-TnF7fWmlyjU0Keeg6s62jKo3riNIyXW8oqcwVubkhMU23pE4iSszFXdMN_II9ansxDELJD5ka-bz48TAIJho5cXwp6Lf6Nq3oy2qYak3f3ny_cfPQgU-z1Tsx9vL9GMe7AONegMEX1ONN_2u6lGd1UebbNCHl6299YYz6MLXEzH9CqphkSZp9_n8xnFR1LoXcTHszmhZ_fJLaecQkvr_8GflK63hTVvn0XHthgweB5S0wmIm3sLN0F7br2EYGYMGzUSpKsk3zTXWOxYHrO663tLDrBb6zBGz_AZv6HmeP8BuKWGNn&-pageDirection=NEXT"
            }
        ],
        "entry": [
            {
                "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/CarePlan/17463459",
                "resource": {
                    "resourceType": "CarePlan",
                    "id": "17463459",
                    "meta": {
                        "versionId": "1",
                        "lastUpdated": "2016-03-10T13:43:45.000-06:00"
                    },
                    "text": {
                        "status": "additional",
                        "div": "&lt;div xmlns=\&quot;http://www.w3.org/1999/xhtml\&quot;&gt;&lt;p&gt;&lt;b&gt;Care Plan&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: Houde, Harry Potter&lt;/p&gt;&lt;p&gt;&lt;b&gt;Title&lt;/b&gt;: History and Physical Note&lt;/p&gt;&lt;p&gt;&lt;b&gt;Description&lt;/b&gt;: Chief Complaint&amp;#10;History of Present Illness&amp;#10;Review of Systems&amp;#10;Medical History&amp;#10;Ongoing&amp;#10;Active silicosis&amp;#10;Allergy testing - no reaction&amp;#10;Breast wound&amp;#10;hidden display as&amp;#10;Housebound&amp;#10;Locking knee&amp;#10;Minimal shared activities&amp;#10;No significant medical problems&amp;#10;Preop testing&amp;#10;pTX stage&amp;#10;Pyogenic Arthritis Involving Multiple Sites&amp;#10;Reality testing&amp;#10;something spooky&amp;#10;T activation syndrome&amp;#10;Taste-blindness&amp;#10;Test diet&amp;#10;Test distance for visual acuity&amp;#10;Testicular failure&amp;#10;Toe Flexion&amp;#10;Visual testing normal&amp;#10;Vitamin D deficiency&amp;#10;Water slide activities&amp;#10;Resolved&amp;#10;Active labor&amp;#10;Inconsistent results on voice testing&amp;#10;Marital problems&amp;#10;O/E - tuning fork testing&amp;#10;Z deformity of thumb&amp;#10;Surgical History&amp;#10;Tone deafness (2006),  Tonsil biopsy sample (Week of 05/17/1989),  ADA - Adenosine deaminase (1989).&amp;#10;Family History&amp;#10;Patient was adopted&amp;#10;Social History&amp;#10;Alcohol&amp;#10;Current, Beer, Wine, Liquor, Home made hard stuff, Several times per day, 5 drinks/episode average. 10 drinks/episode maximum. Started age 8 Years. Previous treatment: None. Alcohol use interferes with work or home: Yes. Drinks more than intended: Yes. Others hurt by drinking: No. Ready to change: No. Household alcohol concerns: No.&amp;#10;Employment/School&amp;#10;Employed, Work/School description: Desk Job. Activity level: Desk/Office. Operates hazardous equipment: No.&amp;#10;Exercise&amp;#10;Exercise duration: 30. Exercise frequency: 3-4 times/week. Self assessment: Fair condition. Exercise type: Walking, Swimming.&amp;#10;Home/Environment - Low Risk&amp;#10;Lives with Alone. Living situation: Home/Independent. Alcohol abuse in household: Yes. Substance abuse in household: Yes. Smoker in household: No. Injuries/Abuse/Neglect in household: No. Feels unsafe at home: No. Safe place to go: Yes. Agency(s)/Others notified: No. Family/Friends available for support: Yes. Concern for family members at home: No. Major illness in household: No. Financial concerns: No. TV/Computer concerns: No. Risks in environment: Does not wear helmet, Pets/Animal exposure, Stairs.&amp;#10;Nutrition/Health&amp;#10;Type of diet: Generl. Wants to lose weight: No. Sleeping concerns: No. Feels highly stressed: Yes.&amp;#10;Sexual&amp;#10;Sexually active: No. History of sexual abuse: No.&amp;#10;Substance Abuse - Medium Risk&amp;#10;Current, Amphetamines, Cocaine, Ecstasy, Hallucinogens/LSD, Heroin, Inhalants/Glues/Solvents, Marijuana, Methamphetamines, Prescription medications, Daily, Previous treatment: Treatment center, Inpatient, Outpatient. Started age 8 Years. IV drug use: Yes. Drug use interferes with work/home: Yes. Ready to change: No. Household substance abuse concerns: No.&amp;#10;Tobacco&amp;#10;Current every day smoker, Cigars, hand, Household tobacco concerns: Yes&amp;#10;Allergies&amp;#10;oxyCODONE&amp;#10;Peanuts&amp;#10;sulfa drugs&amp;#65533;&amp;#65533;(Anaphylactic reaction)&amp;#10;uranium&amp;#10;iodine&amp;#65533;&amp;#65533;(Hives, Sneezing)&amp;#10;penicillin V potassium&amp;#65533;&amp;#65533;(Hives)&amp;#10;skin test antigens, multiple&amp;#10;Home Medication List&amp;#10;Aceon 2 mg oral tablet, 1 tab(s), Oral, Daily, 11 refills&amp;#10;acetaminophen-tramadol&amp;#10;Physical Exam&amp;#10;Vitals &amp;amp; Measurements&amp;#10;Lab Results&amp;#10;Radiology Results&amp;#10;Assessment/Plan&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Intent&lt;/b&gt;: Plan&lt;/p&gt;&lt;p&gt;&lt;b&gt;Category&lt;/b&gt;: Assessment and Plan of Treatment&lt;/p&gt;&lt;p&gt;&lt;b&gt;Author&lt;/b&gt;: Shaik, Faiz Ahmed&lt;/p&gt;&lt;p&gt;&lt;b&gt;Effective Period&lt;/b&gt;: Mar 10, 2016  7:43 P.M. UTC&lt;/p&gt;&lt;/div&gt;"
                    },
                    "status": "active",
                    "intent": "plan",
                    "category": [
                        {
                            "coding": [
                                {
                                    "system": "http://hl7.org/fhir/us/core/CodeSystem/careplan-category",
                                    "code": "assess-plan",
                                    "display": "Assessment and Plan of Treatment"
                                }
                            ],
                            "text": "Assessment and Plan of Treatment"
                        }
                    ],
                    "title": "History and Physical Note",
                    "subject": {
                        "reference": "Patient/1316020",
                        "display": "Houde, Harry Potter"
                    },
                    "encounter": {
                        "reference": "Encounter/1721945"
                    },
                    "period": {
                        "start": "2016-03-10T13:43:32.000-06:00"
                    },
                    "author": {
                        "reference": "Practitioner/1830018",
                        "display": "Shaik, Faiz Ahmed"
                    }
                }
            },
            {
                "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/CarePlan/13435120",
                "resource": {
                    "resourceType": "CarePlan",
                    "id": "13435120",
                    "meta": {
                        "versionId": "1",
                        "lastUpdated": "2015-10-23T10:28:03.000-05:00"
                    },
                    "text": {
                        "status": "additional",
                        "div": "&lt;div xmlns=\&quot;http://www.w3.org/1999/xhtml\&quot;&gt;&lt;p&gt;&lt;b&gt;Care Plan&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: Houde, Harry Potter&lt;/p&gt;&lt;p&gt;&lt;b&gt;Title&lt;/b&gt;: Admission H &amp;amp; P&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Intent&lt;/b&gt;: Plan&lt;/p&gt;&lt;p&gt;&lt;b&gt;Category&lt;/b&gt;: Assessment and Plan of Treatment&lt;/p&gt;&lt;p&gt;&lt;b&gt;Author&lt;/b&gt;: Koester, Oliver&lt;/p&gt;&lt;p&gt;&lt;b&gt;Effective Period&lt;/b&gt;: Oct 23, 2015  3:25 P.M. UTC&lt;/p&gt;&lt;/div&gt;"
                    },
                    "status": "active",
                    "intent": "plan",
                    "category": [
                        {
                            "coding": [
                                {
                                    "system": "http://hl7.org/fhir/us/core/CodeSystem/careplan-category",
                                    "code": "assess-plan",
                                    "display": "Assessment and Plan of Treatment"
                                }
                            ],
                            "text": "Assessment and Plan of Treatment"
                        }
                    ],
                    "title": "Admission H & P",
                    "subject": {
                        "reference": "Patient/1316020",
                        "display": "Houde, Harry Potter"
                    },
                    "encounter": {
                        "reference": "Encounter/1693915"
                    },
                    "period": {
                        "start": "2015-10-23T10:25:00.000-05:00"
                    },
                    "author": {
                        "reference": "Practitioner/1830030",
                        "display": "Koester, Oliver"
                    }
                }
            },
            {
                "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/CarePlan/5873995",
                "resource": {
                    "resourceType": "CarePlan",
                    "id": "5873995",
                    "meta": {
                        "versionId": "1",
                        "lastUpdated": "2014-04-15T16:42:16.000-05:00"
                    },
                    "text": {
                        "status": "additional",
                        "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\"&gt;&lt;p&gt;&lt;b&gt;Care Plan&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: Houde, Harry Potter&lt;/p&gt;&lt;p&gt;&lt;b&gt;Title&lt;/b&gt;: Free Text Note&lt;/p&gt;&lt;p&gt;&lt;b&gt;Description&lt;/b&gt;: Testing&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Intent&lt;/b&gt;: Plan&lt;/p&gt;&lt;p&gt;&lt;b&gt;Category&lt;/b&gt;: Assessment and Plan of Treatment&lt;/p&gt;&lt;p&gt;&lt;b&gt;Author&lt;/b&gt;: Raghuraman, Ashwin&lt;/p&gt;&lt;p&gt;&lt;b&gt;Effective Period&lt;/b&gt;: Apr 15, 2014  9:41 P.M. UTC&lt;/p&gt;&lt;/div&gt;"
                    },
                    "status": "active",
                    "intent": "plan",
                    "category": [
                        {
                            "coding": [
                                {
                                    "system": "http://hl7.org/fhir/us/core/CodeSystem/careplan-category",
                                    "code": "assess-plan",
                                    "display": "Assessment and Plan of Treatment"
                                }
                            ],
                            "text": "Assessment and Plan of Treatment"
                        }
                    ],
                    "title": "Free Text Note",
                    "subject": {
                        "reference": "Patient/1316020",
                        "display": "Houde, Harry Potter"
                    },
                    "encounter": {
                        "reference": "Encounter/1309912"
                    },
                    "period": {
                        "start": "2014-04-15T16:41:50.000-05:00"
                    },
                    "author": {
                        "reference": "Practitioner/1830026",
                        "display": "Raghuraman, Ashwin"
                    }
                }
            },
            {
                "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/CarePlan/5814421",
                "resource": {
                    "resourceType": "CarePlan",
                    "id": "5814421",
                    "meta": {
                        "versionId": "2",
                        "lastUpdated": "2014-03-19T11:51:54.000-05:00"
                    },
                    "text": {
                        "status": "additional",
                        "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\"&gt;&lt;p&gt;&lt;b&gt;Care Plan&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: Houde, Harry Potter&lt;/p&gt;&lt;p&gt;&lt;b&gt;Title&lt;/b&gt;: deneng test&lt;/p&gt;&lt;p&gt;&lt;b&gt;Description&lt;/b&gt;: new transform, addendum added&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Intent&lt;/b&gt;: Plan&lt;/p&gt;&lt;p&gt;&lt;b&gt;Category&lt;/b&gt;: Assessment and Plan of Treatment&lt;/p&gt;&lt;p&gt;&lt;b&gt;Author&lt;/b&gt;: Sharma, Pankaj&lt;/p&gt;&lt;p&gt;&lt;b&gt;Effective Period&lt;/b&gt;: Mar 19, 2014  3:00 P.M. UTC&lt;/p&gt;&lt;/div&gt;"
                    },
                    "status": "active",
                    "intent": "plan",
                    "category": [
                        {
                            "coding": [
                                {
                                    "system": "http://hl7.org/fhir/us/core/CodeSystem/careplan-category",
                                    "code": "assess-plan",
                                    "display": "Assessment and Plan of Treatment"
                                }
                            ],
                            "text": "Assessment and Plan of Treatment"
                        }
                    ],
                    "title": "deneng test",
                    "subject": {
                        "reference": "Patient/1316020",
                        "display": "Houde, Harry Potter"
                    },
                    "encounter": {
                        "reference": "Encounter/1693915"
                    },
                    "period": {
                        "start": "2014-03-19T10:00:00.000-05:00"
                    },
                    "author": {
                        "reference": "Practitioner/1940008",
                        "display": "Sharma, Pankaj"
                    }
                }
            },
            {
                "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/CarePlan/5814234",
                "resource": {
                    "resourceType": "CarePlan",
                    "id": "5814234",
                    "meta": {
                        "versionId": "2",
                        "lastUpdated": "2014-03-18T15:34:50.000-05:00"
                    },
                    "text": {
                        "status": "additional",
                        "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\"&gt;&lt;p&gt;&lt;b&gt;Care Plan&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: Houde, Harry Potter&lt;/p&gt;&lt;p&gt;&lt;b&gt;Title&lt;/b&gt;: testing&lt;/p&gt;&lt;p&gt;&lt;b&gt;Description&lt;/b&gt;: well, Addendum added&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Intent&lt;/b&gt;: Plan&lt;/p&gt;&lt;p&gt;&lt;b&gt;Category&lt;/b&gt;: Assessment and Plan of Treatment&lt;/p&gt;&lt;p&gt;&lt;b&gt;Author&lt;/b&gt;: Sharma, Pankaj&lt;/p&gt;&lt;p&gt;&lt;b&gt;Effective Period&lt;/b&gt;: Mar 18, 2014  8:17 P.M. UTC&lt;/p&gt;&lt;/div&gt;"
                    },
                    "status": "active",
                    "intent": "plan",
                    "category": [
                        {
                            "coding": [
                                {
                                    "system": "http://hl7.org/fhir/us/core/CodeSystem/careplan-category",
                                    "code": "assess-plan",
                                    "display": "Assessment and Plan of Treatment"
                                }
                            ],
                            "text": "Assessment and Plan of Treatment"
                        }
                    ],
                    "title": "testing",
                    "subject": {
                        "reference": "Patient/1316020",
                        "display": "Houde, Harry Potter"
                    },
                    "encounter": {
                        "reference": "Encounter/1693915"
                    },
                    "period": {
                        "start": "2014-03-18T15:17:00.000-05:00"
                    },
                    "author": {
                        "reference": "Practitioner/1940008",
                        "display": "Sharma, Pankaj"
                    }
                }
            },
            {
                "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/CarePlan/5810020",
                "resource": {
                    "resourceType": "CarePlan",
                    "id": "5810020",
                    "meta": {
                        "versionId": "2",
                        "lastUpdated": "2014-03-14T14:13:54.000-05:00"
                    },
                    "text": {
                        "status": "additional",
                        "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\"&gt;&lt;p&gt;&lt;b&gt;Care Plan&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: Houde, Harry Potter&lt;/p&gt;&lt;p&gt;&lt;b&gt;Title&lt;/b&gt;: dev eng&lt;/p&gt;&lt;p&gt;&lt;b&gt;Description&lt;/b&gt;: letss s sseeeee, addendum added&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Intent&lt;/b&gt;: Plan&lt;/p&gt;&lt;p&gt;&lt;b&gt;Category&lt;/b&gt;: Assessment and Plan of Treatment&lt;/p&gt;&lt;p&gt;&lt;b&gt;Author&lt;/b&gt;: Sharma, Pankaj&lt;/p&gt;&lt;p&gt;&lt;b&gt;Effective Period&lt;/b&gt;: Mar 14, 2014  7:12 P.M. UTC&lt;/p&gt;&lt;/div&gt;"
                    },
                    "status": "active",
                    "intent": "plan",
                    "category": [
                        {
                            "coding": [
                                {
                                    "system": "http://hl7.org/fhir/us/core/CodeSystem/careplan-category",
                                    "code": "assess-plan",
                                    "display": "Assessment and Plan of Treatment"
                                }
                            ],
                            "text": "Assessment and Plan of Treatment"
                        }
                    ],
                    "title": "dev eng",
                    "subject": {
                        "reference": "Patient/1316020",
                        "display": "Houde, Harry Potter"
                    },
                    "encounter": {
                        "reference": "Encounter/1693915"
                    },
                    "period": {
                        "start": "2014-03-14T14:12:00.000-05:00"
                    },
                    "author": {
                        "reference": "Practitioner/1940008",
                        "display": "Sharma, Pankaj"
                    }
                }
            }
         ]
        }

     
    end
  end
  