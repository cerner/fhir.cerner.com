---
title: MedicationOrder | DSTU 2 API
---

# MedicationOrder

* TOC
{:toc}

## Overview

The MedicationOrder resource provides orders for all medications with administration instructions for a patient in both the inpatient and outpatient settings (orders or prescriptions filled by a pharmacy and discharge medication orders). This resource does not include historical or home medications documented or reported to have been taken by the patient, significant other, or another provider.

If the medication order represents a prescription the patient takes at home, then the start, stop, and other information may not be a representation of when the medication was taken. For example, the system may not know if the patient ever filled or took the prescribed medication, or when the prescription was filled.

The following fields are returned if valued:

* [Medication order ID](https://hl7.org/fhir/dstu2/resource-definitions.html#Resource.id){:target="_blank"}
* [Date/Time order written](https://hl7.org/fhir/DSTU2/medicationorder-definitions.html#MedicationOrder.dateWritten){:target="_blank"}
* [Status](https://hl7.org/fhir/DSTU2/medicationorder-definitions.html#MedicationOrder.status){:target="_blank"}
* [Date/Time order stopped or to stop](https://hl7.org/fhir/DSTU2/medicationorder-definitions.html#MedicationOrder.dateEnded){:target="_blank"}
* [Patient](https://hl7.org/fhir/DSTU2/medicationorder-definitions.html#MedicationOrder.patient){:target="_blank"}
* [Prescriber](http:s//hl7.org/fhir/DSTU2/medicationorder-definitions.html#MedicationOrder.prescriber){:target="_blank"}
* [Patient encounter](https://hl7.org/fhir/DSTU2/medicationorder-definitions.html#MedicationOrder.encounter){:target="_blank"}
* [Medication](https://hl7.org/fhir/DSTU2/medicationorder-definitions.html#MedicationOrder.medication_x_){:target="_blank"}
* Details of medication taken:
  * [Dosage Instructions:](https://hl7.org/fhir/DSTU2/medicationorder-definitions.html#MedicationOrder.dosageInstruction){:target="_blank"}
  * [Patient friendly dosage display](#custom-extensions){:target="_blank"}
  * [Additional instructions](https://hl7.org/fhir/DSTU2/medicationorder-definitions.html#MedicationOrder.dosageInstruction.additionalInstructions){:target="_blank"}
  * [Time period and frequency](https://hl7.org/fhir/DSTU2/medicationorder-definitions.html#MedicationOrder.dosageInstruction.timing){:target="_blank"}
  * [As needed (such as PRN for pain)](https://hl7.org/fhir/DSTU2/medicationorder-definitions.html#MedicationOrder.dosageInstruction.asNeeded_x_){:target="_blank"}
  * [Route](https://hl7.org/fhir/DSTU2/medicationorder-definitions.html#MedicationOrder.dosageInstruction.route){:target="_blank"}
  * [Dosage](https://hl7.org/fhir/DSTU2/medicationorder-definitions.html#MedicationOrder.dosageInstruction.dose_x_){:target="_blank"}
* Dispensing details:
  * [Validity period](https://hl7.org/fhir/DSTU2/medicationorder-definitions.html#MedicationOrder.dispenseRequest.validityPeriod){:target="_blank"}
  * [Number of refills](https://hl7.org/fhir/DSTU2/medicationorder-definitions.html#MedicationOrder.dispenseRequest.numberOfRepeatsAllowed){:target="_blank"}
  * [Amount of medication to supply/dispense](https://hl7.org/fhir/DSTU2/medicationorder-definitions.html#MedicationOrder.dispenseRequest.quantity){:target="_blank"}

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Terminology Bindings

<%= terminology_table(:medication_order, :dstu2) %>

### Contained Medication Bindings

<%= terminology_table(:contained_medication, :dstu2) %>

## Extensions

* [Patient friendly display]

### Custom Extensions

All URLs for custom extensions are defined as `https://fhir-ehr.cerner.com/dstu2/StructureDefinition/{id}`

For more information, see the StructureDefinition resource.

 ID                         | Value\[x] Type | Description
----------------------------|----------------|------------------------------------------------------------------------------------------------------------------------------------------------
 `patient-friendly-display` | [`string`]     | Extension to MedicationRequest.dosageInstruction. The display name that can be used for this field when producing a view suitable for a patient.


## Search

Search for medication orders that meet supplied query parameters.

    GET /MedicationOrder?:parameters

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Parameters

 Name                   | Required?     | Type          | Description
------------------------|---------------|---------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 `_id`                  | Conditionally | [`token`]     | The logical resource ID associated with the resource. It may be a list separated by commas. This parameter is required if the `patient` parameter is not used. Example: `_id=1234`
 `patient`              | Conditionally | [`reference`] | The specific patient to return orders for. This parameter is required if the `_id` parameter is not used. Example: `patient=5678`
 `status`               | No            | [`token`]     | The [status] of the medication order. It may be a list separated by commas. Example: `status=active,draft`
 `-timing-boundsPeriod` | No            | [`date`]     | The date and time that should fall within the [period] when the medication should be given to the patient. This parameter cannot be provided at the same time as the `_lastUpdated` parameter. Example: `-timing-boundsPeriod=ge2014-05-19T20:54:02.000Z` 
 `_lastUpdated`         | No            | [`date`]      | An explicit or implied date and time range within which the most recent clinically relevant update was made to the medication. This parameter cannot be provided at the same time as the `-timing-boundsPeriod` parameter. Example: `_lastUpdated=ge2014-05-19T20:54:02.000Z`
 [`_count`]             | No            | [`number`]    | The maximum number of results to include on a page. Example: `_count=50`

_Notes_

* MedicationOrder.medication may be a reference to a [contained] medication when the medication cannot be represented by a [CodeableConcept] because it contains a unique combination of ingredients. Medications in the system always exist in the context of a medication order and cannot be referenced independently.
* When searching with the `_id` parameter:
  * It must not be provided with any other parameters.
* When searching with the `-timing-boundsPeriod` parameter:
  * It must be provided with a `ge` prefix to imply the date range for the medication orders search.
  * The time component is optional.
  * Example: `-timing-boundsPeriod=ge2014-05-19T20:54:02.000Z`
* When searching with the `_lastUpdated` parameter:
  * The time component is required.
  * For a single `_lastUpdated` occurence:
    * It must be provided with a `le` or `ge` prefix to imply the date range for the medication orders search.
    * Example: `_lastUpdated=ge2014-05-19T20:54:02.000Z`
  * For two `_lastUpdated` occurences:
    * It must be provided with the `le` and `ge` prefixes to search for medication orders within the given upper and lower timestamps, respectively.
    * Example: `_lastUpdated=ge2014-05-19T20:54:02.000Z&_lastUpdated=le2014-05-20T12:00:00.000Z`
  * It only detects changes that affect the clinical meaning of the order. An example of changes that are not caught by this query are changes that would affect the version, but not the FHIR content.

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationOrder?patient=12724067

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_medication_order_bundle) %>

## Retrieve by ID

List an individual medication order by its ID.

    GET /MedicationOrder/:id

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationOrder/309799821

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_medication_order_entry) %>

[`reference`]: https://hl7.org/fhir/dstu2/search.html#reference
[`token`]: https://hl7.org/fhir/dstu2/search.html#token
[`date`]: https://hl7.org/fhir/dstu2/search.html#date
[period]: https://hl7.org/fhir/DSTU2/MedicationOrder-definitions.html#MedicationOrder.dosageInstruction.timing
[`_count`]: https://hl7.org/fhir/dstu2/search.html#count
[`number`]: https://hl7.org/fhir/dstu2/search.html#number
[contained]: https://hl7.org/fhir/DSTU2/references.html#contained
[Patient friendly display]: #custom-extensions
[`string`]: https://hl7.org/fhir/DSTU2/datatypes.html#string
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
[CodeableConcept]: https://hl7.org/fhir/DSTU2/datatypes.html#codeableconcept
[status]: https://www.hl7.org/fhir/dstu2/valueset-medication-order-status.html
