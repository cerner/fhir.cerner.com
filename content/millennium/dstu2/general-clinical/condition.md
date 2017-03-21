---
title: Condition | DSTU 2 API
---

# Condition

* TOC
{:toc}

## Terminology Bindings

<%= terminology_table(:condition, :dstu2) %>

## Search

Search for Conditions that meet supplied query parameters:

    GET /Condition?:parameters

### Parameters

 Name             | Required?                                                            | Type          | Description
------------------|----------------------------------------------------------------------|---------------|----------------------------------------------------------------------------------------------------------------
 `_id`            | This or `patient`, if populated all other parameters are not allowed | [`token`]     | The logical resource id associated with the resource. Example: `p12345`
 `patient`        | This or `_id`                                                        | [`reference`] | The patient who has the condition. Example: `12345`
 `category`       | N                                                                    | [`token`]     | The [category] of the condition. Example: `diagnosis`, `problem`, `health-concern`
 `clinicalstatus` | N                                                                    | [`token`]     | The [clinical status] of the condition. Example: `resolved`

Note: Currently `diagnosis`, `problem` and `health-concern` category codes are supported.

### Response

<%= headers 200, {Functionality: 'Search by patient'} %>
<%= json(:dstu2_condition_bundle) %>
<%= headers 200, {Functionality: 'Search by id'} %>
<%= json(:dstu2_condition_bundle_by_id) %>

## Retrieve by id

List an individual Condition by its id:

    GET /Condition/:id

### Response

<%= headers 200, {Functionality: 'Retrieve diagnosis by id'} %>
<%= json(:dstu2_condition_diagnosis_resource) %>
<%= headers 200, {Functionality: 'Retrieve health concern by id'} %>
<%= json(:dstu2_condition_health_concern_resource) %>
<%= headers 200, {Functionality: 'Retrieve problem by id'} %>
<%= json(:dstu2_condition_problem_resource) %>

## Create

Create a new condition.

    POST /Condition

### Headers

To successfully POST a condition, the following headers must be provided. Condition creation is supported from the closed endpoint only.

    Content-Type: application/json+fhir
    Authorization: <OAuth2 Bearer Token>

_Implementation Notes_

* Currently, `health-concern` category code is not supported for writing conditions.

### Body fields

<%= definition_table(:condition, :create, :dstu2) %>

### Example Body

Create Problem Example:
<%= json(:dstu2_condition_problem_create) %>
Note: dateRecorded is currently not honored on a create.

Create Diagnosis Example:
<%= json(:dstu2_condition_diagnosis_create) %>
Note: abatementDateTime is not supported for diagnoses

### Response

Create Problem Example:
<%= headers 201 %>
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
    Location → https://fhir-ehr.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Condition/p6809861
    Status → 201 Created
    Content-Length → 0
    Content-Type → application/json
</pre>

Create Diagnosis Example:
<%= headers 201 %>
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
    Location → https://fhir-ehr.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Condition/d36474555
    Status → 201 Created
    Content-Length → 0
    Content-Type → application/json
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

## Update

Update an existing condition.

    PUT /Condition/:id

Note that any field which is missing will be interpreted as nulling out or removing data from the resource. See [FHIR<sup>®</sup> Update] for additional details about update operations.

### Headers

To successfully PUT a condition, the following headers must be provided. Condition updates are supported from the closed endpoint only.

    Content-Type: application/json+fhir
    Authorization: <OAuth2 Bearer Token>
    If-Match: W/"<Current condition id>"

_Implementation Notes_

* Currently, `health-concern` category code is not supported for updating conditions.

### Body fields

<%= definition_table(:condition, :update, :dstu2) %>

### Example Body

Update Problem Example:
<%= json(:dstu2_condition_problem_update) %>

Update Diagnosis Example:
<%= json(:dstu2_condition_diagnosis_update) %>
Note: abatementDateTime is not supported for diagnosis

### Response

<%= headers 200 %>
<pre class="terminal">
    Date → Wed, 01 Mar 2017 15:42:52 GMT
    Cache-Control → no-cache
    Vary → Origin,User-Agent,Accept-Encoding
    Strict-Transport-Security → max-age=631152000
    Server-Response-Time → 1227.508429
    X-Xss-Protection → 1; mode=block
    Pragma → no-cache
    X-Request-Id → c58a2925586fa64a89568b9ceac14475
    Etag → W/"6809873"
    X-Frame-Options → SAMEORIGIN
    X-Runtime → 1.227476
    X-Content-Type-Options → nosniff
    Expires → Mon, 01 Jan 1990 00:00:00 GMT
    Last-Modified → Wed, 01 Mar 2017 15:42:52 GMT
    Status → 200 OK
    Content-Length → 0
    Content-Type → application/json
</pre>

[`reference`]: http://hl7.org/fhir/DSTU2/search.html#reference
[`token`]: http://hl7.org/fhir/DSTU2/search.html#token
[category]: http://hl7.org/fhir/DSTU2/valueset-condition-category.html
[clinical status]: http://hl7.org/fhir/DSTU2/valueset-condition-clinical.html
[condition-category]: http://hl7.org/fhir/condition-category
[FHIR<sup>®</sup> Update]: http://hl7.org/fhir/DSTU2/http.html#update
