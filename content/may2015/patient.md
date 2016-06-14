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

 Name                                                    | Required? | Type                                                     | Description
---------------------------------------------------------|----------------------------------------------------------|-----------------------------------------------------------------------------------
`_id`                                                    | N, if populated all other parameters are ignored | [`token`](http://hl7.org/fhir/2015May/search.html#token)  | The logical resource id associated with the resource.
`birthdate`                                              | At least one parameter must be populated other than `_count` | [`date`](http://hl7.org/fhir/2015May/search.html#date)    | The patient's date of birth.  Example: `1961-01-16`
`identifier`                                             | At least one parameter must be populated other than `_count` | [`token`](http://hl7.org/fhir/2015May/search.html#token)  | A patient identifier.  Example: `01022228`
`name`                                                   | At least one parameter must be populated other than `_count` | [`string`](http://hl7.org/fhir/2015May/search.html#string)| A portion of either family or given name of the patient. Example: `Peters`
`telecom`                                                | At least one parameter must be populated other than `_count` | [`token`](http://hl7.org/fhir/2015May/search.html#token)  | The value in any kind of telecom details of the patient. Example: `(816) 475-2374`
[`_count`](http://hl7.org/fhir/2015May/search.html#count)| N | [`number`](http://hl7.org/fhir/2015May/search.html#number)| The maximum number of results to return. Defaults to `20`.

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