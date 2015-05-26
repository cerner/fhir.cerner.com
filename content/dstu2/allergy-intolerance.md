---
title: AllergyIntolerance | FHIR DSTU 2 API
---

# AllergyIntolerance

* TOC
{:toc}

## Search

Search for AllergyIntolerances that meet supplied query parameters:

    GET /AllergyIntolerance?:parameters

### Parameters

 Name    | Type                                                           | Description
---------|----------------------------------------------------------------|---------------------------------------------
`patient`|[`reference`](http://hl7.org/fhir/2015May/search.html#reference)| Who the sensitivity is for. Example: `12345`

### Response

<%= headers 200 %>
<%= json(:dstu2_allergy_intolerance_bundle) %>