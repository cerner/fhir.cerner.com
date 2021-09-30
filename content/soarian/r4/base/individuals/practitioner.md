---
title: Practitioner | R4 API
---

# Practitioner

* TOC
{:toc}

## Overview

The Practitioner resource provides information about a person formally involved in the care of a patient on behalf of a health care facility. 

Soarian Clinicals<sup>®</sup> supports a read-only Application Programming Interface (API). This API accepts `GET` and `POST` based [search] and `GET` based [read] interactions. The response represents the most current information about the patient that is charted in Soarian Clinicals<sup>®</sup> at the time of the query. 

The search results include the following fields if they contain values:

*	[Practitioner id](https://hl7.org/fhir/r4/resource-definitions.html#Resource.id){:target="_blank"}
*	[Identifiers/Aliases such as NPI](https://hl7.org/fhir/r4/practitioner-definitions.html#Practitioner.identifier){:target="_blank"}
*	[Active (true/false)](https://hl7.org/fhir/r4/practitioner-definitions.html#Practitioner.active){:target="_blank"}
*	[Name](https://hl7.org/fhir/r4/practitioner-definitions.html#Practitioner.name){:target="_blank"}

## Search

Search for Practitioner resources that meet specified query parameters:

	GET /Practitioner?:parameters

_Implementation Notes_

*	A `422 Unprocessable Entity` response status code and OperationOutcome are returned when > 499 Practitioners qualify for the search criteria. Fast Healthcare Interoperability Resources (FHIR) applications may prompt the user for more specific search criteria to avoid this possibility.

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true)%>

### Parameters

 Name        | Required?                                      | Type       										      | Description
-------------|------------------------------------------------|-------------------------------------------------------|
 `_id`       | This, or any other required search parameter   | [`token`] |The logical resource ID associated with the resource.
 `identifier`| This, or any other required search parameter   | [`token`] |A practitioner identifier alias. Example: `http://hl7.org/fhir/sid/us-npi|4326587548`
 `name`		 | This, or any other required search parameter   | [`string`]|The start of either the family or the given name of the Practitioner. Example: `Smith` 
 `family`    | This, or any other required search parameter   | [`string`]|The start of the practitioner's family name. Example: `Smith`
 `given`     | This, or any other required search parameter   | [`string`]|The start of the practitioner's given name. Example: `Jane`

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

	GET https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Practitioner?_id=DF2821C049CC47E6A37C6B796DF4CF1D
	
#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_PRACTITIONER_SEARCH_BY_ID) %>

### Errors

*	The common [errors](#errors) and [OperationOutcomes] may be returned. 
*	In addition, a `422 Unprocessable Entity`  HTTP response status code and OperationOutcome is returned when > 499 Practitioners qualify for the search criteria.

## Retrieve by ID

List an individual Practitioner resource by its resource ID:

	GET /Practitioner/:id

## Authorization Types

<%= authorization_types(provider: true, patient: true, system: true)%>

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Practitioner/DF2821C049CC47E6A37C6B796DF4CF1D

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_PRACTITIONER_READ_BY_ID) %>

Note: The examples provided here are non-normative and replaying them in the public sandbox is not guaranteed to yield the results shown on the site.

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[search]: https://www.hl7.org/fhir/http.html#search
[read]: https://www.hl7.org/fhir/http.html#read
[`token`]: https://hl7.org/fhir/R4/search.html#token
[`string`]: https://hl7.org/fhir/R4/search.html#string
[OperationOutcomes]: https://www.hl7.org/fhir/r4/operationoutcome.html
[errors]: ../../#client-errors

