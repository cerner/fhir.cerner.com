---
title: Practitioner | DSTU 2 API
---

# Practitioner

* TOC
{:toc}

## Overview

The Practitioner resource provides information about a person formally involved in the care of a patient on behalf of a healthcare facility. Practitioners include but are not limited to physicians, nurses, pharmacists, therapists, technologists, and social workers.

The following fields are returned if valued:

  * [Practitioner ID](https://hl7.org/fhir/DSTU2/resource-definitions.html#Resource.id){:target="_blank"}
  * [Identifier](https://hl7.org/fhir/DSTU2/practitioner-definitions.html#Practitioner.identifier){:target="_blank"}
  * [Active](https://hl7.org/fhir/DSTU2/practitioner-definitions.html#Practitioner.active){:target="_blank"}
  * [Name](https://hl7.org/fhir/DSTU2/practitioner-definitions.html#Practitioner.name){:target="_blank"}
  * [Contact](https://hl7.org/fhir/DSTU2/practitioner-definitions.html#Practitioner.telecom){:target="_blank"}
  * [Address](https://hl7.org/fhir/DSTU2/practitioner-definitions.html#Practitioner.address){:target="_blank"}
  * [Gender](https://hl7.org/fhir/DSTU2/practitioner-definitions.html#Practitioner.gender){:target="_blank"}

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Terminology Bindings

<%= terminology_table(:practitioner, :dstu2) %>

## Search

Search for practitioners that meet supplied query parameters.

    GET /Practitioner?:parameters

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Parameters

 Name  | Required? | Type      | Description
-------|-----------|-----------|-------------------------------------------------------
 `_id` | Yes       | [`token`] | The logical resource ID associated with the resource.

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Practitioner?_id=4122622

#### Response

<%= headers status: 200 %> <%= json(:dstu2_practitioner_bundle) %>

## Retrieve by ID

List an individual practitioner by their ID.

    GET /Practitioner/:id

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Practitioner/4122622

#### Response

<%= headers status: 200 %> <%= json(:dstu2_practitioner_entry) %>

[`token`]: http://hl7.org/fhir/DSTU2/search.html#token
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
