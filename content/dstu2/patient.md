---
title: Patient | DSTU 2 API
---

# Patient

* TOC
{:toc}

## Terminology Bindings

<%= terminology_table(:patient, :dstu2) %>

## Extensions
* [Time of day of birth]

## Search

Search for Patients that meet supplied query parameters:

    GET /Patient?:parameters

_Implementation Notes_

* The [Patient.animal] and [Patient.link] modifier elements are not supported and will not be returned.

### Parameters

 Name         | Required?                                         | Type       | Description
--------------|---------------------------------------------------|------------|-------------------------------------------------------------------------------------
 `_id`        | No, if populated all other parameters are ignored | [`token`]  | The logical resource id associated with the resource.
 `identifier` | Yes, or `_id`                                     | [`token`]  | A patient identifier.  Example: `urn:oid:1.1.1.1.1.1|1022228`
 `birthdate`  | Yes, or `name`, `telecom` or `_id`                | [`date`]   | The patient's date of birth.  Example: `1961-01-16`
 `name`       | Yes, or `birthdate`, `telecom` or `_id`           | [`string`] | A portion of either family or given name of the patient. Example: `Peters`
 `telecom`    | Yes, or `birthdate`, `name` or `_id`              | [`token`]  | The value in any kind of telecom details of the patient. Example: `(816) 475-2374`
 [`_count`]   | No                                                | [`number`] | The maximum number of results to return. Defaults to `20`.

Notes:

- Either the `_id`, `identifier` or a combination of `birthdate`, `name` and `telecom` parameters must be provided.
- The `identifier`, `birthdate`, `name`, or `telecom` parameters may be provided exactly once and may have only a single value.

### Limitations

- The `birthdate`, `name` and `telecom` search parameters are only available in the original sandbox (`https://fhir-*.sandboxcerner.com/dstu2/d075cf8b-3261-481d-97e5-ba6c48d3b41f/`) and will perform a "fuzzy" search.


### Response

<%= headers 200 %>
<%= json(:dstu2_patient_bundle) %>

## Retrieve by id

List an individual Patient by its id:

    GET /Patient/:id

_Implementation Notes_

* The [Patient.animal] and [Patient.link] modifier elements are not supported and will not be returned.

### Response

<%= headers 200 %>
<%= json(:dstu2_patient_entry) %>

[Time of day of birth]: http://hl7.org/fhir/DSTU2/extension-patient-birthtime.html
[`token`]: http://hl7.org/fhir/DSTU2/search.html#token
[`date`]: http://hl7.org/fhir/DSTU2/search.html#date
[`string`]: http://hl7.org/fhir/DSTU2/search.html#string
[`_count`]: http://hl7.org/fhir/DSTU2/search.html#count
[`number`]: http://hl7.org/fhir/DSTU2/search.html#number
[Patient.animal]: http://hl7.org/fhir/DSTU2/patient-definitions.html#Patient.animal
[Patient.link]: http://hl7.org/fhir/DSTU2/patient-definitions.html#Patient.link
