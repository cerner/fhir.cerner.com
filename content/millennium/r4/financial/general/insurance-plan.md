---
title: InsurancePlan | R4 API
---

# InsurancePlan

* TOC
{:toc}

## Overview

The InsurancePlan resource is used to describe a health insurance offering and supports the return of a list of details, such as who it is owned and administered by, the plan's coverage area, and contact information.

The following fields are returned if valued:

* [ID](https://hl7.org/fhir/r4/resource-definitions.html#Resource.id){:target="_blank"}
* [InsurancePlan identifier](https://hl7.org/fhir/r4/insuranceplan-definitions.html#InsurancePlan.identifier){:target="_blank"}
* [Status](https://hl7.org/fhir/r4/insuranceplan-definitions.html#InsurancePlan.status){:target="_blank"}
* [Type](https://hl7.org/fhir/r4/insuranceplan-definitions.html#InsurancePlan.type){:target="_blank"}
* [Name](https://hl7.org/fhir/r4/insuranceplan-definitions.html#InsurancePlan.name){:target="_blank"}
* [Period](https://hl7.org/fhir/r4/insuranceplan-definitions.html#InsurancePlan.period){:target="_blank"}
* [OwnedBy](https://hl7.org/fhir/r4/insuranceplan-definitions.html#InsurancePlan.ownedBy){:target="_blank"}


<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Terminology Bindings

<%= terminology_table(:insurance_plan, :r4) %>

## Search

Search for insurance plans that meet supplied query parameters:

    GET /InsurancePlan?:parameters

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Parameters

Name       | Required      | Type          | Description
-----------|---------------|---------------|-------------------------------------------------------
`_id`      | Conditionally | [`token`]     | The logical resource ID associated with the resource. This parameter is required if the `owned-by` parameter is not used. Example: `1234`
`owned-by` | Conditionally | [`reference`] | The organization associated with the insurance plan. This parameter is required if the `_id` parameter is not used. Example: `Organization/5678`

_Implementation Notes_

- The `_id` and `owned-by` search parameters cannot be provided together.
- When searching with the `_id` parameter:
  - It can be provided with either a single value, or a comma-separated list of references. Example: `_id=12345` or `_id=12345,67890`
- When searching with the `owned-by` parameter:
  - It must be provided only once. 

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/InsurancePlan?owned-by=Organization/589783

#### Response

<%= headers status: 200 %>
<%= json(:r4_insuranceplan_bundle) %>


## Retrieve by ID

List an individual insurance plan by the associated ID:

    GET /InsurancePlan/:id

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/InsurancePlan/2798233

#### Response

<%= headers status: 200 %>
<%= json(:r4_insuranceplan_entry) %>

[`reference`]: https://hl7.org/fhir/R4/search.html#reference
[`token`]: https://hl7.org/fhir/R4/search.html#token
[errors]: ../../../#client-errors
[OperationOutcomes]: ../../../#operation-outcomes
