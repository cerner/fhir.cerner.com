---
title: Goal | DSTU 2 API
---

# Goal

* TOC
{:toc}

## Overview

The Goal resource describes intended objectives for a patient.  A Goal is typically expressed as a desired outcome or health state to be achieved by a patient over a period or at a specific point in time.  A Goal may address preventative health or mitigation of a diagnosis or problem.  Goals can be non-health care related (e.g. dance at a wedding).

The following fields are returned if valued:

* [id](http://hl7.org/fhir/dstu2/resource-definitions.html#Resource.id){:target="_blank"}
* [Subject (patient)](http://hl7.org/fhir/DSTU2/goal-definitions.html#Goal.subject){:target="_blank"}
* [Start date](http://hl7.org/fhir/DSTU2/goal-definitions.html#Goal.start_x_){:target="_blank"}
* [Target date](http://hl7.org/fhir/DSTU2/goal-definitions.html#Goal.target_x_){:target="_blank"}
* [Category](http://hl7.org/fhir/DSTU2/goal-definitions.html#Goal.category){:target="_blank"}
* [Description of goal](http://hl7.org/fhir/DSTU2/goal-definitions.html#Goal.description){:target="_blank"}
* [Status](http://hl7.org/fhir/DSTU2/goal-definitions.html#Goal.status){:target="_blank"}
* [Status date](http://hl7.org/fhir/DSTU2/goal-definitions.html#Goal.statusDate){:target="_blank"}
* [Author](http://hl7.org/fhir/DSTU2/goal-definitions.html#Goal.author){:target="_blank"}
* [Note](http://hl7.org/fhir/DSTU2/goal-definitions.html#Goal.note){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:goal, :dstu2) %>

## Search

Search for Goals that meet supplied query parameters:

    GET /Goal?:parameters

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Parameters

 Name              | Required?                                | Type          | Description
-------------------|------------------------------------------|---------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 `_id`             | This, or one of `patient`, or `subject`. | [`token`]     | The logical resource id associated with the Goal. Example: `_id=7891`
 `patient`         | This, or one of `_id`, or `subject`.     | [`reference`] | The patient who has the goal. Example: `patient=12345`
 `subject:Patient` | This, or one of `_id`, or `patient`.     | [`reference`] | The subject who this goal is intended for. Must represent a Patient resource. May use the `:Patient` modifier. Example: `subject=Patient/12345` or `subject:Patient=12345`
 `targetdate`      | N                                        | [`date`]      | A date or date range from which to find Goals. Example: `targetdate=ge2016-10-01&targetdate=le2016-12-01`

Notes:

  - The `_id` parameter may not be provided at the same time as the `patient`, `subject`, or `targetdate` parameters.

  - The `targetdate` parameter may be provided once with a prefix to imply a date range or without a prefix to search for goals at a specific date. Alternately it may be provided twice with `le`, `lt`, `ge`, or `gt` prefixes to search for goals within specific range. The date and prefix pairs must create a closed range.

### Headers

 <%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Goal?patient=12724066

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_goal_bundle) %>

<%= disclaimer %>


### Example Search by Id

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Goal?_id=183353727

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_goal_bundle_by_id) %>

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

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Goal/183353727

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_goal) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`date`]: http://hl7.org/fhir/dstu2/search.html#date
[`reference`]: http://hl7.org/fhir/DSTU2/search.html#reference
[`token`]: http://hl7.org/fhir/DSTU2/search.html#token
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
