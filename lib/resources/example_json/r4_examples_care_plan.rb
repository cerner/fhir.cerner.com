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
            "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\"&gt;&lt;p&gt;&lt;b&gt;Care Plan&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: Houde, Harry Potter&lt;/p&gt;&lt;p&gt;&lt;b&gt;Title&lt;/b&gt;: History and Physical Note&lt;/p&gt;&lt;p&gt;&lt;b&gt;Description&lt;/b&gt;: Chief Complaint&#10;History of Present Illness&#10;Review of Systems&#10;Medical History&#10;Ongoing&#10;Active silicosis&#10;Allergy testing - no reaction&#10;Breast wound&#10;hidden display as&#10;Housebound&#10;Locking knee&#10;Minimal shared activities&#10;No significant medical problems&#10;Preop testing&#10;pTX stage&#10;Pyogenic Arthritis Involving Multiple Sites&#10;Reality testing&#10;something spooky&#10;T activation syndrome&#10;Taste-blindness&#10;Test diet&#10;Test distance for visual acuity&#10;Testicular failure&#10;Toe Flexion&#10;Visual testing normal&#10;Vitamin D deficiency&#10;Water slide activities&#10;Resolved&#10;Active labor&#10;Inconsistent results on voice testing&#10;Marital problems&#10;O/E - tuning fork testing&#10;Z deformity of thumb&#10;Surgical History&#10;Tone deafness (2006),  Tonsil biopsy sample (Week of 05/17/1989),  ADA - Adenosine deaminase (1989).&#10;Family History&#10;Patient was adopted&#10;Social History&#10;Alcohol&#10;Current, Beer, Wine, Liquor, Home made hard stuff, Several times per day, 5 drinks/episode average. 10 drinks/episode maximum. Started age 8 Years. Previous treatment: None. Alcohol use interferes with work or home: Yes. Drinks more than intended: Yes. Others hurt by drinking: No. Ready to change: No. Household alcohol concerns: No.&#10;Employment/School&#10;Employed, Work/School description: Desk Job. Activity level: Desk/Office. Operates hazardous equipment: No.&#10;Exercise&#10;Exercise duration: 30. Exercise frequency: 3-4 times/week. Self assessment: Fair condition. Exercise type: Walking, Swimming.&#10;Home/Environment - Low Risk&#10;Lives with Alone. Living situation: Home/Independent. Alcohol abuse in household: Yes. Substance abuse in household: Yes. Smoker in household: No. Injuries/Abuse/Neglect in household: No. Feels unsafe at home: No. Safe place to go: Yes. Agency(s)/Others notified: No. Family/Friends available for support: Yes. Concern for family members at home: No. Major illness in household: No. Financial concerns: No. TV/Computer concerns: No. Risks in environment: Does not wear helmet, Pets/Animal exposure, Stairs.&#10;Nutrition/Health&#10;Type of diet: Generl. Wants to lose weight: No. Sleeping concerns: No. Feels highly stressed: Yes.&#10;Sexual&#10;Sexually active: No. History of sexual abuse: No.&#10;Substance Abuse - Medium Risk&#10;Current, Amphetamines, Cocaine, Ecstasy, Hallucinogens/LSD, Heroin, Inhalants/Glues/Solvents, Marijuana, Methamphetamines, Prescription medications, Daily, Previous treatment: Treatment center, Inpatient, Outpatient. Started age 8 Years. IV drug use: Yes. Drug use interferes with work/home: Yes. Ready to change: No. Household substance abuse concerns: No.&#10;Tobacco&#10;Current every day smoker, Cigars, hand, Household tobacco concerns: Yes&#10;Allergies&#10;oxyCODONE&#10;Peanuts&#10;sulfa drugs&#65533;&#65533;(Anaphylactic reaction)&#10;uranium&#10;iodine&#65533;&#65533;(Hives, Sneezing)&#10;penicillin V potassium&#65533;&#65533;(Hives)&#10;skin test antigens, multiple&#10;Home Medication List&#10;Aceon 2 mg oral tablet, 1 tab(s), Oral, Daily, 11 refills&#10;acetaminophen-tramadol&#10;Physical Exam&#10;Vitals &amp; Measurements&#10;Lab Results&#10;Radiology Results&#10;Assessment/Plan&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Intent&lt;/b&gt;: Plan&lt;/p&gt;&lt;p&gt;&lt;b&gt;Category&lt;/b&gt;: Assessment and Plan of Treatment&lt;/p&gt;&lt;p&gt;&lt;b&gt;Author&lt;/b&gt;: Shaik, Faiz Ahmed&lt;/p&gt;&lt;p&gt;&lt;b&gt;Effective Period&lt;/b&gt;: Mar 10, 2016  7:43 P.M. UTC&lt;/p&gt;&lt;/div&gt;"
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
                        "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\"&gt;&lt;p&gt;&lt;b&gt;Care Plan&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: Houde, Harry Potter&lt;/p&gt;&lt;p&gt;&lt;b&gt;Title&lt;/b&gt;: History and Physical Note&lt;/p&gt;&lt;p&gt;&lt;b&gt;Description&lt;/b&gt;: Chief Complaint&#10;History of Present Illness&#10;Review of Systems&#10;Medical History&#10;Ongoing&#10;Active silicosis&#10;Allergy testing - no reaction&#10;Breast wound&#10;hidden display as&#10;Housebound&#10;Locking knee&#10;Minimal shared activities&#10;No significant medical problems&#10;Preop testing&#10;pTX stage&#10;Pyogenic Arthritis Involving Multiple Sites&#10;Reality testing&#10;something spooky&#10;T activation syndrome&#10;Taste-blindness&#10;Test diet&#10;Test distance for visual acuity&#10;Testicular failure&#10;Toe Flexion&#10;Visual testing normal&#10;Vitamin D deficiency&#10;Water slide activities&#10;Resolved&#10;Active labor&#10;Inconsistent results on voice testing&#10;Marital problems&#10;O/E - tuning fork testing&#10;Z deformity of thumb&#10;Surgical History&#10;Tone deafness (2006),  Tonsil biopsy sample (Week of 05/17/1989),  ADA - Adenosine deaminase (1989).&#10;Family History&#10;Patient was adopted&#10;Social History&#10;Alcohol&#10;Current, Beer, Wine, Liquor, Home made hard stuff, Several times per day, 5 drinks/episode average. 10 drinks/episode maximum. Started age 8 Years. Previous treatment: None. Alcohol use interferes with work or home: Yes. Drinks more than intended: Yes. Others hurt by drinking: No. Ready to change: No. Household alcohol concerns: No.&#10;Employment/School&#10;Employed, Work/School description: Desk Job. Activity level: Desk/Office. Operates hazardous equipment: No.&#10;Exercise&#10;Exercise duration: 30. Exercise frequency: 3-4 times/week. Self assessment: Fair condition. Exercise type: Walking, Swimming.&#10;Home/Environment - Low Risk&#10;Lives with Alone. Living situation: Home/Independent. Alcohol abuse in household: Yes. Substance abuse in household: Yes. Smoker in household: No. Injuries/Abuse/Neglect in household: No. Feels unsafe at home: No. Safe place to go: Yes. Agency(s)/Others notified: No. Family/Friends available for support: Yes. Concern for family members at home: No. Major illness in household: No. Financial concerns: No. TV/Computer concerns: No. Risks in environment: Does not wear helmet, Pets/Animal exposure, Stairs.&#10;Nutrition/Health&#10;Type of diet: Generl. Wants to lose weight: No. Sleeping concerns: No. Feels highly stressed: Yes.&#10;Sexual&#10;Sexually active: No. History of sexual abuse: No.&#10;Substance Abuse - Medium Risk&#10;Current, Amphetamines, Cocaine, Ecstasy, Hallucinogens/LSD, Heroin, Inhalants/Glues/Solvents, Marijuana, Methamphetamines, Prescription medications, Daily, Previous treatment: Treatment center, Inpatient, Outpatient. Started age 8 Years. IV drug use: Yes. Drug use interferes with work/home: Yes. Ready to change: No. Household substance abuse concerns: No.&#10;Tobacco&#10;Current every day smoker, Cigars, hand, Household tobacco concerns: Yes&#10;Allergies&#10;oxyCODONE&#10;Peanuts&#10;sulfa drugs&#65533;&#65533;(Anaphylactic reaction)&#10;uranium&#10;iodine&#65533;&#65533;(Hives, Sneezing)&#10;penicillin V potassium&#65533;&#65533;(Hives)&#10;skin test antigens, multiple&#10;Home Medication List&#10;Aceon 2 mg oral tablet, 1 tab(s), Oral, Daily, 11 refills&#10;acetaminophen-tramadol&#10;Physical Exam&#10;Vitals &amp; Measurements&#10;Lab Results&#10;Radiology Results&#10;Assessment/Plan&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Intent&lt;/b&gt;: Plan&lt;/p&gt;&lt;p&gt;&lt;b&gt;Category&lt;/b&gt;: Assessment and Plan of Treatment&lt;/p&gt;&lt;p&gt;&lt;b&gt;Author&lt;/b&gt;: Shaik, Faiz Ahmed&lt;/p&gt;&lt;p&gt;&lt;b&gt;Effective Period&lt;/b&gt;: Mar 10, 2016  7:43 P.M. UTC&lt;/p&gt;&lt;/div&gt;"
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
                        "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\"&gt;&lt;p&gt;&lt;b&gt;Care Plan&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: Houde, Harry Potter&lt;/p&gt;&lt;p&gt;&lt;b&gt;Title&lt;/b&gt;: Admission H &amp; P&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Intent&lt;/b&gt;: Plan&lt;/p&gt;&lt;p&gt;&lt;b&gt;Category&lt;/b&gt;: Assessment and Plan of Treatment&lt;/p&gt;&lt;p&gt;&lt;b&gt;Author&lt;/b&gt;: Koester, Oliver&lt;/p&gt;&lt;p&gt;&lt;b&gt;Effective Period&lt;/b&gt;: Oct 23, 2015  3:25 P.M. UTC&lt;/p&gt;&lt;/div&gt;"
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
                "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/CarePlan/13411332",
                "resource": {
                    "resourceType": "CarePlan",
                    "id": "13411332",
                    "meta": {
                        "versionId": "1",
                        "lastUpdated": "2015-10-22T15:06:07.000-05:00"
                    },
                    "text": {
                        "status": "additional",
                        "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\"&gt;&lt;p&gt;&lt;b&gt;Care Plan&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: Houde, Harry Potter&lt;/p&gt;&lt;p&gt;&lt;b&gt;Title&lt;/b&gt;: Document with image&lt;/p&gt;&lt;p&gt;&lt;b&gt;Description&lt;/b&gt;: section 1&#10;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Intent&lt;/b&gt;: Plan&lt;/p&gt;&lt;p&gt;&lt;b&gt;Category&lt;/b&gt;: Assessment and Plan of Treatment&lt;/p&gt;&lt;p&gt;&lt;b&gt;Author&lt;/b&gt;: Koester, Oliver&lt;/p&gt;&lt;p&gt;&lt;b&gt;Effective Period&lt;/b&gt;: Oct 22, 2015  8:02 P.M. UTC&lt;/p&gt;&lt;/div&gt;"
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
                    "title": "Document with image",
                    "subject": {
                        "reference": "Patient/1316020",
                        "display": "Houde, Harry Potter"
                    },
                    "encounter": {
                        "reference": "Encounter/1693915"
                    },
                    "period": {
                        "start": "2015-10-22T15:02:00.000-05:00"
                    },
                    "author": {
                        "reference": "Practitioner/1830030",
                        "display": "Koester, Oliver"
                    }
                }
            },
            {
                "fullUrl": "https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/CarePlan/6326319",
                "resource": {
                    "resourceType": "CarePlan",
                    "id": "6326319",
                    "meta": {
                        "versionId": "3",
                        "lastUpdated": "2014-06-05T09:36:34.000-05:00"
                    },
                    "text": {
                        "status": "additional",
                        "div": "&lt;div xmlns=\"http://www.w3.org/1999/xhtml\"&gt;&lt;p&gt;&lt;b&gt;Care Plan&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Patient&lt;/b&gt;: Houde, Harry Potter&lt;/p&gt;&lt;p&gt;&lt;b&gt;Title&lt;/b&gt;: Office Visit Note Test&lt;/p&gt;&lt;p&gt;&lt;b&gt;Description&lt;/b&gt;:  Maybe the crawler will pick this up&#10;,  One more for good measure&#10;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Status&lt;/b&gt;: Active&lt;/p&gt;&lt;p&gt;&lt;b&gt;Intent&lt;/b&gt;: Plan&lt;/p&gt;&lt;p&gt;&lt;b&gt;Category&lt;/b&gt;: Assessment and Plan of Treatment&lt;/p&gt;&lt;p&gt;&lt;b&gt;Author&lt;/b&gt;: Rentz, Alex&lt;/p&gt;&lt;p&gt;&lt;b&gt;Effective Period&lt;/b&gt;: Jun  5, 2014  2:26 P.M. UTC&lt;/p&gt;&lt;/div&gt;"
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
                    "title": "Office Visit Note Test",
                    "subject": {
                        "reference": "Patient/1316020",
                        "display": "Houde, Harry Potter"
                    },
                    "encounter": {
                        "reference": "Encounter/1693915"
                    },
                    "period": {
                        "start": "2014-06-05T09:26:00.000-05:00"
                    },
                    "author": {
                        "reference": "Practitioner/1894036",
                        "display": "Rentz, Alex"
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
  