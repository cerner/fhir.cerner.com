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
