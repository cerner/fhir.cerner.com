---
title: StructureDefinition | DSTU 2 API
---

# StructureDefinition

* TOC
{:toc}

## Overview

The StructureDefinition resource describes a FHIR structure including data elements and their usage. Our current implementation uses this resource to define custom extensions.

The following fields are returned if valued:

* [Id](http://hl7.org/fhir/dstu2/resource-definitions.html#Resource.id){:target="_blank"}
* [Publisher](http://hl7.org/fhir/DSTU2/structuredefinition-definitions.html#StructureDefinition.publisher){:target="_blank"}
* [Snapshot](http://hl7.org/fhir/DSTU2/structuredefinition-definitions.html#StructureDefinition.snapshot){:target="_blank"}
* [Date](http://hl7.org/fhir/DSTU2/structuredefinition-definitions.html#StructureDefinition.date){:target="_blank"}
* [Fhir version](http://hl7.org/fhir/DSTU2/structuredefinition-definitions.html#StructureDefinition.fhirVersion){:target="_blank"}
* [Constrained type](http://hl7.org/fhir/DSTU2/structuredefinition-definitions.html#StructureDefinition.constrainedType){:target="_blank"}
* [Description](http://hl7.org/fhir/DSTU2/structuredefinition-definitions.html#StructureDefinition.description){:target="_blank"}
* [Status](http://hl7.org/fhir/DSTU2/structuredefinition-definitions.html#StructureDefinition.status){:target="_blank"}
* [Context type](http://hl7.org/fhir/DSTU2/structuredefinition-definitions.html#StructureDefinition.contextType){:target="_blank"}
* [Context](http://hl7.org/fhir/DSTU2/structuredefinition-definitions.html#StructureDefinition.context){:target="_blank"}
* [URL](http://hl7.org/fhir/DSTU2/structuredefinition-definitions.html#StructureDefinition.url){:target="_blank"}
* [Kind](http://hl7.org/fhir/DSTU2/structuredefinition-definitions.html#StructureDefinition.kind){:target="_blank"}
* [Differential](http://hl7.org/fhir/DSTU2/structuredefinition-definitions.html#StructureDefinition.differential){:target="_blank"}
* [Abstract](http://hl7.org/fhir/DSTU2/structuredefinition-definitions.html#StructureDefinition.abstract){:target="_blank"}
* [Base](http://hl7.org/fhir/DSTU2/structuredefinition-definitions.html#StructureDefinition.base){:target="_blank"}
* [Name](http://hl7.org/fhir/DSTU2/structuredefinition-definitions.html#StructureDefinition.name){:target="_blank"}

## Retrieve by id

List an individual StructureDefinition by its id:

    GET /StructureDefinition/:id

_Implementation Notes_

* Authentication is not required to access the StructureDefinition resource
* This resource can be retrieved by its defining URL or from the StructureDefinition resource located at the [service root URL](../../#service-root-url). For example, both of these URLs work:

    `https://fhir-ehr.cerner.com/dstu2/StructureDefinition/patient-friendly-display`

    `https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/StructureDefinition/patient-friendly-display`

### Authorization Types

Authorization is not required.

<%= authorization_types(provider: true, patient: true, system: true) %>

### Headers

<%= headers head: {Accept: 'application/json+fhir'} %>

### Example


#### Request

    GET https://fhir-ehr.cerner.com/dstu2/StructureDefinition/patient-friendly-display

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_structure_definition_bundle) %>

<%= disclaimer %>

## List of StructureDefinitions

ID                                |  Description
----------------------------------|----------------------------------------------
[`patient-friendly-display`]      |  Display string suitable for patient viewing.
[`scheduling-location`]           |  Reference to the location of an appointment being scheduled.
[`medication-statement-category`] |  Category of an order.
[`encounter-guarantor`]           |  The guarantors of an encounter. Contains a reference to a Patient, Person, or Organization and a period when the guarantor is effective.

[`patient-friendly-display`]: https://fhir-ehr.cerner.com/dstu2/StructureDefinition/patient-friendly-display?_format=json
[`scheduling-location`]: https://fhir-ehr.cerner.com/dstu2/StructureDefinition/scheduling-location?_format=json
[`medication-statement-category`]: https://fhir-ehr.cerner.com/dstu2/StructureDefinition/medication-statement-category?_format=json
[`encounter-guarantor`]: https://fhir-ehr.cerner.com/dstu2/StructureDefinition/encounter-guarantor?_format=json
