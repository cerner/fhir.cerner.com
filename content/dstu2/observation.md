---
title: Observation | FHIR DSTU 2 API
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
`subject`|`reference`| The subject that the observation is about.
`code`|`string`| The code of the observation type. Example: `http://loinc.org|55284-4`
`patient`|`reference`| The subject that the observation is about (if patient).

### Response

<%= headers 200 %>
<%= json(:dstu2_observation_bundle) %>