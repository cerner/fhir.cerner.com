---
title: Immunization | R4 API
---

# Immunization

* TOC
{:toc}

## Overview

The Immunization resource is intended to cover the recording of current and historical administration of vaccines to patients across all healthcare disciplines, in all care settings, and all regions. This resource contains the functionality to query a patient's immunization history. You can find detailed administration records in the [`MedicationAdministration`] resource, while this Immunization resource represents the known vaccination history regardless of where the administration itself was done.

An immunization reaction may indicate an allergy or intolerance. If so, create a separate [`AllergyIntolerance`] resource instance as well.

Note that while the terms immunization and vaccination are not clinically identical, for the purposes of FHIR resources, the terms are used synonymously.

  * This resource supports the following [HL7 FHIR US Core Implementation Guide STU 4.0.0](https://hl7.org/fhir/us/core/STU4/) profiles:

    * [US Core Immunization Profile](http://hl7.org/fhir/us/core/STU4/StructureDefinition-us-core-immunization.html)

The following fields are returned if valued:

* [ID](https://hl7.org/fhir/R4/resource-definitions.html#Resource.id){:target="_blank"}
* [Immunization Record Identifier](https://hl7.org/fhir/R4/immunization-definitions.html#Immunization.identifier){:target="_blank"}
* [Status](https://hl7.org/fhir/R4/immunization-definitions.html#Immunization.status){:target="_blank"}
* [Status reason](https://hl7.org/fhir/R4/immunization-definitions.html#Immunization.statusReason){:target="_blank"}
* [Vaccine administered](https://hl7.org/fhir/R4/immunization-definitions.html#Immunization.vaccineCode){:target="_blank"}
* [Patient](https://hl7.org/fhir/R4/immunization-definitions.html#Immunization.patient){:target="_blank"}
* [Patient encounter](https://hl7.org/fhir/R4/immunization-definitions.html#Immunization.encounter){:target="_blank"}
* [Occurrence DateTime](https://hl7.org/fhir/R4/immunization-definitions.html#Immunization.occurrence_x_){:target="_blank"}
* [Primary Source](https://hl7.org/fhir/R4/immunization-definitions.html#Immunization.primarySource){:target="_blank"}
* [Report Origin](https://hl7.org/fhir/R4/immunization-definitions.html#Immunization.reportOrigin){:target="_blank"}
* [Location](https://hl7.org/fhir/R4/immunization-definitions.html#Immunization.location){:target="_blank"}
* [Vaccine manufacturer](https://hl7.org/fhir/R4/immunization-definitions.html#Immunization.manufacturer){:target="_blank"}
* [Vaccine lot number](https://hl7.org/fhir/R4/immunization-definitions.html#Immunization.lotNumber){:target="_blank"}
* [Vaccine expiration date](https://hl7.org/fhir/R4/immunization-definitions.html#Immunization.expirationDate){:target="_blank"}
* [Vaccine administration site](https://hl7.org/fhir/R4/immunization-definitions.html#Immunization.site){:target="_blank"}
* [Vaccine administration route](https://hl7.org/fhir/R4/immunization-definitions.html#Immunization.route){:target="_blank"}
* [Dosage administered](https://hl7.org/fhir/R4/immunization-definitions.html#Immunization.doseQuantity){:target="_blank"}
* [Performer](https://hl7.org/fhir/R4/immunization-definitions.html#Immunization.performer){:target="_blank"}
  * [Type of performer (ordering or administering)](https://hl7.org/fhir/R4/immunization-definitions.html#Immunization.performer.function){:target="_blank"}
  * [Individual who performed](https://hl7.org/fhir/R4/immunization-definitions.html#Immunization.performer.actor){:target="_blank"}
    * [Reference](https://hl7.org/fhir/r4/references.html#Reference){:target="_blank"} ([Practitioner](https://hl7.org/fhir/r4/practitioner.html){:target="_blank"} \| [Organization](https://hl7.org/fhir/R4/organization.html){:target="_blank"})
* [Note](https://hl7.org/fhir/R4/immunization-definitions.html#Immunization.note){:target="_blank"} (follows [Annotation](https://hl7.org/fhir/R4/datatypes.html#Annotation) structure)
  * [Reference](https://hl7.org/fhir/r4/references.html#Reference){:target="_blank"} ([Practitioner](https://hl7.org/fhir/r4/practitioner.html){:target="_blank"})
  * [Time](https://hl7.org/fhir/R4/datatypes-definitions.html#Annotation.time){:target="_blank"}
  * [Text](https://hl7.org/fhir/R4/datatypes-definitions.html#Annotation.text){:target="_blank"}
* [Protocol applied](https://hl7.org/fhir/R4/immunization-definitions.html#Immunization.protocolApplied){:target="_blank"}
  * [Dose Number String](https://hl7.org/fhir/R4/immunization-definitions.html#Immunization.protocolApplied.doseNumber_x_){:target="_blank"}
  * [Target disease](https://hl7.org/fhir/R4/immunization-definitions.html#Immunization.protocolApplied.targetDisease){:target="_blank"}

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Terminology Bindings

<%= terminology_table(:immunization, :r4) %>

## Search

Search for immunizations that meet supplied query parameters:

    GET /Immunization?:parameters

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Parameters

 Name             | Required?          | Type          | Description
------------------|--------------------|---------------|-----------------------------------------------------------------------------------------------------
 `_id`            | Conditionally      | [`token`]     | The logical resource ID associated with the resource. This parameter is required if the `patient` parameter is not used. Example: `M12345`
 `patient`        | Conditionally      | [`reference`] | The patient for the vaccination record. This parameter is required if the `_id` parameter is not used. Example: `12345`
 `date`           | No                 | [`date`]      | The date range for the immunization administration or administrations. Example: `date=ge2020-01-01T08:00:00.000Z&date=le2020-01-31T17:00:00.000Z`
 `_lastUpdated`   | N                  | [`date`]      | Date on which the immunization was last updated. Example: `_lastUpdated=gt2014-09-24` or `_lastUpdated=gt2014-09-24T12:00:00.000Z`
 `target-disease` | No                 | [`token`]     | The target disease that the dose is being administered against. Example: `http://hl7.org/fhir/sid/cvx|213`
 `_revinclude`    | No                 | [`token`]     | The Provenance resource entries that are returned as part of the bundle.

_Implementation Notes_

- When searching with the `_id` parameter:
  - It can be provided with either a single reference, or a comma-separated list of references. Example: `_id=M1234` or `_id=M1234,M5678`
  - It must not be provided with any other parameters, except with `_revinclude` as indicated below.
- When searching with the `patient` parameter:
  - It can be provided with only a single reference; a comma-separated list is not supported.
- When searching with the `date` parameter:
  - For a single `date` occurrence:
    - It must be provided with either the `le` or `ge` prefix to search for vaccination record administrations earlier or later than the given date.
    - The time component is optional.
  - For two `date` occurrences: 
    - It must be provided with `le` and `ge` prefixes to search for vaccination records within a specific range. 
    - The time component is optional, but must be consistent. If one date has a time component, so must the other.
- When  searching with `_lastUpdated` parameter: 
  - It can be provided with only a single reference, and must use the `gt` prefix
  - The time component is optional.
  - The `date` and `_lastUpdated` parameters may not be provided together.
- When searching with the `target-disease` parameter:
  - Searching by Cerner Millennium proprietary codes is not supported.
- When searching with the `_revinclude` parameter:
  - It can be provided once with the `Provenance:target` value. Example: `_revinclude=Provenance:target`
  - It can be provided with the `_id` or `patient` parameter. Example: `_id=M17255835&_revinclude=Provenance:target`

- When `_revinclude` is provided in a request to the closed endpoint, the OAuth2 token must include the scope corresponding to the Authorization Type, such as `user/Provenance.read`, `patient/Provenance.read` or `system/Provenance.read`.

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Immunization?patient=12724066

#### Response

<%= headers status: 200 %>
<%= json(:R4_IMMUNIZATION_BUNDLE) %>


### Example with RevInclude

### Authorization Types

<%= authorization_types(provider: true, system: true) %>

#### Request

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Immunization?_id=M17255835,M17255827&_revinclude=Provenance:target

#### Response

<%= headers status: 200 %>
<%= json(:r4_immunization_revinclude_bundle) %>

#### Patient Authorization Request

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Immunization?patient=12724066

#### Response

<%= headers status: 200 %>
<%= json(:R4_IMMUNIZATION_PATIENT_BUNDLE) %>

## Retrieve by ID

List an individual immunization by the associated ID:

    GET /Immunization/:id

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Immunization/M197197986

#### Response

<%= headers status: 200 %>
<%= json(:R4_IMMUNIZATION_ENTRY) %>

#### Patient Authorization Request For Completed Status

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Immunization/M197197986

#### Response

<%= headers status: 200 %>
<%= json(:R4_IMMUNIZATION_PATIENT_ENTRY) %>


#### Patient Authorization Request For Entered in Error Status

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Immunization/M211860902

#### Response

<%= headers status: 200 %>
<%= json(:R4_IMMUNIZATION_ENTERED_IN_ERROR_STATUS) %>

#### Patient Authorization Request For Not Done Status

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Immunization/HM178147794

#### Response

<%= headers status: 200 %>
<%= json(:R4_IMMUNIZATION_NOT_DONE_STATUS) %>

## Create

Create a new immunization.

    POST /Immunization

### Authorization Types

<%= authorization_types(provider: true, system: true, patient: false) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', 'Content-Type': 'application/fhir+json'} %>

### Body Fields

<%= definition_table(:immunization, :create, :r4) %>

### Example

#### Request

    POST https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Immunization

#### Body

<%= json(:R4_IMMUNIZATION_CREATE) %>

#### Response

<%= headers status: 201 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: application/fhir+json
Date: Sun, 30 Jun 2019 10:35:00 GMT
Etag: W/"1"
Last-Modified: Sun, 30 Jun 2019 10:35:00 GMT
Location: https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Immunization/147391087
Vary: Origin
opc-request-id: /11111111111111111111111111111111/11111111111111111111111111111111
X-Request-Id: 11111111-1111-1111-1111-111111111111
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

## Update

Update an immunization.

    PUT /Immunization/:id

### Authorization Types

<%= authorization_types(provider: true, system: true, patient: false) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', 'Content-Type': 'application/fhir+json',
                   'If-Match': 'W/"&lt;Current version of the Immunization resource>"'} %>

### Body fields

<%= definition_table(:immunization, :update, :r4) %>

### Example

#### Request

    PUT https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Immunization/M197197986

#### Body

<%= json(:R4_IMMUNIZATION_UPDATE) %>

#### Response

<%= headers status: 200 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: application/fhir+json
Date: Sun, 30 Jun 2019 10:40:00 GMT
Etag: W/"2"
Last-Modified: Sun, 30 Jun 2019 10:40:00 GMT
Vary: Origin
X-Request-Id: b72617f9-1a52-46ca-bb52-b0b3f976f9fb
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

[`token`]: http://hl7.org/fhir/R4/search.html#token
[`reference`]: http://hl7.org/fhir/R4/search.html#reference
[`date`]: http://hl7.org/fhir/R4/search.html#date
[errors]: ../../../#client-errors
[OperationOutcomes]: ../../../#operation-outcomes
[`MedicationAdministration`]: ../medication-administration/#overview
[`AllergyIntolerance`]: ../../summary/allergy-intolerance/#overview
