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
* [Extensions including related person encounter and relationship level](#extensions){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:related_person, :r4) %>

## Extensions

* [Related Person Encounter]
* [Relationship Level]

### Custom Extensions

All URLs for custom extensions are defined as `https://fhir-ehr.cerner.com/r4/StructureDefinition/{id}`

 ID                         | Value\[x] Type      | Description
----------------------------|---------------------|----------------------------------------------------------------------------
 `related-person-encounter` | [`reference`]       | Reference to the Encounter associated to the encounter level RelatedPerson.
 `relationship-level`       | [`CodeableConcept`] | The resource's relationship to either patient or encounter.

## Search

Search for RelatedPersons that meet supplied query parameters:

    GET /RelatedPerson?:parameters
    
_Implementation Notes_

* Duplicate relationships will only be represented once.

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Parameters

 Name                  | Required?                                                | Type          | Description
-----------------------|----------------------------------------------------------|---------------|---------------------------------------------------------------------------------------------------------------
 `_id`                 | This or `patient` or `identifier` or `-encounter`        | [`token`]     | The logical resource id associated with the resource.
 `identifier`          | This or `_id` or `patient` or `-encounter`               | [`token`]     | A RelatedPerson identifier.
 `patient`             | This or `_id` or `identifier` or `-encounter`            | [`reference`] | A reference to a patient associated with the RelatedPerson. Example: `14067892`
 `-encounter`          | This or `_id` or `patient` or `identifier`               | [`reference`] | A reference to an encounter associated with the RelatedPerson. Example: `97697434`
`-relationship-level`  | no                                                       | [`token`]     | The level of relationship for the RelatedPerson. Example: `-relationship-level= http://hl7.org/fhir/resource-types|Patient`

Notes:

- When provided, the `identifier` query parameter must include both a system and a code. Example: `identifier=urn:oid:2.16.840.1.113883.3.13.6|RANDES011E8442-2E86-4A00-8394-EFC6A3434A8F`
- `-relationship-level` is required for `patient` and `identifier` searches
- `-relationship-level` can only be provided with `patient` or `identifier`
- `-relationship-level` can only be set to `Patient`

### Headers

<%= headers %>

### Example - Search by Patient

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/RelatedPerson?patient=12724066

#### Response

<%= headers status: 200 %>
<%= json(:r4_relatedperson_bundle) %>

### Example - Search by Encounter

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/RelatedPerson?-encounter=97697434

#### Response

<%= headers status: 200 %>
<%= json(:r4_relatedperson_encounter_bundle) %>

<%= disclaimer %>

#### Patient Authorization Request

### Example - Search by Patient

#### Request
    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/RelatedPerson?patient=166045489

#### Response

<%= headers status: 200 %>
<%= json(:r4_relatedperson_bundle_patient_access) %>
<%= disclaimer %>

### Example - Search by Encounter

#### Request
    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/RelatedPerson?-encounter=51678301

#### Response

<%= headers status: 200 %>
<%= json(:r4_relatedperson_encounter_bundle_patient_access) %>
<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual RelatedPerson by its id:

    GET /RelatedPerson/:id
    
_Implementation Notes_

* Duplicate relationships will only be represented once.

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Headers

<%= headers %>

### Example - Patient-level RelatedPerson

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/RelatedPerson/12724068-12724066

#### Response

<%= headers status: 200 %>
<%= json(:r4_relatedperson_entry) %>

### Example - Encounter-level RelatedPerson

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/RelatedPerson/E-12457994-97697434

#### Response

<%= headers status: 200 %>
<%= json(:r4_relatedperson_encounter_entry) %>

<%= disclaimer %>

#### Patient Authorization Request

### Example - Patient-level RelatedPerson

#### Request

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/RelatedPerson/166624790-166045489

#### Response

<%= headers status: 200 %>
<%= json(:r4_relatedperson_entry_patient_access) %>

### Example - Encounter-level RelatedPerson

#### Request

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/RelatedPerson/E-173417344-51678301

#### Response

<%= headers status: 200 %>
<%= json(:r4_relatedperson_encounter_entry_patient_access) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Create

Create a new Encounter-level RelatedPerson.

    POST /RelatedPerson

_Implementation Notes_

* Only the body fields mentioned below are supported.

### Authorization Types

<%= authorization_types(provider: true, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', 'Content-Type': 'application/fhir+json'} %>

### Body Field

<%= definition_table(:related_person, :create, :r4) %>

### Example

#### Request

    POST https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/RelatedPerson

#### Body

<%= json(:r4_relatedperson_create) %>

#### Response

<%= headers status: 201 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: text/html
Date: Wed, 27 Mar 2019 17:23:14 GMT
Etag: W/"0"
Location: https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/RelatedPerson/E-12747484-97939518
Last-Modified: Thu, 17 Dec 2020 16:37:42 GMT
Vary: Origin
X-Request-Id: 11111111111111111111111111111111
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Patch

Patch an existing Encounter-level RelatedPerson.

    PATCH /RelatedPerson/:id

_Implementation Notes_

* This implementation follows the [JSON Patch](https://tools.ietf.org/html/rfc6902) spec.
* Only operations on the paths listed below are supported.
* Only Encounter-level RelatedPersons may be patched. Patches are not currently supported for Patient-level RelatedPersons.

### Authorization Types

<%= authorization_types(provider: true, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', 'Accept': 'application/fhir+json',
                   'Content-Type': 'application/json-patch+json', 'If-Match': 'W/"&lt;Current version of the Related Person resource>"'} %>


### Patch Operations

<%= patch_definition_table(:related_person_patch, :r4) %>

### Example

#### Request

    PATCH https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/RelatedPerson/E-12467982-97731398

#### Body

<%= json(:r4_relatedperson_patch) %>

#### Response

<%= headers status: 200 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: text/html
Date: Tue, 26 Mar 2019 15:42:29 GMT
Etag: W/"7"
Last-Modified: Tue, 21 Jan 2020 15:57:25 GMT
Vary: Origin
X-Request-Id: 47306a14c8a2c3afd4ab85aa9594101d
</pre>

<%= disclaimer %>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`CodeableConcept`]: https://hl7.org/fhir/r4/datatypes.html#CodeableConcept
[`reference`]: https://hl7.org/fhir/R4/search.html#reference
[`token`]: https://hl7.org/fhir/R4/search.html#token
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
[Relationship Level]: #custom-extensions
[Related Person Encounter]: #custom-extensions
