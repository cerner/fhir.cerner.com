---
title: Provenance | R4 API
---

# Provenance

* TOC
{:toc}

## Overview

The Provenance resource tracks the source of external data, and is used to assess the trustworthiness and reliability of a resource. Sources can be an organization author or organization transmitter.  Target references a Resource and ID which this Provenance entry is related to. Entities are Continuity of Care Documents (CCDs) generated through the `DocumentReference` resource.

The following [HL7® FHIR® US Core Implementation Guide STU 4.0.0](https://hl7.org/fhir/us/core/STU4/){:target="_blank"} Profiles are supported by this resource:

* [US Core Provenance Profile](https://hl7.org/fhir/us/core/STU4/StructureDefinition-us-core-provenance.html){:target="_blank"}

The following fields are returned if valued:

* [Provenance ID](https://hl7.org/fhir/R4/resource-definitions.html#Resource.id){:target="_blank"}
* [Target](https://hl7.org/fhir/R4/provenance-definitions.html#Provenance.target){:target="_blank"}
* [Recorded](https://hl7.org/fhir/R4/provenance-definitions.html#Provenance.recorded){:target="_blank"}
* [Agent type (author or transmitter)](https://hl7.org/fhir/R4/provenance-definitions.html#Provenance.agent.type){:target="_blank"}
* [Agent role (source or informant)](https://hl7.org/fhir/R4/provenance-definitions.html#Provenance.agent.role){:target="_blank"}
* [Agent who (Practitioner, Device, or Organization)](https://hl7.org/fhir/R4/provenance-definitions.html#Provenance.agent.who){:target="_blank"}
* [Agent on behalf of (only when Agent.who is of type Practitioner)](https://hl7.org/fhir/R4/provenance-definitions.html#Provenance.agent.onBehalfOf){:target="_blank"}
* [Entity role](https://hl7.org/fhir/R4/provenance-definitions.html#Provenance.entity.role){:target="_blank"}
* [Entity what (Continuity of Care DocumentReference ID)](https://hl7.org/fhir/R4/provenance-definitions.html#Provenance.entity.what){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:provenance, :r4) %>

## Search

Search for Provenances that meet supplied query parameters:

    GET /Provenance?:parameters

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Parameters

 Name      | Required?     | Type          | Description
-----------|---------------|---------------|-----------------------------------------------------------------------------------------------------------------------------------------------
 `_id`     | Conditionally | [`token`]     | The logical resource ID associated with the resource. It may be a list separated by commas. This parameter is required if the `target` parameter is not used. Example: `doc-1234`
 `target`  | Conditionally | [`reference`] | Target Reference(s), which can be version-specific. The `AllergyIntolerance`, `CarePlan`, `CareTeam`, `Condition`, `DiagnosticReport`, `DocumentReference`, `Encounter`, `Goal`, `Immunization`, `MedicationRequest`, `Observation`, `Patient`, and `Procedure` resources are supported. Example: `DocumentReference/66547`

_Implementation Notes_

- When searching with the `_id` parameter
  - It must not be provided with any other parameters.

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Provenance?_id=doc-881057

#### Response

<%= headers status: 200 %>
<%= json(:r4_provenance_bundle) %>

<%= disclaimer %>

#### Patient Authorization Request

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Provenance?_id=all-1595070

#### Response

<%= headers status: 200 %>
<%= json(:r4_provenance_patient_access_entry) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by ID

List an individual Provenance by its ID:

    GET /Provenance/:id

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Provenance/doc-881057

#### Response

<%= headers status: 200 %>
<%= json(:r4_provenance_entry) %>

<%= disclaimer %>

#### Patient Authorization Request

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Provenance/all-1595070

#### Response

<%= headers status: 200 %>
<%= json(:r4_provenance_patient_access_bundle) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Create

Create a new Provenance.

    POST /Provenance

_Implementation Notes_

* Only the body fields mentioned below are supported. Unsupported fields will be ignored, or can result in errors.
* The `Provenance.write` scopes must be provided in order to create a Provenance with an Observation Measurement target.

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
opc-request-id: /11111111111111111111111111111111/11111111111111111111111111111111
X-Request-Id: 11111111-1111-1111-1111-111111111111
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`reference`]: https://hl7.org/fhir/r4/search.html#reference
[`token`]: https://hl7.org/fhir/R4/search.html#token
[errors]: ../../../#client-errors
[OperationOutcomes]: ../../../#operation-outcomes
