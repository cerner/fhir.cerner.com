---
title: MedicationStatement | Soarian DSTU 2 API
---
 
# MedicationStatement

* TOC
{:toc}

## Overview

For the MedicationStatement resource query, the API returns a consolidated list of medications that the provider has defined for the patient.  The list represents the most current discharge medication reconciliation (DMR) list the provider has charted in Soarian.

As the most current medication list, if a patient was taking a medication prior to admission or was given a medication during his or her stay, but during the discharge process the physician determined the medication no longer applies, it will be marked stopped.  Soarian clients can configure a preference to only show active medications or to also show stopped medications.  

To avoid patient confusion about the definitive active medication list, no in-progress medications during an active visit are returned; these medications are managed by providers.  If there is an active visit without a DMR, an Informational Message indicating that Medication reconciliation has not been performed will be returned.

## Terminology Bindings

### Contained Medication Bindings

<%= terminology_table(:soarian_contained_medication, :dstu2) %>

## Custom Extensions

The [bundle extension] can be returned, see possible codes in the [errors section] below.

  Status Extension:

The URL for this status extension is defined as `http://cerner.hs.fhir.com/StructureDefinition/additional-status`

 ID                         | Value\[x] Type | Description
----------------------------|----------------|---------------------------------------------------------------------------------------------------------------------------------------------
`additional-status`         | [`string`]     | This element further qualifies medications that have a status of “active” by adding the more specific state of the MedicationOrder determined during medication reconciliation. Possible values are `new`, `continued` and `modified`.


## Search 

	GET /MedicationStatement?:parameters

_Implementation Notes_

* The API returns qualifying results dated within the implicit or explicitly defined date query parameter.  For response time, response may be limited to 1000 records.  For any non-null response, the API will provide the informational message including the record dates included in the response.  This informational message may be augmented with further detail if noted below.    
* The Narrative includes additional information pertaining to the MedicationStatement, and should be shown to the user to ensure completeness of clinical content and context.
* [MedicationStatement.medication] is always a reference to a [contained] Medication.  Medications in the system always exist within the context of a MedicationStatement and cannot be be referenced independently.

### Parameters

 Name      | Required? | Type          | Description
-----------|-----------|---------------|------------------------------------------------------------------------
 patientId | Y         | [`reference`] | The patient identifier provided in a pre-requisite authorization step.

### Headers

<%= headers %>    

### Example

#### Request

	GET https://fhir-myrecord.sandboxcerner.com/dstu2/123abc/MedicationStatement?patientId=393EC770-CFC9-4F5A-8B3A-784F2508F245

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_MEDICATION_STATEMENT_BUNDLE) %>

### Errors and Informational messages

The common [errors and informational messages] can be returned.

These additional informational messages may be returned within the [bundle extension]:

 Code    | Message
---------|---------------------------------------------------
 papi023 | No relevant clinical data exists.
 papi024 | Medication reconciliation has not been performed.

[bundle extension]: ../../#bundle-message-extension
[errors section]: #errors-and-informational-messages
[`string`]: http://hl7.org/fhir/dstu2/datatypes.html#string
[`reference`]: http://hl7.org/fhir/DSTU2/search.html#reference
[errors and informational messages]: ../../common-errors
[MedicationStatement.medication]: http://hl7.org/fhir/DSTU2/medicationstatement-definitions.html#MedicationStatement.medication_x_
[contained]: http://hl7.org/fhir/DSTU2/references.html#contained