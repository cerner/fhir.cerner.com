---
title: Immunization | DSTU 2 API
---

# Immunization

* TOC
{:toc}

## Overview

The Immunization resource is intended to cover the recording of current and historical administration of vaccines to patients across all healthcare disciplines, in all care settings, and all regions.  This resource contains the functionality to query a patient's immunization history. Detailed administration records may be found in the [`MedicationAdministration`] resource, while this Immunization resource would represent the known vaccination history regardless of where the administration itself was done.

An immunization reaction may indicate an allergy or intolerance. If so, a separate [`AllergyIntolerance`] resource instance must be created.

Note that while the terms immunization and vaccination are not clinically identical, for the purposes of FHIR resources, the terms are used synonymously.

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

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Terminology Bindings

<%= terminology_table(:immunization, :dstu2) %>

## Search

Search for immunizations that meet supplied query parameters:

    GET /Immunization?:parameters

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Parameters

 Name      | Required          | Type          | Description
-----------|--------------------|---------------|-----------------------------------------------------------------------------------------------------
 `_id`     | Conditionally | [`token`]     | The logical resource ID associated with the resource. This parameter is required if the `patient` parameter is not used. Example: `12345`
 `patient` | Conditionally     | [`reference`] | The patient for the vaccination record(s). This parameter is required if the `_id` parameter is not used. Example: `12345`
 `date`    | No                  | [`date`]      | Date range for the immunization administration(s). Example: `date=ge2020-01-01T08:00:00.000Z&date=le2020-01-31T17:00:00.000Z`

_Implementation Notes_

- When searching with the `_id` parameter:
  - It can be provided with either a single reference, or a comma-separated list of references. Example `_id=1234` or `_id=1234,5678`
  - It must not be provided with any other parameters.
- When searching with the `patient` parameter:
  - It can be provided with only a single reference; a comma-separated list is not supported.
- When searching with the `date` parameter:
  - For a single `date` occurrence:
    - It must be provided with either the `le` or `ge` prefix to search for vaccination record(s) administrations earlier or later than the given date.
    - The `time` component is optional.
  - For two `date` occurences: 
    - It must be provided with `le` and `ge` prefixes to search for vaccination record(s) within a specific range. 
    - The `time` component is optional, but must be consistent. If one date has a `time` component, so must the other.


### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Immunization?patient=12724066

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_immunization_bundle) %>


## Retrieve by ID

List an individual immunization by its ID:

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


[`token`]: http://hl7.org/fhir/DSTU2/search.html#token
[`reference`]: http://hl7.org/fhir/dstu2/search.html#reference
[`date`]: http://hl7.org/fhir/DSTU2/search.html#date
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
[`MedicationAdministration`]: ../medication-administration/#overview
[`AllergyIntolerance`]: ../../general-clinical/allergy-intolerance/#overview
