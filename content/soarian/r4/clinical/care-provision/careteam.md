---
title: CareTeam | R4 API
---

# CareTeam

* TOC
{:toc}

## Overview

The CareTeam resource represents a patient’s care team members. Care team members or participants include medical practitioners (physicians, nurses, technicians, and so on), family members, and guardians. The care team can be specific to an encounter or to the patient across all encounters (longitudinal).

Soarian Clinicals<sup>®</sup> supports a read-only Application Programming Interface (API). This API accepts `GET` and `POST` based [search] and  and `GET` based [read] interactions. The response represents the most current information about the patient that is charted in Soarian Clinicals<sup>®</sup> at the time of the query.

The search results include the following fields if they contain values:

* [Care Team id](https://hl7.org/fhir/resource-definitions.html#Resource.id){:target="_blank"}
* [Status](https://hl7.org/fhir/careteam-definitions.html#CareTeam.status){:target="_blank"}
* [Category (Longitudinal or Encounter)](https://hl7.org/fhir/careteam-definitions.html#CareTeam.category){:target="_blank"}
* [Subject (Patient only](https://hl7.org/fhir/careteam-definitions.html#CareTeam.subject){:target="_blank"}
* [Encounter (Encounter Category only)](https://hl7.org/fhir/careteam-definitions.html#CareTeam.encounter){:target="_blank"}
* [Participant](https://hl7.org/fhir/careteam-definitions.html#CareTeam.participant){:target="_blank"}
  * [Role](https://hl7.org/fhir/careteam-definitions.html#CareTeam.participant.role){:target="_blank"}
  * [Member](https://hl7.org/fhir/careteam-definitions.html#CareTeam.participant.member){:target="_blank"} (references to RelatedPerson are contained)
    * [RelatedPerson patient](https://hl7.org/fhir/R4/relatedperson-definitions.html#RelatedPerson.patient){:target="_blank"}
    * [RelatedPerson relationship](https://hl7.org/fhir/R4/relatedperson-definitions.html#RelatedPerson.relationship){:target="_blank"} (text only)
    * [RelatedPerson name](https://hl7.org/fhir/R4/relatedperson-definitions.html#RelatedPerson.name){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:soarian_care_team, :r4) %>

## Search

Search for CareTeam resources that meet the specified query parameters:

    GET /CareTeam?:parameters


### Authorization Types

<%= authorization_types(provider: true, patient: true)%>

### Parameters

 Name          | Required?                                    | Type                                                       | Description
---------------|----------------------------------------------|------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------
 `_id`         | This, or `patient`                           | [`token`]											       | The logical resource ID associated with the resource.
 `patient`	   | This, or `_id`								  | [`reference`]											   | The patient who has the care team.
 `encounter`   | No 										  | [`reference`]											   | The encounter associated with the care team
 `status`      | No 										  | [`token`]												   | The status of the care team. May be a list separated by commas.
 `_revinclude` | No 										  | [`_revinclude`]											   | A request to include any Provenance resource in the bundle that refers to an Immunization resource in the search results. Only supported with Provenance. 


 Notes

*	The `status` parameter only supports the codes `active` and `inactive`.
* 	The `_revinclude` parameter may be provided once with the value `Provenance:target`. Example: `_revinclude=Provenance:target`
* 	When `_revinclude` is provided in a request, the OAuth2 token must include the `patient/Provenance.read  system/Provenance.read`  or  `user/Provenance.read` scope as applicable.


### Headers

<%= headers fhir_json: true %>

### Example Search by Patient

#### Request

    GET https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/CareTeam?patient=A879904FD2FE4B2D90C89FDA84E1285F

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_CARETEAM_SEARCH_BY_PT) %>

Note: The examples provided here are non-normative and replaying them in the public sandbox is not guaranteed to yield the results shown on the site

### Example Search by ID

#### Request

	GET https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/CareTeam?_id=A879904FD2FE4B2D90C89FDA84E1285F.LCC

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_CARETEAM_SEARCH_BY_ID) %>

Note: The examples provided here are non-normative and replaying them in the public sandbox is not guaranteed to yield the results shown on the site.

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by ID

List an individual CareTeam resource by its ID:

    GET /CareTeam/:id

## Authorization Types

<%= authorization_types(provider: true, patient: true)%>

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/CareTeam/A879904FD2FE4B2D90C89FDA84E1285F.LCC
    
#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_CARETEAM_READ) %>

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
