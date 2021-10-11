# frozen_string_literal: true

module Cerner
  module Resources

  	  	SOARIAN_R4_CAREPLAN_SEARCH_BY_PT_CATEGORY ||= {
	"resourceType": "Bundle",
	"id": "3454991c-8073-4dad-810f-e21af8da1404",
	"type": "searchset",
	"timestamp": "2021-03-15T14:15:18-04:00",
	"entry": [
		{
			"fullUrl": "https://fhir-myrecord-sc.sandboxcerner.com/r4/0e885770-571b-4c0c-b30f-21df9a058d0d/CarePlan/494454CC0E254A409CD98DA791EB2E16.DDC.80014",
			"resource": {
				"resourceType": "CarePlan",
				"id": "494454CC0E254A409CD98DA791EB2E16.DDC.80014",
				"meta": {
					"lastUpdated": "2021-03-15T14:15:02-04:00"
				},
				"status": "active",
				"intent": "plan",
				"category": [
					{
						"coding": [
							{
								"system": "http://hl7.org/fhir/us/core/CodeSystem/careplan-category",
								"code": "assess-plan"
							}
						]
					}
				],
				"subject": {
					"reference": "Patient/494454CC0E254A409CD98DA791EB2E16",
					"display": "Dillow,Raleigh Ada"
				},
				"encounter": {
					"reference": "Encounter/494454CC0E254A409CD98DA791EB2E16.1",
					"display": "City General,Initial"
				},
				"text": {
					"status": "additional",
					"div": "<div xmlns='http://www.w3.org/1999/xhtml'><b>CarePlan</b><br /><b>Patient</b>:Dillow,Raleigh Ada<br /><b>Status</b>:active<br /><b>Encounter</b>:City General,Initial<br /><b>Intent</b>:plan<br /><b>Category : </b><b>System</b>:http://hl7.org/fhir/us/core/CodeSystem/careplan-category <b>Code</b>:assess-plan<br /><b>Assessment and Plan</b>:<ul><li>Treatment Plan: Ms. Dillow is a diabetic and her glucose on admission was 91. Her glucose will be strictly monitored during her stay and her AIC will be checked. She has been on a combination of Sitalgliptin and metformin to treat her insulin esistance diabetes. We do not have this combination medicationand will start Ms.Dillow on sliding scale insulin to control her glucose levels.</li></ul><br /></div>"
				}
			}
		}
	],
	"link": [
		{
			"relation": "self",
			"url": "https://fhir-myrecord-sc.sandboxcerner.com/r4/0e885770-571b-4c0c-b30f-21df9a058d0d/CarePlan?patient=494454CC0E254A409CD98DA791EB2E16&category=assess-plan&_format=json"
		}
	]
}.freeze

		SOARIAN_R4_CAREPLAN_SEARCH_BY_ID ||= {
	"resourceType": "Bundle",
	"id": "3454991c-8073-4dad-810f-e21af8da1404",
	"type": "searchset",
	"timestamp": "2021-03-15T14:15:18-04:00",
	"entry": [
		{
			"fullUrl": "https://fhir-myrecord-sc.sandboxcerner.com/r4/0e885770-571b-4c0c-b30f-21df9a058d0d/CarePlan/494454CC0E254A409CD98DA791EB2E16.DDC.80014",
			"resource": {
				"resourceType": "CarePlan",
				"id": "494454CC0E254A409CD98DA791EB2E16.DDC.80014",
				"meta": {
					"lastUpdated": "2021-03-15T14:15:02-04:00"
				},
				"status": "active",
				"intent": "plan",
				"category": [
					{
						"coding": [
							{
								"system": "http://hl7.org/fhir/us/core/CodeSystem/careplan-category",
								"code": "assess-plan"
							}
						]
					}
				],
				"subject": {
					"reference": "Patient/494454CC0E254A409CD98DA791EB2E16",
					"display": "Dillow,Raleigh Ada"
				},
				"encounter": {
					"reference": "Encounter/494454CC0E254A409CD98DA791EB2E16.1",
					"display": "City General,Initial"
				},
				"text": {
					"status": "additional",
					"div": "<div xmlns='http://www.w3.org/1999/xhtml'><b>CarePlan</b><br /><b>Patient</b>:Dillow,Raleigh Ada<br /><b>Status</b>:active<br /><b>Encounter</b>:City General,Initial<br /><b>Intent</b>:plan<br /><b>Category : </b><b>System</b>:http://hl7.org/fhir/us/core/CodeSystem/careplan-category <b>Code</b>:assess-plan<br /><b>Assessment and Plan</b>:<ul><li>Treatment Plan: Ms. Dillow is a diabetic and her glucose on admission was 91. Her glucose will be strictly monitored during her stay and her AIC will be checked. She has been on a combination of Sitalgliptin and metformin to treat her insulin esistance diabetes. We do not have this combination medicationand will start Ms.Dillow on sliding scale insulin to control her glucose levels.</li></ul><br /></div>"
				}
			}
		}
	],
	"link": [
		{
			"relation": "self",
			"url": "https://fhir-myrecord-sc.sandboxcerner.com/r4/0e885770-571b-4c0c-b30f-21df9a058d0d/CarePlan?patient=494454CC0E254A409CD98DA791EB2E16&category=assess-plan&_format=json"
		}
	]
}.freeze

	SOARIAN_R4_CAREPLAN_READ_BY_ID	||={
	"resourceType": "CarePlan",
	"id": "494454CC0E254A409CD98DA791EB2E16.DDC.80014",
	"meta": {
		"lastUpdated": "2021-03-15T14:15:02-04:00"
	},
	"status": "active",
	"intent": "plan",
	"category": [
		{
			"coding": [
				{
					"system": "http://hl7.org/fhir/us/core/CodeSystem/careplan-category",
					"code": "assess-plan"
				}
			]
		}
	],
	"subject": {
		"reference": "Patient/494454CC0E254A409CD98DA791EB2E16",
		"display": "Dillow,Raleigh Ada"
	},
	"encounter": {
		"reference": "Encounter/494454CC0E254A409CD98DA791EB2E16.1",
		"display": "City General,Initial"
	},
	"text": {
		"status": "additional",
		"div": "<div xmlns='http://www.w3.org/1999/xhtml'><b>CarePlan</b><br /><b>Patient</b>:Dillow,Raleigh Ada<br /><b>Status</b>:active<br /><b>Encounter</b>:City General,Initial<br /><b>Intent</b>:plan<br /><b>Category : </b><b>System</b>:http://hl7.org/fhir/us/core/CodeSystem/careplan-category <b>Code</b>:assess-plan<br /><b>Assessment and Plan</b>:<ul><li>Treatment Plan: Ms. Dillow is a diabetic and her glucose on admission was 91. Her glucose will be strictly monitored during her stay and her AIC will be checked. She has been on a combination of Sitalgliptin and metformin to treat her insulin esistance diabetes. We do not have this combination medicationand will start Ms.Dillow on sliding scale insulin to control her glucose levels.</li></ul><br /></div>"
	}
}.freeze
	end
end
	
		

