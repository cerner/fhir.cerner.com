---
title: DiagnosticReport | R4 API
---

# DiagnosticReport

<%= beta_tag %>

* TOC
{:toc}

## Overview
The DiagnosticReport resource typically provides a textual set of information and interpretation after performing a diagnostic service or procedure such as a Radiology or Pathology or Cardiology report. A diagnostic report is the set of information that is typically provided by a diagnostic service when investigations are complete. The information includes a mix of atomic results, text reports, images, and codes. The DiagnosticReport resource has information about the diagnostic report itself, and about the subject and, in the case of laboratory tests, the specimen of the report. Report conclusions can be expressed as a simple text blob, structured coded data or as an attached fully formatted report such as a PDF.

* The following [HL7® FHIR® US Core Implementation Guide STU 4.0.0](https://hl7.org/fhir/us/core/STU4/){:target="_blank"} Profiles are supported by this resource:

  * [US Core DiagnosticReport Profile for Laboratory Results Reporting](https://hl7.org/fhir/us/core/STU4/StructureDefinition-us-core-diagnosticreport-lab.html){:target="_blank"}
  * [US Core DiagnosticReport Profile for Report and Note exchange](https://hl7.org/fhir/us/core/STU4/StructureDefinition-us-core-diagnosticreport-note.html){:target="_blank"}

The following fields are returned if valued:

* [Id](http://hl7.org/fhir/resource-definitions.html#Resource.id){:target="_blank"}
* [Identifier](http://hl7.org/fhir/diagnosticreport-definitions.html#DiagnosticReport.identifier){:target="_blank"}
* [BasedOn](http://hl7.org/fhir/diagnosticreport-definitions.html#DiagnosticReport.basedOn++){:target="_blank"}
  * [Reference](http://hl7.org/fhir/references.html#Reference){:target="_blank"} ([ServiceRequest](http://hl7.org/fhir/servicerequest.html){:target="_blank"})
* [Status](http://hl7.org/fhir/diagnosticreport-definitions.html#DiagnosticReport.status){:target="_blank"}
* [Category](http://hl7.org/fhir/diagnosticreport-definitions.html#DiagnosticReport.category){:target="_blank"}
* [Code](http://hl7.org/fhir/diagnosticreport-definitions.html#DiagnosticReport.code){:target="_blank"}
* [Subject](http://hl7.org/fhir/diagnosticreport-definitions.html#DiagnosticReport.subject){:target="_blank"}
  * [Reference](http://hl7.org/fhir/references.html#Reference){:target="_blank"} ([Patient](http://hl7.org/fhir/patient.html){:target="_blank"})
* [Encounter](http://hl7.org/fhir/diagnosticreport-definitions.html#DiagnosticReport.encounter){:target="_blank"}
* [Effective](http://hl7.org/fhir/diagnosticreport-definitions.html#DiagnosticReport.effective_x_){:target="_blank"}
    * [Date Time](http://hl7.org/fhir/R4/datatypes.html#dateTime){:target="_blank"}
    * [Period](http://hl7.org/fhir/R4/datatypes.html#Period){:target="_blank"}
* [Issued date/time](http://hl7.org/fhir/diagnosticreport-definitions.html#DiagnosticReport.issued){:target="_blank"}
* [Performer](http://hl7.org/fhir/diagnosticreport-definitions.html#DiagnosticReport.performer){:target="_blank"}
  * [Reference](http://hl7.org/fhir/references.html#Reference){:target="_blank"} ([Practitioner](https://www.hl7.org/fhir/us/core/StructureDefinition-us-core-practitioner.html){:target="_blank"})
  * [Reference](http://hl7.org/fhir/references.html#Reference){:target="_blank"} ([Organization](https://www.hl7.org/fhir/us/core/StructureDefinition-us-core-organization.html){:target="_blank"})

* [Result Interpreter](http://hl7.org/fhir/diagnosticreport-definitions.html#DiagnosticReport.resultsInterpreter){:target="_blank"}
  * [Reference](http://hl7.org/fhir/references.html#Reference){:target="_blank"} ([Practitioner](http://hl7.org/fhir/practitioner.html){:target="_blank"})
  * [Reference](http://hl7.org/fhir/references.html#Reference){:target="_blank"} ([Organization](http://hl7.org/fhir/organization.html){:target="_blank"})
* [Result](http://hl7.org/fhir/diagnosticreport-definitions.html#DiagnosticReport.result){:target="_blank"}
* [Presented Form](https://www.hl7.org/fhir/diagnosticreport-definitions.html#DiagnosticReport.presentedForm){:target="_blank"}
    * [Content Type](https://www.hl7.org/fhir/datatypes-definitions.html#Attachment.contentType)
    * [URL](https://www.hl7.org/fhir/datatypes-definitions.html#Attachment.url)
    * [Title](https://www.hl7.org/fhir/datatypes-definitions.html#Attachment.title)
    * [Creation](https://www.hl7.org/fhir/datatypes-definitions.html#Attachment.creation)
* [Conclusion Code](https://hl7.org/fhir/diagnosticreport-definitions.html#DiagnosticReport.conclusionCode){:target="_blank"}

## Terminology Bindings
<%= terminology_table(:diagnostic_report, :r4) %>

## Search Parameters

<%= beta_tag(action: true) %>


### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Parameters

 Name             | Required?         | Type          | Description
------------------|-------------------|---------------|-----------------------------------------------------------------------------------------------------------------------------------------
 `_id`            | This or `patient` | [`token`]     | The logical resource id associated with the resource. Example: `12345`
 `patient`        | This or `_id`     | [`reference`] | The subject of the report if a patient. Example: `12345`
 `encounter`      | N                 | [`reference`] | The Encounter when the order was made. Must represent an Encounter resource. May include a single or comma separated list of references. Example: `encounter=1621910`
 `date`           | N                 | [`date`]      | Date range into which the diagnostic report falls (effectiveDateTime). Either 1 or 2 date/time can be given. Example: `date=lt2017-01-5`
 `_count`         | N                 | [`number`]    | The maximum number of results to return per page. Example: `50`
 `category`       | N                 | [`token`]     | The diagnostic discipline/department created the report. Example: `{{*[http://loinc.org\\\|P7839-6* or +*LAB*(For micro/Gen lab reports)+}}\\|http://loinc.org/]`
 `code`           | N                 | [`token`]     | The code for the report, as opposed to codes for the atomic results, which are the names on the observation resource referred to from the result. Example: `*[http://loinc.org\\\|630-4*\\|http://loinc.org/]`
 `_revinclude`    | No                | [`token`]     | Provenance resource entries to be returned as part of the bundle. Example: `_revinclude=Provenance:target`

_Implementation Notes_

* When searching with the `date` parameter:
  * It must be provided once or twice, with or without prefixes.
  * If time is provided, it must be provided consistently.

* When searching with the `encounter` parameter:
  * Patient level documents are filtered out from responses when the encounter id is zero/blank.

* The `_revinclude` parameter may be provided once with the value `Provenance:target`. Example: `_revinclude=Provenance:target`

* The `_revinclude` parameter may be provided with the `_id/patient` parameter. Example: `_id=214938095&_revinclude=Provenance:target`

* When `_revinclude` is provided in a request to the closed endpoint, the OAuth2 token must include the `user/Provenance.read` scope. Currently `patient/Provenance.read` is not supported and hence `_revinclude` cannot be utilised for patient persona.

The common [errors] and [OperationOutcomes] may be returned.

[`token`]: https://hl7.org/fhir/R4/search.html#token
[`reference`]: https://hl7.org/fhir/R4/search.html#reference
[`date`]: https://hl7.org/fhir/R4/search.html#date
[`number`]: https://hl7.org/fhir/R4/search.html#number
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
[Update documentation]: https://www.hl7.org/fhir/r4/http.html#update

### Headers

<%= headers %>

## Search by Id

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>


### Headers

<%= headers %>
### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DiagnosticReport?_id=196151517,198381928

### Response

<%= headers status: 200 %>
<%= json(:R4_DIAGNOSTIC_REPORT_SEARCH_BY_ID) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Search by revinclude

<%= beta_tag(action: true) %>

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>


### Headers

<%= headers %>
### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DiagnosticReport?_id=196151517,198381928&_revinclude=Provenance:target

### Response

<%= headers status: 200 %>
<%= json(:R4_DIAGNOSTIC_REPORT_SEARCH_BY_REVINCLUDE) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Read by id

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>


### Headers

<%= headers %>
### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DiagnosticReport/196151517

### Response

<%= headers status: 200 %>
<%= json(:R4_DIAGNOSTIC_REPORT_READ_BY_ID) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.
