---
title: Patient | STU 3 API
---

# Patient

* TOC
{:toc}

## Overview

The Patient resource provides general demographic information about a person receiving health care services from a specific organization. Common demographic fields include patient id, patient name, gender, date of birth, address, phone, primary language and marital status. Soarian Finanicals is a patient centric application: thus, many of the other resources will include the patient id in their queries. A person receiving care from multiple organizations may have data available in multiple patient resources in multiple FHIR servers.

The following fields are returned if valued:

   * [Patient name](http://hl7.org/fhir/stu3/patient-definitions.html#Patient.name){:target="_blank"}
   * [Patient id](http://hl7.org/fhir/stu3/patient-definitions.html#Patient.identifier){:target="_blank"}
   * [Extensions including birth time, preferred telecom, bad address indicator](http://hl7.org/fhir/extensibility-registry.html)
   * [Contact information (includes phone,faxand email)](http://hl7.org/fhir/datatypes.html#ContactPoint){:target="_blank"}
   * [Gender (administrative)](http://hl7.org/fhir/stu3/patient-definitions.html#Patient.gender){:target="_blank"}
   * [Date of Birth](http://hl7.org/fhir/stu3/patient-definitions.html#Patient.birthDate){:target="_blank"}
   * [Deceased](http://hl7.org/fhir/stu3/patient-definitions.html#Patient.deceased_x_){:target="_blank"}
   * [Address](http://hl7.org/fhir/stu3/patient-definitions.html#Patient.contact.address){:target="_blank"}
   * [Communication (preferred language)](http://hl7.org/fhir/stu3/patient-definitions.html#Patient.communication){:target="_blank"}
   * [Marital status](http://hl7.org/fhir/stu3/patient-definitions.html#Patient.maritalStatus){:target="_blank"}
   * [Primary Care Providers](http://hl7.org/fhir/stu3/patient-definitions.html#Patient.generalPractitioner){:target="_blank"}
 
## Extensions

* [Time of day of birth]
* [Patient level user data](#patient-user-data)
* [Bad address indicator](http://hl7.org/fhir/v3/AddressUse/cs.html){:target="_blank"}
* [Preferred telecom](http://hl7.org/fhir/extension-iso21090-preferred.html){:target="_blank"}

## Read

Get a Patient that matches the supplied Soarian Financials Person Number:

    GET /Patient/<Soarian Finanicals Person Number>

_Implementation Notes_

* The [Patient.animal] modifier element is not supported and will not be returned.
* Direct secure email will not be returned.
* Only Active patients will be returned.
* Patient Specific Persons (PSP) will not be returned.
* If the patient being searched is a person then the information is retured as per the [person FHIR format](https://www.hl7.org/fhir/stu3/person.html)
* Only active official (legal) name, address and identifiers will be returned.

### Example

#### Request

    GET https://sfet-nprodnstg.dm50.dev.smed.net/sf-qa1451/dynamic/services/regsched/stu3/v1/patient/104136

#### Response

<%= headers status: 200 %>
<%= json(:soarian_financials_stu3_patient_entry) %>

### Errors

The following common errors and OperationOutcomes may be returned.

 Error                                                        | Severity   | Code              | Diagnostics
--------------------------------------------------------------|------------|-------------------|--------------------------------------------------------------------------------------------------------
 There is no active  legal name                               | Error      | not-supported     | Retrieval of unidentified patient is not supported at this time.
 If the patient being searched for is merged                  | Error      | not-supported     | The patient being searched for has been merged. The merged target patient number is (Target Person  No)
 If the patient being searched for is not found in the system | Error      | not-found         | The patient is not found


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
	

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', Accept: 'application/json', 'Content-Type': 'application/json'} %>

### Body Fields

<%= definition_table(:soarian_financials_patient, :create, :stu3) %>

## Update

Updates an individual Patient:

_Implementation Notes_

* The update folows the same rules and format as a create.
* All the existing information for the patient needs to be sent irrespective of that information being updated or not.

### Example

#### Request

    PUT /Patient/<Soarian Finanicals Person Number>
	
#### Body

<%= json(:soarian_financials_stu3_patient_update) %>
  

[Time of day of birth]: http://hl7.org/fhir/STU3/extension-patient-birthtime.html
[Patient.deceased]: http://hl7.org/fhir/STU3/patient-definitions.html#Patient.deceased_x_
[Patient.multipleBirth]: http://hl7.org/fhir/STU3/patient-definitions.html#Patient.multipleBirth_x_
[Patient.photo]: http://hl7.org/fhir/STU3/patient-definitions.html#Patient.photo
[Patient.contact]: http://hl7.org/fhir/STU3/patient-definitions.html#Patient.contact
[Patient.animal]: http://hl7.org/fhir/STU3/patient-definitions.html#Patient.animal
[Patient.managingOrganization]: http://hl7.org/fhir/STU3/patient-definitions.html#Patient.managingOrganization
[Patient.link]: http://hl7.org/fhir/STU3/patient.html#Patient.link
[Bad address indicator]: http://hl7.org/fhir/v3/AddressUse/cs.html
[Preferred telecom]: http://hl7.org/fhir/STU3/extension-iso21090-preferred.html
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
