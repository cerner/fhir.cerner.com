---
title: Appointment | R4 API
---

# Appointment

* TOC
{:toc}

## Overview

The Appointment resource provides the ability to retrieve information about appointments, write new appointments, and update the status of existing appointments.

A date is required when searching by [Patient](../../individuals/patient), [Practitioner](../../individuals/practitioner), or [Location](../../entities/location).

When integrating your application with a client’s environments, you will work with the client to determine the Practitioner and Location IDs (Millennium personnel and location codes, respectively) which they want to make available to third-party applications for enabling scheduling functionality.

Appointment types for use in FHIR scheduling workflows must be _resource list_ based. The ability to retrieve slots and book appointments that are _order role_ based are not supported in FHIR workflows.

The status of `arrived` does not change the state of the Millennium appointment but, instead, updates the patient tracking status to a value of `Arrived`.

R4 exposes a native checked-in status, which allows for an appointment to transition from the `booked` state to the `checked-in` state. This is a change from the DSTU2 functionality.

When updating an appointment, the resource provides the ability to change the [Appointment.status] in the following sequences:

* From `Proposed` to `Booked` or `Cancelled`
* From `Booked` to `Arrived`, `Checked-In`, or `Cancelled`
* From `Arrived` to `Checked-In` or `Cancelled`
* From `Checked-In` to `Fulfilled` or `Cancelled`

Video Visit functionality requires additional licensing, configuration, and application support.

The following fields are returned if valued:

* [Appointment id](http://hl7.org/fhir/R4/resource-definitions.html#Resource.id){:target="_blank"}
* [Status](http://hl7.org/fhir/R4/appointment-definitions.html#Appointment.status){:target="_blank"}
* [Cancelation Reason](http://hl7.org/fhir/R4/appointment-definitions.html#Appointment.cancelationReason){:target="_blank"}
* [Service Category](http://hl7.org/fhir/R4/appointment-definitions.html#Appointment.serviceCategory){:target="_blank"}
* [Service Type](http://hl7.org/fhir/R4/appointment-definitions.html#Appointment.serviceType){:target="_blank"}
* [Slot](https://hl7.org/fhir/r4/appointment-definitions.html#Appointment.slot){:target="_blank"}
* [Participant](http://hl7.org/fhir/R4/appointment-definitions.html#Appointment.participant){:target="_blank"}
  * [Type](http://hl7.org/fhir/R4/appointment-definitions.html#Appointment.participant.type){:target="_blank"}
  * [Actor](http://hl7.org/fhir/R4/appointment-definitions.html#Appointment.participant.actor){:target="_blank"}
  * [Required](http://hl7.org/fhir/R4/appointment-definitions.html#Appointment.participant.required){:target="_blank"}
  * [Status](http://hl7.org/fhir/R4/appointment-definitions.html#Appointment.participant.status){:target="_blank"}
* [Reason Code](http://hl7.org/fhir/R4/appointment-definitions.html#Appointment.reasonCode){:target="_blank"}
* [Description](http://hl7.org/fhir/R4/appointment-definitions.html#Appointment.description){:target="_blank"}
* [Start Date/Time](http://hl7.org/fhir/R4/appointment-definitions.html#Appointment.start){:target="_blank"}
* [End Date/Time](http://hl7.org/fhir/R4/appointment-definitions.html#Appointment.end){:target="_blank"}
* [Duration in minutes](http://hl7.org/fhir/R4/appointment-definitions.html#Appointment.minutesDuration){:target="_blank"}
* [Comment](http://hl7.org/fhir/R4/appointment-definitions.html#Appointment.comment){:target="_blank"}
* [Patient Instruction](http://hl7.org/fhir/R4/appointment-definitions.html#Appointment.patientInstruction){:target="_blank"}
* [Requested period](http://hl7.org/fhir/R4/appointment-definitions.html#Appointment.requestedPeriod){:target="_blank"}
* [Extensions including action-comment, group-appointment-id, is-cancelable, and is-reschedulable](#extensions){:target="_blank"}

<%= disclaimer %>

The common [errors] and [OperationOutcomes] may be returned.

## Terminology Bindings

<%= terminology_table(:appointment, :r4) %>

## Extensions

* [Action Comment]
* [Group Appointment Id]
* [Is Cancelable]
* [Is Reschedulable]

### Custom Extensions

All URLs for custom extensions are defined as `https://fhir-ehr.cerner.com/r4/StructureDefinition/{id}`

ID                               | Value\[x] Type                                              | Description
-----------------------------    |-------------------------------------------------------------|--------------------------------------------------------------------
`action-comment`                 | [`string`](https://hl7.org/fhir/r4/datatypes.html#string)   | The comment to be associated with the action performed on the resource.
`group-appointment-id`           | [`string`](https://hl7.org/fhir/r4/datatypes.html#string)   | The ID of the appointment group that this appointment is a part of.
`is-cancelable`                  | [`boolean`](https://hl7.org/fhir/r4/datatypes.html#boolean) | Indication of whether the Appointment can be canceled or not.
`is-reschedulable`               | [`boolean`](https://hl7.org/fhir/r4/datatypes.html#boolean) | Indication of whether the Appointment can be rescheduled or not.

## Search

Search for Appointments that meet supplied query parameters:

    GET /Appointment?:parameters

_Implementation Notes_

* Valid IDs for the `practitioner` and `location` search parameters will be determined by the client and provided when integrating your application with the client's environment. See [overview](#overview) for details.

### Authorization Types

<%= authorization_types(provider: true, system: true) %>

### Parameters

 Name                  | Required?                                                                          | Type          | Description
-----------------------|------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------
 `_id`                 | Yes, or `patient` or `practitioner` or `location`.                                 | [`token`]     | The logical resource id associated with the Appointment. Example: `_id=3005759`
 `patient`             | Yes, or `_id` or `practitioner` or `location`.                                     | [`reference`] | A single or comma separated list of Patient references. Example: `patient=12724066`
 `practitioner`        | Yes, or `_id` or `patient` or `location`.                                          | [`reference`] | A single or comma separated list of Practitioner references. Example: `practitioner=593923`
 `location`            | Yes, or `_id` or `patient` or `practitioner`.                                      | [`reference`] | A single or comma separated list of Location references. Example: `location=21304876`
 `date`                | Yes, or `-date-or-req-period` when using `patient`, `practitioner`, or `location`. | [`date`]      | The Appointment start date time with offset. Example: `date=ge2019-06-07T22:22:16.000Z`
 `-date-or-req-period` | Yes, or `date` when using `patient`, `practitioner`, or `location`.                | [`date`]      | The Appointment start date time with offset or the Appointment requested period date time with offset. Example: `-date-or-req-period=ge2019-06-07T22:22:16.000Z`
 `status`              | No                                                                                 | [`token`]     | A single or comma separated list of appointment statuses. Example: `status=arrived`
 [`_count`]            | No                                                                                 | [`number`]    | The maximum number of results to return.

Notes:

* The `patient`, `practitioner`, and `location` parameters may be included only once and may not be used in combination. For example, `patient=1234,5678` is supported but `patient=1234&patient=5678` and `patient=1234&location=5678` are not.
* Either `date` or `-date-or-req-period` parameter may be provided:
  * once with a prefix and time component to indicate a specific date/time. (e.g. `&date=ge2019-12-07T22:22:16.270Z`, `&date=lt2019-12-14T22:22:16.270Z`)
  * twice with the prefixes `ge` and `lt` to indicate a specific range. The date and prefix pairs must define an upper and lower bound. (e.g. `&date=ge2019-12-07T22:22:16.270Z&date=lt2019-12-14T22:22:16.270Z`)
* Search by `date` returns appointments with a status other than `proposed` that start or end within the date range provided.
* Search by `-date-or-req-period` returns the same appointments as the `date` parameter, but also returns appointments with a status of `proposed` that either are requested to start or end between the dates provided.
* The retrieved appointments are sorted by `start` date ascending (earliest first).

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Appointment?patient=12724066&date=ge2020-01-01T22:22:16.270Z

#### Response

<%= headers status: 200 %>
<%= json(:r4_appointment_bundle) %>

## Retrieve by ID

List an individual Appointment by its ID:

    GET /Appointment/:id

### Authorization Types

<%= authorization_types(provider: true, system: true) %>

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Appointment/4822366

#### Response

<%= headers status: 200 %>
<%= json(:r4_appointment_entry) %>

### Example - Video Visit

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Appointment/4817572

#### Response

<%= headers status: 200 %>
<%= json(:r4_appointment_video_visit_entry) %>

## Create

Create a new Appointment.

    POST /Appointment

_Implementation Notes_

* The modifier elements [implicitRules] and [modifierExtension] are not supported and will be rejected if present.
* `Appointment.status` must be set to `proposed` or `booked`.
* `Appointment.reasonCode`, if set, must be a list containing exactly one CodeableConcept.
* When `Appointment.status` is set to `proposed`:
  * `Appointment.serviceType` must be a list containing exactly one CodeableConcept.
  * `Appointment.participant` must be a list containing exactly one Patient participant and at least one Location participant.
  * `Appointment.participant.actor` must be a reference to a Patient or a Location.
  * `Appointment.participant.status` must be set to `needs-action`.
  * `Appointment.requestedPeriod` must be a list containing a single Period. Both `Appointment.requestedPeriod.start` and `Appointment.requestedPeriod.end` must be set.
* When`Appointment.status` is set to `booked`:
  * `Appointment.slot` must be a list containing exactly one reference to the Slot in which this appointment is being booked. `Appointment.slot[0].reference` specifies an availability in the Scheduling system, which indicates details such as practitioner, location, and time.
  * `Appointment.participant` must be a list containing exactly one Patient participant.
  * `Appointment.participant.actor` must be a reference to a Patient.
  * `Appointment.participant.status` must be set to `accepted`.
* `Appointment.participant.type` must not be set.
* The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

### Authorization Types

<%= authorization_types(provider: true, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', 'Content-Type': 'application/fhir+json'} %>

### Body Fields

<%= definition_table(:appointment, :create, :r4) %>

### Example - Proposed Appointment

#### Request

    POST https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Appointment

#### Body

<%= json(:r4_proposed_appointment_create) %>

#### Response

<%= headers status: 201 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: application/fhir+json
Date: Tue, 12 May 2020 20:25:01 GMT
Etag: W/"0"
Last-Modified: Tue, 12 May 2020 20:25:01 GMT
Location: https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Appointment/6427746
Vary: Origin
opc-request-id: /95685D1463E5BE27E66427BBDA8725DE/BD2E22EED59A7AD48B938357F8CF72E1
X-Request-Id: 26ca6d46-bf47-430b-b92f-bf687b80bfbf
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

### Example - Booked Appointment

#### Request

    POST https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Appointment

#### Body

<%= json(:r4_appointment_create) %>

#### Response

<%= headers status: 201 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: application/fhir+json
Date: Thu, 30 May 2019 19:49:25 GMT
Etag: W/"0"
Last-Modified: Thu, 30 May 2019 19:49:23 GMT
Location: https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Appointment/20465903
Vary: Origin
opc-request-id: /95685D1463E5BE27E66427BBDA8725DE/BD2E22EED59A7AD48B938357F8CF72E1
X-Request-Id: 26ca6d46-bf47-430b-b92f-bf687b80bfbf
</pre>

## Patch

Patch an existing Appointment.

    PATCH /Appointment/:id

_Implementation Notes_

* Video Visit functionality requires additional licensing, configuration and application support.
* For Video Visit link patch operations, both `Appointment.read` and `Appointment.write` scopes are required.
* This implementation follows the [JSON PATCH](https://tools.ietf.org/html/rfc6902) specification.
* Only operations on the paths listed below are supported.
* For Video Visit link patch operation paths, `contained` index 0 represents the provider link and `contained` index 1 represents the patient link.

### Authorization Types

<%= authorization_types(provider: true, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', 'Accept': 'application/fhir+json',
'Content-Type': 'application/json-patch+json', 'If-Match': 'W/"&lt;Current version of the Appointment resource>"'} %>

### Patch Operations

<%= patch_definition_table(:appointment_patch, :r4) %>

### Example

#### Request

    PATCH https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Appointment/4817517

#### Body

<%= json(:r4_appointment_patch) %>

#### Response

<%= headers status: 200 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: text/html
Date: Tue, 26 Mar 2019 15:42:29 GMT
Etag: W/"10"
Last-Modified: Tue, 26 Mar 2019 15:42:27 GMT
Vary: Origin
opc-request-id: /95685D1463E5BE27E66427BBDA8725DE/BD2E22EED59A7AD48B938357F8CF72E1
X-Request-Id: 26ca6d46-bf47-430b-b92f-bf687b80bfbf
</pre>

### Example - Update Status to Booked

#### Request

    PATCH https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Appointment/4817517

#### Body

<%= json(:r4_appointment_booked_patch) %>

#### Response

<%= headers status: 200 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: text/html
Date: Tue, 26 Mar 2019 15:42:29 GMT
Etag: W/"10"
Last-Modified: Tue, 26 Mar 2019 15:42:27 GMT
Vary: Origin
opc-request-id: /95685D1463E5BE27E66427BBDA8725DE/BD2E22EED59A7AD48B938357F8CF72E1
X-Request-Id: 26ca6d46-bf47-430b-b92f-bf687b80bfbf
</pre>

### Example - Update reasonCode

#### Request

    PATCH https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Appointment/4817517

#### Body

<%= json(:r4_appointment_reasoncode_patch) %>

#### Response

<%= headers status: 200 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: text/html
Date: Tue, 26 Mar 2019 15:42:29 GMT
Etag: W/"1"
Last-Modified: Tue, 26 Mar 2019 15:42:27 GMT
Vary: Origin
opc-request-id: /95685D1463E5BE27E66427BBDA8725DE/BD2E22EED59A7AD48B938357F8CF72E1
X-Request-Id: 26ca6d46-bf47-430b-b92f-bf687b80bfbf
</pre>

### Example - Add cancelationReason

#### Request

    PATCH https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Appointment/4817517

#### Body

<%= json(:r4_appointment_cancelationreason_patch) %>

#### Response

<%= headers status: 200 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: text/html
Date: Tue, 26 Mar 2019 15:42:29 GMT
Etag: W/"1"
Last-Modified: Tue, 26 Mar 2019 15:42:27 GMT
Vary: Origin
opc-request-id: /95685D1463E5BE27E66427BBDA8725DE/BD2E22EED59A7AD48B938357F8CF72E1
X-Request-Id: 26ca6d46-bf47-430b-b92f-bf687b80bfbf
</pre>

### Example - Replace Slot

#### Request

    PATCH https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Appointment/4817517

#### Body

<%= json(:r4_appointment_slot_patch) %>

#### Response

<%= headers status: 200 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: text/html
Date: Tue, 26 Mar 2019 15:42:29 GMT
Etag: W/"1"
Last-Modified: Tue, 26 Mar 2019 15:42:27 GMT
Vary: Origin
opc-request-id: /95685D1463E5BE27E66427BBDA8725DE/BD2E22EED59A7AD48B938357F8CF72E1
X-Request-Id: 26ca6d46-bf47-430b-b92f-bf687b80bfbf
</pre>

### Example - Add Video Visit Links

#### Request

    PATCH https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Appointment/4627745

#### Body

<%= json(:r4_appointment_video_visit_add_patch) %>

#### Response

<%= headers status: 200 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: text/html
Date: Tue, 26 Mar 2019 15:42:29 GMT
Etag: W/"10-1"
Last-Modified: Tue, 26 Mar 2019 15:42:27 GMT
Vary: Origin
opc-request-id: /95685D1463E5BE27E66427BBDA8725DE/BD2E22EED59A7AD48B938357F8CF72E1
X-Request-Id: 26ca6d46-bf47-430b-b92f-bf687b80bfbf
</pre>

### Example - Replace Video Visit Links

#### Request

    PATCH https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Appointment/4627745

#### Body

<%= json(:r4_appointment_video_visit_replace_patch) %>

#### Response

<%= headers status: 200 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: text/html
Date: Tue, 26 Mar 2019 15:42:29 GMT
Etag: W/"10-1"
Last-Modified: Tue, 26 Mar 2019 15:42:27 GMT
Vary: Origin
opc-request-id: /95685D1463E5BE27E66427BBDA8725DE/BD2E22EED59A7AD48B938357F8CF72E1
X-Request-Id: 26ca6d46-bf47-430b-b92f-bf687b80bfbf
</pre>

### Example - Update Participant Status

#### Request

    PATCH https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Appointment/4817517

#### Body

<%= json(:r4_appointment_participant_status_patch) %>

#### Response

<%= headers status: 200 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: text/html
Date: Tue, 26 Mar 2019 15:42:29 GMT
Etag: W/"10"
Last-Modified: Tue, 26 Mar 2019 15:42:27 GMT
Vary: Origin
opc-request-id: /95685D1463E5BE27E66427BBDA8725DE/BD2E22EED59A7AD48B938357F8CF72E1
X-Request-Id: 26ca6d46-bf47-430b-b92f-bf687b80bfbf
</pre>

### Example - Update Action Comment

#### Request

    PATCH https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Appointment/4817517

#### Body

<%= json(:r4_appointment_extension_action_comment_patch) %>

#### Response

<%= headers status: 200 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: text/html
Date: Fri, 11 Aug 2023 15:42:29 GMT
Etag: W/"10"
Last-Modified: Fri, 11 Aug 2023 15:42:29 GMT
Vary: Origin
opc-request-id: /95685D1463E5BE27E66427BBDA8725DE/BD2E22EED59A7AD48B938357F8CF72E1
X-Request-Id: 26ca6d46-bf47-430b-b92f-bf687b80bfbf
</pre>

### Errors

In addition to the common [errors] and [OperationOutcomes], the following errors may be returned:

* Updating an Appointment resource with the incorrect version will result in a `409 Conflict` response.
* Updating an Appointment resource without sending the `If-Match` header will result in a `412 Precondition Failed` response.
* Updating an Appointment resource which is currently being modified will result in a `423 Locked` response.
* If the Appointment resource could not be updated because of an operation that is necessary for the update (eg. encounter association), `424 Failed Dependency` response will be returned.
* Patching a Video Visit Appointment with add operations that has previously been patched for Video Visit links will result in a `409 Conflict` response.
* Mixing add and replace patch operations is not supported while patching a Video Visit Appointment and will result in a `422 Unprocessable Entity` response.
* Patching a Video Visit Appointment with any missing required patch operations will result in a `422 Unprocessable Entity` response.
* Patching an Appointment with a participant status other than "accepted" will result in a `422 Unprocessable Entity` response.

[Appointment.status]: https://hl7.org/fhir/r4/appointment-definitions.html#Appointment.status
[`reference`]: https://hl7.org/fhir/r4/search.html#reference
[`date`]: https://hl7.org/fhir/r4/search.html#date
[`token`]: https://hl7.org/fhir/r4/search.html#token
[`number`]: https://hl7.org/fhir/r4/search.html#number
[`_count`]: https://hl7.org/fhir/r4/search.html#count
[errors]: ../../../#client-errors
[implicitRules]: http://hl7.org/fhir/r4/resource-definitions.html#Resource.implicitRules
[modifierExtension]: http://hl7.org/fhir/r4/domainresource-definitions.html#DomainResource.modifierExtension
[OperationOutcomes]: ../../../#operation-outcomes
[Action Comment]: #custom-extensions
[Group Appointment Id]: #custom-extensions
[Is Cancelable]: #custom-extensions
[Is Reschedulable]: #custom-extensions
