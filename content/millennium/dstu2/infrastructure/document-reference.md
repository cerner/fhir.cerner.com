---
title: DocumentReference | DSTU 2 API
---

# DocumentReference

* TOC
{:toc}

## Overview

The DocumentReference resource is used to reference a clinical document for a patient within the health system. This resource supports reading Continuity of Care Documents (CCD), returning a list of clinical documents, and a reference to retrieve a document as a PDF. Additionally, this resource supports writing an unstructured document. References to implicitRules, relatesTo, and modifierExtensions are NOT supported and will fail a create request.

For fields supported on write, see the [create](#create) section.

The following fields are returned if valued for the docref operation (CCD read):

* [DocumentReference id](http://hl7.org/fhir/dstu2/resource-definitions.html#Resource.id){:target="_blank"}
* [Subject (patient)](http://hl7.org/fhir/DSTU2/documentreference-definitions.html#DocumentReference.subject){:target="_blank"}
* [Document type](http://hl7.org/fhir/DSTU2/documentreference-definitions.html#DocumentReference.type){:target="_blank"}
* [Index date/time (when document reference created)](http://hl7.org/fhir/DSTU2/documentreference-definitions.html#DocumentReference.indexed){:target="_blank"}
* [Status (current)](http://hl7.org/fhir/DSTU2/documentreference-definitions.html#DocumentReference.status){:target="_blank"}
* [Format](http://hl7.org/fhir/DSTU2/documentreference-definitions.html#DocumentReference.content.format){:target="_blank"}
* [ContentType and URL (fully qualified link to the Binary CCD)](http://hl7.org/fhir/DSTU2/documentreference-definitions.html#DocumentReference.content.attachment){:target="_blank"}

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

## Terminology Bindings

<%= terminology_table(:document_reference, :dstu2) %>

## Search

Search for DocumentReferences that meet supplied query parameters:

    GET /DocumentReference?:parameters

_Implementation Notes_

* Search results are currently limited to published clinical documents.
* Contents of the document are found by following the Attachment URL. See more information on the [Binary resource] to determine what Authorization scopes are required, and how to set the Accept header when downloading document contents.

### Authorization Types

<%= authorization_types(practitioner: true, patient: true, system: true) %>

### Parameters

 Name        | Required?                              | Type          | Description
-------------|----------------------------------------|---------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 `_id`       | This, or one of `patient` or `subject` | [`token`]     | The logical resource id associated with the resource. Example: `_id=7499283`
 `patient`   | This, or one of `_id` or `subject`     | [`reference`] | The patient to which the document reference belongs. Example: `patient=1316024`
 `subject`   | This, or one of `_id` or `patient`     | [`reference`] | The subject of the document reference. Must represent a Patient resource. May use the :Patient modifier. Example: `subject=Patient/1316024 or subject:Patient=1316024`
 `encounter` | No                                     | [`reference`] | The encounter to which the document reference belongs. Must represent an Encounter resource. May include a single or comma separated list of references. Example: `encounter=1621910`
 `created`   | No                                     | [`date`]      | A date/time the referenced document was created. Must use the `ge` and `le` prefixes. Example: `created=ge2017-01-07&created=le2017-02-05`
 [`_count`]  | No                                     | [`number`]    | The maximum number of results to return.

Notes:

- The `_id` parameter may not be provided at the same time as the `patient`, `subject`, `encounter`, `created`, or `_count` parameters.
- When the `created` parameter is provided:
  - It must be provided twice, once with the `ge` parameter and once with the `le` parameter.
  - The two provided date/times may not be equal and must form a closed range.
  - If one `created` parameter includes a time, both must include a time.

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/DocumentReference?patient=1316024&created=ge2016-01-06&created=le2016-01-07

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_document_reference_docref_search) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual DocumentReference by its id:

    GET /DocumentReference/:id

_Implementation Notes_

* Contents of the document are found by following the Attachment URL. See more information on the [Binary resource] to determine what Authorization scopes are required, and how to set the Accept header when downloading document contents.
* If no mappings are available for LOINC codes when returning DocumentReference.type codings, an unknown data absent reason will be returned in place of the LOINC codes. This is to follow the [Argonaut profile's](http://www.fhir.org/guides/argonaut/r2/StructureDefinition-argo-documentreference.html) required binding for type. When available, Proprietary codings will be returned in addition to the data absent reason.

### Authorization Types

<%= authorization_types(practitioner: true, patient: true, system: true) %>

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/DocumentReference/7499283

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_document_reference_docref_bundle_entry) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Create

Create new documents. Currently limited to unstructured clinical notes or documentation. For example, a document with display formatting or styling can be written, but a CCD cannot.

    POST /DocumentReference

_Implementation Notes_

* The modifier elements [implicitRules], [modifierExtension] and [relatesTo] are not supported and will be rejected if present.
* Currently only XHTML formatted documents are supported. You can validate your document using any available strict XHTML 1.0 validator (eg: [w3 validator] or this [html5 validator]).

### Authorization Types

<%= authorization_types(practitioner: true, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', Accept: 'application/json+fhir', 'Content-Type': 'application/json+fhir'} %>

### Body fields

<%= definition_table(:document_reference, :create, :dstu2) %>

### Example

#### Request

    POST https://fhir-ehr.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/DocumentReference

#### Body

<%= json(:dstu2_document_reference_docref_create) %>

#### Response

<%= headers status: 201 %>
<pre class="terminal">
   Connection → Keep-Alive
   Content-Encoding → gzip
   Content-Length → 20
   Content-Type → text/html; charset=UTF-8
   Date → Wed, 06 Jan 2016 18:09:18 GMT
   Keep-Alive → timeout=15, max=100
   Status → 201 Created
   access-control-allow-methods → DELETE, GET, POST, PUT, OPTIONS, HEAD
   access-control-allow-origin → *
   access-control-expose-headers → ETag, Content-Location, Location, X-Request-Id, WWW-Authenticate, Date
   access-control-max-age → 0
   cache-control → no-cache
   location → https://fhir-ehr.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/DocumentReference/5789254
   server-response-time → 5497.564885
   strict-transport-security → max-age=631152000
   vary → Origin,User-Agent,Accept-Encoding
   x-content-type-options → nosniff
   x-frame-options → SAMEORIGIN
   x-request-id → 9c7510c0-0bb5-4148-b37e-51a774c4091b
   x-runtime → 5.497541
   x-xss-protection → 1; mode=block
</pre>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned. Additional [OperationOutcomes] may be returned in the following scenarios:

 HTTP Status | Cause                              | Severity  | Code
-------------|------------------------------------|-----------|---------------
 422         | Body contained relatesTo           | error     | not-supported

## Operation: docref

Argonaut operation for querying DocumentReferences for the supplied parameters:

    GET /DocumentReference/$docref?:parameters

_Implementation Notes_

* The [DocumentReference.relatesTo] modifier element is not supported and will not be returned.

### Authorization Types

<%= authorization_types(practitioner: true, patient: true, system: true) %>

### Terminology Bindings

<%= terminology_table(:document_reference_docref, :dstu2) %>

### Parameters

 Name     | Required? | Type          | Description
----------|-----------|---------------|-------------------------------------------------
`patient` | Y         | [`reference`] | A reference to the patient whose document references are required. Example: `14067892`
`type`    | Y         | [`token`]     | The document reference type, can be a list of comma separated values. Example: `http://loinc.org|34133-9`
`start`   | N         | [`date`]      | The start of the date range from which document reference records should be included. If not provided, then all records from the beginning of time are included. Example: `2014-09-24T12:00:00.000Z`
`end`     | N         | [`date`]      | The end of the date range till which document reference records should be included. If not provided, then all records up to the current date are included. Example: `2016-09-24T12:00:00.000Z`

Notes:

- The `type` parameter must include both a system and a code. (e.g. `&type=http://loinc.org|34133-9`)
- The `start` and `end` parameters must be valid [dateTime]s with a time component. They must have prefixes of `eq` or nothing.

### Headers

 <%= headers %>

### Example

#### Request

    GET https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/DocumentReference/$docref?patient=1316035&type=http%3A%2F%2Floinc.org%7C34133-9

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_document_reference_docref_bundle) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[implicitRules]: http://hl7.org/fhir/DSTU2/resource-definitions.html#Resource.implicitRules
[modifierExtension]: http://hl7.org/fhir/DSTU2/domainresource-definitions.html#DomainResource.modifierExtension
[relatesTo]: http://hl7.org/fhir/DSTU2/documentreference-definitions.html#DocumentReference.relatesTo
[html5 validator]: https://html5.validator.nu/
[w3 validator]: http://validator.w3.org/#validate_by_upload+with_options
[`reference`]: http://hl7.org/fhir/DSTU2/search.html#reference
[`token`]: http://hl7.org/fhir/DSTU2/search.html#token
[`_count`]: http://hl7.org/fhir/dstu2/search.html#count
[`number`]: http://hl7.org/fhir/dstu2/search.html#number
[`date`]: http://hl7.org/fhir/DSTU2/search.html#date
[dateTime]: http://hl7.org/fhir/DSTU2/datatypes.html#dateTime
[DocumentReference.relatesTo]: http://hl7.org/fhir/DSTU2/documentreference-definitions.html#DocumentReference.relatesTo
[errors]: ../../#client-errors
[Binary resource]: ../binary/#authorization-types
[OperationOutcomes]: ../../#operation-outcomes
