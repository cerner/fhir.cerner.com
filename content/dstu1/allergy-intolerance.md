---
title: AllergyIntolerance | FHIR API
---

# AllergyIntolerance

* TOC
{:toc}

## Search

Search for AllergyIntolerances that meet supplied query parameters:

    GET /AllergyIntolerance?:parameters

### Parameters

Name | Type | Description
-----|------|--------------
`subject:Patient`|`string`| The patient who has the allergy or intolerance. Example: `12345`

### Response

<%= headers 200 %>
<%= json(:allergy_intolerance_bundle) %>