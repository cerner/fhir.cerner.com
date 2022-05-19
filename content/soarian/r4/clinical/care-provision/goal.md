---
title: Goal | R4 API
---

# Goal

* TOC
{:toc}

## Overview

The Goal resource describes intended objectives for a patient. A goal is typically expressed as a desired outcome or health state for a patient to achieve over a period or at a specific point in time. A goal may address preventative health or mitigation of a diagnosis or problem. Goals can be nonhealth care related (for example, to dance at a wedding).

Soarian Clinicals<sup>®</sup> supports a read-only Application Programming Interface (API). This API accepts `GET` and `POST` based [search] and  `GET` based [read] interactions. The response represents the most current information about the patient that is charted in Soarian Clinicals<sup>®</sup> at the time of the query.

The search results include the following fields if they contain values:

* [Goal id](https://hl7.org/fhir/r4/resource-definitions.html#Resource.id){:target="_blank"}
* [Lifecycle Status](https://hl7.org/fhir/r4/goal-definitions.html#Goal.lifecycleStatus){:target="_blank"}
* [Description](https://hl7.org/fhir/r4/goal-definitions.html#Goal.description){:target="_blank"}
* [Subject (Patient only)](https://hl7.org/fhir/r4/goal-definitions.html#Goal.subject){:target="_blank"}
* [Target Due Date](https://hl7.org/fhir/r4/goal-definitions.html#Goal.target.due_x_){:target="_blank"}

## Search

Search for Goal resources that meet the specified query parameters:

    GET/Goal?:parameters

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true)%>

### Parameters

 Name          | Required?                                    | Type                                                       | Description
---------------|----------------------------------------------|------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------
 `_id`         | This, or `patient`                           | [`token`]        										   | The logical resource ID associated with the resource.
 `patient`	   | This, or `_id`								  | [`reference`]											   | The patient who has the goal.
 `_revinclude` | No 										  | [`_revinclude`] 										   | A request to include any Provenance resource in the bundle that refers to a Goal resource in the search results. Only supported with Provenance.

Notes:

* The `_revinclude` parameter may be provided once with the value `Provenance:target`. Example: `_revinclude=Provenance:target`
* When `_revinclude` is provided in a request, the OAuth2 token must include the `patient/Provenance.read  system/Provenance.read`  or  `user/Provenance.read` scope as applicable.

### Headers

<%= headers fhir_json: true %>

### Example Search by Patient

#### Request

    GET https://fhir-myrecord-sc.cerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Goal?patient=A879904FD2FE4B2D90C89FDA84E1285F

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_GOAL_SEARCH_BY_PT) %>

Note: The examples provided here are non-normative and replaying them in the public sandbox is not guaranteed to yield the results shown on the site

### Example Search By ID

#### Request

	GET https://fhir-myrecord-sc.cerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Goal?_id=A879904FD2FE4B2D90C89FDA84E1285F.NRS.43083

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_GOAL_SEARCH_BY_ID) %>

Note: The examples provided here are non-normative and replaying them in the public sandbox is not guaranteed to yield the results shown on the site.

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by ID

List an individual Goal Resource by its ID:

    GET /Goal/:id

## Authorization Types

<%= authorization_types(provider: true, patient: true, system: true)%>

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-myrecord-sc.cerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Goal/A879904FD2FE4B2D90C89FDA84E1285F.NRS.43083

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_GOAL_READ) %>

Note: The examples provided here are non-normative and replaying them in the public sandbox is not guaranteed to yield the results shown on the site.

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[search]: https://www.hl7.org/fhir/http.html#search
[read]: https://www.hl7.org/fhir/http.html#read
[`token`]: https://hl7.org/fhir/R4/search.html#token
[`reference`]: https://hl7.org/fhir/r4/search.html#reference
[`_revinclude`]: https://www.hl7.org/fhir/search.html#revinclude
[errors]: ../../#client-errors
[OperationOutcomes]: https://hl7.org/fhir/R4/operationoutcome.html

