---
title: Patient | DSTU 2 API
---

# Patient

* TOC
{:toc}

## Overview
The Patient Resource provides general demographic information about a person receiving health care services from a specific organization. Common demographic fields include patient id, patient name, gender, date of birth, address, phone, primary language and marital status. Cerner Millennium is a patient centric application: thus, many of the other resources will include the patient id in their queries. A person receiving care from multiple organizations may have data available in multiple patient resources in multiple FHIR servers.

The following fields are returned if valued:

   * [Patient name](http://hl7.org/fhir/DSTU2/patient-definitions.html#Patient.name){:target="_blank"}
   * [Patient id](http://hl7.org/fhir/DSTU2/resource-definitions.html#Resource.id){:target="_blank"}
   * [Medical Record number (MRN)](http://hl7.org/fhir/DSTU2/patient-definitions.html#Patient.identifier){:target="_blank"}
   * [Phone (email is not supported at this time)](http://hl7.org/fhir/DSTU2/patient-definitions.html#Patient.telecom){:target="_blank"}
   * [Contact person (guardian, parent or emergency)](http://hl7.org/fhir/DSTU2/patient-definitions.html#Patient.contact){:target="_blank"}
   * [Gender (administrative)](http://hl7.org/fhir/DSTU2/patient-definitions.html#Patient.gender){:target="_blank"}
   * [Date of Birth](http://hl7.org/fhir/DSTU2/patient-definitions.html#Patient.birthDate){:target="_blank"}
   * [Deceased](http://hl7.org/fhir/DSTU2/patient-definitions.html#Patient.deceased_x_){:target="_blank"}
   * [Address](http://hl7.org/fhir/DSTU2/patient-definitions.html#Patient.address){:target="_blank"}
   * [Communication (preferred language)](http://hl7.org/fhir/DSTU2/patient-definitions.html#Patient.communication.language){:target="_blank"}
   * [Marital status](http://hl7.org/fhir/DSTU2/patient-definitions.html#Patient.maritalStatus){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:patient, :dstu2) %>

## Extensions
* [Time of day of birth]
* [US Core Ethnicity]
* [US Core Patient Birth Sex]
* [US Core Race]

## Search

Search for Patients that meet supplied query parameters:

    GET /Patient?:parameters

_Implementation Notes_

* The [Patient.animal] modifier element is not supported and will not be returned.
* When using an OAuth 2 patient access token to call GET /Patient without parameters, a bundle will be returned which contains the patients listed in the access token.

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

- The `birthdate`, `name` and `telecom` search parameters are only available for the tenant `d075cf8b-3261-481d-97e5-ba6c48d3b41f` and will perform a "fuzzy" search.


### Response

<%= headers 200 %>
<%= json(:dstu2_patient_bundle) %>

## Retrieve by id

List an individual Patient by its id:

    GET /Patient/:id

_Implementation Notes_

* The [Patient.animal] modifier element is not supported and will not be returned.

### Response

<%= headers 200 %>
<%= json(:dstu2_patient_entry) %>

### Patient Combines

Cerner Millennium supports the ability to logically merge a patient record into another patient record when both records are describing the same patient. This is known
as a "patient combine". If necessary, this merging can later be undone by performing a "patient uncombine". When the requested patient record has been combined into another
record, an inactive Patient entry will be returned which has a link to the current Patient entry. Entries for combined patients will only be returned when retrieving
the entries directly by id. They will not be returned when searching with other parameters.

The ability to perform patient combine or uncombine operations is not available through the Cerner Ignite platform.

<%= headers 200 %>
<%= json(:dstu2_combined_patient_entry) %>

[Time of day of birth]: http://hl7.org/fhir/DSTU2/extension-patient-birthtime.html
[US Core Race]: http://build.fhir.org/ig/Healthedata1/Argo-DSTU2/StructureDefinition-argo-race.html
[US Core Ethnicity]: http://build.fhir.org/ig/Healthedata1/Argo-DSTU2/StructureDefinition-argo-ethnicity.html
[US Core Patient Birth Sex]: http://build.fhir.org/ig/Healthedata1/Argo-DSTU2/StructureDefinition-argo-birthsex.html
[`token`]: http://hl7.org/fhir/DSTU2/search.html#token
[`date`]: http://hl7.org/fhir/DSTU2/search.html#date
[`string`]: http://hl7.org/fhir/DSTU2/search.html#string
[`_count`]: http://hl7.org/fhir/DSTU2/search.html#count
[`number`]: http://hl7.org/fhir/DSTU2/search.html#number
[Patient.animal]: http://hl7.org/fhir/DSTU2/patient-definitions.html#Patient.animal
