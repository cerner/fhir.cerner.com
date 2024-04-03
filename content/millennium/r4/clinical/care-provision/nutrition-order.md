---
title: NutritionOrder | R4 API
---

# NutritionOrder

* TOC
{:toc}

## Overview

The NutritionOrder resource returns requests or orders to supply a diet or supplement to a patient.

The following fields are returned if valued:

* [NutritionOrder ID](https://hl7.org/fhir/r4/resource-definitions.html#Resource.id)
* [Status](https://www.hl7.org/fhir/r4/nutritionorder-definitions.html#NutritionOrder.status)
* [Intent](https://www.hl7.org/fhir/r4/nutritionorder-definitions.html#NutritionOrder.intent)
* [Extensions including basedOn](#extensions)
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

## Extensions

* [basedOn](http://hl7.org/fhir/R4/extension-event-basedon.html)

## Search

Search for nutrition orders that meet the supplied query parameters.

    GET /NutritionOrder?:parameters

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Parameters

 Name              | Required                       | Type          | Description
-------------------|--------------------------------|---------------|-----------------------------------------------------------------------
 `_id`             | Conditionally                  | [`token`]     | The logical resource ID associated with the resource. This parameter is required if `subject` is not used. Example: `11111111`
 `patient`         | Conditionally                  | [`reference`] | Who the nutrition order is for. This parameter is required if the `_id` parameter is not used. Example: `12345`
 `status`          | No                             | [`token`]     | The status of the nutrition order. Example: `active`
 `_lastUpdated`    | No                             | [`date`]      | An explicit or implied date and time range during which the most recent clinically relevant update was made to the nutrition order. Must include a time, and must be prefixed by ‘ge’ or ‘le’. Example: `ge2014-05-19T20:54:02.000Z`
[`_count`]         | No                             | [`number`]    | The maximum number of nutrition orders to include on a page.
 `_revinclude`     | No                             | [`token`]     | Provenance resource entries to be returned as part of the bundle. Example: `_revinclude=Provenance:target`

Notes:

* If `_id` is provided, no other parameters are required.
* The `_lastUpdated` parameter may be provided in the following formats:
    * Once with a prefix of ‘ge’ or ‘le’ representing the earliest date or latest date (for example, `date=ge2015-01-01` or `date=le2016-01-01`).
    * Twice with the prefixes of ‘ge’ and ‘le’ to indicate a specific range (for example, `date=ge2015-01-01&date=le2016-01-01`).
* When searching with the `_revinclude` parameter 
    * It may be provided once with the value `Provenance:target`. Example: `_revinclude=Provenance:target`
    * It may be provided with the `_id` or `patient` parameters. Example: `_id=214938095&_revinclude=Provenance:target`

* When `_revinclude` is provided in a request to the closed endpoint, the OAuth2 token must include the scope corresponding to the Authorization Type, such as `user/Provenance.read`, `patient/Provenance.read` or `system/Provenance.read`.

### Headers

 <%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/NutritionOrder?patient=12724066

#### Response

<%= headers status: 200 %>
<%= json(:r4_nutrition_order_bundle) %>

<%= disclaimer %>

#### Patient Authorization Request

    GET  https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/NutritionOrder?patient=12724066

#### Response

<%= headers status: 200 %>
<%= json(:r4_nutrition_order_patient_access_bundle) %>

<%= disclaimer %>

### Example Search by _id with RevInclude


### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>


### Headers

<%= headers %>
#### Request

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/NutritionOrder?_id=328575687,328575703&_revinclude=Provenance:target

#### Response

<%= headers status: 200 %>
<%= json(:R4_NUTRITION_ORDER_SEARCH_BY_REVINCLUDE) %>
<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by ID

List an individual nutrition order by its ID.

    GET /NutritionOrder/:id

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/NutritionOrder/313790117

#### Response

<%= headers status: 200 %>
<%= json(:r4_nutrition_order_entry) %>

<%= disclaimer %>

#### Patient Authorization Request

    GET https://fhir-ehr.cerner.com/4/ec2458f2-1e24-41c8-b71b-0e701af7583d/NutritionOrder/313790117

#### Response

<%= headers status: 200 %>
<%= json(:r4_nutrition_order_patient_access_entry) %>
<%= disclaimer %>

#### Patient Authorization Request For Entered in Error Status

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/NutritionOrder/328575703

#### Response

<%= headers status: 200 %>
<%= json(:r4_nutrition_order_patient_access_entered_in_error) %>
<%= disclaimer %>
### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`reference`]: https://hl7.org/fhir/r4/search.html#reference
[`token`]: https://hl7.org/fhir/R4/search.html#token
[`date`]: https://hl7.org/fhir/R4/search.html#date
[`_count`]: https://hl7.org/fhir/r4/search.html#count
[`number`]: https://hl7.org/fhir/R4/search.html#number
[errors]: ../../../#client-errors
[OperationOutcomes]: ../../../#operation-outcomes
[FHIR<sup>®</sup> Update]: https://hl7.org/fhir/R4/http.html#update
