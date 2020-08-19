---
title: Procedure | DSTU 2 API
---

# Procedure

* TOC
{:toc}

## Overview

The Procedure resource returns current and historical procedures performed on a patient. A procedure can be invasive or non-invasive treatments/procedures and observations. For example, a patient who has breast cancer could have significant & pertinent procedures that include mammograms, BRCA testing, breast examination documentation & lumpectomy. It is up to the user what procedures are clinically significant to document. Surgical and radiology procedures documented in other Cerner solutions will return if manually added by a clinician in the patient's procedure history.

The following fields are returned if valued:

* [Procedure id](http://hl7.org/fhir/dstu2/resource-definitions.html#Resource.id){:target="_blank"}
* [Patient](http://hl7.org/fhir/DSTU2/procedure-definitions.html#Procedure.subject){:target="_blank"}
* [Status (completed, entered-in-error)](http://hl7.org/fhir/DSTU2/procedure-definitions.html#Procedure.status){:target="_blank"}
* [Procedure](http://hl7.org/fhir/DSTU2/procedure-definitions.html#Procedure.code){:target="_blank"}
* [Reason performed](http://hl7.org/fhir/DSTU2/procedure-definitions.html#Procedure.reason_x_){:target="_blank"}
* [Who performed](http://hl7.org/fhir/DSTU2/procedure-definitions.html#Procedure.performer){:target="_blank"}
* [Date performed](http://hl7.org/fhir/DSTU2/procedure-definitions.html#Procedure.performed_x_){:target="_blank"}
* [Patient encounter](http://hl7.org/fhir/DSTU2/procedure-definitions.html#Procedure.encounter){:target="_blank"}
* [Notes](http://hl7.org/fhir/DSTU2/procedure-definitions.html#Procedure.notes){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:procedure, :dstu2) %>

## Search

Search for Procedures that meet supplied query parameters:

    GET /Procedure?:parameters

_Implementation Notes_

* The [Procedure.notPerformed] modifier element is not supported and will not be returned.

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Parameters

 Name         | Required?                             | Type          | Description
--------------|---------------------------------------|---------------|------------------------------------------------------------------------------------
 `_id`        | This, or one of `patient` or `subject`| [`token`]     | The logical resource id associated with the resource. Example: `_id=7891`
 `patient`    | This, or one of `_id` or `subject`    | [`reference`] | The patient subject of the Procedure. Example: `patient=12345`
 `subject`    | This, or one of `_id` or `patient`    | [`reference`] | The subject of the Procedure. Must represent a Patient resource. May use the `:Patient` modifier. Example: `subject=Patient/12345` or `subject:Patient=12345`
 `date`       | N                                     | [`date`]      | The date/time when the Procedure was performed. Must use the `ge` and/or `le` prefixes. Example: `date=le2017-02-01T10:30:00Z`

Notes:

  - The `_id` parameter may not be provided at the same time as the `patient`, `subject`, or `date` parameters.

  - The `date` parameter must have a time, may be provided up to two times, and must use the `ge` or `le` prefixes. When provided twice, the lower value must have the `ge` prefix and the higher value must have the `le` prefix.

### Headers

 <%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Procedure?patient=12724066

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_procedure_bundle) %>
<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual Procedure by its id:

    GET /Procedure/:id

_Implementation Notes_

* The [Procedure.notPerformed] modifier element is not supported and will not be returned.

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Procedure/2572382193

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_procedure_entry) %>
<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`date`]: http://hl7.org/fhir/DSTU2/search.html#date
[`reference`]: http://hl7.org/fhir/DSTU2/search.html#reference
[`token`]: http://hl7.org/fhir/DSTU2/search.html#token
[Procedure.notPerformed]: http://hl7.org/fhir/DSTU2/procedure-definitions.html#Procedure.notPerformed
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
