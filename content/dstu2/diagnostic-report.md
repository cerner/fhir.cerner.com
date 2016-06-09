---
title: DiagnosticReport | DSTU 2 API
---

# DiagnosticReport

* TOC
{:toc}

## Search

Search for DiagnosticReports that meet supplied query parameters:

    GET /DiagnosticReport?:parameters

### Parameters

 Name             | Required?       | Type                                                          | Description
------------------|-----------------|---------------------------------------------------------------|---------------------------------------------------------
`patient`         | This or subject |[`reference`](http://hl7.org/fhir/dstu2/search.html#reference) | The subject of the report if a patient. Example: `12345`
`subject:Patient` | This or patient |[`reference`](http://hl7.org/fhir/dstu2/search.html#reference) | The subject (Patient) of the report. Example: `12345`

### Response

<%= headers 200 %>
<%= json(:dstu2_diagnostic_report_bundle) %>