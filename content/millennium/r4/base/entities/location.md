---
title: Location | R4 API
---

# Location

* TOC
{:toc}

## Overview

The Location resource describes physical places where healthcare services are provided. In Millennium, facilities are the top level of the patient location hierarchy. A facility is also an Organization resource at which patient locations are associated. All facilities are organizations, but not all organizations are facilities. A location can also be an ambulatory patient care area like a clinic or an emergency room. The location hierarchy from highest to lowest is facility, building, nursing unit, room, and bed.

* The following [HL7® FHIR® US Core Implementation Guide STU 4.0.0](https://hl7.org/fhir/us/core/STU4/){:target="_blank"} Profiles are supported by this resource:

  * [US Core Location Profile](http://hl7.org/fhir/us/core/STU4/StructureDefinition-us-core-location.html){:target="_blank"}

The following fields are returned if valued:

* [Location id](http://hl7.org/fhir/r4/resource-definitions.html#Resource.id){:target="_blank"}
* [Status](http://hl7.org/fhir/R4/location-definitions.html#Location.status){:target="_blank"}
  * [Location Status](http://hl7.org/fhir/R4/valueset-location-status.html){:target="_blank"} ([Active](http://hl7.org/fhir/R4/codesystem-location-status.html#location-status-active){:target="_blank"} \| [Inactive](http://hl7.org/fhir/R4/codesystem-location-status.html#location-status-inactive){:target="_blank"})
* [Name](http://hl7.org/fhir/R4/location-definitions.html#Location.name){:target="_blank"}
* [Alias](http://hl7.org/fhir/R4/location-definitions.html#Location.alias){:target="_blank"}
* [Identifier](http://hl7.org/fhir/R4/location-definitions.html#Location.identifier){:target="_blank"}
* [Mode](http://hl7.org/fhir/R4/location-definitions.html#Location.mode){:target="_blank"}
  * [Location Mode](http://hl7.org/fhir/R4/valueset-location-mode.html){:target="_blank"} ([Instance](http://hl7.org/fhir/R4/codesystem-location-mode.html#location-mode-instance){:target="_blank"})
* [Telecom](http://hl7.org/fhir/R4/location-definitions.html#Location.telecom){:target="_blank"}
  * [Location Telecom System](http://hl7.org/fhir/R4/valueset-contact-point-system.html){:target="_blank"}
  * [Location Address Type](http://hl7.org/fhir/R4/valueset-address-type.html){:target="_blank"}
  * [Location Address Use](http://hl7.org/fhir/R4/valueset-address-use.html){:target="_blank"}
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

 Name                 | Required?               | Type         | Description
----------------------|-------------------------|--------------|-------------------------------------------------------
 `_id`                | This or `-physicalType` | [`token`]    | The logical resource id associated with the resource.
 `-physicalType`      | This or `_id`           | [`token`]    | The location’s physical type. Example: `http://terminology.hl7.org/CodeSystem/location-physical-type|ro`
 `identifier`         | no                      | [`token`]    | The location’s identifier. Example: `653385|FSI^~BUILD^~NU` 
 [`_count`]           | no                      | [`number`]   | The maximum number of results to return. Defaults to `100`.
 `address`            | no                      | [`string`]   | A (part of the) address of the location.
 `address-city`       | no                      | [`string`]   | A city specified in an address
 `address-state`      | no                      | [`string`]   | A state specified in an address
 `address-postalcode` | no                      | [`string`]   | A postal code specified in an address
 `name`               | no                      | [`string`]   | A portion of the location's name or alias
 `organization`       | no                      | [`reference`]| Searches for locations that are managed by the provided organization


 Notes:

- The `-physicalType` parameter
  - Searching by Millennium proprietary codes is not supported.
- The `-address-city` parameter
  - needs address-state or address-postalcode while searching with address-city

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

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Location?address=PA

#### Response

<%= headers status: 200 %>
<%= json(:r4_location_address_bundle) %>

<%= disclaimer %>

### Example address-city with address-state

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Location?address-state=PA&address-city=Malvern

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

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Location?address=kansas&organization=3054032

#### Response

<%= headers status: 200 %>
<%= json(:r4_location_address_organization_bundle) %>

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
[`reference`]: https://hl7.org/fhir/r4/search.html#reference
