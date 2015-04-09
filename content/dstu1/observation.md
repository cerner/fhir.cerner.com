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

Name | Type | Description
-----|------|--------------
`subject:Patient`|`string`| The subject that the observation is about. Example: `12345`
`name`|`string`| The name of the observation type. Example: `http://loinc.org|55284-4`


### Response

<%= headers 200 %>
<%= json(:observation_bundle) %>