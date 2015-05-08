---
title: DiagnosticReport | FHIR DSTU 2 API
---

# DiagnosticReport

* TOC
{:toc}

## Search

Search for DiagnosticReports that meet supplied query parameters:

    GET /DiagnosticReport?:parameters

### Parameters

 Name            | Type                                                               | Description
-----------------|--------------------------------------------------------------------|---------------------------------------------------------
`patient`        |[`reference`](http://www.hl7.org/FHIR/2015May/search.html#reference)| The subject of the report if a patient. Example: `12345`
`subject:Patient`|[`reference`](http://www.hl7.org/FHIR/2015May/search.html#reference)| The subject (Patient) of the report. Example: `12345`

### Response

<%= headers 200 %>
<%= json(:dstu2_diagnostic_report_bundle) %>
