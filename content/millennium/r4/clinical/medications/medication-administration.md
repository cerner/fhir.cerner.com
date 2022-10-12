---
title: MedicationAdministration | R4 API
---

# MedicationAdministration

* TOC
{:toc}

## Overview

The Medication Administration resource provides information about medications and vaccines administered to a patient or consumed by a patient including injections, intravenous solutions, and self administered oral medications.

* **IMPORTANT NOTE**: Infuse or Bolus administration results for continuous infusion orders may require additional calculations to determine the actual amount of medication administered per ingredient. An additional calculation is required when the dosage dose does not equal the contained Medication ingredient strength denominator. In this case, calculate the ratio between the ingredient’s numerator divided by the denominator and multiply by dosage dose. This will be the actual amount of medication administered.

The following fields are returned if valued:

* [MedicationAdministration id]( https://hl7.org/fhir/r4/resource-definitions.html#Resource.id){:target="_blank"}
* [Infuse Over Time Extension](#custom-extensions)
* [Status](https://hl7.org/fhir/r4/medicationadministration-definitions.html#MedicationAdministration.status){:target="_blank"}
* [StatusReason](https://hl7.org/fhir/r4/medicationadministration-definitions.html#MedicationAdministration.statusReason){:target="_blank"}
* [Medication](https://hl7.org/fhir/r4/medicationadministration-definitions.html#MedicationAdministration.medication_x_){:target="_blank"}
* [Subject](https://hl7.org/fhir/r4/medicationadministration-definitions.html#MedicationAdministration.subject){:target="_blank"}
* [Context](https://hl7.org/fhir/r4/medicationadministration-definitions.html#MedicationAdministration.context){:target="_blank"}
* [Effective](https://hl7.org/fhir/r4/medicationadministration-definitions.html#MedicationAdministration.effective_x_){:target="_blank"}
* [Performer](https://hl7.org/fhir/r4/medicationadministration-definitions.html#MedicationAdministration.performer){:target="_blank"}
* [Request](https://hl7.org/fhir/r4/medicationadministration-definitions.html#MedicationAdministration.request){:target="_blank"}
* [Note](https://hl7.org/fhir/r4/medicationadministration-definitions.html#MedicationAdministration.note){:target="_blank"}
* [Dosage](https://hl7.org/fhir/r4/medicationadministration-definitions.html#MedicationAdministration.dosage){:target="_blank"}
  * [Body Site](https://hl7.org/fhir/r4/medicationadministration-definitions.html#MedicationAdministration.dosage.site ){:target="_blank"}
  * [Route](https://hl7.org/fhir/r4/medicationadministration-definitions.html#MedicationAdministration.dosage.route){:target="_blank"}
  * [Dose](https://hl7.org/fhir/r4/medicationadministration-definitions.html#MedicationAdministration.dosage.dose){:target="_blank"}
  * [Rate](https://hl7.org/fhir/r4/medicationadministration-definitions.html#MedicationAdministration.dosage.rate){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:medication_administration, :r4) %>

### Contained Medication Bindings

<%= terminology_table(:medication_administration_contained_medication, :r4) %>

## Extensions

* [Infuse Over Time]

### Custom Extensions

All URLs for custom extensions are defined as `https://fhir-ehr.cerner.com/r4/StructureDefinition/{id}`

 ID                 | Value\[x] Type | Description
-----------------------------------------------------------|------------------------------------------------------------------|----------------------------------------------------------------
 `infuse-over-time` | [`Quantity`](https://hl7.org/fhir/r4/datatypes.html#quantity)       | The length of time in minutes it took to infuse a medication.

## Search

Search for MedicationAdministrations that meet supplied query parameters:

    GET /MedicationAdministration?:parameters

_Implementation Notes_

* MedicationAdministration.medication may be a reference to a contained Medication when the Medication cannot be represented by a CodeableConcept because it contains a unique combination of ingredients. Medications in the system always exist within the context of a MedicationAdministration and cannot be referenced independently.

* IMPORTANT NOTE: Infuse or Bolus administration results for continuous infusion orders may require additional calculations to determine the actual amount of medication administered per ingredient. An additional calculation is required when the dosage dose does not equal the contained Medication ingredient strength denominator. In this case, calculate the ratio between the ingredient’s numerator divided by the denominator and multiply by dosage dose. This will be the actual amount of medication administered.

### Authorization Types

<%= authorization_types(provider: true, patient: false, system: true) %>

### Parameters

 Name                   | Required?          | Type          | Description
------------------------|--------------------|---------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 `_id`            | This, or `patient` | [`token`]     | The logical resource id associated with the resource. Example: `_id=12345`
 `patient`        | This, or `_id`     | [`reference`] | The specific patient to return MedicationAdministrations for. Example: `patient=1234`
 `status`         | N                  | [`token`]     | The [status] of the medication administration event. May be a list separated by commas. Example: `status=completed,not-done`
 `performer`      | N                  | [`reference`] | The identity of the individual who administered the medication. May be a list separated by commas. Example: `performer=1245,7659`
 `effective-time` | N                  | [`date`]      | An date-time range when administration happened. Must include a time. Example: `effective-time=ge2014-05-19T20:54:02.000Z`
 `_count`         | N                  | [`number`]    | The maximum number of results to include in a page. Example: `50`

Notes:

* `effective-time` parameter may be provided 
  * once with a prefix `ge` or `gt` or `le` or `lt`.   Example: `effective-time=ge2014-05-19T20:54:02.000Z`
  * twice with the prefixes `ge`, `gt`, `le`, `lt`.    Example: `effective-time=ge2014-05-19T20:54:02.000Z&effective-time=le2014-05-20T20:54:02.000Z`

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationAdministration?patient=12740087

#### Response

<%= headers status: 200 %>
<%= json(:R4_MEDICATION_ADMINISTRATION_BUNDLE) %>
<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual MedicationAdministration by its id:

    GET /MedicationAdministration/:id

_Implementation Notes_

* MedicationAdministration.medication may be a reference to a contained Medication when the Medication cannot be represented by a CodeableConcept because it contains a unique combination of ingredients. Medications in the system always exist within the context of a MedicationAdministration and cannot be be referenced independently.

* IMPORTANT NOTE: Infuse or Bolus administration results for continuous infusion orders may require additional calculations to determine the actual amount of medication administered per ingredient. An additional calculation is required when the dosage dose does not equal the contained Medication ingredient strength denominator. In this case, calculate the ratio between the ingredient’s numerator divided by the denominator and multiply by dosage dose. This will be the actual amount of medication administered.

### Authorization Types

<%= authorization_types(provider: true, patient: false, system: true) %>

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationAdministration/197287785

#### Response

<%= headers status: 200 %>
<%= json(:R4_MEDICATION_ADMINISTRATION_ENTRY) %>
<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`reference`]: http://hl7.org/fhir/R4/search.html#reference
[`token`]: http://hl7.org/fhir/R4/search.html#token
[`date`]: http://hl7.org/fhir/R4/search.html#date
[`_count`]: http://hl7.org/fhir/R4/search.html#count
[`number`]: http://hl7.org/fhir/R4/search.html#number
[`CodeableConcept`]: http://hl7.org/fhir/R4/datatypes.html#codeableconcept
[contained]: http://hl7.org/fhir/R4/references.html#contained
[MedicationAdministration.medication]: http://hl7.org/fhir/R4/medicationadministration-definitions.html#MedicationAdministration.medication_x_
[errors]: ../../../#client-errors
[OperationOutcomes]: ../../../#operation-outcomes
[Infuse Over Time]: #custom-extensions
