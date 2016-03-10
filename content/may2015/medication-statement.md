---
title: MedicationStatement | FHIR MAY 2015 BALLOT API
---

# MedicationStatement

* TOC
{:toc}

## Terminology Bindings

<%= terminology_table(:medication_statement, :may2015) %>

## Search

Search for MedicationStatements that meet supplied query parameters:

    GET /MedicationStatement?:parameters

### Parameters

 Name                                                     | Required? | Type                                                             | Description
----------------------------------------------------------|-----------|------------------------------------------------------------------|-----------------------------------------------------------------------------------
`patient`                                                 | Y         | [`reference`](http://hl7.org/fhir/2015May/search.html#reference) | The identifier of a patient to list statements for. Example: `12345`
`status`                                                  | N         | [`token`](http://hl7.org/fhir/2015May/search.html#token)         | The status of the medication statement, may be a list separated by commas.  Example: `in-progress,completed`
`effectivedate`                                           | N         | [`date`](http://hl7.org/fhir/2015May/search.html#date)           | The date-time which should fall within the period the patient was taking (or not taking) the medication. Must be prefixed by '>='  Example: `>=2015-01-01`
[`_count`](http://hl7.org/fhir/2015May/search.html#count) | N         | [`number`](http://hl7.org/fhir/2015May/search.html#number)       | The maximum number of results to return. Defaults to `50`.

### Response

<%= headers 200 %>
<%= json(:may2015_medication_statement_bundle) %>

## Create

Create new MedicationStatement. The medication field must refer to a contained Medication with the code field populated.
Only in-progress MedicationStatements can be created.

    POST /MedicationStatement

### Headers

To successfully POST a MedicationStatement, the following headers must be provided. MedicationStatement creation is supported from the closed endpoint only.

    Content-Type: application/json+fhir
    Authorization: <OAuth2 Bearer Token>

### Body fields

<%= definition_table(:medication_statement, :create, :may2015) %>

### Example Body

<%= json(:may2015_medication_statement_create) %>

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
    etag → W/"0"
    location → https://fhir.sandboxcernerpowerchart.com/may2015/d075cf8b-3261-481d-97e5-ba6c48d3b41f/MedicationStatement/20465903
    server-response-time → 1260.984596
    strict-transport-security → max-age=631152000
    vary → Origin,User-Agent,Accept-Encoding
    x-content-type-options → nosniff
    x-frame-options → SAMEORIGIN
    x-request-id → 682c633c-b20f-4f6f-8fae-c58b3aeffe04
    x-runtime → 1.260940
    x-xss-protection → 1; mode=block
</pre>

The `etag` response header indicates the current `If-Match` version to use on subsequent updates.

## Update

Update the status of a MedicationStatement, only completed status is supported.

    PUT /MedicationStatement

### Headers

To successfully PUT a MedicationStatement, the following headers must be provided. MedicationStatement updates are supported from the closed endpoint only.

    Content-Type: application/json+fhir
    Authorization: <OAuth2 Bearer Token>
    If-Match: W/"<Current version of the MedicationStatement resource>"

### Body fields

<%= definition_table(:medication_statement, :update, :may2015) %>

### Example Body

<%= json(:may2015_medication_statement_update) %>

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
    etag → W/"1"
    server-response-time → 653.7616069999999
    strict-transport-security → max-age=631152000
    vary → Origin,User-Agent,Accept-Encoding
    x-content-type-options → nosniff
    x-frame-options → SAMEORIGIN
    x-request-id → 9dba8326-899a-406f-a125-3fc3d6605dad
    x-runtime → 0.653722
    x-xss-protection → 1; mode=block
</pre>