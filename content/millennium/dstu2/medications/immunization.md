---
title: Immunization | DSTU 2 API
---

# Immunization

* TOC
{:toc}

## Overview

The Immunization resource includes the view of current and historical administration of vaccinations to a patient in all healthcare settings. This resource contains the functionality to query a patient's immunization history.

Detailed administration records may be found in MedicationAdministration, while the Immunization resource would represent the known vaccination history regardless of where the administration itself was done.

An immunization reaction may indicate an allergy or intolerance. If so, a separate AllergyIntolerance resource instance should be created as well.

The following fields are returned if valued:

* [Id](http://hl7.org/fhir/dstu2/resource-definitions.html#Resource.id){:target="_blank"}
* [Vaccine administered](http://hl7.org/fhir/DSTU2/immunization-definitions.html#Immunization.vaccineCode){:target="_blank"}
* [Administration date/time](http://hl7.org/fhir/DSTU2/immunization-definitions.html#Immunization.date){:target="_blank"}
* [Status](http://hl7.org/fhir/DSTU2/immunization-definitions.html#Immunization.status){:target="_blank"}
* [Patient](http://hl7.org/fhir/DSTU2/immunization-definitions.html#Immunization.patient){:target="_blank"}
* [Was not given](http://hl7.org/fhir/DSTU2/immunization-definitions.html#Immunization.wasNotGiven){:target="_blank"}
* [Reason not given](http://hl7.org/fhir/DSTU2/immunization-definitions.html#Immunization.explanation.reasonNotGiven){:target="_blank"}
* [Patient encounter](http://hl7.org/fhir/DSTU2/immunization-definitions.html#Immunization.encounter){:target="_blank"}
* [Who administered](http://hl7.org/fhir/DSTU2/immunization-definitions.html#Immunization.performer){:target="_blank"}
* [Administration site](http://hl7.org/fhir/DSTU2/immunization-definitions.html#Immunization.location){:target="_blank"}
* [Administration route](http://hl7.org/fhir/DSTU2/immunization-definitions.html#Immunization.route){:target="_blank"}
* [Vaccine manufacturer](http://hl7.org/fhir/DSTU2/immunization-definitions.html#Immunization.manufacturer){:target="_blank"}
* [Lot number](http://hl7.org/fhir/DSTU2/immunization-definitions.html#Immunization.lotNumber){:target="_blank"}
* [Expiration date](http://hl7.org/fhir/DSTU2/immunization-definitions.html#Immunization.expirationDate){:target="_blank"}
* [Dose](http://hl7.org/fhir/DSTU2/immunization-definitions.html#Immunization.doseQuantity){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:immunization, :dstu2) %>

## Search

Search for Immunizations that meet supplied query parameters:

    GET /Immunization?:parameters

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Parameters

 Name      | Required?          | Type          | Description
-----------|--------------------|---------------|-----------------------------------------------------------------------------------------------------
 `_id`     | This, or `patient` | [`token`]     | The logical resource id associated with the resource.
 `patient` | This, or `_id`     | [`reference`] | The patient for the vaccination record. Example: `12345`
 `date`    | N                  | [`date`]      | Date range into which the immunization administration date falls. Must be prefixed by 'ge' or 'le'.

Notes:

* The `date` parameter value should be prefixed once by 'ge' representing the earliest date, and once by 'le' representing the latest date. Examples: `date=ge2015-01-01&date=le2016-01-01`, `date=ge2015-01-01`, `date=le2016-01-01`

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Immunization?patient=12724066

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_immunization_bundle) %>

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

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Immunization/M197197986

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_immunization_1) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`token`]: http://hl7.org/fhir/DSTU2/search.html#token
[`reference`]: http://hl7.org/fhir/dstu2/search.html#reference
[`date`]: http://hl7.org/fhir/DSTU2/search.html#date
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
