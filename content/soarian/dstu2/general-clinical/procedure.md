---
title: Procedure | Soarian DSTU 2 API
---

# Procedure

* TOC
{:toc}

## Overview

The API returns procedures charted in Soarian Clinicals. Procedures in completed or aborted status are returned; procedures in erroneous status are not returned. Note that traditional charting practices have procedures resolved and charted in coding and billing systems and not interfaced back to the EMR; therefore, the procedure record in Soarian may not be complete nor precise to a procedure list provided as part of a patient's billing record.

## Terminology Bindings

<%= terminology_table(:soarian_procedure, :dstu2) %>

## Custom Extensions

The [bundle extension] can be returned, see possible codes in the [errors section] below.

## Search

    GET /Procedure?:parameters

_Implementation Notes_

* The API returns the most current procedure list.
* The API returns procedures in a `completed` or `aborted` status. It will not return procedures marked as `entered-in-error`.
* The Narrative includes additional information pertaining to the procedures, and should be shown to the user to ensure completeness of clinical content and context.

### Parameters

 Name      | Required? | Type                                          | Description
-----------|-----------|-----------------------------------------------|------------------------------------------------------------------------
 patientId | Y         | [`reference`]                                 | The patient identifier provided in a pre-requisite authorization step.
 date      | N         | [`date`] as adjusted per implementation notes | Null or specific date or a date range.

Notes:

* See details regarding special [date][date-parameter] requirements.
* If the date parameter is null in the query, the API will return all qualifying records.
* If a single date parameter is used in the query, the response will include all qualifying records dated that day.
* If a valid date range is used in the query, the API will return all qualifying records within the dates specified.
* If an invalid date range is used in the query, the API will error with code [500][common-errors]. Please refer to [Special information regarding date parameters][date-parameter].
* Developers are strongly encouraged to specify date ranges to prevent an inordinate number of records from being returned.

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-myrecord.sandboxcerner.com/dstu2/123abc/Procedure?patientId=D4292B7B-AEDF-4CEF-B783-BD3AA1B0DD27

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_PROCEDURE_ENTRY) %>

### Errors and Informational messages

The common [errors and informational messages][common-errors] can be returned.

These additional informational messages may be returned within the [bundle extension]:

 Code    | Message
---------|-----------------------------------------------------------------------------------------------------------------------------------------------------
 papi011 | This section represents data charted for a single or set of encounter’s procedures performed. It does not represent a comprehensive procedure list.
 papi012 | No procedure information is available.
 papi028 | Provides the date range that had start date as null.
 papi029 | Provides the date range that was used to run the search.

[bundle extension]: ../../#bundle-message-extension
[errors section]: #errors-and-informational-messages
[`reference`]: http://hl7.org/fhir/DSTU2/search.html#reference
[`date`]: http://hl7.org/fhir/DSTU2/search.html#date
[common-errors]: ../../common-errors
[date-parameter]: ../../#special-information-regarding-date-parameters
