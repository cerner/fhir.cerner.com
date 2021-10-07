---
title: DiagnosticReport | R4 API
---

# DiagnosticReport

* TOC
{:toc}

## Overview

The DiagnosticReport resource includes information that is typically provided by a diagnostic service when investigations are complete. The information includes laboratory, microbiology, results reporting, and clinical notes exchange. Clinical notes include the three categories of Cardiology, Pathology, and Radiology.

Soarian Clinicals<sup>®</sup> supports a read-only Application Programming Interface (API). This API accepts `GET` and `POST` based [search] and `GET` based [read] interactions. The response represents the most current information about the patient that is charted in Soarian Clinicals<sup>®</sup> at the time of the query. 

The search results include the following fields if they contain values:

* [Id](https://hl7.org/fhir/r4/resource-definitions.html#Resource.id){:target="_blank"}
* [Status](https://hl7.org/fhir/r4/diagnosticreport-definitions.html#DiagnosticReport.status){:target="_blank"}
* [Category](https://hl7.org/fhir/r4/diagnosticreport-definitions.html#DiagnosticReport.category){:target="_blank"}
* [Code](https://hl7.org/fhir/r4/diagnosticreport-definitions.html#DiagnosticReport.code){:target="_blank"}
* [Subject(Patient only)](https://hl7.org/fhir/r4/diagnosticreport-definitions.html#DiagnosticReport.subject){:target="_blank"}
* [Encounter](https://hl7.org/fhir/r4/diagnosticreport-definitions.html#DiagnosticReport.encounter){:target="_blank"}
* [Effective[x]](https://hl7.org/fhir/r4/diagnosticreport-definitions.html#DiagnosticReport.effective_x_){:target="_blank"}
	* [Effective date time](https://hl7.org/fhir/r4/diagnosticreport-definitions.html#DiagnosticReport.effective_date_time){:target="_blank"}
	* [Effective period](https://hl7.org/fhir/r4/diagnosticreport-definitions.html#DiagnosticReport.effective_period){:target="_blank"}
* [Issued](https://hl7.org/fhir/r4/diagnosticreport-definitions.html#DiagnosticReport.issued){:target="_blank"}
* [Performer](https://hl7.org/fhir/r4/diagnosticreport-definitions.html#DiagnosticReport.performer){:target="_blank"}
* [Result](https://hl7.org/fhir/r4/diagnosticreport-definitions.html#DiagnosticReport.result){:target="_blank"}
* [Presented form](https://hl7.org/fhir/r4/diagnosticreport-definitions.html#DiagnosticReport.presentedForm){:target="_blank"}


## Terminology Bindings

<%= terminology_table(:soarian_diagnosticreport, :r4) %>

## Search

Search for DiagnosticReport resources that meet the specified query parameters:

	GET /DiagnosticReport?:parameters

### Authorization Types

<%= authorization_types(provider: true, patient: true)%>

### Parameters

 Name         | Required?          | Type          | Description
--------------|--------------------|---------------|--------------
 `_id`        | This, or `patient` | [`token`]     | The logical resource ID associated with the resource.
 `patient`    | This, or `_id`     | [`reference`] | The patient that the diagnostic report is about. 
 `category`   | No                 | [`token`]     | The category of the diagnostic report.
 `code`       | No                 | [`token`]     | The code of the diagnostic report. 
 `encounter`  | No                 | [`reference`] | The encounter associated with the care plan record. 
 `date`       | No                 | [`date`]      | Date range into which the diagnostic report falls. Example: `date=gt2014-09-24 or date=lt2015-09-24T12:00:00.000Z`
 `_count`     | No                 | [`count`]     | The maximum number of resources returned in a page.
 `_revincude` | No                 | [`_revinclude`]| A request to include any Provenance resource in the bundle that refers to a DiagnosticReport resource in the search results. Only supported with Provenance.

 Notes

*	The `date` parameter may be provided up to two times, and must use the `eq`, `ge`, `gt`, `le`, or `lt` prefixes. When a value is provided without a prefix, an implied `eq` prefix is used. When provided twice, the lower value must have a `ge` or `gt` prefix and the higher value must have an `le` or `lt` prefix.

### Headers

<%= headers fhir_json: true %>

### Example Search by Patient

#### Request

	GET https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/DiagnosticReport?patient=A879904FD2FE4B2D90C89FDA84E1285F

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_DXREPORT_SEARCH_BY_PATIENT) %>

Note: The examples provided here are non-normative and replaying them in the public sandbox is not guaranteed to yield the results shown on the site.

### Errors

*   The common [errors] and [OperationOutcomes] may be returned.

### Example Search by ID

#### Request

	GET https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/DiagnosticReport?_id=A879904FD2FE4B2D90C89FDA84E1285F.RAD.18221

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_DXREPORT_SEARCH_BY_ID) %>

Note: The examples provided here are non-normative and replaying them in the public sandbox is not guaranteed to yield the results shown on the site.

### Errors

*	The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by ID	

List an individual DiagnosticReport resource by its ID:

	GET /DiagnosticReport/:id

### Authorization Types

<%= authorization_types(provider: true, patient: true)%>

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

	GET https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/DiagnosticReport/A879904FD2FE4B2D90C89FDA84E1285F.RAD.18221

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_DXREPORT_READ_BY_ID) %>

Note: The examples provided here are non-normative and replaying them in the public sandbox is not guaranteed to yield the results shown on the site.

### Errors

*   The common [errors] and [OperationOutcomes] may be returned.


[search]: https://www.hl7.org/fhir/http.html#search
[read]: https://www.hl7.org/fhir/http.html#read
[`date`]: https://hl7.org/fhir/R4/search.html#date
[`token`]: https://hl7.org/fhir/R4/search.html#token
[`reference`]: https://hl7.org/fhir/r4/search.html#reference
[`count`]: https://hl7.org/fhir/r4/search.html#count 
[`_revinclude`]: https://www.hl7.org/fhir/search.html#revinclude
[errors]: ../../#client-errors
[OperationOutcomes]: https://hl7.org/fhir/R4/operationoutcome.html