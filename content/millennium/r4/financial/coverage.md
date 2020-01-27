---
title: Coverage | R4 API
---

# Coverage

* TOC
{:toc}

## Overview

The Coverage resource provides high-level information about an insurance plan for a specific person or patient or an encounter. Identifying coverage information would appear on an insurance card, and can be used to pay for health care services. The resource can also be used for "selfpay" where an individual takes responsibility for the cost of health care services, rather than a company or organization.

The following fields are returned if valued:

* [Coverage id](http://hl7.org/fhir/R4/coverage-definitions.html#Coverage.id){:target="_blank"}
* [Status](https://hl7.org/fhir/R4/coverage-definitions.html#Coverage.status){:target="_blank"}
* [Subscriber of policy](https://hl7.org/fhir/R4/coverage-definitions.html#Coverage.subscriber){:target="_blank"}
* [Subscriber id](https://hl7.org/fhir/R4/coverage-definitions.html#Coverage.subscriberId){:target="_blank"}
* [Beneficiary relationship to subscriber](https://hl7.org/fhir/R4/coverage-definitions.html#Coverage.relationship){:target="_blank"}
* [Plan beneficiary](https://hl7.org/fhir/R4/coverage-definitions.html#Coverage.beneficiary){:target="_blank"}
* [Dependent number](https://hl7.org/fhir/R4/coverage-definitions.html#Coverage.dependent){:target="_blank"}
* [Start/end time of the coverage](https://hl7.org/fhir/R4/coverage-definitions.html#Coverage.period){:target="_blank"}
* [Payor](https://hl7.org/fhir/R4/coverage-definitions.html#Coverage.payor){:target="_blank"}
* [Class](http://hl7.org/fhir/R4/coverage-definitions.html#Coverage.class){:target="_blank"}
  * [Type](http://hl7.org/fhir/R4/coverage-definitions.html#Coverage.class.type){:target="_blank"}
  * [Value](http://hl7.org/fhir/R4/coverage-definitions.html#Coverage.class.value){:target="_blank"}
  * [Name](http://hl7.org/fhir/R4/coverage-definitions.html#Coverage.class.name){:target="_blank"}
* [Extensions including encounter](#extensions){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:coverage, :r4) %>


## Extensions

* [Encounter]

### Custom Extensions

All URLs for custom extensions are defined as `https://fhir-ehr.cerner.com/r4/StructureDefinition/{id}`

 ID                         | Value\[x] Type      | Description
----------------------------|---------------------|----------------------------------------------------
 `coverage-encounter`       | [`Reference`]       | A reference to an Encounter.


## Search

Search for Coverages that meet supplied query parameters:

    GET /Coverages?:parameters

### Authorization Types

<%= authorization_types(practitioner: true, patient: false, system: true)%>

### Parameters

 Name        | Required?           | Type          | Description
-------------|---------------------|---------------|----------------------------------------------------
 `patient`   | This or `-encounter`| [`reference`] | Retrieve coverages for a patient. Example: `12345`
 `-encounter`| This or `patient`   | [`reference`] | Retrieve coverages for an encounter. Example: `143242`

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-ehr.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Coverage?patient=589763

#### Response

<%= headers status: 200 %>
<%= json(:r4_coverage_bundle) %>

#### Request

    GET https://fhir-ehr.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Coverage?-encounter=<encounter_id>

#### Response

<%= headers status: 200 %>
<%= json(:r4_coverage_bundle) %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Create

Create a new Coverage.

    POST /Coverage

### Authorization Types

<%= authorization_types(practitioner: true, patient: false, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', 'Content-Type': 'application/fhir+json'} %>

### Body Fields

<%= definition_table(:coverage, :create, :r4) %>

### Example

#### Request

    POST https://fhir-ehr.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Coverage

#### Body

<%= json(:r4_coverage_create) %>

#### Response

<%= headers status: 201 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: text/html
Date: Tue, 22 Oct 2019 15:59:33 GMT
Etag: W/"0$0"
Last-Modified: Tue, 22 Oct 2019 15:59:30 GMT
Location: https://fhir-ehr.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Coverage/589763-11500257-11500257
Server-Response-Time: 3890.363996
Status: 201 Created
Vary: Origin
X-Request-Id: ef7c0ee60a8cf431403fe82d9009640b
X-Runtime: 3.890282
</pre>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`reference`]: https://hl7.org/fhir/r4/search.html#reference
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
