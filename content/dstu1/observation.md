---
title: Observation | FHIR API
---

# Observation

* TOC
{:toc}

## Search

Search for labs, vitals, and alcohol/tobacco use Observations that meet supplied query parameters:

    GET /Observation?:parameters

### Parameters

 Name            | Type                                                                           | Description
-----------------|--------------------------------------------------------------------------------|------------------------------------------------------------
`subject:Patient`|[`reference`](http://www.hl7.org/implement/standards/fhir/search.html#reference)| The subject that the observation is about. Example: `12345`


### Response

<%= headers 200 %>
<%= json(:dstu1_observation_bundle) %>