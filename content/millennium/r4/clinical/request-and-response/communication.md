---
title: Communication | R4 API
---

# Communication

* TOC
{:toc}

## Overview

The Communication resource is a conveyance of information from one entity, a sender, to another entity, a receiver. The information includes encoded data and optionally a related [`Patient`] and a related [`Encounter`].

The following fields are returned if valued:

* [ID](https://hl7.org/FHIR/r4/communication-definitions.html#Communication.identifier)
* [In Response To](https://hl7.org/FHIR/r4/communication-definitions.html#Communication.inResponseTo)
* [Status](https://hl7.org/FHIR/r4/communication-definitions.html#Communication.status)
* [Category](https://hl7.org/FHIR/r4/communication-definitions.html#Communication.category)
* [Priority](https://hl7.org/FHIR/r4/communication-definitions.html#Communication.priority)
* [Subject](https://hl7.org/FHIR/r4/communication-definitions.html#Communication.subject)
* [Topic](https://hl7.org/FHIR/r4/communication-definitions.html#Communication.topic)
* [Encounter](https://hl7.org/FHIR/r4/communication-definitions.html#Communication.encounter)
* [Sent DateTime](https://hl7.org/FHIR/r4/communication-definitions.html#Communication.sent)
* [Received DateTime](https://hl7.org/FHIR/r4/communication-definitions.html#Communication.received)
* [Recipient](https://hl7.org/FHIR/r4/communication-definitions.html#Communication.recipient)
* [Sender](https://hl7.org/FHIR/r4/communication-definitions.html#Communication.sender)
* [Payload](https://hl7.org/FHIR/r4/communication-definitions.html#Communication.payload)

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Terminology Bindings

<%= terminology_table(:communication, :r4) %>

## Extensions

### Custom Extensions

All URLs for custom extensions are defined as `https://fhir-ehr.cerner.com/r4/StructureDefinition/{id}`

ID             | Value\[x] Type      | Description
---------------|---------------------|----------------------------------------------------------------------------------
`reply-to`     | [`Reference`]       | Used to direct where replies to the Communication should be sent. Must be a Group.
`email-status` | [`CodeableConcept`] | Status of the electronic Communication (in-progress, completed, received).

## Search

Search for communications that meet supplied query parameters:

    GET /Communication?:parameters

_Notes_

* The Content of a Communication will be returned through the binary resource. A reference to the payload will be provided in the Payload section.
* Only 1000 elements max will be returned based on the date range.

### Authorization Types

<%= authorization_types(provider: true, patient: false, system: true) %>

### Parameters

 Name                                                | Required?     | Type          | Description
-----------------------------------------------------|---------------|---------------|-----------------------------------------------------------------------------------------------------------------------------------------------
 `_id`                                               | Conditionally | [`token`]     | The logical resource ID associated with the resource. This parameter is required if `category`, `-email-status`, `recipient` and `received` are not used. Example: `489580643.0.-4.prsnl`
 `category`                                          | Conditionally | [`token`]     | A token for a [`CodeableConcept`] that points to the CodeableConcept used for `Communication.category`. This parameter is required along with `recipient`, `received` and `-email-status` if `_id` is not used. Example: `http://terminology.hl7.org/CodeSystem/communication-category|notification`
 `recipient:Group` or `recipient:Practitioner`       | Conditionally | [`reference`] | The recipient of the Communication. This parameter is required along with `category`, `received` and `-email-status` if `_id`  is not used. Example: `3456783`
 `received`                                          | Conditionally | [`date`]      | Date range into which the Communication falls. This parameter is required along with `category`, `recipient` and `-email-status` if `_id`  is not used. Example: `ge2017-02-01T10:30:00Z`
 `-email-status`                                     | Conditionally | [`token`]     | The status of the email. This parameter is required along with `category`, `recipient` and `received` if `_id`  is not used. Example: `http://hl7.org/fhir/task-status|in-progress`


 Notes:

 * The `received` parameter may be provided:
   * Once with the `ge` prefix.
   * Twice with the lower value prefixed by `ge` and the higher value prefixed by `le`.

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Communication?_id=489580643.0.-4.prsnl

#### Response

<%= headers status: 200 %>
<%= json(:r4_communication_bundle) %>

## Retrieve by ID

List an individual Communication by its ID:

    GET /Communication/:id

### Authorization Types

<%= authorization_types(provider: true, patient: false, system: true) %>

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Communication/489580643.0.-4.prsnl

#### Response

<%= headers status: 200 %>
<%= json(:r4_communication_entry) %>

## Create

Create a new Communication.

    POST /Communication

_Notes_

* Only the body fields mentioned below are supported. Unsupported fields will be ignored.
* Modifier fields should not be provided, and will cause the transaction to fail.

### Authorization Types

<%= authorization_types(provider: true, patient: false, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', Accept: 'application/fhir+json', 'Content-Type': 'application/fhir+json'} %>

### Body Fields

<%= definition_table(:communication, :create, :r4) %>

### Example

#### Request

    POST https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Communication

#### Body

<%= json(:r4_communication_create) %>

#### Response

<%= headers status: 201 %>

<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: application/json
Date: Tue, 04 Aug 2020 17:59:03 GMT
Etag: W/"0"
Location: https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Communication/472894781.0.-4.0
Last-Modified: Tue, 04 Aug 2020 17:59:03 GMT
Server-Response-Time: 22.810143
Status: 201 Created
Vary: Origin
X-Request-Id: b89310ef-51ef-4b76-b92e-d070496c999c
X-Runtime: 0.022706
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

## Patch

Patch an existing Communication.

    PATCH /Communication/:id

_Notes_

* This implementation follows the [JSON PATCH](https://tools.ietf.org/html/rfc6902) spec.
* Only operations on the paths listed below are supported.

### Authorization Types

<%= authorization_types(provider: true, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', 'Accept': 'application/fhir+json',
                   'Content-Type': 'application/json-patch+json', 'If-Match': 'W/"&lt;Current version of the Communication resource>"'} %>

### Patch Operations

<%= patch_definition_table(:communication_patch, :r4) %>

### Example

#### Request

    PATCH https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Communication/123

#### Body

<%= json(:r4_communication_patch) %>

#### Response

<%= headers status: 200 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: application/json
Date: Wed, 11 Nov 2020 18:42:40 GMT
Etag: W/"2"
Last-Modified: Wed, 11 Nov 2020 18:42:40 GMT
Server-Response-Time: 826.746885
Status: 200 OK
Vary: Origin
X-Request-Id: 1594889a-8278-43f2-9c83-d84d6d2b3c72
X-Runtime: 0.826616
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

[`reference`]: https://hl7.org/fhir/R4/search.html#reference
[`token`]: https://hl7.org/fhir/R4/search.html#token
[`date`]: https://hl7.org/fhir/R4/search.html#date
[`CodeableConcept`]: https://hl7.org/fhir/R4/datatypes.html#codeableconcept
[`Patient`]: /millennium/r4/base/individuals/patient/
[`Encounter`]: /millennium/r4/base/management/encounter/
[errors]: ../../../#client-errors
[OperationOutcomes]: ../../../#operation-outcomes
