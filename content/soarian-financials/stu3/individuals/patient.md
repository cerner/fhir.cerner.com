---
title: Patient | Release 3 (STU) API
---

# Patient

* TOC
{:toc}

## Overview
The Patient resource provides general demographic information about a person receiving health care services from a specific organization. Common demographic fields include patient id, patient name, gender, date of birth, address, phone, primary language and marital status. Soarian Finanicals is a patient centric application: thus, many of the other resources will include the patient id in their queries. A person receiving care from multiple organizations may have data available in multiple patient resources in multiple FHIR servers.

The following fields are returned if valued:

   * [Patient name](http://hl7.org/fhir/patient-definitions.html#Patient.name){:target="_blank"}
   * [Patient id](http://hl7.org/fhir/patient-definitions.html#Patient.identifier){:target="_blank"}
   * [Extensions including birth time, preferred telecom, bad address indicator](http://hl7.org/fhir/extensibility-registry.html)
   * [Contact information (includes phone,faxand email)](http://hl7.org/fhir/datatypes.html#ContactPoint){:target="_blank"}
   * [Gender (administrative)](http://hl7.org/fhir/patient-definitions.html#Patient.gender){:target="_blank"}
   * [Date of Birth](http://hl7.org/fhir/patient-definitions.html#Patient.birthDate){:target="_blank"}
   * [Deceased](http://hl7.org/fhir/patient-definitions.html#Patient.deceased_x_){:target="_blank"}
   * [Address](http://hl7.org/fhir/patient-definitions.html#Patient.contact.address){:target="_blank"}
   * [Communication (preferred language)](http://hl7.org/fhir/patient-definitions.html#Patient.communication){:target="_blank"}
   * [Marital status](http://hl7.org/fhir/patient-definitions.html#Patient.maritalStatus){:target="_blank"}
   * [Primary Care Providers](http://hl7.org/fhir/patient-definitions.html#Patient.generalPractitioner){:target="_blank"}
 

## Extensions
* [Time of day of birth]
* [Patient level user data](#patient-user-data)
* [Bad address indicator](http://hl7.org/fhir/v3/AddressUse/cs.html){:target="_blank"}
* [Preferred telecom](http://hl7.org/fhir/extension-iso21090-preferred.html){:target="_blank"}

## Search

Search for Patients that meet supplied query parameters:

    GET /Patient/<Soarian Finanicals Person Number>

_Implementation Notes_

* The [Patient.animal] modifier element is not supported and will not be returned.
* Direct secure email will not be returned.
* Only Active patients will be returned.
* Patient Specific Persosn (PSP) will not be returned.
* If the patient being searched is a person then the information is retured as per the person FHIR format https://www.hl7.org/fhir/person.html
* Information that are stored as collections such as name, address,identifiers etc. will be retured only of there is an active entry aviabale.
* Only active official (legal) name, address and identifiers will be retured.




### Example

#### Request

	GET https://sfet-nprodnstg.dm50.dev.smed.net/sf-qa1451/dynamic/services/regsched/stu3/v1/patient/104136

#### Response

##### Header
	Status: 200 OK
	Location: https://DEV3SRF0191.dm50.dev.smed.net/sf-qa1451/dynamic/services/regsched/stu3/v1/Patient/104136
		
##### Body		
	{
	"resourceType": "Patient",
	"id": "104136",
	"extension": [
	{
	"extension": [
	{
	"valueString": "6'",
	"url": "http://DEV3SRF0191.dm50.dev.smed.net/sf-qa1451/soarian/StructureDefinition/patient-userData#Height"
	},
	{
	"valueString": "234",
	"url": "http://DEV3SRF0191.dm50.dev.smed.net/sf-qa1451/soarian/StructureDefinition/patient-userData#Weight"
	}
	],
	"url": "http://cerner.hs.fhir.com/StructureDefinition/patient-userData"
	}
	],
	"identifier": [
	{
	"type": {
	"coding": [
	{
	"system": "http://hl7.org/fhir/v2/0203",
	"code": "ZPN",
	"display": "External Person ID"
	}
	],
	"text": "External Person ID"
	},
	"value": "218139651",
	"period": {
	"start": "2018-09-27"
	},
	"assigner": {
	"reference": "Organization/28",
	"display": "EM Health System"
	}
	},
	{
	"type": {
	"coding": [
	{
	"system": "http://hl7.org/fhir/v2/0203",
	"code": "PN",
	"display": "Person Number"
	}
	],
	"text": "Person Number"
	},
	"value": "104136",
	"period": {
	"start": "2018-09-27"
	},
	"assigner": {
	"reference": "Organization/900000",
	"display": "System Id Issuer"
	}
	},
	{
	"type": {
	"coding": [
	{
	"system": "http://hl7.org/fhir/v2/0203",
	"code": "MR",
	"display": "Medical Record Number"
	}
	],
	"text": "Medical Record Number"
	},
	"value": "11080323",
	"period": {
	"start": "2018-09-27"
	},
	"assigner": {
	"reference": "Organization/28",
	"display": "EM Health System"
	}
	},
	{
	"type": {
	"coding": [
	{
	"system": "http://hl7.org/fhir/v2/0203",
	"code": "SS",
	"display": "Social Security Number"
	}
	],
	"text": "Social Security Number"
	},
	"value": "547487444",
	"period": {
	"start": "2018-12-14"
	},
	"assigner": {
	"reference": "Organization/900001",
	"display": "U. S. Government"
	}
	},
	{
	"type": {
	"coding": [
	{
	"system": "http://hl7.org/fhir/v2/0203",
	"code": "MR",
	"display": "Medical Record Number"
	}
	],
	"text": "Medical Record Number"
	},
	"value": "254147",
	"period": {
	"start": "2018-12-14"
	},
	"assigner": {
	"reference": "Organization/2342",
	"display": "Steamy Falls IP Hosp"
	}
	},
	{
	"type": {
	"coding": [
	{
	"system": "http://hl7.org/fhir/v2/0203",
	"code": "DL",
	"display": "Drivers License"
	}
	],
	"text": "Drivers License"
	},
	"value": "25447457",
	"period": {
	"start": "2018-12-14"
	},
	"assigner": {
	"reference": "Organization/118",
	"display": "Commonwealth of PA"
	}
	}
	],
	"active": true,
	"name": [
	{
	"use": "OFFICIAL",
	"text": "James,Smith,Edward",
	"family": "James",
	"given": [
	"Smith",
	"Edward"
	],
	"period": {
	"start": "2018-12-14"
	}
	}
	],
	"telecom": [
	{
	"extension": [
	{
	"valueBoolean": true,
	"url": "http://hl7.org/fhir/StructureDefinition/iso21090-preferred"
	}
	],
	"system": "PHONE",
	"value": "(645) 748 4747",
	"use": "HOME"
	},
	{
	"extension": [
	{
	"valueBoolean": false,
	"url": "http://hl7.org/fhir/StructureDefinition/iso21090-preferred"
	}
	],
	"system": "PHONE",
	"value": "(547) 457 4848",
	"use": "MOBILE"
	},
	{
	"system": "EMAIL",
	"value": "james@cerner.com"
	}
	],
	"gender": "MALE",
	"birthDate": "2008-12-11",
	"deceasedBoolean": false,
	"address": [
	{
	"use": "HOME",
	"type": "POSTAL",
	"text": "51 Valley Stream parkway,Malvern,PA 19355",
	"line": [
	"51 Valley Stream parkway"
	],
	"city": "Malvern",
	"district": "Chester",
	"state": "PA",
	"postalCode": "19355",
	"country": "US",
	"period": {
	"start": "2018-12-14"
	}
	}
	],
	"maritalStatus": {
	"coding": [
	{
	"system": "http://hl7.org/fhir/v3/MaritalStatus",
	"code": "S",
	"display": "Single"
	}
	],
	"text": "Single"
	},
	"communication": [
	{
	"language": {
	"coding": [
	{
	"system": "urn:ietf:bcp:47",
	"code": "en",
	"display": "ENGLISH"
	}
	],
	"text": "ENGLISH"
	},
	"preferred": true
	}
	]
	}

### Errors

The following common errors and OperationOutcomes may be returned.

Error														 | Severity   | Code 			  | Diagnostics
-------------------------------------------------------------|------------|-------------------|--------------------------------------------------------------------------------------------------------
There is no active  legal name 								 | Error      | not-supported 	  | Retrieval of unidentified patient is not supported at this time.
If the patient being searched for is merged 				 | Error      | not-supported 	  | The patient being searched for has been merged. The merged target patient number is (Target Person  No)
If the patient being searched for is not found in the system | Error      | not-found 	      | The patient is not found


## Create

Create an individual Patient:

    POST /Patient

_Implementation Notes_

* The following elements are not supported and will cause an error/warning to be returned if set:
    * [Patient.multipleBirth]
    * [Patient.photo]
    * [Patient.contact]
    * [Patient.animal]
    * [Patient.managingOrganization]
    * [Patient.link]
	


### Authorization Types

<%= authorization_types(practitioner: true, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', Accept: 'application/json', 'Content-Type': 'application/json'} %>

### Body Fields

#### Resource Type

  Should be the type of the FHIR resource. resourceType must be Patient.
  
_Example_

  
 
	{
	 "resourceType": "Patient"
	}

#### Identifiers

  The identifiers for the patient. Only active identifiers can be added
  
_Example_


	{
	"identifier": [
		{"type": {
			"coding": [
				{
				"system": "http://hl7.org/fhir/v2/0203",
				"code": "SS",
				"display": "Social Security Number"
				}
					   ],
			"text": "Social Security Number"
				},
		"value": "111223311",
		"period": {
				"start": "2016-10-24"
				  }
		}
				]
	}

		
		
#### Active Flag	

  Whether this patient record is in active use. This should always be active.
  
_Example_


	{
	 "active": true
	}
  
#### Name	

  The names associated with the individual. Only active official (legal) name can be added.

  
_Example_

	"name": [
	{
	 "use": "OFFICIAL",
	 "text": "Griffin,Emily,A",
	 "family": "Griffin",
	 "given": [
			  "Emily",
			  "A"
			  ],
	 "period": {
	 "start": "2017-12-19"
			   }
	}
			]
				
  
#### Telecom	

  A contact detail (e.g. a telephone number or an email address) by which the individual may be contacted.

  
_Example_

	"telecom": [
	{
	 "extension": [
	 {
	   "valueBoolean": true,
	   "url": "http://hl7.org/fhir/StructureDefinition/iso21090-preferred"
	 }
				  ],
	 "system": "PHONE",
	 "value": "(464) 647 7747",
	 "use": "HOME"
	},
	{
	 "system": "EMAIL",
	 "value": "abc@cerner.com"
	}
			  ]
  
  
  Preferred telecom indicator is supported for system type of phone, fax and pager
  Only the following system and use combination are supported
  
System	| Use     | Soarian Finanicals field
--------|---------|-------------------------------
  Phone | Home    | Primary home phone
  Phone | Mobile  | Cellular Phone
  Phone | Work    | Work Phone
  Fax   | n/a     | Fax
  Pager | n/a     | Pager
  Email | n/a     | Email
  
  
  The phone value (other than system type of email) should follow the following format
  
  Valid format for US phone ie phone no that does not have country code or has country code as +1		
		
  +1 (xxx) xxx xxxx ext.xxxx or (xxx) xxx xxxx ext.xxxx		

  Valid format for non-US phone ie phone no that does not have country code or has country code +1

  +xxx xxx xxxx ext.xxxx
  

#### Gender	

 Administrative Gender - the gender that the patient is considered to have for administration and record keeping purposes.
  
_Example_

	{
	 "gender": "male"
	}

  Gender type of other will be mapped to unkown.
  
  
  
#### Date of Birth	

  The date of birth for the individual. 
  
_Example_

	{
	 "birthDate": "1990-09-15"
	}
  
#### Marital Status	

  The patient's most recent marital (civil) status.

  
_Example_

	"maritalStatus": {
	 "text": "Married",
	 "coding": [
	 {
	  "system": "http://hl7.org/fhir/v3/MaritalStatus",   
	  "code": "M",
	  "display": "Married"
	  }
			   ]
					}

#### Communication	

  Preferred language which may be used to communicate with the patient about his or her health.

  
_Example_

	"communication": [
	{
	 "language": {
	 "coding": [
	  {
	  "system": "urn:ietf:bcp:47",
	  "code": "en",
	   "display": "ENGLISH"
	  }
			  ],
	"text": "ENGLISH"
				},
	"preferred": true
	}
					]
  
	Preferred should always be true.
  

#### Address	

  Addresses for the individual.

  
_Example_

	"address": [
	{
	 "use": "HOME",
	 "type": "POSTAL",
	 "text": "51 valley stream parkway,Malvern,PA 19355",
	 "line": [
			  "51 valley stream parkway"
			 ],
	"city": "Malvern",
	"district": "Chester",
	"state": "PA",
	"postalCode": "19355",
	"country": "US",
	"period": {
			  "start": "2018-12-12"
			  }
	}
			  ]
  
 
Only the following type and use are supported
  
 Type	 | Use     | Soarian Finanicals field
-------- |---------|-------------------------------
Postal   | Home    | Mailing address
Physical | Home    | Residence address
Physical | Temp    | Temporary Residence

#### Deceased indicator	

  Indicated if the patient is deceased
  
_Example_

	{
	 "deceasedBoolean": true,
	}

  
#### Deceased date	

  Indicated the date when the patient was deceased
  
_Example_

	{
	 "deceasedDateTime": "2018-03-01",
	}

  Only deceased date can be entered. Deceased time will not be saved.
  
  
  
#### Patient User data	

  User data fields are client-specific fields unique to an organization that are not represented by Soarian Financials model fields. User data fields are created and maintained using the Additional Data master file available from Master File Central
  

_URL for this extension_

	"extension": {
	"url": "[ CORRECT FHIR SERVER]/StructureDefinition/patient-userData",
		"extension": [{
		 url": "[ CLIENT FHIR SERVER]/StructureDefinition/patient-userData#[user _data_field_name]", //R! URL that indicates the user data field name and description
		 "valueString": "string" // R! Value of the user data field
				 }]
				 }

  
_Example_

	extension": {
	"url": "[Soarian Financials URL]/stu3/StructureDefinition/patient-userData",
		"extension": [{
		url": "http:// [ CLIENT FHIR SERVER]/StructureDefinition/MedhistoryConsent",
		"valueString": "Y" 
				  }]
				}

## Update

Updates an individual Patient:

    PUT /Patient/<Soarian Finanicals Person Number>

_Implementation Notes_

* The update folows the same rules and format as a create.
* All the existing information for the patient needs to be sent irrespective of that information being updated or not.
  

[Time of day of birth]: http://hl7.org/fhir/DSTU2/extension-patient-birthtime.html
[Patient.deceased]: http://hl7.org/fhir/patient-definitions.html#Patient.deceased_x_
[Patient.multipleBirth]: http://hl7.org/fhir/patient-definitions.html#Patient.multipleBirth_x_
[Patient.photo]: http://hl7.org/fhir/patient-definitions.html#Patient.photo
[Patient.contact]: http://hl7.org/fhir/patient-definitions.html#Patient.contact
[Patient.animal]: http://hl7.org/fhir/patient-definitions.html#Patient.animal
[Patient.managingOrganization]: http://hl7.org/fhir/patient-definitions.html#Patient.managingOrganization
[Patient.link]: http://hl7.org/fhir/patient.html#Patient.link
[Bad address indicator]: http://hl7.org/fhir/v3/AddressUse/cs.html
[Preferred telecom]: http://hl7.org/fhir/extension-iso21090-preferred.html
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
