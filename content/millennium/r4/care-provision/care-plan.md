---
title: CarePlan | R4 API
---

# CarePlan

* TOC
{:toc}

## Overview

The R4 CarePlan resource can be used to represent care plans.

The CarePlan resource describes the intentions of how one or more practitioners plan to deliver care to a specific patient. Care plans are used in a variety of areas and scopes ranging from encounter or visit specific to cross-visits.  Care plans are used to group activities, goals and/or practitioners to create context. Care plans are intended to be specific to the patient. It is possible for a planned activity to stand alone without a care plan such as a scheduled appointment.  

The following fields are returned if valued:

* [CarePlan Id](http://hl7.org/fhir/r4/resource-definitions.html#Resource.id){:target="_blank"}
* [Status](http://hl7.org/fhir/r4/careplan-definitions.html#CarePlan.status){:target="_blank"}
* [Intent (plan)](http://hl7.org/fhir/r4/careplan-definitions.html#CarePlan.intent){:target="_blank"}
* [Category (assess-plan)](http://hl7.org/fhir/r4/careplan-definitions.html#CarePlan.category){:target="_blank"}
* [Title](http://hl7.org/fhir/r4/careplan-definitions.html#CarePlan.title){:target="_blank"}
* [Subject (Patient Only)](http://hl7.org/fhir/r4/careplan-definitions.html#CarePlan.subject){:target="_blank"}
* [Encounter](http://hl7.org/fhir/r4/careplan-definitions.html#CarePlan.encounter){:target="_blank"}
* [Effective Period](http://hl7.org/fhir/r4/careplan-definitions.html#CarePlan.period){:target="_blank"}
* [Author](http://hl7.org/fhir/r4/careplan-definitions.html#CarePlan.author){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:care_plan, :r4) %>


## Search

Search for CarePlans that meet supplied query parameters:

    GET /CarePlan?:parameters

_Implementation Notes_

* The [CarePlan.activity] element is not supported and will not be returned. This means that the [CarePlan.activity.detail.status] and [CarePlan.activity.detail.prohibited] modifier elements will not be returned.

* The description of the CarePlan is included in the [CarePlan.text.div] element as ASCII text.

### Authorization Types

<%= authorization_types(practitioner: true, system: true) %>

### Parameters

 Name         | Required? | Type          | Description
--------------|-----------|---------------|--------------
 `_id`        | See notes | [`token`]     | The logical resource id associated with the resource.
 `date`       | N         | [`date`]      | Time period plan covers. Example: `date=ge2016&date=le2017 (Jan 1, 2016 - Dec 31, 2017)` or `date=ge2016-08-24T12:00:00.000Z&date=le2017-01-24T12:00:00.000Z`
 `patient`    | See notes | [`reference`] | Who care plan is for. Example: `patient=1316024`
 `category`   | See notes | [`token`]     | The scope of care plan being searched for. Examples: `category=assess-plan`
 [`_count`]   | N         | [`number`]    | Number of results per page.


Notes:

- The `_id` parameter
  - May not be provided with any other parameters.
  - When provided, `_count` is ignored.

- The `date` parameter
  - When provided, must use both `ge` and `le` prefixes in the same search 
    - The lower value must have the `ge` prefix and the higher value must have the `le` prefix
    - If date precision must be consistent
  - May be combined with the patient and category parameters.

- The `patient` parameter
  - This is required when `_id` is not provided.

- The `category` parameter
  - Must be provided when `_id` is not provided.
  - Only supports the code `assess-plan`.
  - This can be combined with the patient parameter.

### Headers

 <%= headers %>

### Example retrieve care plan

#### Request

    GET https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/CarePlan?patient=1316020&category=assess-plan

#### Response

<%= headers status: 200 %>
<%= json(:r4_care_plan_bundle) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual CarePlan by its id:

    GET /CarePlan/:id

### Authorization Types

<%= authorization_types(practitioner: true, system: true) %>

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/CarePlan/17463459

#### Response

<%= headers status: 200 %>
<%= json(:r4_care_plan_entry) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[CarePlan.activity]: https://www.hl7.org/fhir/careplan-definitions.html#CarePlan.activity
[CarePlan.activity.detail.status]: https://www.hl7.org/fhir/careplan-definitions.html#CarePlan.activity.detail.status
[CarePlan.activity.detail.prohibited]: https://www.hl7.org/fhir/careplan-definitions.html#CarePlan.activity.detail.prohibited
[CarePlan.participant]: http://hl7.org/fhir/r4/careplan-definitions.html#CarePlan.participant
[CarePlan.text.div]: https://www.hl7.org/fhir/careplan-definitions.html#CarePlan.text.div
[`token`]: http://hl7.org/fhir/r4/search.html#token
[`date`]: http://hl7.org/fhir/r4/search.html#date
[`reference`]: http://hl7.org/fhir/r4/search.html#reference
[`_count`]: http://hl7.org/fhir/r4/search.html#count
[`number`]: http://hl7.org/fhir/r4/search.html#number
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
