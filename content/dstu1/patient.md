---
title: Patient | FHIR API
---

# Patient

* TOC
{:toc}

## Search

Search for Patients that meet supplied query parameters:

    GET /Patient?:parameters

### Parameters

 Name       | Type                                                                     | Description
------------|--------------------------------------------------------------------------|-----------------------------------------------------------------------------------
`_id`       |[`token`](http://www.hl7.org/implement/standards/fhir/search.html#token)  | The logical resource id associated with the resource.
`birthdate` |[`date`](http://www.hl7.org/implement/standards/fhir/search.html#date)    | The patient's date of birth.  Example: `1961-01-16`
`identifier`|[`token`](http://www.hl7.org/implement/standards/fhir/search.html#token)  | A patient identifier.  Example: `01022228`
`name`      |[`string`](http://www.hl7.org/implement/standards/fhir/search.html#string)| A portion of either family or given name of the patient. Example: `Peters`
`telecom`   |[`token`](http://www.hl7.org/implement/standards/fhir/search.html#token)  | The value in any kind of telecom details of the patient. Example: `(816) 475-2374`

### Response

<%= headers 200 %>
<%= json(:dstu1_patient_bundle) %>

## Retrieve by id

List an individual Patient by its id:

    GET /Patient/:id

### Response

<%= headers 200 %>
<%= json(:dstu1_patient) %>