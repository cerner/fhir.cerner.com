---
title: DiagnosticReport | FHIR MAY 2015 BALLOT API
---

# DiagnosticReport

* TOC
{:toc}

## Search

Search for DiagnosticReports that meet supplied query parameters:

    GET /DiagnosticReport?:parameters

### Parameters

 Name            | Required? | Type                                                               | Description
-----------------|--------------------------------------------------------------------------------|---------------------------------------------------------
`patient`        | This or subject |[`reference`](http://www.hl7.org/FHIR/2015May/search.html#reference)| The subject of the report if a patient. Example: `12345`
`subject:Patient`| This or patient |[`reference`](http://www.hl7.org/FHIR/2015May/search.html#reference)| The subject (Patient) of the report. Example: `12345`

### Response

<%= headers 200 %>
<%= json(:may2015_diagnostic_report_bundle) %>
