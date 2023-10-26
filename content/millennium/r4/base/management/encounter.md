---
title: Encounter | R4 API
---

# Encounter

* TOC
{:toc}

## Overview

The Encounter resource provides admissions or visits during which health care services were provided to a patient. An encounter has a class to distinguish between different health care settings such as inpatient, outpatient, emergency, and so on. A patient may have one medical record number with multiple encounter numbers per facility or organization. There is substantial variance between organizations in the definition of an encounter and what events are aggregated together to constitute an encounter.

The following [HL7® FHIR® US Core Implementation Guide STU 4.0.0](https://hl7.org/fhir/us/core/STU4/){:target="_blank"} Profiles are supported by this resource:

* [US Core Encounter Profile](http://hl7.org/fhir/us/core/STU4/StructureDefinition-us-core-encounter.html){:target="_blank"}

The following fields are returned if valued:

* [Encounter id](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.id){:target="_blank"}
* [Encounter identifier (eg: FIN)](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.identifier){:target="_blank"}
* [Status](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.status){:target="_blank"}
* [Class](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.class){:target="_blank"}
* [Type](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.type){:target="_blank"}
* [Service Type](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.serviceType){:target="_blank"}
* [Priority](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.priority){:target="_blank"}
* [Subject](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.subject){:target="_blank"}
  * [Reference](https://hl7.org/fhir/r4/references.html#Reference){:target="_blank"} ([Patient](https://hl7.org/fhir/R4/patient.html){:target="_blank"}) 
* [Participant:](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.participant){:target="_blank"}
  * [Type](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.participant.type){:target="_blank"}
  * [Name](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.participant.individual){:target="_blank"}
    * [Reference](https://hl7.org/fhir/r4/references.html#Reference){:target="_blank"} ([Practitioner](https://hl7.org/fhir/r4/practitioner.html){:target="_blank"})
* [Appointment](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.appointment){:target="_blank"} 
* [Start/end time of the encounter](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.period){:target="_blank"}
* [Reason for visit](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.reasonCode){:target="_blank"}
* [Incident](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.reasonCode){:target="_blank"}
* [Admitting diagnoses](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.reasonCode){:target="_blank"}
* [Administrative problem](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.reasonCode){:target="_blank"}  
* [Hospitalization:](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.hospitalization){:target="_blank"}
  * [Admit source](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.hospitalization.admitSource){:target="_blank"}
  * [Diet preference](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.hospitalization.dietPreference){:target="_blank"}
  * [Special courtesy](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.hospitalization.specialCourtesy){:target="_blank"}
  * [Special arrangement](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.hospitalization.specialArrangement){:target="_blank"}
  * [Discharge destination](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.hospitalization.destination){:target="_blank"}
    * [Reference](https://hl7.org/fhir/r4/references.html#Reference){:target="_blank"} ([Location](https://hl7.org/fhir/r4/location.html){:target="_blank"})
  * [Discharge disposition](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.hospitalization.dischargeDisposition){:target="_blank"}
* [Location:](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.location){:target="_blank"}
  * [Name](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.location.location){:target="_blank"}
  * [Location status](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.location.status){:target="_blank"}
* [Service provider (Organization)](https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.serviceProvider){:target="_blank"}
* [Extensions including client organization, custom attribute, estimated financial responsibility amount, estimated financial responsibility not collected reason, military service connected indicator, and payment collection status](#extensions){:target="_blank"}

### Contained Location Bindings

<%= terminology_table(:encounter_contained_location, :r4) %>

## Terminology Bindings

<%= terminology_table(:encounter, :r4) %>

## Extensions

* [Client Organization]
* [Custom Attribute]
* [Estimated Financial Responsibility Amount]
* [Estimated Financial Responsibility Not Collected Reason]
* [Military Service Connected Indicator]
* [Payment Collection Status]

### Custom Extensions

All URLs for custom extensions are defined as `https://fhir-ehr.cerner.com/r4/StructureDefinition/{id}`

 ID                                                        | Value\[x] Type                                                   | Description
-----------------------------------------------------------|------------------------------------------------------------------|----------------------------------------------------------------
 `client-organization`                                     | [`Reference`](https://hl7.org/fhir/r4/references.html#Reference) | The financially responsible organization.
 `custom-attribute`                                        | None (contains nested extensions)                                | A client defined custom attribute for the resource. Attribute values can be of type [`integer`], [`string`], [`CodeableConcept`], or [`dateTime`].
 `estimated-financial-responsibility-amount`               | [`Money`]                                                        | The estimated amount to be collected for the encounter.
 `estimated-financial-responsibility-not-collected-reason` | [`CodeableConcept`]                                              | The reason no estimated amount is collected for the encounter.
 `military-service-connected-indicator`                    | [`CodeableConcept`]                                              | Identifies whether an encounter is connected to military service.
 `payment-collection-status`                               | [`CodeableConcept`]                                              | The status of the payment collection for the encounter.

## Search

Search for encounters that meet supplied query parameters:

    GET /Encounter?:parameters

_Implementation Notes_

* The [Encounter.hospitalization.destination] will be returned as a reference to a [contained] location resource.
* The [Encounter.location.location] may be returned as a reference to a [contained] location resource.
* A populated Encounter response bundle will be sorted from newest to oldest based on the start of the [Encounter.period].

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true)%>

### Parameters

Name          | Required         | Type          | Description
--------------|------------------|---------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 `_id`        | Conditional      | [`token`]     | The logical resource ID associated with the Encounter. This parameter is required if `patient` or `subject` or `account` or `identifier` or `pageContext` is not used. Example: `7891`
`patient`     | Conditional      | [`reference`] | The patient present at the Encounter. This parameter is required if `subject` or `account` or `_id` or `identifier` or `pageContext`  is not used. Example: `12345`
`subject`     | Conditional      | [`reference`] | The patient present at the Encounter. This parameter is required if `patient` or `account` or `_id` or `identifier` or `pageContext` is not used. Example: `subject=Patient/12345` or `subject:Patient=12345`
`account`     | Conditional      | [`reference`] | The account associated with the Encounters. This parameter is required if `patient` or `subject` or `_id` or `identifier` or `pageContext` is not used. Example: `F703726`
`identifier`  | Conditional      | [`token`]     | An Encounter's identifier. This parameter is required if `patient` or `subject` or `account` or `_id` or `pageContext` is not used. Example: `urn:oid:1.2.243.58|110219457`
`date`        | No               | [`dateTime`]  | Datetime range into which the Encounter's period datetime falls. Must be prefixed by 'ge', 'gt', 'le' or 'lt'.
[`_count`]    | No               | [`number`]    | The maximum number of results to return.
`status`      | No               | [`token`]     | The status of the Encounter. Example: `planned`
`_revinclude` | No               | [`token`]     | Provenance resource entries to be returned as part of the bundle. Example: `_revinclude=Provenance:target`
  
Notes:

* When using the `_revinclude` parameter:
  * It may be provided once with the value `Provenance:target`. Example: `_revinclude=Provenance:target`
  * It may be provided with the `_id/patient/subject/account` parameter. Example: `_id=74771957,4732066&_revinclude=Provenance:target`
* If `_revinclude` is provided in a request to the closed endpoint, the OAuth2 token must include the `user/Provenance.read` scope. Currently, `patient/Provenance.read` is not supported and hence `_revinclude` cannot be utilized for patient persona.
* `_count` and `status` must be provided with patient
* `status` valid parameters are `planned`, `in-progress`, `finished`, `cancelled`
* The `date` parameter may be provided:
  * once with a prefix ge, gt, le or lt representing the earliest datetime or latest datetime.  (e.g.: 
    `date=ge2015-01-01T00:00:00.000Z`,
    `date=gt2015-01-01T00:00:00.000Z`,    
    `date=le2016-01-01T00:00:00.000Z`,
    `date=lt2016-01-01T00:00:00.000Z`)
  * twice with the prefixes of ge or gt and le or lt to indicate a specific range. (e.g.: 
    `date=ge2015-01-01T00:00:00.000Z&date=le2016-01-01T00:00:00.000Z`,
    `date=ge2015-01-01T00:00:00.000Z&date=lt2016-01-01T00:00:00.000Z`,
    `date=gt2015-01-01T00:00:00.000Z&date=le2016-01-01T00:00:00.000Z`,
    `date=gt2015-01-01T00:00:00.000Z&date=lt2016-01-01T00:00:00.000Z`,
    )
* The `identifier` parameter
  * Code details are required. System is optional. If a system is not provided, search is performed across all systems supported by the
    Encounter resource.
  * When a valid system is provided, search is performed against the specific system.

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Encounter?patient=12724066

#### Response

<%= headers status: 200 %>
<%= json(:r4_encounter_bundle) %>

<%= disclaimer %>

### Example with RevInclude

### Authorization Types

<%= authorization_types(provider: true, system: true) %>

#### Request

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Encounter?_id=1361920&_revinclude=Provenance:target

#### Response

<%= headers status: 200 %>
<%= json(:r4_encounter_revinclude_bundle) %>


#### Patient Authorization Request

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Encounter?patient=12724066

#### Response

<%= headers status: 200 %>
<%= json(:R4_ENCOUNTER_PATIENT_BUNDLE) %>

<%= disclaimer %>
### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by ID

List an individual encounter by the associated ID:

    GET /Encounter/:id

_Implementation Notes_

* The [Encounter.hospitalization.destination] will be returned as a reference to a [contained] location resource.
* The [Encounter.location.location] may be returned as a reference to a [contained] location resource.

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true)%>

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Encounter/97939518

#### Response

<%= headers status: 200 %>
<%= json(:r4_encounter) %>

<%= disclaimer %>

### Encounter Combines Example

Cerner Millennium supports the ability to logically merge an encounter record into another encounter record when both records are describing the same encounter. This is known
as an encounter combine. If necessary, this merging can later be undone by performing an encounter uncombine. When the requested encounter record has been combined into another
record, an inactive encounter entry is returned which has a reference to the current encounter entry in the partOf field. Entries for combined encounters will only be returned when retrieving
the entries directly by ID. They will not be returned when searching with other parameters.

The ability to perform encounter combine or uncombine operations is not available through the Cerner Ignite platform.

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Encounter/97865451

#### Response

<%= headers status: 200 %>
<%= json(:R4_COMBINED_ENCOUNTER_ENTRY) %>

#### Patient Authorization Request

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Encounter/97954225

#### Response

<%= headers status: 200 %>
<%= json(:R4_ENCOUNTER_PATIENT_ENTRY) %>

<%= disclaimer %>
### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Create

Create an individual encounter.

    POST /Encounter

### Authorization Types

<%= authorization_types(provider: true, patient: false, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', 'Accept': 'application/fhir+json', 'Content-Type': 'application/fhir+json'} %>

### Body Fields

<%= definition_table(:encounter, :create, :r4) %>

### Example

#### Request

    POST https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Encounter

#### Body

  <%= json(:r4_encounter_create) %>

#### Response

<%= headers status: 201 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: application/fhir+json
Date: Wed, 27 Mar 2019 15:59:33 GMT
Etag: W/"0"
Last-Modified: Wed, 27 Mar 2019 15:59:30 GMT
Location: https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Encounter/1621910
Vary: Origin
X-Request-Id: 11111111111111111111111111111111
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Patch

Patch an existing encounter.

    PATCH /Encounter/:id

_Implementation Notes_

* This implementation follows the [JSON PATCH](https://tools.ietf.org/html/rfc6902) spec.
* Only operations on the paths listed below are supported.

### Authorization Types

<%= authorization_types(provider: true, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', 'Accept': 'application/fhir+json',
                   'Content-Type': 'application/json-patch+json', 'If-Match': 'W/"&lt;Current version of the Encounter resource>"'} %>

### Patch Operations

<%= patch_definition_table(:encounter_patch, :r4) %>

### Example

#### Request

    PATCH https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Encounter/97939518

#### Body

<%= json(:r4_encounter_patch) %>

#### Response

<%= headers status: 200 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: text/html
Date: Tue, 26 Mar 2019 15:42:29 GMT
Etag: W/"10"
Last-Modified: Tue, 26 Mar 2019 15:42:27 GMT
Vary: Origin
X-Request-Id: 11111111111111111111111111111111
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`_count`]: https://hl7.org/fhir/r4/search.html#count
[`CodeableConcept`]: https://hl7.org/fhir/r4/datatypes.html#CodeableConcept
[`dateTime`]: https://hl7.org/fhir/r4/datatypes.html#dateTime
[`integer`]: https://hl7.org/fhir/r4/datatypes.html#integer
[`Money`]: https://hl7.org/fhir/r4/datatypes.html#Money
[`number`]: https://hl7.org/fhir/r4/search.html#number
[`reference`]: https://hl7.org/fhir/r4/search.html#reference
[`string`]: https://hl7.org/fhir/r4/datatypes.html#string
[`token`]: https://hl7.org/fhir/r4/search.html#token
[Client Organization]: #custom-extensions
[Custom Attribute]: #custom-extensions
[contained]: https://hl7.org/fhir/r4/references.html#contained
[Encounter.hospitalization.destination]: https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.hospitalization.destination
[Encounter.location.location]: https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.location.location
[Encounter.period]: https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.period
[Encounter.serviceProvider]: https://hl7.org/fhir/r4/encounter-definitions.html#Encounter.serviceProvider
[errors]: ../../../#client-errors
[Estimated Financial Responsibility Amount]: #custom-extensions
[Estimated Financial Responsibility Not Collected Reason]: #custom-extensions
[Military Service Connected Indicator]: #custom-extensions
[OperationOutcomes]: ../../../#operation-outcomes
[Payment Collection Status]: #custom-extensions
