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

* Procedures in completed or aborted status are returned.

* Procedures in erroneous status are not returned.

* The Narrative includes additional information pertaining to the procedures, and should be shown to the user to ensure completeness of clinical content and context.

* 

### Parameters

 Name      | Required? | Type                                          | Description
-----------|-----------|-----------------------------------------------|------------------------------------------------------------------------
 patientId | Y         | [`reference`]                                 | The patient identifier provided in a pre-requisite authorization step.
 date      | N         | [`date`] as adjusted per implementation notes | Null or specific date or a date range.

Notes:

* See details regarding special [date][date-parameter] requirements.
* If the date parameter is null in the query, the API will return qualifying records with dates less than or equal to the date of the query as limited by the lesser of 1000 records or 30 days inclusive of the query date.
* If a single date parameter is used in the query, the response will include qualifying records dated that day as limited by 1000 records.  
* If a valid date range is used in the query, the API will return qualifying records within the dates specified as limited by the lesser of 1000 records or 30 days starting at the upper limit of the range.
* If a date range greater than 30 days is used in the query, the response will include qualifying records within the dates specified as limited by the lesser of 1000 records or 30 days starting at the upper limit of the range. In this case, the informational response in the narrative extension will indicate that the date range is greater than 30 days and should be refined.
* If an invalid date range is used in the query, the API will error with code [500] [common-errors]. Please refer to [Special information regarding date parameters] [date-parameter].

### Headers 

<%= headers %>

### Example

#### Request 

    GET https://fhir-myrecord.sandboxcerner.com/dstu2/123abc/Procedure?patientId=7568F2F3-FC76-4185-A540-1DB56331A387&date=%3E%3D2015-06-01T11%3A18%3A00&date=%3C2015-06-29T11%3A18%3A00
 
#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_PROCEDURE_ENTRY) %>

### Errors and Informational messages
The common [errors and informational messages][common-errors] can be returned.

These additional informational messages may be returned within the [bundle extension]:

Code    | Message
---------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 papi011 | This section represents data charted for a single or set of encounter’s procedures performed. It does not represent a comprehensive procedure list.
 papi012 | No procedure information is available.
 


[bundle extension]: ../../#bundle-message-extension
[errors section]: #errors-and-informational-messages
[`reference`]: http://hl7.org/fhir/DSTU2/search.html#reference
[`date`]: http://hl7.org/fhir/DSTU2/search.html#date
[common-errors]: ../../common-errors 
[date-parameter]: ../../#special-information-regarding-date-parameters