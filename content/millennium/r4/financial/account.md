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

* [Account Related Parts]
* [Account Balance]
* [Account State]

### Custom Extensions

All URLs for custom extensions are defined as `https://fhir-ehr.cerner.com/r4/StructureDefinition/{id}`

 ID                         | Value\[x] Type      | Description
----------------------------|---------------------|--------------------------------------------------------------------------
 `account-related-parts`    | [`Reference`]       | A reference to other related Accounts.
 `account-balance`          | [`Money`]           | Represents the account balance.
 `account-state`            | [`CodeableConcept`] | The status of the Account within the billing or correspondence workflow.

## Search

Search for Accounts that meet supplied query parameters:

    GET /Account?:parameters

_Implementation Notes_

* The Account balance extension is only returned on statement and guarantor-balance types
* [Account.subject] is only returned on statement and financial-account types

### Authorization Types

<%= authorization_types(practitioner: true, patient: false, system: true) %>

### Parameters

 Name         | Required? | Type          | Description
--------------|-----------|---------------|-----------------------------------------------------------------------------------------------------------------------------------------------
 `_id`        | See notes | [`token`]     | The logical resource id associated with the resource. Example: `F703726`
 `identifier` | See notes | [`token`]     | Aliases of the Account like Statement Number. Example: `https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/28200|500000078`
 `type`       | See notes | [`token`]     | The specific type of account. Example: `financial-account`
 `patient`    | See notes | [`reference`] | The entity that caused the expenses. Example: `Patient/1316024`
 `-guarantor` | See notes | [`reference`] | The parties responsible for balancing the account. Example: `6330015-6330017`
 `_count`     | no        | [`number`]    | The maximum number of results to return. Defaults to `10`.

Notes:

* You may search via:
  * `_id` alone
  * `patient`, `identifier`, and `type` set to 'statement'
  * `-guarantor` and `type` set to 'financial-account'
* When searching via `identifier`, the system must be 'https://fhir.cerner.com/&lt;EHR source id&gt;/codeSet/28200'. You may not search via `identifier` with a system of 'https://fhir.cerner.com/accountnumber'.
* The `-guarantor` search parameter should contain a reference to a RelatedPerson when set.

### Headers

 <%= headers %>

### Example

#### Request - `_id`

    GET https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Account?_id=F703726

#### Response

<%= headers status: 200 %>
<%= json(:r4_account_search) %>

#### Request - `patient`, `identifier`, and `type`

    GET https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Account?identifier=https://fhir.cerner.com/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/codeSet/28200|68002&patient=6330017&type=statement

#### Response

<%= headers status: 200 %>
<%= json(:r4_account_search_statement) %>

#### Request - `-guarantor` and `type`

    GET https://fhir-open.sandboxcerner.com/r4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Account?-guarantor=6330015-6330015&type=financial-account

#### Response

<%= headers status: 200 %>
<%= json(:r4_account_search_guarantor) %>

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

[`CodeableConcept`]: http://hl7.org/fhir/r4/datatypes.html#CodeableConcept
[`Reference`]: http://hl7.org/fhir/r4/references.html#Reference
[`number`]: http://hl7.org/fhir/r4/search.html#number
[`Money`]: http://hl7.org/fhir/r4/datatypes.html#Money
[`token`]: http://hl7.org/fhir/R4/search.html#token
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
[Account Related Parts]: #custom-extensions
[Account Balance]: #custom-extensions
[Account State]: #custom-extensions
[Account.subject]: http://hl7.org/fhir/R4/account-definitions.html#Account.subject
