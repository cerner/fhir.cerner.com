---
title: Person | DSTU 2 API
---

# Person

* TOC
{:toc}

## Overview

The Person resource identifies an individual outside of a specific healthcare context and provides a mechanism to associate person resources across different facilities or organizations.

The following fields are returned if valued:

* [Person ID](https://hl7.org/fhir/dstu2/resource-definitions.html#Resource.id){:target="_blank"}
* [Identifier](https://hl7.org/fhir/DSTU2/person-definitions.html#Person.identifier){:target="_blank"}
* [Name](https://hl7.org/fhir/DSTU2/person-definitions.html#Person.name){:target="_blank"}
* [Telecom](https://hl7.org/fhir/DSTU2/person-definitions.html#Person.telecom){:target="_blank"}
* [Gender](https://hl7.org/fhir/DSTU2/person-definitions.html#Person.gender){:target="_blank"}
* [Date of birth](https://hl7.org/fhir/DSTU2/person-definitions.html#Person.birthDate){:target="_blank"}
* [Address](https://hl7.org/fhir/DSTU2/person-definitions.html#Person.address){:target="_blank"}
* [Active](https://hl7.org/fhir/DSTU2/person-definitions.html#Person.active){:target="_blank"}

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Terminology Bindings

<%= terminology_table(:person, :dstu2) %>

## Search

Search for persons that meet supplied query parameters.

    GET /Person?:parameters

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Parameters

 Name         | Required      | Type       | Description
--------------|---------------|------------|------------------------------------------------------------------------------------
 `_id`        | Conditionally | [`token`]  | The logical resource ID associated with the resource. This parameter is required if the `identifier` parameter is not used.
 `identifier` | Conditionally | [`token`]  | The person identifier. This parameter is required if the `_id` parameter is not used.

Notes:

- The `identifier` value must include both a system and a code. Example: `identifier=urn:oid:2.16.840.1.113883.3.13.6|URN:CERNER:...:PI98N2FK5TN`

### Headers

 <%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Person?identifier=urn%3Aoid%3A2.16.840.1.113883.6.1000%7C6931

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_person_bundle) %>

## Retrieve by ID

List an individual person by their ID.

    GET /Person/:id

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Person/12724067

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_person_entry) %>

### Person Combines Example

Oracle Health Millennium Platform supports the ability to logically merge a person record into another person record when both records are describing the same person. This merge is known as a person combine. If necessary, you can perform a person uncombine to undo the merge. When the requested person record is combined into another record, an inactive person entry is returned with a link to the current person entry. Entries for combined patients are only returned when retrieving the entries directly by ID. They are not returned when searching with other parameters.

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Person/12742633

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_combined_person_entry) %>

[`token`]: http://hl7.org/fhir/DSTU2/search.html#token
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
