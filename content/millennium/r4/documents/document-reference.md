---
title: DocumentReference | R4 API
---

# DocumentReference

* TOC
{:toc}

## Overview

The DocumentReference resource is used to reference a clinical document for a patient within the health system. This resource supports returning a list of clinical documents, and a reference to retrieve a document as a pdf.

The following fields are returned if valued:

* [DocumentReference id](https://hl7.org/fhir/r4/resource-definitions.html#Resource.id){:target="_blank"}
* [Status]( http://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.status){:target="_blank"}
* [Document status](http://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.docStatus){:target="_blank"}
* [Document type](http://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.type){:target="_blank"}
* [Document category](http://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.category){:target="_blank"}
* [Subject (Patient)](http://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.subject){:target="_blank"}
* [Author](http://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.author){:target="_blank"}
* [Authenticator/verifying provider](http://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.authenticator){:target="_blank"}
* [Document description/title]( http://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.description){:target="_blank"}
* [Attachment ContentType, Created date/time, Title, and URL (fully qualified link to the document)](http://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.content.attachment){:target="_blank"}
* [Patient encounter]( http://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.context.encounter){:target="_blank"}
* [Document period]( http://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.context.period){:target="_blank"}

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
 `_id`                    | This, or `patient` | [`token`]     | The logical resource id associated with the resource.
 `patient`                | This, or `_id`     | [`reference`] | The specific patient to return DocumentReferences for. Example: `12345`
 `encounter`              | N                  | [`reference`] | The Encounter in which the document was created. May be a list separated by commas. Example: `123,456`
 `period`                 | N                  | [`date`]      | Time of service that is being documented. Must use the ge and lt prefixes. Example: `lt2017-01-5`
 `type`                   | N                  | [`token`]     | The type of document. May be a list separated by commas. Example: `http://loinc.org|11488-4`.
 `_count`                 | N                  | [`number`]    | The maximum number of results to include in a page. Example: `50`

- The searching with the `period` parameter:
  - It must be provided twice, once with the `ge` prefix, and once with the `lt` prefix.
  - If one `period` parameter includes a time, both must include a time.

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/DocumentReference?patient=4478007

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

    GET https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/DocumentReference/13307291

#### Response

<%= headers status: 200 %>
<%= json(:R4_DOCUMENT_REFERENCE) %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`token`]: http://hl7.org/fhir/R4/search.html#token
[`reference`]: http://hl7.org/fhir/R4/search.html#reference
[`date`]: http://hl7.org/fhir/R4/search.html#date
[`number`]: http://hl7.org/fhir/R4/search.html#number
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
