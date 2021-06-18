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

 ID                   | Value\[x] Type | Description
----------------------|----------------|------------------------------
 `coverage-encounter` | [`Reference`]  | A reference to an Encounter.

## Search

Search for Patient-level or Encounter-level Coverages that meet supplied query parameters:

    GET /Coverage?:parameters

_Implementation Notes_

* Public Healthcare represents an insurance policy funded by a public health system such as a provincial or national health plan. If there are any public coverages, they will return with an id prefixed with 'PH' or 'PHP' and will be returned in the payload with the rest of the coverages (private coverages).

### Authorization Types

<%= authorization_types(provider: true, patient: false, system: true) %>

### Parameters

 Name         | Required?            | Type          | Description
--------------|----------------------|---------------|--------------------------------------------------------
 `patient`    | This or `-encounter` | [`reference`] | Retrieve coverages for a patient. Example: `12345`
 `-encounter` | This or `patient`    | [`reference`] | Retrieve coverages for an encounter. Example: `143242`

### Headers

<%= headers fhir_json: true %>

### Example - Patient-level Private Coverage

#### Request

    GET https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Coverage?patient=12724066

#### Response

<%= headers status: 200 %>
<%= json(:r4_coverage_bundle) %>

<%= disclaimer %>

### Example - Patient-level Public Coverage

#### Request

    GET https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Coverage?patient=12724066

#### Response

<%= headers status: 200 %>
<%= json(:r4_coverage_patient_social_healthcare_bundle) %>

<%= disclaimer %>

### Example - Encounter-level Private Coverage

#### Request

    GET https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Coverage?-encounter=97954095

#### Response

<%= headers status: 200 %>
<%= json(:r4_coverage_encounter_bundle) %>

<%= disclaimer %>

### Example - Encounter-level Public Coverage

#### Request

    GET https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Coverage?-encounter=97701467

#### Response

<%= headers status: 200 %>
<%= json(:r4_coverage_encounter_social_healthcare_bundle) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Create

Create new Patient-level or Encounter-level Coverages.

    POST /Coverage

### Authorization Types

<%= authorization_types(provider: true, patient: false, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', 'Content-Type': 'application/fhir+json'} %>

### Body Fields

<%= definition_table(:coverage, :create, :r4) %>

### Example - Patient-level Private Coverage

#### Request

    POST https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Coverage

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
Location: https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Coverage/589763-11500257-11500257
Vary: Origin
X-Request-Id: ef7c0ee60a8cf431403fe82d9009640b
</pre>

<%= disclaimer %>

### Example - Patient-level Public Coverage

#### Request

    POST https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Coverage

#### Body

<%= json(:r4_coverage_patient_social_healthcare_create) %>

#### Response

<%= headers status: 201 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: text/html
Date: Tue, 22 Oct 2019 15:59:33 GMT
Etag: W/"135-0"
Last-Modified: Tue, 22 Oct 2019 15:59:30 GMT
Location: https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Coverage/PHP-589763-11500257-11500257
Vary: Origin
X-Request-Id: ef7c0ee60a8cf431403fe82d9009640b
</pre>

<%= disclaimer %>

### Example - Encounter-level Private Coverage

#### Request

    POST https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Coverage

#### Body

<%= json(:r4_coverage_encounter_create) %>

#### Response

<%= headers status: 201 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: text/html
Date: Tue, 22 Oct 2019 15:59:33 GMT
Etag: W/"0"
Last-Modified: Tue, 22 Oct 2019 15:59:30 GMT
Location: https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Coverage/31363178-11500257
Vary: Origin
X-Request-Id: ef7c0ee60a8cf431403fe82d9009640b
</pre>

<%= disclaimer %>

### Example - Encounter-level Public Coverage

#### Request

    POST https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Coverage

#### Body

<%= json(:r4_coverage_encounter_social_healthcare_create) %>

#### Response

<%= headers status: 201 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: text/html
Date: Tue, 22 Oct 2019 15:59:33 GMT
Etag: W/"42-0"
Last-Modified: Tue, 22 Oct 2019 15:59:30 GMT
Location: https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Coverage/PH-589763-11500257-11500257
Vary: Origin
X-Request-Id: ef7c0ee60a8cf431403fe82d9009640b
</pre>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Patch

Patch an existing Encounter-level or Patient-level Coverage.

    PATCH /Coverage/:id

_Implementation Notes_

* This implementation follows the [JSON Patch](https://tools.ietf.org/html/rfc6902) spec.
* Only operations on the paths listed below are supported.
* For Private Coverages, only Encounter-level Coverages may be patched.
* For Public Coverages, both Encounter-level and Patient-level Coverages may be patched, with the caveat of only supporting the `/period` and `/class/0/value` operations.

### Authorization Types

<%= authorization_types(provider: true, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', 'Accept': 'application/fhir+json',
                   'Content-Type': 'application/json-patch+json', 'If-Match': 'W/"&lt;Current version of the Coverage resource>"'} %>

### Patch Operations

<%= patch_definition_table(:coverage_encounter_patch, :r4) %>

### Example

#### Request

    PATCH https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Coverage/623884-674012

#### Body

<%= json(:r4_coverage_encounter_patch) %>

#### Response

<%= headers status: 200 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: text/html
Date: Tue, 26 Mar 2019 15:42:29 GMT
Etag: W/"10"
Last-Modified: Tue, 26 Mar 2019 15:42:27 GMT
Vary: Origin
X-Request-Id: 47306a14c8a2c3afd4ab85aa9594101d
</pre>

<%= disclaimer %>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Delete

Delete an existing Encounter-level Coverage.

    DELETE /Coverage/:id

_Implementation Notes_

* For Private Coverages, only Encounter-level Coverages may be deleted.
* For Public Coverages, both Encounter-level and Patient-level Coverages may be deleted.

### Authorization Types

<%= authorization_types(provider: true, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', 'If-Match': 'W/"&lt;Current version of the Coverage resource>"'} %>

### Example

#### Request

    DELETE https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Coverage/623884-674012

#### Response

<%= headers status: 204 %>
<pre class="terminal">
Cache-Control: no-cache
Date: Wed, 20 May 2020 18:55:23 GMT
Vary: Origin
X-Request-Id: 160d603d256dce10d510f7da2ca1780e
</pre>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`reference`]: https://hl7.org/fhir/r4/search.html#reference
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
[Encounter]: #custom-extensions
