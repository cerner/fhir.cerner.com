---
title: Immunization | FHIR DSTU 2 API
---

# Immunization

* TOC
{:toc}

## Search

Search for Immunizations that meet supplied query parameters:

    GET /Immunization?:parameters

### Parameters

 Name    | Type                                                           | Description
---------|----------------------------------------------------------------|---------------------------------------------------------
`patient`|[`reference`](http://hl7.org/fhir/2015May/search.html#reference)| The patient for the vaccination record. Example: `12345`
`subject`|[`reference`](http://hl7.org/fhir/2015May/search.html#reference)| The patient for the vaccination record. Example: `12345`

### Response

<%= headers 200 %>
<%= json(:dstu2_immunization_bundle) %>