---
title: Observation | DSTU 2 API
---

# Observation

* TOC
{:toc}

## Overview
The Observation resource provides measurements or simple assertions about a patient. Observations are crucial to supporting diagnoses, monitoring progress, and establishing baselines or trends. Most observations are simply a name and value or result but some observations, such as blood pressure, group other observations together logically.  Examples of common observations are: Laboratory results (blood sugar, hemoglobin), Vital signs (temperature, blood pressure), Personal characteristics (height, weight), and Social history (tobacco/alcohol use, employment status).  Pathology reports, radiology reports, and other textual reports should be represented by the DiagnosticReport resource.

The following fields will be returned if valued:

* [Observation id](http://hl7.org/fhir/DSTU2/observation-definitions.html#Observation.identifier){:target="_blank"}
* [Status](http://hl7.org/fhir/DSTU2/observation-definitions.html#Observation.status){:target="_blank"}
* [Category (laboratory, social history)](http://hl7.org/fhir/DSTU2/observation-definitions.html#Observation.category){:target="_blank"}
* [Patient](http://hl7.org/fhir/DSTU2/observation-definitions.html#Observation.subject){:target="_blank"}
* [Patient encounter](http://hl7.org/fhir/DSTU2/observation-definitions.html#Observation.encounter){:target="_blank"}
* [Effective date/time (collection date/time for laboratory)](http://hl7.org/fhir/DSTU2/observation-definitions.html#Observation.effective_x_){:target="_blank"}
* [Issue date/time (date/time observation made available, entered, verified)](http://hl7.org/fhir/DSTU2/observation-definitions.html#Observation.issued){:target="_blank"}
* [Observation (name or text)﻿﻿](http://hl7.org/fhir/DSTU2/observation-definitions.html#Observation.code){:target="_blank"}
* [Observation value or result](http://hl7.org/fhir/observation-definitions.html#Observation.value_x_){:target="_blank"}
* For Observations with `valueQuantity` 
  * [Quantity comparator﻿ (<, <=, >, >=)](http://hl7.org/fhir/DSTU2/datatypes-definitions.html#Quantity.comparator){:target="_blank"}
  * [Quantity units﻿﻿](http://hl7.org/fhir/DSTU2/datatypes-definitions.html#Quantity.unit){:target="_blank"}
* [Interpretation (abnormal flagging)](http://hl7.org/fhir/DSTU2/observation-definitions.html#Observation.interpretation){:target="_blank"}
* [Reference range](http://hl7.org/fhir/DSTU2/observation-definitions.html#Observation.referenceRange){:target="_blank"}
* [Comments](http://hl7.org/fhir/DSTU2/observation-definitions.html#Observation.comments){:target="_blank"}
* [Related Observations (currently for limited use cases)](http://hl7.org/fhir/DSTU2/observation-definitions.html#Observation.related){:target="_blank"}
* [Components (eg: systolic and diastolic for blood pressure)](http://hl7.org/fhir/DSTU2/observation-definitions.html#Observation.component){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:observation, :dstu2) %>

## Search

Search for labs, vitals, and alcohol/tobacco use Observations that meet supplied query parameters:

    GET /Observation?:parameters

_Implementation Notes_

* Currently, the `comments` field may have RTF or other formatted data rather than simple text. This is an issue that will be resolved in a future correction.

### Authorization Types

<%= authorization_types(practitioner: true, patient: true, system: true) %>

### Parameters

 Name             | Required?         | Type          | Description
------------------|-------------------|---------------|----------------------------------------------------------------------------------------------------------------------
 `patient`        | This or `subject` | [`reference`] | The subject that the observation is about (if patient). Example: `patient=1316024`
 `subject`        | This or `patient` | [`reference`] | The subject (Patient) that the observation is about. Example: `subject=Patient/1316024` or `subject:Patient=1316024`
 `code`           | N                 | [`token`]     | The code or component-code of the observation type. Example: `code=http://loinc.org|3094-0,http://loinc.org|3139-3`
 `date`           | N                 | [`date`]      | Date range into which the observation falls. Example: `date=gt2014-09-24` or `date=lt2015-09-24T12:00:00.000Z`
 `category`       | N                 | [`token`]     | The category of observations. Example: `category=laboratory`
 [`_count`]       | N                 | [`number`]    | The maximum number of results to return per page. Defaults to `50`. Capped at `100`.

Notes:

- The `subject` parameter must represent a Patient resource and may use the `:Patient` modifier.

- It is recommended to search by either `code` or `date` (or both).

- The `code` parameter:
  - May be a list of comma separated values. A system must be provided for each code.
  - Searches Observation.code and Observation.component.code.

- The `date` parameter may be provided up to two times, and must use the `eq`, `ge`, `gt`, `le`, or `lt` prefixes. When a value is provided without a prefix, an implied `eq` prefix is used. When provided twice, the lower value must have a `ge` or `gt` prefix and the higher value must have an `le` or `lt` prefix.

### Headers

 <%= headers %>

### Example

#### Request

    GET https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Observation?patient=3998008

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_observation_bundle) %>

### Errors

The common [errors] may be returned.


[`reference`]: http://hl7.org/fhir/dstu2/search.html#reference
[`token`]: http://hl7.org/fhir/dstu2/search.html#token
[`date`]: http://hl7.org/fhir/dstu2/search.html#date
[`_count`]: http://hl7.org/fhir/dstu2/search.html#count
[`number`]: http://hl7.org/fhir/dstu2/search.html#number
[errors]: ../../#client-errors
