---
title: Observation | FHIR MAY 2015 BALLOT API
---

# Observation

* TOC
{:toc}

## Search

Search for labs, vitals, and alcohol/tobacco use Observations that meet supplied query parameters:

    GET /Observation?:parameters

### Parameters

 Name            | Type                                                           | Description
-----------------|----------------------------------------------------------------|-------------------------------------------------------
`patient`        |[`reference`](http://hl7.org/fhir/2015May/search.html#reference)| The subject that the observation is about (if patient).
`subject:Patient`|[`reference`](http://hl7.org/fhir/2015May/search.html#reference)| The subject (Patient) that the observation is about.

### Response

<%= headers 200 %>
<%= json(:may2015_observation_bundle) %>
