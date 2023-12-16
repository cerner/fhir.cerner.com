---
title: Practitioner | R4 API
---

# Practitioner

* TOC
{:toc}

## Overview

The Practitioner resource provides information about a person formally involved in the care of a patient on behalf of a healthcare facility. Practitioners include but are not limited to physicians, nurses, pharmacists, therapists, technologists, and social workers.

Not all practitioners have access to the electronic health record (EHR) but can be referenced by other resources to indicate that they are in some way involved in a patient's care.

* This resource supports the following [HL7 FHIR US Core Implementation Guide STU 4.0.0](https://hl7.org/fhir/us/core/STU4/){:target="_blank"} profiles:

  * [US Core Practitioner Profile](https://hl7.org/fhir/us/core/STU4/StructureDefinition-us-core-practitioner.html){:target="_blank"}

The following fields are returned if valued:

* [Practitioner ID](https://hl7.org/fhir/r4/resource-definitions.html#Resource.id){:target="_blank"}
* [Identifier](https://hl7.org/fhir/r4/practitioner-definitions.html#Practitioner.identifier){:target="_blank"}
* [Active](https://hl7.org/fhir/r4/practitioner-definitions.html#Practitioner.active){:target="_blank"}
* [Name](https://hl7.org/fhir/r4/practitioner-definitions.html#Practitioner.name){:target="_blank"}
* [Telecom](https://hl7.org/fhir/r4/practitioner-definitions.html#Practitioner.telecom){:target="_blank"}
* [Address](https://hl7.org/fhir/r4/practitioner-definitions.html#Practitioner.address){:target="_blank"}
* [Gender](https://hl7.org/fhir/r4/practitioner-definitions.html#Practitioner.gender){:target="_blank"}
* [Qualification](https://hl7.org/fhir/r4/practitioner-definitions.html#Practitioner.qualification){:target="_blank"}
* [Is Physician Extension](#extensions)

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Terminology Bindings

<%= terminology_table(:practitioner, :r4) %>

## Custom Extensions

All URLs for custom extensions are defined as `https://fhir-ehr.cerner.com/r4/StructureDefinition/{id}`

| ID             | Value\[x] Type                                              | Description                                                   |
|----------------|-------------------------------------------------------------|---------------------------------------------------------------|
| `is-physician` | [`boolean`] | Indicates whether the practitioner is a physician. |

## Search

Search for practitioners that meet supplied query parameters.

    GET /Practitioner?:parameters

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Parameters

| Name         | Required?     | Type       | Description                                                                                                                                                                   |
|--------------|---------------|------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `_id`        | Conditionally | [`token`]  | The logical resource ID associated with the resource. This parameter is required if `identifier`, `family`, `name`, or `active` is not used. Example: `12345`              |
| `identifier` | Conditionally | [`token`]  | The practitioner identifier. This parameter is required if `_id`, `family`, `name`, or `active` is not used.                                                                 |
| `family`     | Conditionally | [`string`] | The start of the family name of the practitioner. This parameter is required if `_id`, `identifier`, `name`, or `active` is not used. Example: `Smith`                     |
| `name`       | Conditionally | [`string`] | The start of the given name or the family name of the practitioner. This parameter is required if `_id`, `identifier`, `family,` or `active` is not used. Example: `Riley` |
| `active`     | Conditionally | [`token`]  | The indication of whether this practitioner's record is in active use. This parameter is required if `_id`, `identifier`, `family`, or `name` is not used. Example: `active=true`            |
| `given`      | No            | [`string`] | The start of the given name of the practitioner. Example: `John`                                                                                                              |
| [`_count`]   | No            | [`number`] | The number of results per page.                                                                                                                                                   |

Notes:

* The `identifier` query parameter must include both a system and a code.
  * Example: `http://hl7.org/fhir/sid/us-npi|4326587548`
* If the `given` parameter is provided, the `family` parameter is required.
* The `name` parameter must have at least two characters.
* The `active` query parameter must not include a system, and the code must be `true` or `false`. Example: `active=false`

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Practitioner?identifier=http%3A%2F%2Fhl7.org%2Ffhir%2Fsid%2Fus-npi%7C1111111111

#### Response

<%= headers status: 200 %>
<%= json(:r4_practitioner_bundle) %>

## Retrieve by ID

List an individual practitioner by their ID.

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

## Create

Create an individual practitioner that can be referenced by other resources. This API is not used for user provisioning.

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
opc-request-id: /D14ABE620D8D0DBB4D5970966EED037B/6A781B5941C550741C19E1AE1E795C33
</pre>

[`token`]: https://hl7.org/fhir/r4/search.html#token
[`string`]: https://hl7.org/fhir/R4/search.html#string
[`boolean`]: https://hl7.org/fhir/r4/datatypes.html#boolean
[`_count`]: https://hl7.org/fhir/r4/search.html#count
[`number`]: https://hl7.org/fhir/r4/search.html#number
[errors]: ../../../#client-errors
[OperationOutcomes]: ../../../#operation-outcomes
