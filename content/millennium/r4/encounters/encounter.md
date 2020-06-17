---
title: Encounter | R4 API
---

# Encounter

* TOC
{:toc}

## Overview

The Encounter resource provides admissions or visits during which health care services were provided to a patient. An encounter has a class to distinguish between different health care settings such as inpatient, outpatient, emergency, etc. A patient may have one medical record number with multiple encounter numbers per facility or organization. There is substantial variance between organizations in the definition of an encounter and what events are aggregated together to constitute an encounter.

The following fields are returned if valued:

* [Encounter id](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.id){:target="_blank"}
* [Encounter identifier (eg: FIN)](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.identifier){:target="_blank"}
* [Status](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.status){:target="_blank"}
* [Class](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.class){:target="_blank"}
* [Type](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.type){:target="_blank"}
* [Service Type](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.serviceType){:target="_blank"}
* [Priority](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.priority){:target="_blank"}
* [Subject](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.subject){:target="_blank"}
* [Participant:](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.participant){:target="_blank"}
   * [Type](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.participant.type){:target="_blank"}
   * [Name](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.participant.individual){:target="_blank"}
* [Start/end time of the encounter](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.period){:target="_blank"}
* [Reason for visit](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.reasonCode){:target="_blank"}
* [Hospitalization:](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.hospitalization){:target="_blank"}
   * [Admit source](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.hospitalization.admitSource){:target="_blank"}
   * [Diet preference](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.hospitalization.dietPreference){:target="_blank"}
   * [Special courtesy](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.hospitalization.specialCourtesy){:target="_blank"}
   * [Special arrangement](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.hospitalization.specialArrangement){:target="_blank"}
   * [Discharge destination](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.hospitalization.destination){:target="_blank"}
   * [Discharge disposition](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.hospitalization.dischargeDisposition){:target="_blank"}
* [Location:](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.location){:target="_blank"}
   * [Name](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.location.location){:target="_blank"}
   * [Location status](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.location.status){:target="_blank"}
* [Service provider (Organization)](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.serviceProvider){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:encounter, :r4) %>

### Contained Location Bindings

<%= terminology_table(:encounter_contained_location, :r4) %>

## Search

Search for Encounters that meet supplied query parameters:

    GET /Encounter?:parameters

_Implementation Notes_

* The [Encounter.hospitalization.destination] will be returned as a reference to a [contained] location resource.
* The [Encounter.location.location] may be returned as a reference to a [contained] location resource.
* A populated Encounter response bundle will be sorted from newest to oldest based on the start of the [Encounter.period].

### Authorization Types

<%= authorization_types(practitioner: true, patient: false, system: true)%>

### Parameters

 Name       | Required?                                   | Type          | Description
------------|---------------------------------------------|---------------|-------------------------------------------------------------------------------------------------------
 `_id`      | This or `patient` or `subject` or `account` | [`token`]     | The logical resource id associated with the Encounter. Example: `7891`
 `patient`  | This or `subject` or `account` or `_id`     | [`reference`] | The patient present at the encounter. Example: `12345`
 `subject`  | This or `patient` or `account` or `_id`     | [`reference`] | The patient present at the encounter. Example: `subject=Patient/1316024` or `subject:Patient=1316024`
 `account`  | This or `patient` or `subject` or `_id`     | [`reference`] | The account associated with the encounters. Example: `F703726`
 [`_count`] | No                                          | [`number`]    | The maximum number of results to return.

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Encounter?patient=4342010

#### Response

<%= headers status: 200 %>
<%= json(:r4_encounter_bundle) %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual Encounter by its id:

    GET /Encounter/:id

_Implementation Notes_

* The [Encounter.hospitalization.destination] will be returned as a reference to a [contained] location resource.
* The [Encounter.location.location] may be returned as a reference to a [contained] location resource.

### Authorization Types

<%= authorization_types(practitioner: true, patient: false, system: true)%>

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Encounter/4027918

#### Response

<%= headers status: 200 %>
<%= json(:r4_encounter) %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Create

Create an individual Encounter.

    POST /Encounter

### Authorization Types

<%= authorization_types(practitioner: true, patient: false, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', 'Accept': 'application/fhir+json', 'Content-Type': 'application/fhir+json'} %>

### Body Fields

<%= definition_table(:encounter, :create, :r4) %>

### Example

#### Request

    POST https://fhir-ehr.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Encounter

#### Body

  <%= json(:r4_encounter_create) %>

#### Response

<%= headers status: 201 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: application/fhir+json
Date: Wed, 27 Mar 2019 15:59:33 GMT
Etag: W/"0"
Last-Modified: Wed, 27 Mar 2019 15:59:30 GMT
Location: https://fhir-ehr.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Encounter/4595905
Server-Response-Time: 3890.363996
Status: 201 Created
Vary: Origin
X-Request-Id: 1638e30e497b93ff4383b2ff0eaeea68
X-Runtime: 3.890282
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Patch

Patch an existing encounter.

    PATCH /Encounter/:id

_Implementation Notes_

* This implementation follows the [JSON PATCH](https://tools.ietf.org/html/rfc6902) spec.
* Only operations on the paths listed below are supported.

### Authorization Types

<%= authorization_types(practitioner: true, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', 'Accept': 'application/fhir+json',
                   'Content-Type': 'application/json-patch+json', 'If-Match': 'W/"&lt;Current version of the Encounter resource>"'} %>

### Patch Operations

<%= patch_definition_table(:encounter_patch, :r4) %>

### Example

#### Request

    PATCH https://fhir-ehr.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Encounter/1621910

#### Body

<%= json(:r4_encounter_patch) %>

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

[contained]: https://hl7.org/fhir/r4/references.html#contained
[Encounter.hospitalization.destination]: https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.hospitalization.destination
[Encounter.location.location]: https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.location.location
[Encounter.period]: https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.period
[`reference`]: https://hl7.org/fhir/r4/search.html#reference
[`token`]: https://hl7.org/fhir/r4/search.html#token
[`number`]: https://hl7.org/fhir/r4/search.html#number
[`_count`]: https://hl7.org/fhir/r4/search.html#count
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
