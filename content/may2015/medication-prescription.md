---
title: MedicationPrescription | FHIR MAY 2015 BALLOT API
---

# MedicationPrescription

* TOC
{:toc}

## Search

Search for active or inactive MedicationPrescriptions that meet supplied query parameters:

    GET /MedicationPrescription?:parameters

### Parameters

 Name    | Required? | Type                                                           | Description
---------|-----------|----------------------------------------------------------------|------------------------------------------------------------------
`patient`| Y |[`reference`](http://hl7.org/fhir/2015May/search.html#reference)| The identity of a patient to list dispenses for. Example: `12345`
`status`*| Y |[`token`](http://hl7.org/fhir/2015May/search.html#token)| The status of the med, may be a list separated by commas. Example: `active,draft`
[`_count`](http://hl7.org/fhir/2015May/search.html#count)| N |[`number`](http://hl7.org/fhir/2015May/search.html#number)| The number of items to include in a page. Currently ignored if querying for active or draft statuses. Example: `50`
`scheduledtiming-bounds-end`| N |[`date`](http://hl7.org/fhir/2015May/search.html#date)| The [stop time](http://hl7.org/fhir/2015May/medicationprescription-definitions.html#MedicationPrescription.dosageInstruction.scheduled_x_) of the order. Must be prefixed by <= (currently only support querying for orders completed prior to a certain time). Not accepted when querying active or draft orders. Example: `<=2014-05-19T20:54:02.000Z`

\* Note: The current implementation requires separating the query for active medication orders from inactive. This is a technical limitation that we hope to remove in the future.

* Active statuses: `active`, `draft`
* Inactive statuses: `completed`, `on-hold`, `stopped`

Also, the `superceded` and `entered-in-error` statuses are not currently supported (the server will return an error if requested).

### Active Response

<%= headers 200 %>
<%= json(:may2015_medication_prescription_active_bundle) %>

### Inactive Response
<%= headers 200 %>
<%= json(:may2015_medication_prescription_inactive_bundle) %>