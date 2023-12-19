 `_id`|Conditionally|[`token`]|The logical resource ID associated with the resource. This parameter is required if the `-physicalType` parameter is not used.
 `-physicalType`|Conditionally|[`token`]|The location’s physical type. This parameter is required if the `_id` parameter is not used. Example: `http://terminology.hl7.org/CodeSystem/location-physical-type|ro`
 `identifier`|No|[`token`]|The location’s identifier. Example: `653385|FSI^~BUILD^~NU`
 [`_count`]|No|[`number`]|The maximum number of results to return. Default: `100`
 `address`|No|[`string`]|Part of the location's address. Example: `123%20Main`
 `address-city`|No|[`string`]|The city specified in the address. Example: `Kansas`
 `address-state`|No|[`string`]|The state specified in the address. Example: `MO`
 `address-postalcode`|No|[`string`]|The postal code specified in the address. Example: `64111`
 `name`|No|[`string`]|The portion of the location's name or alias. Example: `Main`
 `organization`|No|[`reference`]|The Organization that manages the location. Example: `675844`
