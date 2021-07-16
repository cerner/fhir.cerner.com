---
title: Patient | R4 API
---

# Patient

* TOC
{:toc}

## Overview

The Patient Resource provides general demographic information about a person receiving health care services from a specific organization. Common demographic fields include patient ID, patient name, gender, date of birth, address, phone, and primary language. Additional concepts returned as extensions and not part of the base resource include race, ethnicity, and birth sex. Soarian Clinicals<sup>®</sup> is a patient-centric application; thus, many of its other resources include the patient ID in their queries. A person receiving care from multiple organizations may have data available in multiple patient resources in multiple Fast Healthcare Interoperability Resources<sup>®</sup> (FHIR)<sup>®</sup> servers.

Soarian Clinicals<sup>®</sup> supports a read-only Application Programming Interface (API). This API accepts `GET` and `POST` based [search] interactions. The response represents the most current information about the patient that is charted in Soarian Clinicals<sup>®</sup> at the time of the query. 

The search results include the following fields if they are valued:


* [Patient id](https://hl7.org/fhir/R4/resource-definitions.html#Resource.id){:target="_blank"}
* [Patient Identifier](https://hl7.org/fhir/R4/patient-definitions.html#Patient.identifier){:target="_blank"}, only MR, PI and SB values are supported
* [Active](https://hl7.org/fhir/R4/patient-definitions.html#Patient.active){:target="_blank"}
* [Patient name](https://hl7.org/fhir/R4/patient-definitions.html#Patient.name){:target="_blank"}
* [Telecom Information](https://hl7.org/fhir/R4/patient-definitions.html#Patient.telecom){:target="_blank"}, may include phone and email
* [Gender (administrative)](https://hl7.org/fhir/R4/patient-definitions.html#Patient.gender){:target="_blank"}
* [Extensions including birth sex, ethnicity and race](#extensions){:target="_blank"}
* [Date of Birth]( https://hl7.org/fhir/R4/patient-definitions.html#Patient.birthDate){:target="_blank"}
* [Address]( https://hl7.org/fhir/R4/patient-definitions.html#Patient.address){:target="_blank"}
* [Communication (preferred language)]( https://hl7.org/fhir/R4/patient-definitions.html#Patient.communication){:target="_blank"}


## Terminology Bindings

<%= terminology_table(:soarian_patient, :r4) %>

## Extensions

* [US Core Race]
* [US Core Ethnicity]
* [US Core Birth Sex]

## Search

Search for Patients that meet specified query parameters:

    GET /Patient?:parameters

_Implementation Notes_

* A `422 (unprocessable entity)` HTTP response status code and OperationOutcome are returned when >499 patients qualify for the search criteria. FHIR<sup>®</sup> applications may prompt the user for more specific search criteria to avoid this possibility.

### Authorization Types

<%= authorization_types(provider: true, patient: true) %>

### Parameters

 Name                 | Required?                                    | Type       | Description
----------------------|----------------------------------------------|------------|--------------------------------------------------------------------------
 `_id`                | This or any other required search parameter | [`token`]  | The logical resource ID associated with the resource.
 `identifier`         | This or any other search parameter, or `_id` | [`token`]  | A patient identifier. Only MR, PI, or SB identifiers are supported and therefore searched. Example: `urn:oid:1.1.1.1.1.1`\|`1022228`
 `name`               | This or any other search parameter, or `_id` | [`string`] | The start of the either family or given name of the patient. Previous name values are searchable. Example: `Doe`
 `family`             | This or any other search parameter, or `_id` | [`string`] | The start of the patient's family name. Previous name values are searchable. Example: `Doe`
 `given`              | This or any other search parameter, or `_id` | [`string`] | The start of the patient's given name. Previous name values are searchable. Example: `Jane`
 `birthdate`          | This or any other search parameter, or `_id` | [`date`]   | The patient's date of birth.  Example: `1990-01-01`
 `gender`             | No                                           | [`token`]  | The patient's gender. Example: `male`
 `_revinclude`        | No | [`_revinclude`]  | A request to include any Provenance resource in the bundle that refers to a Patient resource in the search results. Only supported with Provenance.
 
Notes:

* For the Patient user
  * A search without any parameters is supported that returns all the Patient resources that the user can access
  * All other search parameters are supported as either the `_id`, or a combination of `identifier` , `birthdate`, `name`, `family`, or  `given` parameters must be provided, while still returning only the Patient resources that the user can access.
* For the Provider user, either the `_id`, or a combination of `identifier` , `birthdate`, `name`, `family`, or  `given` parameters must be provided.
* The `gender` parameter may only be provided if at least one of the `identifier` , `birthdate`, `name`, `family`, or `given` parameters is provided.
* The `identifier` parameter supports the `:of-type` modifier and has the format system\|code\|value, where the system and code refer to an `Identifier.type.coding.system` and `.code`, and match if any of the type codes match. All three parts of the format must be present.
* The `name`, `family`, and `given` parameters search for current and previous names.
* The `identifier`, `name`, `family`, `given`, and `gender` parameters may be provided exactly once and may have only a single value.
* The `birthdate` parameter
  * May be provided once using the `eq` prefix 
  * May be provided up to twice to imply a date range using one of the following prefixes: `ge`, `le`, `gt`, or `lt`
  * Must not be provided with a time component

### Headers

 <%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-myrecord-sc.cerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/Patient?_id=A879904FD2FE4B2D90C89FDA84E1285F

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_SEARCH_BY_ID_ENTRY) %>

Note: The examples provided here are non-normative and replaying them in the public sandbox is not guaranteed to yield the results shown on the site.

### Errors

* The common [errors] and [OperationOutcomes](https://www.hl7.org/fhir/r4/operationoutcome.html) may be returned. 
* In addition, a `422 Unprocessable Entity` HTTP response status code and OperationOutcome is returned when >499 patients qualify for the search criteria.

## Retrieve by ID

Return an individual Patient resource by the resource ID:

    GET /Patient/:id

### Authorization Types

<%= authorization_types(provider: true, patient: true) %>

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-myrecord-sc.cerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/Patient/A879904FD2FE4B2D90C89FDA84E1285F

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_READ_BY_ID_ENTRY) %>

Note: The examples provided here are non-normative and replaying them in the public sandbox is not guaranteed to yield the results shown on the site.

### Linking Duplicate Patient Records Example

The **link** element is used to assert that patient resources refer to the same patient. This element is used to support the scenario where a duplicate record is retired; this process is known as a **patient merge** in Soarian Clincials<sup>®</sup>. When the requested patient record has been merged into another record, an inactive Patient entry is returned that has a link to the current Patient entry. Entries for merged, or source, patients are only returned when retrieving the entries directly by ID. Entries for the target patient are returned with all qualifying searches.

The ability to perform patient merge operations is not available through the Cerner Ignite APIs for Soarian Clinicals<sup>®</sup> platform..

#### Request

    GET https://fhir-myrecord-sc.cerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/Patient?_id=0A1119CA2414486AAD618F5A2D25556B

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_MERGE) %>

Note: The examples provided here are non-normative and replaying them in the public sandbox is not guaranteed to yield the results shown on the site.

### Errors

The common [errors] and [OperationOutcomes](https://www.hl7.org/fhir/r4/operationoutcome.html) may be returned.

[search]: https://www.hl7.org/fhir/http.html#search
[`date`]: https://hl7.org/fhir/R4/search.html#date
[`string`]: https://hl7.org/fhir/R4/search.html#string
[`token`]: http://hl7.org/fhir/R4/search.html#token
[`_revinclude`]: https://www.hl7.org/fhir/search.html#revinclude
[errors]: ../../#client-errors
[OperationOutcomes]: https://hl7.org/fhir/R4/operationoutcome.html
[US Core Race]: https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-race.html
[US Core Ethnicity]: https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-ethnicity.html
[US Core Birth Sex]: https://build.fhir.org/ig/HL7/US-Core-R4/StructureDefinition-us-core-birthsex.html