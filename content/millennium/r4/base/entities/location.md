---
title: Location | R4 API
---

# Location

* TOC
{:toc}

## Overview

The Location resource describes physical places where healthcare services are provided. In Millennium, facilities are the top level of the patient location hierarchy. A facility is also an Organization resource at which patient locations are associated. All facilities are organizations, but not all organizations are facilities. A location can also be an ambulatory patient care area like a clinic or an emergency room. The location hierarchy from highest to lowest is facility, building, nursing unit, room, and bed.

The following fields are returned if valued:

* [Location id](http://hl7.org/fhir/r4/resource-definitions.html#Resource.id){:target="_blank"}
* [Status](http://hl7.org/fhir/R4/location-definitions.html#Location.status){:target="_blank"}
* [Name](http://hl7.org/fhir/R4/location-definitions.html#Location.name){:target="_blank"}
* [Alias](http://hl7.org/fhir/R4/location-definitions.html#Location.alias){:target="_blank"}
* [Mode](http://hl7.org/fhir/R4/location-definitions.html#Location.mode){:target="_blank"}
* [Telecom](http://hl7.org/fhir/R4/location-definitions.html#Location.telecom){:target="_blank"}
* [Address](http://hl7.org/fhir/R4/location-definitions.html#Location.address){:target="_blank"}
* [Physical Type](http://hl7.org/fhir/R4/location-definitions.html#Location.physicalType){:target="_blank"}
* [Managing Organization](http://hl7.org/fhir/R4/location-definitions.html#Location.managingOrganization){:target="_blank"}
* [Part Of](http://hl7.org/fhir/R4/location-definitions.html#Location.partOf){:target="_blank"}
* [Extensions including custom attribute](#extensions){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:location, :r4) %>

## Extensions

* [Custom Attribute]

### Custom Extensions

All URLs for custom extensions are defined as `https://fhir-ehr.cerner.com/r4/StructureDefinition/{id}`

 ID                 | Value\[x] Type                    | Description
--------------------|-----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------
 `custom-attribute` | None (contains nested extensions) | A client defined custom attribute for the resource. Attribute values can be of type [`integer`], [`string`], or [`CodeableConcept`].

## Search

Search for Locations that meet supplied query parameters:

    GET /Location?:parameters

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Parameters

 Name            | Required?               | Type       | Description
-----------------|-------------------------|------------|-------------------------------------------------------
 `_id`           | This or `-physicalType` | [`token`]  | The logical resource id associated with the resource.
 `-physicalType` | This or `_id`           | [`token`]  | The location’s physical type. Example: `http://terminology.hl7.org/CodeSystem/location-physical-type|ro`
 [`_count`]      | no                      | [`number`] | The maximum number of results to return. Defaults to `100`.

 Notes:

- The `-physicalType` parameter
  - For now we are only supporting standard systems.

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Location?_id=21250409

#### Response

<%= headers status: 200 %>
<%= json(:r4_location_bundle) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual Location by its id:

    GET /Location/:id

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Location/21250409

#### Response

<%= headers status: 200 %>
<%= json(:r4_location_entry) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`_count`]: https://hl7.org/fhir/r4/search.html#count
[`CodeableConcept`]: https://hl7.org/fhir/r4/datatypes.html#CodeableConcept
[`integer`]: https://hl7.org/fhir/r4/datatypes.html#integer
[`number`]: https://hl7.org/fhir/r4/search.html#number
[`string`]: https://hl7.org/fhir/r4/datatypes.html#string
[`token`]: http://hl7.org/fhir/r4/search.html#token
[Custom Attribute]: #custom-extensions
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
