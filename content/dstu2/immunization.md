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
-----------|-----------|---------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 `patient` | Y         | [`reference`] | The patient for the vaccination record. Example: `12345`
 `date`    | N         | [`date`]      | Date range into which the immunization administration date falls. Must be prefixed by 'ge' or 'le'. Single dates are treated as implied ranges. EG: `date=ge2014-09-24` `&date=le2015-09-24`

### Response

<%= headers 200 %>
<%= json(:dstu2_immunization_bundle) %>

## Retrieve by id

List an individual Immunization by its id:

    GET /Immunization/:id

### Response

<%= headers 200 %>
<%= json(:dstu2_immunization_1) %>

[`reference`]: http://hl7.org/fhir/dstu2/search.html#reference
[`date`]: http://hl7.org/fhir/DSTU2/search.html#date
