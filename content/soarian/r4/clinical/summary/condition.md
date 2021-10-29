---
title: Condition | R4 API
---

# Condition

* TOC
{:toc}

## Overview

The Condition resource represents problems, diagnoses, and health concerns. Problems are either ongoing conditions not associated with a specific encounter or point-in-time conditions recorded in the context of an encounter. Diagnoses are point-in-time conditions recorded in the context of an encounter. Health concerns represent other health issues or situations that may require ongoing monitoring or management, such as financial or social risks.

Soarian Clinicals<sup>®</sup> supports a read-only Application Programming Interface (API). This API accepts `GET` and `POST` based [search] and `GET` based [read] interactions. The response represents the most current information about the patient that is charted in Soarian Clinicals<sup>®</sup> at the time of the query.

The search results include the following fields if they contain values:

* [Id](http://hl7.org/fhir/R4/resource-definitions.html#Resource.id){:target="_blank"}
* [Status](https://hl7.org/fhir/R4/condition-definitions.html#Condition.clinicalStatus){:target="_blank"}
* [Verification Status](https://hl7.org/fhir/R4/condition-definitions.html#Condition.verificationStatus){:target="_blank"}
* [Category](https://hl7.org/fhir/R4/condition-definitions.html#Condition.category){:target="_blank"}
* [Code](https://hl7.org/fhir/R4/condition-definitions.html#Condition.code){:target="_blank"}
* [Subject](https://hl7.org/fhir/R4/condition-definitions.html#Condition.subject){:target="_blank"}
* [Encounter](https://hl7.org/fhir/R4/condition-definitions.html#Condition.encounter){:target="_blank"}
  

## Terminology Bindings

<%= terminology_table(:soarian_condition, :r4) %>

## Search

Search for Condition resources that meet the specified query parameters:

    GET /Condition?:parameters


### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true)%>

### Parameters

 Name          | Required?                                    | Type                                                       | Description
---------------|----------------------------------------------|------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------
 `_id`         | This, or `patient`                           | [`token`](https://hl7.org/fhir/R4/search.html#token)        | The logical resource id associated with the resource.
 `patient`	   | This, or `_id`					              | [`reference`](https://hl7.org/fhir/r4/search.html#reference)| The patient who has the condition.
 `encounter`   | No 										  | [`reference`](https://hl7.org/fhir/r4/search.html#reference)| The encounter associated with the condition.
 `status`      | No 										  | [`token`](https://hl7.org/fhir/R4/search.html#token)        | The status of the condition. May be a list separated by commas.
 `_revinclude` | No 										  | [`_revinclude`](https://hl7.org/fhir/search.html#revinclude)| A request to include any Provenance resource in the bundle that refers to a condition resource in the search results. Only supported with Provenance. 

Notes:

* The `_revinclude` parameter may be provided once with the value `Provenance:target`. Example: `_revinclude=Provenance:target`
* When `_revinclude` is provided in a request, the OAuth2 token must include the `patient/Provenance.read  system/Provenance.read`  or  `user/Provenance.read` scope as applicable.


### Headers

<%= headers fhir_json: true %>

### Example Search by Patient

#### Request

    GET https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Condition?patient=A879904FD2FE4B2D90C89FDA84E1285F

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_CONDITION_SEARCH_BY_PT) %>

Note: The examples provided here are non-normative and replaying them in the public sandbox is not guaranteed to yield the results shown on the site

### Example Search by ID

#### Request

	GET https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Condition?_id=A879904FD2FE4B2D90C89FDA84E1285F.NRS.43074

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_CONDITION_SEARCH_BY_ID) %>

Note: The examples provided here are non-normative and replaying them in the public sandbox is not guaranteed to yield the results shown on the site.

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by ID

List an individual Condition resource by its ID:

    GET /Condition/:id

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true)%>

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Condition/A879904FD2FE4B2D90C89FDA84E1285F.NRS.43074
    
#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_CONDITION_READ) %>

Note: The examples provided here are non-normative and replaying them in the public sandbox is not guaranteed to yield the results shown on the site.

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[search]: https://www.hl7.org/fhir/http.html#search
[read]: https://www.hl7.org/fhir/http.html#read
[errors]: ../../#client-errors
[OperationOutcomes]: https://hl7.org/fhir/R4/operationoutcome.html