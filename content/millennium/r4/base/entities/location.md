---
title: Location | R4 API
---

# Location

* TOC
{:toc}

## Overview

The Location resource describes physical places where healthcare services are provided. In Cerner Millennium, facilities are the top level of the patient location hierarchy. A facility is also an [Organization](../Organization) resource that is associated with patient locations. All facilities are organizations, but not all organizations are facilities. A location can also be an ambulatory patient care area such as a clinic or an emergency room. The location hierarchy from highest to lowest is facility, building, nursing unit, room, and bed.

* This resource supports the following [HL7 FHIR US Core Implementation Guide STU 4.0.0](https://hl7.org/fhir/us/core/STU4/){:target="_blank"} profiles:

  * [US Core Location Profile](http://hl7.org/fhir/us/core/STU4/StructureDefinition-us-core-location.html){:target="_blank"}

The following fields are returned if valued:

* [Location ID](http://hl7.org/fhir/r4/resource-definitions.html#Resource.id){:target="_blank"}
* [Status](http://hl7.org/fhir/R4/location-definitions.html#Location.status){:target="_blank"}
* [Name](http://hl7.org/fhir/R4/location-definitions.html#Location.name){:target="_blank"}
* [Alias](http://hl7.org/fhir/R4/location-definitions.html#Location.alias){:target="_blank"}
* [Identifier](http://hl7.org/fhir/R4/location-definitions.html#Location.identifier){:target="_blank"}
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

All URLs for custom extensions are defined as `https://fhir-ehr.cerner.com/r4/StructureDefinition/{id}`.

 ID                 | Value\[x] Type                    | Description
--------------------|-----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------
 `custom-attribute` | None (contains nested extensions) | A client-defined custom attribute for the resource. Attribute values can be the following types: [`integer`], [`string`], or [`CodeableConcept`].

## Search

Search for locations that meet supplied query parameters:

    GET /Location?:parameters

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Parameters

 Name                 | Required?               | Type         | Description
----------------------|-------------------------|--------------|-------------------------------------------------------
 `_id`                | Conditionally           | [`token`]    | The logical resource ID associated with the resource. This parameter is required if the `-physicalType` parameter is not used.
 `-physicalType`      | Conditionally           | [`token`]    | The location’s physical type. This parameter is required if the `_id` parameter is not used. Example: `http://terminology.hl7.org/CodeSystem/location-physical-type|ro`
 `identifier`         | No                      | [`token`]    | The location’s identifier. Example: `653385|FSI^~BUILD^~NU` 
 [`_count`]           | No                      | [`number`]   | The maximum number of results to return. Default: `100`
 `address`            | No                      | [`string`]   | Part of the location's address. Example: `123%20Main`
 `address-city`       | No                      | [`string`]   | The city specified in the address. Example: `Kansas`
 `address-state`      | No                      | [`string`]   | The state specified in the address. Example: `MO`
 `address-postalcode` | No                      | [`string`]   | The postal code specified in the address. Example: `64111`
 `name`               | No                      | [`string`]   | The portion of the location's name or alias. Example: `Main`
 `organization`       | No                      | [`reference`]| The Organization that manages the location. Example: `675844`


 Notes:

- When searching with the `-physicalType` parameter:
  - Searching by Cerner Millennium proprietary codes is not supported.
- When searching with the `-address-city` parameter:
  - Must include any of the following parameters: `address-state` or `address-postalcode`.
- When searching with the `name` and `organization` parameters:
  - Must include any of the following parameters: `-physicalType`, `identifier`, `address`, `address-state`, `address-city`, or `address-postalcode`.

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Location?_id=21250409

#### Response

<%= headers status: 200 %>
<%= json(:r4_location_bundle) %>

<%= disclaimer %>

### Example with identifier

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Location?identifier=653385|FSI^~BUILD^~NU

#### Response

<%= headers status: 200 %>
<%= json(:r4_location_bundle) %>

<%= disclaimer %>

### Example with address

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Location?address=MO

#### Response

<%= headers status: 200 %>
<%= json(:r4_location_address_bundle) %>

<%= disclaimer %>

### Example address-city with address-state

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Location?address-state=MO&address-city=Kansas

#### Response

<%= headers status: 200 %>
<%= json(:r4_location_address_city_state_bundle) %>

<%= disclaimer %>

### Example with name

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Location?address=kansas&name=ABC

#### Response

<%= headers status: 200 %>
<%= json(:r4_location_address_name_bundle) %>

<%= disclaimer %>

### Example with organization

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Location?address=kansas&organization=667844

#### Response

<%= headers status: 200 %>
<%= json(:r4_location_address_organization_bundle) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by ID

List an individual location by the associated ID:

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
[`reference`]: https://hl7.org/fhir/r4/search.html#reference
