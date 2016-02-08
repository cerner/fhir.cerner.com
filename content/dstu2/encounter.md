---
title: Encounter | FHIR DSTU 2 BALLOT API
---

# Encounter

* TOC
{:toc}

## Search

Search for Encounters that meet supplied query parameters:

    GET /Encounter?:parameters

### Parameters

 Name    | Required? | Type                                                           | Description
---------|-----------|----------------------------------------------------------------|-------------------------------------------------------
`patient`| This or _id |[`reference`](http://hl7.org/fhir/dstu2/search.html#reference)| The patient present at the encounter. Example: `12345`
`_id`    | This or patient |[`id`](http://hl7.org/fhir/dstu2/datatypes.html#id) | A single or comma separated list of Encounter ids. Example: `45678,89765`

### Response

<%= headers 200 %>
<%= json(:dstu2_encounter_bundle) %>

## Retrieve by id

List an individual Encounter by its id:

    GET /Encounter/:id

### Response

<%= headers 200 %>
<%= json(:dstu2_encounter) %>