---
title: Procedure | R4 API
---

# Procedure

* TOC
{:toc}

## Overview

The Procedure resource returns medical and surgical procedures performed on or for a patient during their lifetime.   Historical procedures, as well as procedures recorded during a specific visit, are returned. Surgical procedures from finalized surgical cases will be returned as free text procedures, if the solution has been configured to write procedures from finalized cases to Procedure History.

The following fields are returned if valued:

* [Id](https://hl7.org/fhir/R4/resource-definitions.html#Resource.id)
* [Status (completed, entered-in-error)](https://hl7.org/fhir/R4/procedure-definitions.html#Procedure.status)
* [Code](https://hl7.org/fhir/R4/procedure-definitions.html#Procedure.code)
* [Subject](https://hl7.org/fhir/R4/procedure-definitions.html#Procedure.subject)
* [Encounter](https://hl7.org/fhir/R4/procedure-definitions.html#Procedure.encounter)
* [Date performed](https://hl7.org/fhir/R4/procedure-definitions.html#Procedure.performed_x_)
* [Who recorded](https://hl7.org/fhir/R4/procedure-definitions.html#Procedure.recorder)
* [Who performed](https://hl7.org/fhir/R4/procedure-definitions.html#Procedure.performer)
* [Location](https://hl7.org/fhir/R4/procedure-definitions.html#Procedure.location)
* [Reason procedure performed](https://hl7.org/fhir/R4/procedure-definitions.html#Procedure.reasonReference)
* [Comment/Note](https://hl7.org/fhir/R4/procedure-definitions.html#Procedure.note)

## Terminology Bindings

<%= terminology_table(:procedure, :r4) %>

## Search

Search for Procedures that meet supplied query parameters:

    GET /Procedure?:parameters

### Authorization Types

<%= authorization_types(provider: true, patient: false, system: true) %>

### Parameters

 Name              | Required?                      | Type          | Description
-------------------|--------------------------------|---------------|-----------------------------------------------------------------------
 `_id`             | This or `patient` or `subject` | [`token`]     | The logical resource id associated with the resource.
 `patient`         | This or `_id` or `subject`     | [`reference`] | Who the procedure is for. Example: `12345`
 `subject`         | This or `_id` or `patient`     | [`reference`] | Who the procedure is for. Example: `Patient/12345`

Notes:

* If `_id` is provided, no other parameters may be provided.

### Headers

 <%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Procedure?patient=12724066

#### Response

<%= headers status: 200 %>
<%= json(:r4_procedure_bundle) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual Procedure by its id:

    GET /Procedure/:id

### Authorization Types

<%= authorization_types(provider: true, patient: false, system: true) %>

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Procedure/2572382193

#### Response

<%= headers status: 200 %>
<%= json(:r4_procedure_entry) %>

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
Server-Response-Time: 296.405243
Status: 201 Created
Vary: Origin
X-Request-Id: 2e11665d-618d-4017-9a90-c3c1afeeac00
X-Runtime: 2.011826
</pre>

The `ETag` response header indicates the current `If-Match` version to use on a subsequent update.

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`reference`]: https://hl7.org/fhir/r4/search.html#reference
[`token`]: https://hl7.org/fhir/R4/search.html#token
[errors]: ../../#client-errors
[OperationOutcomes]: https://hl7.org/fhir/R4/operationoutcome.html
[FHIR<sup>®</sup> Update]: https://hl7.org/fhir/R4/http.html#update
