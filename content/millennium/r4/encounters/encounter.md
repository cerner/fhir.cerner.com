---
title: Encounter | R4 API
---

# Encounter

* TOC
{:toc}

## Overview

Placeholder

## Search

Search for Encounters that meet supplied query parameters:

    GET /Encounter?:parameters

_Implementation Notes_

* The [Encounter.hospitalization.destination] will be returned as a reference to a [contained] location resource.
* The [Encounter.location.location] may be returned as a reference to a [contained] location resource.

### Authorization Types

<%= authorization_types(practitioner: true, patient: false, system: true)%>

### Parameters

 Name       | Required?                  | Type          | Description
------------|----------------------------|---------------|---------------------------------------------------------------------------------------------------
 `_id`      | This or patient or subject | [`token`]     | The logical resource id associated with the Encounter. Example: `7891`
 `patient`  | This or subject or _id     | [`reference`] | The patient present at the encounter. Example: `12345`
 `subject`  | This or patient or _id     | [`reference`] | The patient present at the encounter. Example: subject=Patient/1316024 or subject:Patient=1316024
 [`_count`] | No                         | [`number`]    | The maximum number of results to return.

### Headers

 <%= headers %>

### Example

#### Request

    GET https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Encounter?patient=4342010

#### Response

<%= headers status: 200 %>
<%= json(:r4_encounter_bundle) %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual Encounter by its id:

    GET /Encounter/:id

_Implementation Notes_

* The [Encounter.hospitalization.destination] will be returned as a reference to a [contained] location resource.
* The [Encounter.location.location] may be returned as a reference to a [contained] location resource.

### Authorization Types

<%= authorization_types(practitioner: true, patient: false, system: true)%>

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Encounter/4027918

#### Response

<%= headers status: 200 %>
<%= json(:r4_encounter) %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[contained]: http://hl7.org/fhir/R4/references.html#contained
[Encounter.hospitalization.destination]: http://hl7.org/fhir/R4/encounter-definitions.html#Encounter.hospitalization.destination
[Encounter.location.location]: http://hl7.org/fhir/R4/encounter-definitions.html#Encounter.location.location
[`reference`]: http://hl7.org/fhir/R4/search.html#reference
[`token`]: http://hl7.org/fhir/R4/search.html#token
[`number`]: http://hl7.org/fhir/R4/search.html#number
[`_count`]: http://hl7.org/fhir/R4/search.html#count
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
