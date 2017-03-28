---
title: AllergyIntolerance | DSTU 2 API
---

# AllergyIntolerance

* TOC
{:toc}

## Terminology Bindings

<%= terminology_table(:allergy_intolerance, :dstu2) %>

## Search

Search for AllergyIntolerances that meet supplied query parameters:

    GET /AllergyIntolerance?:parameters

### Parameters

 Name      | Required?                                                            | Type          | Description
-----------|----------------------------------------------------------------------|---------------|-----------------------------------------------------------------------
 `_id`     | This or `patient`, if populated all other parameters are not allowed | [`token`]     | The logical resource id associated with the resource. Example: `12345`
 `patient` | This or `_id`                                                        | [`reference`] | Who the sensitivity is for. Example: `12345`
 `status`  | N                                                                    | [`token`]     | [Certainty of the allergy or intolerance]. Example: `confirmed`

### Response

<%= headers status: 200, head: {Functionality: 'Search by patient'} %>
<%= json(:dstu2_allergy_intolerance_bundle) %>
<%= headers status: 200, head: {Functionality: 'Search by patient and status'} %>
<%= json(:dstu2_allergy_intolerance_bundle_by_status) %>
<%= headers status: 200, head: {Functionality: 'Search by id'} %>
<%= json(:dstu2_allergy_intolerance_bundle_by_id) %>

## Retrieve by id

List an individual AllergyIntolerance by its id:

    GET /AllergyIntolerance/:id

### Response

<%= headers status: 200 %>
<%= json(:dstu2_allergy_intolerance_resource ) %>

## Create

Create new allergies.

    POST /AllergyIntolerance

### Headers

To successfully POST an allergy, the following headers must be provided. Allergy creation is supported from the closed endpoint only.

    Content-Type: application/json+fhir
    Authorization: <OAuth2 Bearer Token>

### Body fields

<%= definition_table(:allergy_intolerance, :create, :dstu2) %>

### Example Body

<%= json(:dstu2_allergy_intolerance_create) %>

### Response

<%= headers status: 201 %>
<pre class="terminal">
    Date → Tue, 28 Feb 2017 21:08:20 GMT
    Cache-Control → no-cache
    Vary → Origin,User-Agent,Accept-Encoding
    Strict-Transport-Security → max-age=631152000
    Server-Response-Time → 10023.126891
    X-Xss-Protection → 1; mode=block
    Pragma → no-cache
    X-Request-Id → b0fee21c20d2a240d9b4b86cfbcbd87c
    Etag → W/"6167733"
    X-Frame-Options → SAMEORIGIN
    X-Runtime → 10.023081
    X-Content-Type-Options → nosniff
    Expires → Mon, 01 Jan 1990 00:00:00 GMT
    Last-Modified → Tue, 28 Feb 2017 21:03:00 GMT
    Location → https://fhir-ehr.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/AllergyIntolerance/6167733
    Status → 201 Created
    Content-Length → 0
    Content-Type → application/json
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

## Update

Update an existing allergy.

    PUT /AllergyIntolerance/:id

Note that any field which is missing will be interpreted as nulling out or removing data from the resource. See [FHIR<sup>®</sup> Update] for additional details about update operations.

### Headers

To successfully PUT an allergy, the following headers must be provided. Allergy updates are supported from the closed endpoint only.

    Content-Type: application/json+fhir
    Authorization: <OAuth2 Bearer Token>
    If-Match: W/"<Current allergy id>"

### Body fields

<%= definition_table(:allergy_intolerance, :update, :dstu2) %>

### Example Body

<%= json(:dstu2_allergy_intolerance_update) %>

### Response

<%= headers status: 200 %>
<pre class="terminal">
    Date →  Tue, 28 Feb 2017 21:19:18 GMT
    Cache-Control →  no-cache
    Vary →  Origin,User-Agent,Accept-Encoding
    Strict-Transport-Security →  max-age=631152000
    Server-Response-Time →  647.014821
    X-Xss-Protection →  1; mode=block
    Pragma →  no-cache
    X-Request-Id →  d30766e5445f973b32efa9ec516cb5db
    Etag →  W/"6167741"
    X-Frame-Options →  SAMEORIGIN
    X-Runtime →  0.646992
    X-Content-Type-Options →  nosniff
    Expires →  Mon, 01 Jan 1990 00:00:00 GMT
    Last-Modified →  Tue, 28 Feb 2017 21:03:00 GMT
    Status →  200 OK
    Content-Length →  0
    Content-Type →  application/json
</pre>

[`reference`]: http://hl7.org/fhir/DSTU2/search.html#reference
[`token`]: http://hl7.org/fhir/DSTU2/search.html#token
[Certainty of the allergy or intolerance]: http://hl7.org/fhir/DSTU2/valueset-allergy-intolerance-status.html
[FHIR<sup>®</sup> Update]: http://hl7.org/fhir/DSTU2/http.html#update
