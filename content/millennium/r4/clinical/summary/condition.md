---
title: Condition | R4 API
---

# Condition

* TOC
{:toc}

## Overview

The Condition resource is used to record problems, diagnoses, or other health matters that are concerning to a patient. Depending on the site, problems and diagnoses are used in different ways. Diagnoses are recorded on an encounter to document conditions addressed or treated during a specific patient visit. For U.S. clients, diagnoses support financial or reimbursement workflows. Problems are on-going or chronic conditions that are managed over every visit and not associated to a specific encounter. A condition may be both a diagnosis and a problem. Conditions, specifically diagnoses, are often associated to orders to document the medical necessity of a specific medication or procedure order and may be referenced by other resources as a “reason” for an action or order. Health concerns are also returned as part of the Condition resource and represent other concerns a patient may have such as financial or social risks.

The following [HL7® FHIR® US Core Implementation Guide STU 4.0.0](https://hl7.org/fhir/us/core/STU4/){:target="_blank"} Profiles are supported by this resource:

* [US Core Condition Profile](https://hl7.org/fhir/us/core/STU4/StructureDefinition-us-core-condition.html){:target="_blank"}

The following fields are returned if valued:

* [Id](https://hl7.org/fhir/R4/resource-definitions.html#Resource.id){:target="_blank"}
* [Clinical status](https://hl7.org/fhir/R4/condition-definitions.html#Condition.clinicalStatus){:target="_blank"}
* [Verification status](https://hl7.org/fhir/R4/condition-definitions.html#Condition.verificationStatus){:target="_blank"}
* [Category](https://hl7.org/fhir/R4/condition-definitions.html#Condition.category){:target="_blank"}
* [Severity](https://hl7.org/fhir/R4/condition-definitions.html#Condition.severity){:target="_blank"}
* [Condition code](https://hl7.org/fhir/R4/condition-definitions.html#Condition.code){:target="_blank"}
* [Subject](https://hl7.org/fhir/R4/condition-definitions.html#Condition.subject){:target="_blank"}
  * [Reference](https://hl7.org/fhir/r4/references.html#Reference){:target="_blank"} ([Patient](https://hl7.org/fhir/R4/patient.html){:target="_blank"})
* [Patient encounter when first recorded (only applies to diagnoses)](https://hl7.org/fhir/R4/condition-definitions.html#Condition.encounter){:target="_blank"}
* [Onset](https://hl7.org/fhir/R4/condition-definitions.html#Condition.onset_x_){:target="_blank"}
  * [dateTime](https://hl7.org/fhir/R4/datatypes.html#dateTime){:target="_blank"}
* [Resolved date  (only applies to problems and health-concerns)](https://hl7.org/fhir/R4/condition-definitions.html#Condition.abatement_x_){:target="_blank"}
  * [dateTime](https://hl7.org/fhir/R4/datatypes.html#dateTime){:target="_blank"}
* [Date recorded](https://hl7.org/fhir/R4/condition-definitions.html#Condition.recordedDate){:target="_blank"}
* [Who recorded the condition](https://hl7.org/fhir/R4/condition-definitions.html#Condition.recorder){:target="_blank"}
  * [Reference](https://hl7.org/fhir/r4/references.html#Reference){:target="_blank"} ([Practitioner](https://hl7.org/fhir/r4/practitioner.html){:target="_blank"})
* [Asserter](https://hl7.org/fhir/r4/condition-definitions.html#Condition.asserter){:target="_blank"}
  * [Reference](https://hl7.org/fhir/r4/references.html#Reference){:target="_blank"} ([Patient](https://hl7.org/fhir/R4/patient.html){:target="_blank"} \| [Practitioner](https://hl7.org/fhir/r4/practitioner.html){:target="_blank"})
* [Comment/Note](https://hl7.org/fhir/R4/condition-definitions.html#Condition.note){:target="_blank"}
  * [Annotation](https://hl7.org/fhir/R4/datatypes.html#Annotation){:target="_blank"}
    * [author](https://hl7.org/fhir/R4/datatypes-definitions.html#Annotation.author_x_){:target="_blank"}
      * [Reference](https://hl7.org/fhir/r4/references.html#Reference){:target="_blank"} ([Practitioner](https://hl7.org/fhir/r4/practitioner.html){:target="_blank"}) \| [string](https://hl7.org/fhir/R4/datatypes.html#string){:target="_blank"}
    * [time](https://hl7.org/fhir/R4/datatypes-definitions.html#Annotation.time){:target="_blank"} ([dateTime](https://hl7.org/fhir/R4/datatypes.html#dateTime){:target="_blank"})
    * [text](https://hl7.org/fhir/R4/datatypes-definitions.html#Annotation.text){:target="_blank"} ([markdown](https://hl7.org/fhir/R4/datatypes.html#markdown){:target="_blank"})

## Terminology Bindings

<%= terminology_table(:condition, :r4) %>

## Search

Search for Conditions that meet supplied query parameters:

    GET /Condition?:parameters

_Implementation Notes_

* Currently `problem-list-item`, `encounter-diagnosis` and `health-concern` are supported.

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Parameters

 Name              | Required?                      | Type          | Description
-------------------|--------------------------------|---------------|-----------------------------------------------------------------------
 `_id`             | This or `patient` or `subject` | [`token`]     | The logical resource id associated with the resource.
 `patient`         | This or `_id` or `subject`     | [`reference`] | Who the condition is for. Example: `12345`
 `subject`         | This or `_id` or `patient`     | [`reference`] | Who the condition is for. Example: `Patient/12345`
 `clinical-status` | No                             | [`token`]     | The clinical status of the condition. Example: `active`, `inactive`, `resolved`
 `category`        | No                             | [`token`]     | The category of the condition. Categories problem-list-item, encounter-diagnosis and health-concern are supported as of now. Example: `problem-list-item`, `encounter-diagnosis`, `health-concern`
 `_revinclude`     | No                             | [`token`]     | Provenance resource entries to be returned as part of the bundle. Example:`_revinclude=Provenance:target`
 `encounter`       | No                             | [`reference`] | The encounter ID/s for the patient. Encounter-diagnosis conditions that match the encounter ID/s and all problem-list-item conditions of the patient are returned. Example: `encounter=97733489`

Notes:

* If `_id` is provided, no other parameters may be provided.
* The `_revinclude` parameter may
  * be provided once with the value `Provenance:target`. Example: `_revinclude=Provenance:target`
  * be provided with the `_id/patient` parameter. Example: `_id=82c1c95c-83bb-47d2-86d7-7961aa996082&_revinclude=Provenance:target`
* When `_revinclude` is provided in a request to the closed endpoint, the OAuth2 token must include the scope corresponding to the Authorization Type, such as `user/Provenance.read`, `patient/Provenance.read` or `system/Provenance.read`.
* When `encounter` is provided, encounter-diagnosis for the matched encounter/s and all problem-list-item conditions of the patient will be returned. No HealthConcerns are returned.

### Headers

 <%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Condition?patient=12724066

#### Response

<%= headers status: 200 %>
<%= json(:r4_condition_bundle) %>
<%= disclaimer %>
<%= security_field_disclaimer %>

### Example with RevInclude

### Authorization Types

<%= authorization_types(provider: true, system: true) %>

#### Request

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Condition?_id=00a5d6eb-c567-42f7-be07-53804cece075&_revinclude=Provenance:target

#### Response

<%= headers status: 200 %>
<%= json(:r4_condition_revinclude_bundle) %>
<%= disclaimer %>
<%= security_field_disclaimer %>

#### Patient Authorization Request

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Condition?patient=12742400

#### Response

<%= headers status: 200 %>
<%= json(:r4_patient_condition_bundle) %>
<%= disclaimer %>
<%= security_field_disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual Condition by its id:

    GET /Condition/:id

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Condition/p73077203

#### Response

<%= headers status: 200 %>
<%= json(:r4_condition_entry) %>
<%= disclaimer %>
<%= security_field_disclaimer %>

#### Patient Authorization Request For Resolved Status

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Condition/p73875571

#### Response

<%= headers status: 200 %>
<%= json(:r4_patient_condition_entry) %>
<%= disclaimer %>
<%= security_field_disclaimer %>

#### Patient Authorization Request For Active Status

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Condition/a077dc30-8eee-4bb7-ae7f-ced1273f5c68

#### Response

<%= headers status: 200 %>
<%= json(:r4_patient_active_entry) %>
<%= disclaimer %>
<%= security_field_disclaimer %>

#### Patient Authorization Request For Entered in Error Status

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Condition/p73703587

#### Response

<%= headers status: 200 %>
<%= json(:r4_patient_entered_in_error_entry) %>
<%= disclaimer %>
<%= security_field_disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Create

Create a new Condition.

    POST /Condition

_Implementation Notes_

* The Condition Create API supports only the API fields mentioned below. Unsupported fields will be ignored.
* Modifier fields should not be provided, and will cause the transaction to fail.
* The code.coding field can have at most 2 codings.
  * One of the codings must have `userSelected: true`
  * The other coding must have `userSelected: false`
* The Condition Create API currently supports only Conditions with a category of `problem-list-item` or `encounter-diagnosis`.
* An `encounter-diagnosis` Condition will be automatically prioritized to the least significant priority by the Cerner Millennium EHR.
* On FHIR write of an encounter-diagnosis, the diagnosis will automatically receive the next available diagnosis priority within the problem list component.

### Authorization Types

<%= authorization_types(provider: true, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', 'Content-Type': 'application/fhir+json'} %>

### Body Fields

<%= definition_table(:condition, :create, :r4) %>

### Example

#### Request

    POST https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Condition

#### Body

<%= json(:r4_condition_create) %>

#### Response

<%= headers status: 201 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: text/html
Date: Wed, 14 Aug 2019 17:23:14 GMT
Etag: W/"12793861"
Location: https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Condition/p12793861
Last-Modified: Wed, 14 Aug 2019 17:23:14 GMT
Vary: Origin
X-Request-Id: 11111111111111111111111111111111
</pre>

The `ETag` response header indicates the current `If-Match` version to use on a subsequent update.

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Update

Update an existing condition.

    PUT /Condition/:id

_Implementation Notes_

* Currently `problem-list-item` and `encounter-diagnosis` are supported.
* Any field which is missing will be interpreted as nulling out or removing data from the resource. See [FHIR<sup>®</sup> Update] for additional details about update operations.
* The code.coding field can have at most 2 codings, one of which must be set as `userSelected: true` and the other one must be set as `userSelected: false`.

### Authorization Types

<%= authorization_types(provider: true, patient: false, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', 'Content-Type': 'application/fhir+json', 'If-Match': 'W/"&lt;Current version of the Condition resource>"'} %>

### Body fields

<%= definition_table(:condition, :update, :r4) %>

### Example

#### Request

    PUT https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Condition/p73077203

#### Body

<%= json(:r4_condition_update) %>

#### Response

<%= headers status: 200 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: text/html
Date: Tue, 20 Aug 2019 21:17:04 GMT
Etag: W/"12809861"
Last-Modified: TTue, 20 Aug 2019 21:17:04 GMT
Vary: Origin
X-Request-Id: 3e4cb2f732daacdb6cca2eb944e80e55
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent update.

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`reference`]: https://hl7.org/fhir/r4/search.html#reference
[`token`]: https://hl7.org/fhir/R4/search.html#token
[errors]: ../../../#client-errors
[OperationOutcomes]: ../../../#operation-outcomes
[FHIR<sup>®</sup> Update]: https://hl7.org/fhir/R4/http.html#update
