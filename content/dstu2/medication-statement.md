---
title: MedicationStatement | FHIR DSTU 2 API
---

# MedicationStatement

* TOC
{:toc}

## Search

Search for MedicationStatements that meet supplied query parameters:

    GET /MedicationStatement?:parameters

### Parameters

 Name                                                   | Required? | Type                                                          | Description
--------------------------------------------------------|---------------------------------------------------------------|-----------------------------------------------------------------------------------
`patient`                                               | Y         | [`reference`](http://hl7.org/fhir/DSTU2/search.html#reference) | The identifier of a patient to list statements for. Example: `12345`
`status`                                                | N         | [`token`](http://hl7.org/fhir/DSTU2/search.html#token)         | The status of the medication statement, may be a list separated by commas.  Note, `intended` status is not supported. Example: `active,completed`
`effectivedate`                                         | N         | [`date`](http://hl7.org/fhir/DSTU2/search.html#date)           | The date-time which should fall within the period the patient was taking (or not taking) the medication. Must be prefixed by 'ge'  Example: `ge2015-01-01`
[`_count`](http://hl7.org/fhir/DSTU2/search.html#count) | N         | [`number`](http://hl7.org/fhir/DSTU2/search.html#number)       | The maximum number of results to return. Defaults to `50`.

### Response

<%= headers 200 %>
<%= json(:dstu2_medication_statement_bundle) %>
