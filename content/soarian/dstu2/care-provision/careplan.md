---
title: CarePlan | Soarian DSTU 2 API
---

# CarePlan

* TOC
{:toc}

## Overview

For the CarePlan resource query, the API returns the most current charted data applicable to encounter(s) contained by the explicit or implicit date(s) in the query for content configured by the Soarian Clinicals client as relevant to this resource. The ONC (Office of the National Coordinator) CCDS (common clinical data set) definition includes types of data relevant to this resource: Concerns, Goals, Assessments and Plans. Note that concerns may or may not be classified as problems or diagnoses and concerns and goals may be patient and/or caregiver expressed. While conceptually health concerns, goals, planned activities and assessments are four different data sets, in clinical practice they maybe documented as a consolidated thought and an individual query of just one of the data types may result in clinical inaccuracy. Additionally, clients may configure variable amounts of charting. For example, the same clinical scenario might be documented in practice as:

* Concern: Patient expresses he is significantly overweight.
* Goal: Fit into my uniform for an upcoming reunion.
* Assessment: good progress made with 5lb weight loss in the last month.
* Plan: Continue diet and exercise regimen with a target of 2 lb per week loss.

or as

* Impression: Patient expresses concern over recent weight gain and a desire to return to optimal weight for an upcoming reunion. A diet and exercise regimen has been established for a target 2 lb/week weight loss and good progress has been made in the first month with a 5 lb loss. Continue per plan.

or as

* Over weight by 25 lbs.
* Weight management interim outcome: 5 lb loss over 4 weeks.
* Progress note: Continue diet and exercise to achieve optimal weight and goal achievement of wearing uniform for upcoming reunion.

Soarian Clinicals has a robust capability for clients to configure their clinical charting content, format, and structure as appropriate to their practice; therefore, the API response will depend on that configuration. While the resource structure supports specific relationships between data types, that structure cannot be enforced without restricting client practice or risking inaccurate or incomplete information. Therefore to preserve completeness and accuracy per clinically charted content, clients configure the data relevant to this resource and the API will return charted content, not marked as erroneous, for the elements the client has configured. To preserve accuracy and completeness, conceptual data types of Concerns, Goals, Assessments and Plans will all be returned together as a CarePlan response. Data is returned in reverse chronological order by most current charted date for qualifying encounters in the sequence defined in configuration.

Note that this information is documented during and in context of an encounter, may not be actively managed, and may not be consolidated across encounters as a "patient-level" plan. Therefore, this data should be interpreted as a snapshot in time of a point in time. For example, if a patient has an encounter related to injury due to a car accident, there will be a snapshot of this information in context of those injuries. If there is a subsequent encounter related to an illness, there may be a snapshot of this data set related to that illness. If a patient queries for the care plan resource a week after the last encounter, the response will be the latest instance of the last set of this data documented; i.e., the most recent charted version of the illness related data. If the query includes a date range inclusive of both encounters, the response will include the most recent charted version of both the injury and illness data sets. Both data sets will be the most recent data documented for the encounter, not of a specific dated instance, and, since in practice, they may not be actively managed, they may not reflect the current state of goals, concerns and plans; they may represent the initially documented state. For context, the narrative response will provide a charted date to represent to what date context this information is relevant.

## Custom Extensions

The [bundle extension] can be returned, see possible codes in the [errors section] below.

## Search

    GET /CarePlan?:parameters

_Implementation Notes_

* The API returns the most current careplan list.
* The API returns values in reverse chronological order by the most currently charted date.
* The API returns charted content in `active` status, and will not return charted content that is marked as `cancelled`.
* The Narrative represents the entire care plan, and contains information that is not included in the structured portion of the response. As such, it should be shown to the user to ensure completeness of clinical content and context.

### Parameters

 Name      | Required? | Type                                          | Description
-----------|-----------|-----------------------------------------------|------------------------------------------------------------------------
 patientId | Y         | [`reference`]                                 | The patient identifier provided in a pre-requisite authorization step.
 date      | N         | [`date`] as adjusted per implementation notes | Null or specific date or a date range.

Notes:

* See details regarding special [date][date-parameter] requirements.
* See details regarding [pagination] requirements.
* If the date parameter is null in the query, the API will return all qualifying records. 
* If a single date parameter is used in the query, the response will include all qualifying records dated that day.
* If a valid date range is used in the query, the API will return all qualifying records within the dates specified.
* If an invalid date range is used in the query, the API will error with code [500][common-errors]. Please refer to [Special information regarding date parameters][date-parameter].
* Developers are strongly encouraged to specify date ranges to prevent an inordinate number of records from being returned.

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-myrecord.sandboxcerner.com/dstu2/123abc/CarePlan?patientId=D4292B7B-AEDF-4CEF-B783-BD3AA1B0DD27

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_CARE_PLAN_ENTRY) %>

### Errors and Informational messages

The common [errors and informational messages][common-errors] can be returned.

These additional informational messages may be returned within the [bundle extension]:

 Code    | Message
---------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 papi027 | No relevant clinical data exists.
 papi026 | The information provided is the latest configured data available at the time of charting and may not be reflective of the current clinical state of the care plan. It is the responsibility of the patient or patient representative to confirm care plan status with appropriate care providers.
 papi028 | Provides the date range that had start date as null.
 papi029 | Provides the date range that was used to run the search.

[bundle extension]: ../../#bundle-message-extension
[errors section]: #errors-and-informational-messages
[`reference`]: http://hl7.org/fhir/DSTU2/search.html#reference
[`date`]: http://hl7.org/fhir/DSTU2/search.html#date
[common-errors]: ../../common-errors
[date-parameter]: ../../#special-information-regarding-date-parameters
[pagination]: ../../#pagination
