---
title: MedicationAdministration | DSTU 2 API
---

# MedicationAdministration

* TOC
{:toc}

## Overview

The MedicationAdministration resource provides information about medications administered to a patient or consumed by a patient including injections, intravenous solutions, and self administered oral medications. 
When using this resource, full administration details for vaccinations administered by the current healthcare system can be searched. For historically administered vaccines, or vaccines adminstered by other healthcare disciplines, care settings, or regions, the [`Immunization`] resource must be used for retrieving data.

* **IMPORTANT NOTE**: Infuse or Bolus administration results for continuous infusion orders may require additional calculations to determine the actual amount of medication administered per ingredient. An additional calculation is required when the dosage dose does not equal the [contained] Medication ingredient strength denominator. In this case, calculate the ratio between the ingredient’s numerator divided by the denominator and multiply by dosage quantity. This will be the actual amount of medication administered.

The following fields are returned if valued:

* [Medication Administration id](https://hl7.org/fhir/DSTU2/medicationadministration-definitions.html#MedicationAdministration.identifier){:target="_blank"}
* [Infuse Over Time Extension](#extensions)
* [Status](https://hl7.org/fhir/DSTU2/medicationadministration-definitions.html#MedicationAdministration.status){:target="_blank"}
* [Patient](https://hl7.org/fhir/DSTU2/medicationadministration-definitions.html#MedicationAdministration.patient){:target="_blank"}
* [Practitioner](https://hl7.org/fhir/DSTU2/medicationadministration-definitions.html#MedicationAdministration.practitioner){:target="_blank"}
* [Encounter](https://hl7.org/fhir/DSTU2/medicationadministration-definitions.html#MedicationAdministration.encounter){:target="_blank"}
* [Prescription](https://hl7.org/fhir/DSTU2/medicationadministration-definitions.html#MedicationAdministration.prescription){:target="_blank"}
* [Effective Time](https://hl7.org/fhir/DSTU2/medicationadministration-definitions.html#MedicationAdministration.effectiveTime_x_){:target="_blank"}
* [Medication](https://hl7.org/fhir/DSTU2/medicationadministration-definitions.html#MedicationAdministration.medication_x_){:target="_blank"}
* Details of medication administered:
  * [Text](https://hl7.org/fhir/DSTU2/medicationadministration-definitions.html#MedicationAdministration.dosage.text){:target="_blank"}
  * [Route](https://hl7.org/fhir/DSTU2/medicationadministration-definitions.html#MedicationAdministration.dosage.route){:target="_blank"}
  * [Quantity](https://hl7.org/fhir/DSTU2/medicationadministration-definitions.html#MedicationAdministration.dosage.quantity){:target="_blank"}
  * [Site](https://hl7.org/fhir/DSTU2/medicationadministration-definitions.html#MedicationAdministration.dosage.site_x_){:target="_blank"}
  * [Rate](https://hl7.org/fhir/DSTU2/medicationadministration-definitions.html#MedicationAdministration.dosage.rate_x_){:target="_blank"}

* MedicationAdministration.medication may be a reference to a [contained] Medication when the Medication cannot be represented by a [CodeableConcept] because it contains a unique combination of ingredients. Medications in the system always exist within the context of a MedicationAdministration and cannot be referenced independently.

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Terminology Bindings

<%= terminology_table(:medication_administration, :dstu2) %>

### Contained Medication Bindings

<%= terminology_table(:medication_administration_contained_medication, :dstu2) %>

## Extensions

* [Infuse Over Time]

### Custom Extensions

All URLs for custom extensions are defined as `https://fhir-ehr.cerner.com/dstu2/StructureDefinition/{id}`
For more information, refer to the [`StructureDefinition`] resource.

 ID                 | Value\[x] Type | Description
--------------------|----------------|------------------------------------------------------------------------------------------------
 `infuse-over-time` | [`Quantity`]   | The length of time in minutes it took to infuse a medication.

## Search

Search for MedicationAdministrations that meet supplied query parameters:

    GET /MedicationAdministration?:parameters

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>


### Parameters


 Name           | Required?     | Type          | Description
----------------|---------------|---------------|-----------------------------------------------------------------------------------------------
`_id`           | Conditionally | [`token`]     | The logical resource ID associated with the resource. It may be a list separated by commas. This parameter is required if the `patient` parameter is not used. Example: `_id=12345`
`patient`       | Conditionally | [`reference`] | The specific patient to return medication administrations for. This parameter is required if the `_id` parameter is not used. Example: `patient=1234`
`status`        | No            | [`token`]     | The status of the medication administration event. It may be a list separated by commas. Example: `status=completed,not-done`
`practitioner`  | No            | [`reference`] | The logical resource ID of the practitioner who administered the medication. It may be a list separated by commas. Example: `practitioner=1245,7659`
`notgiven`      | No            | [`token`]     | Administrations that were not made. A value of `true` will search for these, and a value of `false` will exclude them. 
`effectivetime` | No            | [`dateTime`]  | A date range for when the administration happened. Example: `effectivetime=ge2014-05-19T20:54:02.000Z`
[`_count`]      | No            | [`number`]    | The maximum number of results to return. Example: `_count=50`

_Implementation Notes_

- When searching with the `_id` parameter
  - It must not be provided with any other parameters.
- When searching with the `effectivetime` parameter:
  - For a single `effectivetime` occurrence:
    - It must be provided with a `ge` `gt` `le` or `lt` prefix to imply the date range to search for administrations within.
    - The time component is required.
    - Example: `effectivetime=ge2014-05-19T20:54:02.000Z`
  - For two `effectivetime` occurences: 
    - It must be provided with `le` or `lt` and `ge` or `gt` prefixes to search for administrations within a specific range. 
    - The time component is required for both parameters.
    - Example: `effectivetime=ge2014-05-19T20:54:02.000Z&effectivetime=le2014-05-20T20:54:02.000Z`

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationAdministration?patient=12724066

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_medication_administration_bundle) %>

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationAdministration?_id=197375293

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_medication_administration_multiple_ingredients_bundle) %>

## Retrieve by ID

List an individual MedicationAdministration by its ID:

    GET /MedicationAdministration/:id

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

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationAdministration/197375293

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_medication_administration_multiple_ingredients_entry) %>

[`reference`]: https://hl7.org/fhir/DSTU2/search.html#reference
[`token`]: https://hl7.org/fhir/DSTU2/search.html#token
[`date`]: https://hl7.org/fhir/DSTU2/search.html#date
[`dateTime`]: https://hl7.org/fhir/DSTU2/datatypes.html#dateTime
[`quantity`]: https://hl7.org/fhir/DSTU2/search.html#quantity
[`_count`]: https://hl7.org/fhir/DSTU2/search.html#count
[`number`]: https://hl7.org/fhir/DSTU2/search.html#number
[CodeableConcept]: https://hl7.org/fhir/DSTU2/datatypes.html#codeableconcept
[contained]: https://hl7.org/fhir/DSTU2/references.html#contained
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
[`StructureDefinition`]: ../../conformance/structure-definition/#overview
[Infuse Over Time]: #custom-extensions
[`Immunization`]: ../immunization/#overview
