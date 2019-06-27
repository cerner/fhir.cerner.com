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

* financial-account - Top level patient account
* guarantor-balance - Self pay balance account.
* statement - Snapshot in time of a patient statement.


The following fields are returned if valued:

* [Account id]( https://hl7.org/fhir/r4/resource-definitions.html#Resource.id ){:target="_blank"} 
* [Account Identifier](https://hl7.org/fhir/R4/account-definitions.html#Account.identifier){:target="_blank"} 
* [Status](https://hl7.org/fhir/R4/account-definitions.html#Account.status){:target="_blank"} 
* [Type](https://hl7.org/fhir/R4/account-definitions.html#Account.type){:target="_blank"}
* [Subject](https://hl7.org/fhir/R4/account-definitions.html#Account.subject){:target="_blank"} 
* [Service period](https://hl7.org/fhir/R4/account-definitions.html#Account.servicePeriod){:target="_blank"}
* [Owner](https://hl7.org/fhir/R4/account-definitions.html#Account.owner){:target="_blank"} 
* [Guarantor](https:// https://hl7.org/fhir/R4/account-definitions.html#Account.guarantor){:target="_blank"} 
* [Part of](https://hl7.org/fhir/R4/account-definitions.html#Account.partOf){:target="_blank"}
* [Extensions including related parts, balance, and state](#extensions){:target="_blank"}


## Terminology Bindings

<%= terminology_table(:account, :r4) %>

## Extensions

* [Related Parts]
* [Balance]
* [State]

## Search

Search for Accounts that meet supplied query parameters:

    GET /Account?:parameters

### Authorization Types

<%= authorization_types(practitioner: true, patient: false, system: true) %>

### Parameters

 Name         | Required?                                         | Type          | Description
--------------|---------------------------------------------------|-----------------------------------------------------------------------------------------------------------
 `_id`        | This or any other required search parameter       | [`token`]     | The logical resource id associated with the resource
 `identifier` | This and type and patient, or any other search param, or _id  | [`token`]     | Aliases of the Account like Statement Number
 `type`       | This and/or any other search param, or _id        | [`token`]     | The specific type of account
 `patient`    | This and type and patient, or any other search param, or _id  | [`reference`] | The entity that caused the expenses
 `-guarantor` | This and type, or any other search param, or _id  | [`reference`] | The parties responsible for balancing the account
 `_count`     | no                                                | [`number`]    | Paging parameter
 

Notes:

* `Account-balance` is only returned on statement and guarantor-balance types
* `Patient` is only returned on statement and financial-account types 
* Guarantor search can only be RelatedPersons with the financial-account type
* IDs are prefixed based upon the account type 

### Headers
 
 <%= headers %>

### Example

#### Request

    GET https://fhir-open.sandboxcerner.com/R4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Account?patient=

#### Response

<%= headers status: 200 %>
<%= json(:r4_account) %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

List an individual Account by its id:

    GET /Account/:id

### Authorization Types

<%= authorization_types(practitioner: true, patient: true, system: true) %>

### Headers

<%= headers %>
    
### Example

#### Request

    GET https://fhir-open.sandboxcerner.com/R4/0b8a0111-e8e6-4c26-a91c-5069cbc6b1ca/Account?patient=

#### Response

<%= headers status: 200 %>
<%= json(:r4_account) %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`reference`]: http://hl7.org/fhir/R4/search.html#reference
[`token`]: http://hl7.org/fhir/R4/search.html#token
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes