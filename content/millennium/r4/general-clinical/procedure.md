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

<%= authorization_types(practitioner: true, patient: false, system: true) %>

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

    GET https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Procedure?patient=1316024

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

<%= authorization_types(practitioner: true, patient: false, system: true) %>

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Procedure/32215695

#### Response

<%= headers status: 200 %>
<%= json(:r4_procedure_entry) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`reference`]: https://hl7.org/fhir/r4/search.html#reference
[`token`]: https://hl7.org/fhir/R4/search.html#token
[errors]: ../../#client-errors
[OperationOutcomes]: https://hl7.org/fhir/R4/operationoutcome.html
[FHIR<sup>®</sup> Update]: https://hl7.org/fhir/R4/http.html#update