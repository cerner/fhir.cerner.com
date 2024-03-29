---
title: DiagnosticReport | DSTU 2 API
---

# DiagnosticReport

* TOC
{:toc}

## Overview

The DiagnosticReport resource provides a set of information and interpretation following a diagnostic service or procedure such as a Radiology, Pathology, or Cardiology report. The DiagnosticReport resource will produce information about the diagnostic report itself and about the subject.

The information produced can include a mix of textual reports, images, and codes, depending on the type(s) of diagnostic services being retrieved. This resource currently only supports Radiology reports in the presented form of either PDF or HTML.

The following fields are returned if valued:

* [Diagnostic report id](http://hl7.org/fhir/dstu2/resource-definitions.html#Resource.id){:target="_blank"}
* [Report status](http://hl7.org/fhir/DSTU2/diagnosticreport-definitions.html#DiagnosticReport.status){:target="_blank"}
* [Report category](http://hl7.org/fhir/DSTU2/diagnosticreport-definitions.html#DiagnosticReport.category){:target="_blank"}
* [Code](http://hl7.org/fhir/DSTU2/diagnosticreport-definitions.html#DiagnosticReport.code){:target="_blank"}
* [Subject (patient)](http://hl7.org/fhir/DSTU2/diagnosticreport-definitions.html#DiagnosticReport.subject){:target="_blank"}
* [Patient encounter](http://hl7.org/fhir/DSTU2/diagnosticreport-definitions.html#DiagnosticReport.encounter){:target="_blank"}
* [Effective date/time](http://hl7.org/fhir/DSTU2/diagnosticreport-definitions.html#DiagnosticReport.effective_x_){:target="_blank"}
* [Issued date/time](http://hl7.org/fhir/DSTU2/diagnosticreport-definitions.html#DiagnosticReport.issued){:target="_blank"}
* [Performer (practitioner)](http://hl7.org/fhir/DSTU2/diagnosticreport-definitions.html#DiagnosticReport.performer){:target="_blank"}
* [Request (order)](http://hl7.org/fhir/DSTU2/diagnosticreport-definitions.html#DiagnosticReport.request){:target="_blank"}
* [Presented Form](http://hl7.org/fhir/DSTU2/diagnosticreport-definitions.html#DiagnosticReport.presentedForm){:target="_blank"}
  * [Content type](http://hl7.org/fhir/DSTU2/datatypes-definitions.html#Attachment.contentType){:target="_blank"}
  * [URL (fully qualified link to the document)](http://hl7.org/fhir/DSTU2/datatypes-definitions.html#Attachment.url){:target="_blank"}
  * [Title](http://hl7.org/fhir/DSTU2/datatypes-definitions.html#Attachment.title){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:diagnostic_report, :dstu2) %>

## Search

Search for DiagnosticReports that meet supplied query parameters:

    GET /DiagnosticReport?:parameters

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Parameters

  Name             | Required?       | Type          | Description
-------------------|-----------------|---------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 `patient`         | This or `subject` | [`reference`] | The subject of the report if a patient. Example: `12345`
 `subject:Patient` | This or `patient` | [`reference`] | The subject (Patient) of the report. Example: `12345`
 `date`            | N                 | [`date`]      | Date range into which the diagnostic report falls (effectiveDateTime). Example: `date=ge2020-01-01T08:00:00.000Z&date=lt2020-01-31T17:00:00.000Z`
 [`_count`]        | N                 | [`number`]    | The maximum number of results to return. Defaults to `10` and a maximum of `100` documents can be returned.

_Implementation Notes_

* When searching with the `date` parameter:
  * For a single `date` occurrence:
    * It must be provided with the `ge` prefix to imply a date range.
    * The `time` component is optional.
  * For two `date` occurences: 
    * It must be provided with `ge` and `lt` prefixes to search for report(s) within a specific range. 
    * The `time` component is optional for both parameters.

* If a DiagnosticReport references a PDF with URL sections, it may not be returned from the `Binary` resource. See the [Binary implementation notes].
* When requesting the presentedForm.url, the `Accept` header should be populated with the `presentedForm.contentType`. For more information, see the [Binary accept] documentation.

### Headers

 <%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/DiagnosticReport?patient=12724066&_count=10

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_diagnostic_report_bundle) %>

<%= disclaimer %>

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
