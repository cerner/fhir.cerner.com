---
title: DiagnosticReport | FHIR API
---

# DiagnosticReport

* TOC
{:toc}

## Search

Search for DiagnosticReports that meet supplied query parameters:

    GET /DiagnosticReport?:parameters

### Parameters

Name | Type | Description
-----|------|--------------
`subject:Patient`|`string`| The subject of the report. Example: `12345`

### Response

<%= headers 200 %>
<%= json(:diagnostic_report_bundle) %>