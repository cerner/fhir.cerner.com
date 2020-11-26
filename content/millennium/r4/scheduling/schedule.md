---
title: Schedule | R4 API
---

# Schedule

* TOC
{:toc}

## Overview

The Schedule resource provides a time period (planning horizon) where time slots are defined for booking an schedule. Consumers can query by schedule id(s). The schedule ids can be obtained by querying for slots, which contain the references to associated schedules. A schedule belongs to only one service or resource (actor) and does not contain any information about actual schedules.

The following fields are returned if valued:

* [Schedule id](http://hl7.org/fhir/R4/resource-definitions.html#Resource.id){:target="_blank"}
* [Active](http://hl7.org/fhir/r4/schedule-definitions.html#Schedule.active){:target="_blank"}
* [ServiceType](http://hl7.org/fhir/r4/schedule-definitions.html#Schedule.serviceType){:target="_blank"}
* [Actor](http://hl7.org/fhir/r4/schedule-definitions.html#Schedule.actor){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:schedule, :r4) %>

## Search

Search for Schedules that meet supplied query parameters:

    GET /Schedule?:parameters

### Authorization Types

<%= authorization_types(provider: true, system: true) %>

### Parameters

 Name           | Required?                                                | Type          | Description
----------------|----------------------------------------------------------|-------------------------------------------------------------------------------------------------
 `_id`          | Yes                                                      | [`token`]     | The logical resource id associated with the Schedule. Example: `4062786-4062906-19875648-0`

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Schedule?_id=24477854-21304876-62852027-0%2C24477854-21304876-62852027-15


#### Response

<%= headers status: 200 %>
<%= json(:r4_schedule_bundle) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual Schedule by its id:

    GET /Schedule/:id

### Authorization Types

<%= authorization_types(provider: true, system: true) %>

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Schedule/24477854-21304876-62852027-0

#### Response

<%= headers status: 200 %>
<%= json(:r4_schedule_entry) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.
