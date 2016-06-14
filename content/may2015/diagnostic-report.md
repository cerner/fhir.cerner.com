---
title: DiagnosticReport | MAY 2015 BALLOT API
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
`date`| N |[`date`](http://hl7.org/fhir/2015May/search.html#date) | The time or time-period the observed values are related to (diagnosticDateTime). If only start date is provided, must be prefixed by '>='. If range is provided, start date should be prefixed by '>=' and end date should be prefixed by '<'. EG: `date=>=2014-01-01T12:00:00.000Z` `&date=<2015-01-01T12:00:00.000Z`

### Response

<%= headers 200 %>
<%= json(:may2015_diagnostic_report_bundle) %>
