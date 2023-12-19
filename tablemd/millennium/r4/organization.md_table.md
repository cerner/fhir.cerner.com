 Name|Required?|Type|Description
-------------|-----------------------------------------|------------|----------------------------------------------------------
 `_id`|No|[`token`]|The logical resource id associated with the resource.
 `identifier`|No|[`token`]|NPI, OID or FederalTAXID identifier for the organization.
 `type`|No|[`token`]|The organization's type. Example: `http://terminology.hl7.org/CodeSystem/organization-type|govt`
 [`_count`]|No|[`number`]|The maximum number of results to return. Defaults to `100`.
 `name`|No|[`string`]|Name used for the organization.
 `address`|No|[`string`]|An address for the organization. All organizations to be returned whose street, name, state, or postal code starts with the given string.
