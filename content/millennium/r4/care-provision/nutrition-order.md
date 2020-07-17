---
title: NutritionOrder | R4 API
---

# NutritionOrder

* TOC
{:toc}

## Overview

The NutritionOrder resource returns requests or orders to supply a diet or supplement to a patient.

The following fields are returned if valued:

* [NutritionOrder id](https://hl7.org/fhir/r4/resource-definitions.html#Resource.id)
* [Status](https://www.hl7.org/fhir/r4/nutritionorder-definitions.html#NutritionOrder.status)
* [Intent](https://www.hl7.org/fhir/r4/nutritionorder-definitions.html#NutritionOrder.intent)
* [Patient](https://www.hl7.org/fhir/r4/nutritionorder-definitions.html#NutritionOrder.patient)
* [Encounter](https://www.hl7.org/fhir/r4/nutritionorder-definitions.html#NutritionOrder.encounter)
* [DateTime](https://www.hl7.org/fhir/r4/nutritionorder-definitions.html#NutritionOrder.dateTime)
* [Orderer](https://www.hl7.org/fhir/r4/nutritionorder-definitions.html#NutritionOrder.orderer)
* [Food Preference Modifier](https://www.hl7.org/fhir/r4/nutritionorder-definitions.html#NutritionOrder.foodPreferenceModifier)
* [Oral Diet](https://www.hl7.org/fhir/r4/nutritionorder-definitions.html#NutritionOrder.oralDiet)
    * [Type](https://www.hl7.org/fhir/r4/nutritionorder-definitions.html#NutritionOrder.oralDiet.type)
    * [Schedule](https://www.hl7.org/fhir/r4/nutritionorder-definitions.html#NutritionOrder.oralDiet.schedule)
    * [Texture](https://www.hl7.org/fhir/r4/nutritionorder-definitions.html#NutritionOrder.oralDiet.texture)
        * [Texture Modifier](https://www.hl7.org/fhir/r4/nutritionorder-definitions.html#NutritionOrder.oralDiet.texture.modifier)
    * [Fluid Consistency Type](https://www.hl7.org/fhir/r4/nutritionorder-definitions.html#NutritionOrder.oralDiet.fluidConsistencyType)
    * [Instruction](https://www.hl7.org/fhir/r4/nutritionorder-definitions.html#NutritionOrder.oralDiet.instruction)
* [Supplement](https://www.hl7.org/fhir/r4/nutritionorder-definitions.html#NutritionOrder.supplement)
    * [Type](https://www.hl7.org/fhir/r4/nutritionorder-definitions.html#NutritionOrder.supplement.type)
* [Note](https://www.hl7.org/fhir/r4/nutritionorder-definitions.html#NutritionOrder.note)

## Terminology Bindings

<%= terminology_table(:nutrition_order, :r4) %>

## Search

Search for NutritionOrders that meet supplied query parameters:

    GET /NutritionOrder?:parameters

### Authorization Types

<%= authorization_types(practitioner: true, patient: false, system: true) %>

### Parameters

 Name              | Required?                      | Type          | Description
-------------------|--------------------------------|---------------|-----------------------------------------------------------------------
 `_id`             | This or `patient`              | [`token`]     | The logical resource id associated with the resource.
 `patient`         | This or `_id` or `subject`     | [`reference`] | Who the nutrition order is for. Example: `12345`
 `status`          | No                             | [`token`]     | The status of the nutrition order. Example: `active`
 `_lastUpdated`    | No                             | [`date`]      | An explicit or implied date-time range within which the most recent clinically relevant update was made to the nutrition order. Must include a time, and must be prefixed by ‘ge’ or ‘le’. Example: `ge2014-05-19T20:54:02.000Z`
[`_count`]         | No                             | [`number`]    | The maximum number of nutrition orders to include in a page.

Notes:

* If `_id` is provided, no other parameters may be provided.
* The `_lastUpdated` parameter may be provided:
    * once with a prefix `ge` or `le` representing the earliest date or latest date. (e.g. `date=ge2015-01-01`, `date=le2016-01-01`)
    * twice with the prefixes `ge`, `le` to indicate a specific range. (e.g. `date=ge2015-01-01&date=le2016-01-01`)

### Headers

 <%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/NutritionOrder?patient=1882013

#### Response

<%= headers status: 200 %>
<%= json(:r4_nutrition_order_bundle) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual NutritionOrder by its id:

    GET /NutritionOrder/:id

### Authorization Types

<%= authorization_types(practitioner: true, patient: false, system: true) %>

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/NutritionOrder/216493655

#### Response

<%= headers status: 200 %>
<%= json(:r4_nutrition_order_entry) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`reference`]: https://hl7.org/fhir/r4/search.html#reference
[`token`]: https://hl7.org/fhir/R4/search.html#token
[`date`]: https://hl7.org/fhir/R4/search.html#date
[`_count`]: https://hl7.org/fhir/r4/search.html#count
[`number`]: https://hl7.org/fhir/R4/search.html#number
[errors]: ../../#client-errors
[OperationOutcomes]: https://hl7.org/fhir/R4/operationoutcome.html
[FHIR<sup>®</sup> Update]: https://hl7.org/fhir/R4/http.html#update
