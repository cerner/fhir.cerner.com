# frozen_string_literal: true

module Cerner
  module Resources

  	SOARIAN_R4_DOCREF_SEARCH_BY_PATIENT ||= {
	"resourceType": "Bundle",
	"id": "a0a98617-64ff-4102-b587-649cdaf1094e",
	"type": "searchset",
	"timestamp": "2021-05-25T15:08:33-04:00",
	"entry": [
		{
			"fullUrl": "https://fhir-myrecord-sc.sandboxcerner.com/r4/0e885770-571b-4c0c-b30f-21df9a058d0d/DocumentReference/A879904FD2FE4B2D90C89FDA84E1285F.DM.CS2OX64WFII6XEI7ABIFNDS6EM",
			"search": {
				"mode": "match"
			},
			"resource": {
				"resourceType": "DocumentReference",
				"id": "A879904FD2FE4B2D90C89FDA84E1285F.DM.CS2OX64WFII6XEI7ABIFNDS6EM",
				"meta": {
					"lastUpdated": "2021-04-05T08:15:05-04:00"
				},
				"identifier": [
					{
						"system": "urn:ietf:rfc:3986",
						"value": "urn:oid: 2.16.840.1.113883.10.20.22.1.2"
					}
				],
				"status": "current",
				"docStatus": "preliminary",
				"type": {
					"coding": [
						{
							"system": "http://loinc.org",
							"code": "34133-9",
							"display": "Summary of episode note"
						}
					],
					"text": "Summary of episode note"
				},
				"category": [
					{
						"coding": [
							{
								"system": "http://hl7.org/fhir/us/core/CodeSystem/us-core-documentreference-category",
								"code": "clinical-note",
								"display": "Clinical Note"
							}
						]
					}
				],
				"subject": {
					"reference": "Patient/A879904FD2FE4B2D90C89FDA84E1285F",
					"display": "Mcgovern,Astrid Santiago"
				},
				"date": "2021-04-05T12:15:05-04:00",
				"author": [
					{
						"reference": "Organization/HCU.1",
						"display": "Health Enterprise"
					}
				],
				"custodian": {
					"reference": "Organization/HCU.1",
					"display": "Health Enterprise"
				},
				"securityLabel": [
					{
						"coding": [
							{
								"system": "http://hl7.org/fhir/v3/Confidentiality",
								"code": "N",
								"display": "normal"
							}
						]
					}
				],
				"content": [
					{
						"attachment": {
							"contentType": "application/hl7-v3+xml",
							"url": "https://fhir-myrecord-sc.sandboxcerner.com/r4/0e885770-571b-4c0c-b30f-21df9a058d0d/Binary/A879904FD2FE4B2D90C89FDA84E1285F.DM.CS2OX64WFII6XEI7ABIFNDS6EM"
						},
						"format": {
							"system": "http://ihe.net/fhir/ValueSet/IHE.FormatCode.codesystem",
							"code": "urn:hl7-org:sdwg:ccda-structuredBody:2.1"
						}
					}
				],
				"context": {
					"encounter": [
						{
							"reference": "Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019",
							"display": "Inferno,Initial"
						}
					],
					"period": {
						"start": "2020-04-15T16:42:00-04:00"
					}
				},
				"text": {
					"status": "generated",
					"div": "<div xmlns='http://www.w3.org/1999/xhtml'><b>DocumentReference</b><br /><b>Patient</b>:Mcgovern,Astrid Santiago;<br /><b>Encounter</b>:Inferno,Initial;<br /><b>Status</b>:current;<br /><b>Document Status</b>:preliminary;<br /><b>Document Type</b>: <br /> <b>System</b>:http://loinc.org <b>Code</b>:34133-9 <b>Display</b>:Summary of episode note<b>Text</b>:Summary of episode note;<br /><b>Category</b>:<br /><b>System</b>:http://hl7.org/fhir/us/core/CodeSystem/us-core-documentreference-category <b>Code</b>:clinical-note <b>Display</b>:Clinical Note;<br /><b>Date</b>:2021-04-05T12:15:05-04:00;<br /><b>Context Period Start</b>:2020-04-15T16:42:00-04:00;<br /><b>Author</b>:Health Enterprise;<br /></div>"
				}
			}
		},
		{
			"fullUrl": "https://fhir-myrecord-sc.sandboxcerner.com/r4/0e885770-571b-4c0c-b30f-21df9a058d0d/DocumentReference/A879904FD2FE4B2D90C89FDA84E1285F.NRS.56481",
			"search": {
				"mode": "match"
			},
			"resource": {
				"resourceType": "DocumentReference",
				"id": "A879904FD2FE4B2D90C89FDA84E1285F.NRS.56481",
				"meta": {
					"lastUpdated": "2021-04-02T18:03:00-04:00"
				},
				"status": "current",
				"docStatus": "preliminary",
				"type": {
					"coding": [
						{
							"system": "http://loinc.org",
							"code": "34117-2"
						}
					],
					"text": "History & Physical Note"
				},
				"category": [
					{
						"coding": [
							{
								"system": "http://hl7.org/fhir/us/core/CodeSystem/us-core-documentreference-category",
								"code": "clinical-note",
								"display": "Clinical Note"
							}
						]
					}
				],
				"subject": {
					"reference": "Patient/A879904FD2FE4B2D90C89FDA84E1285F",
					"display": "Mcgovern,Astrid Santiago"
				},
				"date": "2021-04-02T18:03:00-04:00",
				"author": [
					{
						"reference": "Practitioner/40134EF110CA4C07988F544E90057844"
					}
				],
				"custodian": {
					"reference": "Organization/HCU.1",
					"display": "Health Enterprise"
				},
				"content": [
					{
						"attachment": {
							"contentType": "text/html",
							"data": "SGVsbG8gd29ybGQ="
						},
						"format": {
							"system": "http://ihe.net/fhir/ValueSet/IHE.FormatCode.codesystem",
							"code": "urn:ihe:iti:xds:2017:mimeTypeSufficient",
							"display": "mimeType sufficient"
						}
					}
				],
				"context": {
					"encounter": [
						{
							"reference": "Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019",
							"display": "Inferno,Initial"
						}
					],
					"period": {
						"start": "2020-04-15T16:42:00-04:00"
					}
				},
				"text": {
					"status": "generated",
					"div": "<div xmlns='http://www.w3.org/1999/xhtml'><b>DocumentReference</b><br /><b>Patient</b>:Mcgovern,Astrid Santiago;<br /><b>Encounter</b>:Inferno,Initial;<br /><b>Status</b>:current;<br /><b>Document Status</b>:preliminary;<br /><b>Document Type</b>: <br /> <b>System</b>:http://loinc.org <b>Code</b>:34117-2 <b>Text</b>:History &amp; Physical Note;<br /><b>Category</b>:<br /><b>System</b>:http://hl7.org/fhir/us/core/CodeSystem/us-core-documentreference-category <b>Code</b>:clinical-note <b>Display</b>:Clinical Note;<br /><b>Date</b>:2021-04-02T18:03:00-04:00;<br /><b>Context Period Start</b>:2020-04-15T16:42:00-04:00;<br /><b>Author</b>:Admin,Admin;<br /></div>"
				}
			}
		},
		{
			"fullUrl": "https://fhir-myrecord-sc.sandboxcerner.com/r4/0e885770-571b-4c0c-b30f-21df9a058d0d/DocumentReference/A879904FD2FE4B2D90C89FDA84E1285F.NRS.56482",
			"search": {
				"mode": "match"
			},
			"resource": {
				"resourceType": "DocumentReference",
				"id": "A879904FD2FE4B2D90C89FDA84E1285F.NRS.56482",
				"meta": {
					"lastUpdated": "2021-04-02T18:03:00-04:00"
				},
				"status": "current",
				"docStatus": "preliminary",
				"type": {
					"coding": [
						{
							"system": "http://loinc.org",
							"code": "11506-3"
						}
					],
					"text": "Progress Note"
				},
				"category": [
					{
						"coding": [
							{
								"system": "http://hl7.org/fhir/us/core/CodeSystem/us-core-documentreference-category",
								"code": "clinical-note",
								"display": "Clinical Note"
							}
						]
					}
				],
				"subject": {
					"reference": "Patient/A879904FD2FE4B2D90C89FDA84E1285F",
					"display": "Mcgovern,Astrid Santiago"
				},
				"date": "2021-04-02T18:03:00-04:00",
				"author": [
					{
						"reference": "Practitioner/40134EF110CA4C07988F544E90057844"
					}
				],
				"custodian": {
					"reference": "Organization/HCU.1",
					"display": "Health Enterprise"
				},
				"content": [
					{
						"attachment": {
							"contentType": "text/html",
							"data": "R29vZGJ5ZSB3b3JsZA=="
						},
						"format": {
							"system": "http://ihe.net/fhir/ValueSet/IHE.FormatCode.codesystem",
							"code": "urn:ihe:iti:xds:2017:mimeTypeSufficient",
							"display": "mimeType sufficient"
						}
					}
				],
				"context": {
					"encounter": [
						{
							"reference": "Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019",
							"display": "Inferno,Initial"
						}
					],
					"period": {
						"start": "2020-04-15T16:42:00-04:00"
					}
				},
				"text": {
					"status": "generated",
					"div": "<div xmlns='http://www.w3.org/1999/xhtml'><b>DocumentReference</b><br /><b>Patient</b>:Mcgovern,Astrid Santiago;<br /><b>Encounter</b>:Inferno,Initial;<br /><b>Status</b>:current;<br /><b>Document Status</b>:preliminary;<br /><b>Document Type</b>: <br /> <b>System</b>:http://loinc.org <b>Code</b>:11506-3 <b>Text</b>:Progress Note;<br /><b>Category</b>:<br /><b>System</b>:http://hl7.org/fhir/us/core/CodeSystem/us-core-documentreference-category <b>Code</b>:clinical-note <b>Display</b>:Clinical Note;<br /><b>Date</b>:2021-04-02T18:03:00-04:00;<br /><b>Context Period Start</b>:2020-04-15T16:42:00-04:00;<br /><b>Author</b>:Admin,Admin;<br /></div>"
				}
			}
		},
		{
			"fullUrl": "https://fhir-myrecord-sc.sandboxcerner.com/r4/0e885770-571b-4c0c-b30f-21df9a058d0d/DocumentReference/A879904FD2FE4B2D90C89FDA84E1285F.NRS.56483",
			"search": {
				"mode": "match"
			},
			"resource": {
				"resourceType": "DocumentReference",
				"id": "A879904FD2FE4B2D90C89FDA84E1285F.NRS.56483",
				"meta": {
					"lastUpdated": "2021-04-02T18:03:00-04:00"
				},
				"status": "current",
				"docStatus": "preliminary",
				"type": {
					"coding": [
						{
							"system": "http://loinc.org",
							"code": "28570-0"
						}
					],
					"text": "Procedures Note"
				},
				"category": [
					{
						"coding": [
							{
								"system": "http://hl7.org/fhir/us/core/CodeSystem/us-core-documentreference-category",
								"code": "clinical-note",
								"display": "Clinical Note"
							}
						]
					}
				],
				"subject": {
					"reference": "Patient/A879904FD2FE4B2D90C89FDA84E1285F",
					"display": "Mcgovern,Astrid Santiago"
				},
				"date": "2021-04-02T18:03:00-04:00",
				"author": [
					{
						"reference": "Practitioner/40134EF110CA4C07988F544E90057844"
					}
				],
				"custodian": {
					"reference": "Organization/HCU.1",
					"display": "Health Enterprise"
				},
				"content": [
					{
						"attachment": {
							"contentType": "text/html",
							"data": "WW91J3JlIGRvaW5nIGEgZ3JlYXQgam9i"
						},
						"format": {
							"system": "http://ihe.net/fhir/ValueSet/IHE.FormatCode.codesystem",
							"code": "urn:ihe:iti:xds:2017:mimeTypeSufficient",
							"display": "mimeType sufficient"
						}
					}
				],
				"context": {
					"encounter": [
						{
							"reference": "Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019",
							"display": "Inferno,Initial"
						}
					],
					"period": {
						"start": "2020-04-15T16:42:00-04:00"
					}
				},
				"text": {
					"status": "generated",
					"div": "<div xmlns='http://www.w3.org/1999/xhtml'><b>DocumentReference</b><br /><b>Patient</b>:Mcgovern,Astrid Santiago;<br /><b>Encounter</b>:Inferno,Initial;<br /><b>Status</b>:current;<br /><b>Document Status</b>:preliminary;<br /><b>Document Type</b>: <br /> <b>System</b>:http://loinc.org <b>Code</b>:28570-0 <b>Text</b>:Procedures Note;<br /><b>Category</b>:<br /><b>System</b>:http://hl7.org/fhir/us/core/CodeSystem/us-core-documentreference-category <b>Code</b>:clinical-note <b>Display</b>:Clinical Note;<br /><b>Date</b>:2021-04-02T18:03:00-04:00;<br /><b>Context Period Start</b>:2020-04-15T16:42:00-04:00;<br /><b>Author</b>:Admin,Admin;<br /></div>"
				}
			}
		},
		{
			"fullUrl": "https://fhir-myrecord-sc.sandboxcerner.com/r4/0e885770-571b-4c0c-b30f-21df9a058d0d/DocumentReference/A879904FD2FE4B2D90C89FDA84E1285F.NRS.56479",
			"search": {
				"mode": "match"
			},
			"resource": {
				"resourceType": "DocumentReference",
				"id": "A879904FD2FE4B2D90C89FDA84E1285F.NRS.56479",
				"meta": {
					"lastUpdated": "2021-04-02T17:58:00-04:00"
				},
				"status": "current",
				"docStatus": "preliminary",
				"type": {
					"coding": [
						{
							"system": "http://loinc.org",
							"code": "18842-5"
						}
					],
					"text": "Discharge Summary Note"
				},
				"category": [
					{
						"coding": [
							{
								"system": "http://hl7.org/fhir/us/core/CodeSystem/us-core-documentreference-category",
								"code": "clinical-note",
								"display": "Clinical Note"
							}
						]
					}
				],
				"subject": {
					"reference": "Patient/A879904FD2FE4B2D90C89FDA84E1285F",
					"display": "Mcgovern,Astrid Santiago"
				},
				"date": "2021-04-02T17:58:00-04:00",
				"author": [
					{
						"reference": "Practitioner/40134EF110CA4C07988F544E90057844"
					}
				],
				"custodian": {
					"reference": "Organization/HCU.1",
					"display": "Health Enterprise"
				},
				"content": [
					{
						"attachment": {
							"contentType": "text/html",
							"data": "SG93IG11Y2ggd29vZCB3b3VsZCBhIHdvb2RjaHVjayBjaHVjaz8="
						},
						"format": {
							"system": "http://ihe.net/fhir/ValueSet/IHE.FormatCode.codesystem",
							"code": "urn:ihe:iti:xds:2017:mimeTypeSufficient",
							"display": "mimeType sufficient"
						}
					}
				],
				"context": {
					"encounter": [
						{
							"reference": "Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019",
							"display": "Inferno,Initial"
						}
					],
					"period": {
						"start": "2020-04-15T16:42:00-04:00"
					}
				},
				"text": {
					"status": "generated",
					"div": "<div xmlns='http://www.w3.org/1999/xhtml'><b>DocumentReference</b><br /><b>Patient</b>:Mcgovern,Astrid Santiago;<br /><b>Encounter</b>:Inferno,Initial;<br /><b>Status</b>:current;<br /><b>Document Status</b>:preliminary;<br /><b>Document Type</b>: <br /> <b>Text</b>:Discharge Summary Note;<br /><b>Category</b>:<br /><b>System</b>:http://hl7.org/fhir/us/core/CodeSystem/us-core-documentreference-category <b>Code</b>:clinical-note <b>Display</b>:Clinical Note;<br /><b>Date</b>:2021-04-02T17:58:00-04:00;<br /><b>Context Period Start</b>:2020-04-15T16:42:00-04:00;<br /><b>Author</b>:Admin,Admin;<br /></div>"
				}
			}
		}
	],
	"link": [
		{
			"relation": "self",
			"url": "https://fhir-myrecord-sc.sandboxcerner.com/r4/0e885770-571b-4c0c-b30f-21df9a058d0d/DocumentReference?patient=A879904FD2FE4B2D90C89FDA84E1285F"
		},
		{
			"relation": "next",
			"url": "https://fhir-myrecord-sc.sandboxcerner.com/r4/0e885770-571b-4c0c-b30f-21df9a058d0d/DocumentReference?patient=A879904FD2FE4B2D90C89FDA84E1285F&page=2&pageBookmark=DM.14B4EBFB-962A-11EB-911F-0050568E5E23,NRS.56488"
		}
	]
}.freeze


	SOARIAN_R4_DOCREF_SEARCH_BY_ID ||= {
	"resourceType": "Bundle",
	"id": "07c18401-d1b9-40cd-9bf8-453441905b2f",
	"type": "searchset",
	"timestamp": "2021-05-25T15:09:18-04:00",
	"entry": [
		{
			"fullUrl": "https://fhir-myrecord-sc.sandboxcerner.com/r4/0e885770-571b-4c0c-b30f-21df9a058d0d/DocumentReference/A879904FD2FE4B2D90C89FDA84E1285F.DM.CS2OX64WFII6XEI7ABIFNDS6EM",
			"search": {
				"mode": "match"
			},
			"resource": {
				"resourceType": "DocumentReference",
				"id": "A879904FD2FE4B2D90C89FDA84E1285F.DM.CS2OX64WFII6XEI7ABIFNDS6EM",
				"meta": {
					"lastUpdated": "2021-04-05T08:15:05-04:00"
				},
				"identifier": [
					{
						"system": "urn:ietf:rfc:3986",
						"value": "urn:oid: 2.16.840.1.113883.10.20.22.1.2"
					}
				],
				"status": "current",
				"docStatus": "preliminary",
				"type": {
					"coding": [
						{
							"system": "http://loinc.org",
							"code": "34133-9",
							"display": "Summary of episode note"
						}
					],
					"text": "Summary of episode note"
				},
				"category": [
					{
						"coding": [
							{
								"system": "http://hl7.org/fhir/us/core/CodeSystem/us-core-documentreference-category",
								"code": "clinical-note",
								"display": "Clinical Note"
							}
						]
					}
				],
				"subject": {
					"reference": "Patient/A879904FD2FE4B2D90C89FDA84E1285F",
					"display": "Mcgovern,Astrid Santiago"
				},
				"date": "2021-04-05T12:15:05-04:00",
				"author": [
					{
						"reference": "Organization/HCU.1",
						"display": "Health Enterprise"
					}
				],
				"custodian": {
					"reference": "Organization/HCU.1",
					"display": "Health Enterprise"
				},
				"securityLabel": [
					{
						"coding": [
							{
								"system": "http://hl7.org/fhir/v3/Confidentiality",
								"code": "N",
								"display": "normal"
							}
						]
					}
				],
				"content": [
					{
						"attachment": {
							"contentType": "application/hl7-v3+xml",
							"url": "https://fhir-myrecord-sc.sandboxcerner.com/r4/0e885770-571b-4c0c-b30f-21df9a058d0d/Binary/A879904FD2FE4B2D90C89FDA84E1285F.DM.CS2OX64WFII6XEI7ABIFNDS6EM"
						},
						"format": {
							"system": "http://ihe.net/fhir/ValueSet/IHE.FormatCode.codesystem",
							"code": "urn:hl7-org:sdwg:ccda-structuredBody:2.1"
						}
					}
				],
				"text": {
					"status": "generated",
					"div": "<div xmlns='http://www.w3.org/1999/xhtml'><b>DocumentReference</b><br /><b>Patient</b>:Mcgovern,Astrid Santiago;<br /><b>Status</b>:current;<br /><b>Document Status</b>:preliminary;<br /><b>Document Type</b>: <br /> <b>System</b>:http://loinc.org <b>Code</b>:34133-9 <b>Display</b>:Summary of episode note<b>Text</b>:Summary of episode note;<br /><b>Category</b>:<br /><b>System</b>:http://hl7.org/fhir/us/core/CodeSystem/us-core-documentreference-category <b>Code</b>:clinical-note <b>Display</b>:Clinical Note;<br /><b>Date</b>:2021-04-05T12:15:05-04:00;<br /><b>Author</b>:Health Enterprise;<br /></div>"
				}
			}
		}
	],
	"link": [
		{
			"relation": "self",
			"url": "https://fhir-myrecord-sc.sandboxcerner.com/r4/0e885770-571b-4c0c-b30f-21df9a058d0d/DocumentReference?_id=A879904FD2FE4B2D90C89FDA84E1285F.DM.CS2OX64WFII6XEI7ABIFNDS6EM"
		}
	]
}.freeze

	SOARIAN_R4_DOCREF_READ_BY_ID ||= {
	"resourceType": "DocumentReference",
	"id": "A879904FD2FE4B2D90C89FDA84E1285F.DM.CS2OX64WFII6XEI7ABIFNDS6EM",
	"meta": {
		"lastUpdated": "2021-04-05T08:15:05-04:00"
	},
	"identifier": [
		{
			"system": "urn:ietf:rfc:3986",
			"value": "urn:oid: 2.16.840.1.113883.10.20.22.1.2"
		}
	],
	"status": "current",
	"docStatus": "preliminary",
	"type": {
		"coding": [
			{
				"system": "http://loinc.org",
				"code": "34133-9",
				"display": "Summary of episode note"
			}
		],
		"text": "Summary of episode note"
	},
	"category": [
		{
			"coding": [
				{
					"system": "http://hl7.org/fhir/us/core/CodeSystem/us-core-documentreference-category",
					"code": "clinical-note",
					"display": "Clinical Note"
				}
			]
		}
	],
	"subject": {
		"reference": "Patient/A879904FD2FE4B2D90C89FDA84E1285F",
		"display": "Mcgovern,Astrid Santiago"
	},
	"date": "2021-04-05T12:15:05-04:00",
	"author": [
		{
			"reference": "Organization/HCU.1",
			"display": "Health Enterprise"
		}
	],
	"custodian": {
		"reference": "Organization/HCU.1",
		"display": "Health Enterprise"
	},
	"securityLabel": [
		{
			"coding": [
				{
					"system": "http://terminology.hl7.org/CodeSystem/v3-Confidentiality",
					"code": "N",
					"display": "normal"
				}
			]
		}
	],
	"content": [
		{
			"attachment": {
				"contentType": "application/hl7-v3+xml",
				"url": "https://fhir-myrecord-sc.sandboxcerner.com/r4/0e885770-571b-4c0c-b30f-21df9a058d0d/Binary/A879904FD2FE4B2D90C89FDA84E1285F.DM.CS2OX64WFII6XEI7ABIFNDS6EM"
			},
			"format": {
				"system": "http://ihe.net/fhir/ValueSet/IHE.FormatCode.codesystem",
				"code": "urn:hl7-org:sdwg:ccda-structuredBody:2.1"
			}
		}
	],
	"text": {
		"status": "generated",
		"div": "<div xmlns='http://www.w3.org/1999/xhtml'><b>DocumentReference</b><br /><b>Patient</b>:Mcgovern,Astrid Santiago;<br /><b>Status</b>:current;<br /><b>Document Status</b>:preliminary;<br /><b>Document Type</b>: <br /> <b>System</b>:http://loinc.org <b>Code</b>:34133-9 <b>Display</b>:Summary of episode note<b>Text</b>:Summary of episode note;<br /><b>Category</b>:<br /><b>System</b>:http://hl7.org/fhir/us/core/CodeSystem/us-core-documentreference-category <b>Code</b>:clinical-note <b>Display</b>:Clinical Note;<br /><b>Date</b>:2021-04-05T12:15:05-04:00;<br /><b>Author</b>:Health Enterprise;<br /></div>"
	}
}.freeze
	end
end