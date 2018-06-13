---
title: Appointment | DSTU 2 API
---

# Appointment

* TOC
{:toc}

## Overview

The Appointment resource provides information about scheduled appointments such as a procedure (mammogram) or office
visit for a patient, practitioner or location. Date is required when searching by patient, practitioner or location.

When integrating your application with a client's production environment you will work with the client to determine the
Practitioner and Location ids (Millennium personnel and location codes, respectively) which they want to make available
to third-party applications for enabling scheduling functionality.

We understand this is a bit cumbersome, but we are always evaluating community feedback and look to improve the API in
the future.

The following fields are returned if valued:

* [Appointment id](http://hl7.org/fhir/dstu2/resource-definitions.html#Resource.id){:target="_blank"}
* [Status](http://hl7.org/fhir/DSTU2/appointment-definitions.html#Appointment.status){:target="_blank"}
* [Type](http://hl7.org/fhir/DSTU2/appointment-definitions.html#Appointment.type){:target="_blank"}
* [Participant](http://hl7.org/fhir/DSTU2/appointment-definitions.html#Appointment.participant){:target="_blank"}
* [Reason](http://hl7.org/fhir/DSTU2/appointment-definitions.html#Appointment.reason){:target="_blank"}
* [Description](http://hl7.org/fhir/DSTU2/appointment-definitions.html#Appointment.description){:target="_blank"}
* [Start date/time](http://hl7.org/fhir/DSTU2/appointment-definitions.html#Appointment.start){:target="_blank"}
* [End date/time](http://hl7.org/fhir/DSTU2/appointment-definitions.html#Appointment.end){:target="_blank"}
* [Duration in minutes](http://hl7.org/fhir/DSTU2/appointment-definitions.html#Appointment.minutesDuration){:target="_blank"}
* [Comment](http://hl7.org/fhir/DSTU2/appointment-definitions.html#Appointment.comment){:target="_blank"}
* Details of participants involved in the appointment:
  * [Type](http://hl7.org/fhir/DSTU2/appointment-definitions.html#Appointment.participant.type){:target="_blank"}
  * [Actor (name)](http://hl7.org/fhir/DSTU2/appointment-definitions.html#Appointment.participant.actor){:target="_blank"}
  * [Required (always 'required')](http://hl7.org/fhir/DSTU2/appointment-definitions.html#Appointment.participant.required){:target="_blank"}
  * [Status](http://hl7.org/fhir/DSTU2/appointment-definitions.html#Appointment.participant.status){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:appointment, :dstu2) %>

## Search

Search for Appointments that meet supplied query parameters:

    GET /Appointment?:parameters

_Implementation Notes_

- Valid ids for the `practitioner` and `location` search parameters will be determined by the client and provided when
  integrating your application with the client's production environment. See [overview](#overview) for details.

### Authorization Types

<%= authorization_types(practitioner: true, patient: true, system: true) %>

### Parameters

 Name          | Required?                                                | Type          | Description
---------------|----------------------------------------------------------|-----------------------------------------------------------------------------------
`_id`          | Yes, or one of `patient`, `practitioner`, or `location`. | [`token`]     | The logical resource id associated with the Appointment. Example: `3005759`
`date`         | Yes when using `patient`, `practitioner`, or `location`. | [`date`]      | The Appointment date/time. Example: `2016`
`patient`      | Yes, or `_id`                                            | [`reference`] | A single or comma separated list of Patient references. Example: `4704007`
`practitioner` | Yes, or `_id`                                            | [`reference`] | A single or comma separated list of Practitioner references. Example: `2578010`
`location`     | Yes, or `_id`                                            | [`reference`] | A single or comma separated list of Location references. Example: `633867`
`status`       | No                                                       | [`token`]     | A single or comma separated list of appointment statuses. Example: `arrived`
[`_count`]     | No                                                       | [`number`]    | The maximum number of results to return.

Notes:   

- The `patient`, `practitioner`, and `location` parameters may be included only once and may not be used in combination with the others.
  For example, `patient=4704007,1316024` is supported but `patient=4704007&patient=1316024` and `patient=4704007&location=633867` are not.

- The `date` parameter may be provided:  
  - once without a prefix or time component to imply a date range. (e.g. `&date=2016`, `&date=2016-07`, `&date=2016-07-04`)   
  - once without a prefix and with a time component to indicate a specific date/time. (e.g `&date=2016-07-04T13:00:00.000-05:00`)   
  - twice with the prefixes `ge`, `gt`, `le`, or `lt` to indicate a specific range. The date and prefix pairs must define
    an upper and lower bound. (e.g. `&date=ge2014&date=lt2016`, `&date=ge2014-03-15&date=le2017`)

- The retrieved appointments are sorted first by `start` date ascending (earliest first), followed by the provided search parameter (`patient`, `practitioner` or `location`) and `start` time ascending (earliest first).

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Appointment?date=2017&patient=4704007

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_appointment_bundle) %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual Appointment by its id:

    GET /Appointment/:id

### Authorization Types

<%= authorization_types(practitioner: true, patient: true, system: true) %>

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Appointment/3005756

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_appointment_read) %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Create

Create a new Appointment.

    POST /Appointment

_Implementation Notes_

* The modifier elements [implicitRules] and [modifierExtension] are not supported and will be rejected if present.
* `Appointment.status` must be set to `proposed`.
* `Appointment.slot` must be a reference to the Slot in which this appointment is being booked.
* `Appointment.participant` must have exactly one participant.
* `Appointment.participant.status` must be set to `needs-action`.
* `Appointment.participant.type` must not be set.

### Authorization Types

<%= authorization_types(practitioner: true, patient: true, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', Accept: 'application/json+fhir', 'Content-Type': 'application/json+fhir'} %>

### Body Fields

<%= definition_table(:appointment, :create, :dstu2) %>

### Example

#### Request

    POST https://fhir-ehr.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Appointment/

#### Body

<%= json(:dstu2_appointment_create) %>

#### Response

<%= headers status: 201 %>
<pre class="terminal">
    Connection → Keep-Alive
    Content-Encoding → gzip
    Content-Length → 20
    Content-Type → text/html; charset=UTF-8
    Date → Wed, 13 Jan 2016 21:45:47 GMT
    Keep-Alive → timeout=15, max=100
    Last-Modified → Tue, 15 Dec 2015 19:13:20 GMT
    Status → 201 Created
    access-control-allow-methods → DELETE, GET, POST, PUT, OPTIONS, HEAD
    access-control-allow-origin → *
    access-control-expose-headers → ETag, Content-Location, Location, X-Request-Id, WWW-Authenticate, Date
    access-control-max-age → 0
    cache-control → no-cache
    etag → W/"0"
    location → https://fhir-ehr.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Appointment/20465903
    server-response-time → 1260.984596
    strict-transport-security → max-age=631152000
    vary → Origin,User-Agent,Accept-Encoding
    x-content-type-options → nosniff
    x-frame-options → SAMEORIGIN
    x-request-id → 682c633c-b20f-4f6f-8fae-c58b3aeffe04
    x-runtime → 1.260940
    x-xss-protection → 1; mode=block
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`reference`]: http://hl7.org/fhir/DSTU2/search.html#reference
[`token`]: http://hl7.org/fhir/DSTU2/search.html#token
[`date`]: http://hl7.org/fhir/DSTU2/search.html#date
[`_count`]: http://hl7.org/fhir/DSTU2/search.html#count
[`number`]: http://hl7.org/fhir/DSTU2/search.html#number
[errors]: ../../#client-errors
[implicitRules]: http://hl7.org/fhir/DSTU2/resource-definitions.html#Resource.implicitRules
[modifierExtension]: http://hl7.org/fhir/DSTU2/domainresource-definitions.html#DomainResource.modifierExtension
[OperationOutcomes]: ../../#operation-outcomes
