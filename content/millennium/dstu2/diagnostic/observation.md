---
title: Observation | DSTU 2 API
---

# Observation

* TOC
{:toc}

## Terminology Bindings

<%= terminology_table(:observation, :dstu2) %>

## Search

Search for labs, vitals, and alcohol/tobacco use Observations that meet supplied query parameters:

    GET /Observation?:parameters

### Parameters

 Name             | Required?         | Type          | Description
------------------|-------------------|---------------|----------------------------------------------------------------------------------------------------------------------
 `patient`        | This or `subject` | [`reference`] | The subject that the observation is about (if patient). Example: `patient=1316024`
 `subject`        | This or `patient` | [`reference`] | The subject (Patient) that the observation is about. Example: `subject=Patient/1316024` or `subject:Patient=1316024`
 `code`           | N                 | [`token`]     | The code or component-code of the observation type. Example: `code=http://loinc.org|3094-0,http://loinc.org|3139-3`
 `date`           | N                 | [`date`]      | Date range into which the observation falls. Example: `date=gt2014-09-24` or `date=lt2015-09-24T12:00:00.000Z`
 [`_count`]       | N                 | [`number`]    | The maximum number of results to return per page. Defaults to `50`. Capped at `100`.

Notes:

- The `subject` parameter must represent a Patient resource and may use the `:Patient` modifier.

- It is recommended to search by either `code` or `date` (or both).

- The `code` parameter:
  - May be a list of comma separated values. A system must be provided for each code.
  - Searches Observation.code and Observation.component.code.

- The `date` parameter may be provided up to two times, and must use the `eq`, `ge`, `gt`, `le`, or `lt` prefixes. When a value is provided without a prefix, an implied `eq` prefix is used. When provided twice, the lower value must have a `ge` or `gt` prefix and the higher value must have an `le` or `lt` prefix.

### Response

<%= headers status: 200 %>
<%= json(:dstu2_observation_bundle) %>

[`reference`]: http://hl7.org/fhir/dstu2/search.html#reference
[`token`]: http://hl7.org/fhir/dstu2/search.html#token
[`date`]: http://hl7.org/fhir/dstu2/search.html#date
[`_count`]: http://hl7.org/fhir/dstu2/search.html#count
[`number`]: http://hl7.org/fhir/dstu2/search.html#number
