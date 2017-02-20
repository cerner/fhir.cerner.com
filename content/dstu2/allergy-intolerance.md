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

<%= headers 200, {Functionality: 'Search by patient'} %>
<%= json(:dstu2_allergy_intolerance_bundle) %>
<%= headers 200, {Functionality: 'Search by patient and status'} %>
<%= json(:dstu2_allergy_intolerance_bundle_by_status) %>
<%= headers 200, {Functionality: 'Search by id'} %>
<%= json(:dstu2_allergy_intolerance_bundle_by_id) %>

## Retrieve by id

List an individual AllergyIntolerance by its id:

    GET /AllergyIntolerance/:id

### Response

<%= headers 200 %>
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

<%= headers 201 %>
<pre class="terminal">
    Connection → Keep-Alive
    Content-Encoding → gzip
    Content-Length → 20
    Content-Type → text/html; charset=UTF-8
    Date → Wed, 13 Jan 2016 21:45:47 GMT
    Keep-Alive → timeout=15, max=100
    Last-Modified → Tue, 15 Dec 2015 19:13:20 GMT
    Status → 201 Created
    access-control-allow-methods → DELETE, GET, POST, PUT, OPTIONS, HEAD
    access-control-allow-origin → *
    access-control-expose-headers → ETag, Content-Location, Location, X-Request-Id, WWW-Authenticate, Date
    access-control-max-age → 0
    cache-control → no-cache
    etag → W/"35502191"
    location → https://fhir-ehr.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/AllergyIntolerance/35502191
    server-response-time → 1260.984596
    strict-transport-security → max-age=631152000
    vary → Origin,User-Agent,Accept-Encoding
    x-content-type-options → nosniff
    x-frame-options → SAMEORIGIN
    x-request-id → edad5615-1f19-4ff0-9999-46f46a52368e
    x-runtime → 1.260940
    x-xss-protection → 1; mode=block
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

## Update

Update an existing allergy.

    PUT /AllergyIntolerance

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

<%= headers 200 %>
<pre class="terminal">
    Connection → Keep-Alive
    Content-Encoding → gzip
    Content-Length → 20
    Content-Type → text/html; charset=UTF-8
    Date → Wed, 13 Jan 2016 21:50:53 GMT
    Keep-Alive → timeout=15, max=100
    Last-Modified → Tue, 15 Dec 2015 19:13:20 GMT
    Status → 200 OK
    access-control-allow-methods → DELETE, GET, POST, PUT, OPTIONS, HEAD
    access-control-allow-origin → *
    access-control-expose-headers → ETag, Content-Location, Location, X-Request-Id, WWW-Authenticate, Date
    access-control-max-age → 0
    cache-control → no-cache
    etag → W/"35504311"
    server-response-time → 653.7616069999999
    strict-transport-security → max-age=631152000
    vary → Origin,User-Agent,Accept-Encoding
    x-content-type-options → nosniff
    x-frame-options → SAMEORIGIN
    x-request-id → 9dba8326-899a-406f-a125-3fc3d6605dad
    x-runtime → 0.653722
    x-xss-protection → 1; mode=block
</pre>

[`reference`]: http://hl7.org/fhir/DSTU2/search.html#reference
[`token`]: http://hl7.org/fhir/DSTU2/search.html#token
[Certainty of the allergy or intolerance]: http://hl7.org/fhir/DSTU2/valueset-allergy-intolerance-status.html
[FHIR<sup>®</sup> Update]: http://hl7.org/fhir/DSTU2/http.html#update
