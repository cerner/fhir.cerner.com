# frozen_string_literal: true

module Cerner
  module Resources

  	SOARIAN_R4_CONDITION_SEARCH_BY_PT ||= {
	"resourceType": "Bundle",
	"id": "59bddaec-2d77-42fb-b163-ac22ca05d309",
	"type": "searchset",
	"timestamp": "2021-03-19T14:52:39-04:00",
	"entry": [
		{
			"fullUrl": "https://fhir-myrecord-sc.cerner.com/r4/0e885770-571b-4c0c-b30f-21df9a058d0d/Condition/A879904FD2FE4B2D90C89FDA84E1285F.NRS.43074",
			"resource": {
				"resourceType": "Condition",
				"id": "A879904FD2FE4B2D90C89FDA84E1285F.NRS.43074",
				"meta": {
					"lastUpdated": "2020-11-15T16:18:47-05:00"
				},
				"clinicalStatus": {
					"coding": [
						{
							"system": "http://terminology.hl7.org/CodeSystem/condition-clinical",
							"code": "active",
							"display": "Active"
						}
					]
				},
				"verificationStatus": {
					"coding": [
						{
							"system": "http://terminology.hl7.org/CodeSystem/condition-ver-status",
							"code": "confirmed",
							"display": "Confirmed"
						}
					]
				},
				"category": [
					{
						"coding": [
							{
								"system": "http://hl7.org/fhir/us/core/CodeSystem/condition-category",
								"code": "health-concern",
								"display": "Health Concern"
							}
						]
					}
				],
				"subject": {
					"reference": "Patient/A879904FD2FE4B2D90C89FDA84E1285F",
					"display": "Mcgovern,Astrid Santiago"
				},
				"encounter": {
					"reference": "Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019",
					"display": "Inferno,Initial"
				},
				"code": {
					"text": "Depression"
				},
				"text": {
					"status": "generated",
					"div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><b>Condition</b><br /><b>Patient</b>: Mcgovern,Astrid Santiago<br /><b>Encounter</b>: Inferno,Initial<br /><b>Health Concern</b>: Depression<br /><b>Clinical Status</b>: <b>System</b>:http://terminology.hl7.org/CodeSystem/condition-clinical <b>Code</b>:active <b>Display</b>:Active <br /><b>Verification Status</b>: <b>System</b>:http://terminology.hl7.org/CodeSystem/condition-ver-status <b>Code</b>:confirmed <b>Display</b>:Confirmed <br /><b>Category</b>: <b>System</b>:http://hl7.org/fhir/us/core/CodeSystem/condition-category <b>Code</b>:health-concern <b>Display</b>:Health Concern <br /></div>"
				}
			}
		},
		{
			"fullUrl": "https://fhir-myrecord-sc.cerner.com/r4/0e885770-571b-4c0c-b30f-21df9a058d0d/Condition/A879904FD2FE4B2D90C89FDA84E1285F.DX.23409",
			"resource": {
				"resourceType": "Condition",
				"id": "A879904FD2FE4B2D90C89FDA84E1285F.DX.23409",
				"meta": {
					"lastUpdated": "2020-11-15T16:15:56-05:00"
				},
				"clinicalStatus": {
					"coding": [
						{
							"system": "http://terminology.hl7.org/CodeSystem/condition-clinical",
							"code": "active",
							"display": "Active"
						}
					]
				},
				"verificationStatus": {
					"coding": [
						{
							"system": "http://terminology.hl7.org/CodeSystem/condition-ver-status",
							"code": "confirmed",
							"display": "Confirmed"
						}
					]
				},
				"category": [
					{
						"coding": [
							{
								"system": "http://terminology.hl7.org/CodeSystem/condition-category",
								"code": "encounter-diagnosis",
								"display": "Encounter Diagnosis"
							}
						]
					}
				],
				"subject": {
					"reference": "Patient/A879904FD2FE4B2D90C89FDA84E1285F",
					"display": "Mcgovern,Astrid Santiago"
				},
				"encounter": {
					"reference": "Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019",
					"display": "Inferno,Initial"
				},
				"code": {
					"coding": [
						{
							"system": "http://hl7.org/fhir/sid/icd-10-cm",
							"code": "D03.0",
							"display": "Melanoma in situ of lip"
						}
					],
					"text": "Melanoma in situ of lip"
				},
				"text": {
					"status": "generated",
					"div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><b>Condition</b><br /><b>Patient</b>: Mcgovern,Astrid Santiago<br /><b>Encounter</b>: Inferno,Initial<br /><b>Diagnosis text</b>: Melanoma in situ of lip<br /><b>Diagnosis code</b>: <b>System</b>:http://hl7.org/fhir/sid/icd-10-cm <b>Code</b>:D03.0 <b>Display</b>:Melanoma in situ of lip <br /><b>Clinical Status</b>: <b>System</b>:http://terminology.hl7.org/CodeSystem/condition-clinical <b>Code</b>:active <b>Display</b>:Active <br /><b>Verification Status</b>: <b>System</b>:http://terminology.hl7.org/CodeSystem/condition-ver-status <b>Code</b>:confirmed <b>Display</b>:Confirmed <br /><b>Category</b>: <b>System</b>:http://terminology.hl7.org/CodeSystem/condition-category <b>Code</b>:encounter-diagnosis <b>Display</b>:Encounter Diagnosis <br /></div>"
				}
			}
		},
		{
			"fullUrl": "https://fhir-myrecord-sc.cerner.com/r4/0e885770-571b-4c0c-b30f-21df9a058d0d/Condition/A879904FD2FE4B2D90C89FDA84E1285F.PRB.6885579",
			"resource": {
				"resourceType": "Condition",
				"id": "A879904FD2FE4B2D90C89FDA84E1285F.PRB.6885579",
				"meta": {
					"lastUpdated": "2020-11-15T16:15:06-05:00"
				},
				"clinicalStatus": {
					"coding": [
						{
							"system": "http://terminology.hl7.org/CodeSystem/condition-clinical",
							"code": "active",
							"display": "Active"
						}
					]
				},
				"verificationStatus": {
					"coding": [
						{
							"system": "http://terminology.hl7.org/CodeSystem/condition-ver-status",
							"code": "confirmed",
							"display": "Confirmed"
						}
					]
				},
				"category": [
					{
						"coding": [
							{
								"system": "http://terminology.hl7.org/CodeSystem/condition-category",
								"code": "problem-list-item",
								"display": "Problem List Item"
							}
						]
					}
				],
				"subject": {
					"reference": "Patient/A879904FD2FE4B2D90C89FDA84E1285F",
					"display": "Mcgovern,Astrid Santiago"
				},
				"encounter": {
					"reference": "Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019",
					"display": "Inferno,Initial"
				},
				"code": {
					"coding": [
						{
							"system": "http://snomed.info/sct",
							"code": "87522002"
						}
					],
					"text": "Iron Deficiency Anemia"
				},
				"text": {
					"status": "additional",
					"div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><b>Condition</b><br /><b>Patient</b>: Mcgovern,Astrid Santiago<br /><b>Encounter</b>: Inferno,Initial<br /><b>Problem text</b>: Iron Deficiency Anemia<br /><b>Problem code</b>: <b>System</b>:http://snomed.info/sct <b>Code</b>:87522002 <br /><b>Clinical Status</b>: <b>System</b>:http://terminology.hl7.org/CodeSystem/condition-clinical <b>Code</b>:active <b>Display</b>:Active <br /><b>Verification Status</b>: <b>System</b>:http://terminology.hl7.org/CodeSystem/condition-ver-status <b>Code</b>:confirmed <b>Display</b>:Confirmed <br /><b>Category</b>: <b>System</b>:http://terminology.hl7.org/CodeSystem/condition-category <b>Code</b>:problem-list-item <b>Display</b>:Problem List Item <br /><b>Status</b>:Active <br /></div>"
				}
			}
		}
	],
	"link": [
		{
			"relation": "self",
			"url": "https://fhir-myrecord-sc.cerner.com/r4/0e885770-571b-4c0c-b30f-21df9a058d0d/Condition?patient=A879904FD2FE4B2D90C89FDA84E1285F&_format=json"
		}
	]
}.freeze


	SOARIAN_R4_CONDITION_SEARCH_BY_ID ||= {
	"resourceType": "Bundle",
	"id": "eb6d7d1d-3be7-411b-8be6-62b1147edb60",
	"type": "searchset",
	"timestamp": "2021-03-19T14:57:15-04:00",
	"entry": [
		{
			"fullUrl": "https://fhir-myrecord-sc.cerner.com/r4/0e885770-571b-4c0c-b30f-21df9a058d0d/Condition/A879904FD2FE4B2D90C89FDA84E1285F.NRS.43074",
			"resource": {
				"resourceType": "Condition",
				"id": "A879904FD2FE4B2D90C89FDA84E1285F.NRS.43074",
				"meta": {
					"lastUpdated": "2020-11-15T16:18:47-05:00"
				},
				"clinicalStatus": {
					"coding": [
						{
							"system": "http://terminology.hl7.org/CodeSystem/condition-clinical",
							"code": "active",
							"display": "Active"
						}
					]
				},
				"verificationStatus": {
					"coding": [
						{
							"system": "http://terminology.hl7.org/CodeSystem/condition-ver-status",
							"code": "confirmed",
							"display": "Confirmed"
						}
					]
				},
				"category": [
					{
						"coding": [
							{
								"system": "http://hl7.org/fhir/us/core/CodeSystem/condition-category",
								"code": "health-concern",
								"display": "Health Concern"
							}
						]
					}
				],
				"subject": {
					"reference": "Patient/A879904FD2FE4B2D90C89FDA84E1285F",
					"display": "Mcgovern,Astrid Santiago"
				},
				"encounter": {
					"reference": "Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019",
					"display": "Inferno,Initial"
				},
				"code": {
					"text": "Depression"
				},
				"text": {
					"status": "generated",
					"div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><b>Condition</b><br /><b>Patient</b>: Mcgovern,Astrid Santiago<br /><b>Encounter</b>: Inferno,Initial<br /><b>Health Concern</b>: Depression<br /><b>Clinical Status</b>: <b>System</b>:http://terminology.hl7.org/CodeSystem/condition-clinical <b>Code</b>:active <b>Display</b>:Active <br /><b>Verification Status</b>: <b>System</b>:http://terminology.hl7.org/CodeSystem/condition-ver-status <b>Code</b>:confirmed <b>Display</b>:Confirmed <br /><b>Category</b>: <b>System</b>:http://hl7.org/fhir/us/core/CodeSystem/condition-category <b>Code</b>:health-concern <b>Display</b>:Health Concern <br /></div>"
				}
			}
		}
	],
	"link": [
		{
			"relation": "self",
			"url": "https://fhir-myrecord-sc.cerner.com/r4/0e885770-571b-4c0c-b30f-21df9a058d0d/Condition?_id=A879904FD2FE4B2D90C89FDA84E1285F.NRS.43074&_format=json"
		}
	]
}.freeze


  	SOARIAN_R4_CONDITION_READ ||= {
	"resourceType": "Condition",
	"id": "A879904FD2FE4B2D90C89FDA84E1285F.NRS.43074",
	"meta": {
		"lastUpdated": "2020-11-15T16:18:47-05:00"
	},
	"clinicalStatus": {
		"coding": [
			{
				"system": "http://terminology.hl7.org/CodeSystem/condition-clinical",
				"code": "active",
				"display": "Active"
			}
		]
	},
	"verificationStatus": {
		"coding": [
			{
				"system": "http://terminology.hl7.org/CodeSystem/condition-ver-status",
				"code": "confirmed",
				"display": "Confirmed"
			}
		]
	},
	"category": [
		{
			"coding": [
				{
					"system": "http://hl7.org/fhir/us/core/CodeSystem/condition-category",
					"code": "health-concern",
					"display": "Health Concern"
				}
			]
		}
	],
	"subject": {
		"reference": "Patient/A879904FD2FE4B2D90C89FDA84E1285F",
		"display": "Mcgovern,Astrid Santiago"
	},
	"encounter": {
		"reference": "Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019",
		"display": "Inferno,Initial"
	},
	"code": {
		"text": "Depression"
	},
	"text": {
		"status": "generated",
		"div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><b>Condition</b><br /><b>Patient</b>: Mcgovern,Astrid Santiago<br /><b>Encounter</b>: Inferno,Initial<br /><b>Health Concern</b>: Depression<br /><b>Clinical Status</b>: <b>System</b>:http://terminology.hl7.org/CodeSystem/condition-clinical <b>Code</b>:active <b>Display</b>:Active <br /><b>Verification Status</b>: <b>System</b>:http://terminology.hl7.org/CodeSystem/condition-ver-status <b>Code</b>:confirmed <b>Display</b>:Confirmed <br /><b>Category</b>: <b>System</b>:http://hl7.org/fhir/us/core/CodeSystem/condition-category <b>Code</b>:health-concern <b>Display</b>:Health Concern <br /></div>"
	}
}.freeze
  end
end
  	