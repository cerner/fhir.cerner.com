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

 Name        | Required?                                                    | Type       | Description
-------------|--------------------------------------------------------------|------------|------------------------------------------------------------
`_id`        | No. If populated all other parameters are ignored            | [`token`]  | The logical resource id associated with the resource.
`birthdate`  | At least one parameter must be populated other than `_count` | [`date`]   | The patient's date of birth.  Example: `1961-01-16`
`identifier` | At least one parameter must be populated other than `_count` | [`token`]  | A patient identifier.  Example: `01022228`
`name`       | At least one parameter must be populated other than `_count` | [`string`] | A portion of either family or given name of the patient. Example: `Peters`
`telecom`    | At least one parameter must be populated other than `_count` | [`token`]  | The value in any kind of telecom details of the patient. Example: `(816) 475-2374`
[`_count`]   | No                                                           | [`number`] | The maximum number of results to return. Defaults to `20`.

Note: Parameters (other than `_id`) will currently perform a "fuzzy" search.

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
<%= json(:dstu2_patient_1) %>

[Patient.animal]: http://hl7.org/fhir/DSTU2/patient-definitions.html#Patient.animal
[`_count`]: http://hl7.org/fhir/DSTU2/search.html#count
[`date`]: http://hl7.org/fhir/DSTU2/search.html#date
[Patient.link]: http://hl7.org/fhir/DSTU2/patient-definitions.html#Patient.link
[`number`]: http://hl7.org/fhir/DSTU2/search.html#number
[`string`]: http://hl7.org/fhir/DSTU2/search.html#string
[`token`]: http://hl7.org/fhir/DSTU2/search.html#token
[Time of day of birth]: http://hl7.org/fhir/DSTU2/extension-patient-birthtime.html
