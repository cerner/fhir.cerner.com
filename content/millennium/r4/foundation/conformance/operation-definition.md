---
title: OperationDefinition | R4 API
---

# OperationDefinition

* TOC
{:toc}

## Overview

The OperationDefinition resource defines an [operation](http://hl7.org/fhir/r4/operations.html). This includes the inputs, outputs, description, and other items necessary to actually execute the operation.

This resource only exposes the custom operations our server defines. Operations that are defined as part of another implementation guide are referenced directly instead of being duplicated within this server. While the HL7<sup>®</sup> FHIR<sup>®</sup> specification also supports describing named queries with this resource, we do not currently support any custom named queries.

The following fields are returned if valued:

* [Id](http://hl7.org/fhir/r4/resource-definitions.html#Resource.id){:target="_blank"}
* [URL](http://hl7.org/fhir/r4/operationdefinition-definitions.html#OperationDefinition.url){:target="_blank"}
* [Name](http://hl7.org/fhir/r4/operationdefinition-definitions.html#OperationDefinition.name){:target="_blank"}
* [Title](http://hl7.org/fhir/r4/operationdefinition-definitions.html#OperationDefinition.title){:target="_blank"}
* [Status](http://hl7.org/fhir/r4/operationdefinition-definitions.html#OperationDefinition.status){:target="_blank"}
* [Kind](http://hl7.org/fhir/r4/operationdefinition-definitions.html#OperationDefinition.kind){:target="_blank"}
* [Date](http://hl7.org/fhir/r4/operationdefinition-definitions.html#OperationDefinition.date){:target="_blank"}
* [Publisher](http://hl7.org/fhir/r4/operationdefinition-definitions.html#OperationDefinition.publisher){:target="_blank"}
* [Description](http://hl7.org/fhir/r4/operationdefinition-definitions.html#OperationDefinition.description){:target="_blank"}
* [Code](http://hl7.org/fhir/r4/operationdefinition-definitions.html#OperationDefinition.code){:target="_blank"}
* [Resource](http://hl7.org/fhir/r4/operationdefinition-definitions.html#OperationDefinition.resource){:target="_blank"}
* [System](http://hl7.org/fhir/r4/operationdefinition-definitions.html#OperationDefinition.system){:target="_blank"}
* [Type](http://hl7.org/fhir/r4/operationdefinition-definitions.html#OperationDefinition.type){:target="_blank"}
* [Instance](http://hl7.org/fhir/r4/operationdefinition-definitions.html#OperationDefinition.instance){:target="_blank"}
* [Parameter](http://hl7.org/fhir/r4/operationdefinition-definitions.html#OperationDefinition.parameter){:target="_blank"}

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

<%= authorization_types(provider: true, patient: true, system: true) %>

### Headers

<%= headers head: {Accept: 'application/fhir+json'} %>

### Example


#### Request

    GET https://fhir-ehr.cerner.com/r4/OperationDefinition/binary-autogen-ccd-if

#### Response

<%= headers status: 200 %>
<%= json(:r4_operation_definition_bundle) %>

## List of OperationDefinitions

ID                                        |  Description
------------------------------------------|----------------------------------------------
[`binary-autogen-ccd-if`]                 |  Generates a copy of a patient's Continuity of Care Document (CCD) as a Binary.
[`organization-get-cg-for-mrcu`]          |  Retrieves details for a caregiver organization given a care unit organization id.

[`binary-autogen-ccd-if`]: https://fhir-ehr.cerner.com/r4/OperationDefinition/binary-autogen-ccd-if?_format=json
[`organization-get-cg-for-mrcu`]: https://fhir-ehr.cerner.com/r4/OperationDefinition/organization-get-cg-for-mrcu?_format=json
