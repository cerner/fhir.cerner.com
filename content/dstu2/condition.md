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

 Name             | Required? | Type          | Description
------------------|-----------|---------------|------------------------------------------------------------------
 `patient`        | Y         | [`reference`] | The patient who has the condition. Example: `12345`
 `category`       | N         | [`token`]     | The [category] of the condition. Example: `diagnosis`, `problem`
 `clinicalstatus` | N         | [`token`]     | The [clinical status] of the condition. Example: `resolved`

Note: Currently `diagnosis` and `problem` category codes are supported. Code `diagnosis` is from the [condition-category] system and code `problem` is from the [argonaut extension-codes] system.

### Response

<%= headers 200 %>
<%= json(:dstu2_condition_bundle) %>

## Create

Create a new condition.

    POST /Condition

### Headers

To successfully POST a condition, the following headers must be provided. Condition creation is supported from the closed endpoint only.

    Content-Type: application/json+fhir
    Authorization: <OAuth2 Bearer Token>

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
    Connection → Keep-Alive
    Content-Encoding → gzip
    Content-Length → 20
    Content-Type → text/html; charset=UTF-8
    Date → Tue, 05 Jan 2016 19:03:21 GMT
    Keep-Alive → timeout=15, max=100
    Last-Modified → Tue, 05 Jan 2016 19:03:27 GMT
    Status → 201 Created
    access-control-allow-methods → DELETE, GET, POST, PUT, OPTIONS, HEAD
    access-control-allow-origin → *
    access-control-expose-headers → ETag, Content-Location, Location, X-Request-Id, WWW-Authenticate, Date
    access-control-max-age → 0
    cache-control → no-cache
    etag → W/"4736135"
    location → https://fhir-ehr.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Condition/p4736135
    server-response-time → 5418.609058
    strict-transport-security → max-age=631152000
    vary → Origin,User-Agent,Accept-Encoding
    x-content-type-options → nosniff
    x-frame-options → SAMEORIGIN
    x-request-id → 0a0bbace-7879-4508-b375-0a534d1bb8ce
    x-runtime → 5.418577
    x-xss-protection → 1; mode=block
</pre>

Create Diagnosis Example:
<%= headers 201 %>
<pre class="terminal">
    Connection → Keep-Alive
    Content-Encoding → gzip
    Content-Length → 20
    Content-Type → text/html; charset=UTF-8
    Date → Tue, 05 Jan 2016 19:03:21 GMT
    Keep-Alive → timeout=15, max=100
    Last-Modified → Tue, 05 Jan 2016 19:03:27 GMT
    Status → 201 Created
    access-control-allow-methods → DELETE, GET, POST, PUT, OPTIONS, HEAD
    access-control-allow-origin → *
    access-control-expose-headers → ETag, Content-Location, Location, X-Request-Id, WWW-Authenticate, Date
    access-control-max-age → 0
    cache-control → no-cache
    etag → W/"4736135"
    location → https://fhir-ehr.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Condition/d21591615
    server-response-time → 5418.609058
    strict-transport-security → max-age=631152000
    vary → Origin,User-Agent,Accept-Encoding
    x-content-type-options → nosniff
    x-frame-options → SAMEORIGIN
    x-request-id → 0a0bbace-7879-4508-b375-0a534d1bb8ce
    x-runtime → 5.418577
    x-xss-protection → 1; mode=block
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

## Update

Update an existing condition.

    PUT /Condition

Note that any field which is missing will be interpreted as nulling out or removing data from the resource. See [FHIR<sup>®</sup> Update] for additional details about update operations.

### Headers

To successfully PUT a condition, the following headers must be provided. Condition updates are supported from the closed endpoint only.

    Content-Type: application/json+fhir
    Authorization: <OAuth2 Bearer Token>
    If-Match: W/"<Current condition id>"

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
    Connection → Keep-Alive
    Content-Encoding → gzip
    Content-Length → 20
    Content-Type → text/html; charset=UTF-8
    Date → Tue, 05 Jan 2016 19:10:57 GMT
    Keep-Alive → timeout=15, max=100
    Last-Modified → Tue, 05 Jan 2016 19:10:57 GMT
    Status → 200 OK
    access-control-allow-methods → DELETE, GET, POST, PUT, OPTIONS, HEAD
    access-control-allow-origin → *
    access-control-expose-headers → ETag, Content-Location, Location, X-Request-Id, WWW-Authenticate, Date
    access-control-max-age → 0
    cache-control → no-cache
    etag → W/"4736153"
    server-response-time → 303.05764800000003
    strict-transport-security → max-age=631152000
    vary → Origin,User-Agent,Accept-Encoding
    x-content-type-options → nosniff
    x-frame-options → SAMEORIGIN
    x-request-id → c869c30e-d2e6-4315-9b6c-1966cde67ee4
    x-runtime → 0.303026
    x-xss-protection → 1; mode=block
</pre>

[`reference`]: http://hl7.org/fhir/DSTU2/search.html#reference
[`token`]: http://hl7.org/fhir/DSTU2/search.html#token
[category]: http://hl7.org/fhir/DSTU2/valueset-condition-category.html
[clinical status]: http://hl7.org/fhir/DSTU2/valueset-condition-clinical.html
[condition-category]: http://hl7.org/fhir/condition-category
[argonaut extension-codes]: http://argonaut.hl7.org/extension-codes
[FHIR<sup>®</sup> Update]: http://hl7.org/fhir/DSTU2/http.html#update
