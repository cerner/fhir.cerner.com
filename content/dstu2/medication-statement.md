---
title: MedicationStatement | DSTU 2 API
---

# MedicationStatement

* TOC
{:toc}

## Terminology Bindings

<%= terminology_table(:medication_statement, :dstu2) %>

### Contained Medication Bindings

<%= terminology_table(:contained_medication, :dstu2) %>

### Contained Practitioner Bindings

<%= terminology_table(:medication_statement_contained_practitioner, :dstu2) %>

## Search

Search for MedicationStatements that meet supplied query parameters:

    GET /MedicationStatement?:parameters

_Notes_

* [MedicationStatement.informationSource] may be a reference to a contained Practitioner or RelatedPerson.
* [MedicationStatement.medication] may be a reference to a contained Medication.

### Parameters

 Name            | Required? | Type          | Description
-----------------|-----------|-------------- |------------------------------------------------------------------------------------------------------------------------------------------------------------
 `patient`       | Y         | [`reference`] | The identifier of a patient to list statements for. Example: `12345`
 `status`        | N         | [`token`]     | The status of the medication statement, may be a list separated by commas.  Example: `active,completed`
 `effectivedate` | N         | [`date`]      | The date-time which should fall within the period the patient was taking (or not taking) the medication. Must be prefixed by 'ge'  Example: `ge2015-01-01`
 [`_count`]      | N         | [`number`]    | The maximum number of results to return. Defaults to `50`.

### Response

<%= headers 200 %>
<%= json(:dstu2_medication_statement_bundle) %>

## Create

Create a new MedicationStatement.

    POST /MedicationStatement

_Notes_

* [MedicationStatement.status] must be set to `active`.
* [MedicationStatement.wasNotTaken] set to `true` is not supported.
* If [MedicationStatement.medication] is a reference, it must refer to a contained Medication with the code field populated and at most one product.ingredient.

### Headers

To successfully POST a MedicationStatement, the following headers must be provided. MedicationStatement creation is supported from the closed endpoint only.

    Content-Type: application/json+fhir
    Authorization: <OAuth2 Bearer Token>

### Body Fields

<%= definition_table(:medication_statement, :create, :dstu2) %>

#### Contained Medication Body Fields

<%= definition_table(:contained_medication, :create, :dstu2) %>

### Example Body

<%= json(:dstu2_medication_statement_create) %>

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
    location → https://fhir-ehr.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/MedicationStatement/20465903
    server-response-time → 1260.984596
    strict-transport-security → max-age=631152000
    vary → Origin,User-Agent,Accept-Encoding
    x-content-type-options → nosniff
    x-frame-options → SAMEORIGIN
    x-request-id → 682c633c-b20f-4f6f-8fae-c58b3aeffe04
    x-runtime → 1.260940
    x-xss-protection → 1; mode=block
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

## Update

Update a MedicationStatement.

    PUT /MedicationStatement

_Notes_

* The only supported change is to update the [MedicationStatement.status] to `completed`.

### Headers

To successfully PUT a MedicationStatement, the following headers must be provided. MedicationStatement updates are supported from the closed endpoint only.

    Content-Type: application/json+fhir
    Authorization: <OAuth2 Bearer Token>
    If-Match: W/"<Current version of the MedicationStatement resource>"

### Body fields

<%= definition_table(:medication_statement, :update, :dstu2) %>

### Example Body

<%= json(:dstu2_medication_statement_update) %>

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

[MedicationStatement.informationSource]: http://hl7.org/fhir/DSTU2/medicationstatement-definitions.html#MedicationStatement.informationSource
[MedicationStatement.medication]: http://hl7.org/fhir/DSTU2/medicationstatement-definitions.html#MedicationStatement.medication_x_
[`reference`]: http://hl7.org/fhir/DSTU2/search.html#reference
[`token`]: http://hl7.org/fhir/DSTU2/search.html#token
[`date`]: http://hl7.org/fhir/DSTU2/search.html#date
[`_count`]: http://hl7.org/fhir/DSTU2/search.html#count
[`number`]: http://hl7.org/fhir/DSTU2/search.html#number
[MedicationStatement.status]: http://hl7.org/fhir/DSTU2/medicationstatement-definitions.html#MedicationStatement.status
[MedicationStatement.wasNotTaken]: http://hl7.org/fhir/DSTU2/medicationstatement-definitions.html#MedicationStatement.wasNotTaken
