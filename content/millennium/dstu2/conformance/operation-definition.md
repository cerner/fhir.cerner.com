---
title: OperationDefinition | DSTU 2 API
---

# OperationDefinition

* TOC
{:toc}

## Overview

The OperationDefinition resource defines an [operation](http://hl7.org/fhir/dstu2/operations.html). This includes the inputs, outputs, description, and other items necessary to actually execute the operation.

This resource only exposes the custom operations our server defines. Operations that are defined as part of another implementation guide are referenced directly instead of being duplicated within this server. While the HL7 FHIR<sup>®</sup> specification also supports describing named queries with this resource, we do not currently support any custom named queries.

The following fields are returned if valued:

* [Id](http://hl7.org/fhir/dstu2/resource-definitions.html#Resource.id){:target="_blank"}
* [URL](http://hl7.org/fhir/dstu2/operationdefinition-definitions.html#OperationDefinition.url){:target="_blank"}
* [Informal name](http://hl7.org/fhir/dstu2/operationdefinition-definitions.html#OperationDefinition.name){:target="_blank"}
* [Formal name](http://hl7.org/fhir/dstu2/operationdefinition-definitions.html#OperationDefinition.code){:target="_blank"}
* [Status](http://hl7.org/fhir/dstu2/operationdefinition-definitions.html#OperationDefinition.status){:target="_blank"}
* [Kind](http://hl7.org/fhir/dstu2/operationdefinition-definitions.html#OperationDefinition.kind){:target="_blank"}
* [Name of publisher](http://hl7.org/fhir/dstu2/operationdefinition-definitions.html#OperationDefinition.publisher){:target="_blank"}
* [Date published](http://hl7.org/fhir/dstu2/operationdefinition-definitions.html#OperationDefinition.date){:target="_blank"}
* [Description](http://hl7.org/fhir/dstu2/operationdefinition-definitions.html#OperationDefinition.description){:target="_blank"}
* [Whether or not the operation can be invoked without a Resource](http://hl7.org/fhir/dstu2/operationdefinition-definitions.html#OperationDefinition.system){:target="_blank"}
* [Which resource types this operation can be invoked on](http://hl7.org/fhir/dstu2/operationdefinition-definitions.html#OperationDefinition.type){:target="_blank"}
* [Whether or not the operation can be invoked on a specific instance of the resource above](http://hl7.org/fhir/dstu2/operationdefinition-definitions.html#OperationDefinition.instance){:target="_blank"}
* [Parameters (both in and out) and cardinality details](http://hl7.org/fhir/dstu2/operationdefinition-definitions.html#OperationDefinition.parameter){:target="_blank"}

_List of OperationDefinitions_

* `binary-autogen-ccd-if`: Generate Continuity of Care Document (CCD)


## Retrieve by id

List an individual OperationDefinition by its id:

    GET /OperationDefinition/:id

_Implementation Notes_

* Authentication is not required to access the OperationDefinition resource
* This resource can be retrieved by its defining URL or from the OperationDefinition resource located at the [service root URL](../../#service-root-url). For example, both of these URLs work:

    `https://fhir-ehr.cerner.com/dstu2/OperationDefinition/binary-autogen-ccd-if`

    `https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/OperationDefinition/binary-autogen-ccd-if`


### Authorization Types

Authorization is not required.

<%= authorization_types(provider: true, patient: true, system: true) %>

### Headers

<%= headers head: {Accept: 'application/json+fhir'} %>

### Example


#### Request

    GET https://fhir-ehr.cerner.com/dstu2/OperationDefinition/binary-autogen-ccd-if

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_operation_definition_bundle) %>
