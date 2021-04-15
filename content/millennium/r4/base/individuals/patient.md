---
title: Patient | R4 API
---

# Patient

* TOC
{:toc}

## Overview

The Patient Resource provides general demographic information about a person receiving health care services from a specific organization. Common demographic fields include patient id, patient name, gender, date of birth, address, phone, primary language and marital status. Additional concepts returned as extensions and not part of the base resource include time of birth, race, ethnicity and birth sex. Cerner Millennium is a patient centric application: thus, many of the other resources will include the patient id in their queries. A person receiving care from multiple organizations may have data available in multiple patient resources in multiple FHIR servers.

The following fields are returned if valued:

* [Patient id](https://hl7.org/fhir/R4/resource-definitions.html#Resource.id){:target="_blank"}
* [Patient Identifier](https://hl7.org/fhir/R4/patient-definitions.html#Patient.identifier){:target="_blank"}
* [Active](https://hl7.org/fhir/R4/patient-definitions.html#Patient.active){:target="_blank"}
* [Patient name](https://hl7.org/fhir/R4/patient-definitions.html#Patient.name){:target="_blank"}
* [Telecom Information (may include phone and email)](https://hl7.org/fhir/R4/patient-definitions.html#Patient.telecom){:target="_blank"}
* [Gender (administrative)](https://hl7.org/fhir/R4/patient-definitions.html#Patient.gender){:target="_blank"}
* [Extensions including birth time, birth sex, ethnicity and race](#extensions){:target="_blank"}
* [Date of Birth]( https://hl7.org/fhir/R4/patient-definitions.html#Patient.birthDate){:target="_blank"}
* [Deceased]( https://hl7.org/fhir/R4/patient-definitions.html#Patient.deceased_x_){:target="_blank"}
* [Address]( https://hl7.org/fhir/R4/patient-definitions.html#Patient.address){:target="_blank"}
* [Marital status]( https://hl7.org/fhir/R4/patient-definitions.html#Patient.maritalStatus){:target="_blank"}
* [Multiple Birth Information]( https://hl7.org/fhir/R4/patient-definitions.html#Patient.multipleBirth_x_){:target="_blank"}
* [Contact person (guardian, parent or emergency)]( https://hl7.org/fhir/R4/patient-definitions.html#Patient.contact){:target="_blank"}
* [Communication (preferred language)]( https://hl7.org/fhir/R4/patient-definitions.html#Patient.communication){:target="_blank"}
* [Primary Care Providers]( https://hl7.org/fhir/R4/patient-definitions.html#Patient.generalPractitioner){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:patient, :r4) %>

## Extensions

* [Patient Birth Time]
* [US Core Race]
* [US Core Ethnicity]
* [US Core Birth Sex]

## Search

Search for Patients that meet supplied query parameters:

    GET /Patient?:parameters

_Implementation Notes_

* Direct secure email will not be returned.

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Parameters

 Name                 | Required?                                    | Type       | Description
----------------------|----------------------------------------------|------------|--------------------------------------------------------------------------
 `_id`                | This, or any other required search parameter | [`token`]  | The logical resource id associated with the resource.
 `identifier`         | This and/or any other search param, or `_id` | [`token`]  | A patient identifier.  Example: `urn:oid:1.1.1.1.1.1|1022228`
 `name`               | This and/or any other search param, or `_id` | [`string`] | The start of either family or given name of the patient. Example: `John`
 `family`             | This and/or any other search param, or `_id` | [`string`] | The start of the family name of the patient. Example: `Smith`
 `given`              | This and/or any other search param, or `_id` | [`string`] | The start of the given name of the patient. Example: `John`
 `birthdate`          | This and/or any other search param, or `_id` | [`date`]   | The patient's date of birth.  Example: `1990-01-01`
 `phone`              | This and/or any other search param, or `_id` | [`token`]  | The patient's phone number. Example: `1234567891`
 `email`              | This and/or any other search param, or `_id` | [`token`]  | The patient's email address. Example: `example@example.com`
 `address-postalcode` | This and/or any other search param, or `_id` | [`string`] | The postal code in the address details of the patient. Example: `12345`
 `gender`             | No                                           | [`token`]  | The gender of the patient. Example: `male`
 [`_count`]           | No                                           | [`number`] | The maximum number of results to return. Defaults to `20`.

Notes:

* Either the `_id`, or a combination of `identifier` , `birthdate`, `name`, `given`, `family`, `address-postalcode`, `phone`, or `email` parameters must be provided.
* The `gender` parameter may only be provided if at least one of `identifier` , `birthdate`, `name`, `given`, `family`, `address-postalcode`, `phone`, or `email` parameters is provided.
* The `name`, `family`, and `given` parameters support the ':exact' modifier and will search for current names only.
* The `identifier`, `name`, `family`, `given`, `phone`, `email`, `address-postalcode`, or `gender` parameters may be provided exactly once and may have only a single value.
* The `birthdate` parameter
  * May be provided twice using the prefixes `le` and `ge` to indicate a date range
  * May be provided once using one of the following prefixes to imply a date range: `ge`, `le`, `gt`, `lt`, `eq`
  * Must not be provided with a time component

### Headers

 <%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Patient?_id=12724067

#### Response

<%= headers status: 200 %>
<%= json(:r4_patient_bundle) %>

### Errors

The common [errors] and [OperationOutcomes] may be returned. In addition, a `422 Unprocessable Entity` will be returned when too many (>1000) patients qualify for the search criteria.

## Retrieve by id

List an individual Patient by its id:

    GET /Patient/:id

_Implementation Notes_

* Direct secure email will not be returned.

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Patient/12724067

#### Response

<%= headers status: 200 %>
<%= json(:r4_patient_entry) %>

### Patient Combines Example

Cerner Millennium supports the ability to logically merge a patient record into another patient record when both records are describing the same patient. This is known
as a "patient combine". If necessary, this merging can later be undone by performing a "patient uncombine". When the requested patient record has been combined into another
record, an inactive Patient entry will be returned which has a link to the current Patient entry. Entries for combined patients will only be returned when retrieving
the entries directly by id. They will not be returned when searching with other parameters.

The ability to perform patient combine or uncombine operations is not available through the Cerner Ignite platform.

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Patient/12742633

#### Response

<%= headers status: 200 %>
<%= json(:r4_combined_patient_entry) %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Create

Create a new Patient.

    POST /Patient

_Implementation Notes_

* Only the body fields mentioned below are supported. Unsupported fields will be ignored.
* Modifier fields should not be provided, and will cause the transaction to fail.

### Authorization Types

<%= authorization_types(provider: true, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', Accept: 'application/fhir+json', 'Content-Type': 'application/fhir+json'} %>

### Body Fields

Notes:

* Birth Sex, Ethnicity, and Race may be recorded as extensions.

<%= definition_table(:patient, :create, :r4) %>

### Example

#### Request

    POST https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Patient

#### Body

<%= json(:r4_patient_create) %>

#### Response

<%= headers status: 201 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: text/html
Date: Wed, 27 Mar 2019 17:23:14 GMT
Etag: W/"0"
Location: https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Patient/5786010
Last-Modified: Wed, 27 Mar 2019 17:23:14 GMT
Vary: Origin
X-Request-Id: 11111111111111111111111111111111
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Patch

Patch an existing Patient.

    PATCH /Patient/:id

_Implementation Notes_

* This implementation follows the [JSON PATCH](https://tools.ietf.org/html/rfc6902) spec.
* Only operations on the paths listed below are supported.
* When a path includes `{index}`, it refers to the index of the element in the list of elements. The indexes here are 0 based.

### Authorization Types

<%= authorization_types(provider: true, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', Accept: 'application/fhir+json',
                   'Content-Type': 'application/json-patch+json', 'If-Match': 'W/"&lt;Current version of the Patient resource>"'} %>

### Patch Operations

<%= patch_definition_table(:patient_patch, :r4) %>

### Example

#### Request

    PATCH https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Patient/12724067

#### Body

<%= json(:r4_patient_patch) %>

### Response

<%= headers status: 200 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: application/fhir+json
Date: Wed, 27 Mar 2019 17:23:14 GMT
Etag: W/"1"
Last-Modified: Wed, 27 Mar 2019 17:23:14 GMT
Vary: Origin
X-Request-Id: 81c05ba01b2c19e5bf421449ff8e97eb
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`_count`]: http://hl7.org/fhir/R4/search.html#count
[`date`]: https://hl7.org/fhir/R4/search.html#date
[`number`]: http://hl7.org/fhir/R4/search.html#number
[`string`]: https://hl7.org/fhir/R4/search.html#string
[`token`]: http://hl7.org/fhir/R4/search.html#token
[errors]: ../../#client-errors
[OperationOutcomes]: https://hl7.org/fhir/R4/operationoutcome.html
[Patient Birth Time]: https://hl7.org/fhir/R4/extension-patient-birthtime.html
[US Core Race]: https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-race.html
[US Core Ethnicity]: https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-ethnicity.html
[US Core Birth Sex]: https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-birthsex.html
