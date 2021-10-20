---
title: Practitioner | R4 API
---

# Practitioner

* TOC
{:toc}

## Overview

The Practitioner Resource provides information about a person formally involved in the care of a patient on behalf of a healthcare facility. Practitioners include but are not limited to physicians, nurses, pharmacists, therapists, technologists, and social workers.

Not all practitioners have access to the EHR but can be referenced by other resources to indicate they are in some way involved in a patient's care.

The following fields are returned if valued:

* [Practitioner id](https://hl7.org/fhir/r4/resource-definitions.html#Resource.id){:target="_blank"}
* [Identifiers/Aliases such as NPI and DEA](https://hl7.org/fhir/r4/practitioner-definitions.html#Practitioner.identifier){:target="_blank"}
* [Active (true/false)](https://hl7.org/fhir/r4/practitioner-definitions.html#Practitioner.active){:target="_blank"}
* [Name](https://hl7.org/fhir/r4/practitioner-definitions.html#Practitioner.name){:target="_blank"}
* [Telecom Information (secure email and phone)](https://hl7.org/fhir/r4/practitioner-definitions.html#Practitioner.telecom){:target="_blank"}
* [Address (Provider and System Authorization Only)](https://hl7.org/fhir/r4/practitioner-definitions.html#Practitioner.address){:target="_blank"}
* [Gender](https://hl7.org/fhir/r4/practitioner-definitions.html#Practitioner.gender){:target="_blank"}
* [Qualification](https://hl7.org/fhir/r4/practitioner-definitions.html#Practitioner.qualification){:target="_blank"}
* [Is Physician Extension](#extensions)

## Terminology Bindings

<%= terminology_table(:practitioner, :r4) %>

## Extensions

* [Is Physician]

### Custom Extensions

All URLs for custom extensions are defined as `https://fhir-ehr.cerner.com/dstu2/StructureDefinition/{id}`

 ID                    | Value\[x] Type                                              | Description
-----------------------|----------------|------------------------------------------------------------------------------------------------
 `is-physician`        | [`Boolean`](https://hl7.org/fhir/r4/datatypes.html#boolean) | Indication of whether the provider is a physician or not.

## Search

Search for Practitioners that meet supplied query parameters:

    GET /Practitioner?:parameters

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Parameters

 Name        | Required?                                                  | Type       | Description
-------------|------------------------------------------------------------|------------|------------------------------------------------------------------------
 `_id`       | This or any other required search parameter                | [`token`]  | The logical resource id associated with the resource.
 `identifier`| This or any other required search parameter                | [`token`]  | A practitioner identifier/alias. Example: `http://hl7.org/fhir/sid/us-npi|4326587548`
 `family`    | This or any other required search parameter                | [`string`] | The start of the family name of the practitioner. Example: `Smith`
 `given`     | This and `family`, or any other required search parameter  | [`string`] | The start of the given name of the practitioner. Example: `John`
 `name`      | This or any other required search parameter                | [`string`] | The start of the first, middle or last name of the practitioner. Example: `John` or `Smith`
 `active`    | This or any other required search parameter                | [`token`]  | true or false. Example: `active=true`
 [`_count`]  | No                                                         | [`number`]    | Number of results per page.

 Notes:

* When provided, the `identifier` query parameter must include both a system and a code.
* The `given` parameter may only be provided if `family` parameter is provided.
* The `name` parameter must have at least 2 characters
* When provided, the `active` query parameter must not include system. It accepts only true or false code.

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Practitioner?_id=109413936

#### Response

<%= headers status: 200 %>
<%= json(:r4_practitioner_bundle) %>

<%= disclaimer %>

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Practitioner?active=true

#### Response

<%= headers status: 200 %>
<%= json(:r4_practitioner_active_bundle) %>

<%= disclaimer %>

#### Patient Authorization Request

    GET https://fhir-myrecord.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Practitioner?_id=109413936

#### Response

<%= headers status: 200 %>
<%= json(:r4_practitioner_patient_access_bundle) %>

<%= disclaimer %>
### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual Practitioner by its id:

    GET /Practitioner/:id

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Practitioner/4122622

#### Response

<%= headers status: 200 %>
<%= json(:r4_practitioner_entry) %>

<%= disclaimer %>
#### Patient Authorization Request

    GET https://fhir-myrecord.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Practitioner/109413936

#### Response

<%= headers status: 200 %>
<%= json(:r4_practitioner_patient_access_entry) %>

<%= disclaimer %>
### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Create

Create an individual Practitioner that can be referenced by other resources. This API is not used for user provisioning.

    POST /Practitioner

### Authorization Types

<%= authorization_types(provider: true, patient: false, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token&gt;', 'Content-Type': 'application/fhir+json'} %>

### Body Fields

<%= definition_table(:practitioner, :create, :r4) %>

### Example

#### Request

    POST https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Practitioner

#### Body

<%= json(:r4_practitioner_create) %>

#### Response

<%= headers status: 201 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: application/fhir+json
Date: Mon, 09 Dec 2019 18:57:39 GMT
Etag: W/"0"
Last-Modified: Mon, 09 Dec 2019 18:57:39 GMT
Location: https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Practitioner/7118008
Vary: Origin
X-Request-Id: 9d3aecfa-c846-4ce2-825a-7ba2fce4813f
</pre>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`token`]: http://hl7.org/fhir/r4/search.html#token
[`string`]: https://hl7.org/fhir/R4/search.html#string
[`_count`]: http://hl7.org/fhir/r4/search.html#count
[`number`]: http://hl7.org/fhir/r4/search.html#number
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
[Is Physician]: #custom-extensions
