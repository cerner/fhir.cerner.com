---
title: Condition | Soarian DSTU 2 API
---
 
# Condition

* TOC
{:toc}

## Overview

For the Condition resource query, the API returns a consolidated list of conditions that providers have charted in the Soarian Problem List.  

Problems returned may be in an active, inactive, or resolved state. Problems marked erroneous are not returned. Problems and their problem details depend on client configuration and charting practice. Problems returned include free text problems and structured problems configured in the clinical care category.  The narrative response returns data as charted and may be more robust than the structured response. 


## Terminology Bindings  

<%= terminology_table(:soarian_condition, :dstu2) %>

## Custom Extensions
The [bundle extension] can be returned, see possible codes in the [errors section] below.

## Search           

    GET /Condition?:parameters

_Implementation Notes_

* The API returns the most current charted problem list. 
* The API returns conditions in `active`, `inactive`, and `resolved` statuses. It will not return conditions marked as `entered-in-error`.
* The Narrative represents the entire condition and contains information that is not included in the structured portion of the response. As such, it should be shown to the user to ensure completeness of clinical content and context.
* The status entry in the narrative is valued “Additional” indicating that more information is provided in the narrative than is provided in the structure. Therefore, if the Application is using the structured entries for any purpose, care must be taken to ensure the clinical content/context of the narrative is preserved.

### Parameters      

|Name |Required? | Type | Description
| --- | --- | --- | --- |
| patientId | Y | [reference](http://hl7.org/fhir/DSTU2/search.html#reference) | The patient identifier provided in a pre-requisite authorization step. |

### Headers  

<%= headers %>   

### Example

#### Request

    GET https://fhir-myrecord.sandboxcerner.com/dstu2/123abc/Condition?patientId=1FNHDJ60-D6A1-441F-AA25-FB6FA6719CEA

#### Response
 
<%= headers status: 200 %>
<%= json(:SOARIAN_CONDITION_BUNDLE) %>

### Errors and Informational messages

The common [errors and informational messages](../../common-errors) can be returned.

These additional informational messages may be returned within the [bundle extension]:

| Code | Message |
| --- | --- |
| papi005 | This is the most current, known Problem list and may not reflect the state of problems known at a previous date.|
| papi006 | No relevant problems exist.|   

[bundle extension]: ../../#bundle-message-extension
[errors section]: #errors-and-informational-messages