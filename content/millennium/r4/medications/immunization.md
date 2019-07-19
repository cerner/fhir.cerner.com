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

The following fields are returned if valued:

* [Id](http://hl7.org/fhir/R4/resource-definitions.html#Resource.id){:target="_blank"}
* [Status](http://hl7.org/fhir/R4/immunization-definitions.html#Immunization.status){:target="_blank"}
* [Status reason](http://hl7.org/fhir/R4/immunization-definitions.html#Immunization.statusReason){:target="_blank"}
* [Vaccine administered](http://hl7.org/fhir/R4/immunization-definitions.html#Immunization.vaccineCode){:target="_blank"}
* [Patient](http://hl7.org/fhir/R4/immunization-definitions.html#Immunization.patient){:target="_blank"}
* [Patient encounter](http://hl7.org/fhir/R4/immunization-definitions.html#Immunization.encounter){:target="_blank"}
* [Administration date/time](http://hl7.org/fhir/R4/immunization-definitions.html#Immunization.occurrence_x_){:target="_blank"}
* [Indicates if the record is from the source who administered the vaccine](http://hl7.org/fhir/R4/immunization-definitions.html#Immunization.primarySource){:target="_blank"}
* [Source of secondarily reported record](http://hl7.org/fhir/R4/immunization-definitions.html#Immunization.reportOrigin){:target="_blank"}
* [Location](http://hl7.org/fhir/R4/immunization-definitions.html#Immunization.location){:target="_blank"}
* [Vaccine manufacturer](http://hl7.org/fhir/R4/immunization-definitions.html#Immunization.manufacturer){:target="_blank"}
* [Vaccine lot number](http://hl7.org/fhir/R4/immunization-definitions.html#Immunization.lotNumber){:target="_blank"}
* [Vaccine expiration date](http://hl7.org/fhir/R4/immunization-definitions.html#Immunization.expirationDate){:target="_blank"}
* [Vaccine administration site](http://hl7.org/fhir/R4/immunization-definitions.html#Immunization.site){:target="_blank"}
* [Vaccine administration route](http://hl7.org/fhir/R4/immunization-definitions.html#Immunization.route){:target="_blank"}
* [Dosage administered](http://hl7.org/fhir/R4/immunization-definitions.html#Immunization.doseQuantity){:target="_blank"}
* [Performer](http://hl7.org/fhir/R4/immunization-definitions.html#Immunization.performer){:target="_blank"}
    * [Type of performer (ordering or administering)](http://hl7.org/fhir/R4/immunization-definitions.html#Immunization.performer.function){:target="_blank"}
    * [Individual who performed](http://hl7.org/fhir/R4/immunization-definitions.html#Immunization.performer.actor){:target="_blank"}
* [Note](http://hl7.org/fhir/R4/immunization-definitions.html#Immunization.note){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:immunization, :r4) %>

## Search

Search for Immunizations that meet supplied query parameters:

    GET /Immunization?:parameters

### Authorization Types

<%= authorization_types(practitioner: true, patient: false, system: true) %>

### Parameters

 Name      | Required?          | Type          | Description
-----------|--------------------|---------------|-----------------------------------------------------------------------------------------------------
 `_id`     | This, or `patient` | [`token`]     | The logical resource id associated with the resource.
 `patient` | This, or `_id`     | [`reference`] | The patient for the vaccination record. Example: `12345`
 `date`    | N                  | [`date`]      | Date range into which the immunization administration date falls. Must be prefixed by 'ge' or 'le'.

Notes:

* The `date` parameter may be provided: 
    * once with a prefix `ge` or `le` representing the earliest date or latest date. (e.g. `date=ge2015-01-01`, `date=le2016-01-01`)
    * twice with the prefixes `ge`, `le` to indicate a specific range. (e.g. `date=ge2015-01-01&date=le2016-01-01`)

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Immunization?patient=1316020

#### Response

<%= headers status: 200 %>
<%= json(:R4_IMMUNIZATION_BUNDLE) %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual Immunization by its id:

    GET /Immunization/:id

### Authorization Types

<%= authorization_types(practitioner: true, patient: false, system: true) %>

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Immunization/M43434511

#### Response

<%= headers status: 200 %>
<%= json(:R4_IMMUNIZATION_ENTRY) %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Create

Create a new Immunization.

    POST /Immunization

### Authorization Types

<%= authorization_types(practitioner: true, system: true, patient: false) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', 'Content-Type': 'application/fhir+json'} %>

### Body Fields

<%= definition_table(:immunization, :create, :r4) %>

### Example

#### Request

    POST https://fhir-ehr.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Immunization

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
Location: https://fhir-ehr.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Immunization/147391087
Server-Response-Time: 3890.363996
Status: 201 Created
Vary: Origin
X-Request-Id: 1638e30e497b93ff4383b2ff0eaeea68
X-Runtime: 3.890282
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`token`]: http://hl7.org/fhir/R4/search.html#token
[`reference`]: http://hl7.org/fhir/R4/search.html#reference
[`date`]: http://hl7.org/fhir/R4/search.html#date
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
