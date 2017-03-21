---
title: Contract | DSTU 2 API
---

# Contract

* TOC
{:toc}

## Overview

The Contract resource usage is limited to representing persons that are authorized to view patient data. The subject of the contract is the patient that is the target of this authorization. The actors on the contract are the related people that are authorized to view data. An example would be where a contract represents that a mother is authorized to view her children's data. The contract is that authorization in FHIR.

## Terminology Bindings

<%= terminology_table(:contract, :dstu2) %>

## Search

Search for Contracts that meet supplied query parameters:

    GET /Contract?:parameters

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

### Response

Search for all Contracts subject to a specific patient
<%= headers 200, GET: '[...]/Contract?subject:Patient=4598008' %>
<%= json(:dstu2_contract_bundle) %>

Search for all Contracts and include referenced RelatedPerson entries in the response.
<%= headers 200, GET: '[...]/Contract?subject:Patient=4598008&_include=Contract:actor' %>
<%= json(:dstu2_contract_bundle_include_actor) %>

## Retrieve by id

List an individual Contract by its id:

    GET /Contract/:id

### Response

<%= headers 200 %>
<%= json(:dstu2_contract_entry) %>

[`reference`]: http://hl7.org/fhir/DSTU2/search.html#reference
[`string`]: http://hl7.org/fhir/DSTU2/search.html#string
[`token`]: http://hl7.org/fhir/DSTU2/search.html#token
[`_include`]: http://hl7.org/fhir/DSTU2/search.html#include
