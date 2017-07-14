---
title: DiagnosticReport | Soarian DSTU 2 API
---
 
# DiagnosticReport

* TOC
{:toc}

## Overview

For the DiagnosticReport resource query, the API returns test names and result values for test types that the Soarian client has configured as appropriate for the API.  The ONC (Office of the National Coordinator) CCDS (common clinical data set) definition includes laboratory tests and values, however, clients may configure additional qualifying test types such as radiology, cardiology, etc.  The configuration of qualifying test types is a single configuration that applies to both the API and the Consolidated Clinical Document Architecture (C-CDA) document available to the patients. 

The API returns the test names and values in reverse chronological order by result date and, within that, the sequence that is configured in the Soarian flowsheet that defines the qualified tests.  Qualified results of status Final, Corrected, or Cannot Obtain are returned.  Result values of numeric or text are returned; image only results, including those encapsulated in non-text formats such as pdf, are not returned.  Since each result is individually dated and the value is unambiguously relevant for that date, this resource supports date-based queries.

## Terminology Bindings      

<%= terminology_table(:soarian_diagnostic_report, :dstu2) %>

## Custom Extensions
The [bundle extension] can be returned, see possible codes in the [errors section] below.

## Search

    GET /DiagnosticReport?:parameters
    
_Implementation Notes_

* The API returns qualifying results dated within the implicit or explicitly defined date query parameter.  For response time, response may be limited to 1000 records.  For any non-null response, the API will provide the informational message including the record dates included in the response.  This informational message may be augmented with further detail if noted below.    
* The API will return reports with a status of `final` and `corrected`. It will not return reports marked as `entered-in-error`. 
* The Narrative includes additional information pertaining to the results, and should be shown to the user to ensure completeness of clinical content and context.

### Parameters

|Name |Required? | Type | Description
| --- | --- | --- | --- |
| patientId | Y | [reference](http://hl7.org/fhir/DSTU2/search.html#reference) | The patient identifier provided in a pre-requisite authorization step. |
| date | N | [date](http://hl7.org/fhir/DSTU2/search.html#date) as adjusted per implementation notes | Null or specific date or a date range. |

Notes:

* See details regarding special [date](../../#special-information-regarding-date-parameters) requirements.
* If the query date parameter is null in the query, the API will return qualifying records with dates less than or equal to the date of query as limited by the lesser of 1000 records or 30 days inclusive of the query date.  
* If a single date parameter is included, the response will include qualifying records dated that day as limited by 1000 records.  
* If a valid date range is used in the query, the API will return qualifying records within the dates specified as limited by the lesser of 1000 records or 30 days starting at the upper limit date specified.
* If a date range is used greater than 30 days, the response will include qualifying records within the dates specified as limited by the lesser of 1000 records or 30 days starting at the upper limit date specified and include in the informational response in the narrative extension that the date range entered is greater than 30 days and please refine your response.
* If an invalid date range is specified in the query, the API will error.

### Headers 

<%= headers %>

### Example   

#### Request   

    GET https://fhir-myrecord.sandboxcerner.com/dstu2/123abc/DiagnosticReport?patientId=1FNHDJ60-D6A1-441F-AA25-FB6FA6719CEA&date=%3E%3D2015-06-01T11%3A55%3A00&date=%3C2015-06-29T11%3A55%3A00
    
#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_DIAGNOSTIC_REPORT_BUNDLE) %>

### Errors and Informational messages

The common [errors and informational messages](../../common-errors) can be returned.

These additional informational messages may be returned within the [bundle extension]:

| Code | Message |
| --- | --- |
| papi008 | No relevant clinical data exists.|
| papi029 | Provides the date range that was used to run the search.|   

[bundle extension]: ../../#bundle-message-extension
[errors section]: #errors-and-informational-messages
