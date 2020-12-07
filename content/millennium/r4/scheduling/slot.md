---
title: Slot | R4 API
---

# Slot

* TOC
{:toc}

## Overview

The Slot resource returns time slots from a schedule which are available for booking an appointment. Slots contain no information about actual appointments, only availability and type.

When integrating your application with a client’s production environment you will work with the client to determine the Practitioner and Location ids (Millennium personnel and location codes, respectively) which they want to make available to third-party applications for enabling scheduling functionality.

We understand this is a bit cumbersome, but we are always evaluating community feedback and look to improve the API in the future.

The following fields are returned if valued:

* [Slot id](http://hl7.org/fhir/r4/resource-definitions.html#Resource.id){:target="_blank"}
* [Schedule](http://hl7.org/fhir/r4/slot-definitions.html#Slot.schedule){:target="_blank"}
* [Status](http://hl7.org/fhir/r4/slot-definitions.html#Slot.status){:target="_blank"}
* [Start](http://hl7.org/fhir/r4/slot-definitions.html#Slot.start){:target="_blank"}
* [End](http://hl7.org/fhir/r4/slot-definitions.html#Slot.end){:target="_blank"}
* [Scheduling Location Extension](http://fhir.cerner.com/millennium/r4/scheduling/slot/#extensions){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:slot, :r4) %>

## Extensions

* [Scheduling Location](http://fhir.cerner.com/millennium/r4/scheduling/slot/#extensions){:target="_blank"}

### Custom Extensions

All URLs for custom extensions are defined as `https://fhir-ehr.cerner.com/r4/StructureDefinition/{id}`

 ID                    | Value\[x] Type | Description
-----------------------|----------------|------------------------------------------------------------------------------------------------
 `scheduling-location` | [`Reference`]  | Reference to the location corresponding to this schedule, where the appointment can be booked.

## Search

Search for Schedules that meet supplied query parameters:

    GET /Slot?:parameters

_Implementation Notes_

* Valid ids for the `actor` and `-location` search parameters will be determined by the client and provided 
 when integrating your application with the client’s production environment. See [overview](#overview) for details.

### Authorization Types

<%= authorization_types(provider: true, system: true) %>

### Parameters

 Name             | Required?                  | Type          | Description
------------------|----------------------------|---------------|-------------------------------------------------------------------------------------------------------------------------------------
 `_id`            | Yes or `service-type`      | [`token`]     | The logical resource id associated with the resource.
 `service-type`      | Yes or `_id`            | [`token`]     | A single or comma separated list of appointment types that can be booked into the slot. Example: `[http://snomed.info/sct\|394581000|http://snomed.info/sct]`
 `schedule.actor` | No                         | [`reference`] | A single or comma separated list of Practitioner references. Example: `Practitioner/1234`
 `-location`      | No                         | [`reference`] | A single or comma separated list of Location references. Example: `5678`
 `start`          | See Notes                  | [`date`]      | The Slot date-time. Example: `start=ge2016-08-24T12:00:00.000Z&start=lt2017-01-24T12:00:00.000Z`
 [`_count`]       | No                         | [`number`]    | The maximum number of results to be returned per page.
 [`_include`]     | No                         | [`string`]    | Other resource entries to be returned as part of the bundle. Example: `_include=Slot:schedule`

Notes:

* The `service-type`, `schedule.actor`, and `-location` parameters may be included only once.
  For example, `-location=123,456` is supported but `-location=123&-location=456` is not.

* `service-type` is a required search parameter when `_id` is not provided.

* The `service-type` parameter may contain standard codes or proprietary codes. If multiple `service-type` parameters are used they must be either all standard codes or all proprietary codes.
  * When using standard codes, choose codes bound to Slot.serviceType as noted in the [Terminology Bindings](#terminology-bindings) table above.
  * When using proprietary codes, the system should be `https://fhir.cerner.com/<your EHR source id>/codeSet/<code set>` (where code set is a Millennium code set) and the code should be a Millennium code value. Example: `https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/14249|24477854`

* The start parameter must be provided when `service-type`, `-location`, or `actor` is provided.

* When the `start` parameter is provided:
  * both the prefixes `ge` and `lt` must be used to indicate a specific range.The date and prefix pairs must define 
  an upper and lower bound. (e.g. &start=ge2020-04-08T18:13:55Z&start=lt2020-06-08T18:13:55Z)

* The retrieved slots are sorted first by `start` date-time ascending (earliest first), followed by `service-type` and `Scheduling Location`.

* The search operation will only return free slots which are available to be booked. However, booked slots may still be retrieved when using the `_id` parameter.

* The `_include` parameter may be provided once with the value `Slot:schedule`. Example: `_include=Slot:schedule`

* The `_include` parameter may be provided with the `_id` parameter. Example: `_id=21265426-633867-3121665-0&_include=Slot:schedule`

* When `_include` is provided in a request to the closed endpoint, the OAuth2 token must include either the `user/Schedule.read` or the `patient/Schedule.read` scope in addition to a Slot scope.

### Headers

 <%= headers %>

### Example

#### Request

    GET https://fhir-open.devcerner.com/r4/eb2384f8-839e-4c6e-8b29-18e71db1a0b1/Slot?service-type=https://fhir.cerner.com/eb2384f8-839e-4c6e-8b29-18e71db1a0b1/codeSet/14249|517975329&start=ge2020-07-22T20:04:19Z&start=lt2020-11-08T18:13:55Z&schedule.actor=Practitioner/2911963

#### Response

<%= headers status: 200 %>
<%= json(:r4_slot_bundle) %>

<%= disclaimer %>

### Example with Include

#### Request

    GET https://fhir-open.devcerner.com/r4/eb2384f8-839e-4c6e-8b29-18e71db1a0b1/Slot?service-type=https://fhir.cerner.com/eb2384f8-839e-4c6e-8b29-18e71db1a0b1/codeSet/14249|521294209&start=ge2020-01-01T06:00:00Z&start=lt2022-01-22T06:00:00Z&_include=Slot:schedule&_count=5

#### Response

<%= headers status: 200 %>
<%= json(:r4_slot_bundle_include_schedule) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual Slot by its id:

    GET /Slot/:id

### Authorization Types

<%= authorization_types(provider: true, system: true) %>

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.devcerner.com/r4/eb2384f8-839e-4c6e-8b29-18e71db1a0b1/Slot/454030723-39997807-50069221-0

#### Response

<%= headers status: 200 %>
<%= json(:r4_slot_entry) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`reference`]: http://hl7.org/fhir/r4/search.html#reference
[`token`]: http://hl7.org/fhir/r4/search.html#token
[`date`]: http://hl7.org/fhir/r4/search.html#date
[`number`]: http://hl7.org/fhir/r4/search.html#number
[`_count`]: http://hl7.org/fhir/r4/search.html#count
[`string`]: http://hl7.org/fhir/r4/datatypes.html#string
[`CodeableConcept`]: http://hl7.org/fhir/r4/datatypes.html#codeableconcept
[`_include`]: http://hl7.org/fhir/r4/search.html#include
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
[Scheduling Location]: #custom-extensions
