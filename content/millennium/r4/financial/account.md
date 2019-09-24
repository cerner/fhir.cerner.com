---
title: Account | R4 API
---

# Account

* TOC
{:toc}

## Overview

The Account resource acts as a central record against which charges, payments, and adjustments are applied. It contains information about which parties are responsible for payment of the account. The account resource supports multiple account types and relationships to other accounts.

### Account Relationships

![Account Relationship Model](/images/account-relationship-model.png)

### Account Types

The account resource supports multiple account types which are defined below.

* `financial-account` - Top level patient account
* `guarantor-balance` - Self pay balance account.
* `statement` - Snapshot in time of a patient statement.

The following fields are returned if valued:

* [Account id](https://hl7.org/fhir/r4/resource-definitions.html#Resource.id){:target="_blank"}
* [Account Identifier](https://hl7.org/fhir/R4/account-definitions.html#Account.identifier){:target="_blank"}
* [Status](https://hl7.org/fhir/R4/account-definitions.html#Account.status){:target="_blank"}
* [Type](https://hl7.org/fhir/R4/account-definitions.html#Account.type){:target="_blank"}
* [Subject](https://hl7.org/fhir/R4/account-definitions.html#Account.subject){:target="_blank"}
* [Service period](https://hl7.org/fhir/R4/account-definitions.html#Account.servicePeriod){:target="_blank"}
* [Owner](https://hl7.org/fhir/R4/account-definitions.html#Account.owner){:target="_blank"}
* [Guarantor](https://hl7.org/fhir/R4/account-definitions.html#Account.guarantor){:target="_blank"}
* [Part of](https://hl7.org/fhir/R4/account-definitions.html#Account.partOf){:target="_blank"}
* [Extensions including related parts, balance, and state](#extensions){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:account, :r4) %>

## Extensions

* [Related Parts]
* [Balance]
* [State]

### Custom Extensions

All URLs for custom extensions are defined as `https://fhir-ehr.cerner.com/r4/StructureDefinition/{id}`

 ID                         | Value\[x] Type      | Description
----------------------------|---------------------|--------------------------------------------------------------------------
 `account-related-parts`    | [`reference`]       | A reference to other related Accounts.
 `account-balance`          | [`money`]           | Represents the account balance.
 `account-state`            | [`codeableConcept`] | The status of the Account within the billing or correspondence workflow.

## Search

Search for Accounts that meet supplied query parameters:

    GET /Account?:parameters

_Implementation Notes_

* The Account balance extension is only returned on statement and guarantor-balance types
* `Patient` is only returned on statement and financial-account types

### Authorization Types

<%= authorization_types(practitioner: true, patient: false, system: true) %>

### Parameters

 Name         | Required? | Type          | Description
--------------|-----------|---------------|-----------------------------------------------------------------------------------------------------------------------------------------------
 `_id`        | See notes | [`token`]     | The logical resource id associated with the resource. Example: `F703726`
 `identifier` | See notes | [`token`]     | Aliases of the Account like Statement Number. Example: `https://fhir.cerner.com/2c400054-42d8-4e74-87b7-80b5bd5fde9f/codeSet/28200|500000078`
 `type`       | See notes | [`token`]     | The specific type of account. Example: `financial-account`
 `patient`    | See notes | [`reference`] | The entity that caused the expenses. Example: `Patient/1316024`
 `-guarantor` | See notes | [`reference`] | The parties responsible for balancing the account. Example: `589762-12154123`
 `_count`     | no        | [`number`]    | The maximum number of results to return. Defaults to `10`.

Notes:

* You may search via:
  * `_id` alone
  * `patient`, `identifier`, and `type` set to 'statement'.
  * `-guarantor` and `type` set to 'financial-account'.
* The `-guarantor` search parameter should contain a reference to a RelatedPerson when set.

### Headers

 <%= headers %>

### Example

#### Request

    GET https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Account?_id=F703726

#### Response

<%= headers status: 200 %>
<%= json(:r4_account_search) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual Account by its id:

    GET /Account/:id

### Authorization Types

<%= authorization_types(practitioner: true, patient: false, system: true) %>

### Headers

<%= headers %>
    
### Example

#### Request

    GET https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Account/G2572738

#### Response

<%= headers status: 200 %>
<%= json(:r4_account_read) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`codeableConcept`]: http://hl7.org/fhir/r4/datatypes.html#CodeableConcept
[`reference`]: http://hl7.org/fhir/R4/search.html#reference
[`number`]: http://hl7.org/fhir/dstu2/search.html#number
[`money`]: http://hl7.org/fhir/r4/datatypes.html#Money
[`token`]: http://hl7.org/fhir/R4/search.html#token
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
[Related Parts]: #custom-extensions
[Balance]: #custom-extensions
[State]: #custom-extensions
