---
title: AllergyIntolerance | R4 API
---

# AllergyIntolerance

* TOC
{:toc}

## Overview

The AllergyIntolerance resource provides the clinical assessment of a patient's allergy or intolerance when exposed to a specific substance or class of substance including information about the adverse reaction.  Substances include, but are not limited to, medications, foods, environment (such as plants and animals), and insect bites.  The Allergy/Intolerance list exists as a patient safety tool for clinical decision support when ordering medications and nutrition or guiding clinical treatments.  This resource does NOT include adverse reactions or adverse events which are expected for the circumstance such as an over-dose or drug-drug interaction or an error/failure in the clinical process.  References to implicitRules and modifierExtensions are NOT supported and will fail a Create or Update request.

No Known Allergies (NKA) or No Known Medication Allergies (NKMA) will be conveyed with predefined codes while Not Asked is conveyed via the absence of information (empty query response).  Consumers can supply the negation codes (No known allergy (situation))(716186003) or No Known Medication Allergies (409137002) as long as there are no other active allergies on the patient’s profile.  If there are other active allergies on the patient's profile and the consumer tries to add one of the codes above, the service will throw an exception.

If NKA and/or NKMA exist on the patient's allergy profile and a new allergy is added, the NKA and NKMA will be canceled.

If the consumer is sending in what is deemed to be a duplicate (codified or free text), the service will update the existing allergy or reaction rather than adding a duplicate allergy or reaction.

Assuming a patient safety or decision support use case, a consumer should avoid querying by status since it is not a required field and can ignore any entered-in-error allergies or intolerances.

The following fields are returned if valued:

* [Allergy Id](https://hl7.org/fhir/R4/resource-definitions.html#Resource.id)
* [Clinical Status](https://hl7.org/fhir/R4/allergyintolerance-definitions.html#AllergyIntolerance.clinicalStatus)
* [Verification Status](https://hl7.org/fhir/R4/allergyintolerance-definitions.html#AllergyIntolerance.verificationStatus)
* [Allergy Type](https://hl7.org/fhir/R4/allergyintolerance-definitions.html#AllergyIntolerance.type)
* [Category (medication, food, environment)](https://hl7.org/fhir/R4/allergyintolerance-definitions.html#AllergyIntolerance.category)
* [Criticality/potential harm](https://hl7.org/fhir/R4/allergyintolerance-definitions.html#AllergyIntolerance.criticality)
* [Allergy Code](https://hl7.org/fhir/R4/allergyintolerance-definitions.html#AllergyIntolerance.code)
* [Patient with allergy/intolerance](https://hl7.org/fhir/R4/allergyintolerance-definitions.html#AllergyIntolerance.patient)
* [Encounter](https://hl7.org/fhir/R4/allergyintolerance-definitions.html#AllergyIntolerance.encounter)
* [Date of allergy onset](https://hl7.org/fhir/R4/allergyintolerance-definitions.html#AllergyIntolerance.onset)
* [Date/Time recorded](https://hl7.org/fhir/R4/allergyintolerance-definitions.html#AllergyIntolerance.recordedDate)
* [Who recorded](https://hl7.org/fhir/R4/allergyintolerance-definitions.html#AllergyIntolerance.recorder)
* [Who reported](https://hl7.org/fhir/R4/allergyintolerance-definitions.html#AllergyIntolerance.asserter)
* [Comment](https://hl7.org/fhir/R4/allergyintolerance-definitions.html#AllergyIntolerance.note)
* [Adverse reaction (clinical symptoms/manifestation)](https://hl7.org/fhir/R4/allergyintolerance-definitions.html#AllergyIntolerance.reaction.manifestation)
* [Adverse reaction (severity)](https://hl7.org/fhir/R4/allergyintolerance-definitions.html#AllergyIntolerance.reaction.severity)

## Terminology Bindings

<%= terminology_table(:allergy_intolerance, :r4) %>

## Search

Search for AllergyIntolerances that meet supplied query parameters:

    GET /AllergyIntolerance?:parameters

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Parameters

 Name               | Required?                                                            | Type          | Description
--------------------|----------------------------------------------------------------------|---------------|-----------------------------------------------------------------------
 `_id`              | This or `patient`, if populated all other parameters are not allowed | [`token`]     | The logical resource id associated with the resource. Example: `12345`
 `patient`          | This or `_id`                                                        | [`reference`] | Who the sensitivity is for. Example: `12345`
 `clinical-status`  | No                                                                   | [`token`]     | The clinical status of the allergy or intolerance. Example: `active`, `inactive`, `resolved`
 `_revinclude`      | No                                                                   | [`token`]     | Provenance resource entries to be returned as part of the bundle. Example:_revinclude=Provenance:target

Notes:

The `_revinclude` parameter may be provided once with the value `Provenance:target`. Example: `_revinclude=Provenance:target`

The `_revinclude` parameter may be provided with the `_id/patient` parameter. Example: `_id=74771957,S-75479691&_revinclude=Provenance:target`

When `_revinclude` is provided in a request to the closed endpoint, the OAuth2 token must include the `user/Provenance.read` scope. Currently `patient/Provenance.read` is not supported and hence `_revinclude` cannot be utilised for patient persona.

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/AllergyIntolerance?patient=12742399

#### Response

<%= headers status: 200 %>
<%= json(:r4_allergy_intolerance_bundle) %>
<%= disclaimer %>

### Example with RevInclude

### Authorization Types

<%= authorization_types(provider: true, system: true) %>

#### Request

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/AllergyIntolerance?_id=74771957,S-75479691&_revinclude=Provenance:target
#### Response

<%= headers status: 200 %>
<%= json(:r4_allergy_intolerance_revinclude_bundle) %>
<%= disclaimer %>

#### Patient Authorization Request

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/AllergyIntolerance?patient=12742399

#### Response

<%= headers status: 200 %>
<%= json(:r4_allergy_intolerance_patient_bundle) %>
<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual AllergyIntolerance by its id:

    GET /AllergyIntolerance/:id

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/AllergyIntolerance/12760025

#### Response

<%= headers status: 200 %>
<%= json(:r4_allergy_intolerance_entry ) %>
<%= disclaimer %>

#### Patient Authorization Request For Confirmed Status

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/AllergyIntolerance/12760025

#### Response

<%= headers status: 200 %>
<%= json(:r4_allergy_intolerance_patient_entry ) %>
<%= disclaimer %>

#### Patient Authorization Request For Entered in Error Status

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/AllergyIntolerance/12760051

#### Response

<%= headers status: 200 %>
<%= json(:r4_allergy_intolerance_entered_in_error_status ) %>
<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Create

Create new allergy.

    POST /AllergyIntolerance

_Implementation Notes_

* Only the body fields mentioned below are supported. Unsupported fields will be ignored.

### Authorization Types

<%= authorization_types(provider: true, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', 'Content-Type': 'application/fhir+json'} %>

### Body Fields

<%= definition_table(:allergy_intolerance, :create, :r4) %>

### Example

#### Request

    POST https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/AllergyIntolerance

#### Body

<%= json(:r4_allergy_intolerance_create) %>

#### Response

<%= headers status: 201 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: text/html
Date: Wed, 14 Aug 2019 17:23:14 GMT
Etag: W/"6767735"
Location: https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/AllergyIntolerance/6767735
Last-Modified: Wed, 14 Aug 2019 17:23:14 GMT
Vary: Origin
X-Request-Id: 11111111111111111111111111111111
</pre>

The `ETag` response header indicates the current `If-Match` version to use on a subsequent update.

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

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', 'Content-Type': 'application/fhir+json', 'If-Match': 'W/"&lt;Current version of the AllergyIntolerance resource>"'} %>

### Body fields

Notes:

* The following fields cannot be modified: `code`, `patient`, `reaction.manifestation`, or an existing `note`.

<%= definition_table(:allergy_intolerance, :update, :r4) %>

### Example

#### Request

    PUT https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/AllergyIntolerance/12760025

#### Body

<%= json(:r4_allergy_intolerance_update) %>

#### Response

<%= headers status: 200 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: application/json
Date: Thu, 05 Dec 2019 17:21:08 GMT
Etag: W/"8167765"
Last-Modified: Thu, 05 Dec 2019 17:21:08 GMT
X-Request-Id: a53f6469ff29031e9197b40f526e9ca6
Vary: Origin
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`reference`]: https://hl7.org/fhir/r4/search.html#reference
[`token`]: https://hl7.org/fhir/R4/search.html#token
[errors]: ../../#client-errors
[OperationOutcomes]: https://hl7.org/fhir/R4/operationoutcome.html
[FHIR<sup>®</sup> Update]: https://hl7.org/fhir/R4/http.html#update
