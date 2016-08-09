---
title: Patient | MAY 2015 BALLOT API
---

# Patient

* TOC
{:toc}

## Search

Search for Patients that meet supplied query parameters:

    GET /Patient?:parameters

### Parameters

 Name         | Required?                                                    | Type       | Description
--------------|--------------------------------------------------------------|------------|------------------------------------------------------------------------------------
 `_id`        | N, if populated all other parameters are ignored             | [`token`]  | The logical resource id associated with the resource.
 `birthdate`  | At least one parameter must be populated other than `_count` | [`date`]   | The patient's date of birth.  Example: `1961-01-16`
 `identifier` | At least one parameter must be populated other than `_count` | [`token`]  | A patient identifier.  Example: `01022228`
 `name`       | At least one parameter must be populated other than `_count` | [`string`] | A portion of either family or given name of the patient. Example: `Peters`
 `telecom`    | At least one parameter must be populated other than `_count` | [`token`]  | The value in any kind of telecom details of the patient. Example: `(816) 475-2374`
 [`_count`]   | N                                                            | [`number`] | The maximum number of results to return. Defaults to `20`.

Note: Parameters (other than `_id`) will currently perform a "fuzzy" search.

### Response

<%= headers 200 %>
<%= json(:may2015_patient_bundle) %>

## Retrieve by id

List an individual Patient by its id:

    GET /Patient/:id

### Response

<%= headers 200 %>
<%= json(:may2015_patient) %>

[`token`]: http://hl7.org/fhir/2015May/search.html#token
[`date`]: http://hl7.org/fhir/2015May/search.html#date
[`string`]: http://hl7.org/fhir/2015May/search.html#string
[`_count`]: http://hl7.org/fhir/2015May/search.html#count
[`number`]: http://hl7.org/fhir/2015May/search.html#number
