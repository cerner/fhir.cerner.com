---
title: NutritionOrder | R4 API
---

# NutritionOrder

* TOC
{:toc}

## Overview

The NutritionOrder resource describes a request for oral diets (including general diets such as General Healthy diet, or therapeutic diets such as Consistent Carbohydrate, 2 gram Sodium, or Fluid Restricted), oral nutrition supplements (such as nutritionally complete pre-packed drinks), enteral nutrition (tube feedings) and infant formula which govern the distribution of food and nutritional products used to feed patients within an in-patient setting. It does not cover orders for parenteral (IV) nutrition which are typically filled by pharmacy. These nutrition orders are combined with information on a patient's food allergies and intolerances, and ethnic or cultural food preferences (e.g. Kosher or Vegetarian) to inform healthcare personnel about the type, texture, and/or quantity of foods that the patient should receive or consume.

Enteral orders are distinguished from supplements because they have some unique attributes and typically include administration information whereas oral nutritional supplements may simply be supplied (e.g. home health or outpatient settings). In a simple case, the requestor may designate type of product, product name and the route of administration along with free text instructions without a having to complete the additional structured details.

This resource is intended to be used by providers from a variety of specialties such as physicians, dietitian/nutritionists, or speech therapists. One provider may simply order a base element oral diet such as General Healthful diet. Another provider, based on scope of practice, may use other elements to communicate additional therapeutic needs or patient preferences. The optionality included gives an ordering provider the capability to write a simple order for an oral diet, nutritional supplement or formula with minimal requirements beyond that of specifying the diet, supplement or formula product, but also supports the ability to provide more detailed information that may be further augmented by a dietitian or nutrition specialist. For example, a physician may order a 2 g sodium diet. A speech therapist, based on the results of a swallowing evaluation, then orders a mechanically altered texture with nectar thick liquids.

The following fields are returned if valued:
TODO: Clean up the labels

* [Id](https://hl7.org/fhir/R4/resource-definitions.html#Resource.id)
* [status](https://www.hl7.org/fhir/nutritionorder-definitions.html#NutritionOrder.status)
* [intent](https://www.hl7.org/fhir/nutritionorder-definitions.html#NutritionOrder.intent)
* [patient](https://www.hl7.org/fhir/nutritionorder-definitions.html#NutritionOrder.patient)
* [Patient encounter when first recorded](https://www.hl7.org/fhir/nutritionorder-definitions.html#NutritionOrder.encounter)
* [Date ordered](https://www.hl7.org/fhir/nutritionorder-definitions.html#NutritionOrder.dateTime)
* [Who ordered the NutritionOrder](https://www.hl7.org/fhir/nutritionorder-definitions.html#NutritionOrder.orderer)
* [Food modifier](https://www.hl7.org/fhir/nutritionorder-definitions.html#NutritionOrder.foodPreferenceModifier)
* [Oral diet](https://www.hl7.org/fhir/nutritionorder-definitions.html#NutritionOrder.oralDiet)
    * [type](https://www.hl7.org/fhir/nutritionorder-definitions.html#NutritionOrder.oralDiet.type)
    * [schedule](https://www.hl7.org/fhir/nutritionorder-definitions.html#NutritionOrder.oralDiet.schedule)
    * [nutrient](https://www.hl7.org/fhir/nutritionorder-definitions.html#NutritionOrder.oralDiet.nutrient)
        * [modifier](https://www.hl7.org/fhir/nutritionorder-definitions.html#NutritionOrder.oralDiet.nutrient.modifier)
    * [texture](https://www.hl7.org/fhir/nutritionorder-definitions.html#NutritionOrder.oralDiet.texture)
        * [modifier](https://www.hl7.org/fhir/nutritionorder-definitions.html#NutritionOrder.oralDiet.texture.modifier)
    * [fluidConsistencyType](https://www.hl7.org/fhir/nutritionorder-definitions.html#NutritionOrder.oralDiet.fluidConsistencyType)
    * [instruction](https://www.hl7.org/fhir/nutritionorder-definitions.html#NutritionOrder.oralDiet.instruction)
* [Supplement](https://www.hl7.org/fhir/nutritionorder-definitions.html#NutritionOrder.supplement)
* [Comment/Note](https://www.hl7.org/fhir/nutritionorder-definitions.html#NutritionOrder.note)

## Terminology Bindings

<%= terminology_table(:nutrition_order, :r4) %>

## Search

Search for NutritionOrders that meet supplied query parameters:

    GET /NutritionOrder?:parameters

_Implementation Notes_

* TODO: Add implementation notes.

### Authorization Types

<%= authorization_types(practitioner: true, patient: false, system: true) %>

### Parameters

 Name              | Required?                      | Type          | Description
-------------------|--------------------------------|---------------|-----------------------------------------------------------------------
 `_id`             | This or `patient` or `subject` | [`token`]     | The logical resource id associated with the resource.
 `patient`         | This or `_id` or `subject`     | [`reference`] | Who the nutrition order is for. Example: `12345`
 `status`          | No                             | [`token`]     | The status of the nutrition order. Example: `active`
 `lastUpdated`     | No                             | [`date`]      | An explicit or implied date-time range within which the most recent clinically relevant update was made to the nutrition order. Must be prefixed by ‘ge’ or ‘le’. Example: `ge2014-05-19T20:54:02.000Z`
 `_count`          | No                             | [`number`]    | The maximum number of nutrition orders to retrieve in a page.

Notes:

* If `_id` is provided, no other parameters may be provided.
* The `_lastUpdated` parameter may be provided:
    * once with a prefix `ge` or `le` representing the earliest date or latest date. (e.g. `date=ge2015-01-01`, `date=le2016-01-01`)
    * twice with the prefixes `ge`, `le` to indicate a specific range. (e.g. `date=ge2015-01-01&date=le2016-01-01`)

### Headers

 <%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/NutritionOrder?patient=1316024

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

    GET https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/NutritionOrder/40880687

#### Response

<%= headers status: 200 %>
<%= json(:r4_nutrition_order_entry) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`reference`]: https://hl7.org/fhir/r4/search.html#reference
[`token`]: https://hl7.org/fhir/R4/search.html#token
[`date`]: https://hl7.org/fhir/R4/search.html#date
[`number`]: https://hl7.org/fhir/R4/search.html#number
[errors]: ../../#client-errors
[OperationOutcomes]: https://hl7.org/fhir/R4/operationoutcome.html
[FHIR<sup>®</sup> Update]: https://hl7.org/fhir/R4/http.html#update
