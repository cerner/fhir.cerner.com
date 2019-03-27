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

[//]: # (Required if the resource supports search.)

Search for ResourceExamples that meet supplied query parameters:

    GET /ResourceExample?:parameters

_Implementation Notes_

* Add any search implementation notes here.

### Authorization Types

[//]: # (Update to include correct authorization types supportted for this action.)

<%= authorization_types(practitioner: false, patient: false, system: false) %>

### Parameters

[//]: # (Required section. A table for the supported search parameters)

 Name         | Required?                             | Type          | Description
--------------|---------------------------------------|---------------|------------------------------------------------------------------------------------
 `param1`     | Is param1 required?                   | param1's type | The description of param1 and an example. 2 examples of params are given below.
 `subject`    | This, or `param1`                     | [`reference`] | The subject of the Resource. Must represent a Patient resource. May use the `:Patient` modifier. Example: `subject=Patient/1316020` or `subject:Patient=1316020`
 `date`       | N                                     | [`date`]      | The date/time when the Resource was performed. Must use the `ge` and/or `le` prefixes. Example: `date=le2017-02-01T10:30:00Z`

Notes:

  - Add any notes about the search parameters here. The description should be short

### Headers

[//]: # (Required. Add all the required headers for the request, if anything besides accept and auth headers)

 <%= headers %>

### Example

[//]: # (Required section. Please populate the fields below with an example.)

#### Request

    GET add example request here.

#### Response
<%= headers status: 200 %>
<%= json(:r4_patient_bundle) %>

### Errors

[//]: # (Errors is a required field. Must point to the common errors at least. Should include any OperationOutcomes or special errors. Make sure errors link is correct)

The common [errors] may be returned. In addition, [OperationOutcomes] may be returned in the following scenarios:

 HTTP Status | Cause                              | Severity  | Code
-------------|------------------------------------|-----------|---------------
 422         | Body contained ...                 | error     | unsupported

## Retrieve by id

[//]: # (Required if the resource supports retrieve by id.)

List an individual ResourceExample by its id:

    GET /ResourceExample/:id

_Implementation Notes_

* Add any retrieve by id implementation notes here.

### Authorization Types

[//]: # (Update to include correct authorization types supportted for this action.)

<%= authorization_types(practitioner: false, patient: false, system: false) %>

### Headers

[//]: # (Required. Add all the required headers for the request, if anything besides accept and auth headers)

<%= headers %>

### Example

[//]: # (Required section. Please populate the fields below with an example.)

#### Request

    GET add example request here.

#### Response

<%= headers status: 200 %>
<%= json(:r4_recource_example_entry) %>

### Errors

[//]: # (Errors is a required field. Must point to the common errors at least. Should include any OperationOutcomes or special errors. Make sure errors link is correct)

The common [errors] may be returned. In addition, [OperationOutcomes] may be returned in the following scenarios:

 HTTP Status | Cause                              | Severity  | Code
-------------|------------------------------------|-----------|---------------
 422         | Body contained ...                 | error     | unsupported


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

#### Contained Resource(if any) Body Fields

<%= definition_table(:contained_patient, :create, :r4) %>

### Example

[//]: # (Required section. Please populate the fields below with an example.)

#### Request

    POST add example request here.

#### Body

<%= json(:r4_patient_create) %>

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

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', Accept: 'application/json+fhir',
                   Content-Type: 'application/json+fhir', If-Match: 'W/"&lt;Current version of the MedicationStatement resource>"'} %>

### Body fields

Notes:

  - Any special considerations for these fields

<%= definition_table(:patient, :update, :r4) %>

### Example

[//]: # (Required section. Please populate the fields below with an example.)

#### Request

    PUT add example request here.

#### Body

<%= json(:r4_patient_update) %>

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

[//]: # (Add your links here)

[`date`]: http://hl7.org/fhir/R4/search.html#date
[`reference`]: http://hl7.org/fhir/R4/search.html#reference
[Time of day of birth]: http://hl7.org/fhir/R4/extension-patient-birthtime.html
[errors]: ../../#client-errors
[OperationOutcomes]: http://hl7.org/fhir/R4/operationoutcome.html
[Patient Birth Time]: https://hl7.org/fhir/R4/extension-patient-birthtime.html
[US Core Race]: https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-race.html
[US Core Ethnicity]: https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-ethnicity.html
[US Core Birth Sex]: https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-birthsex.html
