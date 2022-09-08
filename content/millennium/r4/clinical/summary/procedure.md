---
title: Procedure | R4 API
---

# Procedure

* TOC
{:toc}

## Overview

The Procedure resource returns medical and surgical procedures performed on or for a patient during their lifetime.   Historical procedures, as well as procedures recorded during a specific visit, are returned. Surgical procedures from finalized surgical cases will be returned as free text procedures, if the solution has been configured to write procedures from finalized cases to Procedure History.

* The following [HL7® FHIR® US Core Implementation Guide STU 4.0.0](https://hl7.org/fhir/us/core/STU4/) Profiles are supported by this resource:
  * [US Core Procedure Profile](http://hl7.org/fhir/us/core/STU4/StructureDefinition-us-core-procedure.html)

The following fields are returned if valued:

* [Id](https://hl7.org/fhir/R4/resource-definitions.html#Resource.id){:target="_blank"}
* [Status (completed, entered-in-error)](https://hl7.org/fhir/R4/procedure-definitions.html#Procedure.status){:target="_blank"}
* [Code](https://hl7.org/fhir/R4/procedure-definitions.html#Procedure.code){:target="_blank"}
* [Subject](https://hl7.org/fhir/R4/procedure-definitions.html#Procedure.subject){:target="_blank"}
  * [Reference](http://hl7.org/fhir/r4/references.html#Reference){:target="_blank"} ([Patient](http://hl7.org/fhir/r4/patient.html){:target="_blank"})
* [Encounter](https://hl7.org/fhir/R4/procedure-definitions.html#Procedure.encounter){:target="_blank"}
* [Date performed](https://hl7.org/fhir/R4/procedure-definitions.html#Procedure.performed_x_){:target="_blank"}
  * [DateTime](https://hl7.org/fhir/R4/datatypes.html#dateTime){:target="_blank"}
  * [Period](https://hl7.org/fhir/R4/datatypes.html#Period){:target="_blank"}
* [Who recorded](https://hl7.org/fhir/R4/procedure-definitions.html#Procedure.recorder){:target="_blank"}
  * [Reference](http://hl7.org/fhir/r4/references.html#Reference) ([Practitioner](http://hl7.org/fhir/r4/practitioner.html){:target="_blank"})
* [Who performed](https://hl7.org/fhir/R4/procedure-definitions.html#Procedure.performer.actor){:target="_blank"}
  * [Reference](http://hl7.org/fhir/r4/references.html#Reference){:target="_blank"} ([Practitioner](http://hl7.org/fhir/r4/practitioner.html){:target="_blank"})
* [Location](https://hl7.org/fhir/R4/procedure-definitions.html#Procedure.location){:target="_blank"}
* [Reason procedure performed](https://hl7.org/fhir/R4/procedure-definitions.html#Procedure.reasonReference){:target="_blank"}
  * [Reference](http://hl7.org/fhir/r4/references.html#Reference){:target="_blank"} ([Condition](https://hl7.org/fhir/R4/condition.html){:target="_blank"})
* [Comment/Note](https://hl7.org/fhir/R4/procedure-definitions.html#Procedure.note){:target="_blank"}
  * [Annotation Author](https://hl7.org/fhir/R4/datatypes-definitions.html#Annotation.author_x_){:target="_blank"}
    * [Reference](http://hl7.org/fhir/r4/references.html#Reference){:target="_blank"} ([Practitioner](http://hl7.org/fhir/r4/practitioner.html){:target="_blank"})

## Terminology Bindings

<%= terminology_table(:procedure, :r4) %>

## Search

Search for Procedures that meet supplied query parameters:

    GET /Procedure?:parameters

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Parameters

 Name              | Required?                      | Type          | Description
-------------------|--------------------------------|---------------|-----------------------------------------------------------------------
 `_id`             | This or `patient` or `subject` | [`token`]     | The logical resource id associated with the resource.
 `patient`         | This or `_id` or `subject`     | [`reference`] | Who the procedure is for. Example: `12345`
 `subject`         | This or `_id` or `patient`     | [`reference`] | Who the procedure is for. Example: `Patient/12345`
 `date`            | No                              | [`dateTime`]  | Date range into which the procedure falls. Example: `date=gt2015-09-24T12:00:00.000Z&date=le2020-07-15T16:00:00.000Z`
 `_revinclude`     | No                             | [`token`]     | Provenance resource entries to be returned as part of the bundle. Example:_revinclude=Provenance:target 

Notes:

* If `_id` is provided, `patient` or `subject` can no longer be provided.
* A `date` parameter may be provided once with a prefix and time component to imply a date range. Alternately it may be provided twice with `le`, `lt`, `ge`, or `gt` prefixes and time component to search for procedures within a specific range. The date and prefix pairs must create a closed range.
* The `_revinclude` parameter may be provided once with the value `Provenance:target`. Example: `_revinclude=Provenance:target`
* The `_revinclude` parameter may be provided in combination with the `_id/patient` parameter. Example: `_id=570007845&_revinclude=Provenance:target` or `patient=12345&_revinclude=Provenance:target`.
* When `_revinclude` is provided in a request to a closed endpoint, the OAuth2 token must include the `user/Provenance.read` scope.
* **Currently the `patient/Provenance.read` scope is not supported and hence `_revinclude` cannot be utilised for patient persona.**

### Headers

 <%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Procedure?patient=12724066

#### Response

<%= headers status: 200 %>
<%= json(:r4_procedure_bundle) %>

<%= disclaimer %>

### Example with RevInclude

### Authorization Types

<%= authorization_types(provider: true, system: true) %>

#### Request

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Procedure?_id=570007845&_revinclude=Provenance:target

#### Response

<%= headers status: 200 %>
<%= json(:r4_procedure_revinclude_bundle) %>

<%= disclaimer %>

#### Patient Authorization Request

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Procedure?patient=12724066

#### Response

<%= headers status: 200 %>
<%= json(:r4_procedure_patient_bundle) %>
<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual Procedure by its id:

    GET /Procedure/:id

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Procedure/2572382193

#### Response

<%= headers status: 200 %>
<%= json(:r4_procedure_entry) %>

<%= disclaimer %>

#### Patient Authorization Request

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Procedure/2572581295

#### Response

<%= headers status: 200 %>
<%= json(:r4_procedure_patient_entry) %>
<%= disclaimer %>

#### Patient Authorization Request For Entered in Error Status

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Procedure/1788134987

#### Response

<%= headers status: 200 %>
<%= json(:r4_procedure_entered_in_error_status ) %>
<%= disclaimer %>
### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Create

Create a new Procedure.

    POST /Procedure

_Implementation Notes_

* Only the body fields mentioned below are supported. Unsupported fields will be ignored.
* Modifier fields should not be provided, and will cause the transaction to fail.

### Authorization Types

<%= authorization_types(provider: true, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', 'Content-Type': 'application/fhir+json'} %>

### Body Fields

<%= definition_table(:procedure, :create, :r4) %>

### Example

#### Request

    POST https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Procedure

#### Body

<%= json(:r4_procedure_create) %>

#### Response

<%= headers status: 201 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: text/html
Date: Mon, 06 Apr 2020 19:00:43 GMT
Etag: W/"1"
Location: https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Procedure/17228728
Last-Modified: Mon, 06 Apr 2020 19:00:43 GMT
Vary: Origin
X-Request-Id: 2e11665d-618d-4017-9a90-c3c1afeeac00
</pre>

The `ETag` response header indicates the current `If-Match` version to use on a subsequent update.

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`reference`]: https://hl7.org/fhir/r4/search.html#reference
[`token`]: https://hl7.org/fhir/R4/search.html#token
[`dateTime`]: https://hl7.org/fhir/r4/datatypes.html#dateTime
[errors]: ../../#client-errors
[OperationOutcomes]: https://hl7.org/fhir/R4/operationoutcome.html
[FHIR<sup>®</sup> Update]: https://hl7.org/fhir/R4/http.html#update
