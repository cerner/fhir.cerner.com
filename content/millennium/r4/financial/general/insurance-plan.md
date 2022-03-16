---
title: InsurancePlan | R4 API
---

# InsurancePlan

* TOC
  {:toc}

## Overview

InsurancePlan describes a health insurance offering comprised of a list of covered benefits, costs associated with those benefits, and additional information about the offering, such as who it is owned and administered by, a coverage area contact information.

The following fields are returned if valued:

* [InsurancePlan id](https://hl7.org/fhir/r4/resource-definitions.html#Resource.id){:target="_blank"}
* [Status](https://hl7.org/fhir/r4/insuranceplan-definitions.html#InsurancePlan.status){:target="_blank"}
* [Type](https://hl7.org/fhir/r4/insuranceplan-definitions.html#InsurancePlan.type){:target="_blank"}
* [Name](https://hl7.org/fhir/r4/insuranceplan-definitions.html#InsurancePlan.name){:target="_blank"}
* [Period](https://hl7.org/fhir/r4/insuranceplan-definitions.html#InsurancePlan.period){:target="_blank"}
* [OwnedBy](https://hl7.org/fhir/r4/insuranceplan-definitions.html#InsurancePlan.ownedBy){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:insurance_plan, :r4) %>

## Search

Search for InsurancePlans that meet supplied query parameters:

    GET /InsurancePlan?:parameters

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Parameters

Name                  | Required? | Type          | Description
-----------------------|-----------|---------------|-------------------------------------------------------
`owned-by`                 | Yes       | [`reference`]     | Organization associated with the InsurancePlan.


### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-ehr.sandboxcerner.com/r4/dacc6494-e336-45ad-8729-b789ff8663c6/InsurancePlan?owned-by=589783

#### Response

<%= headers status: 200 %>
<%= json(:r4_insuranceplan_bundle) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`reference`]: https://hl7.org/fhir/R4/search.html#reference
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
