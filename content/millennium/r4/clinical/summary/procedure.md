---
title: Procedure | R4 API
---

# Procedure

* TOC
{:toc}

## Overview

The Procedure resource returns medical and surgical procedures performed on or for a patient during their lifetime. Historical procedures and procedures recorded during a specific visit are returned. Surgical procedures from finalized surgical cases are returned as free-text procedures if the product is configured to write procedures from finalized cases to procedure history.

* This resource supports the following [HL7 FHIR US Core Implementation Guide STU 4.0.0](https://hl7.org/fhir/us/core/STU4/) profiles:
  * [US Core Procedure Profile](https://hl7.org/fhir/us/core/STU4/StructureDefinition-us-core-procedure.html)

The following fields are returned if valued:

* [ID](https://hl7.org/fhir/R4/resource-definitions.html#Resource.id){:target="_blank"}
* [Status](https://hl7.org/fhir/R4/procedure-definitions.html#Procedure.status){:target="_blank"}
* [Code](https://hl7.org/fhir/R4/procedure-definitions.html#Procedure.code){:target="_blank"}
* [Subject](https://hl7.org/fhir/R4/procedure-definitions.html#Procedure.subject){:target="_blank"}
  * [Reference](https://hl7.org/fhir/r4/references.html#Reference){:target="_blank"} ([Patient](https://hl7.org/fhir/r4/patient.html){:target="_blank"})
* [Encounter](https://hl7.org/fhir/R4/procedure-definitions.html#Procedure.encounter){:target="_blank"}
* [Performed Period](https://hl7.org/fhir/R4/procedure-definitions.html#Procedure.performed_x_){:target="_blank"}
  * [DateTime](https://hl7.org/fhir/R4/datatypes.html#dateTime){:target="_blank"}
  * [Period](https://hl7.org/fhir/R4/datatypes.html#Period){:target="_blank"}
* [Who recorded](https://hl7.org/fhir/R4/procedure-definitions.html#Procedure.recorder){:target="_blank"}
  * [Reference](https://hl7.org/fhir/r4/references.html#Reference) ([Practitioner](https://hl7.org/fhir/r4/practitioner.html){:target="_blank"})
* [Who performed](https://hl7.org/fhir/R4/procedure-definitions.html#Procedure.performer.actor){:target="_blank"}
  * [Reference](https://hl7.org/fhir/r4/references.html#Reference){:target="_blank"} ([Practitioner](https://hl7.org/fhir/r4/practitioner.html){:target="_blank"})
* [Location](https://hl7.org/fhir/R4/procedure-definitions.html#Procedure.location){:target="_blank"}
* [Reason procedure performed](https://hl7.org/fhir/R4/procedure-definitions.html#Procedure.reasonReference){:target="_blank"}
  * [Reference](https://hl7.org/fhir/r4/references.html#Reference){:target="_blank"} ([Condition](https://hl7.org/fhir/R4/condition.html){:target="_blank"})
* [Comment/Note](https://hl7.org/fhir/R4/procedure-definitions.html#Procedure.note){:target="_blank"}
  * [Annotation Author](https://hl7.org/fhir/R4/datatypes-definitions.html#Annotation.author_x_){:target="_blank"}
    * [Reference](https://hl7.org/fhir/r4/references.html#Reference){:target="_blank"} ([Practitioner](https://hl7.org/fhir/r4/practitioner.html){:target="_blank"})

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Terminology Bindings

<%= terminology_table(:procedure, :r4) %>

## Search

Search for procedures that meet supplied query parameters.

    GET /Procedure?:parameters

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Parameters

 Name              | Required?     | Type          | Description
-------------------|---------------|---------------|-----------------------------------------------------------------------
 `_id`             | Conditionally | [`token`]     | The logical resource ID associated with the resource. This parameter is required if `patient` or `subject` is not used. Example: `_id=7891`
 `patient`         | Conditionally | [`reference`] | Who the procedure is for. This parameter is required if `_id` or `subject` is not used. Example: `12345`
 `subject`         | Conditionally | [`reference`] | Who the procedure is for. This parameter is required if `_id` or `patient` is not used. Example: `Patient/12345`
 `date`            | No            | [`dateTime`]  | The date range that the procedure's `performedPeriod` or `performedDateTime` falls within. Example: `date=gt2015-09-24T12:00:00.000Z&date=le2020-07-15T16:00:00.000Z`
 `_revinclude`     | No            | [`token`]     | The Provenance resource entries to be returned as part of the bundle. Example:_revinclude=Provenance:target 
 `_lastUpdated`    | No            | [`date`]      | Date range in which the procedures was last updated. Example: `_lastUpdated=gt2014-09-24` or `_lastUpdated=lt2015-09-24T12:00:00.000Z`
 
Notes:

* The `date` parameter: 
  * May be provided once with a prefix and time component to imply a date range. Example: `date=gt2015-09-24T00:00:00.000Z`
  * May otherwise be provided twice with `le`, `lt`, `ge`, or `gt` prefixes and a time component to search for procedures within a specific range. The date and prefix pairs must create a closed range.
* The `_revinclude` parameter:
  * May be provided once with the `Provenance:target` value. Example: `_revinclude=Provenance:target`
  * May be provided in combination with the `_id` or `patient` parameter. Example: `_id=570007845&_revinclude=Provenance:target` or `patient=12345&_revinclude=Provenance:target`.
  * When provided in a request to a closed endpoint, the OAuth2 token must include the `user/Provenance.read` scope.
* Currently, the `patient/Provenance.read` scope is not supported; hence, `_revinclude` cannot be used for patient persona.
* The `_lastUpdated` parameters may be provided up to two times, and must use the `eq`, `ge`, `gt`, `le`, or `lt` prefixes. When a value is provided without a prefix, an implied `eq` prefix is used. When provided twice, the lower value must have a `ge` or `gt` prefix and the higher value must have an `le` or `lt` prefix.
* The `date` and `_lastUpdated` parameters may not be provided together.

### Headers

 <%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Procedure?patient=12724066

#### Response

<%= headers status: 200 %>
<%= json(:r4_procedure_bundle) %>

### Example With RevInclude

### Authorization Types

<%= authorization_types(provider: true, system: true) %>

#### Request

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Procedure?_id=570007845&_revinclude=Provenance:target

#### Response

<%= headers status: 200 %>
<%= json(:r4_procedure_revinclude_bundle) %>

#### Patient Authorization Request

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Procedure?patient=12724066

#### Response

<%= headers status: 200 %>
<%= json(:r4_procedure_patient_bundle) %>

## Retrieve by ID

List an individual procedure by its ID.

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


#### Patient Authorization Request

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Procedure/2572581295

#### Response

<%= headers status: 200 %>
<%= json(:r4_procedure_patient_entry) %>

#### Patient Authorization Request For Entered in Error Status

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Procedure/1788134987

#### Response

<%= headers status: 200 %>
<%= json(:r4_procedure_entered_in_error_status ) %>

## Create

Create a new procedure.

    POST /Procedure

_Notes_

* Only the body fields mentioned below are supported. Unsupported fields are ignored.

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

[`date`]: https://hl7.org/fhir/R4/search.html#date
[`reference`]: https://hl7.org/fhir/r4/search.html#reference
[`token`]: https://hl7.org/fhir/R4/search.html#token
[`dateTime`]: https://hl7.org/fhir/r4/datatypes.html#dateTime
[errors]: ../../../#client-errors
[OperationOutcomes]: ../../../#operation-outcomes
[FHIR<sup>®</sup> Update]: https://hl7.org/fhir/R4/http.html#update
