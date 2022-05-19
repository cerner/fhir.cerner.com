---
title: MedicationRequest | R4 API
---

# MedicationRequest

* TOC
{:toc}

## Overview

The MedicationRequest resource provides discharge medication orders and administration instructions for a patient in the context of a visit. 

Soarian Clinicals<sup>®</sup> supports a read-only Application Programming Interface (API). This API accepts `GET` and `POST` based [search] and `GET` based [read] interactions. The response represents the most current information about the patient that is charted in Soarian Clinicals<sup>®</sup> at the time of the query.

The search results include the following fields if they contain values:

* [MedicationRequest id](https://hl7.org/fhir/r4/resource-definitions.html#Resource.id){:target="_blank"}
* [Status](https://hl7.org/fhir/r4/medicationrequest-definitions.html#MedicationRequest.status){:target="_blank"}
* [Intent](https://hl7.org/fhir/r4/medicationrequest-definitions.html#MedicationRequest.intent){:target="_blank"}
  * Details in Implementation Notes sections for reads and searches.
* [Reported Boolean](https://hl7.org/fhir/r4/medicationrequest-definitions.html#MedicationRequest.reported_x_){:target="_blank"}
* [Medication](https://hl7.org/fhir/r4/medicationrequest-definitions.html#MedicationRequest.medication_x_){:target="_blank"}  (contained)
  * [Medication code](https://hl7.org/fhir/R4/medication-definitions.html#Medication.code){:target="_blank"}
* [Patient](https://hl7.org/fhir/r4/medicationrequest-definitions.html#MedicationRequest.subject){:target="_blank"}
* [Encounter](https://hl7.org/fhir/r4/medicationrequest-definitions.html#MedicationRequest.encounter){:target="_blank"}
* [Authored on Date](https://hl7.org/fhir/r4/medicationrequest-definitions.html#MedicationRequest.authoredOn){:target="_blank"}
* [Requester](https://hl7.org/fhir/r4/medicationrequest-definitions.html#MedicationRequest.requester){:target="_blank"}
* [Dosage Instructions](https://hl7.org/fhir/r4/medicationrequest-definitions.html#MedicationRequest.dosageInstruction){:target="_blank"}
  * [Text](https://hl7.org/fhir/r4/dosage-definitions.html#Dosage.text){:target="_blank"}

## Terminology Bindings

#### Contained Medication Bindings

<%= terminology_table(:soarian_medication_request, :r4) %>

## Search

Search for MedicationRequest resources that meet the specified query parameters.

    GET /MedicationRequest?:parameters


### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true)%>

### Parameters

 Name          | Required?                                    | Type                                                       | Description
---------------|----------------------------------------------|------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------
 `_id`         | This, or `patient`                            | [`token`](https://hl7.org/fhir/R4/search.html#token)        | The logical resource ID associated with the resource.
 `patient`	   | This, or `_id`								   | [`reference`](https://hl7.org/fhir/r4/search.html#reference)| The patient who has the medication request.
 `status`      | No                                            | [`token`](https://hl7.org/fhir/R4/search.html#token)        | The status of the medication request. May be a list separated by commas.
  `intent`     | No                                            | [`token`](https://hl7.org/fhir/R4/search.html#token)        | The kind of medication order. May be a list separated by commas.
  `encounter`  | This, or `_id`							       | [`reference`](https://hl7.org/fhir/r4/search.html#reference)| The encounter associated with the medication request.
 `_revinclude` | No 										   | [`_revinclude`](https://hl7.org/fhir/search.html#revinclude)| A request to include any Provenance resource in the bundle that refers to a MedicationRequest resource in the search results. Only supported with Provenance.

Notes

*  The `intent` parameter only supports the codes `order` and `plan`.
* The `_revinclude` parameter may be provided once with the value `Provenance:target`. Example: `_revinclude=Provenance:target`.
* When `_revinclude` is provided in a request, the OAuth2 token must include the `patient/Provenance.read  system/Provenance.read`  or  `user/Provenance.read` scope as applicable.


### Headers

<%= headers fhir_json: true %>

### Example Search by Patient

#### Request

    GET https://fhir-myrecord-sc.sandboxcerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/MedicationRequest?patient=A879904FD2FE4B2D90C89FDA84E1285F

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_MEDICATIONREQUEST_SEARCH_BY_PT) %>

Note: The examples provided here are non-normative and replaying them in the public sandbox is not guaranteed to yield the results shown on the site.

### Example Search by ID

#### Request

	GET https://fhir-myrecord-sc.sandboxcerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/MedicationRequest?_id=A879904FD2FE4B2D90C89FDA84E1285F.17864

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_MEDICATIONREQUEST_SEARCH_BY_ID) %>

Note: The examples provided here are non-normative and replaying them in the public sandbox is not guaranteed to yield the results shown on the site.

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by ID

List an individual MedicationRequest resource by its ID:

    GET /MedicationRequest/:id

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true)%>

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-myrecord-sc.sandboxcerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/MedicationRequest/A879904FD2FE4B2D90C89FDA84E1285F.17864
    
#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_MEDICATIONREQUEST_READ) %>

Note: The examples provided here are non-normative and replaying them in the public sandbox is not guaranteed to yield the results shown on the site.

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[errors]: ../../#client-errors
[OperationOutcomes]: https://hl7.org/fhir/R4/operationoutcome.html
[search]: https://www.hl7.org/fhir/http.html#search
[read]: https://www.hl7.org/fhir/http.html#read