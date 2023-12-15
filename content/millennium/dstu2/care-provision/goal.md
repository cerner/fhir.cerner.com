---
title: Goal | DSTU 2 API
---

# Goal

* TOC
{:toc}

## Overview

The Goal resource describes intended objectives for a patient. A goal is typically expressed as a desired outcome or health state to be achieved by a patient over a period or at a specific point in time. A goal may address preventative health or mitigation of a diagnosis or problem. Goals can be non-healthcare related (for example, dance at a wedding).

The following fields are returned if valued:

* [Goal ID](http://hl7.org/fhir/dstu2/resource-definitions.html#Resource.id){:target="_blank"}
* [Subject (patient)](http://hl7.org/fhir/DSTU2/goal-definitions.html#Goal.subject){:target="_blank"}
* [Start date](http://hl7.org/fhir/DSTU2/goal-definitions.html#Goal.start_x_){:target="_blank"}
* [Target date](http://hl7.org/fhir/DSTU2/goal-definitions.html#Goal.target_x_){:target="_blank"}
* [Category](http://hl7.org/fhir/DSTU2/goal-definitions.html#Goal.category){:target="_blank"}
* [Description of goal](http://hl7.org/fhir/DSTU2/goal-definitions.html#Goal.description){:target="_blank"}
* [Status](http://hl7.org/fhir/DSTU2/goal-definitions.html#Goal.status){:target="_blank"}
* [Status date](http://hl7.org/fhir/DSTU2/goal-definitions.html#Goal.statusDate){:target="_blank"}
* [Author](http://hl7.org/fhir/DSTU2/goal-definitions.html#Goal.author){:target="_blank"}
* [Note](http://hl7.org/fhir/DSTU2/goal-definitions.html#Goal.note){:target="_blank"}

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Terminology Bindings

<%= terminology_table(:goal, :dstu2) %>

## Search

Search for goals that meet supplied query parameters.

    GET /Goal?:parameters

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Parameters

 Name              | Required?        | Type          | Description
-------------------|------------------|---------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 `_id`             | Conditionally    | [`token`]     | The logical resource ID associated with the goal. This parameter is required if `patient` or `subject` are not used. Example: `_id=7891`
 `patient`         | Conditionally    | [`reference`] | The patient who has the goal. This parameter is required if `_id` or `subject` are not used. Example: `patient=12345`
 `subject:Patient` | Condtionally     | [`reference`] | The subject who this goal is intended for. Must represent a Patient resource. This parameter is required if `_id` or `patient` are not used. Examples: `subject=Patient/12345` or `subject:Patient=12345`
 `targetdate`      | No               | [`date`]      | A date or date range from which to find goals. Example: `targetdate=ge2016-10-01&targetdate=le2016-12-01`

Notes:

* The `targetdate` parameter:
  * May be provided once with a prefix to imply a date range or without a prefix to search for goals at a specific date. 
  * Alternatively, it may be provided twice with `le`, `lt`, `ge`, or `gt` prefixes to search for goals within a specific range. The date and prefix pairs must create a closed range.

### Headers

 <%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Goal?patient=12724066

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_goal_bundle) %>

### Example Search by ID

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Goal?_id=183353727

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_goal_bundle_by_id) %>

## Retrieve by ID

List an individual goal by its ID.

    GET /Goal/:id

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Goal/183353727

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_goal) %>

[`date`]: http://hl7.org/fhir/dstu2/search.html#date
[`reference`]: http://hl7.org/fhir/DSTU2/search.html#reference
[`token`]: http://hl7.org/fhir/DSTU2/search.html#token
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
