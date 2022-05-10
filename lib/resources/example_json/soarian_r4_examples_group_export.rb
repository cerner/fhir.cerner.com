# frozen_string_literal: true

module Cerner
  module Resources

    SOARIAN_R4_BULK_KICKOFF_REQUEST ||= {
	  "resourceType": "OperationOutcome",
	  "id": "3f6bd10f-8fa4-4606-aa4e-a408844fa965",
	  "issue": [
		{
		  "severity": "information",
		  "code": "STRUCTURE",
		  "details": {
			"text": "Request accepted, but resource(s) {Binary} in _type parameter is supported as contained and will not generate resource specific output file(s)"
		  }
		}
	  ]
	}.freeze
	
	SOARIAN_R4_BULK_DELETE_REQUEST ||= {
	  "resourceType": "OperationOutcome",
	  "id": "3f6bd10f-8fa4-4606-aa4e-a408844fa965",
	  "issue": [
		{
		  "severity": "information",
		  "code": "processing",
		  "details": {
			"text": "Cancellation of Bulkdata request <6d7210a3-9c6d-4b4a-ad15-013515b524ba> has been accepted. Cancellation requested at : 2022-05-10T03:14:12Z"
		  }
		}
	  ]
	}.freeze
	
	SOARIAN_R4_BULK_STATUS_REQUEST_ERROR ||= {
	      "resourceType": "OperationOutcome",
		  "id": "af736a47-a308-49df-ba17-0eb3e0bb4830",
		  "issue": [
			{
			  "severity": "error",
			  "code": "not-found",
			  "details": {
				"text": "Population Group with group id <All_Patients> not assigned in FHIR Population Application Configuration tool for Population Application <SoFIE - BulkApi App>. Reference id for support: [af736a47-a308-49df-ba17-0eb3e0bb4830]."
			  }
			}
		  ]
	}.freeze
	
	SOARIAN_R4_BULK_STATUS_REQUEST_COMPLETE ||= {
	      "transactionTime": "2022-05-10T03:03:04Z",
		  "request": "https://fhir-ehr-sc.cerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/bulk-api/request/Group/All_Patients/$export?_type=Patient",
		  "requiresAccessToken": "true",
		  "output": [
			{
			  "type": "Patient",
			  "url": "https://fhir-ehr-sc.cerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/bulk-api/download/677d425a-ba0e-499f-98eb-8de26dbd4bb1/6C68089A-25BA-49CC-AC48-9C1E56D0C593_Patient.ndjson"
			}
		  ],
		  "error": []
	}.freeze
	
	SOARIAN_R4_BULK_FILE_REQUEST ||= {
	      "transactionTime": "2022-05-10T03:17:51Z",
		  "request": "https://fhir-ehr-sc.cerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/bulk-api/request/Group/All_Patients/$export?_type=Goal,Patient,Procedure",
		  "requiresAccessToken": "true",
		  "output": [
			{
			  "type": "Patient",
			  "url": "https://fhir-ehr-sc.cerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/bulk-api/download/173a39fc-a2c3-4df2-ae41-5445240f3612/2A168AB6-7F5E-4BDC-BD53-F5911FF82D68_Patient.ndjson"
			},
			{
			  "type": "Goal",
			  "url": "https://fhir-ehr-sc.cerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/bulk-api/download/173a39fc-a2c3-4df2-ae41-5445240f3612/FCCC3692-4A03-4DA1-8BB3-8BD62E20C75C_Goal.ndjson"
			}
		  ],
		  "error": []
	}.freeze
  end
end
