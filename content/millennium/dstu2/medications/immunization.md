---
title: Immunization | DSTU 2 API
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

 Name      | Required? | Type          | Description
-----------|-----------|---------------|-----------------------------------------------------------------------------------------------------
 `patient` | Y         | [`reference`] | The patient for the vaccination record. Example: `12345`
 `date`    | N         | [`date`]      | Date range into which the immunization administration date falls. Must be prefixed by 'ge' or 'le'.

Notes:
 - The `date` parameter value should be prefixed once by 'ge' representing the earliest date, and once by 'le' representing the latest date. Examples: `date=ge2015-01-01&date=le2016-01-01`, `date=ge2015-01-01`, `date=le2016-01-01`

### Response

<%= headers status: 200 %>
<%= json(:dstu2_immunization_bundle) %>

## Retrieve by id

List an individual Immunization by its id:

    GET /Immunization/:id

### Response

<%= headers status: 200 %>
<%= json(:dstu2_immunization_1) %>

[`reference`]: http://hl7.org/fhir/dstu2/search.html#reference
[`date`]: http://hl7.org/fhir/DSTU2/search.html#date
