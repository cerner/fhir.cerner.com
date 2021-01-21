---
title: Consent | R4 API
---

# Consent

* TOC
{:toc}

## Overview

The R4 Consent resource can be used to represent consents.

The Consent resource is currently limited to representing people who are authorized to view a patient’s data. For this reason, consent type, scope, category, policy rule, actor role, action and purpose are always set to values related to consent for EHR sharing. The actors on the contract are the related people who are authorized to view the patient’s data. An example is consent authorizing a mother (actor) to view her child’s data (patient).

The following fields are returned if valued:

* [Consent id](http://hl7.org/fhir/r4/resource-definitions.html#Resource.id){:target="_blank"}
* [Status](http://hl7.org/fhir/r4/consent-definitions.html#Consent.status){:target="_blank"}
* [Scope (Privacy Consent)](http://hl7.org/fhir/r4/consent-definitions.html#Consent.scope){:target="_blank"}
* [Category (Patient Consent)](http://hl7.org/fhir/r4/consent-definitions.html#Consent.category){:target="_blank"}
* [Patient](http://hl7.org/fhir/r4/consent-definitions.html#Consent.patient){:target="_blank"}
* [Policy Rule (Consent given for electronic record sharing (finding))](http://hl7.org/fhir/r4/consent-definitions.html#Consent.policyRule){:target="_blank"}
* [Provision](http://hl7.org/fhir/r4/consent-definitions.html#Consent.provision){:target="_blank"}
* [Type (Permit)](http://hl7.org/fhir/r4/consent-definitions.html#Consent.provision.type){:target="_blank"}
* [Period](http://hl7.org/fhir/r4/consent-definitions.html#Consent.provision.period){:target="_blank"}
* [Actor (RelatedPerson)](http://hl7.org/fhir/r4/consent-definitions.html#Consent.provision.actor){:target="_blank"}
* [Actor Role (Authorized Representative)](http://hl7.org/fhir/r4/consent-definitions.html#Consent.provision.actor.role){:target="_blank"}
* [Action (Access and Correct)](http://hl7.org/fhir/r4/consent-definitions.html#Consent.provision.action){:target="_blank"}
* [Purpose (Purpose of Use)](http://hl7.org/fhir/r4/consent-definitions.html#Consent.provision.purpose){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:consent, :r4) %>

## Search

Search for Consent that meet supplied query parameters:

    GET /Consent?:parameters

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Parameters

 Name                  | Required?                                        | Type          | Description
-----------------------|--------------------------------------------------|---------------|--------------
 `_id`                 | No, if populated all other parameters are ignored| [`token`]     | The logical resource id associated with the resource.
 `actor`               | Yes, or _id                                     | [`reference`]  | The actor (RelatedPerson) of the Consent. Example: actor=RelatedPerson/1234 or actor:RelatedPerson=1234
 `actor.identifier`    | Yes, or _id                                     | [`token`]      | The Federated Person Principal identifier for the actor of the Consent. Example `actor.identifier=system|1234`
 `patient`             | Yes, or _id                                     | [`reference`]  | Who the consent applies to Example subject=Patient/1234 
 `patient.identifier`  | Yes, or _id                                     | [`token`]      | The identifier for the patient of the Consent. Example `patient.identifier=system|5678` (Federated Person Principal, Medical Record Number, Social Security Number, etc.)
  [`_include`]         | No                                              | [`string`]     | Other resource entries to be returned as part of the bundle. Example _include=Consent:actor or _include=Consent:patient


Notes:

- Either the `_id` or one of the following parameters must be provided: `actor`, `identifier`, `patient.identifier`, or `patient`.

- The `actor`, `identifier`, `patient.identifier`, or `patient` parameters may be provided exactly once and may have only a single value.

- The `_include` parameter may be provided once for each resource to be included. Example: `_include=Consent:actor&_include=Consent:patient`

- Additional OAuth2 scopes are required when the `_include` parameter is provided. To include with `Consent:actor` or `Consent:patient` values, the OAuth2 token must include scopes for one or both `RelatedPerson.read` and `Patient.read`, respectively, depending on the combination of resources to be included.

### Headers

 <%= headers %>

### Example retrieve consent

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Consent?patient=12742397

#### Response

<%= headers status: 200 %>
<%= json(:r4_consent_bundle) %>

<%= disclaimer %>

### Search by Id Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Consent?_id=AR-12724069-12724066

#### Response

<%= headers status: 200 %>
<%= json(:r4_consent_id_bundle) %>

<%= disclaimer %>

### Search by Actor Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Consent?actor=12724066-12724069

#### Response

<%= headers status: 200 %>
<%= json(:r4_consent_actor_bundle) %>

<%= disclaimer %>

### Search by Include Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Consent?patient=12742397&_include=Consent:patient&_include=Consent:actor

#### Response

<%= headers status: 200 %>
<%= json(:r4_consent_include_bundle) %>

<%= disclaimer %>

#### Patient Authorization Request

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Consent?patient=12742397

#### Response

<%= headers status: 200 %>
<%= json(:r4_consent_patient_bundle) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual Consent by its id:

    GET /Consent/:id

_Implementation Notes_

* For Consent Read operations, both Consent.read and Patient.read scopes are required.

### Authorization Types

<%= authorization_types(provider: true, patient: true, system: true) %>

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Consent/AR-12724069-12724066

#### Response

<%= headers status: 200 %>
<%= json(:r4_consent_entry) %>

<%= disclaimer %>

#### Patient Authorization Request

#### Request

    GET https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Consent/AR-12724069-12724066

#### Response

<%= headers status: 200 %>
<%= json(:r4_consent_entry) %>

<%= disclaimer %>
### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`token`]: http://hl7.org/fhir/r4/search.html#token
[`reference`]: http://hl7.org/fhir/r4/search.html#reference
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
[`string`]: http://hl7.org/fhir/r4/search.html#string
[`_include`]: http://hl7.org/fhir/r4/search.html#include
