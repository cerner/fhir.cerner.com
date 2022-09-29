---
title: Contract | DSTU 2 API
---

# Contract

* TOC
{:toc}

## Overview

The Contract resource is currently limited to representing people who are authorized to view a patient's data. For this reason, contract type, subtype, action and reason are always set to values related to consent for EHR sharing. The subject of the contract is the patient. The actors on the contract are the related people who are authorized to view the subject patient's data. An example is a contract authorizing a mother (actor) to view her child's data (subject).

The following fields are returned if valued:

* [Contract id](http://hl7.org/fhir/dstu2/resource-definitions.html#Resource.id){:target="_blank"}
* [Effective date](http://hl7.org/fhir/DSTU2/contract-definitions.html#Contract.applies){:target="_blank"}
* [Subject (patient)](http://hl7.org/fhir/DSTU2/contract-definitions.html#Contract.subject){:target="_blank"}
* [Contract type](http://hl7.org/fhir/DSTU2/contract-definitions.html#Contract.type){:target="_blank"}
* [Contract subtype](http://hl7.org/fhir/DSTU2/contract-definitions.html#Contract.subType){:target="_blank"}
* [Action](http://hl7.org/fhir/DSTU2/contract-definitions.html#Contract.action){:target="_blank"}
* [Reason](http://hl7.org/fhir/DSTU2/contract-definitions.html#Contract.actionReason){:target="_blank"}
* [Actor (related person)](http://hl7.org/fhir/DSTU2/contract-definitions.html#Contract.term.actor.entity){:target="_blank"}
* [Role](http://hl7.org/fhir/DSTU2/contract-definitions.html#Contract.term.actor.role){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:contract, :dstu2) %>

## Search

Search for Contracts that meet supplied query parameters:

    GET /Contract?:parameters

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Parameters

 Name                 | Required?                                                    | Type          | Description
----------------------|--------------------------------------------------------------|---------------|------------------------------------------------------------------------------------------------------------------------------
 `_id`                | No, if populated all other parameters are ignored            | [`token`]     | The logical resource id associated with the resource.
 `actor`              | Yes, or `_id`                                                | [`reference`] | The actor (RelatedPerson) of the Contract. Example: `actor=RelatedPerson/1234` or `actor:RelatedPerson=1234`
 `actor.identifier`   | Yes, or `_id`                                                | [`token`]     | The identifier for the actor of the Contract. Example `actor.identifier=system|1234`
 `patient.identifier` | Yes, or `_id`                                                | [`token`]     | The identifier for the patient subject of the Contract. Example `patient.identifier=system|5678`
 `subject`            | Yes, or `_id`                                                | [`reference`] | The subject (Patient) of the Contract. Example `subject=Patient/1234` or `subject:Patient=1234`
 [`_include`]         | No                                                           | [`string`]    | Other resource entries to be returned as part of the bundle. Example `_include=Contract:actor` or `_include=Contract:patient`

Notes:

- Either the `_id` or one of `actor`, `actor.identifier`, `patient.identifier`, or `subject` parameters must be provided.
- The `actor`, `actor.identifier`, `patient.identifier`, or `subject` parameters may be provided exactly once and may have only a single value.
- The `_include` parameter may be provided once for each resource to be included. Example: `_include=Contract:actor&_include=Contract:patient`
- Additional OAuth2 scopes are required when the `_include` parameter is provided. To include with `Contract:actor` or `Contract:patient` values, the OAuth2 token must include scopes for one or both RelatedPerson.read and Patient.read, respectively, depending on the combination of resources to be included.

### Headers

 <%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Contract?subject:Patient=12724069

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_contract_bundle) %>

<%= disclaimer %>

### Example with Include

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Contract?subject=Patient%2F12724069&_include=Contract%3Aactor

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_contract_bundle_include_actor) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual Contract by its id:

    GET /Contract/:id

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/dstu2/ec2458f2-1e24-41c8-b71b-0e701af7583d/Contract/490068369

#### Response

<%= headers status: 200 %>
<%= json(:dstu2_contract_entry) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`reference`]: http://hl7.org/fhir/DSTU2/search.html#reference
[`string`]: http://hl7.org/fhir/DSTU2/search.html#string
[`token`]: http://hl7.org/fhir/DSTU2/search.html#token
[`_include`]: http://hl7.org/fhir/DSTU2/search.html#include
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
