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

    `https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/StructureDefinition/account-balance`

### Authorization Types

Authorization is not required.

<%= authorization_types(provider: true, patient: true, system: true) %>

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
 [`account-presented-form`]                                  | Link to the PDF statement image related to the statement account.
 [`account-related-parts`]                                   | A reference to other related Accounts.
 [`account-state`]                                           | The status of the Account within the billing or correspondence workflow.
 [`client-instruction`]                                      | Represents instructions for an order that are intended for healthcare providers.
 [`client-organization`]                                     | The financially responsible organization.
 [`clinical-instruction`]                                    | The clinical instructions for an order that are intended for healthcare providers.
 [`coverage-encounter`]                                      | Reference to the Encounter associated to the encounter level Coverage.
 [`custom-attribute`]                                        | A client defined custom attribute for the resource.
 [`email-status`]                                            | The status of the electronic communication.
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
 [`formatted-text`]                                          | Link to the formatted text for a note. It is used in cases when the note is not a plain text.
 [`note-type`]                                               | Describes the type of note represented. This can be useful when there are multiple notes.
 [`patient-friendly-display`]                                | An expression of the original string in terminology that patients should be able to understand.
 [`payment-collection-status`]                               | The status of the payment collection for the encounter.
 [`related-person-encounter`]                                | Reference to the Encounter associated to the encounter level RelatedPerson.
 [`relationship-level`]                                      | The resource's relationship to either the patient or encounter level.
 [`replaced-by`]                                             | The resource containing this link must no longer be used. The link points forward to another resource that must be used in lieu of the resource that contains this link.
 [`reply-to`]                                                | A link to a resource that the reply should be directed to.
 [`transmitting-organization`]                               | An organization that transmitted or participated in the creation of a resource, but not the author.

[`account-balance`]: https://fhir-ehr.cerner.com/r4/StructureDefinition/account-balance?_format=json
[`account-presented-form`]: https://fhir-ehr.cerner.com/r4/StructureDefinition/account-presented-form?_format=json
[`account-related-parts`]: https://fhir-ehr.cerner.com/r4/StructureDefinition/account-related-parts?_format=json
[`account-state`]: https://fhir-ehr.cerner.com/r4/StructureDefinition/account-state?_format=json
[`client-instruction`]: https://fhir-ehr.cerner.com/r4/StructureDefinition/client-instruction?_format=json
[`client-organization`]: https://fhir-ehr.cerner.com/r4/StructureDefinition/client-organization?_format=json
[`clinical-instruction`]: https://fhir-ehr.cerner.com/r4/StructureDefinition/clinical-instruction?_format=json
[`coverage-encounter`]: https://fhir-ehr.cerner.com/r4/StructureDefinition/coverage-encounter?_format=json
[`custom-attribute`]: https://fhir-ehr.cerner.com/r4/StructureDefinition/custom-attribute?_format=json
[`email-status`]: https://fhir-ehr.cerner.com/r4/StructureDefinition/email-status?_format=json
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
[`formatted-text`]: https://fhir-ehr.cerner.com/r4/StructureDefinition/formatted-text?_format=json
[`note-type`]: https://fhir-ehr.cerner.com/r4/StructureDefinition/note-type?_format=json
[`patient-friendly-display`]: https://fhir-ehr.cerner.com/r4/StructureDefinition/patient-friendly-display?_format=json
[`payment-collection-status`]: https://fhir-ehr.cerner.com/r4/StructureDefinition/payment-collection-status?_format=json
[`related-person-encounter`]: https://fhir-ehr.cerner.com/r4/StructureDefinition/related-person-encounter?_format=json
[`relationship-level`]: https://fhir-ehr.cerner.com/r4/StructureDefinition/relationship-level?_format=json
[`replaced-by`]: https://fhir-ehr.cerner.com/r4/StructureDefinition/replaced-by?_format=json
[`reply-to`]: https://fhir-ehr.cerner.com/r4/StructureDefinition/reply-to?_format=json
[`transmitting-organization`]: https://fhir-ehr.cerner.com/r4/StructureDefinition/transmitting-organization?_format=json
