---
title: Procedure | DSTU 2 API
---

# Procedure

* TOC
{:toc}

## Terminology Bindings

<%= terminology_table(:procedure, :dstu2) %>

## Search

Search for Procedures that meet supplied query parameters:

    GET /Procedure?:parameters

_Implementation Notes_

* The [Procedure.notPerformed] modifier element is not supported and will not be returned.

### Parameters

 Name         | Required?                             | Type          | Description
--------------|---------------------------------------|---------------|------------------------------------------------------------------------------------
 `_id`        | This, or one of `patient` or `subject`| [`token`]     | The logical resource id associated with the resource. Example: `_id=24110557`
 `patient`    | This, or one of `_id` or `subject`    | [`reference`] | The patient subject of the Procedure. Example: `patient=1316024`
 `subject`    | This, or one of `_id` or `patient`    | [`reference`] | The subject of the Procedure. Must represent a Patient resource. May use the `:Patient` modifier. Example: `subject=Patient/1316020` or `subject:Patient=1316020`
 `date`       | No                                    | [`date`]      | The date/time when the Procedure was performed. Must use the `ge` and/or `le` prefixes. Example: `date=le2017-02-01T10:30:00Z`

Notes:

  - The `_id` parameter may not be provided at the same time as the `patient`, `subject`, or `date` parameters.

  - The `date` parameter must have a time, may be provided up to two times, and must use the `ge` or `le` prefixes. When provided twice, the lower value must have the `ge` prefix and the higher value must have the `le` prefix.

### Response

<%= headers 200 %>
<%= json(:dstu2_procedure_bundle) %>

## Retrieve by id

List an individual Procedure by its id:

    GET /Procedure/:id

_Implementation Notes_

* The [Procedure.notPerformed] modifier element is not supported and will not be returned.

### Response

<%= headers 200 %>
<%= json(:dstu2_procedure_entry) %>

[`date`]: http://hl7.org/fhir/DSTU2/search.html#date
[`reference`]: http://hl7.org/fhir/DSTU2/search.html#reference
[`token`]: http://hl7.org/fhir/DSTU2/search.html#token
[Procedure.notPerformed]: http://hl7.org/fhir/DSTU2/procedure-definitions.html#Procedure.notPerformed
