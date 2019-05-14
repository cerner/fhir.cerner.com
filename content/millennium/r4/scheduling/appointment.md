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

When updating an appointment, the resource provides the ability to change the Appointment.status from booked to arrived, checked-in, or cancelled.

The status of arrived does not change the state of the millennium appointment but instead updates the patient tracking status to a value of Arrived.

R4 exposes a native checked-in status which allows for an appointment to transition from the booked state to the checked-in state. This is a change from the DSTU2 value mapping.

When updating an appointment, the resource provides the ability to change the Appointment.status in the following sequences:

* From Booked to Arrived, Checked-In, or Cancelled
* From Arrived to Checked-In, or Cancelled
* From Checked-In to Cancelled

## Patch

Patch an existing appointment.

    PATCH /Appointment/:id

_Implementation Notes_

* This implementation follows the [JSON PATCH](https://tools.ietf.org/html/rfc6902) spec.
* Only operations on the paths listed below are supported.

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
Server-Response-Time: 2260.237021
Status: 200 OK
Vary: Origin
X-Request-Id: 47306a14c8a2c3afd4ab85aa9594101d
X-Runtime: 2.260092
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

### Errors

The common [errors] and [OperationOutcomes] may be returned.

In addition, the following errors may be returned:

* Updating an Appointment resource without sending the `If-Match` header will result in a `412 Precondition Failed` response.
* Updating an Appointment resource which is currently being modified will result in a `423 Locked` response.
* If the Appointment resource could not be updated because of an operation that is necessary for the update (eg. encounter association), `424 Failed Dependency` response will be returned.

[contained]: https://hl7.org/fhir/r4/references.html#contained
[Appointment.status]: https://hl7.org/fhir/r4/appointment-definitions.html#Appointment.status
[`reference`]: https://hl7.org/fhir/r4/search.html#reference
[`token`]: https://hl7.org/fhir/r4/search.html#token
[`number`]: https://hl7.org/fhir/r4/search.html#number
[`_count`]: https://hl7.org/fhir/r4/search.html#count
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
