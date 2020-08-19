---
title: FinancialTransaction | R4 API
---

# FinancialTransaction

* TOC
{:toc}

## Overview

The FinancialTransaction resource provides the ability to record and exchange financial payment and adjustment information related to patient healthcare services. This is a custom resource implemented via extensions on the Basic resource.

## Terminology Bindings

<%= terminology_table(:financial_transaction, :r4) %>

## Extensions

* [Financial Transaction Account Number]
* [Financial Transaction Alias]
* [Financial Transaction Allocation]
* [Financial Transaction Amount]
* [Financial Transaction Card Brand]
* [Financial Transaction Date]
* [Financial Transaction Location]
* [Financial Transaction Method]
* [Financial Transaction Tendered Amount]
* [Financial Transaction Type]

### Custom Extensions

All URLs for custom extensions are defined as `https://fhir-ehr.cerner.com/r4/StructureDefinition/{id}`

 ID                                      | Value\[x] Type                    | Description
-----------------------------------------|-----------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------
 `financial-transaction-account-number`  | [`string`]                        | A value associated to the specific payment method usually represented as the last four digits of a credit card, the check number, the EFT number or Lockbox number.
 `financial-transaction-alias`           | [`string`]                        | Client defined value to represent the combination of the type, subtype, and reason describing the financial transaction.
 `financial-transaction-allocation`      | None (contains nested extensions) | Defines how the payment or adjustment is to be allocated across other resources.
 `financial-transaction-amount`          | [`Money`]                         | The total amount of the financial transaction.
 `financial-transaction-card-brand`      | [`string`]                        | Identifies the brand of credit card when credit card is used as a payment method.
 `financial-transaction-date`            | [`date`]                          | Represents the expiration date if method is card, check date if method is check, EFT date if method is EFT or Lockbox date if method is lockbox.
 `financial-transaction-location`        | [`string`]                        | Client configured value representing the location or workflow that the payment was received in.
 `financial-transaction-method`          | [`string`]                        | Describes the method of payment for the financial transaction.
 `financial-transaction-tendered-amount` | [`Money`]                         | The amount of cash originally tendered for payment. This value should be greater than or equal to the amount of the cash payment.
 `financial-transaction-type`            | [`CodeableConcept`]               | The classification of the transaction.

## Create

Create a FinancialTransaction.

    POST /Basic    

_Implementation Notes_

* Only the body fields mentioned below are supported.
* When integrating your application with a client's production environment, the client will have to provide the appropriate financial-transaction-alias values to send with the financial transaction.
* Cerner's Revenue Cycle Patient Accounting application must be in use at a client site in order to create meaningful FinancialTransactions. A FinancialTransaction can only be targeted at a clinical Encounter that has related financial activity/encounters within the Cerner Revenue Cycle Patient Accounting system.
* When creating FinancialTransactions, a Basic OAuth2 token scope is required in addition to a FinancialTransaction Oauth2 token scope.

### Authorization Types

<%= authorization_types(provider: false, patient: false, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', 'Content-Type': 'application/fhir+json'} %>

### Body Fields

<%= definition_table(:financial_transaction, :create, :r4) %>

### Example - Cash Payment

#### Request

    POST /Basic

#### Body

<%= json(:R4_FINANCIAL_TRANSACTION_CASH) %>

#### Response

<%= headers status: 201 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: application/fhir+json
Date: Mon, 04 Nov 2019 16:23:57 GMT
Etag: W/"0"
Last-Modified: Mon, 04 Nov 2019 16:23:57 GMT
Location: https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Basic/FT-PL-14266754
Server-Response-Time: 3890.363996
Status: 201 Created
Vary: Origin
X-Request-Id: 1638e30e497b93ff4383b2ff0eaeea68
X-Runtime: 3.890282
</pre>

<%= disclaimer %>

### Example - Card Payment

#### Request

    POST /Basic

#### Body

<%= json(:R4_FINANCIAL_TRANSACTION_CARD) %>

#### Response

<%= headers status: 201 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: application/fhir+json
Date: Mon, 04 Nov 2019 16:23:59 GMT
Etag: W/"0"
Last-Modified: Mon, 04 Nov 2019 16:23:59 GMT
Location: https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Basic/FT-PL-74389581
Server-Response-Time: 3890.363996
Status: 201 Created
Vary: Origin
X-Request-Id: 1638e30e497b93ff4383b2ff0eaeea69
X-Runtime: 3.890282
</pre>

<%= disclaimer %>

### Example - Check Payment

#### Request

    POST /Basic

#### Body

<%= json(:R4_FINANCIAL_TRANSACTION_CHECK) %>

#### Response

<%= headers status: 201 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: application/fhir+json
Date: Mon, 04 Nov 2019 16:23:58 GMT
Etag: W/"0"
Last-Modified: Mon, 04 Nov 2019 16:23:58 GMT
Location: https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Basic/FT-PL-3335800133
Server-Response-Time: 3890.363996
Status: 201 Created
Vary: Origin
X-Request-Id: 1638e30e497b93ff4383b2ff0eaeea70
X-Runtime: 3.890282
</pre>

<%= disclaimer %>

### Example - Adjustment

#### Request

    POST /Basic

#### Body

<%= json(:R4_FINANCIAL_TRANSACTION_ADJUSTMENT) %>

#### Response

<%= headers status: 201 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: application/fhir+json
Date: Mon, 04 Nov 2019 16:23:58 GMT
Etag: W/"0"
Last-Modified: Mon, 04 Nov 2019 16:23:58 GMT
Location: https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/Basic/FT-AL-3335800133
Server-Response-Time: 3890.363996
Status: 201 Created
Vary: Origin
X-Request-Id: 1638e30e497b93ff4383b2ff0eaeea70
X-Runtime: 3.890282
</pre>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
[`CodeableConcept`]: https://www.hl7.org/fhir/r4/datatypes.html#CodeableConcept
[`date`]: https://www.hl7.org/fhir/r4/datatypes.html#date
[`Extension`]: https://www.hl7.org/fhir/r4/extensibility.html#Extension
[`Money`]: https://hl7.org/fhir/r4/datatypes.html#Money
[`string`]: https://www.hl7.org/fhir/r4/datatypes.html#string
[Financial Transaction Account Number]: #custom-extensions
[Financial Transaction Alias]: #custom-extensions
[Financial Transaction Allocation]: #custom-extensions
[Financial Transaction Amount]: #custom-extensions
[Financial Transaction Card Brand]: #custom-extensions
[Financial Transaction Date]: #custom-extensions
[Financial Transaction Location]: #custom-extensions
[Financial Transaction Method]: #custom-extensions
[Financial Transaction Tendered Amount]: #custom-extensions
[Financial Transaction Type]: #custom-extensions
