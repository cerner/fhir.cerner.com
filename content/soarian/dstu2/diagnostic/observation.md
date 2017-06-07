---
title: Observation | Soarian DSTU 2 API 
---
 
# Observation

* TOC
{:toc}

## Overview

For the Observation resource query, the API returns observation names and values for elements that the Soarian client has configured as appropriate for the API.  The ONC (Office of the National Coordinator) CCDS (common clinical data set) definition is defined to include at least two types of data relevant to this resource: smoking status and vital signs.  The API will return any data, not marked as erroneous, the client has configured as relevant for the API.  Note that ONC has clarified CCDS sex as the sex recorded at birth and this may be included in the Observation resource if client-configured as part of the social history template.  Data is returned in the sequence defined for these sections.  The configuration of qualifying data (data configured for social history and vital signs sections) is a single configuration that applies to both the API and the Consolidated Clinical Document Architecture (C-CDA) document, social history and vital signs sections, available to the patients. 

The API handles vital signs similarly to results in the DiagnosticReport resource; the API returns vital sign names, values, and units of measure in reverse chronological order by charted date.  Since each vital sign value is individually dated and the value is unambiguously relevant for that date, this resource supports date-based queries for vital signs.  Vital signs include:
 
*  Temperature
*  Systolic BP
*  Diastolic BP
*  Respiratory Rate
*  Pulse (Heart Rate)
*  SPO2
*  Height
*  Weight
*  Inhaled O2 saturation       

Social History data, such as smoking status, birth sex or any additional client-configured qualifying data, reflects a currently charted state and the most current values will always be returned.  ONC requires specific smoking status values and codes which will be in the structured return based on proper configuration; charted names will be represented in the narrative extension.

## Terminology Bindings

<%= terminology_table(:soarian_observation, :dstu2) %>

## Custom Extensions

The [bundle extension] can be returned, see possible codes in the [errors section] below.

## Search

	GET /Observation?:parameters
	
_Implementation Notes_

* The API returns the most current charted Observation list. 

* The Narrative includes additional information pertaining to the observation, and should be shown to the user to ensure completeness of clinical content and context

### Parameters 

|Name |Required? | Type | Description
| --- | --- | --- | --- |
| patientId | Y | [reference](http://hl7.org/fhir/DSTU2/search.html#reference) | The patient identifier provided in a pre-requisite authorization step. |
| date | N | [date](http://hl7.org/fhir/DSTU2/search.html#date) as adjusted per implementation notes | Null or specific date or a date range. |

Notes:

* See details regarding special [date](../../#special-information-regarding-date-parameters) requirements.

* If the query date parameter is null in the query, the API returns qualifying records with dates less than or equal to the date of query, as limited by the lesser of 1000 records or 30 days inclusive of the query date.  

* If a single date parameter is included, the response includes qualifying records dated that day, as limited by 1000 records.  

* If a valid date range is used in the query, the API returns qualifying records within the dates specified, as limited by the lesser of 1000 records or 30 days starting at the upper limit date specified.

* If a date range used is greater than 30 days, the response includes qualifying records within the dates specified, as limited by the lesser of 1000 records or 30 days starting at the upper limit date specified. It also includes an informational message to that effect.

* If an invalid date range is specified in the query, the API will error.

### Headers  

<%= headers %>

### Example

#### Request  

	GET https://fhir-myrecord.sandboxcerner.com/dstu2/123abc/Observation?patientId=FCC941D7-60B9-491D-BEED-27629E47CD4E 
	
####Response

<%= headers status: 200 %>
<%= json(:SOARIAN_OBSERVATION_BUNDLE) %>
  
### Errors and Informational messages

The common [errors and informational messages](../../common-errors) can be returned.

These additional informational messages may be returned within the [bundle extension]:

| Code | Message |
| --- | --- |
| papi016 | No relevant clinical data exists|

[bundle extension]: ../../#bundle-message-extension
[errors section]: #errors-and-informational-messages
