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
* [ServiceType](http://hl7.org/fhir/r4/slot-definitions.html#Slot.serviceType){:target="_blank"}
* [Schedule](http://hl7.org/fhir/r4/slot-definitions.html#Slot.schedule){:target="_blank"}
* [Status](http://hl7.org/fhir/r4/slot-definitions.html#Slot.status){:target="_blank"}
* [Start](http://hl7.org/fhir/r4/slot-definitions.html#Slot.start){:target="_blank"}
* [End](http://hl7.org/fhir/r4/slot-definitions.html#Slot.end){:target="_blank"}
* [Scheduling Location Extension](#extensions)

## Terminology Bindings

<%= terminology_table(:slot, :r4) %>

## Extensions

* [Scheduling Location]

### Custom Extensions

All URLs for custom extensions are defined as `https://fhir-ehr.cerner.com/r4/StructureDefinition/{id}`

 ID                    | Value\[x] Type | Description
-----------------------|----------------|------------------------------------------------------------------------------------------------
 `scheduling-location` | [`Reference`]  | Reference to the location corresponding to this schedule, where the appointment can be booked.

## Search

Search for Slots that meet supplied query parameters:

    GET /Slot?:parameters

_Implementation Notes_

* Valid ids for the `actor` and `-location` search parameters will be determined by the client and provided 
 when integrating your application with the client’s production environment. See [overview](#overview) for details.

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Parameters

 Name             | Required?             | Type          | Description
------------------|-----------------------|---------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 `_id`            | Yes or `service-type` | [`token`]     | The logical resource id associated with the resource.
 `service-type`   | Yes or `_id`          | [`token`]     | A single or comma separated list of appointment types that can be booked into the slot. Example: `service-type=https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/14249|4047611`
 `schedule.actor` | No                    | [`reference`] | A single or comma separated list of Practitioner references. Example: `schedule.actor=Practitioner/1234`
 `-location`      | No                    | [`reference`] | A single or comma separated list of Location references. Example: `-location='5678'`
 `start`          | See Notes             | [`date`]      | The Slot date-time. Example: `start=ge2016-08-24T12:00:00.000Z&start=lt2017-01-24T12:00:00.000Z`
 [`_count`]       | No                    | [`number`]    | The maximum number of results to be returned per page.
 [`_include`]     | No                    | [`string`]    | Other resource entries to be returned as part of the bundle. Example: `_include=Slot:schedule`

Notes:

* The `service-type`, `schedule.actor`, and `-location` parameters may be included only once.
  For example, `-location=123,456` is supported but `-location=123&-location=456` is not.

* `service-type` is a required search parameter when `_id` is not provided.

* The `service-type` parameter may contain standard codes or proprietary codes. If multiple `service-type` parameters are used they must be either all standard codes or all proprietary codes.
  * When using standard codes, choose codes bound to Slot.serviceType as noted in the [Terminology Bindings](#terminology-bindings) table above.
  * When using proprietary codes, the system should be `https://fhir.cerner.com/<your EHR source id>/codeSet/<code set>` (where code set is a Millennium code set) and the code should be a Millennium code value. Example: `https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/14249|24477854`

* The start parameter must be provided when `service-type`, `-location`, or `schedule.actor` is provided.

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

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Slot?service-type=https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/14249|4047611&start=ge2016-01-23T22:05:47Z&start=lt2020-06-08T18:13:55Z&-location=Location/32216049

#### Response

<%= headers status: 200 %>
<%= json(:r4_slot_bundle) %>

<%= disclaimer %>

#### Patient Authorization Request

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Slot?service-type=https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/14249|4047611&start=ge2016-01-23T22:05:47Z&start=lt2020-06-08T18:13:55Z&-location=Location/32216049

#### Response

<%= headers status: 200 %>
<%= json(:r4_slot_patient_access_bundle) %>

<%= disclaimer %>

### Example with Include

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Slot?service-type=https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/14249|4047611&start=ge2016-01-23T22:05:47Z&start=lt2020-06-08T18:13:55Z&_include=Slot:schedule&_count=5

#### Response

<%= headers status: 200 %>
<%= json(:r4_slot_bundle_include_schedule) %>

<%= disclaimer %>

#### Patient Authorization Request

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Slot?service-type=https://fhir.cerner.com/ec2458f2-1e24-41c8-b71b-0e701af7583d/codeSet/14249|4047611&start=ge2016-01-23T22:05:47Z&start=lt2020-06-08T18:13:55Z&_include=Slot:schedule&_count=5

#### Response

<%= headers status: 200 %>
<%= json(:r4_slot_patient_access_bundle_include_schedule) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual Slot by its id:

    GET /Slot/:id

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Slot/4047611-32216049-61518614-0

#### Response

<%= headers status: 200 %>
<%= json(:r4_slot_entry) %>

<%= disclaimer %>

#### Patient Authorization Request

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Slot/4047611-32216049-61518614-0

#### Response

<%= headers status: 200 %>
<%= json(:r4_slot_patient_access_entry) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Patch

<%= beta_tag(action: true, known_issues: ["A 500 Internal Server Error is thrown when an invalid version id is used in the If-Match Header"]) %>

Patch an existing Slot.

    PATCH /Slot/:id

_Implementation Notes_

* This implementation follows the [JSON Patch](https://tools.ietf.org/html/rfc6902) spec.
* Only operations on the paths listed below are supported.

### Authorization Types

<%= authorization_types(provider: true, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', 'Accept': 'application/fhir+json',
                   'Content-Type': 'application/json-patch+json', 'If-Match': 'W/"&lt;Current version of the Slot resource>"'} %>

### Patch Operations

<%= patch_definition_table(:slot_patch, :r4) %>

### Example

#### Request

    PATCH https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Slot/4047611-32216049-61518614-0

#### Body

<%= json(:r4_slot_patch) %>

#### Response

<%= headers status: 200 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 20
Content-Type: text/html
Date: Tue, 06 Apr 2021 15:36:47 GMT
Etag: W/"410v795030969834"
Last-Modified: Tue, 06 Apr 2021 15:36:47 GMT
Vary: Origin
X-Request-Id: 6801a2c5-bf2d-414b-9f6a-7bcf39cc69d9
</pre>

<%= disclaimer %>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

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
