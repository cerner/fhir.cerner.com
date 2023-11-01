---
title: StructureDefinition | DSTU 2 API
---

# StructureDefinition

* TOC
{:toc}

## Overview

The StructureDefinition resource describes a FHIR structure including data elements and their usage. This resource is used to define custom extensions.

The following fields are returned if valued:

* [ID](https://hl7.org/fhir/dstu2/resource-definitions.html#Resource.id){:target="_blank"}
* [Publisher](https://hl7.org/fhir/DSTU2/structuredefinition-definitions.html#StructureDefinition.publisher){:target="_blank"}
* [Snapshot](https://hl7.org/fhir/DSTU2/structuredefinition-definitions.html#StructureDefinition.snapshot){:target="_blank"}
* [Date](https://hl7.org/fhir/DSTU2/structuredefinition-definitions.html#StructureDefinition.date){:target="_blank"}
* [FHIR version](https://hl7.org/fhir/DSTU2/structuredefinition-definitions.html#StructureDefinition.fhirVersion){:target="_blank"}
* [Constrained type](https://hl7.org/fhir/DSTU2/structuredefinition-definitions.html#StructureDefinition.constrainedType){:target="_blank"}
* [Description](https://hl7.org/fhir/DSTU2/structuredefinition-definitions.html#StructureDefinition.description){:target="_blank"}
* [Status](https://hl7.org/fhir/DSTU2/structuredefinition-definitions.html#StructureDefinition.status){:target="_blank"}
* [Context type](https://hl7.org/fhir/DSTU2/structuredefinition-definitions.html#StructureDefinition.contextType){:target="_blank"}
* [Context](https://hl7.org/fhir/DSTU2/structuredefinition-definitions.html#StructureDefinition.context){:target="_blank"}
* [URL](https://hl7.org/fhir/DSTU2/structuredefinition-definitions.html#StructureDefinition.url){:target="_blank"}
* [Kind](https://hl7.org/fhir/DSTU2/structuredefinition-definitions.html#StructureDefinition.kind){:target="_blank"}
* [Differential](https://hl7.org/fhir/DSTU2/structuredefinition-definitions.html#StructureDefinition.differential){:target="_blank"}
* [Abstract](https://hl7.org/fhir/DSTU2/structuredefinition-definitions.html#StructureDefinition.abstract){:target="_blank"}
* [Base](https://hl7.org/fhir/DSTU2/structuredefinition-definitions.html#StructureDefinition.base){:target="_blank"}
* [Name](https://hl7.org/fhir/DSTU2/structuredefinition-definitions.html#StructureDefinition.name){:target="_blank"}

## Retrieve by ID

List an individual StructureDefinition by its ID:

    GET /StructureDefinition/:id

_Implementation Notes_

* Authentication is not required to access the StructureDefinition resource.
* This resource can be retrieved by its defining URL or from the StructureDefinition resource located at the [service root URL](../../#service-root-url). For example, both of these URLs work:

    `https://fhir-ehr.cerner.com/dstu2/StructureDefinition/patient-friendly-display`

    `https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/StructureDefinition/patient-friendly-display`

### Authorization Types

Authorization is not required.

### Headers

<%= headers head: {Accept: 'application/json+fhir'} %>

### Example

#### Request

    GET https://fhir-ehr.cerner.com/dstu2/StructureDefinition/patient-friendly-display

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_structure_definition_bundle) %>

## List of StructureDefinitions

ID                                |  Description
----------------------------------|----------------------------------------------
[`patient-friendly-display`]      |  Display string suitable for patient viewing.
[`scheduling-location`]           |  Reference to the location of an appointment being scheduled.
[`medication-statement-category`] |  Category of an order.
[`infuse-over-time`]              |  The length of time in minutes it took to infuse a medication.
[`encounter-guarantor`]           |  The guarantors of an encounter. Contains a reference to a Patient, Person, or Organization and a period when the guarantor is effective.

[`patient-friendly-display`]: https://fhir-ehr.cerner.com/dstu2/StructureDefinition/patient-friendly-display?_format=json
[`scheduling-location`]: https://fhir-ehr.cerner.com/dstu2/StructureDefinition/scheduling-location?_format=json
[`medication-statement-category`]: https://fhir-ehr.cerner.com/dstu2/StructureDefinition/medication-statement-category?_format=json
[`infuse-over-time`]: https://fhir-ehr.cerner.com/dstu2/StructureDefinition/infuse-over-time?_format=json
[`encounter-guarantor`]: https://fhir-ehr.cerner.com/dstu2/StructureDefinition/encounter-guarantor?_format=json
