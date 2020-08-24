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

<%= authorization_types(provider: true, patient: false, system: true) %>

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

<%= authorization_types(provider: true, patient: false, system: true) %>

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

## Create

Create a new document reference.

    POST /DocumentReference

_Implementation Notes_

* Only the body fields mentioned below are supported. Unsupported fields will be ignored.

### Authorization Types

<%= authorization_types(practitioner: true, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', 'Content-Type': 'application/fhir+json'} %>

### Body Fields

<%= definition_table(:document_reference, :create, :r4) %>

### Example

#### Request

    POST https://fhir-ehr.sandboxcerner.com/r4/eb2384f8-839e-4c6e-8b29-18e71db1a0b1/DocumentReference

### Body

<%= json(:R4_DOCUMENT_REFERENCE_POST) %>

#### Response

<%= headers status: 201 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: text/html
Date: Fri, 14 Feb 2020 22:05:40 GMT
Etag: W/"12793861"
Location: https://fhir-ehr.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/DocumentReference/16885181
Server-Response-Time: 296.405243
Status: 201 Created
Vary: Origin
X-Request-Id: 3e4cb2f732daacdb6cca2eb944e80e55
X-Runtime: 2.011826
</pre>

The `ETag` response header indicates the current `If-Match` version to use on a subsequent update.

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Update

Update an existing document reference.

    PUT /DocumentReference/:id

_Implementation Notes_

* Any field which is missing will be interpreted as nulling out or removing data from the resource. See [FHIR<sup>®</sup> Update] for additional details about update operations.
* Both write and read scopes are required to update a document reference

### Authorization Types

<%= authorization_types(practitioner: true, patient: false, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', 'Content-Type': 'application/fhir+json', 'If-Match': 'W/"&lt;Current version of the DocumentReference resource>"'} %>

### Body fields

<%= definition_table(:document_reference, :update, :r4) %>

### Example

#### Request

    PUT https://fhir-ehr.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/DocumentReference/10070301

### Body

<%= json(:R4_DOCUMENT_REFERENCE_UPDATE) %>

#### Response

<%= headers status: 200 %>
<pre class="terminal">
    Cache-Control: no-cache
    Content-Length: 0
    Content-Type: text/html
    Date: Tue, 20 Aug 2019 21:17:04 GMT
    Etag: W/"12809861"
    Last-Modified: Sat, 15 Feb 2020 22:05:40 GMT
    Server-Response-Time: 777.661584
    Status: 200 OK
    Vary: Origin
    X-Request-Id: 3e4cb2f732daacdb6cca2eb944e80e55
    X-Runtime: 0.777583
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent update.

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`reference`]: https://hl7.org/fhir/r4/search.html#reference
[`token`]: https://hl7.org/fhir/R4/search.html#token
[errors]: ../../#client-errors
[OperationOutcomes]: https://hl7.org/fhir/R4/operationoutcome.html
[FHIR<sup>®</sup> Update]: https://hl7.org/fhir/R4/http.html#update
