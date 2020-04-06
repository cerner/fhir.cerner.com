---
title: Provenance | R4 API
---

# Provenance

* TOC
{:toc}

## Overview

The Provenance resource tracks the source of external data and is used to assess the trustworthiness and reliability of a resource. Sources can be an organization author or organization transmitter.  Entities are Continuity of Care DocumentReferences (CCDs).

The following fields are returned if valued:

* [Provenance id](http://hl7.org/fhir/R4/resource-definitions.html#Resource.id){:target="_blank"}
* [Target](http://hl7.org/fhir/R4/provenance-definitions.html#Provenance.target){:target="_blank"}
* [Recorded](http://hl7.org/fhir/R4/provenance-definitions.html#Provenance.recorded){:target="_blank"}
* [Agent type (author or transmitter)](http://hl7.org/fhir/R4/provenance-definitions.html#Provenance.agent.type){:target="_blank"}
* [Agent role (source or informant)](http://hl7.org/fhir/R4/provenance-definitions.html#Provenance.agent.role){:target="_blank"}
* [Agent who (Practitioner, Device, or Organization)](http://hl7.org/fhir/R4/provenance-definitions.html#Provenance.agent.who){:target="_blank"}
* [Agent on behalf of](http://hl7.org/fhir/R4/provenance-definitions.html#Provenance.agent.onBehalfOf){:target="_blank"}
* [Entity role](http://hl7.org/fhir/R4/provenance-definitions.html#Provenance.entity.role){:target="_blank"}
* [Entity what (Continuity of Care DocumentReference id)](http://hl7.org/fhir/R4/provenance-definitions.html#Provenance.entity.what){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:provenance, :r4) %>

## Search

Search for Provenances that meet supplied query parameters:

    GET /Provenance?:parameters

### Authorization Types

<%= authorization_types(practitioner: true, patient: false, system: true) %>

### Parameters

 Name         | Required? | Type          | Description
--------------|-----------|---------------|-----------------------------------------------------------------------------------------------------------------------------------------------
 `_id`        | This, or any other required search parameter | [`token`]     | The logical resource id associated with the resource. Example: `doc-7845`
 `target`     | This and/or any other search param, or `_id` | [`reference`] | Target Reference(s) (usually version specific). Example: `DocumentReference/66547`

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Provenance?_id=doc-881057

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

<%= authorization_types(practitioner: true, patient: false, system: true) %>

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Provenance/doc-881057

#### Response

<%= headers status: 200 %>
<%= json(:r4_provenance_entry) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Create

Create a new Provenance.

    POST /Provenance

### Authorization Types

<%= authorization_types(practitioner: true, patient: false, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', Accept: 'application/fhir+json', 'Content-Type': 'application/fhir+json'} %>

### Body Fields

<%= definition_table(:provenance, :create, :r4) %>

### Example

#### Request

    POST https://fhir-ehr.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Provenance

#### Body

<%= json(:r4_provenance_create) %>

<%= disclaimer %>

#### Response

<%= headers status: 201 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: text/html
Date: Tue, 31 Mar 2020 15:37:25 GMT
Etag: W/"881057"
Location: https://fhir-ehr.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Provenance/doc-881057
Last-Modified: Tue, 31 Mar 2020 15:37:25 GMT
Server-Response-Time: 296.405243
Status: 201 Created
Vary: Origin
X-Request-Id: 11111111111111111111111111111111
X-Runtime: 2.011826
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`reference`]: https://hl7.org/fhir/r4/search.html#reference
[`token`]: https://hl7.org/fhir/R4/search.html#token
[errors]: ../../#client-errors
[OperationOutcomes]: https://hl7.org/fhir/R4/operationoutcome.html
