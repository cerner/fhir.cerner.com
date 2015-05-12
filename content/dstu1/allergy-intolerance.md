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

 Name            | Type                                                                           | Description
-----------------|--------------------------------------------------------------------------------|-----------------------------------------------------------------
`subject:Patient`|[`reference`](http://www.hl7.org/implement/standards/fhir/search.html#reference)| The patient who has the allergy or intolerance. Example: `12345`

### Response

<%= headers 200 %>
<%= json(:dstu1_allergy_intolerance_bundle) %>