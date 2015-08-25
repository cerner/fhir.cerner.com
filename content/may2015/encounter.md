---
title: Encounter | FHIR MAY 2015 BALLOT API
---

# Encounter

* TOC
{:toc}

## Search

Search for Encounters that meet supplied query parameters:

    GET /Encounter?:parameters

### Parameters

 Name    | Type                                                           | Description
---------|----------------------------------------------------------------|-------------------------------------------------------
`patient`|[`reference`](http://hl7.org/fhir/2015May/search.html#reference)| The patient present at the encounter. Example: `12345`

### Response

<%= headers 200 %>
<%= json(:may2015_encounter_bundle) %>

## Retrieve by id

List an individual Encounter by its id:

    GET /Encounter/:id

### Response

<%= headers 200 %>
<%= json(:may2015_encounter) %>