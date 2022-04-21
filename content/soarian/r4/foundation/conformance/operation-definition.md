---
title: OperationDefinition | R4 API
---

# OperationDefinition

* TOC
{:toc}

## Overview

The OperationDefinition resource defines an [operation](http://hl7.org/fhir/r4/operations.html). This includes the inputs, outputs, description, and other items necessary to actually execute the operation.

This resource only exposes the custom operations our server defines (group-export and patient-export). While the Health Level Seven<sup>®</sup> (HL7<sup>®</sup>) Fast Healthcare Interoperability Resources<sup>®</sup> (FHIR<sup>®</sup>) specification also supports describing named queries with this resource, we do not currently support any custom named queries.

The following fields are returned if valued:

* [Id](http://hl7.org/fhir/r4/resource-definitions.html#Resource.id){:target="_blank"}
* [Name](http://hl7.org/fhir/r4/operationdefinition-definitions.html#OperationDefinition.name){:target="_blank"}
* [Title](http://hl7.org/fhir/r4/operationdefinition-definitions.html#OperationDefinition.title){:target="_blank"}
* [Status](http://hl7.org/fhir/r4/operationdefinition-definitions.html#OperationDefinition.status){:target="_blank"}
* [URL](http://hl7.org/fhir/r4/operationdefinition-definitions.html#OperationDefinition.url){:target="_blank"}
* [Kind](http://hl7.org/fhir/r4/operationdefinition-definitions.html#OperationDefinition.kind){:target="_blank"}
* [Date](http://hl7.org/fhir/r4/operationdefinition-definitions.html#OperationDefinition.date){:target="_blank"}
* [Publisher](http://hl7.org/fhir/r4/operationdefinition-definitions.html#OperationDefinition.publisher){:target="_blank"}
* [Description](http://hl7.org/fhir/r4/operationdefinition-definitions.html#OperationDefinition.description){:target="_blank"}
* [Jurisdiction](https://hl7.org/fhir/operationdefinition-definitions.html#OperationDefinition.jurisdiction){:target="_blank"}
* [Code](http://hl7.org/fhir/r4/operationdefinition-definitions.html#OperationDefinition.code){:target="_blank"}
* [Resource](http://hl7.org/fhir/r4/operationdefinition-definitions.html#OperationDefinition.resource){:target="_blank"}
* [System](http://hl7.org/fhir/r4/operationdefinition-definitions.html#OperationDefinition.system){:target="_blank"}
* [Type](http://hl7.org/fhir/r4/operationdefinition-definitions.html#OperationDefinition.type){:target="_blank"}
* [Instance](http://hl7.org/fhir/r4/operationdefinition-definitions.html#OperationDefinition.instance){:target="_blank"}
* [Parameter](http://hl7.org/fhir/r4/operationdefinition-definitions.html#OperationDefinition.parameter){:target="_blank"}

## Search

List an individual operation by its supplied parameter: 

    GET /OperationDefinition?:parameters

_Implementation Notes_

* Authentication is not required to access the OperationDefinition resource

### Authorization Types

Authorization is not required.

### Headers

<%= headers head: {Accept: 'application/fhir+json, "application/json", "application/json+fhir"'} %>

### Example


#### Request

    GET https://fhir-ehr-sc.cerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/OperationDefinition?url=https://fhir-ehr-sc.cerner.com/r4/OperationDefinition/group-export

#### Response

<%= headers status: 200 %>
<%= json(:R4_OPERATION_DEFINITION_SEARCH) %>

## Retrieve by id

List an individual OperationDefinition by its id:

    GET /OperationDefinition/:id

_Implementation Notes_

* Authentication is not required to access the OperationDefinition resource
* This resource can be retrieved by its defining URL or from the OperationDefinition resource located at the [service root URL](../../#service-root-url). For example, both of these URLs work:

    `https://fhir-ehr.cerner.com/r4/OperationDefinition/binary-autogen-ccd-if`

    `https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/OperationDefinition/binary-autogen-ccd-if`


### Authorization Types

Authorization is not required.

### Headers

<%= headers head: {Accept: 'application/json+fhir, "application/json", "application/fhir+json"'} %>

### Example


#### Request

    GET https://https://fhir-ehr-sc.cerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/OperationDefinition/group-export

#### Response

<%= headers status: 200 %>
<%= json(:R4_OPERATION_DEFINITION_READ) %>

## List of OperationDefinitions

ID                                        |  Description
------------------------------------------|----------------------------------------------
`patient-export`                          |  FHIR® operation to obtain a detailed set of FHIR® resources of diverse resource types      pertaining to all patients. 
`group-export`                            |  FHIR® operation to obtain a detailed set of FHIR® resources of diverse resource types that  pertain to all patients in a specified group.  patients in specified Group.
