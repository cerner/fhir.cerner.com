---
title: DocumentReference | R4 API
---

# DocumentReference

* TOC
{:toc}

## Overview

The DocumentReference resource is used to reference a clinical document for a patient in the health system. This resource supports reading clinical notes and returning references to retrieve Continuity of Care Documents (CCDs).

Soarian Clinicals<sup>®</sup> supports a read-only Application Programming Interface (API). This API accepts `GET` and `POST` based [search] and `GET` based [read] interactions. The response represents the most current information about the patient that is charted in Soarian Clinicals<sup>®</sup> at the time of the query.

The following fields are returned if valued for clinical documents:

* [DocumentReference id](https://hl7.org/fhir/r4/resource-definitions.html#Resource.id){:target="_blank"}
* [Identifier](https://hl7.org/fhir/R4/documentreference-definitions.html#DocumentReference.identifier){:target="_blank"}
* [Status]( https://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.status){:target="_blank"}
* [Document status](https://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.docStatus){:target="_blank"}
* [Document type](https://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.type){:target="_blank"}
* [Document category](https://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.category){:target="_blank"}
* [Subject (Patient)](https://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.subject){:target="_blank"}
* [Created Date](https://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.date){:target="_blank"}
* [Author](https://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.author){:target="_blank"}
* [Custodian](https://hl7.org/fhir/R4/documentreference-definitions.html#DocumentReference.custodian){:target="_blank"}
* [Security Label](https://hl7.org/fhir/R4/documentreference-definitions.html#DocumentReference.securityLabel){:target="_blank"}
* [Content](https://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.content){:target="_blank"}
  * [Attachment](https://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.content.attachment){:target="_blank"}
      * [Attachment ContentType](https://hl7.org/fhir/r4/datatypes-definitions.html#Attachment.contentType){:target="_blank"}
      * [Attachment Data](https://hl7.org/fhir/R4/datatypes-definitions.html#Attachment.data){:target="_blank"}
      * [Attachment URL](https://hl7.org/fhir/r4/datatypes-definitions.html#Attachment.url){:target="_blank"}
  * [Format](https://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.content.format){:target="_blank"}
* [Patient encounter]( https://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.context.encounter){:target="_blank"}
* [Document period]( https://hl7.org/fhir/r4/documentreference-definitions.html#DocumentReference.context.period){:target="_blank"}


## Terminology Bindings

<%= terminology_table(:soarian_document_reference, :r4) %>

## Search

Search for DocumentReference resources that meet the specified query parameters:

    GET /DocumentReference?:parameters

### Authorization Types

<%= authorization_types(provider: true, patient: true,system: true) %>

### Parameters

 Name                     | Required?          | Type          | Description
--------------------------|--------------------|---------------|--------------------------------------------------------------------------------------------------------
 `_id`                    | This, or `patient` | [`token`]     | The logical resource ID associated with the resource.
 `patient`                | This, or `_id`     | [`reference`] | The patient who has the document referenced. 
`category`                | No                 | [`token`]     | The categorization for the type of document referenced. Example: `category=clinical-note`
`type`                    | No                 | [`token`]     | The kind of document referenced. Example: `https://loinc.org/11488-4`
`date`                    | No                 | [`date`]      | Date range into which the document referenced falls. Example: `date=ge2020-01-01`
`encounter`               | No                 | [`reference`] | The encounter associated with the document referenced. 
`_count`                  | No                 | [`count`]     | The maximum number of resources returned in a page.
`_revinclude`             | No                 | [`revinclude`]| A request to include any Provenance resource in the bundle that refers to a DocumentReference resource in the search results. Only supported with Provenance.

Notes

* The `category` parameter only supports the code `clinical-note`.
* The `date` parameter may be provided up to two times, and must use the `eq`, `ge`, `gt`, `le`, or `lt` prefixes. When a value is provided without a prefix, an implied `eq` prefix is used. When provided twice, the lower value must have a `ge` or `gt` prefix and the higher value must have an `le` or `lt` prefix.
* The `_revinclude` parameter may be provided once with the value `Provenance:target`. Example: `_revinclude=Provenance:target`
* When `_revinclude` is provided in a request, the OAuth2 token must include the `patient/Provenance.read  system/Provenance.read`  or  `user/Provenance.read` scope as applicable.


### Headers

<%= headers %>

### Example Search by Patient 

#### Request

    GET https://fhir-myrecord-sc.cerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/DocumentReference?patient=A879904FD2FE4B2D90C89FDA84E1285F

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_DOCREF_SEARCH_BY_PATIENT) %>

Note: The examples provided here are non-normative and replaying them in the public sandbox is not guaranteed to yield the results shown on the site.


### Errors

• The common [errors] and [OperationOutcomes] may be returned. 


### Example Search by ID

#### Request

    GET https://fhir-myrecord-sc.cerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/DocumentReference?_id=A879904FD2FE4B2D90C89FDA84E1285F.NRS.56479

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_DOCREF_SEARCH_BY_ID) %>

Note: The examples provided here are non-normative and replaying them in the public sandbox is not guaranteed to yield the results shown on the site.

### Errors

• The common [errors] and [OperationOutcomes] may be returned. 

## Retrieve by ID

List an individual DocumentReference resource by its ID:

    GET /DocumentReference/:id

### Authorization Types

<%= authorization_types(provider: true, patient: true,system: true) %>

### Headers

<%= headers %>

### Example

#### Request


    GET https://fhir-myrecord-sc.cerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/DocumentReference/A879904FD2FE4B2D90C89FDA84E1285F.NRS.56479

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_DOCREF_READ_BY_ID) %>

Note: The examples provided here are non-normative and replaying them in the public sandbox is not guaranteed to yield the results shown on the site.


### Errors

• The common [errors] and [OperationOutcomes] may be returned. 

[`token`]: https://hl7.org/fhir/R4/search.html#token
[`reference`]: https://hl7.org/fhir/R4/search.html#reference
[`date`]: https://hl7.org/fhir/R4/search.html#date
[`number`]: https://hl7.org/fhir/R4/search.html#number
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
[Update documentation]: https://www.hl7.org/fhir/r4/http.html#update
[`count`]: https://hl7.org/fhir/r4/search.html#count
[`revinclude`]: https://hl7.org/fhir/search.html#revinclude
[search]: https://www.hl7.org/fhir/http.html#search
[read]: https://www.hl7.org/fhir/http.html#read
