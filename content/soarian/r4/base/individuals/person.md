---
title: Person | R4 API
---

# Person

* TOC
{:toc}

## Overview

The Person resource identifies demographic information about a person who is outside of a specific healthcare context.

The following fields are returned if they contain values:

* [Person id](https://hl7.org/fhir/r4/resource-definitions.html#Resource.id){:target="_blank"}
* [Name](https://hl7.org/fhir/R4/person-definitions.html#Person.name){:target="_blank"}
* [Telecom](https://hl7.org/fhir/R4/person-definitions.html#Person.telecom){:target="_blank"}
* [Active](https://hl7.org/fhir/R4/person-definitions.html#Person.active){:target="_blank"}

## Terminology Bindings

None

## Search

Search for Persons that meet supplied query parameters:

    GET /Person?:parameters

## Implementation Notes

   | Federated Principal Alias
---|-------------------------------------------------------------------------------------------------------------------------------------------------------------------
   | A unique alphanumeric string used to identify the person. The format of this unique string is known as the Federated Principal Alias (FPA). This format contains the Identity Provider’s unique identifier, a GUID issued by Cerner, and the SMART app user’s unique identifier, called the principal. Example: URN:CERNER:IDENTITY-FEDERATION:REALM:49F17659-891C-42C9-AE26-D6AE7826F62D:PRINCIPAL:38509e38-2d69-4109-ab24-08ca19ea4a65 In the aforementioned example -  49F17659-891C-42C9-AE26-D6AE7826F62D: The unique identifier of the Identity provider. 38509e38-2d69-4109-ab24-08ca19ea4a65: This value maps to the person's ID. It does not have to be a GUID. It can be an alphanumeric string that identifies the person, such as user123.

    
### Authorization Types

<%= authorization_types(patient: true) %>

### Parameters

 Name         | Required?           | Type      | Description
--------------|---------------------|-----------|--------------------------------------------------------------------------------------------------------
 `_id`        | This or identifier  | [`token`] | The logical resource id associated with the resource.
 `identifier` | This or `_id`       | [`token`] | The person identifier. Example: urn:oid:URN:CERNER:IDENTITY-FEDERATION:REALM:5D28F56D-E0B4-4C76-A81F-C7A5C1C23908:    PRINCIPAL:TEMP_API_USER


### Headers

 <%= headers head: {Accept: 'application/fhir+json, "application/json", "application/json+fhir"', Authorization: '&lt;OAuth2 Bearer Token>'} %>


### Example

#### Request

    GET https://fhir-myrecord-sc.cerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/Person?_id=APIUser.1

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_READ_PERSON) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual Person by its id:

    GET /Person/:id

### Authorization Types

<%= authorization_types(patient: true) %>

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-myrecord-sc.cerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/Person/APIUser.1

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_PERSON_SEARCH_BY_ID_ENTRY) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`token`]: http://hl7.org/fhir/R4/search.html#token
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
