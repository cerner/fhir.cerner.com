---
title: Observation | DSTU 2 API
---

# Observation

* TOC
{:toc}

## Search

Search for labs, vitals, and alcohol/tobacco use Observations that meet supplied query parameters:

    GET /Observation?:parameters

### Parameters

 Name            | Required?| Type                                                           | Description
-----------------|----------|----------------------------------------------------------------|-------------------------------------------------------
`patient`        | This or `subject` |[`reference`](http://hl7.org/fhir/dstu2/search.html#reference)| The subject that the observation is about (if patient). EG: `123456`
`subject:Patient`| This or `patient` |[`reference`](http://hl7.org/fhir/dstu2/search.html#reference)| The subject (Patient) that the observation is about. EG: `123456`
`code`| Recommended to send at least one `code` or `date` range |[`token`](http://hl7.org/fhir/dstu2/search.html#token)| The code of the observation type, can be a list of comma separated values. The system portion of the code is required. EG: `http://loinc.org|3094-0`
`date`| Recommended to send at least one `code` or `date` range  |[`date`](http://hl7.org/fhir/dstu2/search.html#date) | Date range into which the observation falls (effectiveDateTime). Must request a range of time. EG: `date=gt2014-09-24T12:00:00.000Z` `&date=lt2015-09-24T12:00:00.000Z`
[`_count`](http://hl7.org/fhir/dstu2/search.html#count)| N |[`number`](http://hl7.org/fhir/dstu2/search.html#number)| The maximum number of results to return per page.

### Response

<%= headers 200 %>
<%= json(:dstu2_observation_bundle) %>
