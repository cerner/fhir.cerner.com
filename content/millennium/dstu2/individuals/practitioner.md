---
title: Practitioner | DSTU 2 API
---

# Practitioner

* TOC
{:toc}

## Overview

The Practitioner Resource provides information about a person formally involved in the care of a patient on behalf of a healthcare facility. Practitioners include and are not limited to physicians, nurses, pharmacists, therapists, technologists, and social workers.

The following fields are returned if valued:

  * [Practitioner id](http://hl7.org/fhir/DSTU2/resource-definitions.html#Resource.id){:target="_blank"}
  * [Identifiers/Aliases such as NPI and DEA](http://hl7.org/fhir/DSTU2/practitioner-definitions.html#Practitioner.identifier){:target="_blank"}
  * [Active (true/false)](http://hl7.org/fhir/DSTU2/practitioner-definitions.html#Practitioner.active){:target="_blank"}
  * [Name](http://hl7.org/fhir/DSTU2/practitioner-definitions.html#Practitioner.name){:target="_blank"}
  * [Contact (secure email and phone)](http://hl7.org/fhir/DSTU2/practitioner-definitions.html#Practitioner.telecom){:target="_blank"}
  * [Address](http://hl7.org/fhir/DSTU2/practitioner-definitions.html#Practitioner.address){:target="_blank"}
  * [Gender](http://hl7.org/fhir/DSTU2/practitioner-definitions.html#Practitioner.gender){:target="_blank"}
  * [Date of birth](http://hl7.org/fhir/DSTU2/practitioner-definitions.html#Practitioner.birthDate){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:practitioner, :dstu2) %>

## Search

Search for Practitioners that meet supplied query parameters:

    GET /Practitioner?:parameters

### Authorization Types

<%= authorization_types(practitioner: true, patient: false, system: true) %>

### Parameters

 Name         | Required?                                         | Type       | Description
--------------|---------------------------------------------------|------------|-------------------------------------------------------------------------------------
`_id`         | Yes                                               | [`token`]  | The logical resource id associated with the resource.

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Practitioner?_id=1478007

#### Response
<%= headers status: 200 %> <%= json(:dstu2_practitioner_bundle) %>

### Errors

The common [errors] may be returned.

## Retrieve by id

List an individual Practitioner by its id:

    GET /Practitioner/:id

### Authorization Types

<%= authorization_types(practitioner: true, patient: false, system: true) %>

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Practitioner/1478007

#### Response

<%= headers status: 200 %> <%= json(:dstu2_practitioner_entry) %>

### Errors

The common [errors] may be returned.

[`token`]: http://hl7.org/fhir/DSTU2/search.html#token
[errors]: ../../#client-errors
