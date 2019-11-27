---
title: Organization | R4 API
---

# Organization

* TOC
{:toc}

## Overview

The Organization resource describes a grouping of people or business entities relevant to the healthcare process.  Organizations include hospitals, employers, insurance companies, physicians’ offices, rehabilitation facilities, laboratories, etc.

The following fields are returned if valued:

* [Organization Identifier](https://hl7.org/fhir/r4/organization-definitions.html#Organization.identifier){:target="_blank"}
* [Active](https://hl7.org/fhir/r4/organization-definitions.html#Organization.active){:target="_blank"}
* [Type](https://hl7.org/fhir/r4/organization-definitions.html#Organization.type){:target="_blank"}
* [Name](https://hl7.org/fhir/r4/organization-definitions.html#Organization.name){:target="_blank"}
* [Contact Information]( https://hl7.org/fhir/r4/organization-definitions.html#Organization.telecom){:target="_blank"}
* [Address]( https://hl7.org/fhir/r4/organization-definitions.html#Organization.address){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:organization, :r4) %>

## Search

Search for Organization that meet supplied query parameters:

    GET /Organization?:parameters

### Authorization Types

<%= authorization_types(practitioner: true, patient: false, system: true) %>

### Parameters

 Name        | Required?           | Type      | Description
-------------|---------------------|-----------|----------------------------------------------------------
 `_id`       | This or 'identifier'| [`token`] | The logical resource id associated with the resource.
 `identifier`| This or '_id'       | [`token`] | NPI, OID or FederalTAXID identifier for the organization.


### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Organization?_id=1750115

#### Response

<%= headers status: 200 %>
<%= json(:r4_organization_bundle) %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual Organization by its id:

    GET /Organization/:id

### Authorization Types

<%= authorization_types(practitioner: true, patient: false, system: true) %>

### Headers

<%= headers fhir_json: true %>

### Example

#### Request

    GET https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Organization/2113010

#### Response

<%= headers status: 200 %>
<%= json(:r4_organization_entry) %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`token`]: http://hl7.org/fhir/r4/search.html#token
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes

