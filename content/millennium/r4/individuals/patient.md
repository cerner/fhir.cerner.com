---
title: Patient | R4 API
---

# Patient

* TOC
{:toc}

## Overview

The Patient Resource provides general demographic information about a person receiving health care services from a specific organization. Common demographic fields include patient id, patient name, gender, date of birth, address, phone, primary language and marital status. Additional concepts returned as extensions and not part of the base resource include time of birth, race, ethnicity and birth sex. Cerner Millennium is a patient centric application: thus, many of the other resources will include the patient id in their queries. A person receiving care from multiple organizations may have data available in multiple patient resources in multiple FHIR servers.

The following fields are returned if valued:

* [Patient id](https://hl7.org/fhir/R4/resource-definitions.html#Resource.id ){:target="_blank"}
* [Patient Identifier](https://hl7.org/fhir/R4/patient-definitions.html#Patient.identifier){:target="_blank"}
* [Active](https://hl7.org/fhir/R4/patient-definitions.html#Patient.active){:target="_blank"}
* [Patient name](https://hl7.org/fhir/R4/patient-definitions.html#Patient.name){:target="_blank"}
* [Telecom Information (may include phone and email)](https://hl7.org/fhir/R4/patient-definitions.html#Patient.telecom){:target="_blank"}
* [Gender (administrative)](https://hl7.org/fhir/R4/patient-definitions.html#Patient.gender){:target="_blank"}
* [Extensions including birth time, birth sex, ethnicity and race](#extensions){:target=”_blank”}
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

<%= authorization_types(practitioner: true, patient: false, system: true) %>

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
* The `birthdate` parameter may be provided twice to indicate a date range, but must contain the inclusive prefixes 'le' and 'ge'
* The `birthdate` parameter may be provided once with the following prefixes: 'ge', 'le', 'gt', 'lt', 'eq'

### Headers

 <%= headers %>

### Example

#### Request

    GET https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Patient?_id=4342009

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

<%= authorization_types(practitioner: true, patient: false, system: true) %>

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Patient/4342009

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

    GET https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Patient/4860007

#### Response

<%= headers status: 200 %>
<%= json(:r4_combined_patient_entry) %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Create

[//]: # (Required if the resource supports create.)

Create a new ResourceExample.

    POST /ResourceExample

_Implementation Notes_

* Add any create implementation notes here.

### Authorization Types

[//]: # (Update to include correct authorization types supportted for this action.)

<%= authorization_types(practitioner: false, patient: false, system: false) %>

### Headers

[//]: # (Required. Add all the required headers for the request. Below will add Auth, Accept, and Content-Type)

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', Accept: 'application/json+fhir', 'Content-Type': 'application/json+fhir'} %>

### Body Fields

Notes:

  - Any special considerations for these fields

<%= definition_table(:patient, :create, :r4) %>

### Example

[//]: # (Required section. Please populate the fields below with an example.)

#### Request

    POST add example request here.

#### Body

#### Response

<%= headers status: 201 %>
<pre class="terminal">
    #TODO: Replace with headers from successful create to your resource.
    Connection → Keep-Alive
    Content-Encoding → gzip
    Content-Length → 20
    Content-Type → text/html; charset=UTF-8
    Date → Wed, 13 Jan 2016 21:45:47 GMT
    Keep-Alive → timeout=15, max=100
    Last-Modified → Tue, 15 Dec 2015 19:13:20 GMT
    Status → 201 Created
    access-control-allow-methods → DELETE, GET, POST, PUT, OPTIONS, HEAD
    access-control-allow-origin → *
    access-control-expose-headers → ETag, Content-Location, Location, X-Request-Id, WWW-Authenticate, Date
    access-control-max-age → 0
    cache-control → no-cache
    etag → W/"0"
    location → 'url to created resource example'
    server-response-time → 1260.984596
    strict-transport-security → max-age=631152000
    vary → Origin,User-Agent,Accept-Encoding
    x-content-type-options → nosniff
    x-frame-options → SAMEORIGIN
    x-request-id → 682c633c-b20f-4f6f-8fae-c58b3aeffe04
    x-runtime → 1.260940
    x-xss-protection → 1; mode=block
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

### Errors

[//]: # (Errors is a required field. Must point to the common errors at least. Should include any OperationOutcomes or special errors. Make sure errors link is correct)

The common [errors] may be returned. In addition, [OperationOutcomes] may be returned in the following scenarios:

 HTTP Status | Cause                              | Severity  | Code
-------------|------------------------------------|-----------|---------------
 422         | Body contained modifier extensions | error     | extension
 422         | Body contained implicit rules      | error     | unsupported

## Update

[//]: # (Required if the resource supports update.)

Update a ResourceExample.

    PUT /ResourceExample

_Implementation Notes_

* Add any update implementation notes here.

### Authorization Types

[//]: # (Update to include correct authorization types supportted for this action.)

<%= authorization_types(practitioner: false, patient: false, system: false) %>

### Headers

[//]: # (Required. Add all the required headers for the request.)

### Body fields

Notes:

  - Any special considerations for these fields

<%= definition_table(:patient, :update, :r4) %>

### Example

[//]: # (Required section. Please populate the fields below with an example.)

#### Request

    PUT add example request here.

#### Body

### Response

<%= headers status: 200 %>
<pre class="terminal">
    #TODO: Replace with headers from a successful update to a ResourceExample
    Connection → Keep-Alive
    Content-Encoding → gzip
    Content-Length → 20
    Content-Type → text/html; charset=UTF-8
    Date → Wed, 13 Jan 2016 21:50:53 GMT
    Keep-Alive → timeout=15, max=100
    Last-Modified → Tue, 15 Dec 2015 19:13:20 GMT
    Status → 200 OK
    access-control-allow-methods → DELETE, GET, POST, PUT, OPTIONS, HEAD
    access-control-allow-origin → *
    access-control-expose-headers → ETag, Content-Location, Location, X-Request-Id, WWW-Authenticate, Date
    access-control-max-age → 0
    cache-control → no-cache
    etag → W/"1"
    server-response-time → 653.7616069999999
    strict-transport-security → max-age=631152000
    vary → Origin,User-Agent,Accept-Encoding
    x-content-type-options → nosniff
    x-frame-options → SAMEORIGIN
    x-request-id → 9dba8326-899a-406f-a125-3fc3d6605dad
    x-runtime → 0.653722
    x-xss-protection → 1; mode=block
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

### Errors

[//]: # (Errors is a required field. Must point to the common errors at least. Should include any OperationOutcomes or special errors. Make sure errors link is correct)

The common [errors] may be returned. In addition, [OperationOutcomes] may be returned in the following scenarios:

 HTTP Status | Cause                              | Severity  | Code
-------------|------------------------------------|-----------|---------------
 422         | Body contained modifier extensions | error     | extension
 422         | Body contained implicit rules      | error     | unsupported

[`date`]: http://hl7.org/fhir/R4/search.html#date
[`reference`]: http://hl7.org/fhir/R4/search.html#reference
[errors]: ../../#client-errors
[OperationOutcomes]: http://hl7.org/fhir/R4/operationoutcome.html
[Patient Birth Time]: https://hl7.org/fhir/R4/extension-patient-birthtime.html
[US Core Race]: https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-race.html
[US Core Ethnicity]: https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-ethnicity.html
[US Core Birth Sex]: https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-birthsex.html
