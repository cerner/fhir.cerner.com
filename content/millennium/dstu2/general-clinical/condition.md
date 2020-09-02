---
title: Condition | DSTU 2 API
---

# Condition

* TOC
{:toc}

## Overview
The Condition resource is used to record details about a patient's problems, diagnoses, or other health matters that are concerning. It is common to capture Conditions during the encounter or visit. This is usually captured both as initial suspected problems and confirmed or refuted problems or diagnoses at the time of discharge. This resource may be referenced by other resources as a "reason" for an action or order such as the reason for ordering a medication or procedure.

This resource is NOT intended to record subjective or objective information that could lead to the recording of a condition such as signs or symptoms. Signs and symptoms are typically documented as Observations although some persistent symptoms such as fever or headache may be documented prior to the definitive diagnosis being recognized by a clinician.

References to `implicitRules` and `modifierExtension` fields are NOT supported and will fail a Create or Update request.

The following fields are returned if valued:

* [Id](http://hl7.org/fhir/DSTU2/resource-definitions.html#Resource.id){:target="_blank"}
* [Patient](http://hl7.org/fhir/DSTU2/condition-definitions.html#Condition.patient){:target="_blank"}
* [Patient encounter when first recorded (only applies to diagnoses)](http://hl7.org/fhir/DSTU2/condition-definitions.html#Condition.encounter){:target="_blank"}
* [Who recorded the condition](http://hl7.org/fhir/DSTU2/condition-definitions.html#Condition.asserter){:target="_blank"}
* [Date recorded](http://hl7.org/fhir/DSTU2/condition-definitions.html#Condition.dateRecorded){:target="_blank"}
* [Condition code](﻿﻿http://hl7.org/fhir/DSTU2/condition-definitions.html#Condition.code){:target="_blank"}
* [Status](http://hl7.org/fhir/DSTU2/condition-definitions.html#Condition.clinicalStatus){:target="_blank"}
* [Category](http://hl7.org/fhir/DSTU2/condition-definitions.html#Condition.category){:target="_blank"}
* [Verification status](http://hl7.org/fhir/DSTU2/condition-definitions.html#Condition.verificationStatus){:target="_blank"}
* [Onset (dateTime)](http://hl7.org/fhir/DSTU2/condition-definitions.html#Condition.onset_x_){:target="_blank"}
* [Resolved﻿ (either boolean or dateTime) (only applies to problems)](http://hl7.org/fhir/DSTU2/condition-definitions.html#Condition.abatement_x_){:target="_blank"}
* [Severity](http://hl7.org/fhir/DSTU2/condition-definitions.html#Condition.severity){:target="_blank"}
* [Comment/Note﻿﻿](http://hl7.org/fhir/DSTU2/condition-definitions.html#Condition.notes){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:condition, :dstu2) %>

## Search

Search for Conditions that meet supplied query parameters:

    GET /Condition?:parameters

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Parameters

 Name             | Required?                                                            | Type          | Description
------------------|----------------------------------------------------------------------|---------------|----------------------------------------------------------------------------------------------------------------
 `_id`            | This or `patient`, if populated all other parameters are not allowed | [`token`]     | The logical resource id associated with the resource. Example: `p12345`
 `patient`        | This or `_id`                                                        | [`reference`] | The patient who has the condition. Example: `12345`
 `category`       | N                                                                    | [`token`]     | The [category] of the condition. Example: `diagnosis`, `problem`, `health-concern`
 `clinicalstatus` | N                                                                    | [`token`]     | The [clinical status] of the condition. Example: `resolved`

Notes:

* Currently only `diagnosis`, `problem` and `health-concern` category codes are supported.

### Headers

 <%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Condition?patient=12724066

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_condition_bundle) %>
<%= disclaimer %>

### Example Read by Ids

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Condition?_id=d2572382197,p73077203,00a5d6eb-c567-42f7-be07-53804cece075

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_condition_bundle_by_id) %>
<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual Condition by its id:

    GET /Condition/:id

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Condition/00a5d6eb-c567-42f7-be07-53804cece075

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_condition_health_concern_resource) %>
<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Create

Create a new condition.

    POST /Condition

_Implementation Notes_

* The following restrictions are in place based on `Condition.category`:
  * For Conditions with a category code of [diagnosis](http://hl7.org/fhir/dstu2/valueset-condition-category.html):
    * `Condition.encounter` is required.
    * `Condition.abatementDateTime` is not supported.
  * For Conditions with a category code of [problem](https://argonautwiki.hl7.org/Argonaut_Condition_Category_Codes):
    * If `Condition.dateRecorded` is set on the request body, its value will currently be ignored.
  * Creating Conditions with a category code of [health-concern](https://argonautwiki.hl7.org/Argonaut_Condition_Category_Codes) is not currently supported.

### Authorization Types

<%= authorization_types(provider: true, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', Accept: 'application/json+fhir', 'Content-Type': 'application/json+fhir'} %>

### Body fields

<%= definition_table(:condition, :create, :dstu2) %>

### Create Problem Example

#### Request

    POST https://fhir-ehr-code.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Condition

#### Body

<%= json(:dstu2_condition_problem_create) %>

#### Response

<%= headers status: 201 %>
<pre class="terminal">
    Date → Tue, 28 Feb 2017 21:26:37 GMT
    Cache-Control → no-cache
    Vary → Origin,User-Agent,Accept-Encoding
    Strict-Transport-Security → max-age=631152000
    Server-Response-Time → 9272.410216999999
    X-Xss-Protection → 1; mode=block
    Pragma → no-cache
    X-Request-Id → 78a19072002b8651623351cfedaffe70
    Etag → W/"6809861"
    X-Frame-Options → SAMEORIGIN
    X-Runtime → 9.272318
    X-Content-Type-Options → nosniff
    Expires → Mon, 01 Jan 1990 00:00:00 GMT
    Last-Modified → Tue, 28 Feb 2017 21:26:44 GMT
    Location → https://fhir-ehr-code.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Condition/p6809861
    Status → 201 Created
    Content-Length → 0
    Content-Type → application/json
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.
<%= disclaimer %>

### Create Diagnosis Example

#### Request

    POST https://fhir-ehr-code.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Condition

#### Body

<%= json(:dstu2_condition_diagnosis_create) %>

#### Response

<%= headers status: 201 %>
<pre class="terminal">
    Date → Tue, 28 Feb 2017 21:30:28 GMT
    Cache-Control → no-cache
    Vary → Origin,User-Agent,Accept-Encoding
    Strict-Transport-Security → max-age=631152000
    Server-Response-Time → 767.841864
    X-Xss-Protection → 1; mode=block
    Pragma → no-cache
    X-Request-Id → 1b0d589dde95bcafcefd3a1965b5cadf
    Etag → W/"36474555"
    X-Frame-Options → SAMEORIGIN
    X-Runtime → 0.767820
    X-Content-Type-Options → nosniff
    Expires → Mon, 01 Jan 1990 00:00:00 GMT
    Last-Modified → Tue, 28 Feb 2017 21:30:28 GMT
    Location → https://fhir-ehr-code.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Condition/d36474555
    Status → 201 Created
    Content-Length → 0
    Content-Type → application/json
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.
<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Update

Update an existing condition.

    PUT /Condition/:id

_Implementation Notes_

* Any field which is missing will be interpreted as nulling out or removing data from the resource. See [FHIR<sup>®</sup> Update] for additional details about update operations.
* Currently, `health-concern` category code is not supported for updating conditions.

### Authorization Types

<%= authorization_types(provider: true, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', Accept: 'application/json+fhir',
                   'Content-Type': 'application/json+fhir', 'If-Match': 'W/"&lt;Current version of the Condition resource>"'} %>

### Body fields

Notes:

* `abatementDateTime` is not supported for Conditions with a category of `diagnosis`.
* `notes` cannot be added if `notes` already exists. An existing `notes` field cannot be modified.

<%= definition_table(:condition, :update, :dstu2) %>

### Example

#### Request

    PUT https://fhir-ehr-code.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Condition/d2572382197

#### Body

<%= json(:dstu2_condition_diagnosis_update) %>

#### Response

<%= headers status: 200 %>
<pre class="terminal">
    Date → Wed, 01 Mar 2017 15:42:52 GMT
    Cache-Control → no-cache
    Vary → Origin,User-Agent,Accept-Encoding
    Strict-Transport-Security → max-age=631152000
    Server-Response-Time → 1227.508429
    X-Xss-Protection → 1; mode=block
    Pragma → no-cache
    X-Request-Id → c58a2925586fa64a89568b9ceac14475
    Etag → W/"43538555"
    X-Frame-Options → SAMEORIGIN
    X-Runtime → 1.227476
    X-Content-Type-Options → nosniff
    Expires → Mon, 01 Jan 1990 00:00:00 GMT
    Last-Modified → Wed, 01 Mar 2017 15:42:52 GMT
    Status → 200 OK
    Content-Length → 0
    Content-Type → application/json
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.
<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`reference`]: http://hl7.org/fhir/DSTU2/search.html#reference
[`token`]: http://hl7.org/fhir/DSTU2/search.html#token
[category]: http://hl7.org/fhir/DSTU2/valueset-condition-category.html
[clinical status]: http://hl7.org/fhir/DSTU2/valueset-condition-clinical.html
[condition-category]: http://hl7.org/fhir/condition-category
[FHIR<sup>®</sup> Update]: http://hl7.org/fhir/DSTU2/http.html#update
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
