---
title: DiagnosticReport | DSTU 2 API
---

# DiagnosticReport

* TOC
{:toc}

## Terminology Bindings

<%= terminology_table(:diagnostic_report, :dstu2) %>

## Search

Search for DiagnosticReports that meet supplied query parameters:

    GET /DiagnosticReport?:parameters

### Parameters

 Name             | Required?       | Type                                                          | Description
------------------|-----------------|---------------------------------------------------------------|---------------------------------------------------------
`patient`         | This or subject |[`reference`](http://hl7.org/fhir/dstu2/search.html#reference) | The subject of the report if a patient. Example: `12345`
`subject:Patient` | This or patient |[`reference`](http://hl7.org/fhir/dstu2/search.html#reference) | The subject (Patient) of the report. Example: `12345`
`date`            | N               | [`date`]      | Date range into which the diagnostic report falls (effectiveDateTime). Must be present once and prefixed by 'ge' or present twice and prefixed by 'ge' / 'lt'. EG: `date=ge2014-09-24T12:00:00.000Z` `&date=lt2015-10-24T12:00:00.000Z`
[`_count`]        | N               | [`number`]    | The maximum number of results to return per page.

### Response

<%= headers 200 %>
<%= json(:dstu2_diagnostic_report_bundle) %>

[`date`]: http://hl7.org/fhir/dstu2/search.html#date
[`number`]: http://hl7.org/fhir/dstu2/search.html#number
[`_count`]: http://hl7.org/fhir/dstu2/search.html#count
