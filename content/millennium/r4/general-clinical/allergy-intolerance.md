---
title: AllergyIntolerance | R4 API
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

* [Allergy id](http://hl7.org/fhir/R4/resource-definitions.html#Resource.id){:target="_blank"}
* [Allergy code](http://hl7.org/fhir/R4/allergyintolerance-definitions.html#AllergyIntolerance.code){:target="_blank"}
* [clinicalStatus](http://hl7.org/fhir/R4/allergyintolerance-definitions.html#AllergyIntolerance.clinicalStatus){:target="_blank"}
* [verificationStatus](http://hl7.org/fhir/R4/allergyintolerance-definitions.html#AllergyIntolerance.verificationStatus){:target="_blank"}
* [Patient with allergy/intolerance](http://hl7.org/fhir/R4/allergyintolerance-definitions.html#AllergyIntolerance.patient){:target="_blank"}
* [Date of allergy onset](http://hl7.org/fhir/R4/allergyintolerance-definitions.html#AllergyIntolerance.onset){:target="_blank"}
* [Date/Time recorded](http://hl7.org/fhir/R4/allergyintolerance-definitions.html#AllergyIntolerance.recordedDate){:target="_blank"}
* [Who recorded](http://hl7.org/fhir/R4/allergyintolerance-definitions.html#AllergyIntolerance.recorder){:target="_blank"}
* [Who reported](http://hl7.org/fhir/R4/allergyintolerance-definitions.html#AllergyIntolerance.asserter){:target="_blank"}
* [Criticality/potential harm](http://hl7.org/fhir/R4/allergyintolerance-definitions.html#AllergyIntolerance.criticality){:target="_blank"}
* [Category (medication, food, environment)](http://hl7.org/fhir/R4/allergyintolerance-definitions.html#AllergyIntolerance.category){:target="_blank"}
* [Adverse reaction (clinical symptoms/manifestation)](http://hl7.org/fhir/R4/allergyintolerance-definitions.html#AllergyIntolerance.reaction){:target="_blank"}
* [Comment](http://hl7.org/fhir/R4/allergyintolerance-definitions.html#AllergyIntolerance.reaction.note){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:allergy_intolerance, :r4) %>

## Search

Search for AllergyIntolerances that meet supplied query parameters:

    GET /AllergyIntolerance?:parameters

### Authorization Types

<%= authorization_types(practitioner: true, patient: false, system: true) %>

### Parameters

 Name               | Required?                                                            | Type          | Description
--------------------|----------------------------------------------------------------------|---------------|-----------------------------------------------------------------------
 `_id`              | This or `patient`, if populated all other parameters are not allowed | [`token`]     | The logical resource id associated with the resource. Example: `12345`
 `patient`          | This or `_id`                                                        | [`reference`] | Who the sensitivity is for. Example: `12345`
 `clinical-status`  | No                                                                   | [`token`]     | The clinical status of the allergy or intolerance. Example: `active`, `inactive`, `resolved`

### Headers

 <%= headers %>

### Example

#### Request

    GET https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/AllergyIntolerance?_id=983733

#### Response

<%= headers status: 200 %>
<%= json(:r4_allergy_intolerance_bundle) %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual AllergyIntolerance by its id:

    GET /AllergyIntolerance/:id

### Authorization Types

<%= authorization_types(practitioner: true, patient: false, system: true) %>

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/AllergyIntolerance/983733

#### Response

<%= headers status: 200 %>
<%= json(:r4_allergy_intolerance_entry ) %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`reference`]: https://hl7.org/fhir/r4/search.html#reference
[`token`]: http://hl7.org/fhir/R4/search.html#token
[errors]: ../../#client-errors
[OperationOutcomes]: https://hl7.org/fhir/R4/operationoutcome.html
