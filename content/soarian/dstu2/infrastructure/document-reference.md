---
title: DocumentReference | Soarian DSTU 2 API
---

# DocumentReference

* TOC
{:toc}

## Overview

For the DocumentReference resource query, the API returns one or more links to Summary of Episode Note (SOEN) consolidated clinical document architecture (C-CDA) documents stored in the Soarian Clinicals C-CDA archive for the subject patient. If more than one C-CDA link is returned, they are sequenced in reverse chronological order by C-CDA creation date for user selection and display. Note that each instance of a C-CDA is a unique document. Therefore, if multiple C-CDAs are created for a patient during an encounter where the creation date qualifies them for the query response, all qualified records are returned. The C-CDA document archive may contain documents created by Soarian or by external systems; all qualifying (SOEN type by create date) records are returned regardless of their source.

## Terminology Bindings

<%= terminology_table(:soarian_document_reference, :dstu2) %>

## Custom Extensions

The [bundle extension] can be returned, see possible codes in the [errors section] below.

## Search

    GET /DocumentReference?:parameters

_Implementation Notes_

* The API returns the most current DocumentReference list.
* The Narrative includes additional information pertaining to the document reference, and should be shown to the user to ensure completeness of clinical content and context.
* The API returns one or more links to Summary of Episode Note (SOEN) consolidated clinical document architecture (C-CDA) documents.
* If more than one C-CDA link is returned, they are sequenced in reverse chronological order by C-CDA creation date.
* For performance considerations, only the binary document (content.attachment.data) representing the most recent encounter is included in DocumentReference. To retrieve the related binary documents, use the links provided in content.attachment.url to request the corresponding DocumentReference resources.

### Parameters

 Name       | Required? | Type                                          | Description
------------|-----------|-----------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------
 patientId  | Y         | [`reference`]                                 | The patient identifier provided in a pre-requisite authorization step.
 date       | N         | [`date`] as adjusted per implementation notes | Null or specific date or a date range.
 attachment | N         | URL encoded String                            | Attachment is the value that is returned in the element "content.attachment.url" as part of the response to the initial "DocumentReference" request.

Notes:

* See details regarding special [date][date-parameter] requirements.
* If the date parameter is null in the query, the API will return all qualifying records.
* If a single date parameter is used in the query, the response will include all qualifying records dated that day.
* If a valid date range is used in the query, the API will return all qualifying records within the dates specified.
* If an invalid date range is used in the query, the API will error with code [500][common-errors]. Please refer to [Special information regarding date parameters][date-parameter].
* Developers are strongly encouraged to specify date ranges to prevent an inordinately large number of records from being returned.

### Headers

<%= headers %>

### Example

#### Request without attachment

    GET https://fhir-myrecord.sandboxcerner.com/dstu2/123abc/DocumentReference?patientId=FCC941D7-60B9-491D-BEED-27629E47CD4E

#### Response without attachment

<%= headers status: 200 %>
<%= json(:SOARIAN_DOCUMENT_REFERENCE_DOCREF_BUNDLE) %>

#### Request with attachment

    GET https://fhir-myrecord.sandboxcerner.com/dstu2/123abc/DocumentReference?_format=json&attachment=docKey%3D101607B8CE55A4F20111E5B4F8D4AE526B7A48%26objNum%3D1%26created%3D20160301%26indexed%3D20160301&patientId=FCC941D7-60B9-491D-BEED-27629E47CD4E

#### Response with attachment

<%= headers status: 200 %>
<%= json(:SOARIAN_DOCUMENT_REFERENCE_DOCREF_BUNDLE_ATTACHMENT) %>

### Errors and Informational messages

The common [errors and informational messages][common-errors] can be returned.

These additional informational messages may be returned within the [bundle extension]:

 Code    | Message
---------|-------------------------------------------------------------------------------------------------------------------------------------------------------------
 papi019 | No applicable document is available inclusive of startdate through enddate. Please refine your search.
 papi020 | Range requested is greater than 30 days, and no applicable document is available inclusive of startdate through enddate. Please refine your search.
 papi021 | Range requested is greater than 30 days, information provided is for documents created from startdate through enddate inclusive. Please refine your search.
 papi022 | Information provided is for documents created from startdate through enddate inclusive.
 fsp001  | Date parameter values passed with request were: \<date parameter values\>.

[bundle extension]: ../../#bundle-message-extension
[errors section]: #errors-and-informational-messages
[`reference`]: http://hl7.org/fhir/DSTU2/search.html#reference
[`date`]: http://hl7.org/fhir/DSTU2/search.html#date
[common-errors]: ../../common-errors
[date-parameter]: ../../#special-information-regarding-date-parameters
