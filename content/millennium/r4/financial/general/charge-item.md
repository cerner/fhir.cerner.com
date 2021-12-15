---
title: ChargeItem | R4 API
---

# ChargeItem

<%= beta_tag %>

* TOC
{:toc}

## Overview

The ChargeItem resource describes the provision of healthcare provider products for a certain patient, therefore referring not only to the product, but containing in addition details of the provision, like date, time, amounts and participating organizations and persons.
The main usage of the ChargeItem is to enable the billing process and internal cost allocation.

The following fields are returned if valued:

* [ChargeItem id](https://hl7.org/fhir/r4/resource-definitions.html#Resource.id){:target="_blank"}
* [Status](https://hl7.org/fhir/r4/chargeitem-definitions.html#ChargeItem.status){:target="_blank"}
* [Code](https://hl7.org/fhir/r4/chargeitem-definitions.html#ChargeItem.code){:target="_blank"}
* [Subject](https://hl7.org/fhir/r4/chargeitem-definitions.html#ChargeItem.subject){:target="_blank"}
* [Context](https://hl7.org/fhir/r4/chargeitem-definitions.html#ChargeItem.context){:target="_blank"}
* [Occurrence](https://hl7.org/fhir/r4/chargeitem-definitions.html#ChargeItem.occurrence_x_){:target="_blank"}
* [Performer](https://hl7.org/fhir/r4/chargeitem-definitions.html#ChargeItem.performer){:target="_blank"}
* [Requesting Organization](https://hl7.org/fhir/r4/chargeitem-definitions.html#ChargeItem.requestingOrganization){:target="_blank"}
* [Quantity](https://hl7.org/fhir/r4/chargeitem-definitions.html#ChargeItem.quantity){:target="_blank"}
* [Enterer](https://hl7.org/fhir/r4/chargeitem-definitions.html#ChargeItem.enterer){:target="_blank"}
* [Entered Date](https://hl7.org/fhir/r4/chargeitem-definitions.html#ChargeItem.enteredDate){:target="_blank"}
* [Reason](https://hl7.org/fhir/r4/chargeitem-definitions.html#ChargeItem.reason){:target="_blank"}
* [Account](https://hl7.org/fhir/r4/chargeitem-definitions.html#ChargeItem.account){:target="_blank"}
* [Extensions including bill code schedule, custom attribute, description, modifier code, national drug product, net price, offset by, performing location, procedure code, quantity conversion factor, replacing, revenue code, and unit price](#extensions){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:charge_item, :r4) %>

## Extensions

* [Bill Code Schedule]
* [Custom Attribute]
* [Description]
* [Modifier Code]
* [National Drug Product]
* [Net Price]
* [Offset By]
* [Performing Location]
* [Priority]
* [Procedure Code]
* [Quantity Conversion Factor]
* [Replacing]
* [Revenue Code]
* [Unit Price]

### Custom Extensions

All URLs for custom extensions are defined as `https://fhir-ehr.cerner.com/r4/StructureDefinition/{id}`

 ID                           | Value\[x] Type                                                    | Description
------------------------------|-------------------------------------------------------------------|--------------------------------------------------------------------------
 `bill-code-schedule`         | [`coding`]                                                        | A defined group of bill codes that drives billing behavior.
 `custom-attribute`           | None (contains nested extensions)                                 | A client defined custom attribute for the resource. Attribute values can be of type [`integer`], [`string`], [`decimal`], or [`date`].
 `description`                | [`string`]                                                        | A description providing additional details of the resource.
 `modifier-code`              | None (contains nested extensions)                                 | A code providing additional detail about a product or service.
 `national-drug-product`      | None (contains nested extensions)                                 | The national drug product used in care.
 `net-price`                  | [`Money`]                                                         | The quantity times the unit price for a resource (total price).
 `offset-by`                  | [`Reference`](https://hl7.org/fhir/r4/references.html#Reference)  | Indicates a resource that this resource is offset by. This resource is no longer active when offset.
 `performing-location`        | [`Reference`](https://hl7.org/fhir/r4/references.html#Reference)  | A location where the resource was performed.
 `priority`                   | [`unsignedInt`]                                                   | The priority of the element within a list.
 `procedure-code`             | None (contains nested extensions)                                 | A code providing information about the procedure performed on the patient associated to the resource.
 `quantity-conversion-factor` | [`decimal`]                                                       | The conversion factor used to calculate the quantity for billing.
 `replacing`                  | [`Reference`](https://hl7.org/fhir/r4/references.html#Reference)  | A reference to a resource that this resource is replacing.
 `revenue-code`               | None (contains nested extensions)                                 | The type of revenue or cost center providing the product and/or service.
 `unit-price`                 | [`Money`]                                                         | The price of a single unit for the resource.

## Search

<%= beta_tag(action: true) %>

Search for ChargeItems that meet supplied query parameters:

    GET /ChargeItem?:parameters

### Authorization Types

<%= authorization_types(provider: true, patient: false, system: true) %>

### Parameters

 Name                  | Required?                  | Type          | Description
-----------------------|----------------------------|---------------|-------------------------------------------------------
 `_id`                 | This or context or account | [`token`]     | The logical resource id associated with the ChargeItem.
 `context`             | This or _id or account     | [`reference`] | Encounter associated with the ChargeItem.
 `account`             | This or _id or context     | [`reference`] | Account associated with the ChargeItem.
 `-status`             | See notes                  | [`token`]     | The status of the ChargeItem. Example: `billable`
 [`_count`]            | No                         | [`number`]    | The maximum number of results to return.

Notes:

- When searching by `_id`, only a single ChargeItem id can be provided.
- `-status` must be provided with `context` or `account`.
- `-status` must be set to `billable`.
- `context` must reference an Encounter.
- Only charge-group `account` types are supported.

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/ChargeItem?context=97953601&-status=billable

#### Response

<%= headers status: 200 %>
<%= json(:r4_chargeitem_bundle) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Retrieve by id

<%= beta_tag(action: true) %>

List an individual ChargeItem by its id:

    GET /ChargeItem/:id

### Authorization Types

<%= authorization_types(provider: true, patient: false, system: true) %>

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/ChargeItem/292870306

#### Response

<%= headers status: 200 %>
<%= json(:r4_charge_item_read) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Operation: charge-item-credit

<%= beta_tag(action: true) %>

Creates an offsetting ChargeItem for an existing debit ChargeItem.

    POST /ChargeItem/:id/$credit
    
_Implementation Notes_

* Only the body fields mentioned below are supported. Unsupported fields will be ignored.    
    
### Authorization Types

<%= authorization_types(provider: true, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', Accept: 'application/fhir+json', 'Content-Type': 'application/fhir+json'} %>

### Body Fields

<%= definition_table(:charge_item_credit, :credit, :r4) %>

### Example

#### Request

    POST https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/ChargeItem/292427912/$credit

#### Body

<%= json(:r4_charge_item_credit) %>

#### Response

<%= headers status: 201 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: text/html
Date: Tue, 07 Sep 2021 17:23:14 GMT
Etag: W/"0"
Location: https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/ChargeItem/2180632343
Last-Modified: Tue, 07 Sep 2021 17:25:14 GMT
Vary: Origin
X-Request-Id: 11111111111111111111111111111111
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Operation: charge-item-modify

<%= beta_tag(action: true) %>

Modifies an existing ChargeItem resulting in a newly created ChargeItem.

    POST /ChargeItem/$modify

_Implementation Notes_

* Only the body fields mentioned below are supported.

### Authorization Types

<%= authorization_types(provider: true, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', 'Content-Type': 'application/fhir+json'} %>

### Body Fields

<%= definition_table(:charge_item_modify, :modify, :r4) %>

### Example

#### Request

    POST https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/ChargeItem/$modify

#### Body

<%= json(:r4_charge_item_modify) %>

#### Response

<%= headers status: 201 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: text/html
Date: Fri, 16 Jul 2021 17:23:14 GMT
Etag: W/"0"
Location: https://fhir-ehr-code.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/ChargeItem/2180632343
Last-Modified: Fri, 16 Jul 2021 17:23:13 GMT
Vary: Origin
X-Request-Id: 11111111111111111111111111111111
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

### Errors

The common [errors] and [OperationOutcomes] may be returned.

## Operation: charge-item-create

<%= beta_tag(action: true) %>

Creates a charge event which can result in the creation of one or more ChargeItems.

    POST /ChargeItem/:id/$create

_Implementation Notes_

* Only the body fields mentioned below are supported.

### Authorization Types

<%= authorization_types(provider: true, system: true) %>

### Headers

<%= headers head: {Authorization: '&lt;OAuth2 Bearer Token>', Accept: 'application/fhir+json', 'Content-Type': 'application/fhir+json'} %>

### Body Fields

<%= definition_table(:charge_item_create, :create, :r4) %>

### Example

#### Request

    POST https://fhir-ehr.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/ChargeItem/$create

#### Body

<%= json(:r4_charge_item_create) %>

#### Response

<%= headers status: 200 %>
<pre class="terminal">
Cache-Control: no-cache
Content-Length: 0
Content-Type: text/html
Date: Thu, 11 Nov 2021 17:23:14 GMT
Etag: W/"0"
Location: https://fhir-ehr.devcerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/ChargeItem/$create
Last-Modified: Thu, 11 Nov 2021 17:25:14 GMT
Vary: Origin
X-Request-Id: 11111111111111111111111111111111
</pre>

The `ETag` response header indicates the current `If-Match` version to use on subsequent updates.

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`date`]: https://hl7.org/fhir/r4/datatypes.html#date
[`decimal`]: https://hl7.org/fhir/r4/datatypes.html#decimal
[`integer`]: https://hl7.org/fhir/r4/datatypes.html#integer
[`Money`]: https://hl7.org/fhir/r4/datatypes.html#Money
[`reference`]: https://hl7.org/fhir/r4/search.html#reference
[`string`]: https://hl7.org/fhir/r4/datatypes.html#string
[`coding`]: https://hl7.org/fhir/r4/datatypes.html#coding
[`unsignedInt`]: https://hl7.org/fhir/R4/datatypes.html#unsignedInt
[`CodeableConcept`]: https://hl7.org/fhir/r4/datatypes.html#CodeableConcept
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
[Priority]: #custom-extensions
[Procedure Code]: #custom-extensions
[Modifier Code]: #custom-extensions
[Unit Price]: #custom-extensions
[Net Price]: #custom-extensions
[Custom Attribute]: #custom-extensions
[Revenue Code]: #custom-extensions
[Offset By]: #custom-extensions
[Description]: #custom-extensions
[Performing Location]: #custom-extensions
[Replacing]: #custom-extensions
[Bill Code Schedule]: #custom-extensions
[National Drug Product]: #custom-extensions
[Quantity Conversion Factor]: #custom-extensions
[`token`]: https://hl7.org/fhir/R4/search.html#token
[`_count`]: https://hl7.org/fhir/r4/search.html#count
[`number`]: https://hl7.org/fhir/r4/search.html#number
