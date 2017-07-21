---
title: Schedule | DSTU 2 API
---

# Schedule

* TOC
{:toc}

## Overview

Schedule resources provide a container for time-slots that can be booked using an appointment. It provides the window of time (period) that slots are defined for and what type of appointments can be booked.
<br/><br/>
The following fields are returned if valued:

* [Type](http://hl7.org/fhir/DSTU2/schedule-definitions.html#Schedule.type){:target="_blank"}
* [Actor](http://hl7.org/fhir/DSTU2/schedule-definitions.html#Schedule.actor){:target="_blank"}
* [Location Extension](#extensions)

## Terminology Bindings

<%= terminology_table(:schedule, :dstu2) %>

## Extensions

* [Location]

### Custom Extensions

All URLs for custom extensions are defined as `https://fhir-ehr.cerner.com/dstu2/StructureDefinition/{id}`

ID             | Value\[x] Type    | Description
---------------|-------------------|----------------------------------------------------------------------------------
`location`      | [`Reference`]          | Reference to the location corresponding to this schedule, where the appointment can be booked.

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

    GET https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Schedule?_id=166627791-4048128-9331486-0

#### Response
<%= headers status: 200 %>
<%= json(:dstu2_schedule_bundle) %>

### Errors

The common [errors] may be returned.

## Retrieve by id

List an individual Schedule by its id:

    GET /Schedule/:id

### Authorization Types

<%= authorization_types(practitioner: true, patient: true, system: true) %>

### Headers

<%= headers %>

### Example

#### Request

    GET  https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Schedule/166627791-4048128-9331486-0

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_schedule_entry) %>

### Errors

The common [errors] may be returned.


[`reference`]: http://hl7.org/fhir/DSTU2/search.html#reference
[`token`]: http://hl7.org/fhir/DSTU2/search.html#token
[`date`]: http://hl7.org/fhir/DSTU2/search.html#date
[`number`]: http://hl7.org/fhir/DSTU2/search.html#number
[`string`]: http://hl7.org/fhir/DSTU2/datatypes.html#string
[`CodeableConcept`]: http://hl7.org/fhir/DSTU2/datatypes.html#codeableconcept
[errors]: ../../#client-errors
[Location]: #custom-extensions
