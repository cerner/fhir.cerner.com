---
title: Provenance | R4 API
---

# Provenance

* TOC
{:toc}

## Overview

The Provenance resource tracks the source of data and is used to assess the trustworthiness and reliability of a resource. 
Soarian Clinicals<sup>®</sup> supports a read-only Application Programming Interface (API). This resource only accepts GET based [read] interaction.

The following fields are returned if valued:

* [Provenance id](https://hl7.org/fhir/R4/resource-definitions.html#Resource.id){:target="_blank"}
* [Target](https://hl7.org/fhir/R4/provenance-definitions.html#Provenance.target){:target="_blank"}
* [Recorded](https://hl7.org/fhir/R4/provenance-definitions.html#Provenance.recorded){:target="_blank"}
* [Agent type (author or transmitter)](https://hl7.org/fhir/R4/provenance-definitions.html#Provenance.agent.type){:target="_blank"}
* [Agent who (Practitioner, Device, or Organization)](https://hl7.org/fhir/R4/provenance-definitions.html#Provenance.agent.who){:target="_blank"}
* [Agent on behalf of](https://hl7.org/fhir/R4/provenance-definitions.html#Provenance.agent.onBehalfOf){:target="_blank"}


## Terminology Bindings

<%= terminology_table(:soarian_provenance, :r4) %>

## Retrieve by ID

List an individual Provenance by its ID:

    GET /Provenance/:id

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-myrecord-sc.cerner.com/r4/2f8f5ec1-b7b8-4be5-ae27-e308284dd9c1/Provenance/GO.A879904FD2FE4B2D90C89FDA84E1285F.NRS.43083

#### Response

<%= headers status: 200 %>
<%= json(:SOARIAN_R4_PROVENANCE_READ) %>

Note: The examples provided here are non-normative and replaying them in the public sandbox is not guaranteed to yield the results shown on the site.

### Errors

* The common [errors] and [OperationOutcomes] may be returned.

[read]: https://www.hl7.org/fhir/http.html#read
[errors]: ../../#client-errors
[OperationOutcomes]: https://hl7.org/fhir/R4/operationoutcome.html
