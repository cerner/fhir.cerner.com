---
title: MedicationOrder | DSTU 2 API
---

# MedicationOrder

* TOC
{:toc}

## Overview

The Medication Order resource provides orders for all medications along with administration instructions for a patient in both the inpatient and outpatient setting (orders/prescriptions filled by a pharmacy and discharge medication orders). This resource does NOT include historical or home medications documented or reported to have been taken by patient, significant other or another provider.

If the Medication Order represents a prescription (something the patient takes at home), the start, stop, and other data may not be a representation of when the medication was taken. For example, the system may not know if the patient ever filled or took the prescribed medication, or when the prescription was filled.

The following fields are returned if valued:

* [Medication order id](http://hl7.org/fhir/dstu2/resource-definitions.html#Resource.id){:target="_blank"}
* [Date/Time order written](http://hl7.org/fhir/DSTU2/medicationorder-definitions.html#MedicationOrder.dateWritten){:target="_blank"}
* [Status](http://hl7.org/fhir/DSTU2/medicationorder-definitions.html#MedicationOrder.status){:target="_blank"}
* [Date/Time order stopped or to stop](http://hl7.org/fhir/DSTU2/medicationorder-definitions.html#MedicationOrder.dateEnded){:target="_blank"}
* [Patient](http://hl7.org/fhir/DSTU2/medicationorder-definitions.html#MedicationOrder.patient){:target="_blank"}
* [Prescriber](http://hl7.org/fhir/DSTU2/medicationorder-definitions.html#MedicationOrder.prescriber){:target="_blank"}
* [Patient encounter](http://hl7.org/fhir/DSTU2/medicationorder-definitions.html#MedicationOrder.encounter){:target="_blank"}
* [Medication](http://hl7.org/fhir/DSTU2/medicationorder-definitions.html#MedicationOrder.medication_x_){:target="_blank"}
* Details of medication taken:
  * [Dosage Instructions:](http://hl7.org/fhir/DSTU2/medicationorder-definitions.html#MedicationOrder.dosageInstruction){:target="_blank"}
  * [Patient friendly dosage display](#custom-extensions){:target="_blank"}
  * [Additional instructions](http://hl7.org/fhir/DSTU2/medicationorder-definitions.html#MedicationOrder.dosageInstruction.additionalInstructions){:target="_blank"}
  * [Time period and frequency](http://hl7.org/fhir/DSTU2/medicationorder-definitions.html#MedicationOrder.dosageInstruction.timing){:target="_blank"}
  * [As needed (such as PRN for pain)](http://hl7.org/fhir/DSTU2/medicationorder-definitions.html#MedicationOrder.dosageInstruction.asNeeded_x_){:target="_blank"}
  * [Route](http://hl7.org/fhir/DSTU2/medicationorder-definitions.html#MedicationOrder.dosageInstruction.route){:target="_blank"}
  * [Dosage](http://hl7.org/fhir/DSTU2/medicationorder-definitions.html#MedicationOrder.dosageInstruction.dose_x_){:target="_blank"}
* Dispensing details:
  * [Validity period](http://hl7.org/fhir/DSTU2/medicationorder-definitions.html#MedicationOrder.dispenseRequest.validityPeriod){:target="_blank"}
  * [Number of refills](http://hl7.org/fhir/DSTU2/medicationorder-definitions.html#MedicationOrder.dispenseRequest.numberOfRepeatsAllowed){:target="_blank"}
  * [Amount of medication to supply/dispense](http://hl7.org/fhir/DSTU2/medicationorder-definitions.html#MedicationOrder.dispenseRequest.quantity){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:medication_order, :dstu2) %>

### Contained Medication Bindings

<%= terminology_table(:contained_medication, :dstu2) %>

## Extensions

* [Patient friendly display]

### Custom Extensions

All URLs for custom extensions are defined as `https://fhir-ehr.cerner.com/dstu2/StructureDefinition/{id}`

 ID                         | Value\[x] Type | Description
----------------------------|----------------|-------------------------------------------------------------------------------------------
 `patient-friendly-display` | [`string`]     | The display that can be used for this field when producing a view suitable for a patient.


## Search

Search for MedicationOrders that meet supplied query parameters:

    GET /MedicationOrder?:parameters

_Implementation Notes_

* MedicationOrder may have a reference to a [contained] Medication when the Medication cannot be represented by a CodeableConcept because it contains a unique combination of ingredients. Medications in the system always exist within the context of a MedicationOrder and cannot be be referenced independently.

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Parameters

 Name                   | Required? | Type          | Description
------------------------|-----------|---------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 `_id`                  | Y or `patient` | [`token`]     | The logical resource id associated with the resource.
 `patient`              | Y or `_id`     | [`reference`] | The identity of a patient to list orders for. Example: `12345`
 `status`               | N              | [`token`]     | The status of the medication order, may be a list separated by commas. Example: `active,draft`
 `-timing-boundsPeriod` | N              | [`date`]      | The date-time which should fall within the [period] the medication should be given to the patient. Must be prefixed by 'ge'. Example: `ge2014-05-19T20:54:02.000Z`
 `_lastUpdated`         | N              | [`date`]      | An explicit or implied date-time range within which the most recent clinically relevant update was made to the medication. Must be prefixed by 'ge' or 'le'. Example: `ge2014-05-19T20:54:02.000Z`
 [`_count`]             | N              | [`number`]    | The maximum number of results to include in a page. Example: `50`

Notes:

* The `-timing-boundsPeriod` and `_lastUpdated` parameters may not be provided at the same time.

* The `_lastUpdated` parameter must have a time, may be provided up to two times, and must use the `ge` or `le` prefixes. When provided twice, the lower value must have the `ge` prefix and the higher value must have the `le` prefix.

* Searching with the `_lastUpdated` parameter will only detect changes to fields that affect the clinical meaning of the order. An example of the types of changes that won't be caught by this query are changes that would affect the version, but not the FHIR content.

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/MedicationOrder?patient=12724067

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_medication_order_bundle) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual MedicationOrder by its id:

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

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`reference`]: http://hl7.org/fhir/dstu2/search.html#reference
[`token`]: http://hl7.org/fhir/dstu2/search.html#token
[`date`]: http://hl7.org/fhir/dstu2/search.html#date
[period]: http://hl7.org/fhir/DSTU2/MedicationOrder-definitions.html#MedicationOrder.dosageInstruction.timing
[`_count`]: http://hl7.org/fhir/dstu2/search.html#count
[`number`]: http://hl7.org/fhir/dstu2/search.html#number
[contained]: http://hl7.org/fhir/DSTU2/references.html#contained
[Patient friendly display]: #custom-extensions
[`string`]: http://hl7.org/fhir/DSTU2/datatypes.html#string
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
