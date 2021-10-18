---
title: Observation | R4 API
---

# Observation

* TOC
{:toc}

## Overview

The Observation resource provides measurements or simple assertions about a patient that are useful for establishing baselines or trends, monitoring a patient’s progress, and establishing diagnoses. Most observations are simple name and value pair assertions but some observations, such as blood pressure, group other observations together logically. Examples of common observations are: laboratory results (blood sugar, hemoglobin), vital signs (temperature, blood pressure), personal characteristics (height, weight), and social history (tobacco use, birth sex). See also the DiagnosticReport resource for pathology, radiology, and microbiology reports.

Soarian Clinicals<sup>®</sup> supports a read-only Application Programming Interface (API). This API accepts `GET` and `POST` based [search] and `GET` based [read] interactions. The response represents the most current information about the patient that is charted in Soarian Clinicals<sup>®</sup> at the time of the query. 
The search results include the following fields if they contain values:

* [Id](https://hl7.org/fhir/R4/resource-definitions.html#Resource.id){:target="_blank"}
* [Status](https://hl7.org/fhir/R4/observation-definitions.html#Observation.status){:target="_blank"}
* [Category](https://hl7.org/fhir/R4/observation-definitions.html#Observation.category){:target="_blank"}
* [Code](https://hl7.org/fhir/R4/observation-definitions.html#Observation.code){:target="_blank"}
* [Subject (Patient)](https://hl7.org/fhir/R4/observation-definitions.html#Observation.subject){:target="_blank"}
* [Encounter](https://hl7.org/fhir/R4/observation-definitions.html#Observation.encounter){:target="_blank"}
* [Effective[x]](https://hl7.org/fhir/R4/observation-definitions.html#Observation.effective_x_){:target="_blank"}
  * Effective date time
  * Effective period
* [Issued](https://hl7.org/fhir/R4/observation-definitions.html#Observation.issued){:target="_blank"}
* [Value[x]](https://hl7.org/fhir/R4/observation-definitions.html#Observation.value_x_){:target="_blank"} 
    * Value codeable concept
    * Value date time
    * Value integer
    * Value range
    * Value ratio
    * Value string
    * Value time
    * Value quantity
    * Extension 
* [Component](https://hl7.org/fhir/R4/observation-definitions.html#Observation.component){:target="_blank"}
    * [Component code](https://hl7.org/fhir/R4/observation-definitions.html#Observation.component.code){:target="_blank"}
    * [Component value[x]](https://hl7.org/fhir/R4/observation-definitions.html#Observation.component.value_x_){:target="_blank"}
        * valueCodeableConcept
        * valueDateTime
        * valueInteger
        * valueString
        * valueQuantity
    * [Component data absent reason](https://hl7.org/fhir/R4/observation-definitions.html#Observation.component.dataAbsentReason){:target="_blank"}
* [Data absent reason](https://hl7.org/fhir/R4/observation-definitions.html#Observation.dataAbsentReason){:target="_blank"}
* [Interpretation](https://hl7.org/fhir/R4/observation-definitions.html#Observation.interpretation){:target="_blank"}
* [Note](https://hl7.org/fhir/R4/observation-definitions.html#Observation.note){:target="_blank"}
* [Member Observations](https://hl7.org/fhir/R4/observation-definitions.html#Observation.hasMember){:target="_blank"}
* [Derived From](https://hl7.org/fhir/R4/observation-definitions.html#Observation.derivedFrom){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:soarian_observation, :r4) %>

### Extensions

   *  valueAttachment: The URL for this extension is defined as: `http://hl7.org/fhir/5.0/StructureDefinition/extension-Observation.valueAttachment` This extension is defined and referenced from the newer version of Fast Healthcare Interoperability Resources<sup>®</sup> (FHIR<sup>®</sup>). See [Extensions for converting between versions](https://www.hl7.org/fhir/r4/versions.html#extensions) and [R5 Snapshot of Observation.value](https://hl7.org/fhir/2020Feb/observation-definitions.html#Observation.value_x_) for more information.

## Search

Search for Observation resources that meet the specified query parameters:

    GET /Observation?:parameters

### Authorization Types

<%= authorization_types(provider: true, patient: true)%>

### Parameters

 Name          | Required?           | Type            | Description
---------------|---------------------|-----------------|----------------------------------------------------------------------------------------------------------------------------
 `_id`         | This, or `patient`  | [`token`]       | The logical resource ID associated with the resource.
 `patient`	   | See notes           | [`reference`]   | The patient that the observation is about. 
 `category`	   | See notes           | [`token`]       | The category of the observation report.
 `code`	       | See notes           | [`token`]       | The code of the observation.
 `encounter`   | No                  | [`reference`]   | The encounter associated with the observation record. 
 `date`	       | No                  | [`date`]        | Date range into which the observation falls. Example: date=gt2014-09-24 or date=lt2015-09-24T12:00:00.000Z
 `_count_`	   | No                  | [`count`]       | The maximum number of resources returned in a page.
 `_revinclude` | No                  | [`_revinclude`] | A request to include any Provenance resource in the bundle that refers to an Observation  resource in the search results. Only supported with Provenance.

 Notes
 
* `patient` must be used in combination with `category` or `code`.
* The `category` parameter:
    * Is required with the `patient` parameter.
    * Supports the codes `laboratory`, `social-history`, and `vital-signs`.
* The `code` parameter searches only `Observation.code`. For example, when fetching blood pressure, the resource is only returned when the search is based on `85354-9(Systolic and Diastolic BP)`. Using the component codes `8480-6(Systolic BP)` or `8462-4 (Diastolic BP)` does not return the resource.
    * Only when the `code` requested is for `85353-1 (Vital Signs Panel)` are qualifying vital sign Observation resources grouped as member references.
* The `date` parameter may be provided up to two times, and must use the `eq`, `ge`, `gt`, `le`, or `lt` prefixes. When a value is provided without a prefix, an implied `eq` prefix is used. When provided twice, the lower value must have a `ge` or `gt` prefix and the higher value must have an `le` or `lt` prefix.
* The `_revinclude` parameter may be provided once with the value `Provenance:target`. Example: `_revinclude=Provenance:target`
* When `_revinclude` is provided in a request, the OAuth2 token must include the `patient/Provenance.read  system/Provenance.read`  or  `user/Provenance.read` scope as applicable.


### Headers

<%= headers fhir_json: true %>

### Example Search By Patient

#### Request Laboratory

    GET https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Observation?patient=A879904FD2FE4B2D90C89FDA84E1285F&category=laboratory

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_OBSERVATION_SEARCH_BY_PT_LAB) %>


#### Request Social History

    GET https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Observation?patient=A879904FD2FE4B2D90C89FDA84E1285F&category=social-history

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_OBSERVATION_SEARCH_BY_PT_SOCHX) %>

#### Request Vital Signs

    GET https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Observation?patient=A879904FD2FE4B2D90C89FDA84E1285F&category=vital-signs

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_OBSERVATION_SEARCH_BY_PT_VS) %>

### Example Search By ID

#### Request

	GET https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Observation?_id=A879904FD2FE4B2D90C89FDA84E1285F.NRS.VS.50299

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_OBSERVATION_SEARCH_BY_ID) %>

Note: The examples provided here are non-normative and replaying them in the public sandbox is not guaranteed to yield the results shown on the site.

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by ID

List an individual Encounter by its id:

    GET /Observation/:id

### Authorization Types

<%= authorization_types(provider: true, patient: true)%>

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Observation/A879904FD2FE4B2D90C89FDA84E1285F.NRS.VS.50299

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_OBSERVATION_READ) %>

Note: The examples provided here are non-normative and replaying them in the public sandbox is not guaranteed to yield the results shown on the site.

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[search]: https://www.hl7.org/fhir/http.html#search
[read]: https://www.hl7.org/fhir/http.html#read
[`date`]: https://hl7.org/fhir/R4/search.html#date
[`token`]: https://hl7.org/fhir/R4/search.html#token
[`reference`]: https://hl7.org/fhir/r4/search.html#reference
[`count`]: https://hl7.org/fhir/r4/search.html#count 
[`_revinclude`]: https://www.hl7.org/fhir/search.html#revinclude
[errors]: ../../#client-errors
[OperationOutcomes]: https://hl7.org/fhir/R4/operationoutcome.html