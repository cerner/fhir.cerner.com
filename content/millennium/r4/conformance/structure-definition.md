---
title: StructureDefinition | R4 API
---

# StructureDefinition

* TOC
{:toc}

## Overview

The StructureDefinition resource describes a FHIR structure including data elements and their usage. Our current implementation uses this resource to define custom extensions.

The following fields are returned if valued:

* [Id](http://hl7.org/fhir/r4/resource-definitions.html#Resource.id){:target="_blank"}
* [URL](http://hl7.org/fhir/r4/structuredefinition-definitions.html#StructureDefinition.url){:target="_blank"}
* [Name](http://hl7.org/fhir/r4/structuredefinition-definitions.html#StructureDefinition.name){:target="_blank"}
* [Title](http://hl7.org/fhir/r4/structuredefinition-definitions.html#StructureDefinition.title){:target="_blank"}
* [Status](http://hl7.org/fhir/r4/structuredefinition-definitions.html#StructureDefinition.status){:target="_blank"}
* [Date](http://hl7.org/fhir/r4/structuredefinition-definitions.html#StructureDefinition.date){:target="_blank"}
* [Publisher](http://hl7.org/fhir/r4/structuredefinition-definitions.html#StructureDefinition.publisher){:target="_blank"}
* [Description](http://hl7.org/fhir/r4/structuredefinition-definitions.html#StructureDefinition.description){:target="_blank"}
* [Fhir version](http://hl7.org/fhir/r4/structuredefinition-definitions.html#StructureDefinition.fhirVersion){:target="_blank"}
* [Kind](http://hl7.org/fhir/r4/structuredefinition-definitions.html#StructureDefinition.kind){:target="_blank"}
* [Abstract](http://hl7.org/fhir/r4/structuredefinition-definitions.html#StructureDefinition.abstract){:target="_blank"}
* [Type](http://hl7.org/fhir/r4/structuredefinition-definitions.html#StructureDefinition.type){:target="_blank"}
* [Context](http://hl7.org/fhir/r4/structuredefinition-definitions.html#StructureDefinition.context){:target="_blank"}
* [Base definition](http://hl7.org/fhir/r4/structuredefinition-definitions.html#StructureDefinition.baseDefinition){:target="_blank"}
* [Snapshot](http://hl7.org/fhir/r4/structuredefinition-definitions.html#StructureDefinition.snapshot){:target="_blank"}
* [Differential](http://hl7.org/fhir/r4/structuredefinition-definitions.html#StructureDefinition.differential){:target="_blank"}

## Retrieve by id

List an individual StructureDefinition by its id:

    GET /StructureDefinition/:id

_Implementation Notes_

* Authentication is not required to access the StructureDefinition resource
* This resource can be retrieved by its defining URL or from the StructureDefinition resource located at the [service root URL](../../#service-root-url). For example, both of these URLs work:

    `https://fhir-ehr.cerner.com/r4/StructureDefinition/account-balance`

    `https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/StructureDefinition/account-balance`

### Authorization Types

Authorization is not required.

<%= authorization_types(practitioner: true, patient: true, system: true) %>

### Headers

<%= headers head: {Accept: 'application/fhir+json'} %>

### Example


#### Request

    GET https://fhir-ehr.cerner.com/r4/StructureDefinition/account-balance

#### Response

<%= headers status: 200 %>
<%= json(:r4_structure_definition_bundle) %>

## List of StructureDefinitions

 ID                                                          | Description
-------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------
 [`account-balance`]                                         | Represents the account balance.
 [`account-related-parts`]                                   | A reference to other related Accounts.
 [`account-state`]                                           | The status of the Account within the billing or correspondence workflow.
 [`client-organization`]                                     | The financially responsible organization.
 [`estimated-financial-responsibility-amount`]               | The estimated amount to be collected for the encounter.
 [`estimated-financial-responsibility-not-collected-reason`] | The reason no estimated amount is collected for the encounter.
 [`financial-transaction-account-number`]                    | A value associated to the specific payment method usually represented as the last four digits of a credit card, the check number, the EFT number or Lockbox number.
 [`financial-transaction-alias`]                             | Client defined value to represent the combination of the type, subtype, and reason describing the financial transaction.
 [`financial-transaction-allocation`]                        | Defines how the payment or adjustment is to be allocated across other resources.
 [`financial-transaction-amount`]                            | The total amount of the financial transaction.
 [`financial-transaction-card-brand`]                        | Identifies the brand of credit card when credit card is used as a payment method.
 [`financial-transaction-date`]                              | Represents the expiration date if method is card, check date if method is check, EFT date if method is EFT or Lockbox date if method is lockbox.
 [`financial-transaction-location`]                          | Client configured value representing the location or workflow that the payment was received in.
 [`financial-transaction-method`]                            | Describes the method of payment for the financial transaction.
 [`financial-transaction-tendered-amount`]                   | The amount of cash originally tendered for payment. This value should be greater than or equal to the amount of the cash payment.
 [`financial-transaction-type`]                              | The classification of the transaction.
 [`payment-collection-status`]                               | The status of the payment collection for the encounter.

[`account-balance`]: https://fhir-ehr.cerner.com/r4/StructureDefinition/account-balance?_format=json
[`account-related-parts`]: https://fhir-ehr.cerner.com/r4/StructureDefinition/account-related-parts?_format=json
[`account-state`]: https://fhir-ehr.cerner.com/r4/StructureDefinition/account-state?_format=json
[`client-organization`]: https://fhir-ehr.cerner.com/r4/StructureDefinition/client-organization?_format=json
[`estimated-financial-responsibility-amount`]: https://fhir-ehr.cerner.com/r4/StructureDefinition/estimated-financial-responsibility-amount?_format=json
[`estimated-financial-responsibility-not-collected-reason`]: https://fhir-ehr.cerner.com/r4/StructureDefinition/estimated-financial-responsibility-not-collected-reason?_format=json
[`financial-transaction-account-number`]: https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-account-number?_format=json
[`financial-transaction-alias`]: https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-alias?_format=json
[`financial-transaction-allocation`]: https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-allocation?_format=json
[`financial-transaction-amount`]: https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-amount?_format=json
[`financial-transaction-card-brand`]: https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-card-brand?_format=json
[`financial-transaction-date`]: https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-date?_format=json
[`financial-transaction-location`]: https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-location?_format=json
[`financial-transaction-method`]: https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-method?_format=json
[`financial-transaction-tendered-amount`]: https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-tendered-amount?_format=json
[`financial-transaction-type`]: https://fhir-ehr.cerner.com/r4/StructureDefinition/financial-transaction-type?_format=json
[`payment-collection-status`]: https://fhir-ehr.cerner.com/r4/StructureDefinition/payment-collection-status?_format=json
