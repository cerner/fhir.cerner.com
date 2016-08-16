---
title: Encounter | DSTU 2 API
---

# Encounter

* TOC
{:toc}

## Terminology Bindings

<%= terminology_table(:encounter, :dstu2) %>

### Contained Location Bindings

<%= terminology_table(:encounter_contained_location, :dstu2) %>

## Search

Search for Encounters that meet supplied query parameters:

    GET /Encounter?:parameters

_Implementation Notes_

* The [Encounter.hospitalization.destination] will be returned as a reference to a [contained] location resource.
* The [Encounter.location.location] may be returned as a reference to a [contained] location resource.

### Parameters

 Name     | Required?       | Type          | Description
----------|-----------------|---------------|-------------------------------------------------------
`_id`     | This or patient | [`token`]     | The logical resource id associated with the Encounter. Example: `7891`
`patient` | This or _id     | [`reference`] | The patient present at the encounter. Example: `12345`

### Response

<%= headers 200 %>
<%= json(:dstu2_encounter_bundle) %>

## Retrieve by id

List an individual Encounter by its id:

    GET /Encounter/:id

_Implementation Notes_

* The [Encounter.hospitalization.destination] will be returned as a reference to a [contained] location resource.
* The [Encounter.location.location] may be returned as a reference to a [contained] location resource.

### Response

<%= headers 200 %>
<%= json(:dstu2_encounter) %>

[contained]: http://hl7.org/fhir/DSTU2/references.html#contained
[Encounter.hospitalization.destination]: http://hl7.org/fhir/DSTU2/encounter-definitions.html#Encounter.location.location
[Encounter.location.location]: http://hl7.org/fhir/DSTU2/encounter-definitions.html#Encounter.location.location
[`reference`]: http://hl7.org/fhir/DSTU2/search.html#reference
[`token`]: http://hl7.org/fhir/DSTU2/search.html#token
