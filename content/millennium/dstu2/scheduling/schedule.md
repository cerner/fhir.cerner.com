---
title: Schedule | DSTU 2 API
---

# Schedule

* TOC
{:toc}

## Overview

The Schedule resource provides a time period (planning horizon) where time slots are defined for booking an appointment.
Consumers can query by schedule id(s). The schedule ids can be obtained by querying for slots, which contain the
references to associated schedules. A schedule belongs to only one service or resource (actor) and does not contain any
information about actual appointments.

The following fields are returned if valued:

* [Schedule id](http://hl7.org/fhir/dstu2/resource-definitions.html#Resource.id){:target="_blank"}
* [Type](http://hl7.org/fhir/DSTU2/schedule-definitions.html#Schedule.type){:target="_blank"}
* [Actor](http://hl7.org/fhir/DSTU2/schedule-definitions.html#Schedule.actor){:target="_blank"}
* [Scheduling Location Extension](#extensions)

## Terminology Bindings

<%= terminology_table(:schedule, :dstu2) %>

## Extensions

* [Scheduling Location]

### Custom Extensions

All URLs for custom extensions are defined as `https://fhir-ehr.cerner.com/dstu2/StructureDefinition/{id}`

ID                         | Value\[x] Type         | Description
---------------------------|------------------------|----------------------------------------------------------------------------------
`scheduling-location`      | [`Reference`]          | Reference to the location corresponding to this schedule, where the appointment can be booked.

## Search

Search for Schedules that meet supplied query parameters:

    GET /Schedule?:parameters

### Authorization Types

<%= authorization_types(practitioner: true, patient: true, system: true) %>

### Parameters

 Name         | Required?                             | Type          | Description
--------------|---------------------------------------|---------------|------------------------------------------------------------------------------------
`_id`         | Y                                     | [`token`]     | The logical resource id associated with the resource.

### Headers

 <%= headers %>

### Example

#### Request

    GET https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Schedule?_id=21265426-633867-3121665-0,21265426-633867-3121665-15

#### Response
<%= headers status: 200 %>
<%= json(:dstu2_schedule_bundle) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual Schedule by its id:

    GET /Schedule/:id

### Authorization Types

<%= authorization_types(practitioner: true, patient: true, system: true) %>

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Schedule/21265426-633867-3121665-0

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_schedule_entry) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.


[`reference`]: http://hl7.org/fhir/DSTU2/search.html#reference
[`token`]: http://hl7.org/fhir/DSTU2/search.html#token
[`date`]: http://hl7.org/fhir/DSTU2/search.html#date
[`number`]: http://hl7.org/fhir/DSTU2/search.html#number
[`string`]: http://hl7.org/fhir/DSTU2/datatypes.html#string
[`CodeableConcept`]: http://hl7.org/fhir/DSTU2/datatypes.html#codeableconcept
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
[Scheduling Location]: #custom-extensions
