---
title: Encounter | R4 API
---

# Encounter

* TOC
{:toc}

## Overview

The Encounter resource provides admissions or visits during which health care services were provided to a patient. An encounter has a class to distinguish between different health care settings such as inpatient, outpatient, emergency, etc. A patient may have one medical record number with multiple encounter numbers per facility or organization. There is substantial variance between organizations in the definition of an encounter and what events are aggregated together to constitute an encounter.

The following fields are returned if valued:

* [Encounter id](http://hl7.org/fhir/r4/encounter-definitions.html#Encounter.id){:target="_blank"}
* [Encounter identifier (eg: FIN)](http://hl7.org/fhir/r4/encounter-definitions.html#Encounter.identifier){:target="_blank"}
* [Status](http://hl7.org/fhir/r4/encounter-definitions.html#Encounter.status){:target="_blank"}
* [Class](http://hl7.org/fhir/r4/encounter-definitions.html#Encounter.class){:target="_blank"}
* [Type](http://hl7.org/fhir/r4/encounter-definitions.html#Encounter.type){:target="_blank"}
* [Priority](http://hl7.org/fhir/r4/encounter-definitions.html#Encounter.priority){:target="_blank"}
* [Subject](http://hl7.org/fhir/r4/encounter-definitions.html#Encounter.subject){:target="_blank"}
* [Participant:](http://hl7.org/fhir/r4/encounter-definitions.html#Encounter.participant){:target="_blank"}
   * [Type](http://hl7.org/fhir/r4/encounter-definitions.html#Encounter.participant.type){:target="_blank"}
   * [Name](http://hl7.org/fhir/r4/encounter-definitions.html#Encounter.participant.individual){:target="_blank"}
* [Start/end time of the encounter](http://hl7.org/fhir/r4/encounter-definitions.html#Encounter.period){:target="_blank"}
* [Reason for visit](http://hl7.org/fhir/r4/encounter-definitions.html#Encounter.reasonCode){:target="_blank"}
* [Hospitalization:](http://hl7.org/fhir/r4/encounter-definitions.html#Encounter.hospitalization){:target="_blank"}
   * [Admit source](http://hl7.org/fhir/r4/encounter-definitions.html#Encounter.hospitalization.admitSource){:target="_blank"}
   * [Diet preference](http://hl7.org/fhir/r4/encounter-definitions.html#Encounter.hospitalization.dietPreference){:target="_blank"}
   * [Special courtesy](http://hl7.org/fhir/r4/encounter-definitions.html#Encounter.hospitalization.specialCourtesy){:target="_blank"}
   * [Special arrangement](http://hl7.org/fhir/r4/encounter-definitions.html#Encounter.hospitalization.specialArrangement){:target="_blank"}
   * [Discharge destination](http://hl7.org/fhir/r4/encounter-definitions.html#Encounter.hospitalization.destination){:target="_blank"}
   * [Discharge disposition](http://hl7.org/fhir/r4/encounter-definitions.html#Encounter.hospitalization.dischargeDisposition){:target="_blank"}
* [Location:](http://hl7.org/fhir/r4/encounter-definitions.html#Encounter.location){:target="_blank"}
   * [Name](http://hl7.org/fhir/r4/encounter-definitions.html#Encounter.location.location){:target="_blank"}
   * [Location status](http://hl7.org/fhir/r4/encounter-definitions.html#Encounter.location.status){:target="_blank"}
* [Service provider (Organization)](http://hl7.org/fhir/r4/encounter-definitions.html#Encounter.serviceProvider){:target="_blank"}

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

### Authorization Types

<%= authorization_types(practitioner: true, patient: false, system: true)%>

### Parameters

 Name       | Required?                      | Type          | Description
------------|--------------------------------|---------------|-------------------------------------------------------------------------------------------------------
 `_id`      | This or `patient` or `subject` | [`token`]     | The logical resource id associated with the Encounter. Example: `7891`
 `patient`  | This or `subject` or `_id`     | [`reference`] | The patient present at the encounter. Example: `12345`
 `subject`  | This or `patient` or `_id`     | [`reference`] | The patient present at the encounter. Example: `subject=Patient/1316024` or `subject:Patient=1316024`
 [`_count`] | No                             | [`number`]    | The maximum number of results to return.

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

[contained]: http://hl7.org/fhir/r4/references.html#contained
[Encounter.hospitalization.destination]: http://hl7.org/fhir/r4/encounter-definitions.html#Encounter.hospitalization.destination
[Encounter.location.location]: http://hl7.org/fhir/r4/encounter-definitions.html#Encounter.location.location
[`reference`]: http://hl7.org/fhir/r4/search.html#reference
[`token`]: http://hl7.org/fhir/r4/search.html#token
[`number`]: http://hl7.org/fhir/r4/search.html#number
[`_count`]: http://hl7.org/fhir/r4/search.html#count
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes

## Create

Create an individual Encounter.

    POST /Encounter

### Authorization Types

<%= authorization_types(practitioner: true, patient: false, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', 'Content-Type': 'application/fhir+json'} %>

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
Content-Type: application/json+fhir
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
