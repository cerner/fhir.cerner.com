---
title: Immunization | R4 API
---

# Immunization

* TOC
{:toc}

## Overview

The Immunization resource can include current and historical administration of vaccinations for a patient. The response can include administered immunizations and reported immunizations, including records reconciled from external sources such as the patient, state registries, and Consolidated Clinical Document Architecture (C-CDA) documents. The response does not include immunizations that may be ordered or scheduled, but have not been administered yet.

Soarian Clinicals<sup>®</sup> supports a read-only Application Programming Interface (API). This API accepts `GET` and `POST` based [search] and `GET` based [read] interactions. The response represents the most current information about the patient that is charted in Soarian Clinicals<sup>®</sup> at the time of the query.

The search results include the following fields if they contain values:

* [Immunization id](https://hl7.org/fhir/R4/resource-definitions.html#Resource.id){:target="_blank"}
* [Status](https://hl7.org/fhir/R4/immunization-definitions.html#Immunization.status){:target="_blank"}
* [Status reason](https://hl7.org/fhir/R4/immunization-definitions.html#Immunization.statusReason){:target="_blank"}
* [Vaccine administered](https://hl7.org/fhir/R4/immunization-definitions.html#Immunization.vaccineCode){:target="_blank"}
* [Patient](https://hl7.org/fhir/R4/immunization-definitions.html#Immunization.patient){:target="_blank"}
* [Occurrence[x]](https://hl7.org/fhir/R4/immunization-definitions.html#Immunization.occurrence_x_){:target="_blank"}
   * Occurrence date time
   * Occurrence string
* [primarySource](https://hl7.org/fhir/R4/immunization-definitions.html#Immunization.primarySource){:target="_blank"}


## Terminology Bindings

<%= terminology_table(:soarian_immunization, :r4) %>

## Search

Search for Immunization resources that meet the specified query parameters:

    GET /Immunization?:parameters


### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true)%>

### Parameters

 Name          | Required?                                    | Type                                                       | Description
---------------|----------------------------------------------|------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------
 `_id`         | This, or `patient`                            | [`token`](https://hl7.org/fhir/R4/search.html#token)        | The logical resource ID associated with the resource.
 `patient`	   | This, or `_id`								   | [`reference`](https://hl7.org/fhir/r4/search.html#reference)| The patient for the vaccination record. 
 `_revinclude` | No 										   | [`_revinclude`](https://hl7.org/fhir/search.html#revinclude)| A request to include any Provenance resource in the bundle that refers to a Immunization resource in the search results. Only supported with Provenance.

Notes:

* The `_revinclude` parameter may be provided once with the value `Provenance:target`. Example: `_revinclude=Provenance:target`
* When `_revinclude` is provided in a request, the OAuth2 token must include the `patient/Provenance.read  system/Provenance.read`  or  `user/Provenance.read` scope as applicable.


### Headers

<%= headers fhir_json: true %>

### Example Search by Patient

#### Request

    GET https://fhir-myrecord-sc.sandboxcerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/Immunization?patient=4C05F5F357EE44FC874C0CF4AB249F99

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_IMMUNIZATION_SEARCH_BY_PT) %>

Note: The examples provided here are non-normative and replaying them in the public sandbox is not guaranteed to yield the results shown on the site.

### Example Search by ID

#### Request

	GET https://fhir-myrecord-sc.sandboxcerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/Immunization?_id=4C05F5F357EE44FC874C0CF4AB249F99.000001001008000107001&patient=4C05F5F357EE44FC874C0CF4AB249F99

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_IMMUNIZATION_SEARCH_BY_ID) %>

Note: The examples provided here are non-normative and replaying them in the public sandbox is not guaranteed to yield the results shown on the site.

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by ID

List an individual Immunization resource by its ID:

    GET /Immunization/:id

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true)%>

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-myrecord-sc.sandboxcerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/Immunization/4C05F5F357EE44FC874C0CF4AB249F99.000001001008000107001
    
#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_IMMUNIZATION_READ_BY_ID) %>

Note: The examples provided here are non-normative and replaying them in the public sandbox is not guaranteed to yield the results shown on the site.

### Errors

The common [errors] and [OperationOutcomes] may be returned.

### Patient Authorization Request for Completed Status

#### Request

    GET https://fhir-myrecord-sc.sandboxcerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/Immunization/4C05F5F357EE44FC874C0CF4AB249F99.000001001008000107001
    
#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_IMMUNIZATION_READ_BY_ID) %>

Note: The examples provided here are non-normative and replaying them in the public sandbox is not guaranteed to yield the results shown on the site.

### Errors

The common [errors] and [OperationOutcomes] may be returned.

### Patient Authorization Request for Entered in Error Status

#### Request

    GET https://fhir-myrecord-sc.sandboxcerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/Immunization/4C05F5F357EE44FC874C0CF4AB249F99.000001001008000010001
    
#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_IMMUNIZATION_ERROR) %>

Note: The examples provided here are non-normative and replaying them in the public sandbox is not guaranteed to yield the results shown on the site.

### Errors

The common [errors] and [OperationOutcomes] may be returned.

### Patient Authorization Request for Not Done Status

#### Request

    GET https://fhir-myrecord-sc.sandboxcerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/Immunization/4C05F5F357EE44FC874C0CF4AB249F99.000001001008000088001
    
#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_IMMUNIZATION_NOT_DONE) %>

Note: The examples provided here are non-normative and replaying them in the public sandbox is not guaranteed to yield the results shown on the site.

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[errors]: ../../#client-errors
[OperationOutcomes]: https://hl7.org/fhir/R4/operationoutcome.html
[search]: https://www.hl7.org/fhir/http.html#search
[read]: https://www.hl7.org/fhir/http.html#read