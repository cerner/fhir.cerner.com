---
title: DocumentReference | DSTU 2 API
---

# DocumentReference

* TOC
{:toc}

## Overview

The DocumentReference resource is used to reference a clinical document for a patient within the health system. This resource supports reading Continuity of Care Documents (CCD), returning a list of clinical documents, and a reference to retrieve a document as a PDF. When retrieving document links and metadata, this resource will refer to the [`Binary`] resource for downloading the complete document. 

Additionally, this resource supports writing an unstructured document. 
References to [`implicitRules`], [`modifierExtension`], and [`relatesTo`] are NOT supported and will fail a create request. For fields supported on write, see the [create](#create) section.

The following fields are returned if valued for clinical documents:

* [DocumentReference id](http://hl7.org/fhir/dstu2/resource-definitions.html#Resource.id){:target="_blank"}
* [Subject (patient)](http://hl7.org/fhir/DSTU2/documentreference-definitions.html#DocumentReference.subject){:target="_blank"}
* [Document type](http://hl7.org/fhir/DSTU2/documentreference-definitions.html#DocumentReference.type){:target="_blank"}
* [Document description/title](http://hl7.org/fhir/DSTU2/documentreference-definitions.html#DocumentReference.description){:target="_blank"}
* [Authenticator/verifying provider](http://hl7.org/fhir/DSTU2/documentreference-definitions.html#DocumentReference.authenticator){:target="_blank"}
* [Create date/time](http://hl7.org/fhir/DSTU2/documentreference-definitions.html#DocumentReference.created){:target="_blank"}
* [Indexed date/time](http://hl7.org/fhir/DSTU2/documentreference-definitions.html#DocumentReference.indexed){:target="_blank"}
* [Status (typically current)](http://hl7.org/fhir/DSTU2/documentreference-definitions.html#DocumentReference.status){:target="_blank"}
* [Document status (typically final or amended)](http://hl7.org/fhir/DSTU2/documentreference-definitions.html#DocumentReference.docStatus){:target="_blank"}
* [Content](https://hl7.org/fhir/dstu2/documentreference-definitions.html#DocumentReference.content){:target="_blank"}
  * [Attachment](https://hl7.org/fhir/dstu2/documentreference-definitions.html#DocumentReference.content.attachment){:target="_blank"}
    * [Content type](https://hl7.org/fhir/dstu2/datatypes-definitions.html#Attachment.contentType){:target="_blank"}
    * [URL (fully qualified link to the document)](https://hl7.org/fhir/dstu2/datatypes-definitions.html#Attachment.url){:target="_blank"}
    * [Title](https://hl7.org/fhir/dstu2/datatypes-definitions.html#Attachment.title){:target="_blank"}
* [Patient encounter](http://hl7.org/fhir/DSTU2/documentreference-definitions.html#DocumentReference.context.encounter){:target="_blank"}

The following fields are returned if valued for the $docref operation (CCD read):

* [DocumentReference id](http://hl7.org/fhir/dstu2/resource-definitions.html#Resource.id){:target="_blank"}
* [Subject (patient)](http://hl7.org/fhir/DSTU2/documentreference-definitions.html#DocumentReference.subject){:target="_blank"}
* [Document type](http://hl7.org/fhir/DSTU2/documentreference-definitions.html#DocumentReference.type){:target="_blank"}
* [Index date/time (when document reference created)](http://hl7.org/fhir/DSTU2/documentreference-definitions.html#DocumentReference.indexed){:target="_blank"}
* [Status (current)](http://hl7.org/fhir/DSTU2/documentreference-definitions.html#DocumentReference.status){:target="_blank"}
* [Format](http://hl7.org/fhir/DSTU2/documentreference-definitions.html#DocumentReference.content.format){:target="_blank"}
* [ContentType and URL (fully qualified link to the Binary CCD)](http://hl7.org/fhir/DSTU2/documentreference-definitions.html#DocumentReference.content.attachment){:target="_blank"}


<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Terminology Bindings

<%= terminology_table(:document_reference, :dstu2) %>

## Search

Search for DocumentReferences that meet supplied query parameters:

    GET /DocumentReference?:parameters

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Parameters

 Name        | Required?                              | Type          | Description
-------------|----------------------------------------|---------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 `_id`       | This, or one of `patient` or `subject` | [`token`]     | The logical resource id associated with the resource. Example: `12345`
 `patient`   | This, or one of `_id` or `subject`     | [`reference`] | The patient to which the document reference belongs. Example: `12345`
 `subject`   | This, or one of `_id` or `patient`     | [`reference`] | The subject of the document reference. May use the :Patient modifier. Example: `Patient/12345` 
 `encounter` | N                                      | [`reference`] | The encounter to which the document reference belongs. Example: `12345`
 `created`   | N                                      | [`date`]      | A date/time the referenced document was created. Example: `created=ge2017-01-07&created=le2017-02-05`
 [`_count`]  | N                                      | [`number`]    | The maximum number of results to return. Defaults to `10` and a maximum of `100` documents can be returned.

_Implementation Notes_

- Search results are currently limited to published clinical documents.
- Contents of the document are found by following the Attachment URL. 
  - See more information on the [`Binary`] resource to determine what Authorization scopes are required, and how to set the `Accept` header when downloading document contents.
- When searching with the `_id` parameter:
  - It must not be provided with any other parameters.
- When searching with the `subject` parameter:
  - It must appear once, and must represent a Patient resource.
  - It can be provided either with or without the :Patient modifier. Example: `subject=Patient/12345` or `subject:Patient=12345`
- When searching with the `encounter` parameter:
  - It must appear once, and must represent an Encounter resource.
  - It can be provided with either a single reference, or a comma-separated list of references. Example `encounter=1234` or `encounter=1234,5678`
- When searching with the `created` parameter:
  - It must be provided twice, once with the `ge` parameter and once with the `le` parameter.
  - The two provided date/times may not be equal and must form a closed range.
  - If one `created` parameter includes a time, both must include a time.

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference?patient=12724066&created=ge2020-01-01&created=le2020-12-31

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_document_reference_docref_search) %>

## Retrieve by id

List an individual DocumentReference by its id:

    GET /DocumentReference/:id

_Implementation Notes_

- Contents of the document are found by following the Attachment URL. 
  - See more information on the [`Binary`] resource to determine what Authorization scopes are required, and how to set the `Accept` header when downloading document contents.
- If no mappings are available for LOINC codes when returning `type` codings, an unknown data absent reason will be returned in place of the LOINC codes. 
  - This is to follow the [Argonaut profile's](http://www.fhir.org/guides/argonaut/r2/StructureDefinition-argo-documentreference.html) required binding for type. 
  - When available, Proprietary codings will be returned in addition to the data absent reason.

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference/197286315

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_document_reference_docref_bundle_entry) %>

## Create

Create new documents. Currently limited to unstructured clinical notes or documentation. For example, a document with display formatting or styling can be written, but a CCD cannot.

    POST /DocumentReference

_Implementation Notes_

- The modifier elements [`implicitRules`], [`modifierExtension`], and [`relatesTo`] are not supported and will be rejected if present.
- Currently only XHTML formatted documents are supported. 
  - You can validate your document using any available strict XHTML 1.0 validator (eg: [w3 validator] or this [html5 validator]).

### Authorization Types

<%= authorization_types(provider: true, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', Accept: 'application/json+fhir', 'Content-Type': 'application/json+fhir'} %>

### Body fields

<%= definition_table(:document_reference, :create, :dstu2) %>

### Example

#### Request

    POST https://fhir-ehr-code.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference

#### Body

<%= json(:dstu2_document_reference_docref_create) %>

#### Response

<%= headers status: 201 %>
<pre class="terminal">
Connection: Keep-Alive
Content-Encoding: gzip
Content-Length: 20
Content-Type: text/html; charset=UTF-8
Date: Wed, 06 Jan 2016 18:09:18 GMT
Keep-Alive: timeout=15, max=100
access-control-allow-methods: DELETE, GET, POST, PUT, OPTIONS, HEAD
access-control-allow-origin: *
access-control-expose-headers: ETag, Content-Location, Location, X-Request-Id, WWW-Authenticate, Date
access-control-max-age: 0
cache-control: no-cache
location: https://fhir-ehr-code.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference/5789254
strict-transport-security: max-age=631152000
vary: Origin,User-Agent,Accept-Encoding
x-content-type-options: nosniff
x-frame-options: SAMEORIGIN
x-request-id: 111111111111111111111111111111111111
x-xss-protection: 1; mode=block
</pre>

### Errors

In addition to the common [OperationOutcomes], the following Outcome can be returned for this operation:

 HTTP Status | Cause                              | Severity  | Code
-------------|------------------------------------|-----------|---------------
 422         | Body contained relatesTo           | error     | not-supported

## Operation: $docref

Argonaut operation for querying DocumentReferences for the supplied parameters:

    GET /DocumentReference/$docref?:parameters

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Terminology Bindings

<%= terminology_table(:document_reference_docref, :dstu2) %>

### Parameters

 Name     | Required? | Type          | Description
----------|-----------|---------------|-------------------------------------------------
`patient` | Y         | [`reference`] | A reference to the patient whose document references are required. Example: `12345`
`type`    | Y         | [`token`]     | The document reference type. Example: `http://loinc.org\|34133-9`
`start`   | N         | [`date`]      | The start of the date range from which document reference records should be included. Example: `2014-09-24T12:00:00.000Z`
`end`     | N         | [`date`]      | The end of the date range till which document reference records should be included. Example: `2016-09-24T12:00:00.000Z`

_Implementation Notes_

- The `type` parameter:
  - It must include both a system and a code. (e.g. `&type=http://loinc.org\|34133-9`)
  - It may be a single system and code, or a comma-separated list.
- The `start` and `end` parameters:
  - They must be valid [dateTime]s with a time component.
  - They must have prefixes of `eq` or nothing.
  - If `start` is not provided, then all records from the beginning of time are included.
  - If `end` is not provided, then all records up to the current date are included.
- The [`relatesTo`] modifier element is not supported and will not be returned.


### Headers

 <%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/DocumentReference/$docref?patient=12724066&type=http%3A%2F%2Floinc.org%7C34133-9

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_document_reference_docref_bundle) %>

[`implicitRules`]: http://hl7.org/fhir/DSTU2/resource-definitions.html#Resource.implicitRules
[`modifierExtension`]: http://hl7.org/fhir/DSTU2/domainresource-definitions.html#DomainResource.modifierExtension
[`relatesTo`]: http://hl7.org/fhir/DSTU2/documentreference-definitions.html#DocumentReference.relatesTo
[html5 validator]: https://html5.validator.nu/
[w3 validator]: http://validator.w3.org/#validate_by_upload+with_options
[`reference`]: http://hl7.org/fhir/DSTU2/search.html#reference
[`token`]: http://hl7.org/fhir/DSTU2/search.html#token
[`_count`]: http://hl7.org/fhir/dstu2/search.html#count
[`number`]: http://hl7.org/fhir/dstu2/search.html#number
[`date`]: http://hl7.org/fhir/DSTU2/search.html#date
[dateTime]: http://hl7.org/fhir/DSTU2/datatypes.html#dateTime
[errors]: ../../#client-errors
[`Binary`]: ../binary/#authorization-types
[OperationOutcomes]: ../../#operation-outcomes
