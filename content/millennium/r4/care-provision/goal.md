---
title: Goal | R4 API
---

# Goal

* TOC
{:toc}

## Overview

The Goal resource describes intended objectives for a patient. A Goal is typically expressed as a desired outcome or health state to be achieved by a patient over a period or at a specific point in time. A Goal may address preventative health or mitigation of a diagnosis or problem. Goals can be non-health care related (e.g. dance at a wedding).

The following fields are returned if valued:

* [Goal id](http://hl7.org/fhir/r4/resource-definitions.html#Resource.id){:target="_blank"}
* [Lifecycle Status](http://hl7.org/fhir/r4/goal-definitions.html#Goal.lifecycleStatus){:target="_blank"}
* [Achievement Status](http://hl7.org/fhir/r4/goal-definitions.html#Goal.achievementStatus){:target="_blank"}
* [Category](http://hl7.org/fhir/r4/goal-definitions.html#Goal.category){:target="_blank"}
* [Description](http://hl7.org/fhir/r4/goal-definitions.html#Goal.description){:target="_blank"}
* [Subject (patient)](http://hl7.org/fhir/r4/goal-definitions.html#Goal.subject){:target="_blank"}
* [Start Date](http://hl7.org/fhir/r4/goal-definitions.html#Goal.start_x_){:target="_blank"}
* [Target Due Date](http://hl7.org/fhir/r4/goal-definitions.html#Goal.target.due_x_){:target="_blank"}
* [Status Date](http://hl7.org/fhir/r4/goal-definitions.html#Goal.statusDate){:target="_blank"}
* [Expressed By](http://hl7.org/fhir/r4/goal-definitions.html#Goal.expressedBy){:target="_blank"}
* [Note](http://hl7.org/fhir/r4/goal-definitions.html#Goal.note){:target="_blank"}
    * [Author](http://hl7.org/fhir/r4/goal-definitions.html#Goal.note){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:goal, :r4) %>

## Search

Search for Goals that meet supplied query parameters:

    GET /Goal?:parameters

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Parameters

 Name              | Required?                  | Type          | Description
-------------------|----------------------------|---------------|---------------------------------------------------------------------------------------------------------------
 `_id`             | This, or patient.          | [`token`]     | The logical resource id associated with the Goal. Example: `_id=7891`
 `patient`         | This, or _id.              | [`reference`] | The patient who has the goal. Example: `patient=12345`
 `target-date`     | N                          | [`date`]      | A date or date range from which to find Goals. Example: `target-date=ge2016-10-01&target-date=le2016-12-01`

Notes:

  - The `_id` parameter may not be provided at the same time as the `patient` or `target-date`

  - The `target-date` parameter may be provided once with a prefix to imply a date range or without a prefix to search for goals at a specific date. Alternately it may be provided twice with `le`, `lt`, `ge`, or `gt` prefixes to search for goals within specific range. The date and prefix pairs must create a closed range.

### Headers

 <%= headers %>

### Example Search by Patient

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Goal?patient=12724069

#### Response

<%= headers status: 200 %>
<%= json(:r4_goal_bundle) %>

<%= disclaimer %>


### Example Search by Id

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Goal?_id=187042107

#### Response

<%= headers status: 200 %>
<%= json(:r4_goal_bundle_by_id) %>

<%= disclaimer %>

### Example Search by Patient and Target Date

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Goal?patient=12724069&target-date=gt2021-01-12

#### Response

<%= headers status: 200 %>
<%= json(:r4_goal_bundle_by_date) %>

<%= disclaimer %>

#### Patient Authorization Request

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Goal?patient=12724066

#### Response

<%= headers status: 200 %>
<%= json(:r4_goal_patient_bundle) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual Goal by its id:

    GET /Goal/:id

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Goal/187042107

#### Response

<%= headers status: 200 %>
<%= json(:r4_goal) %>

<%= disclaimer %>

#### Patient Authorization Request

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Goal/187042107

#### Response

<%= headers status: 200 %>
<%= json(:r4_goal) %>

<%= disclaimer %>

#### Patient Authorization Request For Entered in Error Status

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Goal/187042111

#### Response

<%= headers status: 200 %>
<%= json(:r4_goal_entered_in_error_status) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`date`]: http://hl7.org/fhir/r4/search.html#date
[`reference`]: http://hl7.org/fhir/r4/search.html#reference
[`token`]: http://hl7.org/fhir/r4/search.html#token
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
