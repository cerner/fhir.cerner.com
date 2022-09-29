---
title: AllergyIntolerance | Soarian DSTU 2 API
---
 
# AllergyIntolerance  

* TOC
{:toc}

## Overview

For the AllergyIntolerance resource query, the API returns the current state of the patient's allergy list as charted in Soarian.   The allergy list represents a clinical assessment of a patient's allergy or intolerance when exposed to a specific substance or class of substance.  

Soarian's list supports medication, food, environmental, and other allergen categories.  Allergy and Intolerance are not differentiated.  A charted assertion of no allergy is different than an empty list; the response will include any charted assertions such as NKA (no known allergies), NKDA (no known drug allergy), NKFA (no known food allergy), No Latex Allergy, and/or No IV contrast Allergy.  The list represents a consolidated collection of allergens, reactions, and severities that providers have charted in the Soarian Allergy List.  Only allergies in the active state are returned.

## Terminology Bindings

Medication allergens are coded in RxNorm. Negations are indicated by SNOMED codes. All other allergens (e.g., environmental substances) are returned as text only.

<%= terminology_table(:soarian_allergy_intolerance, :dstu2) %> 

## Custom Extensions

The [bundle extension] can be returned, see possible codes in the [errors section] below.

## Search 

	GET /AllergyIntolerance?:parameters

_Implementation Notes_

* The API returns the most current AllergyIntolerance list.
* The API only returns allergies in an `active` status. It will not return allergies marked as `entered-in-error`.
* The Narrative includes additional information pertaining to the AllergyIntolerance and should be shown to the user to ensure completeness of clinical content and context.
* At this time, non-medication allergies are not coded and will be returned as freetext.

### Parameters

 Name      | Required? | Type          | Description
-----------|-----------|---------------|------------------------------------------------------------------------
 patientId | Y         | [`reference`] | The patient identifier provided in a pre-requisite authorization step.

### Headers

<%= headers %>

### Example

#### Request

	GET https://fhir-myrecord.sandboxcerner.com/dstu2/123abc/AllergyIntolerance?patientId=52930295-B52D-4685-B922-DC5F181CF786
	
#### Response
 
<%= headers status: 200 %>
<%= json(:SOARIAN_ALLERGY_INTOLERANCE_BUNDLE) %>
  
### Errors and Informational messages

The common [errors and informational messages] can be returned.

These additional informational messages may be returned within the [bundle extension]:
 
 Code    | Message
---------|-------------------------------------------------------------------------------------------------------------------
 papi001 | This is the most current, known allergy list and may not reflect the state of allergies known at a previous date.
 papi002 | No allergy information is available.

[bundle extension]: ../../#bundle-message-extension
[errors section]: #errors-and-informational-messages
[`reference`]: http://hl7.org/fhir/dstu2/search.html#reference
[errors and informational messages]: ../../common-errors
