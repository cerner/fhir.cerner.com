---
title: Patient | FHIR DSTU 2 API
---

# Patient

* TOC
{:toc}

## Search

Search for Patients that meet supplied query parameters:

    GET /Patient?:parameters

### Parameters

Name | Type | Description
-----|------|--------------
`_id`|`string`| The logical resource id associated with the resource.
`birthdate`|`date`| The patient's date of birth.  Example: `1961-01-16`
`identifier`|`string`| A patient identifier.  Example: `01022228`
`name`|`string`|  A portion of either family or given name of the patient. Example: `Peters`
`telecom`|`string`| The value in any kind of telecom details of the patient. Example: `(816) 475-2374`
`start`|`numeric`| The offset to use when returning results. Defaults to `0`.
`_count`|`numeric`| The maximum number of results to return. Defaults to `20`.

### Response

<%= headers 200 %>
<%= json(:dstu2_patient_bundle) %>

## Retrieve by id

List an individual Patient by its id:

    GET /Patient/:id

### Response

<%= headers 200 %>
<%= json(:dstu2_patient) %>