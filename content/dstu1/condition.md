---
title: Condition | FHIR API
---

# Condition

* TOC
{:toc}

## Search

Search for Conditions that meet supplied query parameters:

    GET /Condition?:parameters

### Parameters

Name | Type | Description
-----|------|--------------
`subject:Patient`|`string`| The patient who has the condition. Example: `12345`

### Response

<%= headers 200 %>
<%= json(:condition_bundle) %>