 ID|Value\[x] Type|Description
------------------------------|-------------------------------------------------------------------|--------------------------------------------------------------------------
 `bill-code-schedule`|[`coding`]|A defined group of bill codes that drives billing behavior.
 `custom-attribute`|None (contains nested extensions)|A client defined custom attribute for the resource. Attribute values can be of type [`integer`], [`string`], [`decimal`], or [`dateTime`].
 `description`|[`string`]|A description providing additional details of the resource.
 `modifier-code`|None (contains nested extensions)|A code providing additional detail about a product or service.
 `national-drug-product`|None (contains nested extensions)|The national drug product used in care.
 `net-price`|[`Money`]|The quantity times the unit price for a resource (total price).
 `offset-by`|[`Reference`](https://hl7.org/fhir/r4/references.html#Reference)|Indicates a resource that this resource is offset by. This resource is no longer active when offset.
 `performing-location`|[`Reference`](https://hl7.org/fhir/r4/references.html#Reference)|A location where the resource was performed.
 `priority`|[`unsignedInt`]|The priority of the element within a list.
 `procedure-code`|None (contains nested extensions)|A code providing information about the procedure performed on the patient associated to the resource.
 `quantity-conversion-factor`|[`decimal`]|The conversion factor used to calculate the quantity for billing.
 `replacing`|[`Reference`](https://hl7.org/fhir/r4/references.html#Reference)|A reference to a resource that this resource is replacing.
 `revenue-code`|None (contains nested extensions)|The type of revenue or cost center providing the product and/or service.
 `unit-price`|[`Money`]|The price of a single unit for the resource.
