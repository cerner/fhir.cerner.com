---
title: DocumentReference | R4 API
---

# DocumentReference

* TOC
{:toc}

## Overview

The DocumentReference resource is used to reference a clinical document for a patient within the health system. This resource supports reading Continuity of Care Documents (CCD), returning a list of clinical documents, and a reference to retrieve a document as a PDF. When retrieving document links and metadata, this resource will refer to the [`Binary`] resource for downloading the complete document. 

Additionally, this resource supports writing and updating documents. 
For fields supported on write or update operations, see the [Create](#create) and [Update](#update) sections of this page.

The following [HL7® FHIR® US Core Implementation Guide STU 4.0.0](https://hl7.org/fhir/us/core/STU4/){:target="_blank"} Profiles are supported by this resource:

* [US Core DocumentReference Profile](http://hl7.org/fhir/us/core/STU4/StructureDefinition-us-core-documentreference.html){:target="_blank"}

The following fields are returned if valued for clinical documents:

* [DocumentReference id](https://hl7.org/fhir/r4/resource-definitions.html#Resource.id){:target="_blank"}
* [Status]( https://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.status){:target="_blank"}
* [Document status](https://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.docStatus){:target="_blank"}
* [Document type](https://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.type){:target="_blank"}
* [Document category](https://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.category){:target="_blank"}
* [Subject (Patient)](https://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.subject){:target="_blank"}
* [Created Date](http://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.date){:target="_blank"}
* [Author](https://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.author){:target="_blank"}
  * [Reference](https://hl7.org/fhir/r4/references.html#Reference){:target="_blank"} 
  * ([Practitioner](https://hl7.org/fhir/r4/practitioner.html){:target="_blank"})
* [Authenticator/verifying provider](https://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.authenticator){:target="_blank"}
* [Document Attachment](https://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.content.attachment){:target="_blank"}
  * [Attachment ContentType](https://hl7.org/fhir/r4/datatypes-definitions.html#Attachment.contentType){:target="_blank"}
  * [Created date/time](https://hl7.org/fhir/r4/datatypes-definitions.html#Attachment.creation){:target="_blank"}
  * [Title](https://hl7.org/fhir/r4/datatypes-definitions.html#Attachment.title){:target="_blank"}
  * [URL (fully qualified link to the document)](https://hl7.org/fhir/r4/datatypes-definitions.html#Attachment.url){:target="_blank"}
* [Document Format](http://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.content.format){:target="_blank"}
* [Patient encounter]( https://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.context.encounter){:target="_blank"}
  * [Reference](https://hl7.org/fhir/r4/references.html#Reference){:target="_blank"} ([Encounter](https://hl7.org/fhir/r4/encounter.html){:target="_blank"})
* [Document period]( https://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.context.period){:target="_blank"}
* [Custodian]( https://www.hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.custodian){:target="_blank"}
* [Related](https://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.context.related){:target="_blank"}

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Terminology Bindings

<%= terminology_table(:document_reference, :r4) %>

## Search

Search for DocumentReferences that meet supplied query parameters:

    GET /DocumentReference?:parameters

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Parameters

 Name          | Required?          | Type          | Description
---------------|--------------------|---------------|--------------------------------------------------------------------------------------------------------
 `_id`         | This, or `patient` | [`token`]     | The logical resource id associated with the resource. Example: `12345`
 `patient`     | This, or `_id`     | [`reference`] | The specific patient to return Document(s) for. Example: `12345`
 `encounter`   | N                  | [`reference`] | The Encounter(s) in which the document was created. Example: `12345`
 `type`        | N                  | [`token`]     | The type of document. May be a list separated by commas. Example: `http://loinc.org|11488-4`
 `_count`      | N                  | [`number`]    | The maximum number of results to return. Defaults to `10` and maximum `100` documents can be returned.
 `category`    | N                  | [`token`]     | The categorization of document. Example: `http://loinc.org|11488-4`
 `_revinclude` | N                  | [`token`]     | Provenance resource entries to be returned as part of the bundle. Example: `_revinclude=Provenance:target`
 `date`        | N                  | [`date`]      | When this document reference was created. Example: `date=ge2020-01-01T08:00:00.000Z&date=le2020-01-31T17:00:00.000Z`
 `period`      | N                  | [`date`]      | Time of service that is being documented. Example: `period=ge2017-01-01&period=lt2017-01-05`
 
_Implementation Notes_

- Search operation is supported for clinical-note, cardiology, radiology, microbiology and pathology charted documents and clinical-note staged documents.
- Contents of the document(s) are found by following the Attachment URL. 
  - See more information on the [`Binary`] resource to determine what Authorization scopes are required, and how to set the `Accept` header when downloading document contents.
- When searching with the `_id` parameter:
  - It must not be provided with any other parameters, except with the `_revinclude` parameter as noted below.
- When searching with the `encounter` parameter:
  - Patient level documents are filtered out from responses when the encounter id is blank.
  - It can be provided with either a single reference, or a comma-separated list of references. Example `encounter=1234` or `encounter=1234,5678`
- For `date` and `period` parameters:
  - The `date` and `period` search parameters cannot be provided together. 
  - When searching with the `date` parameter:
    - For a single `date` occurrence:
      - It can be provided with a prefix to imply a date range, or without a prefix to search for document(s) last updated at a specific date/time.
      - The `time` component is optional.
    - For two `date` occurences: 
      - It must be provided with `le` or `lt` and `ge` or `gt` prefixes to search for document(s) within a specific range. 
      - The `time` component is required for both parameters.
  - When searching with the `period` parameter:
    - It must be provided twice, once with the `ge` prefix, and once with the `lt` prefix.
    - Date precision must be consistent.
- When searching with the `_revinclude` parameter:
  - It may be provided once with the value `Provenance:target`. Example: `_revinclude=Provenance:target`
  - It may be provided with the `_id` or `patient` parameter. Example: `_id=214938095&_revinclude=Provenance:target`
- When `_revinclude` is provided in a request to the closed endpoint, the OAuth2 token must include the `user/Provenance.read` scope. Currently `patient/Provenance.read` is not supported and hence `_revinclude` cannot be utilised for patient persona.


### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference?patient=12769853

#### Response

<%= headers status: 200 %>
<%= json(:R4_DOCUMENT_REFERENCE_BUNDLE) %>

### Example with RevInclude

### Authorization Types

<%= authorization_types(provider: true, system: true) %>

#### Request

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference?_id=198449751&_revinclude=Provenance:target

#### Response

<%= headers status: 200 %>
<%= json(:r4_document_reference_revinclude_bundle) %>

### Example: search by encounter filters patients level documents

#### Request

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference?patient=12769853&encounter=97966172

#### Response

<%= headers status: 200 %>
<%= json(:R4_DOCUMENT_REFERENCE_SEARCH_BY_ENCOUNTER_FILTER_PATIENT_DOCUMENTS) %>

#### Patient Authorization Request

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference?patient=12769853

#### Response

<%= headers status: 200 %>
<%= json(:R4_DOCUMENT_REFERENCE_PATIENT_ACCESS_BUNDLE) %>

## Retrieve by id

List an individual DocumentReference by its id:

    GET /DocumentReference/:id

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

_Implementation Notes_

- Read operation is supported for clinical-note, cardiology, radiology, microbiology and pathology charted documents and clinical-note staged documents.
- Contents of the document(s) are found by following the Attachment URL. 
  - See more information on the [`Binary`] resource to determine what Authorization scopes are required, and how to set the `Accept` header when downloading document contents.

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference/198381924

#### Response

<%= headers status: 200 %>
<%= json(:R4_DOCUMENT_REFERENCE) %>

#### Patient Authorization Request

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference/198381924

#### Response

<%= headers status: 200 %>
<%= json(:R4_DOCUMENT_REFERENCE_PATIENT_ACCESS) %>

## Create

Create a new document reference:

    POST /DocumentReference

_Implementation Notes_

- Only the body fields mentioned below are supported. Unsupported fields will be ignored.
- All provided dates must have a time component.
- Supported MIME Types includes the following: 
  - `application/pdf`, `text/plain`, `text/richtext`, `text/rtf`, `text/html`, `application/xml`, and `application/xhtml+xml`
  - See the `content.attachment.contentType` body field below for further details

### Authorization Types

<%= authorization_types(provider: true, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', 'Content-Type': 'application/fhir+json'} %>

### Body Fields

<%= definition_table(:document_reference, :create, :r4) %>

### Example

#### Request

    POST https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference

### Body

<%= json(:R4_DOCUMENT_REFERENCE_POST) %>

#### Response

<%= headers status: 201 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: text/html
Date: Fri, 04 Nov 2022 10:15:11 GMT
Etag: W/"1"
Location: https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference/201051629
Vary: Origin
X-Request-Id: 1111111111111111111111111111111111111111111111
</pre>

## Update

Update an existing document reference:

    PUT /DocumentReference/:id

### Authorization Types

<%= authorization_types(provider: true, patient: false, system: true) %>

_Implementation Notes_

- Refer to the HL7® FHIR® [Update documentation] for additional details about update operations.
- Both of the `DocumentReference.read` and `DocumentReference.write` scopes are required.
- Only the body fields mentioned below are supported. Unsupported fields will be ignored.
- All provided dates must have a time component.
- Supported MIME Types includes the following: 
  - `application/pdf`, `text/plain`, `text/richtext`, `text/rtf`, `text/html`, `application/xml`, and `application/xhtml+xml`
  - See the `content.attachment.contentType` body field below for further details

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>',
Accept: 'application/json+fhir', 'Content-Type': 'application/fhir+json', 'If-Match': 'W/"&lt;Current version of the DocumentReference resource>"'} %>

### Body fields

<%= definition_table(:document_reference, :update, :r4) %>

### Example

#### Request

    PUT https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference/16885181

### Body

<%= json(:R4_DOCUMENT_REFERENCE_UPDATE) %>

#### Response

<%= headers status: 200 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: application/json+fhir
Date: Fri, 04 Nov 2022 11:54:04 GMT
Etag: W/"2"
Last-Modified: Fri, 04 Nov 2022 11:54:04 GMT
Vary: Origin
X-Request-Id: 1111111111111111111111111111111111111111111111
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent update.

## Operation: $docref

US Core operation for querying DocumentReferences for the supplied parameters:

    GET /DocumentReference/$docref?:parameters

### Terminology Bindings

<%= terminology_table(:document_reference_docref, :r4) %>

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Parameters

 Name      | Required? | Type          | Description
-----------|-----------|---------------|--------------------------------------------------------------------------------------------------------
 `patient` | Y         | [`reference`] | The specific patient to return DocumentReferences for. Example: `12345`
 `type`    | N         | [`token`]     | The document reference type, can be a list of comma separated values. Example: `http://loinc.org\|34133-9`
 `start`   | N         | [`number`]    | The start of the date range from which document reference records should be included. Example: `2014-09-24T12:00:00.000Z`
 `end`     | N         | [`number`]    | The end of the date range till which document reference records should be included. Example: `2016-09-24T12:00:00.000Z`

_Implementation Notes_

- The `type` parameter:
  - It must include both a system and a code. e.g. `type=http://loinc.org\|34133-9`
  - It may be a single system and code, or a comma-separated list.
- The `start` and `end` parameters:
  - They must be valid [dateTime]s with a time component.
  - They must have prefixes of `eq` or nothing.
  - If `start` is not provided, then all records from the beginning of time are included.
  - If `end` is not provided, then all records up to the current date are included.

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference/$docref?patient=13160351&type=http%3A%2F%2Floinc.org%7C34133-9

#### Response

<%= headers status: 200 %>
<%= json(:R4_DOCUMENT_REFERENCE_CCD_BUNDLE) %>

#### Patient Authorization Request

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference/$docref?patient=13160351&type=http%3A%2F%2Floinc.org%7C34133-9

#### Response

<%= headers status: 200 %>
<%= json(:R4_DOCUMENT_REFERENCE_CCD_PATIENT_BUNDLE) %>

[`token`]: https://hl7.org/fhir/R4/search.html#token
[`reference`]: https://hl7.org/fhir/R4/search.html#reference
[`date`]: https://hl7.org/fhir/R4/search.html#date
[`number`]: https://hl7.org/fhir/R4/search.html#number
[Update documentation]: https://www.hl7.org/fhir/r4/http.html#update
[dateTime]: http://hl7.org/fhir/R4/datatypes.html#dateTime
[errors]: ../../../#client-errors
[OperationOutcomes]: ../../../#operation-outcomes
[`Binary`]: ../../other/binary/#overview
