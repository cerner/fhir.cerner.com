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

 Name             | Required?                                                    | Type          | Description
------------------|--------------------------------------------------------------|---------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
`patient`         | This or `subject`                                            | [`reference`] | The subject that the observation is about (if patient). EG: `123456`
`subject:Patient` | This or `patient`                                            | [`reference`] | The subject (Patient) that the observation is about. EG: `123456`
`code`            | Recommended to search by `code`, `component-code`, or `date` | [`token`]     | The code of the observation type, can be a list of comma separated values. The system portion of the code is required. EG: `http://loinc.org|3094-0`
`component-code`  | Recommended to search by `code`, `component-code`, or `date` | [`token`]     | The component code of the observation type, can be a list of comma separated values. Results will qualify if their components match the code. The system portion of the code is required. EG: `http://loinc.org|3094-0`
`date`            | Recommended to search by `code`, `component-code`, or `date` | [`date`]      | Date range into which the observation falls (effectiveDateTime). Single dates are treated as implied ranges. EG: `date=gt2014-09-24T12:00:00.000Z` `&date=lt2015-09-24T12:00:00.000Z`
[`_count`]        | N                                                            | [`number`]    | The maximum number of results to return per page.

### Response

<%= headers 200 %>
<%= json(:dstu2_observation_bundle) %>

[`reference`]: http://hl7.org/fhir/dstu2/search.html#reference
[`token`]: http://hl7.org/fhir/dstu2/search.html#token
[`date`]: http://hl7.org/fhir/dstu2/search.html#date
[`number`]: http://hl7.org/fhir/dstu2/search.html#number
[`_count`]: http://hl7.org/fhir/dstu2/search.html#count
