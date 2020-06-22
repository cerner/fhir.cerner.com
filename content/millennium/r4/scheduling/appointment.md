---
title: Appointment | R4 API
---

# Appointment

* TOC
{:toc}

## Overview

The Appointment resource provides the ability to retrieve information about appointments, write new appointments, and update the status of existing appointments.

Date is required when searching by patient, practitioner, or location.

When integrating your application with a client’s production environment you will work with the client to determine the Practitioner and Location ids (Millennium personnel and location codes, respectively) which they want to make available to third-party applications for enabling scheduling functionality.

The status of arrived does not change the state of the millennium appointment but instead updates the patient tracking status to a value of Arrived.

R4 exposes a native checked-in status which allows for an appointment to transition from the booked state to the checked-in state. This is a change from the DSTU2 value mapping.

When updating an appointment, the resource provides the ability to change the [Appointment.status] in the following sequences:

* From Proposed to Booked, or Cancelled
* From Booked to Arrived, Checked-In, or Cancelled
* From Arrived to Checked-In, or Cancelled
* From Checked-In to Cancelled

Video Visit functionality is available for supported vendors only, and requires additional configuration and application support.

The following fields are returned if valued:

* [Appointment id](http://hl7.org/fhir/R4/resource-definitions.html#Resource.id){:target="_blank"}
* [Status](http://hl7.org/fhir/R4/appointment-definitions.html#Appointment.status){:target="_blank"}
* [ServiceType](http://hl7.org/fhir/R4/appointment-definitions.html#Appointment.serviceType){:target="_blank"}
* [Participant](http://hl7.org/fhir/R4/appointment-definitions.html#Appointment.participant){:target="_blank"}
  * [Type](http://hl7.org/fhir/R4/appointment-definitions.html#Appointment.participant.type){:target="_blank"}
  * [Actor](http://hl7.org/fhir/R4/appointment-definitions.html#Appointment.participant.actor){:target="_blank"}
  * [Required](http://hl7.org/fhir/R4/appointment-definitions.html#Appointment.participant.required){:target="_blank"}
  * [Status](http://hl7.org/fhir/R4/appointment-definitions.html#Appointment.participant.status){:target="_blank"}
* [Reason code](http://hl7.org/fhir/R4/appointment-definitions.html#Appointment.reasonCode){:target="_blank"}
* [Description](http://hl7.org/fhir/R4/appointment-definitions.html#Appointment.description){:target="_blank"}
* [Start date time](http://hl7.org/fhir/R4/appointment-definitions.html#Appointment.start){:target="_blank"}
* [End date time](http://hl7.org/fhir/DSTU2/appointment-definitions.html#Appointment.end){:target="_blank"}
* [Duration in minutes](http://hl7.org/fhir/R4/appointment-definitions.html#Appointment.minutesDuration){:target="_blank"}
* [Comment](http://hl7.org/fhir/R4/appointment-definitions.html#Appointment.comment){:target="_blank"}
* [Requested period](http://hl7.org/fhir/R4/appointment-definitions.html#Appointment.requestedPeriod){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:appointment, :r4) %>

## Search

Search for Appointments that meet supplied query parameters:

    GET /Appointment?:parameters

_Implementation Notes_

* Valid ids for the `practitioner` and `location` search parameters will be determined by the client and provided when integrating your application with the client's production environment. See [overview](#overview) for details.

### Authorization Types

<%= authorization_types(practitioner: true, system: true) %>

### Parameters

 Name           | Required?                                                | Type          | Description
----------------|----------------------------------------------------------|-------------------------------------------------------------------------------------------------
 `_id`          | Yes, or one of `patient`, `practitioner`, or `location`. | [`token`]     | The logical resource id associated with the Appointment. Example: `3005759`
 `date`         | Yes when using `patient`, `practitioner`, or `location`. | [`date`]      | The Appointment date time with offset. Example: `2019-06-07T22:22:16.270Z`
 `patient`      | Yes, or `_id`                                            | [`reference`] | A single or comma separated list of Patient references. Example: `4704007`
 `practitioner` | Yes, or `_id`                                            | [`reference`] | A single or comma separated list of Practitioner references. Example: `2578010`
 `location`     | Yes, or `_id`                                            | [`reference`] | A single or comma separated list of Location references. Example: `633867`
 `status`       | No                                                       | [`token`]     | A single or comma separated list of appointment statuses. Example: `arrived`
 [`_count`]     | No                                                       | [`number`]    | The maximum number of results to return.

Notes:

* The `patient`, `practitioner`, and `location` parameters may be included only once and may not be used in combination. For example, `patient=4704007,1316024` is supported but `patient=4704007&patient=1316024` and `patient=4704007&location=633867` are not.
* The `date` parameter may be provided:
  * once with a prefix and time component to indicate a specific date/time. (e.g. `&date=ge2019-12-07T22:22:16.270Z`, `&date=lt2019-12-14T22:22:16.270Z`)
  * twice with the prefixes `ge` and `lt` to indicate a specific range. The date and prefix pairs must define an upper and lower bound. (e.g. `&date=ge2019-12-07T22:22:16.270Z&date=lt2019-12-14T22:22:16.270Z`)
* The retrieved appointments are sorted first by `start` date ascending (earliest first), followed by the provided search parameter (`patient`, `practitioner` or `location`) and `start` time ascending (earliest first).

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Appointment?date=ge2017-10-04T13:00:00.000Z&date=lt2017-10-04T14:00:00.000Z&patient=4704007

#### Response

<%= headers status: 200 %>
<%= json(:r4_appointment_bundle) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual Appointment by its id:

    GET /Appointment/:id

### Authorization Types

<%= authorization_types(practitioner: true, system: true) %>

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Appointment/3005756

#### Response

<%= headers status: 200 %>
<%= json(:r4_appointment_entry) %>

<%= disclaimer %>

### Example - Video Visit

#### Request

    GET https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Appointment/3005756

#### Response

<%= headers status: 200 %>
<%= json(:r4_appointment_video_visit_entry) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Patch

Patch an existing Appointment.

    PATCH /Appointment/:id

_Implementation Notes_

* This implementation follows the [JSON PATCH](https://tools.ietf.org/html/rfc6902) spec.
* Only operations on the paths listed below are supported.
* For Video Visit link patch operation paths, `contained` index 0 represents the provider link and `contained` index 1 represents the patient link.
* Video Visit link patching requires additional client configuration, cloud configuration, and application support.

### Authorization Types

<%= authorization_types(practitioner: true, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', 'Accept': 'application/fhir+json',
                   'Content-Type': 'application/json-patch+json', 'If-Match': 'W/"&lt;Current version of the Appointment resource>"'} %>

### Patch Operations

<%= patch_definition_table(:appointment_patch, :r4) %>

### Example

#### Request

    PATCH https://fhir-ehr.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Appointment/4627745

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
X-Request-Id: 47306a14c8a2c3afd4ab85aa9594101d
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

<%= disclaimer %>

### Example - Update Status to Booked

#### Request

    PATCH https://fhir-ehr.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Appointment/4627745

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
X-Request-Id: 47306a14c8a2c3afd4ab85aa9594101d
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

<%= disclaimer %>

### Example - Add Video Visit Links

#### Request

    PATCH https://fhir-ehr.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Appointment/4627745

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
X-Request-Id: 47306a14c8a2c3afd4ab85aa9594101d
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

<%= disclaimer %>

### Example - Replace Video Visit Links

#### Request

    PATCH https://fhir-ehr.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Appointment/4627745

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
X-Request-Id: 47306a14c8a2c3afd4ab85aa9594101d
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

In addition, the following errors may be returned:

* Updating an Appointment resource with the incorrect version will result in a `409 Conflict` response.
* Updating an Appointment resource without sending the `If-Match` header will result in a `412 Precondition Failed` response.
* Updating an Appointment resource which is currently being modified will result in a `423 Locked` response.
* If the Appointment resource could not be updated because of an operation that is necessary for the update (eg. encounter association), `424 Failed Dependency` response will be returned.
* Patching a Video Visit appointment with add operations that has previously been patched for Video Visit links will result in a `409 Conflict` response.
* Mixing add and replace patch operations is not supported while patching a Video Visit Appointment and will result in a `422 Unprocessable Entity` response.
* Patching a Video Visit appointment with any missing required patch operations will result in a `422 Unprocessable Entity` response.

## Create

Create a new Appointment.

    POST /Appointment

_Implementation Notes_

* The modifier elements [implicitRules] and [modifierExtension] are not supported and will be rejected if present.
* `Appointment.status` must be set to `proposed` or `booked`.
* `Appointment.reasonCode` if set, must be a list containing exactly one CodeableConcept.
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

### Authorization Types

<%= authorization_types(practitioner: true, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', 'Content-Type': 'application/fhir+json'} %>

### Body Fields

<%= definition_table(:appointment, :create, :r4) %>

### Example - Proposed Appointment

#### Request

    POST https://fhir-ehr.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Appointment

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
Location: https://fhir-ehr.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Appointment/6427746
Vary: Origin
X-Request-Id: 12814f1d23156f10ca94374f94c9ea02
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

<%= disclaimer %>

### Example - Booked Appointment

#### Request

    POST https://fhir-ehr.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Appointment

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
Location: https://fhir-ehr.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Appointment/20465903
Vary: Origin
X-Request-Id: 1638e30e497b93ff4383b2ff0eaeea68
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[Appointment.status]: https://hl7.org/fhir/r4/appointment-definitions.html#Appointment.status
[`reference`]: https://hl7.org/fhir/r4/search.html#reference
[`date`]: https://hl7.org/fhir/r4/search.html#date
[`token`]: https://hl7.org/fhir/r4/search.html#token
[`number`]: https://hl7.org/fhir/r4/search.html#number
[`_count`]: https://hl7.org/fhir/r4/search.html#count
[errors]: ../../#client-errors
[implicitRules]: http://hl7.org/fhir/r4/resource-definitions.html#Resource.implicitRules
[modifierExtension]: http://hl7.org/fhir/r4/domainresource-definitions.html#DomainResource.modifierExtension
[OperationOutcomes]: ../../#operation-outcomes
