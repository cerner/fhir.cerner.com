# frozen_string_literal: true

module Cerner
  module Resources

  	SOARIAN_R4_PRACTITIONER_SEARCH_BY_ID ||= {
	"resourceType": "Bundle",
	"id": "09f56536-7bae-4886-9dfc-3a5d77f2be28",
	"type": "searchset",
	"timestamp": "2021-03-05T15:36:06-05:00",
	"entry": [
		{
			"fullUrl": "https://fhir-myrecord-sc.sandboxcerner.com/r4/0e885770-571b-4c0c-b30f-21df9a058d0d/Practitioner/64FB91107E72432583430C3717ECF486",
			"resource": {
				"resourceType": "Practitioner",
				"id": "64FB91107E72432583430C3717ECF486",
				"meta": {
					"lastUpdated": "2020-10-18T15:12:02-04:00"
				},
				"name": [
					{
						"use": "official",
						"text": "Wullkotte,Joyce Anne-Marie",
						"family": "Wullkotte",
						"given": [
							"Joyce",
							"Anne-Marie"
						]
					}
				],
				"identifier": [
					{
						"system": "urn:oid:12.00.021.1.3.2.10",
						"value": "LTC.184049"
					}
				],
				"text": {
					"status": "generated",
					"div": "<div xmlns='http://www.w3.org/1999/xhtml'><b>Practitioner</b><br /><b>Practitioner</b>:Wullkotte,Joyce Anne-Marie<br /></div>"
				}
			}
		}
	],
	"link": [
		{
			"relation": "self",
			"url": "https://fhir-myrecord-sc.sandboxcerner.com/r4/0e885770-571b-4c0c-b30f-21df9a058d0d/Practitioner?_id=64FB91107E72432583430C3717ECF486&_format=json"
		}
	]
}.freeze


SOARIAN_R4_PRACTITIONER_READ_BY_ID ||= {
	"resourceType": "Practitioner",
	"id": "64FB91107E72432583430C3717ECF486",
	"meta": {
		"lastUpdated": "2020-10-18T15:12:02-04:00"
	},
	"name": [
		{
			"use": "official",
			"text": "Wullkotte,Joyce Anne-Marie",
			"family": "Wullkotte",
			"given": [
				"Joyce",
				"Anne-Marie"
			]
		}
	],
	"identifier": [
		{
			"system": "urn:oid:12.00.021.1.3.2.10",
			"value": "LTC.184049"
		}
	],
	"text": {
		"status": "generated",
		"div": "<div xmlns='http://www.w3.org/1999/xhtml'><b>Practitioner</b><br /><b>Practitioner</b>:Wullkotte,Joyce Anne-Marie<br /></div>"
	}
}.freeze
 end
end