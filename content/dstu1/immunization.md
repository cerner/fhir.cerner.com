---
title: Immunization | FHIR API
---

# Immunization

* TOC
{:toc}

## Search

Search for Immunizations that meet supplied query parameters:

    GET /Immunization?:parameters

### Parameters

Name | Type | Description
-----|------|--------------
`subject:Patient`|`string`| The subject of the vaccination event / refusal. Example: `12345`

### Response

<%= headers 200 %>
<%= json(:immunization_bundle) %>