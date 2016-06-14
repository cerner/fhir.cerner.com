---
title: Observation | MAY 2015 BALLOT API
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
`patient`        | Either this or `subject` |[`reference`](http://hl7.org/fhir/2015May/search.html#reference)| The subject that the observation is about (if patient). EG: `123456`
`subject:Patient`| Either this or `patient` |[`reference`](http://hl7.org/fhir/2015May/search.html#reference)| The subject (Patient) that the observation is about. EG: `123456`
`code`| Recommended to send at least one `code` or `date` range |[`token`](http://hl7.org/fhir/2015May/search.html#token)| The code of the observation type, can be a list of comma separated values. The system portion of the code is required. EG: `http://loinc.org|3094-0`
`date`| Recommended to send at least one `code` or `date` range  |[`date`](http://hl7.org/fhir/2015May/search.html#date) | Date range into which the observation falls (appliesDateTime). Must request a range of time. EG: `date=>2014-09-24T12:00:00.000Z` `&date=<2015-09-24T12:00:00.000Z`
[`_count`](http://hl7.org/fhir/2015May/search.html#count)| N |[`number`](http://hl7.org/fhir/2015May/search.html#number)| The maximum number of results to return per page.

### Response

<%= headers 200 %>
<%= json(:may2015_observation_bundle) %>
