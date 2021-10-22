---
title: AllergyIntolerance | R4 API
---

# AllergyIntolerance

* TOC
{:toc}

## Overview


The AllergyIntolerance resource provides the clinical assessment of a patient’s allergy when exposed to a specific substance or class of substance, including information about the adverse reaction. _Soarian Clinicals_<sup>®</sup> does not differentiate between an allergy and an intolerance. The term __allergy__ is used generically and may overlap with an __intolerance__. Substances include medications, foods, and environmental allergens (such as plants and animals). 

Allergy negation statements for No Known Allergies (NKA), No Known Drug Allergies (NKDA), and No Known Food Allergies (NKFA) are reported using the code element. If a patient has not been asked about their allergies, these statements are conveyed by the absence of information (empty query response). Allergy negation statements for latex and contrast are not coded and are conveyed in the response with the AllergyIntolerance.code.text element as __No known latex allergy (situation)__ or __No known contrast allergy (situation)__.

_Soarian Clinicals_<sup>®</sup> supports a read-only Application Programming Interface (API). This API accepts `GET` and `POST` based [search] and `GET` based [read] interactions. The response represents the most current information about the patient that is charted in _Soarian Clinicals_<sup>®</sup> at the time of the query.

The search results include the following fields if they contain values:

* [Allergy Id](https://hl7.org/fhir/R4/resource-definitions.html#Resource.id)
* [Clinical Status](https://hl7.org/fhir/R4/allergyintolerance-definitions.html#AllergyIntolerance.clinicalStatus)
* [Verification Status](https://hl7.org/fhir/R4/allergyintolerance-definitions.html#AllergyIntolerance.verificationStatus)
* [Category (medication, food, environment)](https://hl7.org/fhir/R4/allergyintolerance-definitions.html#AllergyIntolerance.category)
* [Allergy Code](https://hl7.org/fhir/R4/allergyintolerance-definitions.html#AllergyIntolerance.code)
* [Patient](https://hl7.org/fhir/R4/allergyintolerance-definitions.html#AllergyIntolerance.patient)
* [Adverse reaction](https://hl7.org/fhir/R4/allergyintolerance-definitions.html#AllergyIntolerance.reaction)
    * [Manifestation](https://hl7.org/fhir/R4/allergyintolerance-definitions.html#AllergyIntolerance.reaction.manifestation)
    * [Severity](https://hl7.org/fhir/R4/allergyintolerance-definitions.html#AllergyIntolerance.reaction.severity)

## Terminology Bindings

<%= terminology_table(:soarian_allergy_intolerance, :r4) %>

## Search

Search for AllergyIntolerance resources that meet the specified query parameters:

    GET /AllergyIntolerance?:parameters

### Authorization Types

<%= authorization_types(provider: true, patient: true, system:false)%>

### Parameters

 Name           | Required?          | Type            | Description
----------------|--------------------|-----------------|------------------------------------------------------------------------
 `_id`          | This, or `patient` | [`token`]       | The logical resource ID associated with the resource.
 `patient`      | This, or `_id`     | [`reference`]   | The patient who has the allergy. 
 `_revinclude`  | No                 | [`_revinclude`] | A request to include any Provenance resource in the bundle that refers to an AllergyIntolerance resource in the search results. Only supported with Provenance.
 
Notes:

* The `_revinclude` parameter may be provided once with the value `Provenance:target`. Example: `_revinclude=Provenance:target`
* When `_revinclude` is provided in a request, the OAuth2 token must include the `patient/Provenance.read  system/Provenance.read`  or  `user/Provenance.read` scope as applicable.

### Headers

<%= headers fhir_json: true %>

### Example Search by Patient

#### Request

    GET https://fhir-myrecord-sc.cerner.com/r4/0e885770-571b-4c0c-b30f-21df9a058d0d/AllergyIntolerance?patient=A879904FD2FE4B2D90C89FDA84E1285F

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_ALLERGY_INTOLERANCE_SEARCH_BY_PT_ENTRY) %>

Note: The examples provided here are non-normative and replaying them in the public sandbox is not guaranteed to yield the results shown on the site.

### Example Search by ID

#### Request

    GET https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/AllergyIntolerance?_id=A879904FD2FE4B2D90C89FDA84E1285F.ALG.17073

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_ALLERGY_INTOLERANCE_SEARCH_BY_ID_ENTRY) %>

Note: The examples provided here are non-normative and replaying them in the public sandbox is not guaranteed to yield the results shown on the site.

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by ID

List an individual AllergyIntolerance resource by its ID:

    GET /AllergyIntolerance/:id


### Authorization Types

<%= authorization_types(provider: true, patient: true, system: false)%>

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-myrecord-sc.sandboxcerner.com/r4/3f2aca24-87f3-4eac-a6d7-1f75247e6b43/AllergyIntolerance/A879904FD2FE4B2D90C89FDA84E1285F.ALG.17073

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_ALLERGY_INTOLERANCE_READ_BY_ID) %>

Note: The examples provided here are non-normative and replaying them in the public sandbox is not guaranteed to yield the results shown on the site.

### Errors

The common [errors] and [OperationOutcomes](https://www.hl7.org/fhir/r4/operationoutcome.html) may be returned.

[`reference`]: https://hl7.org/fhir/r4/search.html#reference
[`token`]: https://hl7.org/fhir/R4/search.html#token
[`_revinclude`]: https://hl7.org/fhir/search.html#revinclude
[errors]: ../../#client-errors
[OperationOutcomes]: https://hl7.org/fhir/R4/operationoutcome.html
[search]: https://www.hl7.org/fhir/http.html#search
[read]: https://www.hl7.org/fhir/http.html#read
