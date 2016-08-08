---
title: MedicationOrder | DSTU 2 API
---

# MedicationOrder

* TOC
{:toc}

## Terminology Bindings

<%= terminology_table(:medication_order, :dstu2) %>

### Contained Medication Bindings

<%= terminology_table(:contained_medication, :dstu2) %>

## Search

Search for MedicationOrders that meet supplied query parameters:

    GET /MedicationOrder?:parameters

### Parameters

 Name                      | Required? | Type          | Description
---------------------------|-----------|---------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------
 `patient`                 | Y         | [`reference`] | The identity of a patient to list orders for. Example: `12345`
 `status`                  | N         | [`token`]     | The status of the medication order, may be a list separated by commas. Example: `active,draft`
 `-timing-boundsPeriod`    | N         | [`date`]      | The date-time which should fall within the [period] the medication should be given to the patient. Must be prefixed by 'ge'. Example: `ge2014-05-19T20:54:02.000Z`
 [`_count`]                | N         | [`number`]    | The maximum number of results to include in a page. Example: `50`

_Notes_

* MedicationOrder may have a reference to a contained Medication when the Medication cannot be represented by a CodeableConcept.

### Response

<%= headers 200 %>
<%= json(:dstu2_medication_order_bundle) %>

[`reference`]: http://hl7.org/fhir/dstu2/search.html#reference
[`token`]: http://hl7.org/fhir/dstu2/search.html#token
[`date`]: http://hl7.org/fhir/dstu2/search.html#date
[period]: http://hl7.org/fhir/DSTU2/MedicationOrder-definitions.html#MedicationOrder.dosageInstruction.timing
[`_count`]: http://hl7.org/fhir/dstu2/search.html#count
[`number`]: http://hl7.org/fhir/dstu2/search.html#number
