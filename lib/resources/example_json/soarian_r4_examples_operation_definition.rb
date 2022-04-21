# frozen_string_literal: true

module Cerner
  module Resources

    R4_OPERATION_DEFINITION_SEARCH ||= {
	   "resourceType":"Bundle",
	   "id":"2654004e-c122-4519-8eaf-c099997905aa",
	   "type":"searchset",
	   "timestamp":"2022-02-01T04:42:58-05:00",
	   "entry":[
		  {
			 "fullUrl":"https://fhir-ehr-sc.cerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/OperationDefinition?url=https://fhir-ehr-sc.cerner.com/r4/OperationDefinition/group-export",
			 "search":{
				"mode":"match"
			 },
			 "resource":{
				"resourceType":"OperationDefinition",
				"id":"group-export",         
				"name":"GrouplevelExport",
				"title":"Soarian Clinicals OperationDefinition for FHIR Bulk API - GrouplevelExport",
				"status":"active",
				"url":"https://fhir-ehr-sc.cerner.com/r4/OperationDefinition/group-export",
				"kind":"operation",
				"date":"2022-02-01T04:42:58-05:00",
				"publisher":"Cerner Corporation",
				"description":"FHIR Operation to obtain a detailed set of FHIR resources of diverse resource types pertaining to all patients in specified Group. The FHIR server SHALL support invocation of this operation using the FHIR Asynchronous Request Pattern.",
				"jurisdiction":[
				   {
					  "coding":[
						 {
							"system":"http://unstats.un.org/unsd/methods/m49/m49.html",
							"code":"840",
							"display":"USA"
						 }
					  ]
				   }
				],
				"code":"export",
				"resource":"Group",
				"system":"false",
				"type":"false",
				"instance":"true",
				"parameter":[
				   {
					  "name":"_outputformat",
					  "use":"in",
					  "min":"1",
					  "max":"1",
					  "documentation":"The format for the requested bulk data files to be generated. Accepted values are: a. application/fhir+ndjson, b. application/ndjson and c. ndjson\\",
					  "type":"string"
				   },
				   {
					  "name":"_since",
					  "use":"in",
					  "min":"1",
					  "max":"1",
					  "documentation":"The system shall support a date/time field in the _since parameter on the patient- and group- level data export requests. Resource data shall only be returned for resource instances where the last updated date/time is greater than the date/time supplied in the request. Data associated with a resource that was created after the request start date/time (transactionTime) shall not be returned.",
					  "type":"instant"
				   },
				   {
					  "name":"_type",
					  "use":"in",
					  "min":"1",
					  "max":"1",
					  "documentation":"The system shall support a string of comma-delimited FHIR resource types in the _type parameter on the patient- and group-level data export requests. Only Soarian Clinicals R4 resources found in the _type string that are authorized for the population application should be returned",
					  "type":"string"
				   }
				]
			 }
		  }
	   ],
	   "link":[
		  {
			 "relation":"self",
			 "url":"https://fhir-ehr-sc.devcerner.com/r4/9015d117-44ed-4061-bec7-dabd439dc474/OperationDefinition?url=https://fhir-ehr-sc.devcerner.com/r4/OperationDefinition/group-export"
		  }
	   ]
    }.freeze

    R4_OPERATION_DEFINITION_READ ||= {
       "resourceType":"OperationDefinition",
	   "id":"group-export",
	   "name":"GrouplevelExport",
	   "title":"Soarian Clinicals OperationDefinition for FHIR Bulk API - GrouplevelExport",
	   "status":"active",
	   "url":"https://fhir-ehr-sc.cerner.com/r4/OperationDefinition/group-export",
	   "kind":"operation",
	   "date":"2022-02-01T05:32:30-05:00",
	   "publisher":"Cerner Corporation",
	   "description":"FHIR Operation to obtain a detailed set of FHIR resources of diverse resource types pertaining to all patients in specified Group. The FHIR server SHALL support invocation of this operation using the FHIR Asynchronous Request Pattern.",
	   "jurisdiction":[
		  {
			 "coding":[
				{
				   "system":"http://unstats.un.org/unsd/methods/m49/m49.html",
				   "code":"840",
				   "display":"USA"
				}
			 ]
		  }
	   ],
	   "code":"export",
	   "resource":"Group",
	   "system":"false",
	   "type":"false",
	   "instance":"true",
	   "parameter":[
		  {
			 "name":"_outputformat",
			 "use":"in",
			 "min":"1",
			 "max":"1",
			 "documentation":"The format for the requested bulk data files to be generated. Accepted values are: a. application/fhir+ndjson, b. application/ndjson and c. ndjson\\",
			 "type":"string"
		  },
		  {
			 "name":"_since",
			 "use":"in",
			 "min":"1",
			 "max":"1",
			 "documentation":"The system shall support a date/time field in the _since parameter on the patient- and group- level data export requests. Resource data shall only be returned for resource instances where the last updated date/time is greater than the date/time supplied in the request. Data associated with a resource that was created after the request start date/time (transactionTime) shall not be returned.",
			 "type":"instant"
		  },
		  {
			 "name":"_type",
			 "use":"in",
			 "min":"1",
			 "max":"1",
			 "documentation":"The system shall support a string of comma-delimited FHIR resource types in the _type parameter on the patient- and group-level data export requests. Only Soarian Clinicals R4 resources found in the _type string that are authorized for the population application should be returned",
			 "type":"string"
		  }
	   ]
    }.freeze
  end
end
