---
title: Slot | DSTU 2 API
---

# Slot

* TOC
{:toc}

## Overview

The Slot resource returns time slots from a schedule which are available for booking an appointment. Slots contain no
information about actual appointments; only availability and type.

When integrating your application with a client's production environment you will work with the client to determine the
Practitioner and Location ids (Millennium personnel and location codes, respectively) which they want to make available
to third-party applications for enabling scheduling functionality.

We understand this is a bit cumbersome, but we are always evaluating community feedback and look to improve the API in
the future.

The following fields are returned if valued:

* [Slot id](http://hl7.org/fhir/dstu2/resource-definitions.html#Resource.id){:target="_blank"}
* [Type](http://hl7.org/fhir/DSTU2/slot-definitions.html#Slot.type){:target="_blank"}
* [Schedule](http://hl7.org/fhir/DSTU2/slot-definitions.html#Slot.schedule){:target="_blank"}
* [Start](http://hl7.org/fhir/DSTU2/slot-definitions.html#Slot.start){:target="_blank"}
* [End](http://hl7.org/fhir/DSTU2/slot-definitions.html#Slot.end){:target="_blank"}
* [Free-Busy Type](http://hl7.org/fhir/DSTU2/slot-definitions.html#Slot.freeBusyType){:target="_blank"}
* [Scheduling Location Extension](#extensions)

## Terminology Bindings

<%= terminology_table(:slot, :dstu2) %>

## Extensions

* [Scheduling Location]

### Custom Extensions

All URLs for custom extensions are defined as `https://fhir-ehr.cerner.com/dstu2/StructureDefinition/{id}`

 ID                    | Value\[x] Type | Description
-----------------------|----------------|------------------------------------------------------------------------------------------------
 `scheduling-location` | [`Reference`]  | Reference to the location corresponding to this schedule, where the appointment can be booked.

## Search

Search for Schedules that meet supplied query parameters:

    GET /Slot?:parameters

_Implementation Notes_

* Valid ids for the `schedule.actor` and `-location` search parameters will be determined by the client and provided
  when integrating your application with the client's production environment. See [overview](#overview) for details.

### Authorization Types

<%= authorization_types(practitioner: true, patient: true, system: true) %>

### Parameters

 Name             | Required?                  | Type          | Description
------------------|----------------------------|---------------|-------------------------------------------------------------------------------------------------------------------------------------
 `_id`            | Yes or `slot-type`         | [`token`]     | The logical resource id associated with the resource.
 `slot-type`      | Yes or `_id`               | [`token`]     | A single or comma separated list of appointment types that can be booked into the slot. Example: `http://snomed.info/sct|394581000`
 `schedule.actor` | No                         | [`reference`] | A single or comma separated list of Practitioner references. Example: `Practitioner/2578010`
 `-location`      | No                         | [`reference`] | A single or comma separated list of Location references. Example: `633867`
 `start`          | Yes when using `slot-type` | [`date`]      | The Slot date-time. Example: `2016`
 [`_count`]       | No                         | [`number`]    | The maximum number of results to be returned per page.
 [`_include`]     | No                         | [`string`]    | Other resource entries to be returned as part of the bundle. Example: `_include=Slot:schedule`

Notes:

* The `slot-type`, `schedule.actor`, and `-location` parameters may be included only once.
  For example, `-location=633867,4048128` is supported but `-location=633867&-location=4048128` is not.

* `slot-type` is a required search parameter when `_id` is not provided.

* When `slot-type` is provided, `start` must be provided.
  For example, `start=2018&slot-type=http://snomed.info/sct|394581000,http://snomed.info/sct|394602003`

* The `slot-type` parameter may contain standard codes or proprietary codes. If multiple `slot-type` parameters are used they must be either all standard codes or all proprietary codes.
  * When using standard codes, choose codes bound to Slot.type as noted in the [Terminology Bindings](#terminology-bindings) table above.
  * When using proprietary codes, the system should be `https://fhir.cerner.com/<your EHR source id>/codeSet/<code set>` (where code set is a Millennium code set) and the code should be a Millennium code value. Example: `https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/14249|4062744`

* The `start` parameter may be provided:
  * Once without a prefix or time component to imply a date range. (e.g. `&start=2016`, `&start=2016-07`, `&start=2016-07-04`)
  * Twice with the prefixes `ge` and `lt` to indicate a specific range. The date and prefix pairs must define
    an upper and lower bound. (e.g. `&start=ge2014&start=lt2016`, `&start=ge2016-07&start=lt2017-07`)

* The retrieved slots are sorted first by `start` date-time ascending (earliest first), followed by `slot-type` and `Scheduling Location` display.

* The search operation will only return free slots which are available to be booked. However, booked slots may still be retrieved when using the `_id` parameter.

* The `_include` parameter may be provided once with the value `Slot:schedule`. Example: `_include=Slot:schedule`

* The `_include` parameter may be provided with the `_id` parameter. Example: `_id=21265426-633867-3121665-0&_include=Slot:schedule`

* When `_include` is provided in a request to the closed endpoint, the OAuth2 token must include either the `user/Schedule.read` or the `patient/Schedule.read` scope in addition to a Slot scope.

### Headers

 <%= headers %>

### Example

#### Request

    GET https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Slot?schedule.actor=Practitioner/2578010&start=2019&slot-type=http://snomed.info/sct|408443003&_count=5

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_slot_bundle) %>

<%= disclaimer %>

### Example with Include

#### Request

    GET https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Slot?schedule.actor=Practitioner/2578010&start=2019&slot-type=http://snomed.info/sct|408443003&_count=5&_include=Slot:schedule

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_slot_bundle_include_schedule) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual Schedule by its id:

    GET /Slot/:id

### Authorization Types

<%= authorization_types(practitioner: true, patient: true, system: true) %>

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Slot/21265426-633867-3121665-0

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_slot_entry) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`reference`]: http://hl7.org/fhir/DSTU2/search.html#reference
[`token`]: http://hl7.org/fhir/DSTU2/search.html#token
[`date`]: http://hl7.org/fhir/DSTU2/search.html#date
[`number`]: http://hl7.org/fhir/DSTU2/search.html#number
[`_count`]: http://hl7.org/fhir/DSTU2/search.html#count
[`string`]: http://hl7.org/fhir/DSTU2/datatypes.html#string
[`CodeableConcept`]: http://hl7.org/fhir/DSTU2/datatypes.html#codeableconcept
[`_include`]: http://hl7.org/fhir/DSTU2/search.html#include
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
[Scheduling Location]: #custom-extensions
