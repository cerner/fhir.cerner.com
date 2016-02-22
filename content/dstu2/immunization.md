---
title: Immunization | FHIR DSTU 2 BALLOT API
---

# Immunization

* TOC
{:toc}

## Terminology Bindings

<%= terminology_table(:immunization, :dstu2) %>

## Search

Search for Immunizations that meet supplied query parameters:

    GET /Immunization?:parameters

### Parameters

 Name    | Required? | Type                                                           | Description
---------|-----------|----------------------------------------------------------------|---------------------------------------------------------
`patient`| Y |[`reference`](http://hl7.org/fhir/dstu2/search.html#reference)| The patient for the vaccination record. Example: `12345`

### Response

<%= headers 200 %>
<%= json(:dstu2_immunization_bundle) %>