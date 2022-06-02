---
title: CarePlan | R4 API
---

# CarePlan

* TOC
{:toc}

## Overview

The CarePlan resource describes the intention of how one or more practitioners plan to deliver care for a patient specific to an encounter.

Soarian Clinicals<sup>®</sup> supports a read-only Application Programming Interface (API). This API accepts `GET` and `POST` based [search] and `GET` based [read] interactions. The response represents the most current information about the patient that is charted in Soarian Clinicals<sup>®</sup> at the time of the query. 

The search results include the following fields if they contain values:

* [CarePlan Id](https://hl7.org/fhir/r4/resource-definitions.html#Resource.id){:target="_blank"}
* [Status](https://hl7.org/fhir/r4/careplan-definitions.html#CarePlan.status){:target="_blank"}
* [Intent (plan)](https://hl7.org/fhir/r4/careplan-definitions.html#CarePlan.intent){:target="_blank"}
* [Category (assess-plan)](https://hl7.org/fhir/r4/careplan-definitions.html#CarePlan.category){:target="_blank"}
* [Subject (Patient Only)](https://hl7.org/fhir/r4/careplan-definitions.html#CarePlan.subject){:target="_blank"}
* [Encounter](https://hl7.org/fhir/r4/careplan-definitions.html#CarePlan.encounter){:target="_blank"}


## Terminology Bindings

<%= terminology_table(:soarian_care_plan, :r4) %>

## Search

Search for CarePlan resources that meet the specified query parameters:

	GET /CarePlan?:parameters

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true)%>

### Parameters

 Name         | Required?        	| Type          | Description
--------------|---------------------|---------------|--------------
 `_id`        | This, or `patient`  | [`token`]     | The logical resource ID associated with the resource.
 `patient`    | This, or `_id`      | [`reference`] | The patient who has the care plan. 
 `category`   | See notes           | [`token`]     | The scope of the care plan. Example: `category=assess-plan`
 `encounter`  | No                  | [`reference`] | The encounter associated with the care plan record. 
 `_count`     | No                  | [`count`]     | The maximum number of resources returned in a page.
 `_revincude` | No                  | [`_revinclude`]| A request to include any Provenance resource in the bundle that refers to a CarePlan resource in the search results. Only supported with Provenance.

 Notes:

*	Either `_id` or `patient` and `category` is required.
*	The `category` parameter:
	*	May be combined with the `_id` parameter.
	*	Is required with the `patient` parameter.
	*	Only supports the code `assess-plan`.
* The `_revinclude` parameter may be provided once with the value `Provenance:target`. Example: `_revinclude=Provenance:target`
* When `_revinclude` is provided in a request, the OAuth2 token must include the `patient/Provenance.read  system/Provenance.read`  or  `user/Provenance.read` scope as applicable.

### Headers

<%= headers fhir_json: true %>

### Example Search by Patient and Category

#### Request

	GET https://fhir-myrecord-sc.cerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/CarePlan?patient=A879904FD2FE4B2D90C89FDA84E1285F&category=assess-plan

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_CAREPLAN_SEARCH_BY_PT_CATEGORY) %>

Note: The examples provided here are non-normative and replaying them in the public sandbox is not guaranteed to yield the results shown on the site.

### Example Search by ID

#### Request

	GET https://fhir-myrecord-sc.cerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/CarePlan?_id=A879904FD2FE4B2D90C89FDA84E1285F.NRS.43060

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_CAREPLAN_SEARCH_BY_ID) %>

Note: The examples provided here are non-normative and replaying them in the public sandbox is not guaranteed to yield the results shown on the site.

### Errors

*	The common [errors](#errors) and [OperationOutcomes] may be returned.

## Retrieve by ID	

List an individual CarePlan resource by its ID:

	GET /CarePlan/:id

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true)%>


### Headers

<%= headers fhir_json: true %>

### Example

#### Request

	GET https://fhir-myrecord-sc.cerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/CarePlan/A879904FD2FE4B2D90C89FDA84E1285F.NRS.43060

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_CAREPLAN_READ_BY_ID) %>

Note: The examples provided here are non-normative and replaying them in the public sandbox is not guaranteed to yield the results shown on the site.

### Errors

*   The common [errors] and [OperationOutcomes] may be returned.

[search]: https://www.hl7.org/fhir/http.html#search
[read]: https://www.hl7.org/fhir/http.html#read
[`token`]: https://hl7.org/fhir/R4/search.html#token
[`reference`]: https://hl7.org/fhir/r4/search.html#reference
[`count`]: https://hl7.org/fhir/r4/search.html#count
[`_revinclude`]: https://www.hl7.org/fhir/search.html#revinclude
[errors]: ../../#client-errors
[OperationOutcomes]: https://hl7.org/fhir/R4/operationoutcome.html





