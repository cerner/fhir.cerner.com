---
title: MedicationAdministration | DSTU 2 API
---

# MedicationAdministration

* TOC
{:toc}

## Overview

The Medication Administration resource provides information about medications and vaccines administered to a patient or consumed by a patient including injections, intravenous solutions, and self administered oral medications.
<br/><br/>
The following fields are returned if valued:

* [Medication Administration id](http://hl7.org/fhir/DSTU2/medicationadministration-definitions.html#MedicationAdministration.identifier){:target="_blank"}
* [Status](http://hl7.org/fhir/DSTU2/medicationadministration-definitions.html#MedicationAdministration.status){:target="_blank"}
* [Patient](http://hl7.org/fhir/DSTU2/medicationadministration-definitions.html#MedicationAdministration.patient){:target="_blank"}
* [Practitioner](http://hl7.org/fhir/DSTU2/medicationadministration-definitions.html#MedicationAdministration.practitioner){:target="_blank"}
* [Encounter](http://hl7.org/fhir/DSTU2/medicationadministration-definitions.html#MedicationAdministration.encounter){:target="_blank"}
* [Prescription](http://hl7.org/fhir/DSTU2/medicationadministration-definitions.html#MedicationAdministration.prescription){:target="_blank"}
* [Effective Time](http://hl7.org/fhir/DSTU2/medicationadministration-definitions.html#MedicationAdministration.effectiveTime_x_){:target="_blank"}
* [Medication](http://hl7.org/fhir/DSTU2/medicationadministration-definitions.html#MedicationAdministration.medication_x_){:target="_blank"}
* Details of medication administered:
  * [Text](http://hl7.org/fhir/DSTU2/medicationadministration-definitions.html#MedicationAdministration.dosage.text){:target="_blank"}
  * [Route](http://hl7.org/fhir/DSTU2/medicationadministration-definitions.html#MedicationAdministration.dosage.route){:target="_blank"}
  * [Quantity](http://hl7.org/fhir/DSTU2/medicationadministration-definitions.html#MedicationAdministration.dosage.quantity){:target="_blank"}
  * [Site](http://hl7.org/fhir/DSTU2/medicationadministration-definitions.html#MedicationAdministration.dosage.site_x_){:target="_blank"}
  * [Rate](http://hl7.org/fhir/DSTU2/medicationadministration-definitions.html#MedicationAdministration.dosage.rate_x_){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:medication_administration, :dstu2) %>

### Contained Medication Bindings

<%= terminology_table(:medication_administration_contained_medication, :dstu2) %>

## Search

Search for MedicationAdministrations that meet supplied query parameters:

    GET /MedicationAdministration?:parameters

_Implementation Notes_

* [MedicationAdministration.medication] may be a reference to a [contained] Medication when the Medication cannot be represented by a CodeableConcept because it contains a unique combination of ingredients. Medications in the system always exist within the context of a MedicationAdministration and cannot be referenced independently.


### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>


### Parameters


 Name           | Required?          | Type          | Description
----------------|--------------------|---------------|-----------------------------------------------------------------------------------------------
`_id`           | This, or `patient` | [`token`]     | The logical resource id associated with the resource.
`patient`       | This, or `_id`     | [`reference`] | The patient who has received the medication administration. Example: `patient=12345`
`status`        | N                  | [`token`]     | The status of the medication administration, may be a list separated by commas.  Example: `status=completed`
`practitioner`  | N                  | [`reference`] | The performing clinician, may be a list separated by commas. Example: `practitioner=12345`
`notgiven`      | N                  | [`token`]     | Administrations that were not made. A value of 'true' will search for these, and a value of 'false' will exclude them. Example: `true`
`effectivetime` | N                  | [`date`]      | The date/time when the administration was performed. Must use both ge and le prefixes in order to search. Example: `effectivetime=ge2010-08-18&effectivetime=le2015-07-17`
[`_count`]      | N                  | [`number`]    | The maximum number of results to return.


Notes:

- Either the `_id`, or a combination of `patient`, `status`, `practitioner`, `notgiven`, `effectivetime`, or `_count` parameters must be provided. Default sort is by administration end date time.


### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationAdministration?patient=12724066

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_medication_administration_bundle) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual MedicationAdministration by its id:

    GET /MedicationAdministration/:id

_Implementation Notes_

* [MedicationAdministration.medication] may be a reference to a [contained] Medication when the Medication cannot be represented by a CodeableConcept because it contains a unique combination of ingredients. Medications in the system always exist within the context of a MedicationAdministration and cannot be be referenced independently.

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationAdministration/197292849

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_medication_administration_entry) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`reference`]: http://hl7.org/fhir/DSTU2/search.html#reference
[`token`]: http://hl7.org/fhir/DSTU2/search.html#token
[`date`]: http://hl7.org/fhir/DSTU2/search.html#date
[`_count`]: http://hl7.org/fhir/DSTU2/search.html#count
[`number`]: http://hl7.org/fhir/DSTU2/search.html#number
[`CodeableConcept`]: http://hl7.org/fhir/DSTU2/datatypes.html#codeableconcept
[contained]: http://hl7.org/fhir/DSTU2/references.html#contained
[MedicationAdministration.medication]: http://hl7.org/fhir/DSTU2/medicationadministration-definitions.html#MedicationAdministration.medication_x_
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
