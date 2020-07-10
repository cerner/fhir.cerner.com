---
title: Patient | DSTU 2 API
---

# Patient

* TOC
{:toc}

## Overview

The Patient resource provides general demographic information about a person receiving health care services from a specific organization. Common demographic fields include patient id, patient name, gender, date of birth, address, phone, primary language and marital status. Cerner Millennium is a patient centric application: thus, many of the other resources will include the patient id in their queries. A person receiving care from multiple organizations may have data available in multiple patient resources in multiple FHIR servers.

The following fields are returned if valued:

* [Patient name](http://hl7.org/fhir/DSTU2/patient-definitions.html#Patient.name){:target="_blank"}
* [Patient id](http://hl7.org/fhir/DSTU2/resource-definitions.html#Resource.id){:target="_blank"}
* [Extensions including birth time, birth sex, ethnicity, and race](#extensions)
* [Medical Record number (MRN)](http://hl7.org/fhir/DSTU2/patient-definitions.html#Patient.identifier){:target="_blank"}
* [Contact information (may include phone and email)](http://hl7.org/fhir/DSTU2/patient-definitions.html#Patient.telecom){:target="_blank"}
* [Contact person (guardian, parent or emergency)](http://hl7.org/fhir/DSTU2/patient-definitions.html#Patient.contact){:target="_blank"}
* [Gender (administrative)](http://hl7.org/fhir/DSTU2/patient-definitions.html#Patient.gender){:target="_blank"}
* [Date of Birth](http://hl7.org/fhir/DSTU2/patient-definitions.html#Patient.birthDate){:target="_blank"}
* [Deceased](http://hl7.org/fhir/DSTU2/patient-definitions.html#Patient.deceased_x_){:target="_blank"}
* [Address](http://hl7.org/fhir/DSTU2/patient-definitions.html#Patient.address){:target="_blank"}
* [Communication (preferred language)](http://hl7.org/fhir/DSTU2/patient-definitions.html#Patient.communication.language){:target="_blank"}
* [Marital status](http://hl7.org/fhir/DSTU2/patient-definitions.html#Patient.maritalStatus){:target="_blank"}
* [Primary Care Providers](http://hl7.org/fhir/dstu2/patient-definitions.html#Patient.careProvider){:target="_blank"}
* [Multiple Birth Information](http://hl7.org/fhir/dstu2/patient-definitions.html#Patient.multipleBirth_x_){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:patient, :dstu2) %>

## Extensions

* [Time of day of birth]
* [Argonaut Ethnicity]
* [Argonaut Patient Birth Sex]
* [Argonaut Race]
* [Rendered Value]

## Search

Search for Patients that meet supplied query parameters:

    GET /Patient?:parameters

_Implementation Notes_

* The [Patient.animal] modifier element is not supported and will not be returned.
* Direct secure email will not be returned.
* If the current user is a patient or patient proxy, a search may be performed without providing any parameters. The search will return all patients the current user has been granted access to view.

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Parameters

 Name                 | Required?                                    | Type       | Description
----------------------|----------------------------------------------|------------|--------------------------------------------------------------------------
 `_id`                | This, or any other required search parameter | [`token`]  | The logical resource id associated with the resource.
 `identifier`         | This and/or any other search param, or `_id` | [`token`]  | A patient identifier.  Example: `urn:oid:1.1.1.1.1.1|1022228`
 `name`               | This and/or any other search param, or `_id` | [`string`] | The start of either family or given name of the patient. Example: `Pete`
 `family`             | This and/or any other search param, or `_id` | [`string`] | The start of the family name of the patient. Example: `Adam`
 `given`              | This and/or any other search param, or `_id` | [`string`] | The start of the given name of the patient. Example: `Tim`
 `birthdate`          | This and/or any other search param, or `_id` | [`date`]   | The patient's date of birth.  Example: `1961-01-16`
 `phone`              | This and/or any other search param, or `_id` | [`token`]  | The patient's phone number. Example: `1111111111`
 `email`              | This and/or any other search param, or `_id` | [`token`]  | The patient's email address. Example: `example@example.com`
 `address-postalcode` | This and/or any other search param, or `_id` | [`string`] | The postal code in the address details of the patient. Example: `11111`
 `gender`             | No                                           | [`token`]  | The gender of the patient. Example: `male`
 [`_count`]           | No                                           | [`number`] | The maximum number of results to return. Defaults to `20`.

Notes:

* Either the `_id`, or a combination of `identifier` , `birthdate`, `name`, `given`, `family`, `address-postalcode`, `phone`, or `email` parameters must be provided.
* The `gender` parameter may only be provided if at least one of `identifier` , `birthdate`, `name`, `given`, `family`, `address-postalcode`, `phone`, or `email` parameters is provided.
* The `name`, `family`, and `given` parameters support the ':exact' modifier and will search for current names only.
* The `address-postalcode` parameter supports the `:exact` modifer.
* The `identifier`, `name`, `family`, `given`, `phone`, `email`, `address-postalcode`, or `gender` parameters may be provided exactly once and may have only a single value.
* The `birthdate` parameter may be provided twice to indicate a date range, but must contain the inclusive prefixes 'le' and 'ge'
* The `birthdate` parameter may be provided once with the following prefixes: 'ge', 'le', 'gt', 'lt', 'eq'

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Patient?_id=12724067

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_patient_bundle) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned. In addition, a `422 Unprocessable Entity` will be returned when too many (>1000) patients qualify for the search criteria.

## Retrieve by id

List an individual Patient by its id:

    GET /Patient/:id

_Implementation Notes_

* The [Patient.animal] modifier element is not supported and will not be returned.
* Direct secure email will not be returned.

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Patient/12724067

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_patient_entry) %>

<%= disclaimer %>

### Patient Combines Example

Cerner Millennium supports the ability to logically merge a patient record into another patient record when both records are describing the same patient. This is known
as a "patient combine". If necessary, this merging can later be undone by performing a "patient uncombine". When the requested patient record has been combined into another
record, an inactive Patient entry will be returned which has a link to the current Patient entry. Entries for combined patients will only be returned when retrieving
the entries directly by id. They will not be returned when searching with other parameters.

The ability to perform patient combine or uncombine operations is not available through the Cerner Ignite platform.

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Patient/12742633

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_combined_patient_entry) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Create

Create an individual Patient:

    POST /Patient

_Implementation Notes_

* The following elements are not supported and will cause an error to be returned if set:
  * [Patient.deceased]
  * [Patient.multipleBirth]
  * [Patient.photo]
  * [Patient.contact]
  * [Patient.animal]
  * [Patient.managingOrganization]
  * [Patient.link]

### Authorization Types

<%= authorization_types(provider: true, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', Accept: 'application/json+fhir', 'Content-Type': 'application/json+fhir'} %>

### Body Fields

Notes:

* Birth Sex may be recorded as an extension.

<%= definition_table(:patient, :create, :dstu2) %>

### Example

#### Request

    POST https://fhir-ehr-code.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Patient

#### Body

  <%= json(:dstu2_patient_create) %>

#### Response

<%= headers status: 201 %>
<pre class="terminal">
Date: Tue, 27 Feb 2018 16:47:59 GMT
Cache-Control: no-cache
Vary: Origin,User-Agent,Accept-Encoding
Strict-Transport-Security: max-age=631152000
X-Xss-Protection: 1; mode=block
Pragma: no-cache
X-Request-Id: 78a19072002b8651623351cfedaffe70
Etag: W/"0"
X-Frame-Options: SAMEORIGIN
X-Content-Type-Options: nosniff
Expires: Mon, 01 Jan 1990 00:00:00 GMT
Last-Modified: Tue, 27 Feb 2018 16:48:00 GMT
Location: https://fhir-ehr-code.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Patient/4842008
Content-Length: 0
Content-Type: application/json
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[Time of day of birth]: http://hl7.org/fhir/DSTU2/extension-patient-birthtime.html
[Argonaut Race]: http://build.fhir.org/ig/Healthedata1/Argo-DSTU2/StructureDefinition-argo-race.html
[Argonaut Ethnicity]: http://build.fhir.org/ig/Healthedata1/Argo-DSTU2/StructureDefinition-argo-ethnicity.html
[Argonaut Patient Birth Sex]: http://build.fhir.org/ig/Healthedata1/Argo-DSTU2/StructureDefinition-argo-birthsex.html
[Rendered Value]: http://hl7.org/fhir/extension-rendered-value.html
[`token`]: http://hl7.org/fhir/DSTU2/search.html#token
[`date`]: http://hl7.org/fhir/DSTU2/search.html#date
[`string`]: http://hl7.org/fhir/DSTU2/search.html#string
[`_count`]: http://hl7.org/fhir/DSTU2/search.html#count
[`number`]: http://hl7.org/fhir/DSTU2/search.html#number
[Patient.deceased]: http://hl7.org/fhir/dstu2/patient-definitions.html#Patient.deceased_x_
[Patient.multipleBirth]: http://hl7.org/fhir/dstu2/patient-definitions.html#Patient.multipleBirth_x_
[Patient.photo]: http://hl7.org/fhir/dstu2/patient-definitions.html#Patient.photo
[Patient.contact]: http://hl7.org/fhir/dstu2/patient-definitions.html#Patient.contact
[Patient.animal]: http://hl7.org/fhir/DSTU2/patient-definitions.html#Patient.animal
[Patient.managingOrganization]: http://hl7.org/fhir/dstu2/patient-definitions.html#Patient.managingOrganization
[Patient.link]: http://hl7.org/fhir/dstu2/patient-definitions.html#Patient.link
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
