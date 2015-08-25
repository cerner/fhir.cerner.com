---
title: Condition | FHIR MAY 2015 BALLOT API
---

# Condition

* TOC
{:toc}

## Search

Search for Conditions that meet supplied query parameters:

    GET /Condition?:parameters

### Parameters

 Name    | Type                                                           | Description
---------|----------------------------------------------------------------|----------------------------------------------------
`patient`|[`reference`](http://hl7.org/fhir/2015May/search.html#reference)| The patient who has the condition. Example: `12345`
`subject`|[`reference`](http://hl7.org/fhir/2015May/search.html#reference)| The patient who has the condition. Example: `12345`

### Response

<%= headers 200 %>
<%= json(:may2015_condition_bundle) %>