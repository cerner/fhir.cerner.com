---
title: RelatedPerson | DSTU 2 API
---

# RelatedPerson

* TOC
{:toc}

## Overview

The RelatedPerson resource provides information about a person who is involved in the care of a patient but has no formal responsibility. RelatedPersons typically have a personal relationship with the patient such as a spouse, relative, friend, guardian, or attorney. RelatedPersons are commonly a source of information about a patient.

The distinction between Practitioner and RelatedPerson is a practitioner cares for multiple patients on behalf of a healthcare facility where a RelatedPerson performs care tasks for a specific patient and is not associated with any healthcare facility.

The following fields are returned if valued:

* [RelatedPerson id](http://hl7.org/fhir/dstu2/resource-definitions.html#Resource.id){:target="_blank"}
* [Identifier (Cerner alias Federated Person Principal)](http://hl7.org/fhir/DSTU2/relatedperson-definitions.html#RelatedPerson.identifier){:target="_blank"}
* [Patient](http://hl7.org/fhir/DSTU2/relatedperson-definitions.html#RelatedPerson.patient){:target="_blank"}
* [Relationship](http://hl7.org/fhir/DSTU2/relatedperson-definitions.html#RelatedPerson.relationship){:target="_blank"}
* [Related person's name](http://hl7.org/fhir/DSTU2/relatedperson-definitions.html#RelatedPerson.name){:target="_blank"}
* [Telecom (phone and email)](http://hl7.org/fhir/DSTU2/relatedperson-definitions.html#RelatedPerson.telecom){:target="_blank"}
* [Gender](http://hl7.org/fhir/DSTU2/relatedperson-definitions.html#RelatedPerson.gender){:target="_blank"}
* [Date of birth](http://hl7.org/fhir/DSTU2/relatedperson-definitions.html#RelatedPerson.birthDate){:target="_blank"}
* [Address](http://hl7.org/fhir/DSTU2/relatedperson-definitions.html#RelatedPerson.address){:target="_blank"}
* [Beginning and end date (time period the relationship is valid)](http://hl7.org/fhir/DSTU2/relatedperson-definitions.html#RelatedPerson.period){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:related_person, :dstu2) %>

## Search

Search for RelatedPersons that meet supplied query parameters:

    GET /RelatedPerson?:parameters

### Authorization Types

<%= authorization_types(practitioner: true, patient: true, system: true) %>

### Parameters

 Name         | Required?                                         | Type          | Description
--------------|---------------------------------------------------|-----------------------------------------------------------------------------------------------------------
 `_id`        | No, if populated all other parameters are ignored | [`token`]     | The logical resource id associated with the resource.
 `identifier` | Yes, if neither `_id` nor `patient` are set       | [`token`]     | A RelatedPerson identifier.
 `patient`    | Yes, if neither `_id` nor `identifier` are set    | [`reference`] | A reference to a patient related which the RelatedPerson is associated. Example: `14067892`

Notes:

- `identifier` value must include both a system and a code. Example: `identifier=urn:oid:2.16.840.1.113883.3.13.6|URN:CERNER:...:PI98N2FK5TN`

### Headers

 <%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/RelatedPerson?identifier=urn%3Aoid%3A2.16.840.1.113883.3.13.6%7Curn%3Acerner%3Aidentity-federation%3Arealm%3A687f29dd-69dd-4de5-acb1-fd8a2241ef3a%3Aprincipal%3AEC4Ax54P8GI

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_relatedperson_bundle) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual RelatedPerson by its id:

    GET /RelatedPerson/:id

### Authorization Types

<%= authorization_types(practitioner: true, patient: true, system: true) %>

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/RelatedPerson?identifier=urn:oid:2.16.840.1.113883.3.13.6|URN:CERNER:IDENTITY-FEDERATION:REALM:E8A84236-C258-4952-98B7-A6FF8A9C587A-CH:PRINCIPAL:332TE8FP7VD3RT4C

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_relatedperson_entry) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`reference`]: http://hl7.org/fhir/DSTU2/search.html#reference
[`token`]: http://hl7.org/fhir/DSTU2/search.html#token
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
