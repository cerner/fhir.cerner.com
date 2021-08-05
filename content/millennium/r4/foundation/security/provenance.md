---
title: Provenance | R4 API
---

# Provenance

* TOC
{:toc}

## Overview

The Provenance resource tracks the source of external data and is used to assess the trustworthiness and reliability of a resource. Sources can be an organization author or organization transmitter.  Entities are Continuity of Care DocumentReferences (CCDs).

The following fields are returned if valued:

* [Provenance id](https://hl7.org/fhir/R4/resource-definitions.html#Resource.id){:target="_blank"}
* [Target](https://hl7.org/fhir/R4/provenance-definitions.html#Provenance.target){:target="_blank"}
* [Recorded](https://hl7.org/fhir/R4/provenance-definitions.html#Provenance.recorded){:target="_blank"}
* [Agent type (author or transmitter)](https://hl7.org/fhir/R4/provenance-definitions.html#Provenance.agent.type){:target="_blank"}
* [Agent role (source or informant)](https://hl7.org/fhir/R4/provenance-definitions.html#Provenance.agent.role){:target="_blank"}
* [Agent who (Practitioner, Device, or Organization)](https://hl7.org/fhir/R4/provenance-definitions.html#Provenance.agent.who){:target="_blank"}
* [Agent on behalf of](https://hl7.org/fhir/R4/provenance-definitions.html#Provenance.agent.onBehalfOf){:target="_blank"}
* [Entity role](https://hl7.org/fhir/R4/provenance-definitions.html#Provenance.entity.role){:target="_blank"}
* [Entity what (Continuity of Care DocumentReference id)](https://hl7.org/fhir/R4/provenance-definitions.html#Provenance.entity.what){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:provenance, :r4) %>

## Search

Search for Provenances that meet supplied query parameters:

    GET /Provenance?:parameters

### Authorization Types

<%= authorization_types(provider: true, patient: false, system: true) %>

### Parameters

 Name         | Required? | Type          | Description
--------------|-----------|---------------|-----------------------------------------------------------------------------------------------------------------------------------------------
 `_id`        | This or `target` | [`token`]     | The logical resource id associated with the resource. Example: `doc-7845`
 `target`     | This or `_id` | [`reference`] | Target Reference(s) (usually version specific). The AllergyIntolerance, Condition, DocumentReference, Encounter, Immunization, MedicationRequest, Observation and Procedure resources are supported. Example: `DocumentReference/66547`

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Provenance?_id=doc-881057

#### Response

<%= headers status: 200 %>
<%= json(:r4_provenance_bundle) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual Provenance by its id:

    GET /Provenance/:id

### Authorization Types

<%= authorization_types(provider: true, patient: false, system: true) %>

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Provenance/doc-881057

#### Response

<%= headers status: 200 %>
<%= json(:r4_provenance_entry) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Create

Create a new Provenance.

    POST /Provenance

_Implementation Notes_

* Only the body fields mentioned below are supported. Unsupported fields will be ignored.
* Modifier fields should not be provided, and will cause the transaction to fail.
* The `Provenance.write` and `Observation.read` scopes must be provided in order to create a Provenance with an Observation Measurement target.

### Authorization Types

<%= authorization_types(provider: true, patient: false, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', Accept: 'application/fhir+json', 'Content-Type': 'application/fhir+json'} %>

### Body Fields

<%= definition_table(:provenance, :create, :r4) %>

### Example

#### Request

    POST https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Provenance

#### Body

<%= json(:r4_provenance_create) %>

#### Response

<%= headers status: 201 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: text/html
Date: Tue, 31 Mar 2020 15:37:25 GMT
Etag: W/"881057"
Location: https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Provenance/doc-881057
Last-Modified: Tue, 31 Mar 2020 15:37:25 GMT
Vary: Origin
X-Request-Id: 11111111111111111111111111111111
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`reference`]: https://hl7.org/fhir/r4/search.html#reference
[`token`]: https://hl7.org/fhir/R4/search.html#token
[errors]: ../../#client-errors
[OperationOutcomes]: https://hl7.org/fhir/R4/operationoutcome.html
