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
* [Extensions including bill code schedule, custom attribute, description, modifier, net price, offset by, performing location, procedure, replacing, revenue code, and unit price](#extensions){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:charge_item, :r4) %>

## Extensions

* [Bill Code Schedule]
* [Custom Attribute]
* [Description]
* [Modifier]
* [Net Price]
* [Offset By]
* [Performing Location]
* [Priority]
* [Procedure]
* [Replacing]
* [Revenue Code]
* [Unit Price]

### Custom Extensions

All URLs for custom extensions are defined as `https://fhir-ehr.cerner.com/r4/StructureDefinition/{id}`

 ID                     | Value\[x] Type                    | Description
------------------------|-----------------------------------|--------------------------------------------------------------------------
 `bill-code-schedule`   | [`coding`]                        | A defined group of bill codes that drives billing behavior.
 `custom-attribute`     | None (contains nested extensions) | A client defined custom attribute for the resource. Attribute values can be of type [`integer`], [`string`], [`decimal`], or [`date`].
 `description`          | [`string`]                        | A description providing additional details of the resource.
 `modifier`             | None (contains nested extensions) | A code providing additional detail about a product or service.
 `net-price`            | [`Money`]                         | The quantity times the unit price for a resource (total price).
 `offset-by`            | [`Reference`]                     | Indicates a resource that this resource is offset by. This resource is no longer active when offset.
 `performing-location`  | [`Reference`]                     | A location where the resource was performed.
 `priority`             | [`unsignedInt`]                   | The priority of the element within a list.
 `procedure`            | None (contains nested extensions) | Procedure performed on the patient associated to the resource.
 `replacing`            | [`Reference`]                     | A reference to a resource that this resource is replacing.
 `revenue-code`         | None (contains nested extensions) | The type of revenue or cost center providing the product and/or service.
 `unit-price`           | [`Money`]                         | The price of a single unit for the resource.

## Search

<%= beta_tag(action: true) %>

Search for ChargeItems that meet supplied query parameters:

    GET /ChargeItem?:parameters

### Authorization Types

<%= authorization_types(provider: true, patient: false, system: true) %>

### Parameters

 Name                  | Required?  | Type          | Description
-----------------------|------------|---------------|-------------------------------------------------------
 `_id`                 | Yes        | [`token`]     | The logical resource id associated with the ChargeItem.
 `context`             | Yes        | [`token`]     | Encounter associated with event.
[`_count`]             | No         | [`number`]    | The maximum number of results to return.
  `-status`            | No         | [`token`]     | The status of the encounter. Example: `billable`

Notes:

- When searching by `_id`, only a single ChargeItem id can be provided.
- `_count` and `-status` must be provided with context.
- `-status` valid parameter is `billable`

### Headers

<%= headers %>

### Example - Search by Id

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/ChargeItem?_id=292870306

#### Response

<%= headers status: 200 %>
<%= json(:r4_chargeitem_bundle) %>

### Example - Search by Context

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

[`date`]: https://hl7.org/fhir/r4/datatypes.html#date
[`decimal`]: https://hl7.org/fhir/r4/datatypes.html#decimal
[`integer`]: https://hl7.org/fhir/r4/datatypes.html#integer
[`Money`]: https://hl7.org/fhir/r4/datatypes.html#Money
[`Reference`]: https://hl7.org/fhir/r4/references.html#Reference
[`string`]: https://hl7.org/fhir/r4/datatypes.html#string
[`coding`]: https://hl7.org/fhir/r4/datatypes.html#coding
[`unsignedInt`]: https://hl7.org/fhir/R4/datatypes.html#unsignedInt
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
[Priority]: #custom-extensions
[Procedure]: #custom-extensions
[Modifier]: #custom-extensions
[Unit Price]: #custom-extensions
[Net Price]: #custom-extensions
[Custom Attribute]: #custom-extensions
[Revenue Code]: #custom-extensions
[Offset By]: #custom-extensions
[Description]: #custom-extensions
[Performing Location]: #custom-extensions
[Replacing]: #custom-extensions
[Bill Code Schedule]: #custom-extensions
[`token`]: https://hl7.org/fhir/R4/search.html#token
[`_count`]: https://hl7.org/fhir/r4/search.html#count
[`number`]: https://hl7.org/fhir/r4/search.html#number
