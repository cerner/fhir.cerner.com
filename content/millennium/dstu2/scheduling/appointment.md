---
title: Appointment | DSTU 2 API
---

# Appointment

* TOC
{:toc}

## Overview

The Appointment resource provides information about scheduled appointments such as a [Procedure](../../general-clinical/procedure) (mammogram) or office
visit for a [Patient](../../individuals/patient), [Practitioner](../../individuals/practitioner), or Location.

When integrating your application with a client's environments you will work with the client to determine the
Practitioner and Location IDs (Millennium personnel and location codes, respectively), which they want to make available
to third-party applications for enabling scheduling functionality.

The following fields are returned if valued:

* [Appointment ID](http://hl7.org/fhir/dstu2/resource-definitions.html#Resource.id){:target="_blank"}
* [Status](http://hl7.org/fhir/DSTU2/appointment-definitions.html#Appointment.status){:target="_blank"}
* [Type](http://hl7.org/fhir/DSTU2/appointment-definitions.html#Appointment.type){:target="_blank"}
* [Participant](http://hl7.org/fhir/DSTU2/appointment-definitions.html#Appointment.participant){:target="_blank"}
* [Reason](http://hl7.org/fhir/DSTU2/appointment-definitions.html#Appointment.reason){:target="_blank"}
* [Description](http://hl7.org/fhir/DSTU2/appointment-definitions.html#Appointment.description){:target="_blank"}
* [Start Date/Time](http://hl7.org/fhir/DSTU2/appointment-definitions.html#Appointment.start){:target="_blank"}
* [End Date/Time](http://hl7.org/fhir/DSTU2/appointment-definitions.html#Appointment.end){:target="_blank"}
* [Duration in minutes](http://hl7.org/fhir/DSTU2/appointment-definitions.html#Appointment.minutesDuration){:target="_blank"}
* [Comment](http://hl7.org/fhir/DSTU2/appointment-definitions.html#Appointment.comment){:target="_blank"}
* Details of participants involved in the appointment:
  * [Type](http://hl7.org/fhir/DSTU2/appointment-definitions.html#Appointment.participant.type){:target="_blank"}
  * [Actor (name)](http://hl7.org/fhir/DSTU2/appointment-definitions.html#Appointment.participant.actor){:target="_blank"}
  * [Required (always `required`)](http://hl7.org/fhir/DSTU2/appointment-definitions.html#Appointment.participant.required){:target="_blank"}
  * [Status](http://hl7.org/fhir/DSTU2/appointment-definitions.html#Appointment.participant.status){:target="_blank"}

<%= disclaimer %>

The common [errors] and [OperationOutcomes] may be returned.

## Terminology Bindings

<%= terminology_table(:appointment, :dstu2) %>

## Search

Search for Appointments that meet supplied query parameters:

    GET /Appointment?:parameters

_Implementation Notes_

- Valid IDs for the `practitioner` and `location` search parameters will be determined by the client and provided when
  integrating your application with the client's environments. See [overview](#overview) for details.

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Parameters

 Name          | Required?                                                | Type          | Description
---------------|----------------------------------------------------------|-----------------------------------------------------------------------------------
`_id`          | Yes, or `patient` or `practitioner` or `location`.       | [`token`]     | The logical resource id associated with the Appointment. Example: `_id=3005759`
`patient`      | Yes, or `_id` or `practitioner` or `location`.           | [`reference`] | A single or comma separated list of Patient references. Example: `patient=4704007`
`practitioner` | Yes, or `_id` or `patient` or `location`.                | [`reference`] | A single or comma separated list of Practitioner references. Example: `practitioner=2578010`
`location`     | Yes, or `_id` or `patient` or `practitioner`.            | [`reference`] | A single or comma separated list of Location references. Example: `location=633867`
`date`         | Yes when using `patient`, `practitioner`, or `location`. | [`date`]      | The Appointment date/time. Example: `date=2020-01`
`status`       | No                                                       | [`token`]     | A single or comma separated list of appointment statuses. Example: `status=arrived`
[`_count`]     | No                                                       | [`number`]    | The maximum number of results to return.

Notes:

- The `patient`, `practitioner`, and `location` parameters may be included only once and may not be used in combination.
  For example, `patient=1234,5678` is supported but `patient=1234&patient=5678` and `patient=1234&location=5678` are not.

- The `date` parameter may be provided:
  - once without a prefix or time component to imply a date range. (e.g. `&date=2016`, `&date=2016-07`, `&date=2016-07-04`)
  - once without a prefix and with a time component to indicate a specific date/time. (e.g `&date=2016-07-04T13:00:00.000-05:00`)
  - twice with the prefixes `ge` or `gt` and `le` or `lt` to indicate a specific range. The date and prefix pairs must define
    an upper and lower bound. (e.g. `&date=ge2014&date=lt2016`, `&date=ge2014-03-15&date=le2017`)

- The retrieved appointments are sorted by `start` date, ascending (earliest first).

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Appointment?patient=12724066&date=2020-02

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_appointment_bundle) %>

## Retrieve by ID

List an individual Appointment by its ID:

    GET /Appointment/:id

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Appointment/4817508

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_appointment_read) %>

## Create

Create a new Appointment.

    POST /Appointment

_Implementation Notes_

* The modifier elements [implicitRules] and [modifierExtension] are not supported and will be rejected if present.
* `Appointment.status` must be set to `proposed`.
* `Appointment.slot` must be a list containing a single reference to the Slot in which this appointment is being booked.
  * `Appointment.slot[0].reference` specifies an availability in the Scheduling system.
* `Appointment.participant` must have exactly one participant.
  * `Appointment.participant.status` must be set to `needs-action`.
  * `Appointment.participant.type` must not be set.

Scheduling examples are time sensitive. Recreating the below example will require a [Slot](../slot) with a status of `free`.

### Authorization Types

<%= authorization_types(provider: true, patient: false, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', Accept: 'application/json+fhir', 'Content-Type': 'application/json+fhir'} %>

### Body Fields

<%= definition_table(:appointment, :create, :dstu2) %>

### Example

#### Request

    POST https://fhir-ehr-code.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Appointment/

#### Body

<%= json(:dstu2_appointment_create) %>

#### Response
<%= headers status: 201 %>
<pre class="terminal">
Connection: Keep-Alive
Content-Encoding: gzip
Content-Length: 20
Content-Type: text/html; charset=UTF-8
Date: Wed, 13 Jan 2016 21:45:47 GMT
Keep-Alive: timeout=15, max=100
Last-Modified: Tue, 15 Dec 2015 19:13:20 GMT
access-control-allow-methods: DELETE, GET, POST, PUT, OPTIONS, HEAD
access-control-allow-origin: *
access-control-expose-headers: ETag, Content-Location, Location, X-Request-Id, WWW-Authenticate, Date
access-control-max-age: 0
cache-control: no-cache
etag: W/"0"
location: https://fhir-ehr-code.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Appointment/20465903
opc-request-id: /A6715F018F26C503BBE42F2625DF3DF0/6CEB8EC1BDBB5BC448FE51BCA94E7149
strict-transport-security: max-age=631152000
vary: Origin,User-Agent,Accept-Encoding
x-content-type-options: nosniff
x-frame-options: SAMEORIGIN
x-request-id: 682c633c-b20f-4f6f-8fae-c58b3aeffe04
x-xss-protection: 1; mode=block
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

## Update

Update an Appointment.

    PUT /Appointment/:id

_Implementation Notes_

* The only supported change is to update the [Appointment.status](http://hl7.org/fhir/DSTU2/appointment-definitions.html#Appointment.status) to either `arrived` or `cancelled`.

The common [errors] and [OperationOutcomes] may be returned.

<%= disclaimer %>

### Authorization Types

<%= authorization_types(provider: true, patient: false, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', Accept: 'application/json+fhir',
                   'Content-Type': 'application/json+fhir', 'If-Match': 'W/"&lt;Current version of the Appointment resource>"'} %>

### Body fields

<%= definition_table(:appointment, :update, :dstu2) %>

### Example

#### Request

    PUT https://fhir-ehr-code.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Appointment/4817508

#### Body

<%= json(:dstu2_appointment_update) %>

In this example, only the `Appointment.status` field was updated.

#### Response

<%= headers status: 200 %>
<pre class="terminal">
Connection: Keep-Alive
Content-Encoding: gzip
Content-Length: 20
Content-Type: text/html; charset=UTF-8
Date: Wed, 13 Jan 2016 21:50:53 GMT
Keep-Alive: timeout=15, max=100
Last-Modified: Tue, 15 Dec 2015 19:13:20 GMT
access-control-allow-methods: DELETE, GET, POST, PUT, OPTIONS, HEAD
access-control-allow-origin: *
access-control-expose-headers: ETag, Content-Location, Location, X-Request-Id, WWW-Authenticate, Date
access-control-max-age: 0
cache-control: no-cache
etag: W/"1"
strict-transport-security: max-age=631152000
vary: Origin,User-Agent,Accept-Encoding
x-content-type-options: nosniff
x-frame-options: SAMEORIGIN
x-request-id: 9dba8326-899a-406f-a125-3fc3d6605dad
x-xss-protection: 1; mode=block
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

### Errors

The following errors may be returned:

* `412 Precondition Failed` - The `If-Match` header was not provided.
* `422 Unprocessable Entity` - The resource is in a status that cannot be changed.
* `422 Unprocessable Entity` - The `status` provided is not supported. See notes above.
* `422 Unprocessable Entity` - The patient URL or the provider URLs are longer than 255 characters.
* `423 Locked` - The resource is currently being modified elsewhere.
* `424 Failed Dependency` - An external operation is necessary for the update (e.g. encounter association).

[`reference`]: http://hl7.org/fhir/DSTU2/search.html#reference
[`token`]: http://hl7.org/fhir/DSTU2/search.html#token
[`date`]: http://hl7.org/fhir/DSTU2/search.html#date
[`_count`]: http://hl7.org/fhir/DSTU2/search.html#count
[`number`]: http://hl7.org/fhir/DSTU2/search.html#number
[errors]: ../../#client-errors
[implicitRules]: http://hl7.org/fhir/DSTU2/resource-definitions.html#Resource.implicitRules
[modifierExtension]: http://hl7.org/fhir/DSTU2/domainresource-definitions.html#DomainResource.modifierExtension
[OperationOutcomes]: ../../#operation-outcomes
