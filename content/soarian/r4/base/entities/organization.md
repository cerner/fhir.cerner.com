---
title: Organization | R4 API
---

# Organization

* TOC
{:toc}

## Overview

The Organization resource describes a healthcare entity.

Soarian Clinicals<sup>®</sup> supports a read-only Application Programming Interface (API). This API accepts `GET` and `POST` based [search] and  and `GET` based [read] interactions. The response represents the most current information about the patient that is charted in Soarian Clinicals<sup>®</sup> at the time of the query.

The search results include the following fields if they contain values:

* [Id](https://hl7.org/fhir/R4/resource-definitions.html#Resource.id){:target="_blank"}
* [Identifier](https://hl7.org/fhir/r4/organization-definitions.html#Organization.identifier){:target="_blank"}
* [Active](https://hl7.org/fhir/r4/organization-definitions.html#Organization.active){:target="_blank"}
* [Type](https://hl7.org/fhir/r4/organization-definitions.html#Organization.type){:target="_blank"}
* [Name](https://hl7.org/fhir/r4/organization-definitions.html#Organization.name){:target="_blank"}
* [Contact Information](https://hl7.org/fhir/r4/organization-definitions.html#Organization.telecom){:target="_blank"}
* [Address](https://hl7.org/fhir/r4/organization-definitions.html#Organization.address){:target="_blank"}
  



## Search

Search for Organization resources that meet the specified query parameters:

    GET /Organization?:parameters


### Authorization Types

<%= authorization_types(provider: true, patient: true)%>

### Parameters

 Name          | Required?                                    | Type            | Description
---------------|----------------------------------------------|-----------------|----------------------------------------------------------------------------------------------------------------------------
 `_id`         | This name, or `address`                      | [`token`]       | The logical resource ID associated with the resource.
 `name`        | This name, or `address`				      | [`string`]      | The start of the name of the organization. 
 `address`     | This name, or `address`				      | [`string`]      | The start of either the address line, city, state, postal code, or country of the organization. 
 


 



### Headers

<%= headers fhir_json: true %>

### Example Search by ID

#### Request

    GET https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Organization?_id=HCU.1

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_ORGANIZATION_SEARCH_BY_ID) %>

Note: The examples provided here are non-normative and replaying them in the public sandbox is not guaranteed to yield the results shown on the site



### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by ID

List an individual Organization resource by its ID:

    GET /Organization/:id

## Authorization Types

<%= authorization_types(provider: true, patient: true)%>

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Organization/HCU.1
    
#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_ORGANIZATION_READ) %>

Note: The examples provided here are non-normative and replaying them in the public sandbox is not guaranteed to yield the results shown on the site.


[search]: https://www.hl7.org/fhir/http.html#search
[read]: https://www.hl7.org/fhir/http.html#read
[`string`]: https://hl7.org/fhir/R4/search.html#string
[`token`]: https://hl7.org/fhir/R4/search.html#token
[errors]: ../../#client-errors
[OperationOutcomes]: https://hl7.org/fhir/R4/operationoutcome.html