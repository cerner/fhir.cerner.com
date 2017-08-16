---
title: Slot | DSTU 2 API
---

# Slot

* TOC
{:toc}

## Overview

The Slot resource provides time slots on a schedule used for booking an appointment. Currently, only free slots are supported. This resource is used to obtain the schedule ids in order to query for the schedules. Slots contain no information about actual appointments; only availability and type.
<br/><br/>
The following fields are returned if valued:

* [Slot id](http://hl7.org/fhir/dstu2/resource-definitions.html#Resource.id){:target="_blank"}
* [Type](http://hl7.org/fhir/DSTU2/slot-definitions.html#Slot.type){:target="_blank"}
* [Schedule](http://hl7.org/fhir/DSTU2/slot-definitions.html#Slot.schedule){:target="_blank"}
* [Start](http://hl7.org/fhir/DSTU2/slot-definitions.html#Slot.start){:target="_blank"}
* [End](http://hl7.org/fhir/DSTU2/slot-definitions.html#Slot.end){:target="_blank"}
* [Free-Busy Type](http://hl7.org/fhir/DSTU2/slot-definitions.html#Slot.freeBusyType){:target="_blank"}
* [Scheduling Location Extension](#extensions)

## Terminology Bindings

<%= terminology_table(:slot, :dstu2) %>

## Extensions

* [Scheduling Location]

### Custom Extensions

All URLs for custom extensions are defined as `https://fhir-ehr.cerner.com/dstu2/StructureDefinition/{id}`

ID                         | Value\[x] Type         | Description
---------------------------|------------------------|-----------------------------------------------------------------------------------------------
`scheduling-location`      | [`Reference`]          | Reference to the location corresponding to this schedule, where the appointment can be booked.

## Search

Search for Schedules that meet supplied query parameters:

    GET /Slot?:parameters

### Authorization Types

<%= authorization_types(practitioner: true, patient: true, system: true) %>

### Parameters

 Name             | Required?                                                        | Type           | Description
------------------|------------------------------------------------------------------|----------------|------------------------------------------------------------------------------------
`_id`             | This, or `slot-type`                                             | [`token`]      | The logical resource id associated with the resource.
`slot-type`       | Yes when using `schedule.actor` and\or `-location`, or `id`      | [`token`]      | The type of appointments that can be booked into this slot. Example: `12345`
`schedule.actor`  | This and `slot-type`, or `id`                                    | [`reference`]  | A single or comma separated list of Practitioner references. Example: `Practitioner/12345`
`-location`       | This and `slot-type`, or `id`                                    | [`reference`]  | A single or comma separated list of Location references. Example: `12345`
`date`            | Yes when using `slot-type`                                       | [`date`]       | The Slot date-time. Example: `2016`
[`_count`]        | No                                                               | [`number`]     | The maximum number of results to be returned per page. Defaults to `50`.

Notes:   

- The `slot-type`, `schedule.actor`, and `-location` parameters may be included only once.
  For example, `-location=1234,9876` is supported but `-location=1234&-location=9876`
- `slot-type` is a required search parameter and must be specified along with `schedule.actor` and\or `-location`
  For example, `type=1234&-location=9876` and `type=1234&-location=95671&schedule.actor=9876` are supported but `-location=9876` and `-location=95671&schedule.actor=9876` are not.

- The `date` parameter may be provided:  
  - once without a prefix or time component to imply a date range. (e.g. `&date=2016`, `&date=2016-07`, `&date=2016-07-04`) 
  - twice with the prefixes `ge` and `lt` to indicate a specific range. The date and prefix pairs must define
    an upper and lower bound. (e.g. `&date=ge2014&date=lt2016`, `&date=ge2016-07&date=lt2017-07`)   


### Headers

 <%= headers %>

### Example

#### Request

    GET https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Slot?_id=166627791-4048128-9331486-0

#### Response
<%= headers status: 200 %>
<%= json(:dstu2_slot_bundle) %>

### Errors

The common [errors] may be returned.

## Retrieve by id

List an individual Schedule by its id:

    GET /Slot/:id

### Authorization Types

<%= authorization_types(practitioner: true, patient: true, system: true) %>

### Headers

<%= headers %>

### Example

#### Request

    GET  https://fhir-open.sandboxcerner.com/dstu2/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Slot/166627791-4048128-9331486-0

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_slot_entry) %>

### Errors

The common [errors] may be returned.


[`reference`]: http://hl7.org/fhir/DSTU2/search.html#reference
[`token`]: http://hl7.org/fhir/DSTU2/search.html#token
[`date`]: http://hl7.org/fhir/DSTU2/search.html#date
[`number`]: http://hl7.org/fhir/DSTU2/search.html#number
[`_count`]: http://hl7.org/fhir/DSTU2/search.html#count
[`string`]: http://hl7.org/fhir/DSTU2/datatypes.html#string
[`CodeableConcept`]: http://hl7.org/fhir/DSTU2/datatypes.html#codeableconcept
[errors]: ../../#client-errors
[Scheduling Location]: #custom-extensions
