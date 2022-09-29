---
title: AllergyIntolerance | DSTU 2 API
---

# AllergyIntolerance

* TOC
{:toc}

## Overview

The AllergyIntolerance resource provides the clinical assessment of a patient's allergy or intolerance when exposed to a specific substance or class of substance including information about the adverse reaction.  Substances include, but are not limited to, medications, foods, environment (such as plants and animals), and insect bites.  The Allergy/Intolerance list exists as a patient safety tool for clinical decision support when ordering medications and nutrition or guiding clinical treatments.  This resource does NOT include adverse reactions or adverse events which are expected for the circumstance such as an over-dose or drug-drug interaction or an error/failure in the clinical process.  References to implicitRules and modifierExtensions are NOT supported and will fail a Create or Update request.

No Known Allergies (NKA) or No Known Medication Allergies (NKMA) will be conveyed with predefined codes while Not Asked is conveyed via the absence of information (empty query response).  Consumers can supply the negation codes No Known Allergies (160244002) or No Known Medication Allergies (409137002) as long as there are no other active allergies on the patient's profile.  If there are other active allergies on the patient's profile and the consumer tries to add one of the codes above, the service will throw an exception.

If NKA and/or NKMA exist on the patient's allergy profile and a new allergy is added, the NKA and NKMA will be canceled.

If the consumer is sending in what is deemed to be a duplicate (codified or free text), the service will update the existing allergy or reaction rather than adding a duplicate allergy or reaction.

Assuming a patient safety or decision support use case, a consumer should avoid querying by status since it is not a required field and can ignore any entered-in-error allergies or intolerances.

The following fields are returned if valued:

* [Allergy id](http://hl7.org/fhir/DSTU2/resource-definitions.html#Resource.id){:target="_blank"}
* [Allergy substance](http://hl7.org/fhir/DSTU2/allergyintolerance-definitions.html#AllergyIntolerance.substance){:target="_blank"}
* [Status](http://hl7.org/fhir/DSTU2/allergyintolerance-definitions.html#AllergyIntolerance.status){:target="_blank"}
* [Patient with allergy/intolerance](http://hl7.org/fhir/DSTU2/allergyintolerance-definitions.html#AllergyIntolerance.patient){:target="_blank"}
* [Date of allergy onset](http://hl7.org/fhir/DSTU2/allergyintolerance-definitions.html#AllergyIntolerance.onset){:target="_blank"}
* [Date/Time recorded](http://hl7.org/fhir/DSTU2/allergyintolerance-definitions.html#AllergyIntolerance.recordedDate){:target="_blank"}
* [Who recorded](http://hl7.org/fhir/DSTU2/allergyintolerance-definitions.html#AllergyIntolerance.recorder){:target="_blank"}
* [Who reported](http://hl7.org/fhir/DSTU2/allergyintolerance-definitions.html#AllergyIntolerance.reporter){:target="_blank"}
* [Criticality/potential harm](http://hl7.org/fhir/DSTU2/allergyintolerance-definitions.html#AllergyIntolerance.criticality){:target="_blank"}
* [Category (medication, food, environment)](http://hl7.org/fhir/DSTU2/allergyintolerance-definitions.html#AllergyIntolerance.category){:target="_blank"}
* [Adverse reaction (clinical symptoms/manifestation)](http://hl7.org/fhir/DSTU2/allergyintolerance-definitions.html#AllergyIntolerance.reaction){:target="_blank"}
* [Comment](http://hl7.org/fhir/DSTU2/allergyintolerance-definitions.html#AllergyIntolerance.reaction.note){:target="_blank"}


## Terminology Bindings

<%= terminology_table(:allergy_intolerance, :dstu2) %>

## Search

Search for AllergyIntolerances that meet supplied query parameters:

    GET /AllergyIntolerance?:parameters

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Parameters

 Name      | Required?                                                            | Type          | Description
-----------|----------------------------------------------------------------------|---------------|-----------------------------------------------------------------------
 `_id`     | This or `patient`, if populated all other parameters are not allowed | [`token`]     | The logical resource id associated with the resource. Example: `12345`
 `patient` | This or `_id`                                                        | [`reference`] | Who the sensitivity is for. Example: `12345`
 `status`  | N                                                                    | [`token`]     | [Certainty of the allergy or intolerance]. Example: `confirmed`

### Headers

 <%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/AllergyIntolerance?patient=12742399

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_allergy_intolerance_bundle) %>
<%= disclaimer %>

### Search by status Example

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/AllergyIntolerance?patient=12742399&status=active

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_allergy_intolerance_bundle_by_status) %>
<%= disclaimer %>

### Search by id Example

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/AllergyIntolerance?_id=12760025

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_allergy_intolerance_bundle_by_id) %>
<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual AllergyIntolerance by its id:

    GET /AllergyIntolerance/:id

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/AllergyIntolerance/12760025

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_allergy_intolerance_resource ) %>
<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Create

Create new allergies.

    POST /AllergyIntolerance

### Authorization Types

<%= authorization_types(provider: true, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', Accept: 'application/json+fhir', 'Content-Type': 'application/json+fhir'} %>

### Body fields

<%= definition_table(:allergy_intolerance, :create, :dstu2) %>

### Example

#### Request

    POST https://fhir-ehr-code.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/AllergyIntolerance

#### Body

<%= json(:dstu2_allergy_intolerance_create) %>

#### Response

<%= headers status: 201 %>
<pre class="terminal">
Date: Tue, 28 Feb 2017 21:08:20 GMT
Cache-Control: no-cache
Vary: Origin,User-Agent,Accept-Encoding
Strict-Transport-Security: max-age=631152000
X-Xss-Protection: 1; mode=block
Pragma: no-cache
X-Request-Id: b0fee21c20d2a240d9b4b86cfbcbd87c
Etag: W/"6167733"
X-Frame-Options: SAMEORIGIN
X-Content-Type-Options: nosniff
Expires: Mon, 01 Jan 1990 00:00:00 GMT
Last-Modified: Tue, 28 Feb 2017 21:03:00 GMT
Location: https://fhir-ehr-code.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/AllergyIntolerance/6167733
Content-Length: 0
Content-Type: application/json
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.
<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Update

Update an existing allergy.

    PUT /AllergyIntolerance/:id

_Implementation Notes_

* Any field which is missing will be interpreted as nulling out or removing data from the resource. See [FHIR<sup>®</sup> Update] for additional details about update operations.

### Authorization Types

<%= authorization_types(provider: true, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', Accept: 'application/json+fhir',
                   'Content-Type': 'application/json+fhir', 'If-Match': 'W/"&lt;Current version of the AllergyIntolerance resource>"'} %>

### Body fields

Notes:

* `note` cannot be added if `note` already exists. An existing `note` field cannot be modified.

<%= definition_table(:allergy_intolerance, :update, :dstu2) %>

### Example

#### Request

    PUT https://fhir-ehr-code.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/AllergyIntolerance/12760025

#### Body

<%= json(:dstu2_allergy_intolerance_update) %>

#### Response

<%= headers status: 200 %>
<pre class="terminal">
Date: Tue, 28 Feb 2017 21:19:18 GMT
Cache-Control: no-cache
Vary: Origin,User-Agent,Accept-Encoding
Strict-Transport-Security: max-age=631152000
X-Xss-Protection: 1; mode=block
Pragma: no-cache
X-Request-Id: d30766e5445f973b32efa9ec516cb5db
Etag: W/"6167741"
X-Frame-Options: SAMEORIGIN
X-Content-Type-Options: nosniff
Expires: Mon, 01 Jan 1990 00:00:00 GMT
Last-Modified: Tue, 28 Feb 2017 21:03:00 GMT
Content-Length: 0
Content-Type: application/json
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.
<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`reference`]: http://hl7.org/fhir/DSTU2/search.html#reference
[`token`]: http://hl7.org/fhir/DSTU2/search.html#token
[Certainty of the allergy or intolerance]: http://hl7.org/fhir/DSTU2/valueset-allergy-intolerance-status.html
[FHIR<sup>®</sup> Update]: http://hl7.org/fhir/DSTU2/http.html#update
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
