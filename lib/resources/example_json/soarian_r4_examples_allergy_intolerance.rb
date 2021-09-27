# frozen_string_literal: true

module Cerner
  module Resources

  	SOARIAN_R4_ALLERGY_INTOLERANCE_READ_BY_ID ||= {
	"resourceType": "AllergyIntolerance",
	"id": "A879904FD2FE4B2D90C89FDA84E1285F.ALG.17073",
	"meta": {
		"lastUpdated": "2020-11-11T20:40:37-05:00"
	},
	"verificationStatus": {
		"coding": [
			{
				"system": "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
				"code": "confirmed",
				"display": "Confirmed"
			}
		]
	},
	"clinicalStatus": {
		"coding": [
			{
				"system": "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
				"code": "active",
				"display": "Active"
			}
		]
	},
	"category": [
		"medication"
	],
	"code": {
		"coding": [
			{
				"system": "http://www.nlm.nih.gov/research/umls/rxnorm",
				"code": "1191",
				"display": "Aspirin"
			}
		],
		"text": "aspirin"
	},
	"patient": {
		"reference": "Patient/A879904FD2FE4B2D90C89FDA84E1285F",
		"display": "Mcgovern,Astrid Santiago"
	},
	"onsetString": "unknown",
	"reaction": [
		{
			"manifestation": [
				{
					"text": "Bleeding"
				}
			],
			"severity": "severe"
		}
	],
	"text": {
		"status": "generated",
		"div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><br /><b>Allergy Intolerance</b><br /><b>Patient</b>:Mcgovern,Astrid Santiago<br /> <b>Clinical Status</b>: <b>Code</b>:active <b>Display</b>:Active <b>System</b>:http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical<br /><b>Verification Status</b>: <b>Code</b>:confirmed <b>Display</b>:Confirmed <b>System</b>:http://terminology.hl7.org/CodeSystem/allergyintolerance-verification<br /><b>Category</b>:medication<br /><b>Code</b>:<b>Code</b>:1191 <b>Display</b>:Aspirin <b>System</b>:http://www.nlm.nih.gov/research/umls/rxnorm <b>Text</b>:aspirin<br /><b>Onset</b>:unknown<br /><b>Reaction</b>:<b>Text</b>:Bleeding <b>Severity</b>:severe<br /><br /></div>"
	}
}.freeze


  	SOARIAN_R4_ALLERGY_INTOLERANCE_SEARCH_BY_ID_ENTRY ||= {
	"resourceType": "Bundle",
	"id": "6bd059fd-dc0f-48a7-9762-24bddddd5d03",
	"type": "searchset",
	"timestamp": "2021-03-19T12:40:22-04:00",
	"entry": [
		{
			"fullUrl": "https://fhir-myrecord-sc.cerner.com/r4/0e885770-571b-4c0c-b30f-21df9a058d0d/AllergyIntolerance/A879904FD2FE4B2D90C89FDA84E1285F.ALG.17073",
			"resource": {
				"resourceType": "AllergyIntolerance",
				"id": "A879904FD2FE4B2D90C89FDA84E1285F.ALG.17073",
				"meta": {
					"lastUpdated": "2020-11-11T20:40:37-05:00"
				},
				"verificationStatus": {
					"coding": [
						{
							"system": "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
							"code": "confirmed",
							"display": "Confirmed"
						}
					]
				},
				"clinicalStatus": {
					"coding": [
						{
							"system": "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
							"code": "active",
							"display": "Active"
						}
					]
				},
				"category": [
					"medication"
				],
				"code": {
					"coding": [
						{
							"system": "http://www.nlm.nih.gov/research/umls/rxnorm",
							"code": "1191",
							"display": "Aspirin"
						}
					],
					"text": "aspirin"
				},
				"patient": {
					"reference": "Patient/A879904FD2FE4B2D90C89FDA84E1285F",
					"display": "Mcgovern,Astrid Santiago"
				},
				"onsetString": "unknown",
				"reaction": [
					{
						"manifestation": [
							{
								"text": "Bleeding"
							}
						],
						"severity": "severe"
					}
				],
				"text": {
					"status": "generated",
					"div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><br /><b>Allergy Intolerance</b><br /><b>Patient</b>:Mcgovern,Astrid Santiago<br /> <b>Clinical Status</b>: <b>Code</b>:active <b>Display</b>:Active <b>System</b>:http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical<br /><b>Verification Status</b>: <b>Code</b>:confirmed <b>Display</b>:Confirmed <b>System</b>:http://terminology.hl7.org/CodeSystem/allergyintolerance-verification<br /><b>Category</b>:medication<br /><b>Code</b>:<b>Code</b>:1191 <b>Display</b>:Aspirin <b>System</b>:http://www.nlm.nih.gov/research/umls/rxnorm <b>Text</b>:aspirin<br /><b>Onset</b>:unknown<br /><b>Reaction</b>:<b>Text</b>:Bleeding <b>Severity</b>:severe<br /><br /></div>"
				}
			}
		}
	],
	"link": [
		{
			"relation": "self",
			"url": "https://fhir-myrecord-sc.cerner.com/r4/0e885770-571b-4c0c-b30f-21df9a058d0d/AllergyIntolerance?_id=A879904FD2FE4B2D90C89FDA84E1285F.ALG.17073&_format=json"
		}
	]
}.freeze


  	SOARIAN_R4_ALLERGY_INTOLERANCE_SEARCH_BY_PT_ENTRY ||= {
	"resourceType": "Bundle",
	"id": "69942070-70bb-4ef2-a7b9-260109527317",
	"type": "searchset",
	"timestamp": "2021-03-19T12:22:26-04:00",
	"entry": [
		{
			"fullUrl": "https://fhir-myrecord-sc.cerner.com/r4/0e885770-571b-4c0c-b30f-21df9a058d0d/AllergyIntolerance/A879904FD2FE4B2D90C89FDA84E1285F.ALG.17073",
			"resource": {
				"resourceType": "AllergyIntolerance",
				"id": "A879904FD2FE4B2D90C89FDA84E1285F.ALG.17073",
				"meta": {
					"lastUpdated": "2020-11-11T20:40:37-05:00"
				},
				"verificationStatus": {
					"coding": [
						{
							"system": "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
							"code": "confirmed",
							"display": "Confirmed"
						}
					]
				},
				"clinicalStatus": {
					"coding": [
						{
							"system": "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
							"code": "active",
							"display": "Active"
						}
					]
				},
				"category": [
					"medication"
				],
				"code": {
					"coding": [
						{
							"system": "http://www.nlm.nih.gov/research/umls/rxnorm",
							"code": "1191",
							"display": "Aspirin"
						}
					],
					"text": "aspirin"
				},
				"patient": {
					"reference": "Patient/A879904FD2FE4B2D90C89FDA84E1285F",
					"display": "Mcgovern,Astrid Santiago"
				},
				"onsetString": "unknown",
				"reaction": [
					{
						"manifestation": [
							{
								"text": "Bleeding"
							}
						],
						"severity": "severe"
					}
				],
				"text": {
					"status": "generated",
					"div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><br /><b>Allergy Intolerance</b><br /><b>Patient</b>:Mcgovern,Astrid Santiago<br /> <b>Clinical Status</b>: <b>Code</b>:active <b>Display</b>:Active <b>System</b>:http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical<br /><b>Verification Status</b>: <b>Code</b>:confirmed <b>Display</b>:Confirmed <b>System</b>:http://terminology.hl7.org/CodeSystem/allergyintolerance-verification<br /><b>Category</b>:medication<br /><b>Code</b>:<b>Code</b>:1191 <b>Display</b>:Aspirin <b>System</b>:http://www.nlm.nih.gov/research/umls/rxnorm <b>Text</b>:aspirin<br /><b>Onset</b>:unknown<br /><b>Reaction</b>:<b>Text</b>:Bleeding <b>Severity</b>:severe<br /><br /></div>"
				}
			}
		},
		{
			"fullUrl": "https://fhir-myrecord-sc.cerner.com/r4/0e885770-571b-4c0c-b30f-21df9a058d0d/AllergyIntolerance/A879904FD2FE4B2D90C89FDA84E1285F.ALGIND.NOCON.11212",
			"resource": {
				"resourceType": "AllergyIntolerance",
				"id": "A879904FD2FE4B2D90C89FDA84E1285F.ALGIND.NOCON.11212",
				"meta": {
					"lastUpdated": "2020-11-11T20:40:06-05:00"
				},
				"verificationStatus": {
					"coding": [
						{
							"system": "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
							"code": "confirmed",
							"display": "Confirmed"
						}
					]
				},
				"clinicalStatus": {
					"coding": [
						{
							"system": "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
							"code": "active",
							"display": "Active"
						}
					]
				},
				"code": {
					"text": "No known contrast allergy (situation)"
				},
				"patient": {
					"reference": "Patient/A879904FD2FE4B2D90C89FDA84E1285F",
					"display": "Mcgovern,Astrid Santiago"
				},
				"text": {
					"status": "generated",
					"div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><br /><b>Allergy Intolerance</b><br /><b>Patient</b>:Mcgovern,Astrid Santiago<br /> <b>Clinical Status</b>: <b>Code</b>:active <b>Display</b>:Active <b>System</b>:http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical<br /><b>Verification Status</b>: <b>Code</b>:confirmed <b>Display</b>:Confirmed <b>System</b>:http://terminology.hl7.org/CodeSystem/allergyintolerance-verification<br /><b>Code</b>: <b>Text</b>:No known contrast allergy (situation)<br /></div>"
				}
			}
		},
		{
			"fullUrl": "https://fhir-myrecord-sc.cerner.com/r4/0e885770-571b-4c0c-b30f-21df9a058d0d/AllergyIntolerance/A879904FD2FE4B2D90C89FDA84E1285F.ALGIND.NOLAT.11212",
			"resource": {
				"resourceType": "AllergyIntolerance",
				"id": "A879904FD2FE4B2D90C89FDA84E1285F.ALGIND.NOLAT.11212",
				"meta": {
					"lastUpdated": "2020-11-11T20:40:06-05:00"
				},
				"verificationStatus": {
					"coding": [
						{
							"system": "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
							"code": "confirmed",
							"display": "Confirmed"
						}
					]
				},
				"clinicalStatus": {
					"coding": [
						{
							"system": "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
							"code": "active",
							"display": "Active"
						}
					]
				},
				"code": {
					"text": "No known latex allergy (situation)"
				},
				"patient": {
					"reference": "Patient/A879904FD2FE4B2D90C89FDA84E1285F",
					"display": "Mcgovern,Astrid Santiago"
				},
				"text": {
					"status": "generated",
					"div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><br /><b>Allergy Intolerance</b><br /><b>Patient</b>:Mcgovern,Astrid Santiago<br /> <b>Clinical Status</b>: <b>Code</b>:active <b>Display</b>:Active <b>System</b>:http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical<br /><b>Verification Status</b>: <b>Code</b>:confirmed <b>Display</b>:Confirmed <b>System</b>:http://terminology.hl7.org/CodeSystem/allergyintolerance-verification<br /><b>Code</b>: <b>Text</b>:No known latex allergy (situation)<br /></div>"
				}
			}
		}
	],
	"link": [
		{
			"relation": "self",
			"url": "https://fhir-myrecord-sc.cerner.com/r4/0e885770-571b-4c0c-b30f-21df9a058d0d/AllergyIntolerance?patient=A879904FD2FE4B2D90C89FDA84E1285F&_format=json"
		}
	]
}.freeze
  end
end
  	