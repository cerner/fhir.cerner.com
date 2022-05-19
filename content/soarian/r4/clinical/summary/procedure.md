---
title: Procedure | R4 API
---

# Procedure

* TOC
{:toc}

## Overview

The Procedure resource implementation is limited to a patient’s known procedure history that occured at this site and is recorded in Soarian Clinicals<sup>®</sup>. As such, this resource may not be as complete as a procedure list provided as part of the patient’s billing record.

Soarian Clinicals<sup>®</sup> supports a read-only Application Programming Interface (API). This API accepts `GET` and `POST` based [search] and `GET` based [read] interactions. The response represents the most current information about the patient that is charted in Soarian Clinicals<sup>®</sup> at the time of the query. 

The search results include the following fields if they contain values:

* [Procedure id](https://hl7.org/fhir/R4/resource-definitions.html#Resource.id)
* [Status (completed, stopped, entered-in-error)](https://hl7.org/fhir/R4/procedure-definitions.html#Procedure.status)
* [Code](https://hl7.org/fhir/R4/procedure-definitions.html#Procedure.code)
* [Subject (Patient only)](https://hl7.org/fhir/R4/procedure-definitions.html#Procedure.subject)
* [Encounter](https://hl7.org/fhir/R4/procedure-definitions.html#Procedure.encounter)
* [Date performed](https://hl7.org/fhir/R4/procedure-definitions.html#Procedure.performed_x_)
* [Focal Device](https://hl7.org/fhir/R4/procedure-definitions.html#Procedure.focalDevice)
	* [Action](https://hl7.org/fhir/R4/procedure-definitions.html#Procedure.focalDevice.action)
	* [Manipulated](https://hl7.org/fhir/R4/procedure-definitions.html#Procedure.focalDevice.manipulated)


## Terminology Bindings

<%= terminology_table(:soarian_procedure, :r4) %>

## Search

Search for Procedure resources that meet specified query parameters:

    GET /Procedure?:parameters

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true)%>

_Implementation Notes_

* Soarian Clinicals® reports the procedure code that may have been received from an interfaced financial system. If the financial system supplied a procedure code without identifying its coding system, the coding system will not appear in the procedure FHIR® resource, and should not be assumed to be SNOMED CT®.

### Parameters

 Name              | Required?          | Type            | Description
-------------------|--------------------|-----------------|-----------------------------------------------------------------------
 `_id`             | This, or `patient` | [`token`]       | The logical resource ID associated with the resource.
 `patient`         | This, or `_id`     | [`reference`]   | The patient who has the procedure. 
 `date`            | No                	| [`date`]        | Date range into which the procedure falls. Example: `date=gt2014-09-24` or `date=lt2015-09-24T12:00:00.000Z`
 `encounter`       | No                	| [`reference`]   | The encounter associated with the procedure record.
 `_revinclude`     | No                	| [`_revinclude`] | A request to include any Provenance resource in the bundle that refers to a Procedure resource in the search results. Only supported with Provenance.

### Headers

<%= headers fhir_json: true %>

### Example Search by Patient

#### Request

    GET https://fhir-myrecord-sc.sandboxcerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/Procedure?patient=A879904FD2FE4B2D90C89FDA84E1285F

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_PROCEDURE_SEARCH_BY_PT_ENTRY) %>

Note: The examples provided here are non-normative and replaying them in the public sandbox is not guaranteed to yield the results shown on the site.

### Example Search by ID

#### Request

    GET https://fhir-myrecord-sc.cerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/Procedure?_id=A879904FD2FE4B2D90C89FDA84E1285F.8008

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_PROCEDURE_SEARCH_BY_ID_ENTRY) %>

Note: The examples provided here are non-normative and replaying them in the public sandbox is not guaranteed to yield the results shown on the site.

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by ID

List an individual Procedure resource by its ID:

    GET /Procedure/:id


### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true)%>

_Implementation Notes_

* Soarian Clinicals® reports the procedure code that may have been received from an interfaced financial system. If the financial system supplied a procedure code without identifying its coding system, the coding system will not appear in the procedure FHIR® resource, and should not be assumed to be SNOMED CT®.


### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-myrecord-sc.cerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/Procedure/A879904FD2FE4B2D90C89FDA84E1285F.8008

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_PROCEDURE_READ_BY_ID) %>

#### Request

    GET https://fhir-myrecord-sc.cerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/Procedure/7DD361F7EB43448690AABCCC45E62285.4010

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_PROCEDURE_ERROR) %>

#### Request

    GET https://fhir-myrecord-sc.cerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/Procedure/7DD361F7EB43448690AABCCC45E62285.503

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_PROCEDURE_STOPPED) %>

Note: The examples provided here are non-normative and replaying them in the public sandbox is not guaranteed to yield the results shown on the site.

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`reference`]: https://hl7.org/fhir/r4/search.html#reference
[`token`]: https://hl7.org/fhir/R4/search.html#token
[`date`]: https://hl7.org/fhir/r4/search.html#date
[`_revinclude`]: http://hl7.org/fhir/search.html#revinclude
[errors]: ../../#client-errors
[OperationOutcomes]: https://hl7.org/fhir/R4/operationoutcome.html
[search]: https://www.hl7.org/fhir/http.html#search
[read]: https://www.hl7.org/fhir/http.html#read
