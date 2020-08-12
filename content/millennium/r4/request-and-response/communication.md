---
title: Communication | R4 API
---

# Communication

* TOC
{:toc}

## Overview

The Communication resource is a conveyance of information from one entity, a sender, to another entity, a receiver. The information includes encoded data and optionally a related Patient and a related Encounter.

The following fields are returned if valued:

* [Communication Id](https://hl7.org/FHIR/communication-definitions.html#Communication.identifier)
* [Status (Completed)](https://hl7.org/FHIR/communication-definitions.html#Communication.status)
* [Category](https://hl7.org/FHIR/communication-definitions.html#Communication.category)
* [Priority](https://hl7.org/FHIR/communication-definitions.html#Communication.priority)
* [Subject](https://hl7.org/FHIR/communication-definitions.html#Communication.subject)
* [Topic](https://hl7.org/FHIR/communication-definitions.html#Communication.topic)
* [Encounter](https://hl7.org/FHIR/communication-definitions.html#Communication.encounter)
* [Sent DateTime](https://hl7.org/FHIR/communication-definitions.html#Communication.sent)
* [Received DateTime](https://hl7.org/FHIR/communication-definitions.html#Communication.received)
* [Recipient](https://hl7.org/FHIR/communication-definitions.html#Communication.recipient)
* [Sender](https://hl7.org/FHIR/communication-definitions.html#Communication.sender)
* [Payload](https://hl7.org/FHIR/communication-definitions.html#Communication.payload)

## Terminology Bindings

<%= terminology_table(:communication, :r4) %>

## Extensions

### Custom Extensions

All URLs for custom extensions are defined as `https://fhir-ehr.cerner.com/r4/StructureDefinition/{id}`

ID             | Value\[x] Type      | Description
---------------|---------------------|----------------------------------------------------------------------------------
`reply-to`     | [`Reference`]       | Used to direct where replies to the communication should be sent. Must be a Group.
`email-status` | [`CodeableConcept`] | Status of the electronic communication (in-progress, completed, received).

## Search

Search for communications that meet supplied query parameters:

    GET /Communication?:parameters

_Implementation Notes_

* The Content of a communication will be returned through the binary resource. A reference to the payload will be provided in the Payload section.
* Only 1000 elements max will be returned based on the date range.

### Authorization Types

<%= authorization_types(provider: true, patient: false, system: true) %>

### Parameters

 Name              | Required?                                                          | Type          | Description
-------------------|--------------------------------------------------------------------|---------------|-----------------------------------------------------------------------------------------------------------------------------------------------
 `_id`             | This or (`category`, `-email-status`, `recipient` and `received`) | [`token`]     | The logical resource id associated with the resource. Example: `489580643.0.-4.prsnl`
 `category`        | (This, `recipient`, `received` and `-email-status`) or `_id`      | [`token`]     | A token for a [`CodeableConcept`] that points to the CodeableConcept used for Communication.category. Example: `http://terminology.hl7.org/CodeSystem/communication-category|notification`
 `recipient`       | (This, `category`, `received` and `-email-status`) or `_id`       | [`reference`] | The recipient of the communication. Example: `Practitioner/3456783`
 `received`        | (This, `category`, `recipient` and `-email-status`) or `_id`      | [`date`]      | Date range into which the communication falls. Example: `le2017-02-01T10:30:00Z`
 `-email-status`   | (This, `category`, `recipient` and `received`) or `_id`           | [`token`]     | The status of the email. Example: `http://hl7.org/fhir/task-status|in-progress`


 Notes:

 * The `recipient` parameter must represent a Practitioner or a Group. Use the `:Group` modifier to search by Group.
 * The `received` parameter may be provided up to two times, and must use the `ge` or `le` prefixes. When provided twice, the lower value must have a `ge` prefix and the higher value must have a `le` prefix. The `ge` prefix is only supported on one.

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Communication?_id=489580643.0.-4.prsnl

#### Response

<%= headers status: 200 %>
<%= json(:r4_communication_bundle) %>
<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual communication by its id:

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
<%= disclaimer %>

## Create

Create a new communication.

    POST /Communication

_Implementation Notes_

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

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Patch

Patch an existing communication.

    PATCH /Communication/:id

_Implementation Notes_

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

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`reference`]: https://hl7.org/fhir/R4/search.html#reference
[`token`]: https://hl7.org/fhir/R4/search.html#token
[`date`]: http://hl7.org/fhir/R4/search.html#date
[`CodeableConcept`]: http://hl7.org/fhir/R4/datatypes.html#codeableconcept
[errors]: ../../#client-errors
[OperationOutcomes]: https://hl7.org/fhir/R4/operationoutcome.html
