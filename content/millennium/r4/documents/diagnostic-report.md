---
title: DiagnosticReport | R4 API
---

# DiagnosticReport

* TOC
{:toc}

## Overview

The DiagnosticReport resource typically provides a textual set of information and interpretation after performing a
diagnostic service or procedure such as a Radiology or Pathology report.  

This resource currently only supports Radiology reports in the presented form of either PDF or HTML.

The following fields are returned if valued:

* [Diagnostic report id](http://hl7.org/fhir/r4/resource-definitions.html#Resource.id){:target="_blank"}
* [Diagnostic report identifier](http://hl7.org/fhir/r4/diagnosticreport-definitions.html#DiagnosticReport.identifier){:target="_blank"}
* [Diagnostic report based on (service request/order)](http://hl7.org/fhir/r4/diagnosticreport-definitions.html#DiagnosticReport.basedOn){:target="_blank"}
* [Report status](http://hl7.org/fhir/r4/diagnosticreport-definitions.html#DiagnosticReport.status){:target="_blank"}
* [Report category such as Radiology](http://hl7.org/fhir/r4/diagnosticreport-definitions.html#DiagnosticReport.category){:target="_blank"}
* [Code](http://hl7.org/fhir/r4/diagnosticreport-definitions.html#DiagnosticReport.code){:target="_blank"}
* [Subject (patient)](http://hl7.org/fhir/r4/diagnosticreport-definitions.html#DiagnosticReport.subject){:target="_blank"}
* [Patient encounter](http://hl7.org/fhir/r4/diagnosticreport-definitions.html#DiagnosticReport.encounter){:target="_blank"}
* [Effective period](http://hl7.org/fhir/r4/diagnosticreport-definitions.html#DiagnosticReport.effective_x_){:target="_blank"}
* [Issued date/time](http://hl7.org/fhir/r4/diagnosticreport-definitions.html#DiagnosticReport.issued){:target="_blank"}
* [Results Interpreter (practitioner)](http://hl7.org/fhir/r4/diagnosticreport-definitions.html#DiagnosticReport.resultsInterpreter){:target="_blank"}
* [ContentType and URL (fully qualified link to the document](http://hl7.org/fhir/r4/diagnosticreport-definitions.html#DiagnosticReport.presentedForm){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:diagnostic_report, :r4) %>

## Search

Search for DiagnosticReports that meet supplied query parameters:

    GET /DiagnosticReport?:parameters

_Implementation Notes_

* If a DiagnosticReport references a PDF with URL sections, it may not be returned from the Binary resource. See the
[Binary implementation notes].
* When requesting the presentedForm.url, the Accept header should be populated with the presentedForm.contentType. For more
information, see the [Binary accept] documentation.

### Authorization Types

<%= authorization_types(practitioner: true, patient: true, system: true) %>

### Parameters

  Name             | Required?       | Type          | Description
-------------------|-----------------|---------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 `patient`         | This or _id        | [`reference`] | The subject of the report if a patient. Example: `12345`
 `encounter`       | N                  | [`reference`] | The Encounter in which the document was created. May be a list separated by commas. Example: `123,456`
 `_id`             | This, or `patient` | [`token`]  | The logical resource id associated with the resource. Example: `12345`
 `date`            | N                  | [`date`]      | Date range into which the diagnostic report falls (effectiveDateTime). Must be present once and prefixed by 'ge' or present twice and prefixed by 'ge' / 'lt'. EG: `date=ge2014-09-24T12:00:00.000Z` `&date=lt2015-10-24T12:00:00.000Z`
 [`_count`]        | N                  | [`number`]    | The maximum number of results to return per page.
 `code`            | N                  | [`token`]     | A code that describes this diagnostic report such as LOINC. Example:
 `category`        | N                  | [`token`]     | A code that classifies the diagnostic report service that created the report. Example:

### Headers

 <%= headers %>

### Example

#### Request

    GET https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/DiagnosticReport?patient=1316020&_count=10

#### Response

<%= headers status: 200 %>
<%= json(:r4_diagnostic_report_bundle) %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`reference`]: http://hl7.org/fhir/dstu2/search.html#reference
[`date`]: http://hl7.org/fhir/dstu2/search.html#date
[`_count`]: http://hl7.org/fhir/dstu2/search.html#count
[`number`]: http://hl7.org/fhir/dstu2/search.html#number
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
[Binary accept]: ../../infrastructure/binary/#headers
[Binary implementation notes]: ../../infrastructure/binary/#retrieve-by-id
