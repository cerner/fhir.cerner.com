---
title: Binary | R4 API
---

# Binary

* TOC
{:toc}

## Overview

The Binary resource contains the actual data content of a single consolidated clinical document architecture (C-CDA)  Summary of Episode Note (SOEN) document. The Binary resource is the target of the DocumentReference.content.attachment.url element and the content is always XML.

Cerner recommends that you request a Binary resource only after obtaining the link to the resource via the reference made in DocumentReference. Cerner does not recommend starting a workflow with a Binary resource.

Soarian Clinicals<sup>®</sup> supports a read-only Application Programming Interface (API). This API accepts `GET` based [read] interactions. The response represents the most current information about the patient that is charted in Soarian Clinicals<sup>®</sup> at the time of the query. 

The search results include the following fields if they contain values:

* [Binary id](https://hl7.org/fhir/r4/resource-definitions.html#Resource.id){:target="_blank"}
* [Content type](https://hl7.org/fhir/r4/binary-definitions.html#Binary.contentType){:target="_blank"}
* [Content](https://hl7.org/fhir/r4/binary-definitions.html#Binary.data){:target="_blank"}

## Retrieve by ID

List an individual Binary resource by its ID:

    GET /Binary/:id


### Authorization Types

<%= authorization_types(provider: true, patient: true) %>

_Implementation Note_

The `Binary.read` scope and the `DocumentReference.read` scope is required.

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET  https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Binary/5BDAC5A796D242FAA4FC038CCD357065.DM.YNIULMDWZQI6XAIPABIFNDRONA

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_BINARY_READ_BY_ID) %>

Note: The examples provided here are non-normative and replaying them in the public sandbox is not guaranteed to yield the results shown on the site.

### Errors

• The common [errors] and [OperationOutcomes] may be returned.
 
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
[read]: https://www.hl7.org/fhir/http.html#read
