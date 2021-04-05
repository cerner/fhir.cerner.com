---
title: ChargeItem | R4 API
---

# ChargeItem

* TOC
{:toc}

## Overview

The resource ChargeItem describes the provision of healthcare provider products for a certain patient, therefore referring not only to the product, but containing in addition details of the provision, like date, time, amounts and participating organizations and persons.
Main Usage of the ChargeItem is to enable the billing process and internal cost allocation.

The following fields are returned if valued:

* [ChargeItem id](https://hl7.org/fhir/r4/resource-definitions.html#Resource.id){:target="_blank"}
* [Status](https://hl7.org/fhir/r4/chargeitem-definitions.html#ChargeItem.status){:target="_blank"}
* [Code](https://hl7.org/fhir/r4/chargeitem-definitions.html#ChargeItem.code){:target="_blank"}
* [Subject](https://hl7.org/fhir/r4/chargeitem-definitions.html#ChargeItem.subject){:target="_blank"}
* [Context](https://hl7.org/fhir/r4/chargeitem-definitions.html#ChargeItem.context){:target="_blank"}
* [occurrenceDateTime](https://hl7.org/fhir/r4/chargeitem-definitions.html#ChargeItem.occurrence_x_){:target="_blank"}
* [Performer](https://hl7.org/fhir/r4/chargeitem-definitions.html#ChargeItem.performer){:target="_blank"}
* [Requesting Organization](https://hl7.org/fhir/r4/chargeitem-definitions.html#ChargeItem.requestingOrganization){:target="_blank"}
* [Quantity](https://hl7.org/fhir/r4/chargeitem-definitions.html#ChargeItem.quantity){:target="_blank"}
* [Enterer](https://hl7.org/fhir/r4/chargeitem-definitions.html#ChargeItem.enterer){:target="_blank"}
* [Entered Date](https://hl7.org/fhir/r4/chargeitem-definitions.html#ChargeItem.enteredDate){:target="_blank"}
* [Reason](https://hl7.org/fhir/r4/chargeitem-definitions.html#ChargeItem.reason){:target="_blank"}
* [Account](https://hl7.org/fhir/r4/chargeitem-definitions.html#ChargeItem.account){:target="_blank"}
* [Extensions including custom attribute, description, modifier, net price, offset by, performing location, procedure, revenue code, and unit price](#extensions){:target="_blank"}

## Terminology Bindings

<%= terminology_table(:charge_item, :r4) %>

## Extensions

* [Custom Attribute]
* [Description]
* [Modifier]
* [Net Price]
* [Offset By]
* [Performing Location]
* [Procedure]
* [Revenue Code]
* [Unit Price]

### Custom Extensions

All URLs for custom extensions are defined as `https://fhir-ehr.cerner.com/r4/StructureDefinition/{id}`

 ID                     | Value\[x] Type                    | Description
------------------------|-----------------------------------|--------------------------------------------------------------------------
 `custom-attribute`     | None (contains nested extensions) | A client defined custom attribute for the resource. Attribute values can be of type [`integer`], [`string`], [`decimal`], or [`date`].
 `discription`          | [`string`]                        | A description providing additional details of the resource.
 `modifier`             | None (contains nested extensions) | A code providing additional detail about a product or service.
 `net-price`            | [`Money`]                         | The quantity times the unit price for a resource (total price).
 `offset-by`            | [`Reference`]                     | Indicates a resource that this resource is offset by. This resource is no longer active when offset.
 `performing-location`  | [`Reference`]                     | A location where the resource was performed.
 `procedure`            | None (contains nested extensions) | Procedure performed on the patient associated to the resource.
 `revenue-code`         | None (contains nested extensions) | The type of revenue or cost center providing the product and/or service.
 `unit-price`           | [`Money`]                         | The price of a single unit for the resource.

## Retrieve by id

List an individual ChargeItem by its id:

    GET /ChargeItem/:id

### Authorization Types

<%= authorization_types(provider: true, patient: false, system: true) %>

### Headers

<%= headers %>

### Example

#### Request

    GET https://fhir-open.cerner.com/r4/ec2458f2-1e24-41c8-b71b-0e701af7583d/ChargeItem/157320807

#### Response

<%= headers status: 200 %>
<%= json(:r4_charge_item_read) %>

<%= disclaimer %>

### Errors

The common [errors] and [OperationOutcomes] may be returned.

[`CodeableConcept`]: http://hl7.org/fhir/r4/datatypes.html#CodeableConcept
[`date`]: https://hl7.org/fhir/r4/datatypes.html#date
[`decimal`]: https://hl7.org/fhir/r4/datatypes.html#decimal
[`integer`]: https://hl7.org/fhir/r4/datatypes.html#integer
[`Money`]: http://hl7.org/fhir/r4/datatypes.html#Money
[`Reference`]: http://hl7.org/fhir/r4/references.html#Reference
[`string`]: https://hl7.org/fhir/r4/datatypes.html#string
[`token`]: http://hl7.org/fhir/R4/search.html#token
[errors]: ../../#client-errors
[OperationOutcomes]: ../../#operation-outcomes
[Procedure]: #custom-extensions
[Modifier]: #custom-extensions
[Unit Price]: #custom-extensions
[Net Price]: #custom-extensions
[Custom Attribute]: #custom-extensions
[Revenue Code]: #custom-extensions
[Offset By]: #custom-extensions
[Description]: #custom-extensions
[Performing Location]: #custom-extensions