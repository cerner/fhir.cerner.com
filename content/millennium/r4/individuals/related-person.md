---
title: RelatedPerson | R4 API
---

# RelatedPerson

* TOC
{:toc}

## Overview

The RelatedPerson resource provides information about a person who is involved in the care of a patient but has no formal responsibility. RelatedPersons typically have a personal relationship with the patient such as a spouse, relative, friend, guardian, or attorney. RelatedPersons are commonly a source of information about a patient.

The distinction between Practitioner and RelatedPerson is a practitioner cares for multiple patients on behalf of a healthcare facility where a RelatedPerson performs care tasks for a specific patient and is not associated with any healthcare facility.

The following fields are returned if valued:

* [RelatedPerson id](https://hl7.org/fhir/R4/resource-definitions.html#Resource.id){:target="_blank"}
* [RelatedPerson Identifier](https://hl7.org/fhir/R4/relatedperson-definitions.html#RelatedPerson.identifier){:target="_blank"}
* [Active](https://hl7.org/fhir/R4/relatedperson-definitions.html#RelatedPerson.active){:target="_blank"}
* [Patient](https://hl7.org/fhir/R4/relatedperson-definitions.html#RelatedPerson.patient){:target="_blank"}
* [Relationship](https://hl7.org/fhir/R4/relatedperson-definitions.html#RelatedPerson.relationship){:target="_blank"}
* [Related person's name](https://hl7.org/fhir/R4/relatedperson-definitions.html#RelatedPerson.name){:target="_blank"}
* [Telecom information (may include phone and email)](https://hl7.org/fhir/R4/relatedperson-definitions.html#RelatedPerson.telecom){:target="_blank"}
* [Gender (administrative)](https://hl7.org/fhir/R4/relatedperson-definitions.html#RelatedPerson.gender){:target="_blank"}
* [Date of birth](https://hl7.org/fhir/R4/relatedperson-definitions.html#RelatedPerson.birthDate){:target="_blank"}
* [Address](https://hl7.org/fhir/R4/relatedperson-definitions.html#RelatedPerson.address){:target="_blank"}
* [Communication (preferred language)](https://hl7.org/fhir/r4/relatedperson-definitions.html#RelatedPerson.communication){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:related_person, :r4) %>

## Extensions

* [Relationship Level]

### Custom Extensions

All URLs for custom extensions are defined as `https://fhir-ehr.cerner.com/r4/StructureDefinition/{id}`

 ID                   | Value\[x] Type      | Description
----------------------|---------------------|----------------------------------------------------------------
 `relationship-level` | [`CodeableConcept`] | The resource's relationship to either patient or encounter.

## Search

Search for RelatedPersons that meet supplied query parameters:

    GET /RelatedPerson?:parameters

### Authorization Types

<%= authorization_types(provider: true, patient: false, system: true) %>

### Parameters

 Name         | Required?                                         | Type          | Description
--------------|---------------------------------------------------|---------------|--------------------------------------------------------------------------------------------------------------------------------------------
 `_id`        | This or `patient` or `identifier` | [`token`]     | The logical resource id associated with the resource.
 `identifier` | This or `_id` or `patient`        | [`token`]     | A RelatedPerson identifier.
 `patient`    | This or `_id` or `identifier`     | [`reference`] | A reference to a patient associated with the RelatedPerson. Example: `14067892`

Notes:

- When provided, the `identifier` query parameter must include both a system and a code. Example: `identifier=urn:oid:2.16.840.1.113883.3.13.6|RANDES011E8442-2E86-4A00-8394-EFC6A3434A8F`

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/RelatedPerson?patient=12724066

#### Response

<%= headers status: 200 %>
<%= json(:r4_relatedperson_bundle) %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual RelatedPerson by its id:

    GET /RelatedPerson/:id

### Authorization Types

<%= authorization_types(provider: true, patient: false, system: true) %>

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/RelatedPerson/12724068-12724066

#### Response

<%= headers status: 200 %>
<%= json(:r4_relatedperson_entry) %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`CodeableConcept`]: https://hl7.org/fhir/r4/datatypes.html#CodeableConcept
[`reference`]: https://hl7.org/fhir/R4/search.html#reference
[`token`]: https://hl7.org/fhir/R4/search.html#token
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
[Relationship Level]: #custom-extensions
