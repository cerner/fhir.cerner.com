---
title: Immunization | R4 API
---

# Immunization

* TOC
{:toc}

## Overview

The Immunization resource includes the view of current and historical administration of vaccinations to a patient in all healthcare settings. This resource contains the functionality to query a patient's immunization history.

Detailed administration records may be found in MedicationAdministration, while the Immunization resource would represent the known vaccination history regardless of where the administration itself was done.

An immunization reaction may indicate an allergy or intolerance. If so, a separate AllergyIntolerance resource instance should be created as well.

The [US Core 4.0.0 USCDI matrix](http://hl7.org/fhir/us/core/STU4/general-guidance.html) could be used to confirm the exact profiles for each resource, and to get the correct links

  * The following [HL7® FHIR® US Core Implementation Guide STU 4.0.0](https://hl7.org/fhir/us/core/STU4/) Profiles are supported by this resource:
    * [US Core Immunization Profile](http://hl7.org/fhir/us/core/STU4/StructureDefinition-us-core-immunization.html)

The following fields are returned if valued:

* [Id](http://hl7.org/fhir/R4/resource-definitions.html#Resource.id){:target="_blank"}
* [Status](http://hl7.org/fhir/R4/immunization-definitions.html#Immunization.status){:target="_blank"}
* [Status reason](http://hl7.org/fhir/R4/immunization-definitions.html#Immunization.statusReason){:target="_blank"}
* [Vaccine administered](http://hl7.org/fhir/R4/immunization-definitions.html#Immunization.vaccineCode){:target="_blank"}
* [Patient](http://hl7.org/fhir/R4/immunization-definitions.html#Immunization.patient){:target="_blank"}
* [Patient encounter](http://hl7.org/fhir/R4/immunization-definitions.html#Immunization.encounter){:target="_blank"}
* [Occurrence dateTime](http://hl7.org/fhir/R4/immunization-definitions.html#Immunization.occurrence_x_){:target="_blank"}
* [Indicates if the record is from the source who administered the vaccine](http://hl7.org/fhir/R4/immunization-definitions.html#Immunization.primarySource){:target="_blank"}
* [reportOrigin](http://hl7.org/fhir/R4/immunization-definitions.html#Immunization.reportOrigin){:target="_blank"}
* [Location](http://hl7.org/fhir/R4/immunization-definitions.html#Immunization.location){:target="_blank"}
* [Vaccine manufacturer](http://hl7.org/fhir/R4/immunization-definitions.html#Immunization.manufacturer){:target="_blank"}
* [Vaccine lot number](http://hl7.org/fhir/R4/immunization-definitions.html#Immunization.lotNumber){:target="_blank"}
* [Vaccine expiration date](http://hl7.org/fhir/R4/immunization-definitions.html#Immunization.expirationDate){:target="_blank"}
* [Vaccine administration site](http://hl7.org/fhir/R4/immunization-definitions.html#Immunization.site){:target="_blank"}
* [Vaccine administration route](http://hl7.org/fhir/R4/immunization-definitions.html#Immunization.route){:target="_blank"}
* [Dosage administered](http://hl7.org/fhir/R4/immunization-definitions.html#Immunization.doseQuantity){:target="_blank"}
* [Performer](http://hl7.org/fhir/R4/immunization-definitions.html#Immunization.performer){:target="_blank"}
  * [Type of performer (ordering or administering)](http://hl7.org/fhir/R4/immunization-definitions.html#Immunization.performer.function){:target="_blank"}
    * [Reference](http://hl7.org/fhir/r4/references.html#Reference){:target="_blank"} ([Practitioner](https://hl7.org/fhir/r4/practitioner.html){:target="_blank"} \| [Organization](http://hl7.org/fhir/R4/organization.html){:target="_blank"})
  * [Individual who performed](http://hl7.org/fhir/R4/immunization-definitions.html#Immunization.performer.actor){:target="_blank"}
* [Note](http://hl7.org/fhir/R4/immunization-definitions.html#Immunization.note){:target="_blank"}
  * [Author](http://hl7.org/fhir/R4/immunization-definitions.html#Immunization.note){:target="_blank"}
    * [Reference](http://hl7.org/fhir/r4/references.html#Reference){:target="_blank"} ([Practitioner](https://hl7.org/fhir/r4/practitioner.html){:target="_blank"} \| [Time](http://hl7.org/fhir/R4/datatypes-definitions.html#Annotation.time){:target="_blank"} \| [Text](http://hl7.org/fhir/R4/datatypes-definitions.html#Annotation.text){:target="_blank"})
* [Protocol applied](http://hl7.org/fhir/R4/immunization-definitions.html#Immunization.protocolApplied){:target="_blank"}
  * [doseNumber](http://hl7.org/fhir/R4/immunization-definitions.html#Immunization.protocolApplied.doseNumber_x_){:target="_blank"} ([string](http://hl7.org/fhir/R4/datatypes.html#string){:target="_blank"})
  * [Target disease](http://hl7.org/fhir/R4/immunization-definitions.html#Immunization.protocolApplied.targetDisease){:target="_blank"}
    * [doseNumber](http://hl7.org/fhir/R4/immunization-definitions.html#Immunization.protocolApplied.doseNumber_x_){:target="_blank"} ([string](http://hl7.org/fhir/R4/datatypes.html#string){:target="_blank"})
  * [Dose number](http://hl7.org/fhir/R4/immunization-definitions.html#Immunization.protocolApplied.doseNumber_x_){:target="_blank"} ([string](http://hl7.org/fhir/R4/datatypes.html#string){:target="_blank"})

## Terminology Bindings

<%= terminology_table(:immunization, :r4) %>

## Search

Search for Immunizations that meet supplied query parameters:

    GET /Immunization?:parameters

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Parameters

 Name             | Required?          | Type          | Description
------------------|--------------------|---------------|-----------------------------------------------------------------------------------------------------
 `_id`            | This, or `patient` | [`token`]     | The logical resource id associated with the resource.
 `patient`        | This, or `_id`     | [`reference`] | The patient for the vaccination record. Example: `12345`
 `date`           | No                 | [`date`]      | Date range into which the immunization administration date falls. Must be prefixed by 'ge' or 'le'.
 `_revinclude`    | No                 | [`token`]     | Provenance resource entries to be returned as part of the bundle. Example:_revinclude=Provenance:target
 `target-disease` | No                 | [`token`]     | The target disease the dose is being administered against.                                 Example: `http://hl7.org/fhir/sid/cvx|213`

Notes:

* The `date` parameter may be provided:
  * once with a prefix `ge` or `le` representing the earliest date or latest date. (e.g. `date=ge2015-01-01`, `date=le2016-01-01`)
  * twice with the prefixes `ge`, `le` to indicate a specific range. (e.g. `date=ge2015-01-01&date=le2016-01-01`)
* The `_revinclude` parameter may be provided once with the value `Provenance:target`. Example: `_revinclude=Provenance:target`
* The `_revinclude` parameter may be provided in combination with the `_id/patient` parameter. Example: `_id=M17255835,M17255827&_revinclude=Provenance:target`
* When `_revinclude` is provided in a request to a closed endpoint, the OAuth2 token must include the `user/Provenance.read` scope.
* **Currently the `patient/Provenance.read` scope is not supported and hence `_revinclude` cannot be utilised for patient persona.**
* The `target-disease` parameter
  * Searching by Millennium proprietary codes is not supported

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Immunization?patient=12724066

#### Response

<%= headers status: 200 %>
<%= json(:R4_IMMUNIZATION_BUNDLE) %>

<%= disclaimer %>

### Example with RevInclude

### Authorization Types

<%= authorization_types(provider: true, system: true) %>

#### Request

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Immunization?_id=M17255835,M17255827&_revinclude=Provenance:target

#### Response

<%= headers status: 200 %>
<%= json(:r4_immunization_revinclude_bundle) %>
<%= disclaimer %>

#### Patient Authorization Request

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Immunization?patient=12724066

#### Response

<%= headers status: 200 %>
<%= json(:R4_IMMUNIZATION_PATIENT_BUNDLE) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual Immunization by its id:

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

<%= disclaimer %>

#### Patient Authorization Request For Completed Status

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Immunization/M197197986

#### Response

<%= headers status: 200 %>
<%= json(:R4_IMMUNIZATION_PATIENT_ENTRY) %>

<%= disclaimer %>

#### Patient Authorization Request For Entered in Error Status

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Immunization/M211860902

#### Response

<%= headers status: 200 %>
<%= json(:R4_IMMUNIZATION_ENTERED_IN_ERROR_STATUS) %>

<%= disclaimer %>

#### Patient Authorization Request For Not done Status

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Immunization/HM178147794

#### Response

<%= headers status: 200 %>
<%= json(:R4_IMMUNIZATION_NOT_DONE_STATUS) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Create

Create a new Immunization.

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
X-Request-Id: 1638e30e497b93ff4383b2ff0eaeea68
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Update

Update an Immunization.

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
X-Request-Id: 1638e30e497b93ff4383b2ff0eaeea91
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`token`]: http://hl7.org/fhir/R4/search.html#token
[`reference`]: http://hl7.org/fhir/R4/search.html#reference
[`date`]: http://hl7.org/fhir/R4/search.html#date
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
