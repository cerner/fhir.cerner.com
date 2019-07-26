---
title: FinancialTransaction | R4 API
---

# FinancialTransaction

* TOC
{:toc}

## Overview

The FinancialTransaction resource provides the ability to record and exchange financial payment and adjustment information related to patient healthcare services. 

## Terminology Bindings

<%= terminology_table(:financial_transaction, :r4) %>

## Create

Resource for posting payment and adjustment transactions into Millennium

    POST /Basic    
 
_Implementation Notes_

* Only the body fields mentioned below are supported.
* When integrating your application with a client's production environment you will work with the client to determine the appropriate financial-transaction-alias values to send with the payment and adjustment transactions. 
 
### Authorization Types

<%= authorization_types(practitioner: true, patient: false, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token&gt;', 'Content-Type': 'application/fhir+json'} %>

### Body Fields

<%= definition_table(:financial_transaction_create, :create, :r4) %>

### Example

#### Request

    POST 

#### Body

  <%= json(:R4_FINANCIAL_TRANSACTION_CASH) %>

#### Response

<%= headers status: 201 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: application/fhir+json
Date: Wed, 27 Mar 2019 15:59:33 GMT
Etag: W/"0"
Last-Modified: Wed, 27 Mar 2019 15:59:30 GMT
Location: 
Server-Response-Time: 3890.363996
Status: 201 Created
Vary: Origin
X-Request-Id: 1638e30e497b93ff4383b2ff0eaeea68
X-Runtime: 3.890282
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

#### Request

    POST 

#### Body

  <%= json(:R4_FINANCIAL_TRANSACTION_CARD) %>

#### Response

<%= headers status: 201 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: application/fhir+json
Date: Wed, 27 Mar 2019 15:59:33 GMT
Etag: W/"0"
Last-Modified: Wed, 27 Mar 2019 15:59:30 GMT
Location: 
Server-Response-Time: 3890.363996
Status: 201 Created
Vary: Origin
X-Request-Id: 1638e30e497b93ff4383b2ff0eaeea68
X-Runtime: 3.890282
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.


#### Request

    POST 

#### Body

  <%= json(:R4_FINANCIAL_TRANSACTION_CHECK) %>

#### Response

<%= headers status: 201 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: application/fhir+json
Date: Wed, 27 Mar 2019 15:59:33 GMT
Etag: W/"0"
Last-Modified: Wed, 27 Mar 2019 15:59:30 GMT
Location: 
Server-Response-Time: 3890.363996
Status: 201 Created
Vary: Origin
X-Request-Id: 1638e30e497b93ff4383b2ff0eaeea68
X-Runtime: 3.890282
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
