---
title: MedicationOrder | FHIR DSTU 2 API
---

# MedicationOrder

* TOC
{:toc}

## Search

Search for active or inactive MedicationOrders that meet supplied query parameters:

    GET /MedicationOrder?:parameters

### Parameters

 Name    | Required? | Type                                                           | Description
---------|-----------|----------------------------------------------------------------|------------------------------------------------------------------
`patient`| Y |[`reference`](http://hl7.org/fhir/DSTU2/search.html#reference)| The identity of a patient to list dispenses for. Example: `12345`
`status`*| Y |[`token`](http://hl7.org/fhir/DSTU2/search.html#token)| The status of the med, may be a list separated by commas. Example: `active,draft`
`timing-boundsperiod-end`| N |[`date`](http://hl7.org/fhir/DSTU2/search.html#date)| The [stop time](http://hl7.org/fhir/DSTU2/MedicationOrder-definitions.html#MedicationOrder.dosageInstruction.timing) of the order. Must be prefixed by `le` (currently only support querying for orders completed prior to a certain time). Not accepted when querying active or draft orders. Example: `le2014-05-19T20:54:02.000Z`
[`_count`](http://hl7.org/fhir/DSTU2/search.html#count)| N |[`number`](http://hl7.org/fhir/DSTU2/search.html#number)| The number of items to include in a page. Currently ignored if querying for active or draft statuses. Example: `50`

\* Note: The current implementation requires separating the query for active medication orders from inactive. This is a technical limitation that we hope to remove in the future.

* Active statuses: `active`, `draft`
* Inactive statuses: `completed`, `on-hold`, `stopped`

Also, the `entered-in-error` status is not currently supported (the server will return an error if requested).

### Active Response

<%= headers 200 %>
<%= json(:dstu2_medication_order_active_bundle) %>

### Inactive Response
<%= headers 200 %>
<%= json(:dstu2_medication_order_inactive_bundle) %>