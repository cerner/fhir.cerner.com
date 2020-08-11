---
title: DocumentReference | R4 API
---

# DocumentReference

* TOC
{:toc}

## Overview

The DocumentReference resource is used to reference a clinical document for a patient within the health system. This resource supports returning a list of clinical documents, and a reference to retrieve a document as a PDF.

The following fields are returned if valued:

* [DocumentReference id](https://hl7.org/fhir/r4/resource-definitions.html#Resource.id){:target="_blank"}
* [Status]( https://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.status){:target="_blank"}
* [Document status](https://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.docStatus){:target="_blank"}
* [Document type](https://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.type){:target="_blank"}
* [Document category](https://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.category){:target="_blank"}
* [Subject (Patient)](https://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.subject){:target="_blank"}
* [Author](https://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.author){:target="_blank"}
* [Authenticator/verifying provider](https://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.authenticator){:target="_blank"}
* [Document description/title]( https://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.description){:target="_blank"}
* [Document Attachment](https://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.content.attachment){:target="_blank"}
    * [Attachment ContentType](https://hl7.org/fhir/r4/datatypes-definitions.html#Attachment.contentType){:target="_blank"}
    * [Created date/time](https://hl7.org/fhir/r4/datatypes-definitions.html#Attachment.creation){:target="_blank"}
    * [Title](https://hl7.org/fhir/r4/datatypes-definitions.html#Attachment.title){:target="_blank"}
    * [URL (fully qualified link to the document)](https://hl7.org/fhir/r4/datatypes-definitions.html#Attachment.url){:target="_blank"}
* [Patient encounter]( https://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.context.encounter){:target="_blank"}
* [Document period]( https://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.context.period){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:document_reference, :r4) %>

## Search

Search for DocumentReferences that meet supplied query parameters:

    GET /DocumentReference?:parameters

### Authorization Types

<%= authorization_types(practitioner: true, patient: false, system: true) %>

### Parameters

 Name                     | Required?          | Type          | Description
--------------------------|--------------------|---------------|----------------------------------------------------------------------------------------------------
 `_id`                    | This, or `patient` | [`token`]     | The logical resource id associated with the resource. Example: `12345`
 `patient`                | This, or `_id`     | [`reference`] | The specific patient to return DocumentReferences for. Example: `12345`
 `encounter`              | N                  | [`reference`] | The Encounter in which the document was created. May be a list separated by commas. Example: `123,456`
 `period`                 | N                  | [`date`]      | Time of service that is being documented. Must use the `ge` and `lt` prefixes. Example: `lt2017-01-5`
 `type`                   | N                  | [`token`]     | The type of document. May be a list separated by commas. Example: `http://loinc.org|11488-4`
 `_count`                 | N                  | [`number`]    | The maximum number of results to include in a page. Example: `50`

_Implementation Notes_

* When searching with the `period` parameter:
    * It must be provided twice, once with the `ge` prefix, and once with the `lt` prefix.
    * If one `period` parameter includes a time, both must include a time.

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference?patient=12724066

#### Response

<%= headers status: 200 %>
<%= json(:R4_DOCUMENT_REFERENCE_BUNDLE) %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual DocumentReference by its id:

    GET /DocumentReference/:id

### Authorization Types

<%= authorization_types(practitioner: true, patient: false, system: true) %>

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference/197292845

#### Response

<%= headers status: 200 %>
<%= json(:R4_DOCUMENT_REFERENCE) %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`token`]: https://hl7.org/fhir/R4/search.html#token
[`reference`]: https://hl7.org/fhir/R4/search.html#reference
[`date`]: https://hl7.org/fhir/R4/search.html#date
[`number`]: https://hl7.org/fhir/R4/search.html#number
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
