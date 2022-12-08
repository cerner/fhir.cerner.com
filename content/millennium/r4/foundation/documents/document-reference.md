---
title: DocumentReference | R4 API
---

# DocumentReference

* TOC
{:toc}

## Overview

The DocumentReference resource is used to reference a clinical document for a patient within the health system. This resource supports reading Continuity of Care Documents (CCD), returning a list of clinical documents, and a reference to retrieve a document as a PDF.

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
  * [Reference](https://hl7.org/fhir/r4/references.html#Reference){:target="_blank"} ([Practitioner](https://hl7.org/fhir/r4/practitioner.html){:target="_blank"})
* [Authenticator/verifying provider](https://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.authenticator){:target="_blank"}
* [Document description/title]( https://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.description){:target="_blank"}
* [Document Attachment](https://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.content.attachment){:target="_blank"}
  * [Attachment ContentType](https://hl7.org/fhir/r4/datatypes-definitions.html#Attachment.contentType){:target="_blank"}
  * [Created date/time](https://hl7.org/fhir/r4/datatypes-definitions.html#Attachment.creation){:target="_blank"}
  * [Title](https://hl7.org/fhir/r4/datatypes-definitions.html#Attachment.title){:target="_blank"}
  * [URL (fully qualified link to the document)](https://hl7.org/fhir/r4/datatypes-definitions.html#Attachment.url){:target="_blank"}
* [Document Format](http://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.content.format){:target="_blank"}
* [Patient encounter]( https://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.context.encounter){:target="_blank"}
  * [Reference](https://hl7.org/fhir/r4/references.html#Reference){:target="_blank"} ([Encounter](https://hl7.org/fhir/r4/encounter.html){:target="_blank"})
* [Document period]( https://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.context.period){:target="_blank"}
* [Custodian]( https://www.hl7.org/fhir/documentreference-definitions.html#DocumentReference.custodian){:target="_blank"}
* [Related](https://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.context.related){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:document_reference, :r4) %>

## Search

Search for DocumentReferences that meet supplied query parameters:

    GET /DocumentReference?:parameters

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Parameters

 Name                     | Required?          | Type          | Description
--------------------------|--------------------|---------------|--------------------------------------------------------------------------------------------------------
 `_id`                    | This, or `patient` | [`token`]     | The logical resource id associated with the resource. Example: `12345`
 `patient`                | This, or `_id`     | [`reference`] | The specific patient to return DocumentReferences for. Example: `12345`
 `encounter`              | N                  | [`reference`] | The Encounter in which the document was created. May be a list separated by commas. Example: `123,456`
 `period`                 | N                  | [`date`]      | Time of service that is being documented. Must use the `ge` and `lt` prefixes. Example: `lt2017-01-5`
 `type`                   | N                  | [`token`]     | The type of document. May be a list separated by commas. Example: `http://loinc.org|11488-4`
 `_count`                 | N                  | [`number`]    | The maximum number of results to return. Maximum supported count = `100`.
 `category`               | N                  | [`token`]     | The categorization of document. Example: `http://loinc.org|11488-4`
 `_revinclude`            | N                  | [`token`]     | Provenance resource entries to be returned as part of the bundle. Example: `_revinclude=Provenance:target`
`date`                   | N                  | [`date`]      | When this document reference was created.

_Implementation Notes_

* Search operation is supported for clinical-note, cardiology, radiology, microbiology and pathology charted documents and clinical-note staged documents.

* When searching with the `period` parameter:
  * It must be provided twice, once with the `ge` prefix, and once with the `lt` prefix.
  * `Period` parameter  must include a time.

* When searching with the `encounter` parameter:
  * Patient level documents are filtered out from responses when the encounter id is zero/blank.

* The `_revinclude` parameter may be provided once with the value `Provenance:target`. Example: `_revinclude=Provenance:target`

* The `_revinclude` parameter may be provided with the `_id/patient` parameter. Example: `_id=214938095&_revinclude=Provenance:target`

* When `_revinclude` is provided in a request to the closed endpoint, the OAuth2 token must include the `user/Provenance.read` scope. Currently `patient/Provenance.read` is not supported and hence `_revinclude` cannot be utilised for patient persona.

* When searching with the `date` parameter:
  * It must be provided  once with a prefix to imply a date  range or without a prefix to search for document
  (s) at a specific date. Alternately it may be provided twice with `le`, `lt`, `ge`, or `gt` prefixes to search for document(s) within specific range. The date and prefix pairs must create a closed range.
  * For a single 'date' occurrence , `time` component is optional but for two `date` occurrences, must include `time` component.

* `Date` and `period` search parameter cannot be provided together. 

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference?patient=12769853

#### Response

<%= headers status: 200 %>
<%= json(:R4_DOCUMENT_REFERENCE_BUNDLE) %>

<%= disclaimer %>

### Example with RevInclude

### Authorization Types

<%= authorization_types(provider: true, system: true) %>

#### Request

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference?_id=198449751&_revinclude=Provenance:target

#### Response

<%= headers status: 200 %>
<%= json(:r4_document_reference_revinclude_bundle) %>
<%= disclaimer %>


### Example: search by encounter filters patients level documents

#### Request

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference?patient=12769853&encounter=97966172

#### Response

<%= headers status: 200 %>
<%= json(:R4_DOCUMENT_REFERENCE_SEARCH_BY_ENCOUNTER_FILTER_PATIENT_DOCUMENTS) %>

<%= disclaimer %>


#### Patient Authorization Request

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference?patient=12769853

#### Response

<%= headers status: 200 %>
<%= json(:R4_DOCUMENT_REFERENCE_PATIENT_ACCESS_BUNDLE) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual DocumentReference by its id:

    GET /DocumentReference/:id

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

_Implementation Notes_

* Read operation is supported for clinical-note, cardiology, radiology, microbiology and pathology charted documents and clinical-note staged documents.

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference/198381924

#### Response

<%= headers status: 200 %>
<%= json(:R4_DOCUMENT_REFERENCE) %>

<%= disclaimer %>

#### Patient Authorization Request

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference/198381924

#### Response

<%= headers status: 200 %>
<%= json(:R4_DOCUMENT_REFERENCE_PATIENT_ACCESS) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Create

Create a new document reference.

    POST /DocumentReference

_Implementation Notes_

* Only the body fields mentioned below are supported. Unsupported fields will be ignored.
* All provided dates must have a time component.
* Supported MIME Types: application/pdf, text/plain, text/richtext, text/rtf, text/html, application/xml, and application/xhtml+xml

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
X-Request-Id: 5f5324e1-2966-47ec-8076-0d3906828b56+5532_p0Ds
</pre>

## Update

Update an existing document reference:

    PUT /DocumentReference/:id

### Authorization Types

<%= authorization_types(provider: true, patient: false, system: true) %>

_Implementation Notes_

* Refer to the HL7<sup>®</sup> FHIR<sup>®</sup> [Update documentation] for additional details about update operations.
* Both read and write scopes are required.


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
X-Request-Id: d2a211a4-ccd4-4ba8-b4f4-d3da9200543c+6313_U7Z3
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent update.

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Operation: docref

US Core operation for querying DocumentReferences for the supplied parameters:

    GET /DocumentReference/$docref?:parameters

### Terminology Bindings

<%= terminology_table(:document_reference_docref, :r4) %>

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Parameters

 Name                     | Required?   | Type          | Description
--------------------------|-------------|---------------|--------------------------------------------------------------------------------------------------------
 `patient`                | Y           | [`reference`] | The specific patient to return DocumentReferences for. Example: `12345`
 `type`                   | N           | [`token`]     | The document reference type, can be a list of comma separated values. Example: http://loinc.org\|34133-9
 `start`                  | N           | [`number`]    | The start of the date range from which document reference records should be included. If not provided, then all records from the beginning of time are included. Example: 2014-09-24T12:00:00.000Z
 `end`                    | N           | [`number`]    | The end of the date range till which document reference records should be included. If not provided, then all records up to the current date are included. Example: 2016-09-24T12:00:00.000Z

_Implementation Notes_

* The type parameter must include both a system and a code. (e.g. &type=http://loinc.org\|34133-9)
* The start and end parameters must be valid dateTimes with a time component. They must have prefixes of eq or nothing.

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference/$docref?patient=13160351&type=http%3A%2F%2Floinc.org%7C34133-9

#### Response

<%= headers status: 200 %>
<%= json(:R4_DOCUMENT_REFERENCE_CCD_BUNDLE) %>

<%= disclaimer %>

#### Patient Authorization Request

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference/$docref?patient=13160351&type=http%3A%2F%2Floinc.org%7C34133-9

#### Response

<%= headers status: 200 %>
<%= json(:R4_DOCUMENT_REFERENCE_CCD_PATIENT_BUNDLE) %>

<%= disclaimer %>
### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`token`]: https://hl7.org/fhir/R4/search.html#token
[`reference`]: https://hl7.org/fhir/R4/search.html#reference
[`date`]: https://hl7.org/fhir/R4/search.html#date
[`number`]: https://hl7.org/fhir/R4/search.html#number
[errors]: ../../../#client-errors
[OperationOutcomes]: ../../../#operation-outcomes
[Update documentation]: https://www.hl7.org/fhir/r4/http.html#update
