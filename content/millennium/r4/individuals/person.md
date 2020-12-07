---
title: Person | R4 API
---

# Person

* TOC
{:toc}

## Overview

The Person resource identifies an individual outside of a specific health care context providing a mechanism to link person resources across different facilities or organizations.

The following fields are returned if valued:

* [Person id](https://hl7.org/fhir/r4/resource-definitions.html#Resource.id){:target="_blank"}
* [Identifier (Cerner alias Federated Person Principal)](https://hl7.org/fhir/R4/person-definitions.html#Person.identifier){:target="_blank"}
* [Name](https://hl7.org/fhir/R4/person-definitions.html#Person.name){:target="_blank"}
* [Telecom](https://hl7.org/fhir/R4/person-definitions.html#Person.telecom){:target="_blank"}
* [Gender](https://hl7.org/fhir/R4/person-definitions.html#Person.gender){:target="_blank"}
* [Date of birth](https://hl7.org/fhir/R4/person-definitions.html#Person.birthDate){:target="_blank"}
* [Address](https://hl7.org/fhir/R4/person-definitions.html#Person.address){:target="_blank"}
* [Active](https://hl7.org/fhir/R4/person-definitions.html#Person.active){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:person, :r4) %>

## Search

Search for Persons that meet supplied query parameters:

    GET /Person?:parameters

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Parameters

 Name         | Required?                                    | Type      | Description
--------------|----------------------------------------------|-----------|------------------------------------------------------------------------------
 `_id`        | This, or any other required search parameter | [`token`] | The logical resource id associated with the resource.
 `identifier` | This or `_id`                                | [`token`] | The person identifier.  Example: `urn:oid:2.16.840.1.113883.3.13.6|01022228`

Notes:

* The value of the `identifier` parameter must include both a system and a code. Example: `identifier=urn:oid:2.16.840.1.113883.3.13.6|URN:CERNER:...:PI98N2FK5TN`

### Headers

 <%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Person?_id=12724067

#### Response

<%= headers status: 200 %>
<%= json(:r4_person_bundle) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual Person by its id:

    GET /Person/:id

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Person/12724067

#### Response

<%= headers status: 200 %>
<%= json(:r4_person_entry) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

### Person Combines Example

Cerner Millennium supports the ability to logically merge a person record into another person record when both records are describing the same person. This is known as a “person combine”. If necessary, this merging can later be undone by performing a “person uncombine”. When the requested person record has been combined into another record, an inactive Person entry will be returned which has a link to the current Person entry. Entries for combined patients will only be returned when retrieving the entries directly by id. They will not be returned when searching with other parameters. The ability to perform person combine or uncombine operations is not available through the Cerner Ignite platform.

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Person/12742633

#### Response

<%= headers status: 200 %>
<%= json(:r4_combined_person_entry) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`token`]: http://hl7.org/fhir/R4/search.html#token
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
