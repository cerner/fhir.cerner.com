---
title: Encounter | R4 API
---

# Encounter

* TOC
{:toc}

## Overview

The Encounter resource provides admissions or visits during which health care services were provided to a patient. An encounter has a class to distinguish between different health care settings such as inpatient, outpatient, emergency, and so on.

Soarian Clinicals<sup>®</sup> supports a read-only Application Programming Interface (API). This API accepts `GET` and `POST` based [search] and `GET` based [read] interactions. The response represents the most current information about the patient that is charted in Soarian Clinicals<sup>®</sup> at the time of the query. 

The search results include the following fields if they contain values:

* [Encounter id](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.id){:target="_blank"}
* [Encounter identifier](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.identifier){:target="_blank"}
* [Status](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.status){:target="_blank"}
* [Class](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.class){:target="_blank"}
* [Type](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.type){:target="_blank"}
* [Subject(Patient only)](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.subject){:target="_blank"}
* [Participant:](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.participant){:target="_blank"}
  * [Type](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.participant.type){:target="_blank"}
  * [Start/end time of the participation](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.participant.period){:target="_blank"}
  * [Individual](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.participant.individual){:target="_blank"} 
* [Start/end time of the encounter](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.period){:target="_blank"}
* [Reason for visit](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.reasonCode){:target="_blank"}
* [Hospitalization:](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.hospitalization){:target="_blank"}
  * [Discharge disposition](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.hospitalization.dischargeDisposition){:target="_blank"}
* [Location:](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.location){:target="_blank"}
  * [Location name](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.location.location){:target="_blank"}
  * [Location status](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.location.status){:target="_blank"}
  * [Location telecom](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.location.telecom){:target="_blank"}
  * [Location address](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.location.address){:target="_blank"}
  * [Location managing organization](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.location.managingOrganization){:target="_blank"}
* [Service Provider (Organization)](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.serviceProvider){:target="_blank"}


## Terminology Bindings

<%= terminology_table(:soarian_encounter, :r4) %>

## Search

Search for Encounter resources that meet the specified query parameters:

    GET /Encounter?:parameters

_Implementation Notes_

* [Encounter.location.location](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.location.location) is always returned as a reference to a [contained](https://hl7.org/fhir/r4/references.html#contained) Location resource .

### Authorization Types

<%= authorization_types(provider: true, patient: true)%>

### Parameters

 Name          | Required?                              | Type                                                          | Description
---------------|----------------------------------------|---------------------------------------------------------------|
 `_id`         | This, or `patient`                     | [`token`]                                                     | The logical resource ID associated with the resource
 `patient`     | This, or `_id`                         | [`reference`]                                                 | The patient who has the encounter. 
 `date`        | No                                     | [`date`]                                                      | Date range into which the encounter falls. Example: `date=gt2014-09-24 or date=lt2015-09-24T12:00:00.000Z`
 `_revinclude` | No                                     | [`_revinclude`]                                               | A request to include any Provenance resource in the bundle that refers to an Encounter resource in the search results. Only supported with Provenance.

 Notes

* The `date` parameter may be provided up to two times, and must use the `eq`, `ge`, `gt`, `le`, or `lt` prefixes. When a value is provided without a prefix, an implied `eq` prefix is used. When provided twice, the lower value must have a `ge` or `gt` prefix and the higher value must have an `le` or `lt` prefix.
* The `_revinclude` parameter may be provided once with the value `Provenance:target`. Example: `_revinclude=Provenance:target`
* When `_revinclude` is provided in a request, the OAuth2 token must include the `patient/Provenance.read  system/Provenance.read`  or  `user/Provenance.read` scope as applicable.


### Headers

<%= headers fhir_json: true %>

### Example Search by Patient

#### Request

    GET https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Encounter?patient=A879904FD2FE4B2D90C89FDA84E1285F

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_ENCOUNTER_SEARCH_BY_PT_ENTRY) %>

Note: The examples provided here are non-normative and replaying them in the public sandbox is not guaranteed to yield the results shown on the site.

### Example Search by ID

#### Request

    GET https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Encounter?_id=A879904FD2FE4B2D90C89FDA84E1285F.29019

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_ENCOUNTER_SEARCH_BY_ID_ENTRY) %>

Note: The examples provided here are non-normative and replaying them in the public sandbox is not guaranteed to yield the results shown on the site.

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by ID

List an individual Encounter resource by its ID:

    GET /Encounter/:id

_Implementation Notes_

* [Encounter.location.location](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.location.location) is always returned as a reference to a [contained](https://hl7.org/fhir/r4/references.html#contained) Location resource.

### Authorization Types

<%= authorization_types(provider: true, patient: true)%>

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/Encounter/A879904FD2FE4B2D90C89FDA84E1285F.29019

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_ENCOUNTER_READ_BY_ID) %>

Note: The examples provided here are non-normative and replaying them in the public sandbox is not guaranteed to yield the results shown on the site.

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[search]: https://www.hl7.org/fhir/http.html#search
[read]: https://www.hl7.org/fhir/http.html#read
[`date`]: https://hl7.org/fhir/R4/search.html#date
[`token`]: https://hl7.org/fhir/R4/search.html#token
[`reference`]: https://hl7.org/fhir/R4/search.html#reference
[`_revinclude`]: https://www.hl7.org/fhir/search.html#revinclude
[errors]: ../../#client-errors
[OperationOutcomes]: https://hl7.org/fhir/R4/operationoutcome.html
